package com.delivery.user;

import lombok.Getter;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import java.sql.Date;

@Setter
@Getter
public class UserVO {
    @NotBlank
    @Pattern(regexp = "[A-Za-z0-9]{4,15}$", message = "아이디는 영어, 숫자 4 ~15자리로 입력 가능합니다")
    private String id;
    @NotBlank
    private String password;
    @NotBlank
    private String passwordCheck;
    @NotBlank
    @Pattern(regexp = "^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$", message = "휴대폰번호를 확인해 주세요")
    private String phoneNumber;
    @NotBlank
    private String email;
    private String emailCheck;
    private String role;
    @Pattern(regexp = "^[가-힣|a-z|A-Z|0-9|]+$", message = "닉네임은 한글, 영어, 숫자만 4 ~10자리로 입력 가능합니다")
    private String nickName;
    @NotBlank
    private String userName;
    private Date joinDate;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private java.util.Date birth;
    @NotBlank(message = "성별을 선택 해주세요")
    private String gender;

}
