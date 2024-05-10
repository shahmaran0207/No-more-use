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
	
	@Autowired
	private Service service;
	
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
	
	@GetMapping("/area")
	public String area() {
		return "area";
	}
	
	@PostMapping("/area")
	public ModelAndView area(AreaVO request) {
		
		ModelAndView mav=new ModelAndView();
		
//		String area=request.getParameter("area");
//		
//		String goal=request.getParameter("goal");
//		int month= Integer.parseInt(request.getParameter("month"));
//		
//		int night= Integer.parseInt(request.getParameter("night"));
//		
//		String nightplace=request.getParameter("nightplace");
//		
//		int food=Integer.parseInt(request.getParameter("food"));
//		
		
//		AreaVO av=new AreaVO(area, goal, month, night, nightplace, food);
		
		mav.addObject("msg", service.money(request));
		mav.setViewName("result");
		
		
		return mav;
	}
}