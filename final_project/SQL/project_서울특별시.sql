create sequence seoul_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table seoul_hotel_24(
    idx                           number                DEFAULT seoul_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table seoul_condo_24(
    idx                           number                DEFAULT seoul_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table seoul_camping_24(
    idx                           number                DEFAULT seoul_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table seoul_elsesleep_24(
    idx                           number                DEFAULT seoul_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table seoul_dutyfree_24(
    idx                           number                DEFAULT seoul_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table seoul_leisureshop_24(
    idx                           number                DEFAULT seoul_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table seoul_hugeshop_24(
    idx                           number                DEFAULT seoul_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table seoul_golf_24(
    idx                           number                DEFAULT seoul_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table seoul_ski_24(
    idx                           number                DEFAULT seoul_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table seoul_culture_24(
    idx                           number                DEFAULT seoul_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table seoul_food_24(
    idx                           number                DEFAULT seoul_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table seoul_amuse_24(
    idx                           number                DEFAULT seoul_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);