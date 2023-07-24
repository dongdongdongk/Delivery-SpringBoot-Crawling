package com.delivery.user;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserDAO {
    public int setJoin(UserVO userVO) throws Exception;

    public int overlapCheck(String value, String valueType);

    //회원 정보
    public UserVO getLogin(UserVO userVO) throws Exception;

    public int setWishList(WishListVO wishListVO) throws Exception;
}
