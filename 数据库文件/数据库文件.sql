/*
Navicat MySQL Data Transfer

Source Server         : xampp
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : a0922095059

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-06-29 17:46:46
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `tb_admin`
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin`;
CREATE TABLE `tb_admin` (
  `admin` int(15) NOT NULL COMMENT '管理员id',
  `a_mobile` varchar(11) NOT NULL COMMENT '手机号码',
  `a_pwd` varchar(255) NOT NULL COMMENT '密码',
  `zhanghao` varchar(255) NOT NULL COMMENT '账号',
  PRIMARY KEY (`admin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='送水系统的管理员表';

-- ----------------------------
-- Records of tb_admin
-- ----------------------------
INSERT INTO tb_admin VALUES ('1', '15886546661', '123', '123');

-- ----------------------------
-- Table structure for `tb_bad`
-- ----------------------------
DROP TABLE IF EXISTS `tb_bad`;
CREATE TABLE `tb_bad` (
  `bad` int(15) NOT NULL AUTO_INCREMENT COMMENT '坏桶id',
  `tzs` int(15) NOT NULL COMMENT '桶装水id',
  `tb_shounum` int(15) NOT NULL COMMENT '收取数量',
  PRIMARY KEY (`bad`),
  KEY `_tzs` (`tzs`),
  CONSTRAINT `_tzs` FOREIGN KEY (`tzs`) REFERENCES `tb_tzs` (`tzs`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='送水系统的坏桶表';

-- ----------------------------
-- Records of tb_bad
-- ----------------------------
INSERT INTO tb_bad VALUES ('4', '1', '6');
INSERT INTO tb_bad VALUES ('5', '2', '1');
INSERT INTO tb_bad VALUES ('6', '14', '1');
INSERT INTO tb_bad VALUES ('7', '5', '2');
INSERT INTO tb_bad VALUES ('8', '4', '1');

-- ----------------------------
-- Table structure for `tb_chuli`
-- ----------------------------
DROP TABLE IF EXISTS `tb_chuli`;
CREATE TABLE `tb_chuli` (
  `chuli_id` int(15) NOT NULL AUTO_INCREMENT COMMENT '处理id，主键',
  `order_id` varchar(255) NOT NULL COMMENT '订单id，外键，为订单表的主键',
  `worker` int(15) NOT NULL COMMENT '正常配送工号，外键，为工人表的主键',
  `fahuoadmin` int(15) NOT NULL COMMENT '管理员id，外键，为管理员表的主键',
  `fahuotime` varchar(255) NOT NULL COMMENT '发货时间',
  `shoukadmin` int(15) DEFAULT NULL COMMENT '管理员id，外键，为管理员表的主键',
  `shouktime` varchar(255) DEFAULT NULL COMMENT '收款时间',
  `badTzsWorker` int(15) DEFAULT NULL COMMENT '坏桶情况下的配送工号，外键，为工人表的主键.为null时为正常',
  PRIMARY KEY (`chuli_id`),
  KEY `order_id` (`order_id`),
  KEY `c_admin` (`fahuoadmin`),
  KEY `c_worker` (`worker`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='送水系统的处理表';

-- ----------------------------
-- Records of tb_chuli
-- ----------------------------
INSERT INTO tb_chuli VALUES ('8', '178456555541577983437', '3', '123', '2020-01-02 18:35:46', '123', '2020-01-03 03:59:16', '6');
INSERT INTO tb_chuli VALUES ('9', '154356794561577979510', '6', '123', '2020-01-02 18:35:53', '123', '2020-01-03 03:47:31', '4');
INSERT INTO tb_chuli VALUES ('10', '155555555521577961603', '1', '123', '2020-01-02 19:05:10', '123', '2020-01-02 20:25:38', '4');
INSERT INTO tb_chuli VALUES ('13', '155555555551577979742', '2', '123', '2020-01-02 19:15:29', '123', '2020-01-04 12:45:17', null);
INSERT INTO tb_chuli VALUES ('14', '178456123451577994900', '2', '123', '2020-01-03 04:00:20', '123', '2020-01-03 04:00:58', '2');
INSERT INTO tb_chuli VALUES ('15', '178456555541577979914', '1', '123', '2020-01-03 04:02:48', '123', '2020-01-03 04:03:49', '6');
INSERT INTO tb_chuli VALUES ('16', '178456123451577977665', '3', '123', '2020-01-03 04:03:10', '123', '2020-01-03 04:03:23', null);
INSERT INTO tb_chuli VALUES ('17', '155454545451578020786', '6', '123', '2020-01-03 04:06:43', '123', '2020-01-03 04:16:04', null);
INSERT INTO tb_chuli VALUES ('18', '155454545451578020755', '2', '123', '2020-01-03 04:06:51', '123', '2020-01-03 04:14:47', null);
INSERT INTO tb_chuli VALUES ('19', '155879546211578020703', '6', '123', '2020-01-03 04:16:57', '123', '2020-01-04 13:26:55', null);
INSERT INTO tb_chuli VALUES ('20', '178456123451578033395', '4', '123', '2020-01-06 20:36:44', '123', '2020-01-06 20:36:58', null);
INSERT INTO tb_chuli VALUES ('21', '178456123451578033218', '3', '123', '2020-01-06 20:36:50', '123', '2020-01-06 20:37:03', null);
INSERT INTO tb_chuli VALUES ('22', '178456555541578320595', '2', '0', '2020-01-06 22:53:36', '123', '2020-01-07 03:31:59', null);
INSERT INTO tb_chuli VALUES ('23', '178456555541578320709', '1', '123', '2020-01-07 03:33:30', '123', '2020-06-29 07:59:07', null);
INSERT INTO tb_chuli VALUES ('24', '', '0', '123', '2020-01-07 06:11:00', '123', '2020-01-07 07:05:58', null);
INSERT INTO tb_chuli VALUES ('25', '155555555551578318450', '1', '123', '2020-01-07 06:12:33', '123', '2020-06-29 07:29:44', null);
INSERT INTO tb_chuli VALUES ('26', '178456123451577977665', '3', '123', '2020-06-27 04:33:38', null, null, null);
INSERT INTO tb_chuli VALUES ('27', '155454545451578020670', '6', '123', '2020-06-27 04:40:17', '123', '2020-06-29 07:48:29', null);
INSERT INTO tb_chuli VALUES ('28', '178456555541578416809', '6', '123', '2020-06-27 04:45:33', '123', '2020-06-29 07:33:09', null);
INSERT INTO tb_chuli VALUES ('29', '178456555541593408745', '2', '123', '2020-06-29 07:32:58', '123', '2020-06-29 07:46:18', null);
INSERT INTO tb_chuli VALUES ('30', '178456555541578416809', '6', '123', '2020-06-29 07:33:04', '123', '2020-06-29 07:33:09', null);
INSERT INTO tb_chuli VALUES ('31', '155454545451578349316', '3', '123', '2020-06-29 07:47:40', '123', '2020-06-29 07:47:56', null);
INSERT INTO tb_chuli VALUES ('32', '155454545451578020670', '6', '123', '2020-06-29 07:47:49', '123', '2020-06-29 07:48:29', null);
INSERT INTO tb_chuli VALUES ('33', '178456555541593408662', '2', '123', '2020-06-29 07:53:45', '123', '2020-06-29 07:53:49', null);
INSERT INTO tb_chuli VALUES ('34', '178456555541593410098', '3', '123', '2020-06-29 07:55:16', '123', '2020-06-29 07:55:21', null);
INSERT INTO tb_chuli VALUES ('35', '178456123451577977665', '3', '123', '2020-06-29 07:59:15', null, null, null);
INSERT INTO tb_chuli VALUES ('36', '178456555541592833738', '3', '123', '2020-06-29 08:09:11', null, null, null);

-- ----------------------------
-- Table structure for `tb_comment`
-- ----------------------------
DROP TABLE IF EXISTS `tb_comment`;
CREATE TABLE `tb_comment` (
  `comment` int(15) NOT NULL COMMENT '评价id，主键',
  `tzs` int(15) NOT NULL COMMENT '桶装水id，外键，为桶装水表的主键',
  `order` int(15) NOT NULL COMMENT '订单id，外键，为订单表的主键',
  `nickname` varchar(255) NOT NULL COMMENT '昵称，外键，为用户表的主键',
  `pjtext` varchar(255) NOT NULL COMMENT '评价内容',
  `pjtime` varchar(255) NOT NULL COMMENT '评价时间',
  PRIMARY KEY (`comment`),
  KEY `c_tzs` (`tzs`),
  KEY `c_order` (`order`),
  CONSTRAINT `c_order` FOREIGN KEY (`order`) REFERENCES `提交时间` (`order_id`),
  CONSTRAINT `c_tzs` FOREIGN KEY (`tzs`) REFERENCES `tb_tzs` (`tzs`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='送水系统的评价表';

-- ----------------------------
-- Records of tb_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_empty`
-- ----------------------------
DROP TABLE IF EXISTS `tb_empty`;
CREATE TABLE `tb_empty` (
  `empty` int(15) NOT NULL AUTO_INCREMENT COMMENT '空桶id',
  `tzs` int(15) NOT NULL COMMENT '桶装水id',
  `e_shounum` int(15) DEFAULT NULL COMMENT '收取数量',
  `buyemptynum` int(15) DEFAULT NULL COMMENT '购买数量',
  `empjinjia` varchar(255) NOT NULL COMMENT '进价',
  `empmaijia` varchar(255) NOT NULL COMMENT '卖价',
  PRIMARY KEY (`empty`),
  KEY `tzs2` (`tzs`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='送水系统的空桶表';

-- ----------------------------
-- Records of tb_empty
-- ----------------------------
INSERT INTO tb_empty VALUES ('7', '1', '21', null, '', '');
INSERT INTO tb_empty VALUES ('8', '2', '27', null, '', '');
INSERT INTO tb_empty VALUES ('9', '4', '11', null, '', '');
INSERT INTO tb_empty VALUES ('10', '5', '30', null, '', '');
INSERT INTO tb_empty VALUES ('11', '14', '8', null, '', '');

-- ----------------------------
-- Table structure for `tb_jinhuo`
-- ----------------------------
DROP TABLE IF EXISTS `tb_jinhuo`;
CREATE TABLE `tb_jinhuo` (
  `jinhuo_id` int(15) NOT NULL AUTO_INCREMENT COMMENT '进货id，主键',
  `tzs` int(15) NOT NULL COMMENT '桶装水id，外键，为桶装水表的主键',
  `admin` int(15) NOT NULL COMMENT '管理员id，外键，为管理员表的主键',
  `jinhuotime` varchar(255) NOT NULL COMMENT '进货时间',
  `jinhuonum` int(15) NOT NULL COMMENT '进货数量',
  PRIMARY KEY (`jinhuo_id`),
  KEY `j_tzs` (`tzs`),
  KEY `j_admin` (`admin`)
) ENGINE=InnoDB AUTO_INCREMENT=201811 DEFAULT CHARSET=utf8 COMMENT='送水系统的进货表';

-- ----------------------------
-- Records of tb_jinhuo
-- ----------------------------
INSERT INTO tb_jinhuo VALUES ('5', '14', '123', '2020-01-02 16:42:30', '800');
INSERT INTO tb_jinhuo VALUES ('201808', '24', '123', '2020-01-07 01:30:44', '560');
INSERT INTO tb_jinhuo VALUES ('201810', '24', '123', '2020-01-07 02:29:49', '50');

-- ----------------------------
-- Table structure for `tb_order`
-- ----------------------------
DROP TABLE IF EXISTS `tb_order`;
CREATE TABLE `tb_order` (
  `order_id` varchar(255) NOT NULL COMMENT '订单id，主键',
  `u_nickname` varchar(255) NOT NULL COMMENT '昵称，外键，为tb_user用户表的主键',
  `amount` float(8,0) NOT NULL COMMENT '支付总金额',
  `status` enum('1','2','3','0') NOT NULL DEFAULT '0' COMMENT '状态，0:未发货，1：已发货，2：已完成，3：坏桶',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '提交时间',
  `remind_status` int(11) NOT NULL DEFAULT '0' COMMENT '催单显示状态0表示为催单1表示显示催单',
  `remind_time` datetime DEFAULT NULL COMMENT '催单时间',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_order
-- ----------------------------
INSERT INTO tb_order VALUES ('154356794561577979510', '111', '1185', '3', '2020-01-02 16:38:30', '0', null);
INSERT INTO tb_order VALUES ('155454545451578020670', '4563', '24', '2', '2020-01-03 04:04:30', '0', null);
INSERT INTO tb_order VALUES ('155454545451578020755', '4563', '30', '2', '2020-01-03 04:05:55', '0', null);
INSERT INTO tb_order VALUES ('155454545451578020786', '4563', '27', '2', '2020-01-03 04:06:26', '0', null);
INSERT INTO tb_order VALUES ('155454545451578349316', '4563', '306', '2', '2020-01-07 06:21:56', '0', null);
INSERT INTO tb_order VALUES ('155555555521577961603', '什么', '54', '3', '2020-01-02 11:40:03', '0', null);
INSERT INTO tb_order VALUES ('155555555551577979742', '心', '288', '2', '2020-01-02 16:42:22', '0', null);
INSERT INTO tb_order VALUES ('155555555551578318450', '心', '27', '2', '2020-01-06 21:47:30', '0', null);
INSERT INTO tb_order VALUES ('155879546211578020703', '精神小伙', '52920', '2', '2020-04-24 04:05:03', '0', null);
INSERT INTO tb_order VALUES ('155987456121593411769', '111', '75', '0', '2020-06-29 08:22:49', '1', '2020-06-29 08:24:10');
INSERT INTO tb_order VALUES ('155987456121593411842', '111', '30', '0', '2020-06-29 08:24:02', '1', '2020-06-29 08:24:09');
INSERT INTO tb_order VALUES ('178456123451577977665', 'lolo', '144', '1', '2020-01-02 16:07:45', '0', null);
INSERT INTO tb_order VALUES ('178456123451577994900', 'lolo', '27', '3', '2020-01-02 20:55:00', '0', null);
INSERT INTO tb_order VALUES ('178456123451578033218', 'lolo', '18', '2', '2020-01-03 07:33:38', '0', null);
INSERT INTO tb_order VALUES ('178456123451578033395', 'lolo', '24', '2', '2020-01-03 07:36:35', '0', null);
INSERT INTO tb_order VALUES ('178456555541577979914', '222', '273', '3', '2020-01-02 16:45:14', '0', null);
INSERT INTO tb_order VALUES ('178456555541577983437', '222', '303', '3', '2020-01-02 17:43:57', '0', null);
INSERT INTO tb_order VALUES ('178456555541578320595', '222', '144', '2', '2020-01-06 22:23:15', '0', null);
INSERT INTO tb_order VALUES ('178456555541578320709', '222', '252', '2', '2020-01-06 22:25:09', '0', null);
INSERT INTO tb_order VALUES ('178456555541578416809', '222', '18', '2', '2020-01-08 01:06:49', '1', '2020-06-29 07:32:38');
INSERT INTO tb_order VALUES ('178456555541592833738', '222', '54', '1', '2020-06-24 19:30:00', '1', '2020-06-29 08:09:02');
INSERT INTO tb_order VALUES ('178456555541593408662', '222', '45290', '2', '2020-06-29 07:31:02', '1', '2020-06-29 07:32:42');
INSERT INTO tb_order VALUES ('178456555541593408745', '222', '96', '2', '2020-06-29 07:32:25', '1', '2020-06-29 07:32:43');
INSERT INTO tb_order VALUES ('178456555541593410085', '222', '105', '0', '2020-05-20 07:54:45', '0', null);
INSERT INTO tb_order VALUES ('178456555541593410098', '222', '12590', '2', '2020-05-16 13:57:49', '1', '2020-06-29 07:55:05');
INSERT INTO tb_order VALUES ('178456555541593410969', '222', '42', '0', '2020-06-29 08:09:29', '0', null);
INSERT INTO tb_order VALUES ('178456555541593411739', '222', '30', '0', '2020-06-29 08:22:19', '0', null);

-- ----------------------------
-- Table structure for `tb_order_details`
-- ----------------------------
DROP TABLE IF EXISTS `tb_order_details`;
CREATE TABLE `tb_order_details` (
  `details_id` int(15) NOT NULL AUTO_INCREMENT COMMENT '订单详情id，主键',
  `order_id` varchar(255) NOT NULL COMMENT '订单id，外键，为订单的主键',
  `tzs` int(15) NOT NULL COMMENT '桶装水id，外键，为桶装水表的主键',
  `o_num` int(15) NOT NULL COMMENT '购买数量',
  `xiaoji` int(15) NOT NULL COMMENT '小计',
  `bad_num` int(15) DEFAULT NULL COMMENT '坏桶的数量，为NULL时为正常的',
  PRIMARY KEY (`details_id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_order_details
-- ----------------------------
INSERT INTO tb_order_details VALUES ('58', '155555555521577961603', '1', '1', '30', '1');
INSERT INTO tb_order_details VALUES ('59', '155555555521577961603', '2', '1', '24', '1');
INSERT INTO tb_order_details VALUES ('60', '178456123451577977665', '1', '4', '120', '1');
INSERT INTO tb_order_details VALUES ('61', '178456123451577977665', '2', '1', '24', null);
INSERT INTO tb_order_details VALUES ('62', '154356794561577979510', '1', '10', '300', '1');
INSERT INTO tb_order_details VALUES ('63', '154356794561577979510', '4', '20', '480', '1');
INSERT INTO tb_order_details VALUES ('64', '154356794561577979510', '5', '15', '405', '1');
INSERT INTO tb_order_details VALUES ('65', '155555555551577979742', '1', '4', '120', '1');
INSERT INTO tb_order_details VALUES ('66', '155555555551577979742', '2', '3', '72', null);
INSERT INTO tb_order_details VALUES ('67', '155555555551577979742', '4', '1', '24', '1');
INSERT INTO tb_order_details VALUES ('68', '155555555551577979742', '5', '2', '54', '1');
INSERT INTO tb_order_details VALUES ('69', '155555555551577979742', '14', '1', '18', '1');
INSERT INTO tb_order_details VALUES ('70', '178456555541577979914', '1', '5', '150', '1');
INSERT INTO tb_order_details VALUES ('71', '178456555541577979914', '4', '4', '96', '1');
INSERT INTO tb_order_details VALUES ('72', '178456555541577979914', '5', '1', '27', '1');
INSERT INTO tb_order_details VALUES ('73', '178456555541577983437', '1', '1', '30', '1');
INSERT INTO tb_order_details VALUES ('74', '178456555541577983437', '2', '2', '48', null);
INSERT INTO tb_order_details VALUES ('75', '178456555541577983437', '4', '3', '72', '1');
INSERT INTO tb_order_details VALUES ('76', '178456555541577983437', '5', '5', '135', '1');
INSERT INTO tb_order_details VALUES ('77', '178456555541577983437', '14', '1', '18', '1');
INSERT INTO tb_order_details VALUES ('81', '178456123451577994900', '5', '1', '27', '1');
INSERT INTO tb_order_details VALUES ('83', '155454545451578020670', '2', '1', '24', null);
INSERT INTO tb_order_details VALUES ('85', '155879546211578020703', '14', '1', '18', '1');
INSERT INTO tb_order_details VALUES ('86', '155454545451578020755', '1', '1', '30', '1');
INSERT INTO tb_order_details VALUES ('87', '155454545451578020786', '5', '1', '27', '1');
INSERT INTO tb_order_details VALUES ('88', '178456123451578033020', '14', '1', '18', '1');
INSERT INTO tb_order_details VALUES ('89', '178456123451578033025', '14', '1', '18', '1');
INSERT INTO tb_order_details VALUES ('90', '178456123451578033218', '14', '1', '18', '1');
INSERT INTO tb_order_details VALUES ('92', '178456123451578033395', '4', '1', '24', '1');
INSERT INTO tb_order_details VALUES ('93', '155555555551578318450', '5', '1', '27', '1');
INSERT INTO tb_order_details VALUES ('94', '178456555541578320270', '1', '4', '120', '1');
INSERT INTO tb_order_details VALUES ('95', '178456555541578320270', '4', '2', '48', null);
INSERT INTO tb_order_details VALUES ('96', '178456555541578320595', '1', '4', '120', '1');
INSERT INTO tb_order_details VALUES ('97', '178456555541578320595', '4', '1', '24', null);
INSERT INTO tb_order_details VALUES ('98', '178456555541578320709', '1', '2', '60', '1');
INSERT INTO tb_order_details VALUES ('99', '178456555541578320709', '2', '3', '72', null);
INSERT INTO tb_order_details VALUES ('100', '178456555541578320709', '4', '2', '48', null);
INSERT INTO tb_order_details VALUES ('101', '178456555541578320709', '5', '2', '54', '1');
INSERT INTO tb_order_details VALUES ('102', '178456555541578320709', '14', '1', '18', null);
INSERT INTO tb_order_details VALUES ('103', '155454545451578349316', '1', '5', '150', '1');
INSERT INTO tb_order_details VALUES ('104', '155454545451578349316', '5', '4', '108', null);
INSERT INTO tb_order_details VALUES ('105', '155454545451578349316', '2', '2', '48', null);
INSERT INTO tb_order_details VALUES ('106', '178456555541578416809', '14', '1', '18', null);
INSERT INTO tb_order_details VALUES ('107', '178456555541593408662', '1', '1', '30', null);
INSERT INTO tb_order_details VALUES ('108', '178456555541593408662', '2', '1', '24', null);
INSERT INTO tb_order_details VALUES ('109', '178456555541593408662', '5', '1', '27', null);
INSERT INTO tb_order_details VALUES ('110', '178456555541593408662', '14', '1', '18', null);
INSERT INTO tb_order_details VALUES ('111', '178456555541593408745', '1', '1', '30', null);
INSERT INTO tb_order_details VALUES ('112', '178456555541593408745', '2', '1', '24', null);
INSERT INTO tb_order_details VALUES ('113', '178456555541593408745', '4', '1', '24', null);
INSERT INTO tb_order_details VALUES ('114', '178456555541593408745', '14', '1', '18', null);
INSERT INTO tb_order_details VALUES ('115', '178456555541593410085', '4', '1', '24', null);
INSERT INTO tb_order_details VALUES ('116', '178456555541593410085', '5', '1', '27', null);
INSERT INTO tb_order_details VALUES ('117', '178456555541593410085', '14', '1', '18', null);
INSERT INTO tb_order_details VALUES ('118', '178456555541593410085', '24', '1', '18', null);
INSERT INTO tb_order_details VALUES ('119', '178456555541593410085', '26', '1', '18', null);
INSERT INTO tb_order_details VALUES ('120', '178456555541593410085', '4', '1', '24', null);
INSERT INTO tb_order_details VALUES ('121', '178456555541593410085', '5', '1', '27', null);
INSERT INTO tb_order_details VALUES ('122', '178456555541593410085', '14', '1', '18', null);
INSERT INTO tb_order_details VALUES ('123', '178456555541593410085', '24', '1', '18', null);
INSERT INTO tb_order_details VALUES ('124', '178456555541593410085', '26', '1', '18', null);
INSERT INTO tb_order_details VALUES ('125', '178456555541593410098', '1', '4', '120', null);
INSERT INTO tb_order_details VALUES ('126', '178456555541593410098', '2', '7', '168', null);
INSERT INTO tb_order_details VALUES ('127', '178456555541593410098', '5', '14', '378', null);
INSERT INTO tb_order_details VALUES ('128', '178456555541593410969', '4', '1', '24', null);
INSERT INTO tb_order_details VALUES ('129', '178456555541593410969', '24', '1', '18', null);
INSERT INTO tb_order_details VALUES ('130', '178456555541593411739', '1', '1', '30', null);
INSERT INTO tb_order_details VALUES ('131', '155987456121593411769', '1', '1', '30', null);
INSERT INTO tb_order_details VALUES ('132', '155987456121593411769', '5', '1', '27', null);
INSERT INTO tb_order_details VALUES ('133', '155987456121593411769', '24', '1', '18', null);
INSERT INTO tb_order_details VALUES ('134', '155987456121593411842', '1', '1', '30', null);

-- ----------------------------
-- Table structure for `tb_reply`
-- ----------------------------
DROP TABLE IF EXISTS `tb_reply`;
CREATE TABLE `tb_reply` (
  `replay_id` int(15) NOT NULL COMMENT '回复id',
  `comment` int(15) NOT NULL COMMENT '评价id，外键，为评价表的主键',
  `admin` int(15) NOT NULL COMMENT '管理员id，外键，为管理员表的主键',
  `hftime` varchar(255) NOT NULL COMMENT '回复时间',
  `hftext` varchar(255) NOT NULL COMMENT '回复内容',
  PRIMARY KEY (`replay_id`),
  KEY `r_comment` (`comment`),
  KEY `r_admin` (`admin`),
  CONSTRAINT `r_admin` FOREIGN KEY (`admin`) REFERENCES `tb_admin` (`admin`),
  CONSTRAINT `r_comment` FOREIGN KEY (`comment`) REFERENCES `tb_comment` (`comment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='送水系统的回复表';

-- ----------------------------
-- Records of tb_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_salary`
-- ----------------------------
DROP TABLE IF EXISTS `tb_salary`;
CREATE TABLE `tb_salary` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '工资表主键',
  `ticheng` varchar(255) NOT NULL COMMENT '提成',
  `w_num` int(11) DEFAULT '0' COMMENT '送水桶数',
  `jbgz` varchar(255) NOT NULL DEFAULT '0' COMMENT '基本工资',
  `time` varchar(255) NOT NULL COMMENT '每月时间',
  `worker` int(11) NOT NULL COMMENT '工人id，外键，工人表的主键',
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_salary
-- ----------------------------
INSERT INTO tb_salary VALUES ('1', '15%', '10', '1200', '2020-06-02 16:38:30', '1');
INSERT INTO tb_salary VALUES ('2', '12%', '2', '1400', '2020-06-03 16:38:30', '2');
INSERT INTO tb_salary VALUES ('3', '15%', '0', '1115', '2020-05-04 16:38:30', '3');
INSERT INTO tb_salary VALUES ('4', '15%', '0', '1400', '2020-05-05 16:38:30', '6');
INSERT INTO tb_salary VALUES ('13', '15%', '0', '1115', '2020-06-27 03:49:36', '3');
INSERT INTO tb_salary VALUES ('14', '15%', '55', '1400', '2020-06-27 03:49:36', '6');
INSERT INTO tb_salary VALUES ('15', '12%', '0', '1000', '2020-06-27 04:15:46', '7');

-- ----------------------------
-- Table structure for `tb_ss_address`
-- ----------------------------
DROP TABLE IF EXISTS `tb_ss_address`;
CREATE TABLE `tb_ss_address` (
  `address_id` int(20) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) NOT NULL,
  `address_con1` varchar(255) DEFAULT NULL,
  `address_con2` varchar(255) DEFAULT NULL,
  `address_con3` varchar(255) DEFAULT NULL,
  `address_con4` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_ss_address
-- ----------------------------
INSERT INTO tb_ss_address VALUES ('2', '222', 'xx市xx区xx学校xx区408', 'xx市xx区xx学校xx区501', 'xx市xx区xx学校xx区101', 'xx市xx区xx学校xx区801');
INSERT INTO tb_ss_address VALUES ('3', '111', '', '', '', '');

-- ----------------------------
-- Table structure for `tb_tzs`
-- ----------------------------
DROP TABLE IF EXISTS `tb_tzs`;
CREATE TABLE `tb_tzs` (
  `tzs` int(15) NOT NULL AUTO_INCREMENT COMMENT '桶装水id',
  `brand` varchar(255) NOT NULL COMMENT '品牌',
  `guige` varchar(255) NOT NULL COMMENT '规格',
  `tzsjinjia` varchar(255) NOT NULL COMMENT '进价',
  `tzsmaijia` varchar(255) NOT NULL COMMENT '卖价',
  `t_num` int(15) NOT NULL COMMENT '剩余数量',
  `type` varchar(255) NOT NULL COMMENT '种类',
  `image` varchar(255) NOT NULL DEFAULT 'moren.jpg' COMMENT '图片',
  `brief` varchar(255) NOT NULL COMMENT '简介',
  PRIMARY KEY (`tzs`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='送水系统的桶装水表';

-- ----------------------------
-- Records of tb_tzs
-- ----------------------------
INSERT INTO tb_tzs VALUES ('1', '农夫山泉', '19L', '25', '30', '17', '矿泉水', 'images/1.jpg', '天然饮用水法家庭都天然饮用水法家庭都天然饮用水法家庭都');
INSERT INTO tb_tzs VALUES ('2', '屈臣氏', '8L', '20', '24', '222', '蒸馏水', 'images/2.jpg', '蒸馏制法家庭饮用水');
INSERT INTO tb_tzs VALUES ('4', '怡宝', '10L', '18', '24', '60', '矿泉水', 'images/2.jpg', '家庭桶装水');
INSERT INTO tb_tzs VALUES ('5', '农夫山泉', '15L', '22', '27', '374', '蒸馏水', 'images/1.jpg', '');
INSERT INTO tb_tzs VALUES ('14', '范德萨发', '15l', '11', '18', '125', '矿泉水', 'images/1.jpg', '纯净');
INSERT INTO tb_tzs VALUES ('24', '非常棒', '15l', '12', '18', '325', '矿泉水', 'images/sdz.jpg', '棒棒水！');

-- ----------------------------
-- Table structure for `tb_user`
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `nickname` varchar(255) NOT NULL COMMENT '用户昵称',
  `name` varchar(255) NOT NULL COMMENT '用户姓名',
  `address` varchar(255) NOT NULL COMMENT '送水地址',
  `u_mobile1` varchar(255) NOT NULL COMMENT '电话1',
  `u_mobile2` varchar(255) DEFAULT NULL COMMENT '电话2',
  `u_pwd` varchar(255) DEFAULT NULL COMMENT '密码,为NULL时时后台添加的只用电话购买的用户',
  `u_head` varchar(255) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`nickname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='送水系统的用户表';

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO tb_user VALUES ('111', '111', 'xx市xx区xx学校xx区402', '15598745612', '17854625946', '7fa8282ad93047a4d6fe6111c93b308a', null);
INSERT INTO tb_user VALUES ('222', '222', 'xx市xx区xx学校xx区401', '17845655554', '', '7fa8282ad93047a4d6fe6111c93b308a', null);
INSERT INTO tb_user VALUES ('4563', '打赏', 'xx市xx区xx学校xx区408', '15545454545', '15555555551', 'NULL', null);
INSERT INTO tb_user VALUES ('lolo', '卢馨雨', 'xx市xx区xx学校xx区301', '17845612345', '', 'e10adc3949ba59abbe56e057f20f883e', null);
INSERT INTO tb_user VALUES ('qiao', '谯', 'xx市xx区xx学校xx区101', '15589456456', '', '96e79218965eb72c92a549dd5a330112', null);
INSERT INTO tb_user VALUES ('什么', '心心', 'xx市xx区xx学校xx区401', '15555555552', '', '7fa8282ad93047a4d6fe6111c93b308a', null);
INSERT INTO tb_user VALUES ('但是', '打赏', 'xx市xx区xx学校xx区601', '15678944557', '15555555554', 'NULL', null);
INSERT INTO tb_user VALUES ('心', '心心', 'xx市xx区xx学校xx区408', '15555555555', null, '7fa8282ad93047a4d6fe6111c93b308a', null);
INSERT INTO tb_user VALUES ('烦恼的', '打赏', 'xx市xx区xx学校xx区120', '17845612342', '15587645231', 'NULL', null);
INSERT INTO tb_user VALUES ('精神', '时候', 'xx市xx区xx学校xx区401', '15583763313', '', 'NULL', null);
INSERT INTO tb_user VALUES ('精神小伙', '打赏', 'xx市xx区xx学校xx区408', '15587954621', '', 'NULL', null);

-- ----------------------------
-- Table structure for `tb_worker`
-- ----------------------------
DROP TABLE IF EXISTS `tb_worker`;
CREATE TABLE `tb_worker` (
  `worker` int(15) NOT NULL COMMENT '工号',
  `w_name` varchar(255) NOT NULL COMMENT '姓名',
  `w_sex` enum('男','女') NOT NULL COMMENT '性别',
  `w_mobile` varchar(11) NOT NULL COMMENT '手机号码',
  `status` enum('1','0') NOT NULL DEFAULT '0' COMMENT '工人是否被删除。0没被删除，1被删除',
  PRIMARY KEY (`worker`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='送水系统的工人表';

-- ----------------------------
-- Records of tb_worker
-- ----------------------------
INSERT INTO tb_worker VALUES ('1', '小米', '男', '15586764664', '0');
INSERT INTO tb_worker VALUES ('2', '小小红', '男', '15586764664', '0');
INSERT INTO tb_worker VALUES ('3', '小米', '男', '15586764664', '0');
INSERT INTO tb_worker VALUES ('6', '冷哼', '男', '17645237641', '0');
INSERT INTO tb_worker VALUES ('7', '熬安', '男', '15578454545', '1');
