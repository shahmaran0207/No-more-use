package itbank.pethub.model;

import itbank.pethub.vo.CartVO;
import itbank.pethub.vo.ItemVO;
import itbank.pethub.vo.OrderVO;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

@Mapper
public interface OrderDAO {
    @Insert("INSERT INTO Delivery_Status(name) Values(DEFAULT)")
    public String makedelivery_status();

    @Insert("INSERT INTO Order_Status(name) Values(DEFAULT)")
    String makeOrder_status();

    @Select("SELECT id FROM Delivery_Status ORDER BY id DESC FETCH FIRST 1 ROWS ONLY")
    int getdelivery_status_id();

    @Insert("Insert into Delivery(address, post, status_id) values (#{add}, #{port} #{deliveryId})")
    int makedelivery(String add, int port, int deliveryId);

    @Select("SELECT id from Delivery ORDER BY desc fetch first 1 rows only")
    int getdelivery_id();

    @Select("select id from Order_Status order by desc fetch first 1 rows only")
    int getOrder_status();

    @Insert("Insert Into Order(member_id, delivery_id, order_status) values (#{memberId}, #{deliveryId}, #{orderStatus})")
    OrderVO makeOrder(int memberId, int deliveryId, int orderStatus);

    @Select("select * from Item where id=#{productId}")
    ItemVO getItem(int productId);

    @Select("select id from Order order by desc fetch first 1 rows only")
    int getorderid();

    @Insert("insert into Cart (order_id, order_item, order_price, count, origin_price) values (#{orderid}, #{productId}, #{price}, #{quantity}, #{price1})")
    int makecart(int orderid, int productId, int price, int quantity, int price1);

    @Update("UPDATE Cart " +
            "SET count = count + #{count} " +
            "WHERE order_id = #{order_id} " +
            "AND order_id IN ( " +
            "        SELECT o.id " +
            "        FROM Order o " +
            "        WHERE o.order_status_id = ( " +
            "        SELECT os.id " +
            "        FROM order_status os " +
            "        WHERE os.name = '주문 접수' " +
            "))")
    int countup(CartVO cartVO);
}