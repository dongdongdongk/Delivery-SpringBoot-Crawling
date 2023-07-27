package com.delivery.user;

import com.delivery.store.StoreTableVO;
import com.delivery.store.StoreVO;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
public class WishListVO {
    private String id;
    private String title;
    private StoreVO storeVOS;
    private StoreTableVO storeTableVOS;
}
