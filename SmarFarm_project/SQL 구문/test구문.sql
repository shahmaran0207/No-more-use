INSERT INTO member (id, name, address, email, userid, userpw, nick, phone)
VALUES (1, 'John Doe', '123 Elm Street', 'john.doe@example.com', 'johndoe', 'password123', 'johnny', 1234567890);

INSERT INTO member (id, name, address, email, userid, userpw, nick, phone)
VALUES (2, 'Jane Smith', '456 Oak Avenue', 'jane.smith@example.com', 'janesmith', 'password456', 'jane', 9876543210);

INSERT INTO shipments (id, address, status)
VALUES (1, '789 Maple Road', 'Shipped');

INSERT INTO shipments (id, address, status)
VALUES (2, '101 Pine Street', 'Processing');

INSERT INTO orders (id, member_id, orderitems_id, delivery_id, status)
VALUES (1, 1, NULL, 1, 'Pending');

INSERT INTO orders (id, member_id, orderitems_id, delivery_id, status)
VALUES (2, 2, NULL, 2, 'Shipped');

INSERT INTO orderitems (id, order_id, order_price, count)
VALUES (1, 1, 100.00, 2);

INSERT INTO orderitems (id, order_id, order_price, count)
VALUES (2, 2, 50.00, 1);
