--01-A

����drop table temp_jp;

����--02-A
--�ο�����:www.svn8.com

����create table temp_jp(col1 number(10),col2 varchar2(20)) tablespace users;
--Bbs.Svn8.Com

��--��03-A Svn8.Com

declare
begin
for i in 1..2500 loop
insert into temp_jp values(i,'RAMA');
end loop;
commit;
end;
/
--�ο�����:www.svn8.com


����--04-A Www.Svn8.Com
--��ļ�¼����
select dbms_rowid.rowid_relative_fno(rowid) ,
dbms_rowid.rowid_block_number(rowid) ,
count(*)
from temp_jp
group by dbms_rowid.rowid_relative_fno(rowid),
dbms_rowid.rowid_block_number(rowid)
order by dbms_rowid.rowid_relative_fno(rowid),
dbms_rowid.rowid_block_number(rowid);
/*
DBMS_ROWID.ROWID_RELATIVE_FNO(ROWID) DBMS_ROWID.ROWID_BLOCK_NUMBER(ROWID) COUNT(*)
------------------------------------ -------------------------- ----------
4 2764 526
4 2765 519
4 2766 417
4 2767 519
4 2768 519
5 rows selected. Svn������*/


����--05-A

--�ο�����:www.svn8.com

����create index temp_jp_idx on temp_jp(col1) tablespace users;

--Www.Svn8.Com

 -- �ο�����:www.svn8.com

 
--Www.Svn8.Com

��--06-A Svn8.Com
--�鿴��Ĵ��̷����߼����
select segment_name,segment_type,bytes/1024/1024 mg,blocks,extents
from user_segments where segment_name like 'TEMP%';
/*SEGMENT_NAME SEGMENT_TYPE MG BLOCKS EXTENTS
--------------- ------------------ ---------- ---------- ----------
TEMP_JP TABLE .0625 8 1
TEMP_JP_IDX INDEX .125 16 2*/

--Bbs.Svn8.Com


����--07-A Svn������
--��temp_jp�����һ����������ģ�������ӡ�
alter table temp_jp add(col3 varchar2(256) default 'THIS IS TO TEST THE ROW CHAINING ISSUE
WITH MOVE COMMAND AND HOW THE DATA IS SPREAD BEFORE AND AFTER THE MOVE COMMAND IN EACH BLOCK OF THE TABLE');

--Svn������


����--08-A
--Www.Svn8.Com

����analyze table temp_jp compute statistics; 
--Www.Svn8.Com

����--09-A �ο�����:www.svn8.com

select table_name,num_rows,chain_cnt from user_tables where table_name='TEMP_JP';
TABLE_NAME NUM_ROWS CHAIN_CNT
------------------------------ ---------- ----------
TEMP_JP 2500 2426
--Svn������


����--10-A
--Svn������

select segment_name,segment_type,bytes/1024/1024 mg,blocks,extents
from user_segments where segment_name like 'TEMP%';
/*SEGMENT_NAME SEGMENT_TYPE MG BLOCKS EXTENTS
--------------- ------------------ ---------- ---------- ----------
TEMP_JP TABLE .625 80 10
TEMP_JP_IDX INDEX .125 16 2*/

--Www.Svn8.Com


����--11-A Bbs.Svn8.Com

declare
begin
for c1 in (select DBMS_ROWID.ROWID_BLOCK_NUMBER(ROWID) block,
max(rowid) max_rowid
from temp_jp group by DBMS_ROWID.ROWID_BLOCK_NUMBER(ROWID)) loop
for c2 in (select rowid,DBMS_ROWID.ROWID_BLOCK_NUMBER(ROWID) block
from temp_jp
where DBMS_ROWID.ROWID_BLOCK_NUMBER(ROWID)=c1.block) loop
if ((c2.block = c1.block) and (c2.rowid <> c1.max_rowid)) then
delete from temp_jp where rowid = c2.rowid;
end if;
end loop;
end loop;
commit;
end;
/

--Svn8.Com

--
  --Svn������

 ---
--12-A Bbs.Svn8.Com

select dbms_rowid.rowid_relative_fno(rowid) ,
dbms_rowid.rowid_block_number(rowid) ,
count(*)
from temp_jp
group by dbms_rowid.rowid_relative_fno(rowid),
dbms_rowid.rowid_block_number(rowid)
order by dbms_rowid.rowid_relative_fno(rowid),
dbms_rowid.rowid_block_number(rowid);
DBMS_ROWID.ROWID_RELATIVE_FNO(ROWID) DBMS_ROWID.ROWID_BLOCK_NUMBER(ROWID) COUNT(*)
------------------------------------ ------------------------------------ ----------
4 2764 1
4 2765 1
4 2766 1
4 2767 1
4 2768 1



����--13-A Bbs.Svn8.Com

����analyze table temp_jp compute statistics;

����14-B Bbs.Svn8.Com

select table_name,num_rows,chain_cnt from user_tables where table_name='TEMP_JP';
/*TABLE_NAME NUM_ROWS CHAIN_CNT
------------------------------ ---------- ----------
TEMP_JP 5 5 */


����--15-A Svn������

select index_name,status from user_indexes where table_name='TEMP_JP';
INDEX_NAME STATUS
------------------------------ --------
TEMP_JP_IDX VALID 


����16-A


����alter table temp_jp move tablespace users;

����17-A


select index_name,status from user_indexes where table_name='TEMP_JP';
INDEX_NAME STATUS
------------------------------ --------
TEMP_JP_IDX UNUSABLE 

 




��--18-A



select segment_name,segment_type,bytes/1024/1024 mg,blocks,extents
from user_segments where segment_name like 'TEMP%';
SEGMENT_NAME SEGMENT_TYPE MG BLOCKS EXTENTS
--------------- ------------------ ---------- ---------- ----------
TEMP_JP TABLE .0625 8 1
TEMP_JP_IDX INDEX .125 16 2 


����19-A


select dbms_rowid.rowid_relative_fno(rowid) ,
dbms_rowid.rowid_block_number(rowid) ,
count(*)
from temp_jp
group by dbms_rowid.rowid_relative_fno(rowid),
dbms_rowid.rowid_block_number(rowid)
order by dbms_rowid.rowid_relative_fno(rowid),
dbms_rowid.rowid_block_number(rowid);
DBMS_ROWID.ROWID_RELATIVE_FNO(ROWID) DBMS_ROWID.ROWID_BLOCK_NUMBER(ROWID) COUNT(*)
------------------------------------ ------------------------------------ ----------
4 2908 5


����20-AA

analyze table temp_jp compute statistics;
analyze table temp_jp compute statistics
*
ERROR at line 1:
ORA-01502: index 'GZBGQT.TEMP_JP_IDX' or partition of such index is in unusable state




��20-AB


����alter index TEMP_JP_IDX rebuild online;

����20-AC
Svn������

����analyze table temp_jp compute statistics;


select table_name,num_rows,chain_cnt from user_tables where table_name='TEMP_JP';
TABLE_NAME NUM_ROWS CHAIN_CNT
------------------------------ ---------- ----------
TEMP_JP 5 0



 

��22-A


select index_name,status from user_indexes where table_name='TEMP_JP';
INDEX_NAME STATUS
------------------------------ --------
TEMP_JP_IDX VALID
