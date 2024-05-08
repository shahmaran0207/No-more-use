create user C##PROJECT identified by 1;
grant dba, resources, connect to C##PROJECT;

create table area(
    predict_month         varchar2(200),
    predict_value           NUMBER
);

select * from area;
