-- 테스트용 회원 데이터 삽입
INSERT INTO member (id, name, address, email, userid, userpw, nick, phone)
VALUES (456, 'helpme', 'helpmet', 'jhelpmee@example.com', 'johelpme', 'phelpme', 'jhelpme', 23544290);

-- 테스트용 주문 데이터 삽입
INSERT INTO orders (id, delivery_id, member_id, status)
VALUES (256, 2112, 456, 'Shipped');

-- 테스트용 배송 데이터 삽입
INSERT INTO shipments (id, address, status)
VALUES (2112, '101 Pine Street', 'Processing');

-- 첫 번째 세트의 주문 정보 삽입
INSERT INTO orders (id, member_id, delivery_id, orderitem_id, order_date, status)
VALUES (1001, 456, 3001, 2776, SYSDATE, 'Processing');

-- 첫 번째 세트의 배송 정보 삽입
INSERT INTO shipments (id, address, status)
VALUES (3001, 'helpmet', '배송준비중');

-- 두 번째 세트의 주문 정보 삽입
INSERT INTO orders (id, member_id, delivery_id, orderitem_id, order_date, status)
VALUES (1002, 456, 3002, 2776, SYSDATE, 'Processing');

-- 두 번째 세트의 배송 정보 삽입
INSERT INTO shipments (id, address, status)
VALUES (3002, 'helpmet', '배송준비중');
