/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm7i245
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm7i245` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm7i245`;

/*Table structure for table `banji` */

DROP TABLE IF EXISTS `banji`;

CREATE TABLE `banji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='班级';

/*Data for the table `banji` */

insert  into `banji`(`id`,`addtime`,`banji`) values (61,'2021-04-27 12:15:45','班级1');
insert  into `banji`(`id`,`addtime`,`banji`) values (62,'2021-04-27 12:15:45','班级2');
insert  into `banji`(`id`,`addtime`,`banji`) values (63,'2021-04-27 12:15:45','班级3');
insert  into `banji`(`id`,`addtime`,`banji`) values (64,'2021-04-27 12:15:45','班级4');
insert  into `banji`(`id`,`addtime`,`banji`) values (65,'2021-04-27 12:15:45','班级5');
insert  into `banji`(`id`,`addtime`,`banji`) values (66,'2021-04-27 12:15:45','班级6');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm7i245/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssm7i245/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssm7i245/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage','http://localhost:8080/ssm7i245/upload/1619500773303.png');

/*Table structure for table `discussxiaoshuo` */

DROP TABLE IF EXISTS `discussxiaoshuo`;

CREATE TABLE `discussxiaoshuo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='小说评论表';

/*Data for the table `discussxiaoshuo` */

insert  into `discussxiaoshuo`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (121,'2021-04-27 12:15:45',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussxiaoshuo`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (122,'2021-04-27 12:15:45',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussxiaoshuo`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (123,'2021-04-27 12:15:45',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussxiaoshuo`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (124,'2021-04-27 12:15:45',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussxiaoshuo`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (125,'2021-04-27 12:15:45',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussxiaoshuo`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (126,'2021-04-27 12:15:45',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `laoshi` */

DROP TABLE IF EXISTS `laoshi`;

CREATE TABLE `laoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `laoshizhanghao` varchar(200) NOT NULL COMMENT '老师账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `laoshixingming` varchar(200) DEFAULT NULL COMMENT '老师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `laoshishouji` varchar(200) DEFAULT NULL COMMENT '老师手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `laoshizhanghao` (`laoshizhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619500871689 DEFAULT CHARSET=utf8 COMMENT='老师';

/*Data for the table `laoshi` */

insert  into `laoshi`(`id`,`addtime`,`laoshizhanghao`,`mima`,`laoshixingming`,`xingbie`,`laoshishouji`,`shenfenzheng`,`youxiang`,`touxiang`) values (21,'2021-04-27 12:15:45','老师1','123456','老师姓名1','男','13823888881','440300199101010001','773890001@qq.com','http://localhost:8080/ssm7i245/upload/laoshi_touxiang1.jpg');
insert  into `laoshi`(`id`,`addtime`,`laoshizhanghao`,`mima`,`laoshixingming`,`xingbie`,`laoshishouji`,`shenfenzheng`,`youxiang`,`touxiang`) values (22,'2021-04-27 12:15:45','老师2','123456','老师姓名2','男','13823888882','440300199202020002','773890002@qq.com','http://localhost:8080/ssm7i245/upload/laoshi_touxiang2.jpg');
insert  into `laoshi`(`id`,`addtime`,`laoshizhanghao`,`mima`,`laoshixingming`,`xingbie`,`laoshishouji`,`shenfenzheng`,`youxiang`,`touxiang`) values (23,'2021-04-27 12:15:45','老师3','123456','老师姓名3','男','13823888883','440300199303030003','773890003@qq.com','http://localhost:8080/ssm7i245/upload/laoshi_touxiang3.jpg');
insert  into `laoshi`(`id`,`addtime`,`laoshizhanghao`,`mima`,`laoshixingming`,`xingbie`,`laoshishouji`,`shenfenzheng`,`youxiang`,`touxiang`) values (24,'2021-04-27 12:15:45','老师4','123456','老师姓名4','男','13823888884','440300199404040004','773890004@qq.com','http://localhost:8080/ssm7i245/upload/laoshi_touxiang4.jpg');
insert  into `laoshi`(`id`,`addtime`,`laoshizhanghao`,`mima`,`laoshixingming`,`xingbie`,`laoshishouji`,`shenfenzheng`,`youxiang`,`touxiang`) values (25,'2021-04-27 12:15:45','老师5','123456','老师姓名5','男','13823888885','440300199505050005','773890005@qq.com','http://localhost:8080/ssm7i245/upload/laoshi_touxiang5.jpg');
insert  into `laoshi`(`id`,`addtime`,`laoshizhanghao`,`mima`,`laoshixingming`,`xingbie`,`laoshishouji`,`shenfenzheng`,`youxiang`,`touxiang`) values (26,'2021-04-27 12:15:45','老师6','123456','老师姓名6','女','13823888886','440300199606060006','773890006@qq.com','http://localhost:8080/ssm7i245/upload/laoshi_touxiang6.jpg');
insert  into `laoshi`(`id`,`addtime`,`laoshizhanghao`,`mima`,`laoshixingming`,`xingbie`,`laoshishouji`,`shenfenzheng`,`youxiang`,`touxiang`) values (1619500871688,'2021-04-27 13:21:11','124','1','vivo','女','13923532032','123456789123456789','1234561231@qq.com','http://localhost:8080/ssm7i245/upload/1619500926716.jpg');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (111,'2021-04-27 12:15:45',1,'用户名1','留言内容1','回复内容1');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (112,'2021-04-27 12:15:45',2,'用户名2','留言内容2','回复内容2');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (113,'2021-04-27 12:15:45',3,'用户名3','留言内容3','回复内容3');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (114,'2021-04-27 12:15:45',4,'用户名4','留言内容4','回复内容4');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (115,'2021-04-27 12:15:45',5,'用户名5','留言内容5','回复内容5');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (116,'2021-04-27 12:15:45',6,'用户名6','留言内容6','回复内容6');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619500811731 DEFAULT CHARSET=utf8 COMMENT='小说资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (101,'2021-04-27 12:15:45','标题1','简介1','http://localhost:8080/ssm7i245/upload/news_picture1.jpg','内容1');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (102,'2021-04-27 12:15:45','标题2','简介2','http://localhost:8080/ssm7i245/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (103,'2021-04-27 12:15:45','标题3','简介3','http://localhost:8080/ssm7i245/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (104,'2021-04-27 12:15:45','标题4','简介4','http://localhost:8080/ssm7i245/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (105,'2021-04-27 12:15:45','标题5','简介5','http://localhost:8080/ssm7i245/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (106,'2021-04-27 12:15:45','标题6','简介6','http://localhost:8080/ssm7i245/upload/news_picture6.jpg','内容6');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (1619500811730,'2021-04-27 13:20:11','管理员发布的小说','小说','http://localhost:8080/ssm7i245/upload/1619500802271.jpg','<p>小说</p>');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619501101077 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1619501101076,'2021-04-27 13:25:00',1619500851370,1619500988383,'xiaoshuo','简爱','http://localhost:8080/ssm7i245/upload/1619500962899.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','xzuiw1bld6wyzqodv23chc7lrj0h3yki','2021-04-27 13:17:36','2021-04-27 14:27:40');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1619500871688,'124','laoshi','老师','ohlka3etmrxpanq4yys222bw3y4266yi','2021-04-27 13:21:21','2021-04-27 14:26:13');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,1619500851370,'123','xuesheng','学生','yc7ludehkpmfbnnxoyltw2y0owfo67ct','2021-04-27 13:24:28','2021-04-27 14:27:07');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-27 12:15:45');

/*Table structure for table `xiaoshuo` */

DROP TABLE IF EXISTS `xiaoshuo`;

CREATE TABLE `xiaoshuo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiaoshuomingcheng` varchar(200) DEFAULT NULL COMMENT '小说名称',
  `xiaoshuoleixing` varchar(200) DEFAULT NULL COMMENT '小说类型',
  `xiaoshuojianjie` longtext COMMENT '小说简介',
  `xiaoshuoneirong` longtext COMMENT '小说内容',
  `faburiqi` datetime DEFAULT NULL COMMENT '发布日期',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `fujian` varchar(200) DEFAULT NULL COMMENT '附件',
  `laoshizhanghao` varchar(200) DEFAULT NULL COMMENT '老师账号',
  `laoshixingming` varchar(200) DEFAULT NULL COMMENT '老师姓名',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619500988384 DEFAULT CHARSET=utf8 COMMENT='小说';

/*Data for the table `xiaoshuo` */

insert  into `xiaoshuo`(`id`,`addtime`,`xiaoshuomingcheng`,`xiaoshuoleixing`,`xiaoshuojianjie`,`xiaoshuoneirong`,`faburiqi`,`tupian`,`fujian`,`laoshizhanghao`,`laoshixingming`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (31,'2021-04-27 12:15:45','小说名称1','小说类型1','小说简介1','小说内容1','2021-04-27 12:15:45','http://localhost:8080/ssm7i245/upload/xiaoshuo_tupian1.jpg','','老师账号1','老师姓名1',1,1,'2021-04-27 13:18:23',2);
insert  into `xiaoshuo`(`id`,`addtime`,`xiaoshuomingcheng`,`xiaoshuoleixing`,`xiaoshuojianjie`,`xiaoshuoneirong`,`faburiqi`,`tupian`,`fujian`,`laoshizhanghao`,`laoshixingming`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (32,'2021-04-27 12:15:45','小说名称2','小说类型2','小说简介2','小说内容2','2021-04-27 12:15:45','http://localhost:8080/ssm7i245/upload/xiaoshuo_tupian2.jpg','','老师账号2','老师姓名2',2,2,'2021-04-27 12:15:45',2);
insert  into `xiaoshuo`(`id`,`addtime`,`xiaoshuomingcheng`,`xiaoshuoleixing`,`xiaoshuojianjie`,`xiaoshuoneirong`,`faburiqi`,`tupian`,`fujian`,`laoshizhanghao`,`laoshixingming`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (33,'2021-04-27 12:15:45','小说名称3','小说类型3','小说简介3','小说内容3','2021-04-27 12:15:45','http://localhost:8080/ssm7i245/upload/xiaoshuo_tupian3.jpg','','老师账号3','老师姓名3',3,3,'2021-04-27 12:15:45',3);
insert  into `xiaoshuo`(`id`,`addtime`,`xiaoshuomingcheng`,`xiaoshuoleixing`,`xiaoshuojianjie`,`xiaoshuoneirong`,`faburiqi`,`tupian`,`fujian`,`laoshizhanghao`,`laoshixingming`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (34,'2021-04-27 12:15:45','小说名称4','小说类型4','小说简介4','小说内容4','2021-04-27 12:15:45','http://localhost:8080/ssm7i245/upload/xiaoshuo_tupian4.jpg','','老师账号4','老师姓名4',4,4,'2021-04-27 12:15:45',4);
insert  into `xiaoshuo`(`id`,`addtime`,`xiaoshuomingcheng`,`xiaoshuoleixing`,`xiaoshuojianjie`,`xiaoshuoneirong`,`faburiqi`,`tupian`,`fujian`,`laoshizhanghao`,`laoshixingming`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (35,'2021-04-27 12:15:45','小说名称5','小说类型5','小说简介5','小说内容5','2021-04-27 12:15:45','http://localhost:8080/ssm7i245/upload/xiaoshuo_tupian5.jpg','','老师账号5','老师姓名5',5,5,'2021-04-27 12:15:45',5);
insert  into `xiaoshuo`(`id`,`addtime`,`xiaoshuomingcheng`,`xiaoshuoleixing`,`xiaoshuojianjie`,`xiaoshuoneirong`,`faburiqi`,`tupian`,`fujian`,`laoshizhanghao`,`laoshixingming`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (36,'2021-04-27 12:15:45','小说名称6','小说类型6','小说简介6','小说内容6','2021-04-27 12:15:45','http://localhost:8080/ssm7i245/upload/xiaoshuo_tupian6.jpg','','老师账号6','老师姓名6',6,6,'2021-04-27 12:15:45',6);
insert  into `xiaoshuo`(`id`,`addtime`,`xiaoshuomingcheng`,`xiaoshuoleixing`,`xiaoshuojianjie`,`xiaoshuoneirong`,`faburiqi`,`tupian`,`fujian`,`laoshizhanghao`,`laoshixingming`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (1619500988383,'2021-04-27 13:23:08','简爱','小说类型1','简爱','<p>简爱</p>','2021-04-27 13:22:40','http://localhost:8080/ssm7i245/upload/1619500962899.jpg','http://localhost:8080/ssm7i245/upload/1619500975854.docx','124','vivo',0,0,'2021-04-27 13:25:02',2);

/*Table structure for table `xiaoshuoleixing` */

DROP TABLE IF EXISTS `xiaoshuoleixing`;

CREATE TABLE `xiaoshuoleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiaoshuoleixing` varchar(200) DEFAULT NULL COMMENT '小说类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='小说类型';

/*Data for the table `xiaoshuoleixing` */

insert  into `xiaoshuoleixing`(`id`,`addtime`,`xiaoshuoleixing`) values (41,'2021-04-27 12:15:45','小说类型1');
insert  into `xiaoshuoleixing`(`id`,`addtime`,`xiaoshuoleixing`) values (42,'2021-04-27 12:15:45','小说类型2');
insert  into `xiaoshuoleixing`(`id`,`addtime`,`xiaoshuoleixing`) values (43,'2021-04-27 12:15:45','小说类型3');
insert  into `xiaoshuoleixing`(`id`,`addtime`,`xiaoshuoleixing`) values (44,'2021-04-27 12:15:45','小说类型4');
insert  into `xiaoshuoleixing`(`id`,`addtime`,`xiaoshuoleixing`) values (45,'2021-04-27 12:15:45','小说类型5');
insert  into `xiaoshuoleixing`(`id`,`addtime`,`xiaoshuoleixing`) values (46,'2021-04-27 12:15:45','小说类型6');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueshengzhanghao` varchar(200) NOT NULL COMMENT '学生账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `suoshubanji` varchar(200) DEFAULT NULL COMMENT '所属班级',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xueshengzhanghao` (`xueshengzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619500851371 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xueshengzhanghao`,`mima`,`xueshengxingming`,`xingbie`,`lianxifangshi`,`shenfenzheng`,`youxiang`,`suoshubanji`,`touxiang`) values (11,'2021-04-27 12:15:45','学生1','123456','学生姓名1','女','13823888881','440300199101010001','773890001@qq.com','所属班级1','http://localhost:8080/ssm7i245/upload/xuesheng_touxiang1.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xueshengzhanghao`,`mima`,`xueshengxingming`,`xingbie`,`lianxifangshi`,`shenfenzheng`,`youxiang`,`suoshubanji`,`touxiang`) values (12,'2021-04-27 12:15:45','学生2','123456','学生姓名2','男','13823888882','440300199202020002','773890002@qq.com','所属班级2','http://localhost:8080/ssm7i245/upload/xuesheng_touxiang2.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xueshengzhanghao`,`mima`,`xueshengxingming`,`xingbie`,`lianxifangshi`,`shenfenzheng`,`youxiang`,`suoshubanji`,`touxiang`) values (13,'2021-04-27 12:15:45','学生3','123456','学生姓名3','男','13823888883','440300199303030003','773890003@qq.com','所属班级3','http://localhost:8080/ssm7i245/upload/xuesheng_touxiang3.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xueshengzhanghao`,`mima`,`xueshengxingming`,`xingbie`,`lianxifangshi`,`shenfenzheng`,`youxiang`,`suoshubanji`,`touxiang`) values (14,'2021-04-27 12:15:45','学生4','123456','学生姓名4','男','13823888884','440300199404040004','773890004@qq.com','所属班级4','http://localhost:8080/ssm7i245/upload/xuesheng_touxiang4.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xueshengzhanghao`,`mima`,`xueshengxingming`,`xingbie`,`lianxifangshi`,`shenfenzheng`,`youxiang`,`suoshubanji`,`touxiang`) values (15,'2021-04-27 12:15:45','学生5','123456','学生姓名5','男','13823888885','440300199505050005','773890005@qq.com','所属班级5','http://localhost:8080/ssm7i245/upload/xuesheng_touxiang5.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xueshengzhanghao`,`mima`,`xueshengxingming`,`xingbie`,`lianxifangshi`,`shenfenzheng`,`youxiang`,`suoshubanji`,`touxiang`) values (16,'2021-04-27 12:15:45','学生6','123456','学生姓名6','男','13823888886','440300199606060006','773890006@qq.com','所属班级6','http://localhost:8080/ssm7i245/upload/xuesheng_touxiang6.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xueshengzhanghao`,`mima`,`xueshengxingming`,`xingbie`,`lianxifangshi`,`shenfenzheng`,`youxiang`,`suoshubanji`,`touxiang`) values (1619500851370,'2021-04-27 13:20:51','123','1','小v','男','13923532031','123456789123456789','1234561231@qq.com','班级6','http://localhost:8080/ssm7i245/upload/1619501083298.jpg');

/*Table structure for table `zuoye` */

DROP TABLE IF EXISTS `zuoye`;

CREATE TABLE `zuoye` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `laoshizhanghao` varchar(200) DEFAULT NULL COMMENT '老师账号',
  `laoshixingming` varchar(200) DEFAULT NULL COMMENT '老师姓名',
  `xueshengzhanghao` varchar(200) DEFAULT NULL COMMENT '学生账号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `zuoyemingcheng` varchar(200) DEFAULT NULL COMMENT '作业名称',
  `zuoyeneirong` longtext COMMENT '作业内容',
  `zuoyefujian` varchar(200) DEFAULT NULL COMMENT '作业附件',
  `buzhishijian` datetime DEFAULT NULL COMMENT '布置时间',
  `xuwanchengshijian` datetime DEFAULT NULL COMMENT '需完成时间',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619501034086 DEFAULT CHARSET=utf8 COMMENT='作业';

/*Data for the table `zuoye` */

insert  into `zuoye`(`id`,`addtime`,`laoshizhanghao`,`laoshixingming`,`xueshengzhanghao`,`xueshengxingming`,`banji`,`zuoyemingcheng`,`zuoyeneirong`,`zuoyefujian`,`buzhishijian`,`xuwanchengshijian`,`tupian`) values (51,'2021-04-27 12:15:45','老师账号1','老师姓名1','学生账号1','学生姓名1','班级1','作业名称1','作业内容1','','2021-04-27 12:15:45','2021-04-27 12:15:45','http://localhost:8080/ssm7i245/upload/zuoye_tupian1.jpg');
insert  into `zuoye`(`id`,`addtime`,`laoshizhanghao`,`laoshixingming`,`xueshengzhanghao`,`xueshengxingming`,`banji`,`zuoyemingcheng`,`zuoyeneirong`,`zuoyefujian`,`buzhishijian`,`xuwanchengshijian`,`tupian`) values (52,'2021-04-27 12:15:45','老师账号2','老师姓名2','学生账号2','学生姓名2','班级2','作业名称2','作业内容2','','2021-04-27 12:15:45','2021-04-27 12:15:45','http://localhost:8080/ssm7i245/upload/zuoye_tupian2.jpg');
insert  into `zuoye`(`id`,`addtime`,`laoshizhanghao`,`laoshixingming`,`xueshengzhanghao`,`xueshengxingming`,`banji`,`zuoyemingcheng`,`zuoyeneirong`,`zuoyefujian`,`buzhishijian`,`xuwanchengshijian`,`tupian`) values (53,'2021-04-27 12:15:45','老师账号3','老师姓名3','学生账号3','学生姓名3','班级3','作业名称3','作业内容3','','2021-04-27 12:15:45','2021-04-27 12:15:45','http://localhost:8080/ssm7i245/upload/zuoye_tupian3.jpg');
insert  into `zuoye`(`id`,`addtime`,`laoshizhanghao`,`laoshixingming`,`xueshengzhanghao`,`xueshengxingming`,`banji`,`zuoyemingcheng`,`zuoyeneirong`,`zuoyefujian`,`buzhishijian`,`xuwanchengshijian`,`tupian`) values (54,'2021-04-27 12:15:45','老师账号4','老师姓名4','学生账号4','学生姓名4','班级4','作业名称4','作业内容4','','2021-04-27 12:15:45','2021-04-27 12:15:45','http://localhost:8080/ssm7i245/upload/zuoye_tupian4.jpg');
insert  into `zuoye`(`id`,`addtime`,`laoshizhanghao`,`laoshixingming`,`xueshengzhanghao`,`xueshengxingming`,`banji`,`zuoyemingcheng`,`zuoyeneirong`,`zuoyefujian`,`buzhishijian`,`xuwanchengshijian`,`tupian`) values (55,'2021-04-27 12:15:45','老师账号5','老师姓名5','学生账号5','学生姓名5','班级5','作业名称5','作业内容5','','2021-04-27 12:15:45','2021-04-27 12:15:45','http://localhost:8080/ssm7i245/upload/zuoye_tupian5.jpg');
insert  into `zuoye`(`id`,`addtime`,`laoshizhanghao`,`laoshixingming`,`xueshengzhanghao`,`xueshengxingming`,`banji`,`zuoyemingcheng`,`zuoyeneirong`,`zuoyefujian`,`buzhishijian`,`xuwanchengshijian`,`tupian`) values (56,'2021-04-27 12:15:45','老师账号6','老师姓名6','学生账号6','学生姓名6','班级6','作业名称6','作业内容6','','2021-04-27 12:15:45','2021-04-27 12:15:45','http://localhost:8080/ssm7i245/upload/zuoye_tupian6.jpg');
insert  into `zuoye`(`id`,`addtime`,`laoshizhanghao`,`laoshixingming`,`xueshengzhanghao`,`xueshengxingming`,`banji`,`zuoyemingcheng`,`zuoyeneirong`,`zuoyefujian`,`buzhishijian`,`xuwanchengshijian`,`tupian`) values (1619501034085,'2021-04-27 13:23:53','124','vivo','123','小v','班级6','作业','作业','http://localhost:8080/ssm7i245/upload/1619501020445.docx','2021-04-27 13:23:46','2021-04-28 00:00:00','http://localhost:8080/ssm7i245/upload/1619500962899.jpg');

/*Table structure for table `zuoyepigaixinxi` */

DROP TABLE IF EXISTS `zuoyepigaixinxi`;

CREATE TABLE `zuoyepigaixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `laoshizhanghao` varchar(200) DEFAULT NULL COMMENT '老师账号',
  `laoshixingming` varchar(200) DEFAULT NULL COMMENT '老师姓名',
  `xueshengzhanghao` varchar(200) DEFAULT NULL COMMENT '学生账号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `zuoyemingcheng` varchar(200) DEFAULT NULL COMMENT '作业名称',
  `zuoyeneirong` longtext COMMENT '作业内容',
  `buzhishijian` datetime DEFAULT NULL COMMENT '布置时间',
  `xuwanchengshijian` datetime DEFAULT NULL COMMENT '需完成时间',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `wanchengneirong` varchar(200) DEFAULT NULL COMMENT '完成内容',
  `shangchuanshijian` varchar(200) DEFAULT NULL COMMENT '上传时间',
  `zuoyedengji` varchar(200) DEFAULT NULL COMMENT '作业等级',
  `pigaibeizhu` longtext COMMENT '批改备注',
  `zuoyewanchengfujian` varchar(200) DEFAULT NULL COMMENT '作业完成附件',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619501204277 DEFAULT CHARSET=utf8 COMMENT='作业批改信息';

/*Data for the table `zuoyepigaixinxi` */

insert  into `zuoyepigaixinxi`(`id`,`addtime`,`laoshizhanghao`,`laoshixingming`,`xueshengzhanghao`,`xueshengxingming`,`banji`,`zuoyemingcheng`,`zuoyeneirong`,`buzhishijian`,`xuwanchengshijian`,`tupian`,`wanchengneirong`,`shangchuanshijian`,`zuoyedengji`,`pigaibeizhu`,`zuoyewanchengfujian`,`sfsh`,`shhf`) values (81,'2021-04-27 12:15:45','老师账号1','老师姓名1','学生账号1','学生姓名1','班级1','作业名称1','作业内容1','2021-04-27 12:15:45','2021-04-27 12:15:45','http://localhost:8080/ssm7i245/upload/zuoyepigaixinxi_tupian1.jpg','完成内容1','上传时间1','A','批改备注1','','是','');
insert  into `zuoyepigaixinxi`(`id`,`addtime`,`laoshizhanghao`,`laoshixingming`,`xueshengzhanghao`,`xueshengxingming`,`banji`,`zuoyemingcheng`,`zuoyeneirong`,`buzhishijian`,`xuwanchengshijian`,`tupian`,`wanchengneirong`,`shangchuanshijian`,`zuoyedengji`,`pigaibeizhu`,`zuoyewanchengfujian`,`sfsh`,`shhf`) values (82,'2021-04-27 12:15:45','老师账号2','老师姓名2','学生账号2','学生姓名2','班级2','作业名称2','作业内容2','2021-04-27 12:15:45','2021-04-27 12:15:45','http://localhost:8080/ssm7i245/upload/zuoyepigaixinxi_tupian2.jpg','完成内容2','上传时间2','A','批改备注2','','是','');
insert  into `zuoyepigaixinxi`(`id`,`addtime`,`laoshizhanghao`,`laoshixingming`,`xueshengzhanghao`,`xueshengxingming`,`banji`,`zuoyemingcheng`,`zuoyeneirong`,`buzhishijian`,`xuwanchengshijian`,`tupian`,`wanchengneirong`,`shangchuanshijian`,`zuoyedengji`,`pigaibeizhu`,`zuoyewanchengfujian`,`sfsh`,`shhf`) values (83,'2021-04-27 12:15:45','老师账号3','老师姓名3','学生账号3','学生姓名3','班级3','作业名称3','作业内容3','2021-04-27 12:15:45','2021-04-27 12:15:45','http://localhost:8080/ssm7i245/upload/zuoyepigaixinxi_tupian3.jpg','完成内容3','上传时间3','A','批改备注3','','是','');
insert  into `zuoyepigaixinxi`(`id`,`addtime`,`laoshizhanghao`,`laoshixingming`,`xueshengzhanghao`,`xueshengxingming`,`banji`,`zuoyemingcheng`,`zuoyeneirong`,`buzhishijian`,`xuwanchengshijian`,`tupian`,`wanchengneirong`,`shangchuanshijian`,`zuoyedengji`,`pigaibeizhu`,`zuoyewanchengfujian`,`sfsh`,`shhf`) values (84,'2021-04-27 12:15:45','老师账号4','老师姓名4','学生账号4','学生姓名4','班级4','作业名称4','作业内容4','2021-04-27 12:15:45','2021-04-27 12:15:45','http://localhost:8080/ssm7i245/upload/zuoyepigaixinxi_tupian4.jpg','完成内容4','上传时间4','A','批改备注4','','是','');
insert  into `zuoyepigaixinxi`(`id`,`addtime`,`laoshizhanghao`,`laoshixingming`,`xueshengzhanghao`,`xueshengxingming`,`banji`,`zuoyemingcheng`,`zuoyeneirong`,`buzhishijian`,`xuwanchengshijian`,`tupian`,`wanchengneirong`,`shangchuanshijian`,`zuoyedengji`,`pigaibeizhu`,`zuoyewanchengfujian`,`sfsh`,`shhf`) values (85,'2021-04-27 12:15:45','老师账号5','老师姓名5','学生账号5','学生姓名5','班级5','作业名称5','作业内容5','2021-04-27 12:15:45','2021-04-27 12:15:45','http://localhost:8080/ssm7i245/upload/zuoyepigaixinxi_tupian5.jpg','完成内容5','上传时间5','A','批改备注5','','是','');
insert  into `zuoyepigaixinxi`(`id`,`addtime`,`laoshizhanghao`,`laoshixingming`,`xueshengzhanghao`,`xueshengxingming`,`banji`,`zuoyemingcheng`,`zuoyeneirong`,`buzhishijian`,`xuwanchengshijian`,`tupian`,`wanchengneirong`,`shangchuanshijian`,`zuoyedengji`,`pigaibeizhu`,`zuoyewanchengfujian`,`sfsh`,`shhf`) values (86,'2021-04-27 12:15:45','老师账号6','老师姓名6','学生账号6','学生姓名6','班级6','作业名称6','作业内容6','2021-04-27 12:15:45','2021-04-27 12:15:45','http://localhost:8080/ssm7i245/upload/zuoyepigaixinxi_tupian6.jpg','完成内容6','上传时间6','A','批改备注6','','是','');
insert  into `zuoyepigaixinxi`(`id`,`addtime`,`laoshizhanghao`,`laoshixingming`,`xueshengzhanghao`,`xueshengxingming`,`banji`,`zuoyemingcheng`,`zuoyeneirong`,`buzhishijian`,`xuwanchengshijian`,`tupian`,`wanchengneirong`,`shangchuanshijian`,`zuoyedengji`,`pigaibeizhu`,`zuoyewanchengfujian`,`sfsh`,`shhf`) values (1619501204276,'2021-04-27 13:26:43','124','vivo','123','小v','班级6','作业','作业','2021-04-27 13:23:46','2021-04-28 00:00:00','http://localhost:8080/ssm7i245/upload/1619500962899.jpg','<p>作业完成</p>','2021-04-27 13:25:38','A','很好','http://localhost:8080/ssm7i245/upload/1619501144890.docx','是','');

/*Table structure for table `zuoyewanchengxinxi` */

DROP TABLE IF EXISTS `zuoyewanchengxinxi`;

CREATE TABLE `zuoyewanchengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `laoshizhanghao` varchar(200) DEFAULT NULL COMMENT '老师账号',
  `laoshixingming` varchar(200) DEFAULT NULL COMMENT '老师姓名',
  `xueshengzhanghao` varchar(200) DEFAULT NULL COMMENT '学生账号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `zuoyemingcheng` varchar(200) DEFAULT NULL COMMENT '作业名称',
  `zuoyeneirong` longtext COMMENT '作业内容',
  `buzhishijian` varchar(200) DEFAULT NULL COMMENT '布置时间',
  `xuwanchengshijian` varchar(200) DEFAULT NULL COMMENT '需完成时间',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `wanchengneirong` longtext COMMENT '完成内容',
  `shangchuanshijian` datetime DEFAULT NULL COMMENT '上传时间',
  `zuoyewanchengfujian` varchar(200) DEFAULT NULL COMMENT '作业完成附件',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619501154025 DEFAULT CHARSET=utf8 COMMENT='作业完成信息';

/*Data for the table `zuoyewanchengxinxi` */

insert  into `zuoyewanchengxinxi`(`id`,`addtime`,`laoshizhanghao`,`laoshixingming`,`xueshengzhanghao`,`xueshengxingming`,`banji`,`zuoyemingcheng`,`zuoyeneirong`,`buzhishijian`,`xuwanchengshijian`,`tupian`,`wanchengneirong`,`shangchuanshijian`,`zuoyewanchengfujian`,`sfsh`,`shhf`) values (71,'2021-04-27 12:15:45','老师账号1','老师姓名1','学生账号1','学生姓名1','班级1','作业名称1','作业内容1','布置时间1','需完成时间1','http://localhost:8080/ssm7i245/upload/zuoyewanchengxinxi_tupian1.jpg','完成内容1','2021-04-27 12:15:45','','是','');
insert  into `zuoyewanchengxinxi`(`id`,`addtime`,`laoshizhanghao`,`laoshixingming`,`xueshengzhanghao`,`xueshengxingming`,`banji`,`zuoyemingcheng`,`zuoyeneirong`,`buzhishijian`,`xuwanchengshijian`,`tupian`,`wanchengneirong`,`shangchuanshijian`,`zuoyewanchengfujian`,`sfsh`,`shhf`) values (72,'2021-04-27 12:15:45','老师账号2','老师姓名2','学生账号2','学生姓名2','班级2','作业名称2','作业内容2','布置时间2','需完成时间2','http://localhost:8080/ssm7i245/upload/zuoyewanchengxinxi_tupian2.jpg','完成内容2','2021-04-27 12:15:45','','是','');
insert  into `zuoyewanchengxinxi`(`id`,`addtime`,`laoshizhanghao`,`laoshixingming`,`xueshengzhanghao`,`xueshengxingming`,`banji`,`zuoyemingcheng`,`zuoyeneirong`,`buzhishijian`,`xuwanchengshijian`,`tupian`,`wanchengneirong`,`shangchuanshijian`,`zuoyewanchengfujian`,`sfsh`,`shhf`) values (73,'2021-04-27 12:15:45','老师账号3','老师姓名3','学生账号3','学生姓名3','班级3','作业名称3','作业内容3','布置时间3','需完成时间3','http://localhost:8080/ssm7i245/upload/zuoyewanchengxinxi_tupian3.jpg','完成内容3','2021-04-27 12:15:45','','是','');
insert  into `zuoyewanchengxinxi`(`id`,`addtime`,`laoshizhanghao`,`laoshixingming`,`xueshengzhanghao`,`xueshengxingming`,`banji`,`zuoyemingcheng`,`zuoyeneirong`,`buzhishijian`,`xuwanchengshijian`,`tupian`,`wanchengneirong`,`shangchuanshijian`,`zuoyewanchengfujian`,`sfsh`,`shhf`) values (74,'2021-04-27 12:15:45','老师账号4','老师姓名4','学生账号4','学生姓名4','班级4','作业名称4','作业内容4','布置时间4','需完成时间4','http://localhost:8080/ssm7i245/upload/zuoyewanchengxinxi_tupian4.jpg','完成内容4','2021-04-27 12:15:45','','是','');
insert  into `zuoyewanchengxinxi`(`id`,`addtime`,`laoshizhanghao`,`laoshixingming`,`xueshengzhanghao`,`xueshengxingming`,`banji`,`zuoyemingcheng`,`zuoyeneirong`,`buzhishijian`,`xuwanchengshijian`,`tupian`,`wanchengneirong`,`shangchuanshijian`,`zuoyewanchengfujian`,`sfsh`,`shhf`) values (75,'2021-04-27 12:15:45','老师账号5','老师姓名5','学生账号5','学生姓名5','班级5','作业名称5','作业内容5','布置时间5','需完成时间5','http://localhost:8080/ssm7i245/upload/zuoyewanchengxinxi_tupian5.jpg','完成内容5','2021-04-27 12:15:45','','是','');
insert  into `zuoyewanchengxinxi`(`id`,`addtime`,`laoshizhanghao`,`laoshixingming`,`xueshengzhanghao`,`xueshengxingming`,`banji`,`zuoyemingcheng`,`zuoyeneirong`,`buzhishijian`,`xuwanchengshijian`,`tupian`,`wanchengneirong`,`shangchuanshijian`,`zuoyewanchengfujian`,`sfsh`,`shhf`) values (76,'2021-04-27 12:15:45','老师账号6','老师姓名6','学生账号6','学生姓名6','班级6','作业名称6','作业内容6','布置时间6','需完成时间6','http://localhost:8080/ssm7i245/upload/zuoyewanchengxinxi_tupian6.jpg','完成内容6','2021-04-27 12:15:45','','是','');
insert  into `zuoyewanchengxinxi`(`id`,`addtime`,`laoshizhanghao`,`laoshixingming`,`xueshengzhanghao`,`xueshengxingming`,`banji`,`zuoyemingcheng`,`zuoyeneirong`,`buzhishijian`,`xuwanchengshijian`,`tupian`,`wanchengneirong`,`shangchuanshijian`,`zuoyewanchengfujian`,`sfsh`,`shhf`) values (1619501154024,'2021-04-27 13:25:53','124','vivo','123','小v','班级6','作业','作业','2021-04-27 13:23:46','2021-04-28 00:00:00','http://localhost:8080/ssm7i245/upload/1619500962899.jpg','<p>作业完成</p>','2021-04-27 13:25:38','http://localhost:8080/ssm7i245/upload/1619501144890.docx','是','');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
