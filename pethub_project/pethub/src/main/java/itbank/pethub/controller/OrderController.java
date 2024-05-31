package itbank.pethub.controller;

import itbank.pethub.service.MallService;
import itbank.pethub.vo.MemberVO;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("/order")
public class OrderController {
    @Autowired
    private MallService ss;

    @GetMapping("/cart")
    public ModelAndView cart(HttpSession session){
        ModelAndView mav=new ModelAndView();

        MemberVO user = (MemberVO) session.getAttribute("user");
        int memberId = user.getId();

        mav.addObject("list", ss.getCarts(memberId));

        mav.setViewName("/order/cart");
        return mav;
    }

    @GetMapping("/orderStatus")
    public void orderStatus() {}
}
