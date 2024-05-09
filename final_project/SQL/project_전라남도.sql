create sequence jeonnam_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table jeonnam_hotel_24(
    idx                           number                DEFAULT jeonnam_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table jeonnam_condo_24(
    idx                           number                DEFAULT jeonnam_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table jeonnam_camping_24(
    idx                           number                DEFAULT jeonnam_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table jeonnam_elsesleep_24(
    idx                           number                DEFAULT jeonnam_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table jeonnam_dutyfree_24(
    idx                           number                DEFAULT jeonnam_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table jeonnam_leisureshop_24(
    idx                           number                DEFAULT jeonnam_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table jeonnam_hugeshop_24(
    idx                           number                DEFAULT jeonnam_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table jeonnam_golf_24(
    idx                           number                DEFAULT jeonnam_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table jeonnam_ski_24(
    idx                           number                DEFAULT jeonnam_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table jeonnam_culture_24(
    idx                           number                DEFAULT jeonnam_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table jeonnam_food_24(
    idx                           number                DEFAULT jeonnam_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table jeonnam_amuse_24(
    idx                           number                DEFAULT jeonnam_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);