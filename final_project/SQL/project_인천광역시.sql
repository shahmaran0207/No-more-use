create sequence incheon_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table incheon_hotel_24(
    idx                           number                DEFAULT incheon_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table incheon_amuse_24(
    idx                           number                DEFAULT incheon_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table incheon_condo_24(
    idx                           number                DEFAULT incheon_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table incheon_camping_24(
    idx                           number                DEFAULT incheon_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table incheon_elsesleep_24(
    idx                           number                DEFAULT incheon_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table incheon_dutyfree_24(
    idx                           number                DEFAULT incheon_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table incheon_leisureshop_24(
    idx                           number                DEFAULT incheon_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table incheon_hugeshop_24(
    idx                           number                DEFAULT incheon_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table incheon_golf_24(
    idx                           number                DEFAULT incheon_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table incheon_ski_24(
    idx                           number                DEFAULT incheon_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table incheon_culture_24(
    idx                           number                DEFAULT incheon_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table incheon_food_24(
    idx                           number                DEFAULT incheon_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);