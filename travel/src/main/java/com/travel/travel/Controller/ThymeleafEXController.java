package com.travel.travel.Controller;

import com.travel.travel.DTO.ItemDTO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value="/thymeleafEX")
public class ThymeleafEXController {
    @GetMapping(value="/thymeleafEX01")
    public String thymeleafExample01(Model model){
        model.addAttribute("data", "타임리프 예제 입니다.");
        return "thymeleafEX/thymeleafEX01";
    }

    @GetMapping(value="/thymeleafEX02")
    public String thymeleafExampleEX02(Model model){
        ItemDTO itemdto=new ItemDTO();
        itemdto.setItemDetail("상품 상세 설명");
        itemdto.setItemNm("테스트 상품1");
        itemdto.setPrice(1000);
        itemdto.setRegTime(LocalDateTime.now());

        model.addAttribute("itemDTO", itemdto);
        return "thymeleafEX/thymeleafEX02";
    }

    @GetMapping(value="/thymeleafEX03")
    public String thymeleafEXample03(Model model){
        List<ItemDTO> itemDTOList=new ArrayList<>();

        for(int i=1; i<=10; i++){
            ItemDTO itemDTO=new ItemDTO();
            itemDTO.setItemDetail("상품 상세 설명"+i);
            itemDTO.setItemNm("테스트 상품"+i);
            itemDTO.setPrice(1000*i);
            itemDTO.setRegTime(LocalDateTime.now());

            itemDTOList.add(itemDTO);
        }

        model.addAttribute("itemDTOLIST", itemDTOList);
        return "thymeleafEX/thymeleafEX03";
    }
}