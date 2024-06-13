create sequence incheon_hotel_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table incheon_hotel_24(
    idx                           number                DEFAULT incheon_hotel_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence incheon_amuse_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table incheon_amuse_24(
    idx                           number                DEFAULT incheon_amuse_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence incheon_condo_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table incheon_condo_24(
    idx                           number                DEFAULT incheon_condo_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence incheon_camping_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table incheon_camping_24(
    idx                           number                DEFAULT incheon_camping_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence incheon_elsesleep_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table incheon_elsesleep_24(
    idx                           number                DEFAULT incheon_elsesleep_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence incheon_dutyfree_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table incheon_dutyfree_24(
    idx                           number                DEFAULT incheon_dutyfree_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence incheon_leisureshop_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;


create table incheon_leisureshop_24(
    idx                           number                DEFAULT incheon_leisureshop_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence incheon_hugeshop_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table incheon_hugeshop_24(
    idx                           number                DEFAULT incheon_hugeshop_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence incheon_golf_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table incheon_golf_24(
    idx                           number                DEFAULT incheon_golf_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence incheon_ski_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table incheon_ski_24(
    idx                           number                DEFAULT incheon_ski_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence incheon_culture_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;


create table incheon_culture_24(
    idx                           number                DEFAULT incheon_culture_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence incheon_food_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table incheon_food_24(
    idx                           number                DEFAULT incheon_food_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);