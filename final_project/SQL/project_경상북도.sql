create sequence gungbuk_hotel_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table gungbuk_hotel_24(
    idx                           number                DEFAULT gungbuk_hotel_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence gungbuk_amuse_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table gungbuk_amuse_24(
    idx                           number                DEFAULT gungbuk_amuse_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence gungbuk_condo_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table gungbuk_condo_24(
    idx                           number                DEFAULT gungbuk_condo_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence gungbuk_camping_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table gungbuk_camping_24(
    idx                           number                DEFAULT gungbuk_camping_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence gungbuk_elsesleep_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table gungbuk_elsesleep_24(
    idx                           number                DEFAULT gungbuk_elsesleep_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence gungbuk_dutyfree_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table gungbuk_dutyfree_24(
    idx                           number                DEFAULT gungbuk_dutyfree_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence gungbuk_leisureshop_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;


create table gungbuk_leisureshop_24(
    idx                           number                DEFAULT gungbuk_leisureshop_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence gungbuk_hugeshop_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table gungbuk_hugeshop_24(
    idx                           number                DEFAULT gungbuk_hugeshop_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence gungbuk_golf_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table gungbuk_golf_24(
    idx                           number                DEFAULT gungbuk_golf_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence gungbuk_ski_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table gungbuk_ski_24(
    idx                           number                DEFAULT gungbuk_ski_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence gungbuk_culture_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;


create table gungbuk_culture_24(
    idx                           number                DEFAULT gungbuk_culture_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence gungbuk_food_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table gungbuk_food_24(
    idx                           number                DEFAULT gungbuk_food_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);