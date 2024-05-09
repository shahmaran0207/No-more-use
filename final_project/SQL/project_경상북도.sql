create sequence gungbuk_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table gungbuk_hotel_24(
    idx                           number                DEFAULT gungbuk_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table gungbuk_condo_24(
    idx                           number                DEFAULT gungbuk_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table gungbuk_camping_24(
    idx                           number                DEFAULT gungbuk_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table gungbuk_elsesleep_24(
    idx                           number                DEFAULT gungbuk_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table gungbuk_dutyfree_24(
    idx                           number                DEFAULT gungbuk_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table gungbuk_leisureshop_24(
    idx                           number                DEFAULT gungbuk_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table gungbuk_hugeshop_24(
    idx                           number                DEFAULT gungbuk_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table gungbuk_golf_24(
    idx                           number                DEFAULT gungbuk_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table gungbuk_ski_24(
    idx                           number                DEFAULT gungbuk_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table gungbuk_culture_24(
    idx                           number                DEFAULT gungbuk_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table gungbuk_food_24(
    idx                           number                DEFAULT gungbuk_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table gungbuk_amuse_24(
    idx                           number                DEFAULT gungbuk_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);