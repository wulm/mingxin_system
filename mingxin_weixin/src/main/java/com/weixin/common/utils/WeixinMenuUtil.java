package com.weixin.common.utils;

import java.util.Arrays;

import com.weixin.config.WeixinStaticData;
import weixin.popular.bean.menu.Button;
import weixin.popular.bean.menu.MenuButtons;

public class WeixinMenuUtil {

        public static MenuButtons createWeixinMenu(){
                String baseUrl="https://open.weixin.qq.com/connect/oauth2/authorize?appid=APPID&redirect_uri=GOTOURL&response_type=code&scope=snsapi_userinfo&state=123#wechat_redirect";

                String zzy="zzy/index.htm";

                Button btn11 = new Button();
                btn11.setName("周周游");
                btn11.setType("view");
                btn11.setUrl((baseUrl.replace("APPID", WeixinStaticData.appID)).replace("GOTOURL",WeixinStaticData.serverUrl+ zzy));

//        Button btn12 = new Button();
//        btn12.setName("毕业季");
//        btn12.setType("view");
//        btn12.setUrl((baseUrl.replace("APPID",WeixinStaticData.appID)).replace("GOTOURL", WeixinStaticData.serverUrl+"activitiesPublicity/getActivitiesPublicityList.action?type=2"));

                Button btn13 = new Button();
                btn13.setName("素质拓展");
                btn13.setType("view");
                btn13.setUrl((baseUrl.replace("APPID",WeixinStaticData.appID)).replace("GOTOURL", WeixinStaticData.serverUrl+"activitiesPublicity/getActivitiesPublicityList.action?type=3"));

//        Button btn14 = new Button();
//        btn14.setName("亲子活动");
//        btn14.setType("view");
//        btn14.setUrl((baseUrl.replace("APPID",WeixinStaticData.appID)).replace("GOTOURL", WeixinStaticData.serverUrl+"activitiesPublicity/getActivitiesPublicityList.action?type=4"));

                Button btn15 = new Button();
                btn15.setName("我要报名");
                btn15.setType("click");
                btn15.setKey("15");

                Button btn21 = new Button();
                btn21.setName("校园时报");
                btn21.setType("view");
                btn21.setUrl((baseUrl.replace("APPID",WeixinStaticData.appID)).replace("GOTOURL", WeixinStaticData.serverUrl+"weixin/getSchoolNews.action"));

                Button btn22 = new Button();
                btn22.setName("乡村时报");
                btn22.setType("view");
                btn22.setUrl((baseUrl.replace("APPID",WeixinStaticData.appID)).replace("GOTOURL", WeixinStaticData.serverUrl+"weixin/getCountryNews.action"));


                Button btn23 = new Button();
                btn23.setName("小记者申请");
                btn23.setType("view");
                btn23.setUrl((baseUrl.replace("APPID",WeixinStaticData.appID)).replace("GOTOURL", WeixinStaticData.serverUrl+"mxReporterBusiness/loadReporterApply.action"));
                //setUrl("https://open.weixin.qq.com/connect/oauth2/authorize?appid=wxb235c46c4c2740a9&redirect_uri=http://d1a7069951.iask.in/MX_System/mxReporterBusiness!loadReporterApply.action&response_type=code&scope=snsapi_userinfo&state=123#wechat_redirect");



                Button btn31 = new Button();
                btn31.setName("教育培训");
                btn31.setType("view");
                btn31.setUrl("http://d1a7069951.iask.in/MX_System/weixin!getNotMyUser.action");

//        Button btn32 = new Button();
//        btn32.setName("新闻投稿");
//        btn32.setType("view");
//        btn32.setUrl((baseUrl.replace("APPID",WeixinStaticData.appID)).replace("GOTOURL", WeixinStaticData.serverUrl+"weixin/loadEditNews.action"));
                //btn32.setUrl("https://open.weixin.qq.com/connect/oauth2/authorize?appid=wxb235c46c4c2740a9&redirect_uri=http://d1a7069951.iask.in/MX_System/weixin!loadAddNews.action&response_type=code&scope=snsapi_userinfo&state=123#wechat_redirect");
                //btn32.setUrl("http://mingxin.xicp.io/MX_System/weixin!loadEditNews.action");

//        Button btn33 = new Button();
//        btn33.setName("校园记者");
//        btn33.setType("view");
//        btn33.setUrl((baseUrl.replace("APPID",WeixinStaticData.appID)).replace("GOTOURL", WeixinStaticData.serverUrl+"mxReporterBusiness/loadReporterManage.action"));
                //setUrl("https://open.weixin.qq.com/connect/oauth2/authorize?appid=wxb235c46c4c2740a9&redirect_uri=http://d1a7069951.iask.in/MX_System/mxReporterBusiness!loadReporterManage.action&response_type=code&scope=snsapi_userinfo&state=123#wechat_redirect");

                Button btn34 = new Button();
                btn34.setName("活动空间");
                btn34.setType("view");
                btn34.setUrl((baseUrl.replace("APPID",WeixinStaticData.appID)).replace("GOTOURL",WeixinStaticData.serverUrl+ "activitiesMySpace/gotoActivitiesMySpaceList.action"));

                Button btn35 = new Button();
                btn35.setName("其他功能");
                btn35.setType("click");
                btn35.setKey("35");

                /**
                 * 微信：  mainBtn1,mainBtn2,mainBtn3底部的三个一级菜单。
                 */

                Button mainBtn1 = new Button();
                mainBtn1.setName("鸣心活动");
                //一级下有4个子菜单
                mainBtn1.setSub_button(Arrays.asList(btn11, /*btn12,*/ btn13, /*btn14,*/btn15));

                Button mainBtn2 = new Button();
                mainBtn2.setName("鸣心时报");
                mainBtn2.setSub_button(Arrays.asList( btn21, btn22 , btn23 ));

                Button mainBtn3 = new Button();
                mainBtn3.setName("个人中心");
                mainBtn3.setSub_button(Arrays.asList( btn31,/*btn32, btn33,*/btn34,btn35 ));

                /**
                 * 封装整个菜单
                 */
                MenuButtons menu = new MenuButtons();
                menu.setButton(new Button[] { btn11,/*mainBtn1,*/ mainBtn2, mainBtn3 });

                return menu;
        }

}
