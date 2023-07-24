package com.delivery.store;

import com.delivery.user.WishListVO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface StoreDAO {

    public int setUserStoreTableSave(StoreTableVO storeTableVO) throws Exception;

    public int setUserStoreSave(StoreVO storeVO) throws Exception;

    public int setWishList(WishListVO wishListVO) throws Exception;
}
