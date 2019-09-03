create tablespace erp_mult_tst
    datafile
        'C:\app\gabri\product\18.0.0\oradata\XE\erp_mult_tst.dbf'
    size 100m autoextend on next 50m maxsize 500m
    online
    permanent
    extent management local autoallocate
    segment space management auto;
    
alter session set "_ORACLE_SCRIPT"=TRUE

create user user_tst
    identified by 123456
    default tablespace erp_mult_tst
    temporary tablespace temp;
    
grant all privileges to user_tst;

alter user user_tst quota unlimited on erp_mult_tst;

create tablespace erp_mult_prd
    datafile 'C:\app\gabri\product\18.0.0\oradata\XE\erp_mult_prd.dbf'
    size 100m autoextend on next 50m maxsize 500m
    online
    permanent
    extent management local autoallocate
    segment space management auto;
    
create user user_prd
    identified by 123456
    default tablespace erp_mult_prd
    temporary tablespace temp;
    
grant all privileges to user_prd;

alter user user_prd quota unlimited on erp_mult_prd;