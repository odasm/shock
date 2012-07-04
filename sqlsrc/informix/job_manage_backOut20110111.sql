select * from ph_task;
delete from ph_task where tk_name='job_msg_analysis';
commit;
INSERT INTO ph_task 
(tk_name, 
 tk_type, 
 tk_execute, 
 tk_dbs, 
 tk_delete, 
 tk_start_time, 
 tk_stop_time, 
 tk_frequency) 
VALUES ("job_msg_analysis", 
        "TASK", 
        "call starit:'tsaip'.proc_msg_analysis()", 
        "starit", 
        Null, 
        NULL, 
        NULL, 
        INTERVAL (1) hour TO hour); 
call starit:'tsaip'.proc_msg_analysis()
select * from ph_task;