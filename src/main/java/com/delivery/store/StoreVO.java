package com.delivery.store;

import lombok.*;

import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
@Builder
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class StoreVO {
    private String lastUpdate;
    private String title;
    private String subdivision;
    private String image;
    private String grade;
    private String reviewCount;
    private String view;
    private String url;
    private String id;
    private StoreTableVO storeTableVO;
}
