package com.delivery.user;

import lombok.Getter;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import java.sql.Date;
import java.util.Collection;
import java.util.Collections;

@Setter
@Getter
public class UserVO implements UserDetails {
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
//    @NotBlank
//    @Pattern(regexp = "^[가-힣|a-z|A-Z|0-9|]+$", message = "닉네임은 한글, 영어, 숫자만 4 ~10자리로 입력 가능합니다")
    private String nickName;
    @NotBlank
    private String userName;
    private Date joinDate;

    private Date birth;
    @NotBlank(message = "성별을 선택 해주세요")
    private String gender;

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        // 사용자의 권한을 반환
        // 여기서는 간단히 "ROLE_USER" 권한을 부여
        return Collections.singletonList(new SimpleGrantedAuthority("ROLE_MEMBER"));
    }

    @Override
    public String getUsername() {
        return id;
    }

    @Override
    public boolean isAccountNonExpired() {
        // TODO Auto-generated method stub
        // 계정의 만료 여부
        // true : 만료가 안됨
        // false: 만료 됨, 로그인 안됨
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        // TODO Auto-generated method stub
        // 계정의 잠김 여부
        // true : 잠기지 않음
        // false: 잠김
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        // TODO Auto-generated method stub
        // password 만료 여부
        // true : 만료 안됨
        // false: 만료 됨, 로그인 안됨
        return true;
    }

    @Override
    public boolean isEnabled() {
        // TODO Auto-generated method stub
        // 계정 사용 여부
        // true = 1: 계정 활성화
        // false = 0: 계정 비활성화, 로그인 안됨
        return true;
    }
}
