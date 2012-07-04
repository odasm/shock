create or replace procedure PROC_MSG_ANALYSIS is
  /************************************************************************
  *NAME        : P_AIP_PRODUCT_MONITOR_BY_CTRL_MSG
  *FUNCTION    : �����ϴη���βʱ������ʱ��,ȷ������ʱ��,����proc_mon_insert��
                 PROC_SERVINVOKETRENDS_INSERT�洢����
                 ���ܼ������� SERV_MON��
                 SERV_MON_HIS��
  *INPUT       : 
  *OUTPUT      : 
  *AUTHOR      : ZHEN WANG
  *CREATEDATE  : 2010-3-26
  *UPDATEDATE  ��2010-4-29
  *************************************************************************/

  BEGIN_TIME DATE;
  END_TIME   DATE;

begin

  --��ȡ���ݷ�������
  --��ʼʱ�������ʱ�������ʱֻ�����м伸��Сʱ�ķ������
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

  --�������������ع��ύ����
EXCEPTION
  WHEN OTHERS THEN
    ROLLBACK;
    RAISE;
  
end PROC_MSG_ANALYSIS;
/
