/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50612
Source Host           : localhost:3306
Source Database       : web-development-framework

Target Server Type    : MYSQL
Target Server Version : 50612
File Encoding         : 65001

Date: 2015-10-01 18:21:35
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `message`
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `message_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '消息id，主键',
  `message_follow_id` int(11) DEFAULT '0' COMMENT '该条消息属于那一条消息的回复消息，默认为0表示父消息',
  `message_title` varchar(50) DEFAULT NULL COMMENT '息消标题',
  `message_content` varchar(255) DEFAULT NULL COMMENT '消息内容',
  `user_name` varchar(20) DEFAULT NULL COMMENT '留言者姓名,此处不符合数据库设计规则，但为了简化此处仍使用这样的设置方法',
  `user_id` int(11) DEFAULT NULL COMMENT '留言者id',
  `message_ip` varchar(20) DEFAULT NULL COMMENT 'ip地址',
  `message_datetime` datetime DEFAULT NULL COMMENT '留言时间',
  `message_category` varchar(10) DEFAULT NULL COMMENT '留言的分类，保留字段',
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
