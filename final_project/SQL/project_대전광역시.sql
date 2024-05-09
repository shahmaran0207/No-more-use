create sequence daejeon_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 999999999
    nocache;

create table daejeon_hotel_24(
    idx                           number                DEFAULT daejeon_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table daejeon_condo_24(
    idx                           number                DEFAULT daejeon_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table daejeon_camping_24(
    idx                           number                DEFAULT daejeon_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table daejeon_elsesleep_24(
    idx                           number                DEFAULT daejeon_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table daejeon_dutyfree_24(
    idx                           number                DEFAULT daejeon_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table daejeon_leisureshop_24(
    idx                           number                DEFAULT daejeon_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table daejeon_hugeshop_24(
    idx                           number                DEFAULT daejeon_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table daejeon_golf_24(
    idx                           number                DEFAULT daejeon_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table daejeon_ski_24(
    idx                           number                DEFAULT daejeon_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table daejeon_culture_24(
    idx                           number                DEFAULT daejeon_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table daejeon_food_24(
    idx                           number                DEFAULT daejeon_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);

create table daejeon_amuse_24(
    idx                           number                DEFAULT daejeon_seq.NEXTVAL,
    predict_month         varchar2(200),
    predict_value           NUMBER
);