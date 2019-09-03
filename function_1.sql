create or replace function fn_mediapond(
    nota1 in number,
    peso1 in number,
    nota2 in number,
    peso2 in number)
return number is media_pond number;
begin
    media_pond := (nota1*peso1 + nota2*peso2) / (peso1 + peso2);
    return media_pond;
end;

select round(fn_mediapond(5,5,10,1),2) as "Media Ponderada" from dual;

set serveroutput on
begin
    dbms_output.put_line(round(fn_mediapond(5,5,10,6),2));
end;    