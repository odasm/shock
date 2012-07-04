
--修改相应存储过程
--下面是一个详细过程
 SELECT M.SERV_ID, COUNT(*), SUM(M.MSG_SIZE), AVG(M.MSG_SIZE), COUNT(*)-COUNT(M.RESPONSE_TIME), 
		avg(m.response_time-m.request_time),
		min(m.response_time-m.request_time),
		max(m.response_time-m.request_time),
      		AVG(FRAC_BETWEEN(M.RECEIVE_TIME,M.REQUEST_TIME)+FRAC_BETWEEN(M.RESPONSE_TIME,M.SEND_TIME)),
		MIN(FRAC_BETWEEN(M.RECEIVE_TIME,M.REQUEST_TIME)+FRAC_BETWEEN(M.RESPONSE_TIME,M.SEND_TIME)),
		MAX(FRAC_BETWEEN(M.RECEIVE_TIME,M.REQUEST_TIME)+FRAC_BETWEEN(M.RESPONSE_TIME,M.SEND_TIME)),
		AVG(FRAC_BETWEEN(M.REQUEST_TIME,M.RESPONSE_TIME)),
		MIN(FRAC_BETWEEN(M.REQUEST_TIME,M.RESPONSE_TIME)),
		MAX(FRAC_BETWEEN(M.REQUEST_TIME,M.RESPONSE_TIME)),
                M.SEND_SYSTEM 
        FROM AIP_MESSAGE M
        WHERE (M.RECEIVE_TIME BETWEEN sysdate-25 units day
                                        AND sysdate
                 AND M.SERVICE_STATE!=100)
             OR (M.RESPONSE_TIME BETWEEN sysdate-25 units day
                   AND sysdate)
 GROUP BY M.SERV_ID,M.SEND_SYSTEM;

/**
TO_NUMBER(SUBSTR(AVG(M.RESPONSE_TIME-M.RECEIVE_TIME)::char(30), 0, 15))*24*3600000+
		TO_NUMBER(SUBSTR(AVG(M.RESPONSE_TIME-M.RECEIVE_TIME)::char(30), 16, 2))*3600000+
		TO_NUMBER(SUBSTR(AVG(M.RESPONSE_TIME-M.RECEIVE_TIME)::char(30), 19, 2))*60000+
		TO_NUMBER(SUBSTR(AVG(M.RESPONSE_TIME-M.RECEIVE_TIME)::char(30), 22, 2))*1000+
                TO_NUMBER(SUBSTR(AVG(M.RESPONSE_TIME-M.RECEIVE_TIME)::char(30), 25, 4)) , 
	TO_NUMBER(SUBSTR(MIN(M.RESPONSE_TIME-M.RECEIVE_TIME)::char(30), 0, 15))*24*3600000+
		TO_NUMBER(SUBSTR(MIN(M.RESPONSE_TIME-M.RECEIVE_TIME)::char(30), 16, 2))*3600000+
		TO_NUMBER(SUBSTR(MIN(M.RESPONSE_TIME-M.RECEIVE_TIME)::char(30), 19, 2))*60000+
		TO_NUMBER(SUBSTR(MIN(M.RESPONSE_TIME-M.RECEIVE_TIME)::char(30), 22, 2))*1000+
                TO_NUMBER(SUBSTR(MIN(M.RESPONSE_TIME-M.RECEIVE_TIME)::char(30), 25, 4)) ,
	TO_NUMBER(SUBSTR(MAX(M.RESPONSE_TIME-M.RECEIVE_TIME)::char(30), 0, 15))*24*3600000+
		TO_NUMBER(SUBSTR(MAX(M.RESPONSE_TIME-M.RECEIVE_TIME)::char(30), 16, 2))*3600000+
		TO_NUMBER(SUBSTR(MAX(M.RESPONSE_TIME-M.RECEIVE_TIME)::char(30), 19, 2))*60000+
		TO_NUMBER(SUBSTR(MAX(M.RESPONSE_TIME-M.RECEIVE_TIME)::char(30), 22, 2))*1000+
                TO_NUMBER(SUBSTR(MAX(M.RESPONSE_TIME-M.RECEIVE_TIME)::char(30), 25, 4)) ,
*/

call proc_msg_analysis();
call proc_servinvoketrends_insert(datetime(2011-01-10 08:00:00.00000) year to fraction(5),
	datetime(2011-01-10 09:00:00.00000) year to fraction(5));
call proc_mon_insert(datetime(2011-01-10 08:00:00.00000) year to fraction(5),
	datetime(2011-01-10 09:00:00.00000) year to fraction(5));
select first 10 * from aip_analysis_end_time order by id desc;
--
datetime(2011-01-07 08:23:45.12345) year to fraction(5) 
select * from alert;
delete from alert;
commit;
select first 10 * from serv_mon;
select 

select first 10 * from aip_analysis_end_time order by id desc;
select * from alert;
alter table alert add (input_dat DateTime year to fraction);
commit;

select max(receive_time),min(receive_time) ,max(receive_time)-min(receive_time),
	(max(receive_time)-min(receive_time))::char(30),
	SUBSTR((max(receive_time)-min(receive_time))::char(30),0,15),
	extend(max(receive_time),fraction to fraction),
SUBSTR((max(receive_time)-min(receive_time))::char(30), 16, 2),
SUBSTR((max(receive_time)-min(receive_time))::char(30), 19, 2),
SUBSTR((max(receive_time)-min(receive_time))::char(30), 22, 2),
SUBSTR((max(receive_time)-min(receive_time))::char(30), 25, 4)
	/**,
     TO_NUMBER(SUBSTR((max(receive_time)-min(receive_time))::char(30),0,15))*24*3600000+
		TO_NUMBER(SUBSTR((max(receive_time)-min(receive_time))::char(30), 16, 2))*3600000+
		TO_NUMBER(SUBSTR((max(receive_time)-min(receive_time))::char(30), 19, 2))*60000+
		TO_NUMBER(SUBSTR((max(receive_time)-min(receive_time))::char(30), 22, 2))*1000+
                TO_NUMBER(SUBSTR((max(receive_time)-min(receive_time))::char(30), 25, 4)) */
   from aip_message;

select substr(extend(current, fraction to fraction),2,3),current from sysmaster:informix.sysdual;

select extend(current,fraction to fraction) from sysmaster:informix.sysdual;
select * from alert;


SELECT M.SERV_ID SERV_ID, COUNT(*) REQUEST_TIMES, SUM(M.MSG_SIZE) BUSI_MO_SUM, 
		AVG(M.MSG_SIZE) BUSI_MO_AVG, COUNT(*)-COUNT(M.RESPONSE_TIME) FAILURE_TIMES, 
      		AVG(FRAC_BETWEEN(M.RECEIVE_TIME,M.REQUEST_TIME)+FRAC_BETWEEN(M.RESPONSE_TIME,M.SEND_TIME)) CSB_ACHIEVE_AVG_TIME,
		MIN(FRAC_BETWEEN(M.RECEIVE_TIME,M.REQUEST_TIME)+FRAC_BETWEEN(M.RESPONSE_TIME,M.SEND_TIME)) CSB_ACHIEVE_MIN_TIME,
		MAX(FRAC_BETWEEN(M.RECEIVE_TIME,M.REQUEST_TIME)+FRAC_BETWEEN(M.RESPONSE_TIME,M.SEND_TIME)) CSB_ACHIEVE_MAX_TIME,
		AVG(FRAC_BETWEEN(M.REQUEST_TIME,M.RESPONSE_TIME)) BUSI_SERV_AVG_TIME,
		MIN(FRAC_BETWEEN(M.REQUEST_TIME,M.RESPONSE_TIME)) BUSI_SERV_MIN_TIME,
		MAX(FRAC_BETWEEN(M.REQUEST_TIME,M.RESPONSE_TIME)) BUSI_SERV_MAX_TIME, 
                M.SEND_SYSTEM  SENDSYSTEM
        FROM AIP_MESSAGE M
        WHERE (M.RECEIVE_TIME BETWEEN sysdate-25 units day
                                        AND sysdate
                 AND M.SERVICE_STATE!=100)
             OR (M.RESPONSE_TIME BETWEEN sysdate-25 units day
                   AND sysdate)
GROUP BY M.SERV_ID, M.SEND_SYSTEM

 SELECT MAX(END_TIME) ,EXTEND(SYSDATE,YEAR TO HOUR)::DATETIME YEAR TO FRACTION(5)
 FROM AIP_ANALYSIS_END_TIME;


create table test2(d1 datetime year to fraction(5),d2 datetime year to fraction(5));

select * from test2;
call p_test();
select * from alert;
delete from alert;
commit;
select max(end_time) from aip_analysis_end_time





















select max(receive_time),min(receive_time) ,max(receive_time)-min(receive_time),
	frac_between(min(receive_time),max(receive_time)) from aip_message; --68665366

select first 1 19*3600000+4*60000+25000+365 from aip_message;
SELECT MAX(END_TIME) 
       FROM AIP_ANALYSIS_END_TIME;
select extend(sysdate,year to hour)::datetime year to fraction(5) from sysmaster:informix.sysdual;



select max(receive_time) from aip_message;
call proc_mon_insert(datetime(2010-12-18 10:00:00.00000) year to fraction(5),
			datetime(2010-12-18 11:00:00.00000) year to fraction(5));
select first 10 * from serv_mon order by serv_monitor_id desc;
select first 20 * from aip_analysis_end_time order by id desc;
select * from alert;






