create sequence chungbuk_hotel_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table chungbuk_hotel_24(
    idx                           number                DEFAULT chungbuk_hotel_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence chungbuk_amuse_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table chungbuk_amuse_24(
    idx                           number                DEFAULT chungbuk_amuse_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence chungbuk_condo_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table chungbuk_condo_24(
    idx                           number                DEFAULT chungbuk_condo_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence chungbuk_camping_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table chungbuk_camping_24(
    idx                           number                DEFAULT chungbuk_camping_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence chungbuk_elsesleep_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table chungbuk_elsesleep_24(
    idx                           number                DEFAULT chungbuk_elsesleep_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence chungbuk_dutyfree_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table chungbuk_dutyfree_24(
    idx                           number                DEFAULT chungbuk_dutyfree_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence chungbuk_leisureshop_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;


create table chungbuk_leisureshop_24(
    idx                           number                DEFAULT chungbuk_leisureshop_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence chungbuk_hugeshop_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table chungbuk_hugeshop_24(
    idx                           number                DEFAULT chungbuk_hugeshop_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence chungbuk_golf_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table chungbuk_golf_24(
    idx                           number                DEFAULT chungbuk_golf_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence chungbuk_ski_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table chungbuk_ski_24(
    idx                           number                DEFAULT chungbuk_ski_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence chungbuk_culture_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;


create table chungbuk_culture_24(
    idx                           number                DEFAULT chungbuk_culture_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence chungbuk_food_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table chungbuk_food_24(
    idx                           number                DEFAULT chungbuk_food_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);