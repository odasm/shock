INSERT INTO ph_task 
(tk_name,
 tk_type,
 tk_execute,
 tk_delete,
 tk_start_time,
 tk_stop_time,
 tk_frequency) 
VALUES ("job_test",
        "TASK",
        "insert into aip_analysis_end_time (id,end_time)values (aip_analysis_time_id.nextval,sysdate)", 
        NULL,
        sysdate,
        NULL,
        INTERVAL (1) MINUTE TO MINUTE); 

delete from ph_task where tk_name='job_test';
commit;
select * from ph_task where tk_name='job_test';
call starit:tsaip.p_test()