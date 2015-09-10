
-- CREATE DATABASE `test2` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `aliaccount`
-- ----------------------------
DROP TABLE IF EXISTS `aliaccount`;
CREATE TABLE `aliaccount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `aliaccountid` varchar(20) DEFAULT NULL,
  `childrenusername` varchar(20) DEFAULT NULL,
  `money` decimal(10,2) DEFAULT NULL,
  `lastlogin` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of aliaccount
-- ----------------------------

-- ----------------------------
-- Table structure for `bankaccount`
-- ----------------------------
DROP TABLE IF EXISTS `bankaccount`;
CREATE TABLE `bankaccount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `bankcardid` varchar(20) DEFAULT NULL,
  `bankname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bankaccount
-- ----------------------------

-- ----------------------------
-- Table structure for `money`
-- ----------------------------
DROP TABLE IF EXISTS `money`;
CREATE TABLE `money` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `zhifubaomoney` decimal(10,2) DEFAULT NULL,
  `yuebaomoney` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of money
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `realname` varchar(20) DEFAULT NULL,
  `mailbox` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '123', '202CB962AC59075B964B07152D234B70', '�ֈ���', '490550036@qq.com');

-- ----------------------------
-- Table structure for `moneydata`
-- ----------------------------
drop table if EXISTS moneydata;

create table moneydata(
	id int primary key auto_increment,
	moneyPer1W varchar(20) COMMENT 'ÿ��Ԫ����',
	moneyRate varchar(20) COMMENT '�����껯������',
	createDate varchar(30) COMMENT '�������'
);

-- չʾ��Ϣ
drop table if exists showInfos;
create table showInfos(
	id int PRIMARY key auto_increment comment '����',
	name varchar(10) comment '����',
	num varchar(7) comment '����-������ĸ',
	number varchar(8) comment '����',
	mailbox varchar(40) comment '����',
	mobile varchar(12) comment '��ϵ�绰',
	responseSystem varchar(100) comment '����ϵͳ',
	dept varchar(30) comment '���ڲ���'
);

insert into showInfos values (1, '�ֈ���', '01631', 'l01631', 'linyaoyan@dptechnology.net', '18258155523', 'SMSϵͳ','��Ϣ������');
insert into showInfos values (2, '������', '00377', 'h00377', 'heyongli@dptechnology.net', '151XXXXXXXX', 'TAC�ƹ㡢��˾�����','��Ϣ������');
insert into showInfos values (3, '��ا��', '01441', 'j01441', 'jiangpiliang@dptechnology.net', '159XXXXXXXX', 'SPMSϵͳ����վ��SMSϵͳ�ܱ�ģ��','��Ϣ������');
insert into showInfos values (4, '¬�翥', '01480', 'l01480', 'luxiaojun@dptechnology.net', '156XXXXXXXX', 'SAPϵͳ','��Ϣ������');
insert into showInfos values (5, '����', '01339', 'g01339', 'guozhenfan@dptechnology.net', '152XXXXXXXX', 'ϵͳ�������������ݿ����','��Ϣ������');
insert into showInfos values (6, '��ѩ', '01843', 'm01843', 'minxue@dptechnology.net', '188XXXXXXXX', 'SSEϵͳ','��Ϣ������');
insert into showInfos values (7, '����', '01757', 'f01757', 'fangjin@dptechnology.net', '159XXXXXXXX', 'OA�����������TAC�ʺŹ���','��Ϣ������');
insert into showInfos values (8, '������', '30174', 'f30174', 'fengyuwan@dptechnology.net', 'XXXXXXXXXXX', '����ϵͳ','��Ϣ������');
