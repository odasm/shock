create database diamond;

grant all on diamond.* to zh@'%'  identified by 'abc';

use diamond

create table config_info (

 id bigint(64) unsigned NOT NULL auto_increment,

 data_id varchar(255)  NOT NULL  default  '' ,

 group_id varchar(128)  NOT  NULL  default '',

 content longtext NOT NULL,

 md5 varchar(32) NOT NULL default '' ,

 gmt_create datetime NOT NULL default '2010-05-05 00:00:00',

 gmt_modified datetime NOT NULL default '2010-05-05 00:00:00',

  PRIMARY KEY  ("id"),

  UNIQUE KEY uk_config_datagroup ("data_id",'group_id')

);

use test

create table name
(
id int not null auto_increment,
first_name varchar(30) not null,
last_name  varchar(30) not null,
primary key (id),
index (last_name,first_name)
)

