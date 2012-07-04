DROP PROCEDURE 'tsaip'.p_test();

create procedure "tsaip".p_test()

    DEFINE sql_err INT;
    DEFINE isam_err INT;
    DEFINE err_info VARCHAR(100);
    DEFINE BEGIN_TIME DATETIME YEAR TO FRACTION(5);
    DEFINE END_TIME DATETIME YEAR TO FRACTION(5);
    
    ON EXCEPTION SET
         sql_err, isam_err, err_info
        ROLLBACK;
        CALL p_alert('PROC_MSG_ANALYSIS', sql_err, isam_err, err_info);
        RETURN;
    END EXCEPTION;

  select (extend(sysdate,year to hour)::datetime year to fraction(5))
	into end_time from sysmaster:informix.sysdual;
  select max(a.end_time) into begin_time from aip_analysis_end_time a;
    insert into test2(d1,d2) values(begin_time,end_time);

end procedure;