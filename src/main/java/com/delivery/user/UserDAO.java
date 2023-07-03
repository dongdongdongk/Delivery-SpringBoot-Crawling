package com.delivery.user;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserDAO {
    public int setJoin(UserVO userVO) throws Exception;

    public int overlapCheck(String value, String valueType);
}
