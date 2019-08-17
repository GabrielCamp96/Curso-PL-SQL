-- criando tablespace
create tablespace curso
    datafile
        'C:\app\gabri\product\18.0.0\dbhomeXE\oradata\XE\curso.dbf'
            size 100m autoextend on next 50m maxsize 500m
        online
        permanent
        extent management local autoallocate
        segment space management auto;

    alter session set "_ORACLE_SCRIPT"=TRUE

    -- criando usuário
    create user aluno
        identified by aluno
        default tablespace curso
        temporary tablespace TEMP;
        
    -- permissão para aluno
    grant create session, connect, resource to aluno;
    
    alter user aluno quota unlimited on curso;
    
    
    -- deletar aluno
    drop user aluno;
    
    -- deletar tablespace 
    drop tablespace curso
        including contents and datafiles
            cascade constraints