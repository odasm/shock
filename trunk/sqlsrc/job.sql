begin
  sys.dbms_job.submit(job => :job,
                      what => 'proc_msg_analysis;',
                      next_date => to_date('30-12-2011 11:30:00', 'dd-mm-yyyy hh24:mi:ss'),
                      interval => 'trunc(sysdate+1/24,''HH24'')+30/60/24');
  commit;
end;
/