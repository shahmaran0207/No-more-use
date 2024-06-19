package com.travel.travel.Repository;

import com.travel.travel.Constant.ItemSellStatus;
import com.travel.travel.Entity.Item;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.TestPropertySource;
import java.time.LocalDateTime;
import java.util.List;

@SpringBootTest
@TestPropertySource(locations = "classpath:application-test.yml")
class ItemRepositoryTest {

    @Autowired
    ItemRepository itemreposirtory;
    
    @Test
    @DisplayName("상품 저장 테스트")
    public void creatItemTest(){
        Item item = new Item();
        item.setItemNm("테스트 상품");
        item.setPrice(1000);
        item.setItemDetail("테스트 상품 상세 설명");
        item.setItemSellStatus(ItemSellStatus.SELL);
        item.setStockNumber(100);
        item.setRegTime(LocalDateTime.now());
        item.setUpdatetime(LocalDateTime.now());
        Item savedItem = itemreposirtory.save(item);
        System.out.println(savedItem);
    }


    public void creatItemList() {
        for (int i = 1; i <= 10; i++) {
            Item item = new Item();
            item.setItemNm("테스트 상품" + i);
            item.setPrice(1000 + i);
            item.setItemDetail("테스트 상품 설명" + i);
            item.setItemSellStatus(ItemSellStatus.SELL);
            item.setStockNumber(100);
            item.setRegTime(LocalDateTime.now());
            item.setUpdatetime(LocalDateTime.now());
            Item savedItem = itemreposirtory.save(item);
        }
    }

        @Test
        @DisplayName("상품명 조회 테스트")
        public void findByItemNmTest(){
            this.creatItemList();
            List<Item> itemList=itemreposirtory.findByItemNm("테스트 상품1");

            for(Item item:itemList){
                System.out.println(item.toString());
            }
    }

    @Test
    @DisplayName("상품명, 상품상세설명 or 테스트")
    public void findByItemNmOrItemDetailTest(){
        this.creatItemList();
        List<Item> itemList=
                itemreposirtory.findByItemNmOrItemDetail("테스트 상품1", "테스트 상품 상세 설명5");

        for(Item item:itemList){
            System.out.println(item.toString());
        }
    }
}