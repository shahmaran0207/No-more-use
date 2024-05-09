create sequence chungnam_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table chungnam_hotel_24(
    idx                           number                DEFAULT chungnam_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table chungnam_condo_24(
    idx                           number                DEFAULT chungnam_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table chungnam_camping_24(
    idx                           number                DEFAULT chungnam_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table chungnam_elsesleep_24(
    idx                           number                DEFAULT chungnam_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table chungnam_dutyfree_24(
    idx                           number                DEFAULT chungnam_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table chungnam_leisureshop_24(
    idx                           number                DEFAULT chungnam_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table chungnam_hugeshop_24(
    idx                           number                DEFAULT chungnam_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table chungnam_golf_24(
    idx                           number                DEFAULT chungnam_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table chungnam_ski_24(
    idx                           number                DEFAULT chungnam_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table chungnam_culture_24(
    idx                           number                DEFAULT chungnam_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table chungnam_food_24(
    idx                           number                DEFAULT chungnam_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table chungnam_amuse_24(
    idx                           number                DEFAULT chungnam_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);