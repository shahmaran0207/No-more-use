package com.travel.travel.Repository;

import com.travel.travel.Constant.ItemSellStatus;
import com.travel.travel.Entity.Item;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.TestPropertySource;

import java.time.LocalDate;
import java.time.LocalDateTime;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
@TestPropertySource(locations = "classpath:application-test.yml")
class ItemRepositoryTest {

    @Autowired
    ItemRepository itemreposirtory;
    
    @Test
    @DisplayName("상품 저장 테스트")
    public void creatItemTest(){
        Item item = new Item();
        item.setItemNm("테스팅");
        item.setPrice(1000);
        item.setItemDetail("테스팅 디테일");
        item.setItemSellStatus(ItemSellStatus.SELL);
        item.setStockNumber(100);
        item.setRegTime(LocalDateTime.now());
        item.setUpdatetime(LocalDateTime.now());
        Item savedItem = itemreposirtory.save(item);
        System.out.println(savedItem);
    }
    
}