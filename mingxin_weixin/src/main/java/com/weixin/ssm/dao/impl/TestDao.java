package com.weixin.ssm.dao.impl;

import com.weixin.ssm.dao.ITestDao;
import com.weixin.ssm.dao.mapper.MxUsersDataMapper;
import com.weixin.ssm.model.entity.MxUsersData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by Administrator on 2017\12\9 0009.
 */
@Component("testDao")
public class TestDao implements ITestDao {

   @Autowired
   private MxUsersDataMapper mxuserdatamapper;

   /**
    * 根据userId查询用户
    * @param userId
    * @return
    */
   public MxUsersData get(Integer userId){

      MxUsersData mxUsersData = mxuserdatamapper.selectByPrimaryKey(userId);

      return mxUsersData;
   }

   /**
    * 排序方法
    * @param userId
    * @return
    */
   public MxUsersData getByTimeDesc(Integer userId){

      MxUsersData mxUsersData = mxuserdatamapper.selectByPrimaryKey(userId);
      return mxUsersData;
   }


   /**
    * 分页方法（mybatis有现成的分页插件PageHelper可以直接使用）
    * @return
    */
   public List<MxUsersData> getAll(){
      System.out.println("getAll-dao");
      List<MxUsersData> mxUsersDatas = mxuserdatamapper.selectAllUsers();
      return mxUsersDatas;
   }


}
