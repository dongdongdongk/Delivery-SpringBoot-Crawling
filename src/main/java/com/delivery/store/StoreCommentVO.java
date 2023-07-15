package com.delivery.store;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class StoreCommentVO {
   private String userImg;
   private String userName;
   private String contents;
   private String rating;
   private String date;
}
