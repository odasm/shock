DROP PROCEDURE 'tsaip'.p_test();

create procedure p_test()
insert into aip_analysis_end_time (id,end_time)values (aip_analysis_time_id.nextval,sysdate);
commit;
end procedure;