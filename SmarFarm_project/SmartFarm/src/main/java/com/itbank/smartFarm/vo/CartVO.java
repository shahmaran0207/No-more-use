 package com.itbank.smartFarm.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class CartVO {
	public CartVO(int orderid, int quantity) {
		this.order_id=orderid;
		this.count=quantity;
	}
	private int order_id, member_id, delivery_id, orderitems_id, phone, unit_price, count, oiorderid;
	private Date order_date;
	private String status, member_name, member_email, member_address, product_name, order_status, address, delivery_status;


}
