create table task(
taskid int(11) PRIMARY KEY NOT NULL auto_increment,-- ����id ����
title VARCHAR(100) not null DEFAULT '',-- ������ 
difficulty VARCHAR(100) not NULL DEFAULT '',-- �Ѷ�
pubdate VARCHAR(100) not null DEFAULT '', -- ���񷢲�ʱ��
taskclass int(11) not null DEFAULT 0, -- ��������
submission int(11) not null DEFAULT 0, -- ������ɵ�����
taskdetail LONGTEXT not null DEFAULT '' -- ��������

);



create table submit_task(
submitid int(11) PRIMARY key not null auto_increment , -- ���ύ����id ����
taskid int(11) not null DEFAULT 0, -- ����id
title VARCHAR(100) not null DEFAULT '', -- ������
userid int(11) not null DEFAULT 0, -- �ύ������û�id
username VARCHAR(100) not null DEFAULT '',-- �ύ������û���
codeaddress VARCHAR(100) not null DEFAULT '', -- �����ַ����
demo VARCHAR(100) not null DEFAULT '', -- ��ʾ��ַ����
description VARCHAR(10000) not null DEFAULT '', -- �������˵��
submittime VARCHAR(100) not null DEFAULT '' -- �ύʱ��
);

CREATE table review(
reviewid int(11) PRIMARY key not null auto_increment , -- ����id ����
taskid  int(11) not null DEFAULT 0, -- ����id
submitid int(11) not null DEFAULT 0, -- ���ύ����id
reviewuserid  int(11) not null DEFAULT 0, -- �����û�id
reviewusername VARCHAR(100) not null DEFAULT '',-- �����û���
reviewbody  VARCHAR(10000) not null DEFAULT '', -- ��������
score int(2) not null DEFAULT 0
);
CREATE TABLE userinfo(
  userid int(11) PRIMARY key not null auto_increment , -- �û�id ����
  username varchar(100) NOT NULL,  -- �û���
  password varchar(16) NOT NULL, -- �û�����
  power enum('0','1') NOT NULL DEFAULT '0' -- Ȩ�� 1����ʦ 0����ͨ�û�
) ;
CREATE TABLE task_class(
  classid int(11) PRIMARY key not null auto_increment , -- classid ����
  classname varchar(100) NOT NULL,  -- ������
 
) ;