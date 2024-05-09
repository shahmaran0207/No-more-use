create sequence daegu_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table daegu_hotel_24(
    idx                           number                DEFAULT daegu_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table daegu_condo_24(
    idx                           number                DEFAULT daegu_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table daegu_camping_24(
    idx                           number                DEFAULT daegu_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table daegu_elsesleep_24(
    idx                           number                DEFAULT daegu_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table daegu_dutyfree_24(
    idx                           number                DEFAULT daegu_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table daegu_leisureshop_24(
    idx                           number                DEFAULT daegu_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table daegu_hugeshop_24(
    idx                           number                DEFAULT daegu_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table daegu_golf_24(
    idx                           number                DEFAULT daegu_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table daegu_ski_24(
    idx                           number                DEFAULT daegu_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table daegu_culture_24(
    idx                           number                DEFAULT daegu_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table daegu_food_24(
    idx                           number                DEFAULT daegu_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table daegu_amuse_24(
    idx                           number                DEFAULT daegu_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);