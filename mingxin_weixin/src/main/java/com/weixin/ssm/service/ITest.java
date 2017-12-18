package com.weixin.ssm.service;

import com.github.pagehelper.PageInfo;
import com.weixin.ssm.model.entity.MxUsersData;

/**
 * Created by Administrator on 2017\12\15 0015.
 */
public interface ITest {
   public PageInfo<MxUsersData> getByPage(Integer pageNum, Integer pageSize);
}
