package com.delivery.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
@RequestMapping("user/*")
public class UserController {


    @Autowired
    private UserService userService;


    @GetMapping("userJoin")
    public ModelAndView setJoin() throws Exception {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("user/userJoin");
        return mv;
    }

    @PostMapping("userJoin")
    public ModelAndView setJoin(UserVO userVO) throws Exception {
        ModelAndView mv = new ModelAndView();
        int result = userService.setJoin(userVO);
        mv.setViewName("redirect:../");
        return mv;
    }

}
