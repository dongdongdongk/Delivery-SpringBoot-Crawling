package com.delivery.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
@RequestMapping("user/*")
public class UserController {

    @GetMapping("userJoin")
    public ModelAndView userJoin(UserVO userVO) throws Exception {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("user/userJoin");
        return mv;
    }
}
