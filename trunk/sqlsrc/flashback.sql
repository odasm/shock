select dbms_flashback.get_system_change_number from dual;
select count(*) from test;
delete from test;
commit;
--11250185785102
select count(*) from tEST as of scn 11250185785102;
--��ѯ֮��ʱ����ֵ������Ը㶨��ɾ��������
select count(*) from tEST as of scn 11250185780000;
--�ָ�����
insert into test select * from test as of scn 11250185780000;
--�ٴβ�ѯ����
select * from test;
commit;
��--����2
����--��ɾ���ݺ�Ļ�ԭ
����select timestamp_to_scn(to_timestamp('2009-03-13 09:00:00','YYYY-MM-DD HH:MI:SS')) from dual;
����--���:13526973
��--����ɾ��ʱ��ת��Ϊscn
����select * from reportinfo
����AS OF SCN 13526973
����--��reportinfo���е�scn�������ȡ��
����--Ȼ����Ը���������ݽ��л�ԭ����
����create table reporttest as select * from reportinfo where 1=0;
����insert into reporttest select * from reportinfo AS OF SCN 13526973;
����--��������Ӧ�ÿ��Ժϳ�һ��
����--create table reporttest as select * from reportinfo AS OF SCN 13526973;
����--����reporttest���о���scn���reportinfo����.������
