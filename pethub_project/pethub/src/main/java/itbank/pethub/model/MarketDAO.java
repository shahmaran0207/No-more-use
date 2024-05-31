package itbank.pethub.model;

import itbank.pethub.vo.ItemVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.ResultType;
import org.apache.ibatis.annotations.Select;
import java.util.List;

@Mapper
public interface MarketDAO {
    @Select("select * from Item order by id desc")
    List<ItemVO> selectAll();

    @Select("select * from Item where id = #{id}")
    ItemVO selectOne(int id);

    @Select("SELECT id FROM Cart WHERE order_id IN (SELECT id FROM `Order` WHERE member_id=#{memberId} and order_status in (select id from Order_Status where name ='주문 접수')) AND order_item=#{id}")
    @ResultType(Integer.class)
    Integer getExistingOrderId(@Param("memberId") int memberId, @Param("id") int id);

}

