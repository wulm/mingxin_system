package com.weixin.ssm.controller;

import com.weixin.ssm.service.IWeixinService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Administrator on 2017\12\9 0009.
 */
@Controller
@RequestMapping("/weixin")
public class WeixinAction {
   @Autowired
   private IWeixinService weixinService;

   /*
   微信公众号主方法
    */
   @RequestMapping("/process")
   public void weixinProcess(HttpServletRequest request, HttpServletResponse response) throws IOException {
      weixinService.weixinProcess(request,response);
   }
}
