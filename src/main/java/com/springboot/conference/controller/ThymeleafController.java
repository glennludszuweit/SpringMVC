package com.springboot.conference.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Map;

@Controller
public class ThymeleafController {
    @GetMapping("thymeleaf")
    public String thymeleaf(Map<String, Object> model) {
        model.put("message", "Hello Thymeleaf!");
        return "thymeleaf";
    }
}
