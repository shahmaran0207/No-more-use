create sequence gangju_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table gangju_hotel_24(
    idx                           number                DEFAULT gangju_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table gangju_condo_24(
    idx                           number                DEFAULT gangju_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table gangju_camping_24(
    idx                           number                DEFAULT gangju_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table gangju_elsesleep_24(
    idx                           number                DEFAULT gangju_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table gangju_dutyfree_24(
    idx                           number                DEFAULT gangju_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table gangju_leisureshop_24(
    idx                           number                DEFAULT gangju_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table gangju_hugeshop_24(
    idx                           number                DEFAULT gangju_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table gangju_golf_24(
    idx                           number                DEFAULT gangju_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table gangju_ski_24(
    idx                           number                DEFAULT gangju_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table gangju_culture_24(
    idx                           number                DEFAULT gangju_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table gangju_food_24(
    idx                           number                DEFAULT gangju_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table gangju_amuse_24(
    idx                           number                DEFAULT gangju_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);