create or replace procedure proc_ServInvokeTrends_Insert(BEGIN_TIME in date,
                                                         END_TIME   in date) is
  /************************************************************************
  *NAME        : proc_ServInvokeTrends_Insert
  *FUNCTION    : 每小时汇总aip_message数据到serv_invoke_trends_seq
  *INPUT       : 
  *OUTPUT      : 
  *AUTHOR      :  
  *CREATEDATE  :  
  *UPDATEDATE  ： 
  *************************************************************************/
  /*  data_sql  varchar2(1024);
    beginTime DATE := BEGIN_TIME;
    endTime   DATE := END_TIME;
  */
begin
  INSERT INTO serv_invoke_trends
    (serv_invoke_id, serv_invoke_time, serv_invoke_state, serv_invoke_num)
    SELECT serv_invoke_trends_seq.nextval, END_TIME, m.a, m.b
      FROM (SELECT service_state AS a, COUNT(*) AS b
              FROM aip_message
             WHERE receive_time between BEGIN_TIME and END_TIME
             GROUP BY service_state) m;
  /*  execute immediate data_sql;*/
  INSERT INTO aip_analysis_end_time
  values
    (aip_analysis_time_id.nextval, END_TIME, 'serv_invoke_trends');
  COMMIT;
end proc_ServInvokeTrends_Insert;
/
