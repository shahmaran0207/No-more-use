create sequence jeonnam_hotel_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table jeonnam_hotel_24(
    idx                           number                DEFAULT jeonnam_hotel_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence jeonnam_amuse_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table jeonnam_amuse_24(
    idx                           number                DEFAULT jeonnam_amuse_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence jeonnam_condo_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table jeonnam_condo_24(
    idx                           number                DEFAULT jeonnam_condo_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence jeonnam_camping_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table jeonnam_camping_24(
    idx                           number                DEFAULT jeonnam_camping_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence jeonnam_elsesleep_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table jeonnam_elsesleep_24(
    idx                           number                DEFAULT jeonnam_elsesleep_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence jeonnam_dutyfree_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table jeonnam_dutyfree_24(
    idx                           number                DEFAULT jeonnam_dutyfree_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence jeonnam_leisureshop_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;


create table jeonnam_leisureshop_24(
    idx                           number                DEFAULT jeonnam_leisureshop_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence jeonnam_hugeshop_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table jeonnam_hugeshop_24(
    idx                           number                DEFAULT jeonnam_hugeshop_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence jeonnam_golf_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table jeonnam_golf_24(
    idx                           number                DEFAULT jeonnam_golf_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence jeonnam_ski_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table jeonnam_ski_24(
    idx                           number                DEFAULT jeonnam_ski_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence jeonnam_culture_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;


create table jeonnam_culture_24(
    idx                           number                DEFAULT jeonnam_culture_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence jeonnam_food_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table jeonnam_food_24(
    idx                           number                DEFAULT jeonnam_food_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);