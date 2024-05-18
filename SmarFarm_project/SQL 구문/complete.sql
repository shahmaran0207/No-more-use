CREATE TABLE member (
    id      NUMBER          NOT NULL,
    name    VARCHAR2(30)    NOT NULL,
    address VARCHAR2(256)   NOT NULL,
    email   VARCHAR2(100)   NOT NULL,
    userid  VARCHAR2(50)    UNIQUE,
    userpw  VARCHAR2(50)    NOT NULL,
    nick    VARCHAR2(50)    NOT NULL,
    phone   NUMBER          UNIQUE,
    CONSTRAINT member_pk PRIMARY KEY(id)
);

CREATE TABLE shipments (
    id              NUMBER              NOT NULL PRIMARY KEY,
    address         VARCHAR2(256)       NOT NULL,
    status          VARCHAR2(30)
);

CREATE TABLE orders (
    id              NUMBER              NOT NULL PRIMARY KEY,
    member_id       NUMBER,
    delivery_id     NUMBER              UNIQUE,
    order_date      DATE                DEFAULT SYSDATE,
    status          VARCHAR2(30),
    CONSTRAINT fk_member_id FOREIGN KEY (member_id) REFERENCES member(id) ON DELETE SET NULL,
    CONSTRAINT fk_delivery_id FOREIGN KEY (delivery_id) REFERENCES shipments(id) ON DELETE CASCADE
);

CREATE TABLE orderitems (
    id            NUMBER      NOT NULL PRIMARY KEY,
    order_id      NUMBER      NOT NULL,
    order_price   NUMBER      NOT NULL,
    count         NUMBER      DEFAULT 1,
    CONSTRAINT fk_order_id FOREIGN KEY (order_id) REFERENCES orders(id) ON DELETE CASCADE
);

INSERT INTO member (id, name, address, email, userid, userpw, nick, phone)
VALUES (456, 'helpme', 'helpmet', 'jhelpmee@example.com', 'johelpme', 'phelpme', 'jhelpme', 23544290);

INSERT INTO shipments (id, address, status)
VALUES (2112, '101 Pine Street', 'Processing');

INSERT INTO orders (id, delivery_id, member_id, status)
VALUES (256, 2112, 456, 'Shipped');

INSERT INTO orderitems (id, order_price, count, order_id)
VALUES (2776, 2990.00, 5, 256);

COMMIT;

CREATE OR REPLACE VIEW cart AS
SELECT
    o.id AS order_id,
    o.member_id,
    o.delivery_id,
    o.order_date,
    o.status,
    NVL(SUM(oi.order_price * oi.count), 0) AS total_order_price,
    NVL(SUM(oi.count), 0) AS total_item_count
FROM
    orders o
LEFT JOIN
    orderitems oi ON o.id = oi.order_id
GROUP BY
    o.id, o.member_id, o.delivery_id, o.order_date, o.status;
    


SELECT * FROM orderitems;
SELECT * FROM shipments;
SELECT * FROM orders;
SELECT * FROM member;
COMMIT;

-- 추가 데이터 삽입
INSERT INTO member (id, name, address, email, userid, userpw, nick, phone)
VALUES (457, 'anotheruser', 'anotheraddress', 'another@example.com', 'anotherid', 'anotherpw', 'anothernick', 12345678);

INSERT INTO shipments (id, address, status)
VALUES (2113, '202 Maple Street', 'Processing');

INSERT INTO orders (id, delivery_id, member_id, status)
VALUES (257, 2113, 457, 'Pending');

INSERT INTO orderitems (id, order_price, count, order_id)
VALUES (2777, 1990.00, 3, 257);

commit;

select * from member;
select * from orders;
select * from orderitems;
select * from shipments;
