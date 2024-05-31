package itbank.pethub.service;

import itbank.pethub.model.MarketDAO;
import itbank.pethub.vo.ItemVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MarketService {
    @Autowired
    private MarketDAO md;

    // 상품 목록
    public List<ItemVO> selectAll() {
        return md.selectAll();
    }

    public ItemVO selectOne(int id) {
        return md.selectOne(id);
    }


    public int getExistingOrderId(int memberId, int productId) {
        Integer existingOrderId = md.getExistingOrderId(memberId, productId);
        return existingOrderId != null ? existingOrderId.intValue() : -1;
    }

}