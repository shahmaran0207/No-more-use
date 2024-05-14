package com.itbank.rev;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.model.vo.AreaVO;

import Service.Service;

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
	
	@PostMapping("/area")
	public ModelAndView area(AreaVO request) {
		
		ModelAndView mav=new ModelAndView();
		
		mav.addObject("msg", service.money(request));
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