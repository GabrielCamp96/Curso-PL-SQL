create or replace view v_func_depto
as
select a.EMPLOYEE_ID,
       a.FIRST_NAME,
       a.SALARY,
       a.DEPARTMENT_ID,
       b.DEPARTMENT_NAME
from EMPLOYEES a
inner join DEPARTMENTS b
on a.DEPARTMENT_ID = b.DEPARTMENT_ID;

select * from v_func_depto
where DEPARTMENT_ID = 20;

create or replace view v_func_depto
as
select a.EMPLOYEE_ID,
       a.FIRST_NAME,
       a.LAST_NAME,
       a.SALARY,
       a.DEPARTMENT_ID,
       b.DEPARTMENT_NAME
from EMPLOYEES a
inner join DEPARTMENTS b
on a.DEPARTMENT_ID = b.DEPARTMENT_ID;

select * from v_func_depto
where DEPARTMENT_ID = 20;