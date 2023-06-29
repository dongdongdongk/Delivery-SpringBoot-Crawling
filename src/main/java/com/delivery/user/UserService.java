package com.delivery.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    @Autowired
    private UserDAO userDAO;

    public int setJoin(UserVO userVO) throws Exception {
        int result = userDAO.setJoin(userVO);
        return result;
    }

}
