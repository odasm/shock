--开始表空间：1603.62M 1603.56M 1604.25增大--删除后没有释放表空间
　　01-B Bbs.Svn8.Com

　　drop table temp_jp;


　　02-B Www.Svn8.Com

　　create table temp_jp(col1 number(10),col2 varchar2(20)) tablespace users; 

　　03-B Bbs.Svn8.Com


declare
begin
for i in 1..2500 loop
insert into temp_jp values(i,'RAMA');
end loop;
commit;
end;
/

　　04-B

select dbms_rowid.rowid_relative_fno(rowid) ,
dbms_rowid.rowid_block_number(rowid) ,
count(*)
from temp_jp
group by dbms_rowid.rowid_relative_fno(rowid),
dbms_rowid.rowid_block_number(rowid)
order by dbms_rowid.rowid_relative_fno(rowid),
dbms_rowid.rowid_block_number(rowid);
DBMS_ROWID.ROWID_RELATIVE_FNO(ROWID) DBMS_ROWID.ROWID_BLOCK_NUMBER(ROWID) COUNT(*)
------------------------------------ ------------------------ ----------
4 1908 526
4 1909 519
4 1910 417
4 1911 519
4 1912 519
5 rows selected.

  

05-B Svn8.Com

　　create index temp_jp_idx on temp_jp(col1) tablespace users; 

　　06-B


select segment_name,segment_type,bytes/1024/1024 mg,blocks,extents
from user_segments where segment_name like 'TEMP%';
SEGMENT_NAME SEGMENT_TYPE MG BLOCKS EXTENTS
--------------- ------------------ ---------- ---------- ----------
TEMP_JP TABLE .0625 8 1
TEMP_JP_IDX INDEX .125 16 2




　　07-B Www.Svn8.Com

alter table temp_jp add(col3 varchar2(256) default 'THIS IS TO TEST THE ROW CHAINING ISSUE WITH MOVE
COMMAND AND HOW THE DATA IS SPREAD BEFORE AND AFTER THE MOVE COMMAND IN EACH
BLOCK OF THE TABLE');

　　08-B

　　analyze table temp_jp compute statistics;

　　09-B 参考资料:www.svn8.com

select table_name,num_rows,chain_cnt from user_tables where table_name='TEMP_JP';
TABLE_NAME NUM_ROWS CHAIN_CNT
------------------------------ ---------- ----------
TEMP_JP 2500 2426 


　　10-B

select segment_name,segment_type,bytes/1024/1024 mg,blocks,extents
from user_segments where segment_name like 'TEMP%';
SEGMENT_NAME SEGMENT_TYPE MG BLOCKS EXTENTS
--------------- ------------------ ---------- ---------- ----------
TEMP_JP TABLE .625 80 10
TEMP_JP_IDX INDEX .125 16 2


　　11-B

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

12-B Bbs.Svn8.Com

select dbms_rowid.rowid_relative_fno(rowid) ,
dbms_rowid.rowid_block_number(rowid) ,
count(*)
from temp_jp
group by dbms_rowid.rowid_relative_fno(rowid),
dbms_rowid.rowid_block_number(rowid)
order by dbms_rowid.rowid_relative_fno(rowid),
dbms_rowid.rowid_block_number(rowid);
DBMS_ROWID.ROWID_RELATIVE_FNO(ROWID) DBMS_ROWID.ROWID_BLOCK_NUMBER(ROWID) COUNT(*)
------------------------------------ -------------------------- ----------
4 1908 1
4 1909 1
4 1910 1
4 1911 1
4 1912 1
5 rows selected. Svn中文网


　　13-B

Www.Svn8.Com

　　analyze table temp_jp compute statistics; 

　　14-A 参考资料:www.svn8.com

select table_name,num_rows,chain_cnt from user_tables where table_name='TEMP_JP';
TABLE_NAME NUM_ROWS CHAIN_CNT
------------------------------ ---------- ----------
TEMP_JP 5 5



　　15-B Svn8.Com

select index_name,status from user_indexes where table_name='TEMP_JP';
INDEX_NAME STATUS
------------------------------ --------
TEMP_JP_IDX VALID Svn中文网


　　16-BA

　　alter table temp_jp enable row movement;


　　16-BB Svn8.Com

　　alter table temp_jp shrink space cascade; 

　　17-B
Svn8.Com

select index_name,status from user_indexes where table_name='TEMP_JP';
INDEX_NAME STATUS
------------------------------ --------
TEMP_JP_IDX VALID Www.Svn8.Com


 


　18-B


select segment_name,segment_type,bytes/1024/1024 mg,blocks,extents
from user_segments where segment_name like 'TEMP%';
SEGMENT_NAME SEGMENT_TYPE MG BLOCKS EXTENTS
--------------- ------------------ ---------- ---------- ----------
TEMP_JP TABLE .0625 8 1
TEMP_JP_IDX INDEX .0625 8 1


　　19-B Svn8.Com

select dbms_rowid.rowid_relative_fno(rowid) ,
dbms_rowid.rowid_block_number(rowid) ,
count(*)
from temp_jp
group by dbms_rowid.rowid_relative_fno(rowid),
dbms_rowid.rowid_block_number(rowid)
order by dbms_rowid.rowid_relative_fno(rowid),
dbms_rowid.rowid_block_number(rowid);
DBMS_ROWID.ROWID_RELATIVE_FNO(ROWID) DBMS_ROWID.ROWID_BLOCK_NUMBER(ROWID) COUNT(*)
------------------------------------ -------------------------- ----------
4 1908 3
4 1909 1
4 1910 1 


　　20-B

　　analyze table temp_jp compute statistics;

　　21-B Svn中文网

select table_name,num_rows,chain_cnt from user_tables where table_name='TEMP_JP';
TABLE_NAME NUM_ROWS CHAIN_CNT
------------------------------ ---------- ----------
TEMP_JP 5 2


　　22-B Svn8.Com

select index_name,status from user_indexes where table_name='TEMP_JP';
INDEX_NAME STATUS
------------------------------ --------
TEMP_JP_IDX VALID


select count(*) from temp_jp
commit;









