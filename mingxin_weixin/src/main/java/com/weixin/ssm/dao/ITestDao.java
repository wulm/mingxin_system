package com.weixin.ssm.dao;

import com.weixin.ssm.model.entity.MxUsersData;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Administrator on 2017\12\9 0009.
 */

public interface ITestDao {

   public MxUsersData get(Integer userId);

   public MxUsersData getByTimeDesc(Integer userId);

   public List<MxUsersData> getAll();

}
