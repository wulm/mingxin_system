package com.weixin.common.task;

import com.weixin.common.utils.WeixinMenuUtil;
import com.weixin.config.WeixinStaticData;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import weixin.popular.api.MenuAPI;
import weixin.popular.api.TokenAPI;
import weixin.popular.bean.BaseResult;

@Component
public class WeixinTask {
	@Scheduled(fixedRate = 1000*7000) //every 7000s run a time
    public void refreshAccessToken(){
		WeixinStaticData.access_token=TokenAPI.token(WeixinStaticData.appID, WeixinStaticData.appsecret);//access_token Task Method
        System.out.println("Open Weixin Service and refresh the access_token_______"+WeixinStaticData.access_token.getAccess_token());
//    }
//	
//	
//	@Scheduled(fixedRate = 1000*7200) //every 10s run a time
//    public void refreshMenu(){
        /*String menuJson=
			"{\"button\":[" +
				"{\"type\":\"view\",\"name\":\"鸣心活动\",\"url\":\"http://www.soso.com/\"}," +
				"{\"name\":\"鸣心时报\",\"sub_button\":[" +
					"{\"type\":\"view\",\"name\":\"校园时报\",\"url\":\"http://www.soso.com/\"}," +
					"{\"type\":\"view\",\"name\":\"乡村时报\",\"url\":\"http://v.qq.com/\"}," +
					"{\"type\":\"view\",\"name\":\"小记者申请\",\"url\":\"http://www.baidu.com/\"}" +
				"]}," +
				"{\"name\":\"个人心中\",\"sub_button\":[" +
					"{\"type\":\"view\",\"name\":\"教育培训\",\"url\":\"http://www.soso.com/\"}," +
					"{\"type\":\"view\",\"name\":\"活动空间\",\"url\":\"http://v.qq.com/\"}," +
					"{\"type\":\"view\",\"name\":\"其他功能\",\"url\":\"http://www.baidu.com/\"}" +
				"]}" +
			"]}";
		
		System.out.println(menuJson);*/
        
        //String menuJson="{\"button\":[{\"type\":\"view\",\"name\":\"�\",\"url\":\"V1001_TODAY_MUSIC\"},{\"type\":\"click\",\"name\":\"555\",\"key\":\"V1001_TODAY_SINGER\"},{\"name\":\"444\",\"sub_button\":[{\"type\":\"view\",\"name\":\"111\",\"url\":\"http://www.soso.com/\"},{\"type\":\"view\",\"name\":\"222\",\"url\":\"http://v.qq.com/\"},{\"type\":\"click\",\"name\":\"333\",\"key\":\"V1001_GOOD\"}]}]}";
		
		BaseResult b=MenuAPI.menuCreate(WeixinStaticData.access_token.getAccess_token(), WeixinMenuUtil.createWeixinMenu());
        //BaseResult b=MenuAPI.menuCreate(WeixinStaticData.access_token.getAccess_token(), menuJson);
        if(b.isSuccess()){
			System.out.println("timerTask run success");
		}else{
			System.out.println("timerTask runed:"+b.getErrmsg());
		}
		
        
    }
}
