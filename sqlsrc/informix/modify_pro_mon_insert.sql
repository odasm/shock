DROP PROCEDURE proc_mon_insert(datetime,datetime);

CREATE PROCEDURE "tsaip".proc_mon_insert(BEGIN_TIME DATETIME YEAR TO FRACTION(3),
         END_TIME DATETIME YEAR TO FRACTION(3))
    /************************************************************************
    *NAME        : PROC_MON_INSERT(BEGIN_TIME
    *FUNCTION    : �����������������Ӧ�������Ѽ�¼
    ��AIP_MESSAGE�г����ݣ����ܼ������� SERV_MON��
    SERV_MON_HIS��
    *INPUT       begin_time ����ʱ��ʼֵ end_time ����ʱ��βֵ:
    *OUTPUT      :
    *AUTHOR      : ZHEN WANG
    *CREATEDATE  : 2010-3-26
    *UPDATEDATE  ��2010-12-28/informix�д洢�����޷�ִ�У�������Ӧ�޸�
    *************************************************************************/
    
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
    
    --�������������ع��ύ����
    ON EXCEPTION SET
         sql_err, isam_err, err_info
        ROLLBACK;
        CALL p_alert('PROC_MON_INSERT', sql_err, isam_err, err_info);
        RETURN;
    END EXCEPTION;
    
    --��ձ�������ݿ�ʼ���·�����ȡ�µ����ݺ��治��ɾ��
    --             ��ѯ���ݵ��α���ȥ
    FOREACH
        SELECT M.SERV_ID SERV_ID, 
		COUNT(*) REQUEST_TIMES, 
		SUM(M.MSG_SIZE) BUSI_MO_SUM, 
		AVG(M.MSG_SIZE) BUSI_MO_AVG,,
		COUNT(*)-COUNT(M.RESPONSE_TIME) FAILURE_TIMES, 
      		AVG(FRAC_BETWEEN(M.RECEIVE_TIME,M.REQUEST_TIME)+FRAC_BETWEEN(M.RESPONSE_TIME,M.SEND_TIME)) CSB_ACHIEVE_AVG_TIME,
		MIN(FRAC_BETWEEN(M.RECEIVE_TIME,M.REQUEST_TIME)+FRAC_BETWEEN(M.RESPONSE_TIME,M.SEND_TIME)) CSB_ACHIEVE_MIN_TIME,
		MAX(FRAC_BETWEEN(M.RECEIVE_TIME,M.REQUEST_TIME)+FRAC_BETWEEN(M.RESPONSE_TIME,M.SEND_TIME)) CSB_ACHIEVE_MAX_TIME,
		AVG(FRAC_BETWEEN(M.REQUEST_TIME,M.RESPONSE_TIME)) BUSI_SERV_AVG_TIME,
		MIN(FRAC_BETWEEN(M.REQUEST_TIME,M.RESPONSE_TIME)) BUSI_SERV_MIN_TIME,
		MAX(FRAC_BETWEEN(M.REQUEST_TIME,M.RESPONSE_TIME)) BUSI_SERV_MAX_TIME,
                M.SEND_SYSTEM  SENDSYSTEM
        FROM AIP_MESSAGE M
        WHERE(M.RECEIVE_TIME BETWEEN BEGIN_TIME
                 AND END_TIME
                 AND M.SERVICE_STATE!=100)
             OR M.RESPONSE_TIME BETWEEN BEGIN_TIME
             AND END_TIME
        GROUP BY M.SERV_ID, M.SEND_SYSTEM
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
                --����ʱ��βʱ
                 SYSDATE,
                --����ʱ��
                --CUST_FAULT_ROW.CTRL_ANALYSE_TIME,,���Ʒ����ﳤû���õ�Ĭ��Ϊ1Сʱ
                 60*60*1000,
                 SENDSYSTEM);
    END FOREACH
    INSERT INTO aip_analysis_end_time
    VALUES(
             aip_analysis_time_id.nextval,
             END_TIME,
             'serv_mon');
     COMMIT;
END PROCEDURE;