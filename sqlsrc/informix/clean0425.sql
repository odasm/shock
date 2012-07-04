--多余注册信息清理。
select * from serv_afford_man_config;
--143,150,221,101,103,148,146,102,145,1,2,152,181,241,324,502,501,441,481,522,562,563,564,565,
select * from serv_afford_man_config where serv_man_id in
(143,150,101,103,148,146,102,145,1,2,152,181,241,324,502,501,441,481,522,562,563,564,565);
select * from serv_afford_man_reg where ser_serv_man_id in 
(143,150,101,103,148,146,102,145,1,2,152,181,241,324,502,501,441,481,522,562,563,564,565);

delete from serv_afford_man_config where serv_man_id in
(143,150,101,103,148,146,102,145,1,2,152,181,241,324,502,501,441,481,522,562,563,564,565);
delete  from serv_afford_man_reg where ser_serv_man_id in 
(143,150,101,103,148,146,102,145,1,2,152,181,241,324,502,501,441,481,522,562,563,564,565);
commit;