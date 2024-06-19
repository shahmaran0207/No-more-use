package com.travel.travel.Repository;

import com.travel.travel.Entity.Item;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface ItemRepository extends JpaRepository<Item, Integer> {
    List<Item> findByItemNm(String name);

    List<Item> findByItemNmOrItemDetail(String itemNm, String itemDetail);
}
