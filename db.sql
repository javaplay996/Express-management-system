/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - kuaidiguanlixitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`kuaidiguanlixitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `kuaidiguanlixitong`;

/*Table structure for table `cheliang` */

DROP TABLE IF EXISTS `cheliang`;

CREATE TABLE `cheliang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `cheliang_name` varchar(200) DEFAULT NULL COMMENT '车辆名字 Search111 ',
  `cheliang_leixing_types` int(11) DEFAULT NULL COMMENT '车辆类型 Search111 ',
  `cheliang_number` varchar(200) DEFAULT NULL COMMENT '车辆编号 Search111 ',
  `cheliang_content` text COMMENT '车辆详情',
  `cheliang_types` int(11) DEFAULT NULL COMMENT '是否使用 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='车辆';

/*Data for the table `cheliang` */

insert  into `cheliang`(`id`,`cheliang_name`,`cheliang_leixing_types`,`cheliang_number`,`cheliang_content`,`cheliang_types`,`create_time`) values (1,'车辆1',3,'010','车辆1的车辆详情\r\n',1,'2021-04-16 13:33:12'),(2,'车辆2',1,'102','车辆2的详情\r\n',2,'2021-04-16 13:34:47'),(3,'车辆3',4,'101','车辆3的详情\r\n',1,'2021-04-16 14:15:41'),(4,'车辆4',3,'1011','车辆4的详情\r\n',1,'2021-04-16 14:16:12');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `diaodu` */

DROP TABLE IF EXISTS `diaodu`;

CREATE TABLE `diaodu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `cheliang_id` int(11) DEFAULT NULL COMMENT '车辆',
  `diaodu_start` varchar(200) DEFAULT NULL COMMENT '始发站 Search111 ',
  `diaodu_end` varchar(200) DEFAULT NULL COMMENT '目的地 Search111 ',
  `diaodu_types` int(11) DEFAULT NULL COMMENT '是否使用 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='车辆调度';

/*Data for the table `diaodu` */

insert  into `diaodu`(`id`,`cheliang_id`,`diaodu_start`,`diaodu_end`,`diaodu_types`,`create_time`) values (1,2,'郑州','北京',1,'2021-04-16 13:36:28'),(2,4,'北京','上海',1,'2021-04-16 14:16:28');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别类型名称',1,'男',NULL,'2021-04-16 11:06:46'),(2,'sex_types','性别类型名称',2,'女',NULL,'2021-04-16 11:06:46'),(3,'quyu_types','区域类型名称',1,'区域1',NULL,'2021-04-16 11:06:46'),(4,'quyu_types','区域类型名称',2,'区域2',NULL,'2021-04-16 11:06:46'),(5,'kuaidi_types','是否签收类型名称',1,'签收',NULL,'2021-04-16 11:06:47'),(6,'kuaidi_types','是否签收类型名称',2,'未签收',NULL,'2021-04-16 11:06:47'),(7,'cheliang_leixing_types','车辆类型名称',1,'大型',NULL,'2021-04-16 11:06:47'),(8,'cheliang_leixing_types','车辆类型名称',2,'中型',NULL,'2021-04-16 11:06:47'),(9,'cheliang_leixing_types','车辆类型名称',3,'小型',NULL,'2021-04-16 11:06:47'),(10,'cheliang_types','是否使用',1,'使用',NULL,'2021-04-16 11:06:47'),(11,'cheliang_types','是否使用',2,'未使用',NULL,'2021-04-16 11:06:47'),(12,'diaodu_types','调度类型名称',1,'启用',NULL,'2021-04-16 11:06:47'),(13,'diaodu_types','调度类型名称',2,'停用',NULL,'2021-04-16 11:06:47'),(14,'news_types','新闻类型名称',1,'日常新闻',NULL,'2021-04-16 11:06:47'),(15,'news_types','新闻类型名称',2,'紧急新闻',NULL,'2021-04-16 11:06:47'),(16,'news_types','新闻类型名称',3,'通知新闻',NULL,'2021-04-16 11:06:47'),(17,'cheliang_leixing_types','车辆类型名称',4,'车辆类型4',NULL,'2021-04-16 13:52:52'),(18,'quyu_types','区域类型名称',3,'区域3',NULL,'2021-04-16 14:19:47');

/*Table structure for table `kuaidi` */

DROP TABLE IF EXISTS `kuaidi`;

CREATE TABLE `kuaidi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `kuaidi_number` varchar(200) DEFAULT NULL COMMENT '快递单号 Search111 ',
  `kuaidi_name` varchar(200) DEFAULT NULL COMMENT '运送物品 Search111 ',
  `kuaidi_money` int(11) DEFAULT NULL COMMENT '快递金额 Search111 ',
  `kuaidi_content` text COMMENT '快递详细内容',
  `kuaidi_this_value` varchar(200) DEFAULT NULL COMMENT '快递最新物流状态 Search111 ',
  `kuaidi_types` int(11) DEFAULT NULL COMMENT '是否签收',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '快递时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='快递';

/*Data for the table `kuaidi` */

insert  into `kuaidi`(`id`,`yonghu_id`,`kuaidi_number`,`kuaidi_name`,`kuaidi_money`,`kuaidi_content`,`kuaidi_this_value`,`kuaidi_types`,`insert_time`,`create_time`) values (1,2,'1618544795224','水果',10,'运送的水果\r\n','签收',1,'2021-03-16 11:47:00','2021-03-16 11:47:00'),(2,3,'1618553315851','笔记本',100,'笔记本电脑\r\n','签收',1,'2021-04-16 14:08:57','2021-04-16 14:08:57');

/*Table structure for table `kuaidi_list` */

DROP TABLE IF EXISTS `kuaidi_list`;

CREATE TABLE `kuaidi_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kuaidi_id` int(11) DEFAULT NULL COMMENT '快递',
  `kuaidi_list_name` varchar(200) DEFAULT NULL COMMENT '物流状态 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='快递详情';

/*Data for the table `kuaidi_list` */

insert  into `kuaidi_list`(`id`,`kuaidi_id`,`kuaidi_list_name`,`insert_time`,`create_time`) values (1,1,'物流1','2021-04-16 12:00:38','2021-04-16 12:00:38'),(2,1,'物流2','2021-04-16 13:05:14','2021-04-16 13:05:14'),(4,1,'物流三','2021-04-16 13:27:48','2021-04-16 13:27:48'),(5,1,'签收','2021-04-16 13:27:55','2021-04-16 13:27:55'),(6,2,'笔记本','2021-04-16 14:08:57','2021-04-16 14:08:57'),(7,2,'物流点1','2021-04-16 14:11:52','2021-04-16 14:11:52'),(8,2,'物流点2','2021-04-16 14:12:08','2021-04-16 14:12:08'),(9,2,'签收','2021-04-16 14:12:25','2021-04-16 14:12:25');

/*Table structure for table `liuyan` */

DROP TABLE IF EXISTS `liuyan`;

CREATE TABLE `liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `liuyan_name` varchar(200) DEFAULT NULL COMMENT '留言标题 Search111 ',
  `liuyan_content` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间 Search111 ',
  `reply_content` text COMMENT '回复内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='留言';

/*Data for the table `liuyan` */

insert  into `liuyan`(`id`,`yonghu_id`,`liuyan_name`,`liuyan_content`,`insert_time`,`reply_content`,`create_time`) values (3,1,'留言1','留言1的详情\r\n','2021-04-16 13:48:01','‍回复1的详情\r\n','2021-04-16 13:48:01'),(4,2,'账号2的留言','账号2的留言详情\r\n','2021-04-16 14:17:05','‍回复2<img src=\"http://localhost:8080/kuaidiguanlixitong/upload/1618553866284.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/kuaidiguanlixitong/upload/1618553866284.jpg\">\r\n','2021-04-16 14:17:05');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻名称 Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '新闻类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '新闻时间',
  `news_content` text COMMENT '新闻详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='快递新闻';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`insert_time`,`news_content`,`create_time`) values (3,'新闻1',2,'2021-04-16 14:18:59','快递内容\r\n','2021-04-16 14:18:59'),(4,'新闻2',1,'2021-04-16 14:19:10','新闻2的详情\r\n','2021-04-16 14:19:10');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','ufdu6mku47hro7fr0rcz2vq5a0pm2yi2','2021-04-16 11:22:28','2021-04-16 15:18:38'),(2,1,'a1','yonghu','用户','magea69xwi7a99ger90gdqxl6eflr60y','2021-04-16 13:39:26','2021-04-16 14:39:27'),(3,2,'a2','yonghu','用户','37f6zkyatkaxf1e9qvmu3exe9p3k1e28','2021-04-16 14:16:42','2021-04-16 15:20:00');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-01-29 14:51:13');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号 Search111 ',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `quyu_types` int(11) DEFAULT NULL COMMENT '区域',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`quyu_types`,`create_time`) values (1,'a1','123456','张1','17703786901','410224199610232001','http://localhost:8080/kuaidiguanlixitong/file/download?fileName=1618543536703.jpg',2,2,'2021-04-16 11:25:39'),(2,'a2','123456','张2222','17703786902','410224199610232002','http://localhost:8080/kuaidiguanlixitong/file/download?fileName=1618543557658.jpg',1,3,'2021-04-16 11:26:01'),(3,'a3','123456','张3','17703786903','410224199610232003','http://localhost:8080/kuaidiguanlixitong/file/download?fileName=1618552468647.jpg',2,1,'2021-04-16 13:54:39');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
