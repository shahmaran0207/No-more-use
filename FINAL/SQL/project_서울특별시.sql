create sequence seoul_hotel_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table seoul_hotel_24(
    idx                           number                DEFAULT seoul_hotel_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence seoul_amuse_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table seoul_amuse_24(
    idx                           number                DEFAULT seoul_amuse_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence seoul_condo_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table seoul_condo_24(
    idx                           number                DEFAULT seoul_condo_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence seoul_camping_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table seoul_camping_24(
    idx                           number                DEFAULT seoul_camping_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence seoul_elsesleep_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table seoul_elsesleep_24(
    idx                           number                DEFAULT seoul_elsesleep_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence seoul_dutyfree_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table seoul_dutyfree_24(
    idx                           number                DEFAULT seoul_dutyfree_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence seoul_leisureshop_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;


create table seoul_leisureshop_24(
    idx                           number                DEFAULT seoul_leisureshop_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence seoul_hugeshop_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table seoul_hugeshop_24(
    idx                           number                DEFAULT seoul_hugeshop_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence seoul_golf_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table seoul_golf_24(
    idx                           number                DEFAULT seoul_golf_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence seoul_ski_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table seoul_ski_24(
    idx                           number                DEFAULT seoul_ski_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence seoul_culture_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;


create table seoul_culture_24(
    idx                           number                DEFAULT seoul_culture_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence seoul_food_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table seoul_food_24(
    idx                           number                DEFAULT seoul_food_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);