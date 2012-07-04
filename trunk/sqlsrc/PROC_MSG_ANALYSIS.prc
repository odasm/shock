create or replace procedure PROC_MSG_ANALYSIS is
  /************************************************************************
  *NAME        : P_AIP_PRODUCT_MONITOR_BY_CTRL_MSG
  *FUNCTION    : 根据上次分析尾时和现在时间,确定分析时段,调用proc_mon_insert与
                 PROC_SERVINVOKETRENDS_INSERT存储过程
                 汇总计算插入表 SERV_MON和
                 SERV_MON_HIS中
  *INPUT       : 
  *OUTPUT      : 
  *AUTHOR      : ZHEN WANG
  *CREATEDATE  : 2010-3-26
  *UPDATEDATE  ：2010-4-29
  *************************************************************************/

  BEGIN_TIME DATE;
  END_TIME   DATE;

begin

  --获取数据分析参数
  --开始时间与结束时间均是整时只分析中间几个小时的服务情况
  select trunc(max(end_time), 'HH24')
    into BEGIN_TIME
    from aip_analysis_end_time;
  end_time := trunc(sysdate, 'HH24');
  if begin_time is null then
    begin_time := END_TIME - 1 / 24;
  end if;
  dbms_output.put_line(to_char(BEGIN_TIME, 'yyyy-mm-dd HH24:MI:SS'));
  dbms_output.put_line(to_char(END_TIME, 'yyyy-mm-dd HH24:MI:SS'));
  while begin_time < end_time loop
    proc_mon_insert(BEGIN_TIME,BEGIN_TIME +1/24);
    PROC_SERVINVOKETRENDS_INSERT(BEGIN_TIME, BEGIN_TIME + 1 / 24);
    begin_time := BEGIN_TIME + 1 / 24;
  end loop;
  COMMIT;

  --如果出现例外则回滚提交例外
EXCEPTION
  WHEN OTHERS THEN
    ROLLBACK;
    RAISE;
  
end PROC_MSG_ANALYSIS;
/
