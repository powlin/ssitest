
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
INSERT INTO `user` VALUES ('1', '123', '202CB962AC59075B964B07152D234B70', '林垚焱', '490550036@qq.com');

-- ----------------------------
-- Table structure for `moneydata`
-- ----------------------------
drop table if EXISTS moneydata;

create table moneydata(
	id int primary key auto_increment,
	moneyPer1W varchar(20) COMMENT '每万元收益',
	moneyRate varchar(20) COMMENT '七日年化收益率',
	createDate varchar(30) COMMENT '添加日期'
);

-- 展示信息
drop table if exists showInfos;
create table showInfos(
	id int PRIMARY key auto_increment comment '主键',
	name varchar(10) comment '姓名',
	num varchar(7) comment '工号-无首字母',
	number varchar(8) comment '工号',
	mailbox varchar(40) comment '邮箱',
	mobile varchar(12) comment '联系电话',
	responseSystem varchar(100) comment '负责系统',
	dept varchar(30) comment '所在部门'
);

insert into showInfos values (1, '林垚焱', '01631', 'l01631', 'linyaoyan@dptechnology.net', '18258155523', 'SMS系统','信息技术部');
insert into showInfos values (2, '何勇力', '00377', 'h00377', 'heyongli@dptechnology.net', '151XXXXXXXX', 'TAC推广、公司网络等','信息技术部');
insert into showInfos values (3, '江丕亮', '01441', 'j01441', 'jiangpiliang@dptechnology.net', '159XXXXXXXX', 'SPMS系统、网站、SMS系统周报模块','信息技术部');
insert into showInfos values (4, '卢骁骏', '01480', 'l01480', 'luxiaojun@dptechnology.net', '156XXXXXXXX', 'SAP系统','信息技术部');
insert into showInfos values (5, '郭振帆', '01339', 'g01339', 'guozhenfan@dptechnology.net', '152XXXXXXXX', '系统服务器管理、数据库管理','信息技术部');
insert into showInfos values (6, '闵雪', '01843', 'm01843', 'minxue@dptechnology.net', '188XXXXXXXX', 'SSE系统','信息技术部');
insert into showInfos values (7, '方进', '01757', 'f01757', 'fangjin@dptechnology.net', '159XXXXXXXX', 'OA管理、邮箱管理、TAC帐号管理','信息技术部');
insert into showInfos values (8, '冯玉婉', '30174', 'f30174', 'fengyuwan@dptechnology.net', 'XXXXXXXXXXX', '商务系统','信息技术部');
