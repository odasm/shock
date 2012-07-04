DROP PROCEDURE 'tsaip'.proc_msg_analysis();

CREATE PROCEDURE "tsaip".proc_msg_analysis()
    
    DEFINE sql_err INT;
    DEFINE isam_err INT;
    DEFINE err_info VARCHAR(100);
    DEFINE BEGIN_TIME DATETIME YEAR TO FRACTION(5);
    DEFINE END_TIME DATETIME YEAR TO FRACTION(5);
    
    --记录异常到alert表中
    ON EXCEPTION SET
         sql_err, isam_err, err_info
        ROLLBACK;
        CALL p_alert('PROC_MSG_ANALYSIS', sql_err, isam_err, err_info);
        RETURN;
    END EXCEPTION;
    SELECT (EXTEND(SYSDATE,YEAR TO HOUR)::DATETIME YEAR TO FRACTION(5))
	INTO END_TIME FROM SYSMASTER:INFORMIX.SYSDUAL;
    SELECT MAX(A.END_TIME) INTO BEGIN_TIME FROM AIP_ANALYSIS_END_TIME A;
    WHILE BEGIN_TIME < END_TIME
        CALL PROC_MON_INSERT(BEGIN_TIME, BEGIN_TIME +1 UNITS HOUR);
        CALL PROC_SERVINVOKETRENDS_INSERT(BEGIN_TIME, BEGIN_TIME + 1 UNITS HOUR);
        LET BEGIN_TIME = BEGIN_TIME + 1 UNITS HOUR;
    END WHILE
      
END PROCEDURE;