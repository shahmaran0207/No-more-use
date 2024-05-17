package com.itbank.smartFarm.payservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.smartFarm.payDAO.OrderDAO;
import com.itbank.smartFarm.vo.OrdersVO;

@Service
public class OrderService {
	@Autowired
	private OrderDAO od;

	public List<OrdersVO> getOrders(int member_id) {
		return od.getOrders(member_id);
	}
}
