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
    public ModelAndView getStoreList() throws Exception {
        ModelAndView mv = new ModelAndView();
//        storeService.setAddress(address);
//        List<StoreVO>storeVOList = storeService.getStoreDatas();
        List<StoreVO>storeVOList = storeService.getStoreList();
        mv.addObject("storeList", storeVOList);
        mv.setViewName("store/list");
        return mv;
    }

}
