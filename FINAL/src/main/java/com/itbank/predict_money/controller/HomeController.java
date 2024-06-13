package com.itbank.predict_money.controller;

import com.itbank.predict_money.service.Service;
import com.itbank.predict_money.vo.AreaVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class HomeController {

    @Autowired
    private Service service;

    @GetMapping("/")
    public String home() {
        return "home";
    }

    @GetMapping("/area")
    public String area() {
        return "area";
    }

    @GetMapping("/result")
    public String result() {
        return "result";
    }

    @GetMapping("/result2")
    public String result2() {
        return "result2";
    }

    @PostMapping("/area")
    public ModelAndView area(AreaVO request) {

        ModelAndView mav=new ModelAndView();
        String msg=service.moneyfind(request);
        mav.addObject("msg", msg);
        mav.setViewName("result");

        return mav;
    }

    @GetMapping("/money")
    public String money() {
        return "money";
    }

    @PostMapping("/money")
    public ModelAndView money(AreaVO request) {

        ModelAndView mav=new ModelAndView();

        mav.addObject("msg", service.money2(request));
        mav.setViewName("result2");

        return mav;
    }

}