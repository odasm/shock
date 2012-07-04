DROP PROCEDURE 'tsaip'.proc_mon_insert(datetime,datetime);
CREATE PROCEDURE "tsaip".proc_mon_insert(BEGIN_TIME DATETIME YEAR TO FRACTION(5),
         END_TIME DATETIME YEAR TO FRACTION(5))
    
    DEFINE SERV_ID int8;
    DEFINE REQUEST_TIMES int8;
    DEFINE BUSI_MO_SUM int8;
    DEFINE BUSI_MO_AVG int8;
    DEFINE FAILURE_TIMES int8;
    DEFINE CSB_ACHIEVE_AVG_TIME int8;
    DEFINE CSB_ACHIEVE_MIN_TIME int8;
    DEFINE CSB_ACHIEVE_MAX_TIME int8;
    DEFINE BUSI_SERV_AVG_TIME int8;
    DEFINE BUSI_SERV_MIN_TIME int8;
    DEFINE BUSI_SERV_MAX_TIME int8;
    DEFINE SENDSYSTEM VARCHAR(30);
    DEFINE RESPONSE_TIMES int8;
    DEFINE SUCCESS_RATE DECIMAL(3, 2);
    DEFINE FAILURE_RATE DECIMAL(3, 2);
    DEFINE sql_err INT;
    DEFINE isam_err INT;
    DEFINE err_info VARCHAR(100);
    
    ON EXCEPTION SET
         sql_err, isam_err, err_info
        ROLLBACK;
        CALL p_alert('PROC_MON_INSERT', sql_err, isam_err, err_info);
        RETURN;
    END EXCEPTION;
     
    FOREACH MSG_CURSOR FOR
        SELECT M.SERV_ID, 
		COUNT(*), 
		SUM(M.MSG_SIZE), 
		AVG(M.MSG_SIZE) ,
		COUNT(*)-COUNT(M.RESPONSE_TIME)  , 
      		AVG(FRAC_BETWEEN(M.RECEIVE_TIME,M.REQUEST_TIME)+FRAC_BETWEEN(M.RESPONSE_TIME,M.SEND_TIME))  ,
		MIN(FRAC_BETWEEN(M.RECEIVE_TIME,M.REQUEST_TIME)+FRAC_BETWEEN(M.RESPONSE_TIME,M.SEND_TIME))  ,
		MAX(FRAC_BETWEEN(M.RECEIVE_TIME,M.REQUEST_TIME)+FRAC_BETWEEN(M.RESPONSE_TIME,M.SEND_TIME))  ,
		AVG(FRAC_BETWEEN(M.REQUEST_TIME,M.RESPONSE_TIME)),
		MIN(FRAC_BETWEEN(M.REQUEST_TIME,M.RESPONSE_TIME))  ,
		MAX(FRAC_BETWEEN(M.REQUEST_TIME,M.RESPONSE_TIME))  ,
                M.SEND_SYSTEM 
		INTO SERV_ID ,REQUEST_TIMES,  BUSI_MO_SUM,BUSI_MO_AVG,FAILURE_TIMES,
         	CSB_ACHIEVE_AVG_TIME,CSB_ACHIEVE_MIN_TIME,CSB_ACHIEVE_MAX_TIME,
		BUSI_SERV_AVG_TIME,BUSI_SERV_MIN_TIME,BUSI_SERV_MAX_TIME,
		SENDSYSTEM
        FROM AIP_MESSAGE M
        WHERE(M.RECEIVE_TIME BETWEEN BEGIN_TIME
                 AND END_TIME
                 AND M.SERVICE_STATE!=100)
             OR M.RESPONSE_TIME BETWEEN BEGIN_TIME
             AND END_TIME
        GROUP BY M.SERV_ID, M.SEND_SYSTEM
	LET RESPONSE_TIMES=REQUEST_TIMES-FAILURE_TIMES;
        LET SUCCESS_RATE=RESPONSE_TIMES/REQUEST_TIMES;
        LET FAILURE_RATE=1-SUCCESS_RATE;
        INSERT INTO SERV_MON(
                 SERV_MONITOR_ID,
                 SERV_ID,
                 BUSI_MO_SUM,
                 BUSI_MO_AVG,
                 REQUEST_TIMES,
                 RESPONSE_TIMES,
                 SUCCESS_RATE,
                 FAILURE_RATE,
                 CSB_ACHIEVE_AVG_TIME,
                 CSB_ACHIEVE_MIN_TIME,
                 CSB_ACHIEVE_MAX_TIME,
                 BUSI_SERV_AVG_TIME,
                 BUSI_SERV_MIN_TIME,
                 BUSI_SERV_MAX_TIME,
                 ANALYSIS_END_TIME,
                 UPDATE_TIME,
                 CTRL_ANALYSE_TIME,
                 SERV_MAN_SEND_CODE)
        VALUES(
                 SERV_MONITOR_ID_SEQ.NEXTVAL,
                 SERV_ID,
                 BUSI_MO_SUM,
                 BUSI_MO_AVG,
                 REQUEST_TIMES,
                 RESPONSE_TIMES,
                 SUCCESS_RATE,
                 FAILURE_RATE,
                 CSB_ACHIEVE_AVG_TIME,
                 CSB_ACHIEVE_MIN_TIME,
                 CSB_ACHIEVE_MAX_TIME,
                 BUSI_SERV_AVG_TIME,
                 BUSI_SERV_MIN_TIME,
                 BUSI_SERV_MAX_TIME,
                 END_TIME,
                 SYSDATE,
                 60*60*1000,
                 SENDSYSTEM);
    END FOREACH;
    
    INSERT INTO aip_analysis_end_time
    VALUES(
             aip_analysis_time_id.nextval,
             END_TIME,
             'serv_mon');
     COMMIT;
END PROCEDURE;