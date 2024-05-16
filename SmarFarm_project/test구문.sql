insert into member(id, name, address, email, userid, userpw, nick, phone)
    values('1111', 'dkahffkd', '부산', 'dkahffkd@naver.com',  'test', 'test', 'teste', '010898888888');
    
insert into  orders(id, member_id, orderitems_id, delivery_id, status)
    values('12312321', '1111', '12314', '123123', '주문완료');
    
insert into shipments(id, address, status)
    values('123123', '부산', '주문완료');
    
    
    select * from orders where member_id=1111;
    
    commit;