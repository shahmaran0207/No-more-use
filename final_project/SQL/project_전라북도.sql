create sequence jeonbuk_hotel_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table jeonbuk_hotel_24(
    idx                           number                DEFAULT jeonbuk_hotel_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence jeonbuk_amuse_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table jeonbuk_amuse_24(
    idx                           number                DEFAULT jeonbuk_amuse_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence jeonbuk_condo_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table jeonbuk_condo_24(
    idx                           number                DEFAULT jeonbuk_condo_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence jeonbuk_camping_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table jeonbuk_camping_24(
    idx                           number                DEFAULT jeonbuk_camping_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence jeonbuk_elsesleep_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table jeonbuk_elsesleep_24(
    idx                           number                DEFAULT jeonbuk_elsesleep_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence jeonbuk_dutyfree_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table jeonbuk_dutyfree_24(
    idx                           number                DEFAULT jeonbuk_dutyfree_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence jeonbuk_leisureshop_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;


create table jeonbuk_leisureshop_24(
    idx                           number                DEFAULT jeonbuk_leisureshop_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence jeonbuk_hugeshop_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table jeonbuk_hugeshop_24(
    idx                           number                DEFAULT jeonbuk_hugeshop_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence jeonbuk_golf_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table jeonbuk_golf_24(
    idx                           number                DEFAULT jeonbuk_golf_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence jeonbuk_ski_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table jeonbuk_ski_24(
    idx                           number                DEFAULT jeonbuk_ski_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence jeonbuk_culture_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;


create table jeonbuk_culture_24(
    idx                           number                DEFAULT jeonbuk_culture_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence jeonbuk_food_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table jeonbuk_food_24(
    idx                           number                DEFAULT jeonbuk_food_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);