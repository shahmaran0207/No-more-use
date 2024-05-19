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

-- orders 테이블 생성
CREATE TABLE orders (
    id NUMBER PRIMARY KEY,
    member_id NUMBER    NOT NULL,
    delivery_id NUMBER UNIQUE    NOT NULL, -- delivery_id를 고유 키로 설정
    orderitem_id number,
    order_date date default sysdate,
    status varchar2(30),
    CONSTRAINT fk_orders_member FOREIGN KEY (member_id) REFERENCES member(id)
);

-- orderitem 테이블 생성
CREATE TABLE orderitem (
    id NUMBER PRIMARY KEY,
    order_id NUMBER    NOT NULL,
    product_name VARCHAR2(100)    NOT NULL,
    count NUMBER default 1,
    price number not null,
    CONSTRAINT fk_orderitem_orders FOREIGN KEY (order_id) REFERENCES orders(id)
);

-- shipments 테이블 생성
CREATE TABLE shipments (
    id NUMBER PRIMARY KEY,
    address VARCHAR(255) NOT NULL,
    status varchar2(30)  default '배송준비중',

    CONSTRAINT fk_shipments_orders FOREIGN KEY (id) REFERENCES orders(delivery_id)
);
