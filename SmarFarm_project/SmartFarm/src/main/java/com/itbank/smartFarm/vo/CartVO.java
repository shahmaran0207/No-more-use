package com.itbank.smartFarm.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class CartVO {
	private int order_id, member_id, delivery_id, orderitems_id, phone, unit_price, quantity;
	private Date order_date;
	private String status, member_name, member_email, member_address, product_name, order_status, delivery_address, delivery_status;


}
