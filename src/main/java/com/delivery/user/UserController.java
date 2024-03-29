package com.delivery.user;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Slf4j
@Controller
@RequestMapping("user/*")
public class UserController {


    @Autowired
    private UserService userService;
    @Autowired
    private PasswordEncoder passwordEncoder;


    @GetMapping("userJoin")
    public ModelAndView setJoin(@ModelAttribute() UserVO userVO) throws Exception {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("user/userJoin");
        return mv;
    }

    @PostMapping("userJoin")
    public ModelAndView setJoin(@Valid UserVO userVO, BindingResult bindingResult) throws Exception {
        ModelAndView mv = new ModelAndView();
        log.debug("Join");
        if(bindingResult.hasErrors()) {
            List<FieldError>list = bindingResult.getFieldErrors();
            Map<String, String> errorMsg = new HashMap<>();
            for(int i=0;i<list.size();i++) {
                String field = list.get(i).getField();
                String message = list.get(i).getDefaultMessage();

                System.out.println("필드 = " + field);
                System.out.println("메세지 = " + message);

                errorMsg.put(field,message);
            }
            mv.addObject("errorMsg",errorMsg);
            mv.setViewName("user/userJoin");
            return mv;
        }
        int result = userService.setJoin(userVO);
        mv.setViewName("redirect:../");
        return mv;
    }

    @GetMapping("userLogin")
    public ModelAndView getLogin(@ModelAttribute() UserVO userVO) throws Exception {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("user/userLogin");
        return mv;
    }


    @ResponseBody
    @GetMapping("/overlapCheck")
    public int overlapCheck(String value, String valueType) {
//		value = 중복체크할 값
//		valeuType = username, nickname
        System.out.println(value);
        System.out.println(valueType);
        int count = userService.overlapCheck(value, valueType);

        System.out.println(count);
        return count;
    }
    @GetMapping("myPage")
    public ModelAndView getMyPage(WishListVO wishListVO, Authentication authentication) throws Exception {
        ModelAndView mv = new ModelAndView();
        UserDetails userDetails = (UserDetails) authentication.getPrincipal();
        String userId = userDetails.getUsername();
        wishListVO.setId(userId);
        List<WishListVO> wishListVOS = userService.getWishList(wishListVO);
        UserVO userInfo = userService.getUserInfo(userId);
        mv.addObject("wishListVOS", wishListVOS);
        mv.addObject("userInfo",userInfo);
        mv.setViewName("user/myPage");
        return mv;
    }

//    @ResponseBody
//    @PostMapping ("setWishList")
//    public ModelAndView setWishList(WishListVO wishListVO) throws Exception {
//        ModelAndView mv = new ModelAndView();
//        int result = userService.setWishList(wishListVO);
//        return mv;
//    }
}
