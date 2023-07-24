package com.delivery.store;

import com.delivery.user.UserVO;
import com.delivery.user.WishListVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.security.Principal;
import java.util.List;
@Slf4j
@Controller
@RequestMapping("/store")
public class StoreController {

    @Autowired
    private StoreService storeService;

    @GetMapping("/list")
    public ModelAndView getStoreList(@RequestParam("storeURL") String storeURL) throws Exception {
        ModelAndView mv = new ModelAndView();
        List<StoreVO>storeVOList = storeService.getStoreList(storeURL);
        mv.addObject("storeList", storeVOList);
        mv.setViewName("store/list");
        return mv;
    }
    @GetMapping("/detail")
    public ModelAndView getStoreDetail(@RequestParam("storeURL") String storeURL, Authentication authentication) throws Exception {
        ModelAndView mv = new ModelAndView();
        StoreVO storeDetail = storeService.getStoreDetail(storeURL);
        List<StoreVO>storeImages = storeService.getStoreDetailImage(storeURL);
        StoreTableVO storeTableVO = storeService.getStoreTable(storeURL);
        List<StoreCommentVO>storeComment = storeService.getStoreComment(storeURL);
        UserDetails userDetails = (UserDetails) authentication.getPrincipal();
        String userId = userDetails.getUsername();
        log.error(userId);
        mv.addObject("id",userId);
        mv.addObject("storeCommentList",storeComment);
        mv.addObject("storeImages",storeImages);
        mv.addObject("storeDetail",storeDetail);
        mv.addObject("storeTable",storeTableVO);
        mv.setViewName("store/detail");
        return mv;
    }

    @ResponseBody
    @PostMapping ("setWishList")
    public ModelAndView setWishList(WishListVO wishListVO) throws Exception {
        ModelAndView mv = new ModelAndView();
        log.error(wishListVO.getId());
        log.error(wishListVO.getTitle());
        int result = storeService.setWishList(wishListVO);
        return mv;
    }
}
