--��ѯsga�ڴ����
select name,value/1024/1024||'M' value from v$sga;
select sum(value)/1024/1024 from v$sga;
select * from v$sgainfo;
--��ѯ��Ч�ڴ�
select current_size from v$sga_dynamic_free_memory;
--��ʾ��ǰshared pool�Ŀ����ֽ�:
select pool,name,bytes/1024/1024||'M' from v$sgastat
       where name='free memory' and pool='shared pool';
--�����ͼ��¼��SGA������̬�ڴ��������,
--����ͳ����Ϣ�ǻ����Ѿ�����˵ģ����SGA��̬�ڴ�����С�����Ĳ�����
select component,current_size,oper_count,granule_size from v$sga_dynamic_components;
--�����ͼֻ��һ���ֶξ���������ʾSGA��ǰ�������ڵ��������Ŀ�������Ҳ����sga_max_size - sga�и���pool���������ô�С���ۺϡ�
select * from v$sga_dynamic_free_memory;
--������ٻ�����ʵ�ʴ�С
select name,bytes/1024/1024||'M' from v$sgainfo
	where name='Buffer Cache Size';
--�����ڴ����
select component,current_size from v$sga_dynamic_components;

select size_for_estimate,buffers_for_estimate from v$db_cache_advice where
	name='DEFAULT' and block_size=(select value from v$parameter where 
		name = 'db_block_size')
		 	and advice_status='ON';
select * from v$db_cache_advice;		 	
		 	
		 	
		 	
		 	
		 	
		 	
		 	
		 	
		 	
		 	
		 	
		 	
		 	
		 	
