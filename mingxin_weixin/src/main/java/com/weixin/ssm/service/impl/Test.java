package com.weixin.ssm.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.weixin.ssm.dao.ITestDao;
import com.weixin.ssm.model.entity.MxUsersData;
import com.weixin.ssm.service.ITest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2017\12\15 0015.
 */
@Service("testService")
public class Test implements ITest{

   @Autowired
   private ITestDao testDao;

   public PageInfo<MxUsersData> getByPage(Integer pageNum, Integer pageSize){
      try {
         System.out.println("getByPage-service");
         PageHelper.startPage(pageNum,pageSize); //开始分页
         List<MxUsersData > list=testDao.getAll(); //查询操作
         PageInfo pageInfo =new PageInfo(list);//将查询的信息封装到pageinfo中
         return pageInfo;
      }catch (Exception e){
         e.printStackTrace();
      }
      return null;

   }
}
