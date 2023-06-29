package com.delivery.user;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserDAO {
    public int setJoin(UserVO userVO) throws Exception;
}
