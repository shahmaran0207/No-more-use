create sequence jeonbuk_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table jeonbuk_hotel_24(
    idx                           number                DEFAULT jeonbuk_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table jeonbuk_condo_24(
    idx                           number                DEFAULT jeonbuk_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table jeonbuk_camping_24(
    idx                           number                DEFAULT jeonbuk_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table jeonbuk_elsesleep_24(
    idx                           number                DEFAULT jeonbuk_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table jeonbuk_dutyfree_24(
    idx                           number                DEFAULT jeonbuk_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table jeonbuk_leisureshop_24(
    idx                           number                DEFAULT jeonbuk_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table jeonbuk_hugeshop_24(
    idx                           number                DEFAULT jeonbuk_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table jeonbuk_golf_24(
    idx                           number                DEFAULT jeonbuk_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table jeonbuk_ski_24(
    idx                           number                DEFAULT jeonbuk_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table jeonbuk_culture_24(
    idx                           number                DEFAULT jeonbuk_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table jeonbuk_food_24(
    idx                           number                DEFAULT jeonbuk_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table jeonbuk_amuse_24(
    idx                           number                DEFAULT jeonbuk_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);