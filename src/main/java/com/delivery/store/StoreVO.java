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
    private String address;
    private String phoneNumber;
    private String foodType;
    private String parking;
    private String startTime;
    private String endTime;
    private String website;
    private String url;
}
