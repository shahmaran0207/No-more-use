package com.itbank.rev;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.model.vo.AreaVO;

import Service.Service;

@Controller
public class HomeController {

	@GetMapping("/")
	public String home() {
		return "home";
	}

	
	@GetMapping("/play")
	public String play() {
		return "play";
	}
	
	@GetMapping("/money")
	public String money() {
		return "money";
	}
	@Autowired
	private Service service;
	
	@GetMapping("/area")
	public String area() {
		return "area";
	}
	
	@PostMapping("/area")
	public ModelAndView area(HttpServletRequest request) {
		
		ModelAndView mav=new ModelAndView();
		
		String area=request.getParameter("area");
		String goal=request.getParameter("goal");
		String month=request.getParameter("month");
		String night=request.getParameter("night");
		String nightplace=request.getParameter("nightplace");
		String food=request.getParameter("food");
		
		AreaVO av=new AreaVO(area, goal, month, night, nightplace, food);
		
		mav.addObject("msg", service.money(av));
		mav.setViewName("result");
		
		return mav;
	}
}