package com.delivery.store;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
@Builder
@ToString
public class StoreVO {
    private String lastUpdate;
    private String title;
    private String subdivision;
    private String image;
    private String grade;
    private String reviewCount;
    private String view;
    private String url;

}
