create table member (
    id      number          not null,
    name    varchar2(30)    not null,
    address varchar2(256)   not null,
    email   varchar2(100)   not null,
    userid  varchar2(50)    unique,
    userpw  varchar2(50)    not null,
    nick    varchar2(50)    not null,
    phone   number          unique,
    
    CONSTRAINT member_pk primary key(id)   
);

create table orders (
    id                 number     not null    primary key,
    member_id          number,
    orderitems_id      number,
    delivery_id        number    unique,
    order_date         date                   default sysdate,
    status             varchar2(30),
    
    constraint fk_member_id FOREIGN key (member_id) REFERENCES member(id) on delete set null
    
);


CREATE TABLE orderitems (
    id            NUMBER      NOT NULL    PRIMARY KEY,
    order_id      NUMBER      NOT NULL,
    order_price   NUMBER      NOT NULL,
    count         NUMBER      DEFAULT 1,
    
    CONSTRAINT fk_order_id FOREIGN KEY (order_id) REFERENCES orders(id) ON DELETE SET NULL
);

alter table orders add constraint fk_delivery_id foreign key (delivery_id) REFERENCES shipments(id);

create table shipments(
    id              number               not null        primary key,
    address         varchar2(256)        not null,
    status          varchar2(30)
);

select * from orderitems;
select * from orders;
select * from shipments;
select * from member;