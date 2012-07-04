--ip module
SELECT I.SERV_MAN_IP_ID AS ID, C.SERV_MAN_CODE, I.SERV_MAN_IP
  FROM SERV_MAN_IP_CONF I, SERV_AFFORD_MAN_CONFIG C
 WHERE I.SERV_MAN_ID = C.SERV_MAN_ID
   AND I.DEL_FLAG != 2;
   
   -- AND I.SERV_MAN_ID_ID = ?
   --AND C.SERV_MAN_ID = ?
--serv define
SELECT B.SERV_DEFINE_ID,
       B.SERV_TYPE,
       A.SERV_STAT,
       C.BUSI_SERV_ADDR,
       A.SERV_CODE,
       A.SERV_ID,
       A.SERV_NAME,
       A.SER_SERV_MAN_ID,
       B.VERSION_NO,
       B.VERSION_STATE,
       C.WSDL_ID,
       A.SERV_TYPE AS SERVICE_TYPE,
       B.SUBSCRIBE_FLAG,
       B.PROTOCOL_CONVERT_FLAG
  FROM SERV_AFFORD_MAN_REG A, SERV_DEFINE B 
  LEFT JOIN WSDL_CONF C  ON  B.WSDL_ID = C.WSDL_ID
 WHERE A.SERV_ID = B.SERV_ID
   AND B.SERV_DEFINE_ID = 1791 
--AND B.SERV_DEFINE_ID= 242
--AND C.WSDL_ID = ?
--AND A.SERV_ID = ?
select * from serv_afford_man_reg
select * from serv_define
--visit limit
select * from serv_visit_limit;
  SELECT L.SERV_LIMIT_ID,
         C.SERV_MAN_CODE,
         R.SERV_CODE,
         L.IS_CONFIRM,
         L.VERSION_NO
          FROM SERV_AFFORD_MAN_REG    R,
         SERV_AFFORD_MAN_CONFIG C,
         SERV_VISIT_LIMIT       L
         WHERE R.SERV_ID = L.SERV_ID
           AND C.SERV_MAN_ID = L.SERV_MAN_ID
        --AND L.SERV_LIMIT_ID = ?
        --AND R.SERV_ID = ?
        --AND C.SERV_MAN_ID = ?
select * from serv_visit_limit where serv_limit_id=1544

select * from serv_visit_limit where serv_man_id=221 and serv_id=881
--flux validate
SELECT B.SERV_CTRL_ID,
       B.SERV_ID,
       A.SERV_CODE,
       B.CTRL_ANALYSE_TIME,
       B.COUNT_UP,
       B.ONE_BUSI_BAG_UP,
       B.BUSI_RATE_UP,
       B.CTRL_TYPE
  FROM SERV_AFFORD_MAN_REG A, SERV_FLUX_CTL B
 WHERE A.SERV_ID = B.SERV_ID
 --AND B.SERV_CTRL_ID = ?
 --AND A.SERV_ID= ?
 SELECT * FROM Serv_Afford_Man_config

--servman
SELECT M.SERV_MAN_ID,
       M.SERV_MAN_CODE,
       M.SERV_MAN_NAME,
       M.AUTH_CODE,
       Q.QUEUE_NAME,
       Q.CONNECTION_FACTORY,
       Q.INITIAL_CONTEXT_FACTORY,
       Q.URL,
       Q.USER_NAME,
       Q.PASSWORD
  FROM SERV_AFFORD_MAN_CONFIG M
  LEFT JOIN QUEUE_CONF Q ON M.RECEIVE_QUEUE_ID = Q.QUEUE_ID
  --WHERE M.SERV_MAN_ID= ?
  --WHERE Q.QUEUE_ID = ?
select * from serv_afford_man_config for update;
select * from queue_conf for update;
--alarm
SELECT A.ALARM_THRES_CONF_ID,
       NVL(R.SERV_CODE, 'CSB') SERV_CODE,
       A.ALARM_TYPE,
       A.ALARM_CONTENT,
       A.ALARM_THRESHOLD,
       A.ALARM_TRIGGER_THRESHOLD
  FROM ALARM_THRESHOLD_CONF A
  LEFT JOIN SERV_AFFORD_MAN_REG R ON A.SERV_ID = R.SERV_ID
  --WHERE A.ALARM_THRES_CONF_ID = ?
  --WHERE R.SERV_ID=?
  select * from serv_afford_man_reg
select * from alarm_threshold_conf for update

--dictionary
SELECT D.BUSINTYPEID, D.BUSINID, D.BUSINNAME, D.PRIVILEGE, D.STATUS
  FROM BNDICT_T_DICTIONARY D
  FOR UPDATE
  --WHERE D.BUSINTYPEID=? AND D.BUSINID=?
select * from serv_afford_man_config for update;

--221/222
select * from serv_visit_limit where serv_man_id = 221 and serv_id=222;
insert into serv_visit_limit values(serv_limit_id_seq.nextval,221,222,1,0.2);
commit;
--servId
SELECT serv_id  FROM SERV_AFFORD_MAN_REG order by serv_id desc;
insert into serv_afford_man_reg (serv_id) values (serv_reg_id_seq.nextval);
commit;
delete from serv_afford_man_reg where serv_id= 1041;

SELECT SERV_ID FROM SERV_AFFORD_MAN_REG WHERE SERV_ID=1041

--缓存与应用集成。
SELECT SERV_MAN_IP_ID FROM SERV_MAN_IP_CONF WHERE SERV_MAN_ID = 1;

