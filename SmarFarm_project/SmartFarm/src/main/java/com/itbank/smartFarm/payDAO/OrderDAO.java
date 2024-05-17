package com.itbank.smartFarm.payDAO;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import com.itbank.smartFarm.vo.OrdersVO;

@Mapper
public interface OrderDAO {

	public int addOrder(OrdersVO cart);

	public int deleteOrder(OrdersVO cart);

	public int modifyOrder(OrdersVO cart);

	@Select("select * from orders where member_id=#{member_id}")
	public List<OrdersVO> getOrders(int membe_id);

}