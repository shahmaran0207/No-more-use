create sequence gungnam_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table gungnam_hotel_24(
    idx                           number                DEFAULT gungnam_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table gungnam_condo_24(
    idx                           number                DEFAULT gungnam_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table gungnam_camping_24(
    idx                           number                DEFAULT gungnam_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table gungnam_elsesleep_24(
    idx                           number                DEFAULT gungnam_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table gungnam_dutyfree_24(
    idx                           number                DEFAULT gungnam_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table gungnam_leisureshop_24(
    idx                           number                DEFAULT gungnam_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table gungnam_hugeshop_24(
    idx                           number                DEFAULT gungnam_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table gungnam_golf_24(
    idx                           number                DEFAULT gungnam_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table gungnam_ski_24(
    idx                           number                DEFAULT gungnam_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table gungnam_culture_24(
    idx                           number                DEFAULT gungnam_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table gungnam_food_24(
    idx                           number                DEFAULT gungnam_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table gungnam_amuse_24(
    idx                           number                DEFAULT gungnam_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);