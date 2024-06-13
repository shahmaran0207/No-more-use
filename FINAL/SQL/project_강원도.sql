create sequence gangwon_hotel_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table gangwon_hotel_24(
    idx                           number                DEFAULT gangwon_hotel_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence gangwon_amuse_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table gangwon_amuse_24(
    idx                           number                DEFAULT gangwon_amuse_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence gangwon_condo_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table gangwon_condo_24(
    idx                           number                DEFAULT gangwon_condo_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence gangwon_camping_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table gangwon_camping_24(
    idx                           number                DEFAULT gangwon_camping_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence gangwon_elsesleep_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table gangwon_elsesleep_24(
    idx                           number                DEFAULT gangwon_elsesleep_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence gangwon_dutyfree_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table gangwon_dutyfree_24(
    idx                           number                DEFAULT gangwon_dutyfree_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence gangwon_leisureshop_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;


create table gangwon_leisureshop_24(
    idx                           number                DEFAULT gangwon_leisureshop_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence gangwon_hugeshop_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table gangwon_hugeshop_24(
    idx                           number                DEFAULT gangwon_hugeshop_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence gangwon_golf_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table gangwon_golf_24(
    idx                           number                DEFAULT gangwon_golf_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence gangwon_ski_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table gangwon_ski_24(
    idx                           number                DEFAULT gangwon_ski_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence gangwon_culture_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;


create table gangwon_culture_24(
    idx                           number                DEFAULT gangwon_culture_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence gangwon_food_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table gangwon_food_24(
    idx                           number                DEFAULT gangwon_food_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);