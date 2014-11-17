/*
Navicat MySQL Data Transfer

Source Server         : 192.168.1.241
Source Server Version : 50171
Source Host           : 192.168.1.241:3306
Source Database       : gsp365

Target Server Type    : MYSQL
Target Server Version : 50171
File Encoding         : 65001

Date: 2014-11-17 13:28:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for g_checker_work_location
-- ----------------------------
DROP TABLE IF EXISTS `g_checker_work_location`;
CREATE TABLE `g_checker_work_location` (
  `id` varchar(32) NOT NULL COMMENT '检查人员定位表',
  `enterprise_id` varchar(32) DEFAULT NULL COMMENT '企业ID',
  `lat` double DEFAULT NULL COMMENT '纬度',
  `lng` double DEFAULT NULL COMMENT '经度',
  `start_time` int(10) DEFAULT NULL COMMENT '检查开始时间',
  `end_time` int(10) DEFAULT NULL COMMENT '检查结束时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_checker_work_location
-- ----------------------------
INSERT INTO `g_checker_work_location` VALUES ('f4d5bf98-6e06-11e4-be69-525400aa', 'ad5edb0a-6e00-11e4-be69-525400aa', '12.32', '334.36', null, null);
INSERT INTO `g_checker_work_location` VALUES ('f4d5c2a4-6e06-11e4-be69-525400aa', 'b97145a4-6e00-11e4-be69-525400aa', '52.36', '32.3', null, null);
INSERT INTO `g_checker_work_location` VALUES ('f4d5c308-6e06-11e4-be69-525400aa', 'c117e4de-6e00-11e4-be69-525400aa', '52.32', '85.3', null, null);
INSERT INTO `g_checker_work_location` VALUES ('f4d5c344-6e06-11e4-be69-525400aa', 'cf9c720e-6e00-11e4-be69-525400aa', '12.4', '2.35', null, null);
INSERT INTO `g_checker_work_location` VALUES ('f4d5c380-6e06-11e4-be69-525400aa', 'd42226ac-6e00-11e4-be69-525400aa', '66.33', '86.36', null, null);
INSERT INTO `g_checker_work_location` VALUES ('f4d5c3b2-6e06-11e4-be69-525400aa', 'd898c74a-6e00-11e4-be69-525400aa', '20.36', '78.96', null, null);
INSERT INTO `g_checker_work_location` VALUES ('f4d5c3ee-6e06-11e4-be69-525400aa', 'dd982420-6e00-11e4-be69-525400aa', '75.6', '96.52', null, null);
INSERT INTO `g_checker_work_location` VALUES ('f4d5c42a-6e06-11e4-be69-525400aa', 'e36c5dda-6e00-11e4-be69-525400aa', '125.3', '3.2', null, null);

-- ----------------------------
-- Table structure for g_enterprises
-- ----------------------------
DROP TABLE IF EXISTS `g_enterprises`;
CREATE TABLE `g_enterprises` (
  `id` varchar(32) NOT NULL COMMENT 'ID',
  `enterprise_name` varchar(255) DEFAULT NULL COMMENT '企业名称',
  `address` varchar(255) DEFAULT NULL COMMENT '企业地址',
  `leading_official` varchar(20) DEFAULT NULL COMMENT '负责人',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_enterprises
-- ----------------------------
INSERT INTO `g_enterprises` VALUES ('ad5edb0a-6e00-11e4-be69-525400aa', '百度', null, null);
INSERT INTO `g_enterprises` VALUES ('b97145a4-6e00-11e4-be69-525400aa', '腾讯', null, null);
INSERT INTO `g_enterprises` VALUES ('c117e4de-6e00-11e4-be69-525400aa', '阿里巴巴', null, null);
INSERT INTO `g_enterprises` VALUES ('cf9c720e-6e00-11e4-be69-525400aa', '京东', null, null);
INSERT INTO `g_enterprises` VALUES ('d42226ac-6e00-11e4-be69-525400aa', '网易', null, null);
INSERT INTO `g_enterprises` VALUES ('d898c74a-6e00-11e4-be69-525400aa', '当当', null, null);
INSERT INTO `g_enterprises` VALUES ('dd982420-6e00-11e4-be69-525400aa', '新浪', null, null);
INSERT INTO `g_enterprises` VALUES ('e36c5dda-6e00-11e4-be69-525400aa', '盛大', null, null);

-- ----------------------------
-- Table structure for g_users
-- ----------------------------
DROP TABLE IF EXISTS `g_users`;
CREATE TABLE `g_users` (
  `id` varchar(32) NOT NULL COMMENT '用户ID',
  `user_name` varchar(20) DEFAULT NULL COMMENT '用户名',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_users
-- ----------------------------
INSERT INTO `g_users` VALUES ('7f7aed06-6dff-11e4-be69-525400aa', '李四');
INSERT INTO `g_users` VALUES ('71e808a4-6dff-11e4-be69-525400aa', '张三');
INSERT INTO `g_users` VALUES ('8ce3493e-6dff-11e4-be69-525400aa', '王五');
INSERT INTO `g_users` VALUES ('965383c6-6dff-11e4-be69-525400aa', '赵六');
INSERT INTO `g_users` VALUES ('f0cba554-6dff-11e4-be69-525400aa', '刘一');
INSERT INTO `g_users` VALUES ('15facf08-6e00-11e4-be69-525400aa', '陈二');
INSERT INTO `g_users` VALUES ('5c66e828-6e00-11e4-be69-525400aa', '孙七');
INSERT INTO `g_users` VALUES ('61642b10-6e00-11e4-be69-525400aa', '周八');
INSERT INTO `g_users` VALUES ('664be0a0-6e00-11e4-be69-525400aa', '吴九');
INSERT INTO `g_users` VALUES ('6b951ba8-6e00-11e4-be69-525400aa', '郑十');

-- ----------------------------
-- Table structure for g_usual_check_results
-- ----------------------------
DROP TABLE IF EXISTS `g_usual_check_results`;
CREATE TABLE `g_usual_check_results` (
  `id` varchar(32) NOT NULL COMMENT '企业检查表ID',
  `enterprise_id` varchar(32) NOT NULL COMMENT '企业ID',
  `check_result` varchar(255) DEFAULT NULL COMMENT '检查结果',
  `check_date` int(10) DEFAULT NULL COMMENT '检查时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_usual_check_results
-- ----------------------------
INSERT INTO `g_usual_check_results` VALUES ('8c547586-6e01-11e4-be69-525400aa', 'ad5edb0a-6e00-11e4-be69-525400aa', '网络搜索条件基本足，部分竞价排名有问题', '1374770000');
INSERT INTO `g_usual_check_results` VALUES ('af211006-6e01-11e4-be69-525400aa', 'ad5edb0a-6e00-11e4-be69-525400aa', '举报内容不属实', '1348420000');
INSERT INTO `g_usual_check_results` VALUES ('ea09b61e-6e01-11e4-be69-525400aa', 'b97145a4-6e00-11e4-be69-525400aa', '存在垄断现象，应规范竞争', '1335460000');
INSERT INTO `g_usual_check_results` VALUES ('15996df6-6e02-11e4-be69-525400aa', 'c117e4de-6e00-11e4-be69-525400aa', '信用卡条件不成熟，不允许发放虚拟信用卡。', '1400170000');
INSERT INTO `g_usual_check_results` VALUES ('34f3f112-6e02-11e4-be69-525400aa', 'cf9c720e-6e00-11e4-be69-525400aa', '应提高基层员工福利待遇', '1331570000');
INSERT INTO `g_usual_check_results` VALUES ('4751a7dc-6e02-11e4-be69-525400aa', 'd42226ac-6e00-11e4-be69-525400aa', '应多元化发展', '1372350000');
INSERT INTO `g_usual_check_results` VALUES ('63b5a644-6e02-11e4-be69-525400aa', 'd898c74a-6e00-11e4-be69-525400aa', '中兴无望，需下猛药', '1375890000');
INSERT INTO `g_usual_check_results` VALUES ('84f6617c-6e02-11e4-be69-525400aa', 'dd982420-6e00-11e4-be69-525400aa', '只有自己的才是真，大树不可靠', '1369320000');
INSERT INTO `g_usual_check_results` VALUES ('ae3e5f6c-6e02-11e4-be69-525400aa', 'e36c5dda-6e00-11e4-be69-525400aa', '日幕西山', '1334590000');
INSERT INTO `g_usual_check_results` VALUES ('dd959e6a-6e02-11e4-be69-525400aa', 'cf9c720e-6e00-11e4-be69-525400aa', '赶超阿里，须避实就虚', '1345480000');
INSERT INTO `g_usual_check_results` VALUES ('07b85cf0-6e03-11e4-be69-525400aa', 'dd982420-6e00-11e4-be69-525400aa', '微博早现颓势', '1341330000');

-- ----------------------------
-- Table structure for g_usual_check_users
-- ----------------------------
DROP TABLE IF EXISTS `g_usual_check_users`;
CREATE TABLE `g_usual_check_users` (
  `id` varchar(32) NOT NULL COMMENT '日常检查人员记录ID',
  `usual_check_result_id` varchar(32) DEFAULT NULL COMMENT '企业日常检查结果ID ',
  `user_id` varchar(32) DEFAULT NULL COMMENT '用户ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_usual_check_users
-- ----------------------------
INSERT INTO `g_usual_check_users` VALUES ('7d8779d4-6e03-11e4-be69-525400aa', '8c547586-6e01-11e4-be69-525400aa', '7f7aed06-6dff-11e4-be69-525400aa');
INSERT INTO `g_usual_check_users` VALUES ('8ade8320-6e03-11e4-be69-525400aa', '8c547586-6e01-11e4-be69-525400aa', '6b951ba8-6e00-11e4-be69-525400aa');
INSERT INTO `g_usual_check_users` VALUES ('9e472e62-6e03-11e4-be69-525400aa', 'ea09b61e-6e01-11e4-be69-525400aa', '7f7aed06-6dff-11e4-be69-525400aa');
INSERT INTO `g_usual_check_users` VALUES ('a496af36-6e03-11e4-be69-525400aa', 'ea09b61e-6e01-11e4-be69-525400aa', '6b951ba8-6e00-11e4-be69-525400aa');
INSERT INTO `g_usual_check_users` VALUES ('bf69ca1e-6e03-11e4-be69-525400aa', 'af211006-6e01-11e4-be69-525400aa', '71e808a4-6dff-11e4-be69-525400aa');
INSERT INTO `g_usual_check_users` VALUES ('c7b2f164-6e03-11e4-be69-525400aa', 'af211006-6e01-11e4-be69-525400aa', '8ce3493e-6dff-11e4-be69-525400aa');
INSERT INTO `g_usual_check_users` VALUES ('3085f330-6e04-11e4-be69-525400aa', '15996df6-6e02-11e4-be69-525400aa', '15facf08-6e00-11e4-be69-525400aa');
INSERT INTO `g_usual_check_users` VALUES ('3a011570-6e04-11e4-be69-525400aa', '15996df6-6e02-11e4-be69-525400aa', '5c66e828-6e00-11e4-be69-525400aa');
INSERT INTO `g_usual_check_users` VALUES ('47b7fcc4-6e04-11e4-be69-525400aa', '4751a7dc-6e02-11e4-be69-525400aa', '61642b10-6e00-11e4-be69-525400aa');
INSERT INTO `g_usual_check_users` VALUES ('4db24706-6e04-11e4-be69-525400aa', '4751a7dc-6e02-11e4-be69-525400aa', '664be0a0-6e00-11e4-be69-525400aa');
INSERT INTO `g_usual_check_users` VALUES ('79976f36-6e04-11e4-be69-525400aa', '63b5a644-6e02-11e4-be69-525400aa', '6b951ba8-6e00-11e4-be69-525400aa');
INSERT INTO `g_usual_check_users` VALUES ('810ed3c6-6e04-11e4-be69-525400aa', '63b5a644-6e02-11e4-be69-525400aa', '664be0a0-6e00-11e4-be69-525400aa');
INSERT INTO `g_usual_check_users` VALUES ('104ff768-6e05-11e4-be69-525400aa', '84f6617c-6e02-11e4-be69-525400aa', '5c66e828-6e00-11e4-be69-525400aa');
INSERT INTO `g_usual_check_users` VALUES ('8431e542-6e05-11e4-be69-525400aa', '84f6617c-6e02-11e4-be69-525400aa', 'f0cba554-6dff-11e4-be69-525400aa');
INSERT INTO `g_usual_check_users` VALUES ('9bbeddf0-6e05-11e4-be69-525400aa', 'dd959e6a-6e02-11e4-be69-525400aa', '965383c6-6dff-11e4-be69-525400aa');
INSERT INTO `g_usual_check_users` VALUES ('a40ec5b0-6e05-11e4-be69-525400aa', 'dd959e6a-6e02-11e4-be69-525400aa', '15facf08-6e00-11e4-be69-525400aa');
INSERT INTO `g_usual_check_users` VALUES ('c0a7d59a-6e05-11e4-be69-525400aa', '61642b10-6e00-11e4-be69-525400aa', '664be0a0-6e00-11e4-be69-525400aa');
INSERT INTO `g_usual_check_users` VALUES ('c8ca2e9e-6e05-11e4-be69-525400aa', '61642b10-6e00-11e4-be69-525400aa', '7f7aed06-6dff-11e4-be69-525400aa');
