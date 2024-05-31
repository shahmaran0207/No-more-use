package itbank.pethub.model;

import itbank.pethub.vo.CartVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface MallDAO {

    @Select("SELECT * FROM Cart WHERE order_id IN (SELECT id FROM Order WHERE member_id = #{memberId})")
    public List<CartVO> getCarts(int memberId);
}
