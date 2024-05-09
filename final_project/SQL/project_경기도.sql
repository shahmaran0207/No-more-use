create sequence gunggi_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table gunggi_hotel_24(
    idx                           number                DEFAULT gunggi_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table gunggi_condo_24(
    idx                           number                DEFAULT gunggi_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table gunggi_camping_24(
    idx                           number                DEFAULT gunggi_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table gunggi_elsesleep_24(
    idx                           number                DEFAULT gunggi_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table gunggi_dutyfree_24(
    idx                           number                DEFAULT gunggi_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table gunggi_leisureshop_24(
    idx                           number                DEFAULT gunggi_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table gunggi_hugeshop_24(
    idx                           number                DEFAULT gunggi_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table gunggi_golf_24(
    idx                           number                DEFAULT gunggi_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table gunggi_ski_24(
    idx                           number                DEFAULT gunggi_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table gunggi_culture_24(
    idx                           number                DEFAULT gunggi_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table gunggi_food_24(
    idx                           number                DEFAULT gunggi_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table gunggi_amuse_24(
    idx                           number                DEFAULT gunggi_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);