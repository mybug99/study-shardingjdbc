package com.study.shardingjdbc.mapper;

import com.study.shardingjdbc.model.MtoUser;

import java.util.List;

/**
 * @author Ryan
 * @Description TODO
 * @createTime 2021年03月28日
 */
public interface MtoUserMapper {

    List<MtoUser> selectUserList();

    int insert();

}
