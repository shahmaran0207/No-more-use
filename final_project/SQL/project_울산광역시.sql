create sequence ulsan_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table ulsan_hotel_24(
    idx                           number                DEFAULT ulsan_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table ulsan_condo_24(
    idx                           number                DEFAULT ulsan_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table ulsan_camping_24(
    idx                           number                DEFAULT ulsan_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table ulsan_elsesleep_24(
    idx                           number                DEFAULT ulsan_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table ulsan_dutyfree_24(
    idx                           number                DEFAULT ulsan_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table ulsan_leisureshop_24(
    idx                           number                DEFAULT ulsan_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table ulsan_hugeshop_24(
    idx                           number                DEFAULT ulsan_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table ulsan_golf_24(
    idx                           number                DEFAULT ulsan_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table ulsan_ski_24(
    idx                           number                DEFAULT ulsan_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table ulsan_culture_24(
    idx                           number                DEFAULT ulsan_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table ulsan_food_24(
    idx                           number                DEFAULT ulsan_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table ulsan_amuse_24(
    idx                           number                DEFAULT ulsan_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);