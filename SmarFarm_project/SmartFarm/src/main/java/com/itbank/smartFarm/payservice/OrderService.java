package com.itbank.smartFarm.payservice;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.itbank.smartFarm.payModel.OrderDAO;
import com.itbank.smartFarm.vo.CartVO;
import com.itbank.smartFarm.vo.MemberVO;
import com.itbank.smartFarm.vo.OrderItemVo;
import com.itbank.smartFarm.vo.OrdersVO;
import com.itbank.smartFarm.vo.ShipmentsVO;

@Service
public class OrderService {
	@Autowired
	private OrderDAO od;

	public List<CartVO> getOrders(int i) {
		return od.getOrders(i);
	}

	public CartVO getorder(int id) {
		return od.getOrder(id);
	}

	public int modify(CartVO input) {
		return od.order(input);
	}

	public int deleteOrder(int id) {
		return od.deleteOrder(id);
	}

	public List<OrderItemVo> selectAll() {

		return od.selectAll();
	}

	public OrderItemVo selectOne(int id) {

		return od.selectOne(id);
	}

	public int makeorder(OrdersVO ov) {
		return od.makerorder(ov);
	}

	public int makedelivery(String address) {
		return od.makedelivery(address);
	}

	public int getdeliveryid() {
		return od.getdeliveryid();
	}

	public int getorderitem_id() {
		return od.getorderitem_id();
	}
	
	public int modifyaddress(CartVO input) {
		return od.modifyaddress(input);
	}

	public int getdelid(int id) {
		return od.getdelid(id);
	}

	public Object deletedelivery(int deliverid) {
		return od.deliverid(deliverid);
	}

	public int count(CartVO cv) {
		return od.count(cv);
	}

	public int getorderid() {
		return od.getorderid();
	}

}