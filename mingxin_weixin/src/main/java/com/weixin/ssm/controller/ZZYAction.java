package com.weixin.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**周周游主方法入口
 * Created by Administrator on 2017\12\9 0009.
 */
@Controller
@RequestMapping("/zzy")
public class ZZYAction {

   /**
    * 1_0_index方法入口
    * @return
    */
   @RequestMapping("/index")
   public String zzyIndex() {
      System.out.println("test-index");
      return "weixin_view/store/1_0_index";
   }

   /**
    * 1_1_actDetail方法入口
    * @return
    */
   @RequestMapping("/actDetail")
   public String zzyActDetail() {
      System.out.println("test-actDetail");
//      return "weixin_view/store/1_1_actDetail";
//      return "weixin_view/store/0_0_testOverflow";/*弹出提示窗*/
      return "weixin_view/store/0_0_1_testOverflow";/*弹出选择活动选项*/
   }
   /**
    * 1_1_actDetail方法入口
    * @return
    */
   @RequestMapping("/actDetail2")
   public String zzyActDetail2() {
      System.out.println("test-actDetail");
//      return "weixin_view/store/1_1_actDetail";
//      return "weixin_view/store/0_0_testOverflow";/*弹出提示窗*/
      return "weixin_view/my/1_1_actDetail";/*弹出活动详情页*/
   }

   /**
    * 2_0_sort方法入口
    * @return
    */
   @RequestMapping("/sort")
   public String zzySort() {
      System.out.println("test-sort");
      return "weixin_view/store/2_0_sort";
   }

   /**
    * 3_0_community方法入口
    * @return
    */
   @RequestMapping("/community")
   public String zzyCommunity() {
      System.out.println("test-community");
      return "weixin_view/store/3_0_community";
   }

   /**
    * 4_0_chat方法入口
    * @return
    */
   @RequestMapping("/chat")
   public String zzyChat() {
      System.out.println("test-chat");
      return "weixin_view/store/4_0_chat";
   }

   /**
    * 5_0_me方法入口
    * @return
    */
   @RequestMapping("/me")
   public String zzyMe() {
      System.out.println("test-me");
      return "weixin_view/store/5_0_me";
   }
}
