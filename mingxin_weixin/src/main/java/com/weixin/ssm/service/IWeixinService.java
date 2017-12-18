package com.weixin.ssm.service;

import com.weixin.ssm.dao.ITestDao;
import org.springframework.beans.factory.annotation.Autowired;

import javax.management.loading.PrivateClassLoader;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public interface IWeixinService {


   void weixinProcess(HttpServletRequest request, HttpServletResponse response) throws IOException;
}
