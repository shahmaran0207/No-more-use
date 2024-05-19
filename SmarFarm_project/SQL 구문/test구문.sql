-- 테스트용 회원 데이터 삽입
INSERT INTO member (id, name, address, email, userid, userpw, nick, phone)
VALUES (456, 'helpme', 'helpmet', 'jhelpmee@example.com', 'johelpme', 'phelpme', 'jhelpme', 23544290);

-- 테스트용 주문 데이터 삽입
INSERT INTO orders (id, delivery_id, member_id, status)
VALUES (256, 2112, 456, 'Shipped');

-- 테스트용 배송 데이터 삽입
INSERT INTO shipments (id, address, status)
VALUES (2112, '101 Pine Street', 'Processing');

-- 테스트용 주문 상품 데이터 삽입
INSERT INTO orderitem (id, order_id, product_name, count, price)
VALUES (2776, 256, 'Product1', 5, 2990.00);

-- 추가 테스트용 회원 데이터 삽입
INSERT INTO member (id, name, address, email, userid, userpw, nick, phone)
VALUES (457, 'anotheruser', 'anotheraddress', 'another@example.com', 'anotherid', 'anotherpw', 'anothernick', 12345678);

-- 추가 테스트용 주문 데이터 삽입
INSERT INTO orders (id, delivery_id, member_id, status)
VALUES (257, 2113, 457, 'Pending');

-- 추가 테스트용 배송 데이터 삽입
INSERT INTO shipments (id, address, status)
VALUES (2113, '202 Maple Street', 'Processing');

-- 추가 테스트용 주문 상품 데이터 삽입
INSERT INTO orderitem (id, order_id, product_name, count, price)
VALUES (2777, 257, 'Product2', 3, 1990.00);

-- 트랜잭션 커밋
COMMIT;
