package com.delivery.store;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/store")
public class StoreController {

    @Autowired
    private StoreService storeService;

    @GetMapping("/list")
//    @ResponseBody
//    @RequestParam("address") String address
    public ModelAndView getStoreList(@RequestParam("storeURL") String storeURL) throws Exception {
        ModelAndView mv = new ModelAndView();
        List<StoreVO>storeVOList = storeService.getStoreList(storeURL);
        mv.addObject("storeList", storeVOList);
        mv.setViewName("store/list");
        return mv;
    }
    @GetMapping("/detail")
    public ModelAndView getStoreDetail(@RequestParam("storeURL") String storeURL) throws Exception {
        ModelAndView mv = new ModelAndView();
        StoreVO storeDetail = storeService.getStoreDetail(storeURL);
        List<StoreVO>storeImages = storeService.getStoreDetailImage(storeURL);
        StoreTableVO storeTableVO = storeService.getStoreTable(storeURL);
        List<StoreCommentVO>storeComment = storeService.getStoreComment(storeURL);
        mv.addObject("storeCommentList",storeComment);
        mv.addObject("storeImages",storeImages);
        mv.addObject("storeDetail",storeDetail);
        mv.addObject("storeTable",storeTableVO);
        mv.setViewName("store/detail");
        return mv;
    }

}
