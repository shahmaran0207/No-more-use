package com.travel.travel.Entity;

import com.travel.travel.Constant.ItemSellStatus;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import java.time.LocalDate;
import java.time.LocalDateTime;

@Entity
@Table(name="item")
@Getter
@Setter
@ToString
public class Item {
    @Id
    @Column(name="item_id")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String itemNm, itemDetail;
    private int price, stockNumber;
    private ItemSellStatus itemSellStatus;
    private LocalDate regTime;
    private LocalDateTime updatetime;
    private String Itempic;
}
