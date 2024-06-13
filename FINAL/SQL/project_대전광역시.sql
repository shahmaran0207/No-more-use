create sequence daejeon_hotel_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table daejeon_hotel_24(
    idx                           number                DEFAULT daejeon_hotel_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence daejeon_amuse_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table daejeon_amuse_24(
    idx                           number                DEFAULT daejeon_amuse_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence daejeon_condo_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table daejeon_condo_24(
    idx                           number                DEFAULT daejeon_condo_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence daejeon_camping_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table daejeon_camping_24(
    idx                           number                DEFAULT daejeon_camping_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence daejeon_elsesleep_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table daejeon_elsesleep_24(
    idx                           number                DEFAULT daejeon_elsesleep_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence daejeon_dutyfree_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table daejeon_dutyfree_24(
    idx                           number                DEFAULT daejeon_dutyfree_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence daejeon_leisureshop_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;


create table daejeon_leisureshop_24(
    idx                           number                DEFAULT daejeon_leisureshop_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence daejeon_hugeshop_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table daejeon_hugeshop_24(
    idx                           number                DEFAULT daejeon_hugeshop_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence daejeon_golf_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table daejeon_golf_24(
    idx                           number                DEFAULT daejeon_golf_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence daejeon_ski_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table daejeon_ski_24(
    idx                           number                DEFAULT daejeon_ski_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence daejeon_culture_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;


create table daejeon_culture_24(
    idx                           number                DEFAULT daejeon_culture_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create sequence daejeon_food_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table daejeon_food_24(
    idx                           number                DEFAULT daejeon_food_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);