package com.weixin.ssm.service.impl;

import com.weixin.config.WeixinStaticData;
import com.weixin.ssm.dao.ITestDao;
import com.weixin.ssm.service.IWeixinService;
import com.weixin.common.utils.WeixinUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import weixin.popular.bean.message.EventMessage;
import weixin.popular.bean.xmlmessage.XMLMessage;
import weixin.popular.bean.xmlmessage.XMLNewsMessage;
import weixin.popular.bean.xmlmessage.XMLTextMessage;
import weixin.popular.support.ExpireKey;
import weixin.popular.support.expirekey.DefaultExpireKey;
import weixin.popular.util.SignatureUtil;
import weixin.popular.util.XMLConverUtil;
import javax.servlet.ServletInputStream;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;


@Service("weixinService")
public class WeixinServiceImpl implements IWeixinService {

   private static ExpireKey expireKey = new DefaultExpireKey();

   @Autowired
   private ITestDao testDao;

   public void weixinProcess(HttpServletRequest request, HttpServletResponse response) throws IOException {


      ServletInputStream inputStream = request.getInputStream();
      ServletOutputStream outputStream = response.getOutputStream();
      String signature = request.getParameter("signature");
      String timestamp = request.getParameter("timestamp");
      String nonce = request.getParameter("nonce");
      String echostr = request.getParameter("echostr");

      //firstly get the chostr
      if(echostr!=null){
         WeixinUtil.outputStreamWrite(outputStream,echostr);
         return;
      }

      //validate the weixin server
      if(signature!=null&&!signature.equals(SignatureUtil.generateEventMessageSignature(WeixinStaticData.token,timestamp,nonce))){
         System.out.println("The request signature is invalid");
         return;
      }

      if(inputStream!=null){
         //get weixin message
         EventMessage eventMessage = XMLConverUtil.convertToObject(EventMessage.class,inputStream, Charset.forName("UTF-8"));
         String key = eventMessage.getFromUserName() + "__"
               + eventMessage.getToUserName() + "__"
               + eventMessage.getMsgId() + "__"
               + eventMessage.getCreateTime();

         if(expireKey.exists(key)){
            //prevent from twice requst
            return;
         }else{
            expireKey.add(key);
         }

         //System.out.println("messageType:"+eventMessage.getMsgType());

         String respContent="unknown messageType";
         String msgType=eventMessage.getMsgType();

         String content=eventMessage.getContent();

         if(msgType.equals("text")){

            //System.out.println(eventMessage.getContent());
            if("1".equals(content)){
               respContent = "sent 1";
            }else if("2".equals(content)){
               respContent = "sent 2";
            }else if("3".equals(content)){
               respContent = "sent 3";
            }else if("4".equals(content)){
               respContent = "sent 4";
            }else if("5".equals(content)){
               respContent = "sent 5";
            }else{
               respContent = "用户输入了:"+content;
            }
         }else if(msgType.equals("voice")){
            respContent="voice";
         }else if(msgType.equals("image")){
            respContent="image";
         }else if(msgType.equals("location")){
            respContent="location";
         }else if(msgType.equals("video")){
            respContent="video";
         }else if(msgType.equals("event")){
            if(eventMessage.getEvent().equals("subscribe")){
               respContent="welcom my love!";
            }
            if(eventMessage.getEvent().equals("unsubscribe")){
               System.out.println("user unsubscribe the count");
            }
            if(eventMessage.getEvent().equals("CLICK")){
               System.out.println("get message list______");
               if(eventMessage.getEventKey().equals("15")){
                  XMLNewsMessage.Article article=new XMLNewsMessage.Article();
                  article.setTitle("test title 1");
                  article.setDescription("description 1");
                  article.setPicurl("http://mmbiz.qpic.cn/mmbiz_jpg/FepiawovpW9miaLzBlGgjtBtbMP2Af484AfWTtxIpRrLZtib7u0gHoTwocHxfFMLgibkEb5zUI28UoQ49PySBN3VGg/0?wx_fmt=jpeg");
                  article.setUrl("http://mp.weixin.qq.com/s?__biz=MzIxMjgxNjcyNg==&mid=100000093&idx=1&sn=4029a17482fbdc054b9666464f2dc2f4&chksm=1741076420368e72f2f35266e554089ceaba4e33fe770e5e7a77c1b30aaed485bc8348f6a536#rd");
                  XMLNewsMessage.Article article1 = new XMLNewsMessage.Article();
                  article1.setTitle("test title 2");
                  article1.setDescription("description 2");
                  article1.setPicurl("http://mmbiz.qpic.cn/mmbiz_jpg/FepiawovpW9m7WAodIDxGnWBFn8dyrqyBFhAZn7lic3Gn6SeAsm3xQ9314RT74KcD4hbX3rWfQoibEat4BmTJNO8A/0?wx_fmt=jpeg");
                  article1.setUrl("http://mp.weixin.qq.com/s?__biz=MzIxMjgxNjcyNg==&mid=100000093&idx=2&sn=cc75234c2a6215f8f58895131543cfcd&chksm=1741076420368e7277313ee38a4c94ff2cc82da32e838d432097a7113c838236deef48514008#rd");
                  XMLNewsMessage.Article article2 = new XMLNewsMessage.Article();
                  article2.setTitle("test title 3");
                  article2.setDescription("description 3");
                  article2.setPicurl("http://mmbiz.qpic.cn/mmbiz_jpg/FepiawovpW9m7WAodIDxGnWBFn8dyrqyBJ6iandOibmmyahlkNAgZCKXeScK5iclU13YVWckZjWGiba8OsJ5zbBu4pw/0?wx_fmt=jpeg");
                  article2.setUrl("http://mp.weixin.qq.com/s?__biz=MzIxMjgxNjcyNg==&mid=100000093&idx=3&sn=3a4879ad2b0616bfd63546e8c6b7115d&chksm=1741076420368e724b93a36d44e00c35faaebfbe3b028ed774884ecea5156b4289dda5854f5b#rd");
                  List<XMLNewsMessage.Article> articles = new ArrayList<XMLNewsMessage.Article>();
                  articles.add(article);
                  articles.add(article1);
                  articles.add(article2);
                  XMLNewsMessage xmlnewsMessage = new XMLNewsMessage(eventMessage.getFromUserName(),eventMessage.getToUserName(),articles);
                  xmlnewsMessage.outputStreamWrite(outputStream);

                  return;
               }
            }

         }

         //strut the resp message
         XMLMessage xmlTextMessage = new XMLTextMessage(
               eventMessage.getFromUserName(),
               eventMessage.getToUserName(),
               respContent);
         xmlTextMessage.outputStreamWrite(outputStream);
         return;
      }

   }
}
