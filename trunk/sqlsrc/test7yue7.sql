select *
  from aip_message
 where receive_time > trunc(sysdate - 2, 'dd') + 9 / 24
   and receive_time < trunc(sysdate - 1, 'dd') + 10 / 24
   and serv_id = 441

  SELECT M.SERV_ID SERV_ID,
         COUNT(1) REQUEST_TIMES,
         SUM(M.MSG_SIZE) BUSI_MO_SUM,
         AVG(M.MSG_SIZE) BUSI_MO_AVG,
         COUNT(DECODE(M.RESPONSE_TIME, NULL, 1)) FAILURE_TIMES,
         --TIMESTAMP���������һ���ַ����������ʽ�Ǽ������ǵĺ�������һ��
         AVG(TO_NUMBER(SUBSTR(M.REQUEST_TIME - M.RECEIVE_TIME +
                              M.SEND_TIME - M.RESPONSE_TIME,
                              2,
                              9)) * 24 * 3600000 +
             TO_NUMBER(SUBSTR(M.REQUEST_TIME - M.RECEIVE_TIME +
                              M.SEND_TIME - M.RESPONSE_TIME,
                              12,
                              2)) * 3600000 +
             TO_NUMBER(SUBSTR(M.REQUEST_TIME - M.RECEIVE_TIME +
                              M.SEND_TIME - M.RESPONSE_TIME,
                              15,
                              2)) * 60000 +
             TO_NUMBER(SUBSTR(M.REQUEST_TIME - M.RECEIVE_TIME +
                              M.SEND_TIME - M.RESPONSE_TIME,
                              18,
                              2)) * 1000 +
             TO_NUMBER(SUBSTR(M.REQUEST_TIME - M.RECEIVE_TIME +
                              M.SEND_TIME - M.RESPONSE_TIME,
                              21,
                              3))) CSB_ACHIEVE_AVG_TIME,
         MIN(TO_NUMBER(SUBSTR(M.REQUEST_TIME - M.RECEIVE_TIME +
                              M.SEND_TIME - M.RESPONSE_TIME,
                              2,
                              9)) * 24 * 3600000 +
             TO_NUMBER(SUBSTR(M.REQUEST_TIME - M.RECEIVE_TIME +
                              M.SEND_TIME - M.RESPONSE_TIME,
                              12,
                              2)) * 3600000 +
             TO_NUMBER(SUBSTR(M.REQUEST_TIME - M.RECEIVE_TIME +
                              M.SEND_TIME - M.RESPONSE_TIME,
                              15,
                              2)) * 60000 +
             TO_NUMBER(SUBSTR(M.REQUEST_TIME - M.RECEIVE_TIME +
                              M.SEND_TIME - M.RESPONSE_TIME,
                              18,
                              2)) * 1000 +
             TO_NUMBER(SUBSTR(M.REQUEST_TIME - M.RECEIVE_TIME +
                              M.SEND_TIME - M.RESPONSE_TIME,
                              21,
                              3))) CSB_ACHIEVE_MIN_TIME,
         MAX(TO_NUMBER(SUBSTR(M.REQUEST_TIME-M.RECEIVE_TIME+M.SEND_TIME-M.RESPONSE_TIME, 2, 9)) * 24 *
             3600000 +
             TO_NUMBER(SUBSTR(M.REQUEST_TIME-M.RECEIVE_TIME+M.SEND_TIME-M.RESPONSE_TIME, 12, 2)) *
             3600000 +
             TO_NUMBER(SUBSTR(M.REQUEST_TIME-M.RECEIVE_TIME+M.SEND_TIME-M.RESPONSE_TIME, 15, 2)) *
             60000 +
             TO_NUMBER(SUBSTR(M.REQUEST_TIME-M.RECEIVE_TIME+M.SEND_TIME-M.RESPONSE_TIME, 18, 2)) * 1000 +
             TO_NUMBER(SUBSTR(M.REQUEST_TIME-M.RECEIVE_TIME+M.SEND_TIME-M.RESPONSE_TIME, 21, 3))) CSB_ACHIEVE_MAX_TIME,
         AVG(TO_NUMBER(SUBSTR(M.RESPONSE_TIME - M.REQUEST_TIME, 2, 9)) * 24 *
             3600000 +
             TO_NUMBER(SUBSTR(M.RESPONSE_TIME - M.REQUEST_TIME, 12, 2)) *
             3600000 +
             TO_NUMBER(SUBSTR(M.RESPONSE_TIME - M.REQUEST_TIME, 15, 2)) *
             60000 +
             TO_NUMBER(SUBSTR(M.RESPONSE_TIME - M.REQUEST_TIME, 18, 2)) * 1000 +
             TO_NUMBER(SUBSTR(M.RESPONSE_TIME - M.REQUEST_TIME, 21, 3))) BUSI_SERV_AVG_TIME,
         MIN(TO_NUMBER(SUBSTR(M.RESPONSE_TIME - M.REQUEST_TIME, 2, 9)) * 24 *
             3600000 +
             TO_NUMBER(SUBSTR(M.RESPONSE_TIME - M.REQUEST_TIME, 12, 2)) *
             3600000 +
             TO_NUMBER(SUBSTR(M.RESPONSE_TIME - M.REQUEST_TIME, 15, 2)) *
             60000 +
             TO_NUMBER(SUBSTR(M.RESPONSE_TIME - M.REQUEST_TIME, 18, 2)) * 1000 +
             TO_NUMBER(SUBSTR(M.RESPONSE_TIME - M.REQUEST_TIME, 21, 3))) BUSI_SERV_MIN_TIME,
         MAX(TO_NUMBER(SUBSTR(M.RESPONSE_TIME - M.REQUEST_TIME, 2, 9)) * 24 *
             3600000 +
             TO_NUMBER(SUBSTR(M.RESPONSE_TIME - M.REQUEST_TIME, 12, 2)) *
             3600000 +
             TO_NUMBER(SUBSTR(M.RESPONSE_TIME - M.REQUEST_TIME, 15, 2)) *
             60000 +
             TO_NUMBER(SUBSTR(M.RESPONSE_TIME - M.REQUEST_TIME, 18, 2)) * 1000 +
             TO_NUMBER(SUBSTR(M.RESPONSE_TIME - M.REQUEST_TIME, 21, 3))) BUSI_SERV_MAX_TIME,
         
         M.SEND_SYSTEM SENDSYSTEM
        
          FROM AIP_MESSAGE M
         WHERE (M.RECEIVE_TIME BETWEEN trunc(sysdate - 4 / 24, 'HH24') AND trunc(sysdate -3 / 24, 'HH24') 
            and   M.SERVICE_STATE != 100)
            OR M.RESPONSE_TIME BETWEEN trunc(sysdate - 4 / 24, 'HH24') AND trunc(sysdate -3 / 24, 'HH24')
        
         GROUP BY M.SERV_ID, M.SEND_SYSTEM;