select * from serv_define;
delete from serv_define where serv_id not in (502,502,504);
commit;
select * from serv_afford_man_reg;
select * from serv_visit_limit;
