package itbank.pethub.controller;


import itbank.pethub.service.MarketService;
import itbank.pethub.service.OrderService;
import itbank.pethub.vo.CartVO;
import itbank.pethub.vo.ItemVO;
import itbank.pethub.vo.MemberVO;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/mall")
public class MallController {
    @Autowired
    private OrderService os;

    @Autowired
    private MarketService ms;

    // 상품 리스트 불러오기
    @GetMapping("/Items")
    public ModelAndView market() {
        ModelAndView mav = new ModelAndView();

        mav.addObject("product", ms.selectAll());
        mav.setViewName("/mall/Items");
        return mav;
    }

    // 상세페이지 불러오기
    @GetMapping("/DetailPage/{id}")
    public ModelAndView detailPage(@PathVariable("id") int id) {
        ModelAndView mav = new ModelAndView();

        mav.addObject("product", ms.selectOne(id));
        mav.setViewName("/mall/DetailPage");

        return mav;
    }

    // 상세페이지 정보를 받아 주문페이지로 이동
    @PostMapping("/DetailPage/{id}")
    public ModelAndView processOrder(@PathVariable("id") int productId, @RequestParam("quantity") int quantity,
                                     HttpSession session) {
        ModelAndView mav = new ModelAndView();

        if (session.getAttribute("user") == null) {
            // 로그인 페이지로 리다이렉트
            mav.setViewName("redirect:/member/login");
            return mav;
        }

        // 로그인 한 멤버 정보 + 아이디 + 주소 가져오기
        MemberVO user = (MemberVO) session.getAttribute("user");
        int memberId = user.getId();


        // 주문이 이미 존재하는지 확인 - order 페이지에만 있는지 확인
        int existingOrderId = ms.getExistingOrderId(memberId, productId);

        if (existingOrderId != -1) {
            // 주문이 이미 존재하면 수량을 업데이트
            CartVO cartVO = new CartVO();
            cartVO.setOrder_id(existingOrderId);
            cartVO.setCount(quantity);
            os.countUp(cartVO);
        } else {
            os.makedelivery_status();
            os.makeOrder_status();

            //포스트 번호 - 어케 할지 몰라 일단 300으로 고정시켜둠
            int port=300;
            int delivery_status_id=os.getdelivery_status_id();
            String add=user.getAddress();

            os.makeDelivery(add, port, delivery_status_id);

            int delivery_id=os.getdelivery_id();
            int order_status=os.getOrder_status();

            os.makeOrder(memberId, delivery_id, order_status);

            ItemVO iv=os.getItem(productId);

            int orderid = os.getorderid();
            os.makeCart(orderid, productId, iv.getPrice(), quantity, iv.getPrice());
        }

        // 주문이 성공적으로 추가되거나 업데이트된 후 주문 페이지로 리다이렉트
        mav.setViewName("/mall/order/cart");

        return mav;
    }

}