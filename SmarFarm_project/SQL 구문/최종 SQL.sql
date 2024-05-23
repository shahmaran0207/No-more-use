-- member 테이블 생성
CREATE TABLE member (
    id NUMBER PRIMARY KEY,
    name VARCHAR2(100) not null,
    email VARCHAR2(100) not null,
    address VARCHAR2(256)   NOT NULL,
    userid  VARCHAR2(50)    UNIQUE  not null,
    userpw  VARCHAR2(50)    NOT NULL,
    nick    VARCHAR2(50)    NOT NULL,
    phone   NUMBER          UNIQUE
);

-- shipments(배송정보) table 시퀀스 및 테이블 생성
CREATE SEQUENCE shipments_seq
  START WITH 1
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;


CREATE TABLE shipments (
    id NUMBER  DEFAULT shipments_seq.NEXTVAL PRIMARY KEY ,
    address VARCHAR(255) NOT NULL,
    status varchar2(30) DEFAULT '배송준비중'
);

-- orderitem 테이블 생성
CREATE TABLE orderitem (
    id NUMBER PRIMARY KEY,
    order_id NUMBER  UNIQUE  NOT NULL,
    product_name VARCHAR2(100)    NOT NULL,
    count NUMBER default 1,
    price number not null
);

-- order 테이블 및 시퀀스 생성
CREATE SEQUENCE order_seq
  START WITH 1
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- orders 테이블 생성
CREATE TABLE orders (
    id NUMBER DEFAULT order_seq.NEXTVAL PRIMARY KEY ,
    member_id NUMBER    NOT NULL,
    delivery_id NUMBER UNIQUE    NOT NULL, -- delivery_id를 고유 키로 설정
    orderitem_id number,
    order_date date default sysdate,
    status varchar2(30),
    count number default 0,
    CONSTRAINT fk_orders_member FOREIGN KEY (member_id) REFERENCES member(id),
      CONSTRAINT fk_orders_orders FOREIGN KEY (orderitem_id) REFERENCES orderitem(order_id),
          CONSTRAINT fk_shipments_orders FOREIGN KEY (delivery_id) REFERENCES shipments(id)
);

-- 주문목록 view 생성
CREATE VIEW cart AS
SELECT 
    o.id AS order_id,
    m.id AS member_id,
    s.id AS delivery_id,
    m.name AS member_name,
    m.email AS member_email,
    m.address AS member_address,
    m.phone AS member_phone,
    oi.product_name,
    oi.order_id as oiorderid,
    oi.price as unit_price,
    (oi.price * o.count) AS total_price,
    (o.count) AS count,
    o.status AS order_status,
    s.address AS address,
    s.status AS delivery_status
FROM 
    orders o
JOIN 
    member m ON o.member_id = m.id
JOIN 
    orderitem oi ON o.orderitem_id = oi.order_id
JOIN 
    shipments s ON o.delivery_id = s.id;