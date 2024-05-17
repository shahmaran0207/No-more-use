package com.itbank.smartFarm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.itbank.smartFarm.payservice.OrderService;


@Controller
@RequestMapping("/pay")
public class OrderController {
	@Autowired
	private OrderService os;
	
	@GetMapping("/order")
	public String list(Model model) {
		model.addAttribute("orderlist", os.getOrders(1111));
		
		return "pay/order";
	}
	
	
	@GetMapping("/pay")
    public String pay() {
        return "pay/pay";
    }
}
