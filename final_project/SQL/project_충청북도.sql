create sequence chungbuk_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table chungbuk_hotel_24(
    idx                           number                DEFAULT chungbuk_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table chungbuk_condo_24(
    idx                           number                DEFAULT chungbuk_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table chungbuk_camping_24(
    idx                           number                DEFAULT chungbuk_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table chungbuk_elsesleep_24(
    idx                           number                DEFAULT chungbuk_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table chungbuk_dutyfree_24(
    idx                           number                DEFAULT chungbuk_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table chungbuk_leisureshop_24(
    idx                           number                DEFAULT chungbuk_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table chungbuk_hugeshop_24(
    idx                           number                DEFAULT chungbuk_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table chungbuk_golf_24(
    idx                           number                DEFAULT chungbuk_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table chungbuk_ski_24(
    idx                           number                DEFAULT chungbuk_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table chungbuk_culture_24(
    idx                           number                DEFAULT chungbuk_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table chungbuk_food_24(
    idx                           number                DEFAULT chungbuk_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table chungbuk_amuse_24(
    idx                           number                DEFAULT chungbuk_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);