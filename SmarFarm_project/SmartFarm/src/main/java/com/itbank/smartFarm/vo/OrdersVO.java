package com.itbank.smartFarm.vo;

import java.sql.Date;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class OrdersVO {
	private int id, member_id, delivery__id;
	private Date order_date;
	private String status;
}
