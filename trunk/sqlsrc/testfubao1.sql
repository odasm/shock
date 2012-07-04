select a.accept_code ,a.orgid from fault_h_busi_bascic_infor a where to_char(a.operatorid)='6245' for update;
select b.fault_type,b.fault_num from fault_h_user_info b where b.accept_code='YH-6334-20100425-3550';--6334
select * from pub_busitype_td d where d.busi_id=6334
select * from iss_area_code c where c.orgid=1421
select a.accept_code as "faultId",
       b.fault_num as "accNbr",
       d.busi_name as "typeName",
       a.fault_title as "title",
       to_char(b.fault_state) as "state",
       '' as "tache",
       a.operatorname as "createName",
       to_char(a.createtime,'yyMMddHH24mmss') as "createDate"
  from fault_h_busi_bascic_infor a,
       fault_h_user_info b,
       iss_area_code c,
       pub_busitype_td d
 where 
       b.fault_num='7168804'
       and 1!=3--号码类型
       and '-1' != nvl('',0) --障碍类型
       and a.fault_title='11'--障碍标题
       and c.areacode='0871'
       and '-1'!= nvl('',0)
       and to_char(a.operatorid)='6245'
       and a.accept_code = b.accept_code(+)
       and b.fault_type = d.busi_id(+)
       and a.orgid = c.orgid(+);
   --YH-6334-20100425-3550
     
 select a.operatorname as "dealName",
       a.createtime as "dealDate",
       d.busi_name as "typeName",
       '' as "upTache",
       '' as "currTache",
       '' as "description",
       f.oper_detail as "dealDetail",
       e.file_name as "affix"
  from fault_h_busi_bascic_infor a,
       fault_h_user_info b,
       iss_area_code c,
       pub_busitype_td d,
       FBFILE_T_FILE e,
       pub_busilog_td f
 where 
       b.fault_num='7168804'
       and 1!=3--号码类型
       and '-1' != nvl('',0) --障碍类型
       and a.fault_title='11'--障碍标题
       and c.areacode='0871'
       and '-1'!= nvl('',0)
       and to_char(a.operatorid)='6245'
       and a.accept_code = b.accept_code(+)
       and b.fault_type = d.busi_id(+)
       and a.accept_code = e.relation_id(+)
       and a.orgid = c.orgid(+)
       and a.processinstid = f.processinstid(+);
       
       select a.oper_detail as "处理详情" from pub_busilog_td a;
       select * from fbfile_t_file where relation_id='YH-6334-20100425-3550'
    
       
