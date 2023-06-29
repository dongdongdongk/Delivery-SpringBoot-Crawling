package com.delivery.user;

import lombok.Getter;
import lombok.Setter;

import java.sql.Date;

@Setter
@Getter
public class UserVO {
    private String id;
    private String password;
    private String passwordCheck;
    private String phoneNumber;
    private String email;
    private String emailCheck;
    private String role;
    private String nickName;
    private String userName;
    private Date joinDate;
    private Date birth;
    private String gender;

}
