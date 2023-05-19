package com.delivery.delivery.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
    @GetMapping("/")
    public String test() {
        System.out.println("home");
        return"home";
    }
}
