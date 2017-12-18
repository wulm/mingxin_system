package com.weixin.ssm.controller;

import com.github.pagehelper.PageInfo;
import com.weixin.common.utils.ResponseUtil;
import com.weixin.ssm.service.ITest;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by Administrator on 2017\12\15 0015.
 */
@Controller
@RequestMapping("/test")
public class TestAction {

   @Autowired
   private ITest testService;

   /*向前端jsp返回json数据*/
   @RequestMapping("/jsonTest")
   public void jsonTest(HttpServletRequest request, HttpServletResponse response) throws Exception {
      System.out.println("test1");
      PageInfo pageInfo =testService.getByPage(1,10);
      JSONObject jsonObject = JSONObject.fromObject(pageInfo);
      System.out.println(pageInfo);
      ResponseUtil.write(response, jsonObject.toString());
      System.out.println("8854524");
//      return "test/test";
   }

   /*向前端jsp返回requst对象
   *前端使用jstl接收数据
   */
   @RequestMapping("/requstTest")
   public String requstTest(HttpServletRequest request, HttpServletResponse response) throws Exception {
      System.out.println("test1");
      PageInfo pageInfo =testService.getByPage(1,10);
      System.out.println(pageInfo);
      request.setAttribute("pageInfo",pageInfo);
      return "test/test";
   }


   /*
   freemarker形式渲染前端
    */
   @RequestMapping("/index")
   public String test2(Model model) throws Exception {
      System.out.println("test2");
      PageInfo pageInfo =testService.getByPage(1,3);
      model.addAttribute("pageInfo",pageInfo);
      System.out.println(pageInfo);
      return "taobao/index";
   }

   @RequestMapping("/mine")
   public String test3(Model model) throws Exception {
      System.out.println("test3");
      return "taobao/mine";
   }

   @RequestMapping("/classify")
   public String test4(Model model) throws Exception {
      System.out.println("test3");
      return "taobao/classify";
   }

   @RequestMapping("/shoppingCart")
   public String test5(Model model) throws Exception {
      System.out.println("test3");
      return "taobao/shoppingCart";
   }

   @RequestMapping("/detail")
   public String test6(Model model) throws Exception {
      System.out.println("test3");
      return "taobao/thingDetail";
   }
}
