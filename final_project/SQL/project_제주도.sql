create sequence jeju_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table jeju_hotel_24(
    idx                           number                DEFAULT jeju_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table jeju_condo_24(
    idx                           number                DEFAULT jeju_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table jeju_camping_24(
    idx                           number                DEFAULT jeju_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table jeju_elsesleep_24(
    idx                           number                DEFAULT jeju_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table jeju_dutyfree_24(
    idx                           number                DEFAULT jeju_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table jeju_leisureshop_24(
    idx                           number                DEFAULT jeju_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table jeju_hugeshop_24(
    idx                           number                DEFAULT jeju_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table jeju_golf_24(
    idx                           number                DEFAULT jeju_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table jeju_ski_24(
    idx                           number                DEFAULT jeju_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table jeju_culture_24(
    idx                           number                DEFAULT jeju_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table jeju_food_24(
    idx                           number                DEFAULT jeju_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table jeju_amuse_24(
    idx                           number                DEFAULT jeju_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);