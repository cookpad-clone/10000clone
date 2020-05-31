package com.team.clone10000.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {

    @GetMapping("/")
    public String index() {
        return "index";
    }

    @GetMapping("/chef")
    public String chef(){
        return "chef-list";
    }

    @GetMapping("/story")
    public String story(){
        return "story";
    }
}
