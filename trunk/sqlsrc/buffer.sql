--查询sga内存分配
select name,value/1024/1024||'M' value from v$sga;
select sum(value)/1024/1024 from v$sga;
select * from v$sgainfo;
--查询有效内存
select current_size from v$sga_dynamic_free_memory;
--显示当前shared pool的空闲字节:
select pool,name,bytes/1024/1024||'M' from v$sgastat
       where name='free memory' and pool='shared pool';
--这个视图记录了SGA各个动态内存区的情况,
--它的统计信息是基于已经完成了的，针对SGA动态内存区大小调整的操作。
select component,current_size,oper_count,granule_size from v$sga_dynamic_components;
--这个视图只有一个字段就是用来表示SGA当前可以用于调整各个的空闲区域，也就是sga_max_size - sga中各个pool或区域设置大小的综合。
select * from v$sga_dynamic_free_memory;
--计算高速缓冲区实际大小
select name,bytes/1024/1024||'M' from v$sgainfo
	where name='Buffer Cache Size';
--具体内存情况
select component,current_size from v$sga_dynamic_components;

select size_for_estimate,buffers_for_estimate from v$db_cache_advice where
	name='DEFAULT' and block_size=(select value from v$parameter where 
		name = 'db_block_size')
		 	and advice_status='ON';
select * from v$db_cache_advice;		 	
		 	
		 	
		 	
		 	
		 	
		 	
		 	
		 	
		 	
		 	
		 	
		 	
		 	
		 	
