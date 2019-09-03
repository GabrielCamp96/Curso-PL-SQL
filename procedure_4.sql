CREATE TABLE EMPLOYEES_COPIA 
(
  EMPLOYEE_ID NUMBER(6, 0) NOT NULL 
, FIRST_NAME VARCHAR2(20 BYTE) 
, LAST_NAME VARCHAR2(25 BYTE) NOT NULL 
, EMAIL VARCHAR2(25 BYTE) NOT NULL 
, PHONE_NUMBER VARCHAR2(20 BYTE) 
, HIRE_DATE DATE NOT NULL 
, JOB_ID VARCHAR2(10 BYTE) NOT NULL 
, SALARY NUMBER(8, 2) 
, COMMISSION_PCT NUMBER(2, 2) 
, MANAGER_ID NUMBER(6, 0) 
, DEPARTMENT_ID NUMBER(4, 0) 
) 

select * from employees_copia;

create or replace procedure pd_copia
is
    cursor cur_emp
    is
        select * from employees;
    cur_cop cur_emp%rowtype;
begin
    for cur_cop in cur_emp
    loop
        insert into employees_copia
            (employee_id,first_name,last_name,email,phone_number, hire_date,job_id,salary,commission_pct,manager_id,department_id)
        values 
            (cur_cop.employee_id,cur_cop.first_name,cur_cop.last_name,cur_cop.email,cur_cop.phone_number,cur_cop.hire_date,cur_cop.job_id,cur_cop.salary,cur_cop.commission_pct,cur_cop.manager_id,cur_cop.department_id);
    end loop;
    commit;
    exception
        when others then
            dbms_output.put_line('ERRO: ' || sqlerrm);
            rollback;
end;

execute pd_copia;

select * from employees_copia;