create sequence busan_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table busan_hotel_24(
    idx                           number                DEFAULT busan_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table busan_condo_24(
    idx                           number                DEFAULT busan_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table busan_camping_24(
    idx                           number                DEFAULT busan_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table busan_elsesleep_24(
    idx                           number                DEFAULT busan_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table busan_dutyfree_24(
    idx                           number                DEFAULT busan_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table busan_leisureshop_24(
    idx                           number                DEFAULT busan_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table busan_hugeshop_24(
    idx                           number                DEFAULT busan_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table busan_golf_24(
    idx                           number                DEFAULT busan_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table busan_ski_24(
    idx                           number                DEFAULT busan_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table busan_culture_24(
    idx                           number                DEFAULT busan_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table busan_food_24(
    idx                           number                DEFAULT busan_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table busan_amuse_24(
    idx                           number                DEFAULT busan_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);