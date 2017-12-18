package com.weixin.common.utils;

/**
 * Created by Administrator on 2017\12\15 0015.
 */
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

public class ResponseUtil {


   public static void write(HttpServletResponse response,Object o) throws Exception{

      response.setContentType("text/html;charset=utf-8");
      PrintWriter out=response.getWriter();
      out.println(o.toString());
      out.flush();
      out.close();

   }

}