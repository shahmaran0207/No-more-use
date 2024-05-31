package itbank.pethub.service;

import itbank.pethub.model.MallDAO;
import itbank.pethub.vo.CartVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MallService {
    @Autowired
    private MallDAO sd;


    public List<CartVO> getCarts(int memberId) {
        return sd.getCarts(memberId);
    }
}