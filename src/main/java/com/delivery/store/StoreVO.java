package com.delivery.store;

import lombok.Builder;
import lombok.Getter;
import lombok.ToString;

@Getter
@Builder
@ToString
public class StoreVO {

    private String title;
    private String subdivision;
    private String image;
    private String grade;
    private String review;
    private String url;
}
