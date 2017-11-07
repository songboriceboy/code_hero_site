create table task(
taskid int(11) PRIMARY KEY NOT NULL auto_increment,-- 任务id 主键
title VARCHAR(100) not null DEFAULT '',-- 任务名 
difficulty VARCHAR(100) not NULL DEFAULT '',-- 难度
pubdate VARCHAR(100) not null DEFAULT '', -- 任务发布时间
taskclass int(11) not null DEFAULT 0, -- 所属分类
submission int(11) not null DEFAULT 0, -- 任务完成的人数
taskdetail LONGTEXT not null DEFAULT '' -- 任务详情

);



create table submit_task(
submitid int(11) PRIMARY key not null auto_increment , -- 已提交任务id 主键
taskid int(11) not null DEFAULT 0, -- 任务id
title VARCHAR(100) not null DEFAULT '', -- 任务名
userid int(11) not null DEFAULT 0, -- 提交任务的用户id
username VARCHAR(100) not null DEFAULT '',-- 提交任务的用户名
codeaddress VARCHAR(100) not null DEFAULT '', -- 代码地址链接
demo VARCHAR(100) not null DEFAULT '', -- 演示地址链接
description VARCHAR(10000) not null DEFAULT '', -- 完成任务说明
submittime VARCHAR(100) not null DEFAULT '' -- 提交时间
);

CREATE table review(
reviewid int(11) PRIMARY key not null auto_increment , -- 评论id 主键
taskid  int(11) not null DEFAULT 0, -- 任务id
submitid int(11) not null DEFAULT 0, -- 已提交任务id
reviewuserid  int(11) not null DEFAULT 0, -- 评论用户id
reviewusername VARCHAR(100) not null DEFAULT '',-- 评论用户名
reviewbody  VARCHAR(10000) not null DEFAULT '', -- 评论内容
score int(2) not null DEFAULT 0
);
CREATE TABLE userinfo(
  userid int(11) PRIMARY key not null auto_increment , -- 用户id 主键
  username varchar(100) NOT NULL,  -- 用户名
  password varchar(16) NOT NULL, -- 用户密码
  power enum('0','1') NOT NULL DEFAULT '0' -- 权限 1：老师 0：普通用户
) ;
CREATE TABLE task_class(
  classid int(11) PRIMARY key not null auto_increment , -- classid 主键
  classname varchar(100) NOT NULL,  -- 分类名
 
) ;