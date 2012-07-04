-- 1. 查询oracle中所有用户信息

       select  * from dba_users;

   --2. 只查询用户和密码

       select username,password from dba_users; 

   --3. 查询当前用户信息

       select * from dba_ustats;

   --4. 查询用户可以访问的视图文本

       select * from dba_varrays;

   --5. 查询数据库中所有视图的文本

       select * from dba_views;

