package com.delivery.user;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service
public class UserService implements UserDetailsService {

    @Autowired
    private UserDAO userDAO;
    @Autowired
    private PasswordEncoder passwordEncoder;

    public int setJoin(UserVO userVO) throws Exception {
        userVO.setPassword(passwordEncoder.encode(userVO.getPassword()));
        int result = userDAO.setJoin(userVO);
        userVO.setRole("ROLE_MEMBER");
        return result;
    }

    public int overlapCheck(String value, String valueType) {
        return userDAO.overlapCheck(value, valueType);
    }

    //찜 목록 불러오기
    public List<WishListVO> getWishList(WishListVO wishListVO) throws Exception {
        return userDAO.getWishList(wishListVO);
    }
    public UserVO getUserInfo(String userId) throws Exception {
        return userDAO.getUserInfo(userId);
    }

    @Override
    public UserDetails loadUserByUsername(String id) throws UsernameNotFoundException {
        //db에서 꺼낸 로그인정보가지고 service
        log.error("==================Spring Security Login==================");
        log.error("=================={}==================", id);
        UserVO userVO = new UserVO();
        userVO.setId(id);
        try {
            userVO = userDAO.getLogin(userVO);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        // TODO Auto-generated method stub
        return userVO;
    }




}
