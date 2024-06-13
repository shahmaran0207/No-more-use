create sequence daegu_hotel_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table daegu_hotel_24(
    idx                           number                DEFAULT daegu_hotel_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence daegu_amuse_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table daegu_amuse_24(
    idx                           number                DEFAULT daegu_amuse_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence daegu_condo_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table daegu_condo_24(
    idx                           number                DEFAULT daegu_condo_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence daegu_camping_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table daegu_camping_24(
    idx                           number                DEFAULT daegu_camping_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence daegu_elsesleep_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table daegu_elsesleep_24(
    idx                           number                DEFAULT daegu_elsesleep_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence daegu_dutyfree_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table daegu_dutyfree_24(
    idx                           number                DEFAULT daegu_dutyfree_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence daegu_leisureshop_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;


create table daegu_leisureshop_24(
    idx                           number                DEFAULT daegu_leisureshop_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence daegu_hugeshop_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table daegu_hugeshop_24(
    idx                           number                DEFAULT daegu_hugeshop_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence daegu_golf_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table daegu_golf_24(
    idx                           number                DEFAULT daegu_golf_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence daegu_ski_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table daegu_ski_24(
    idx                           number                DEFAULT daegu_ski_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence daegu_culture_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;


create table daegu_culture_24(
    idx                           number                DEFAULT daegu_culture_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence daegu_food_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table daegu_food_24(
    idx                           number                DEFAULT daegu_food_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);