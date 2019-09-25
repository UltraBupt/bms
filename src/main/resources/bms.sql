/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50562
 Source Host           : localhost:3306
 Source Schema         : bms

 Target Server Type    : MySQL
 Target Server Version : 50562
 File Encoding         : 65001

 Date: 25/09/2019 19:47:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `book_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '书名',
  `book_photo_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '封面照片',
  `book_amount` decimal(64, 0) NOT NULL COMMENT '图书金额',
  `book_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '书籍介绍',
  `buyer_id` int(11) NOT NULL COMMENT '书籍购买人id',
  `book_status` int(11) NOT NULL DEFAULT 0 COMMENT '书籍状态 0为在架 1为借出',
  `now_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '现存放地',
  `borrow_times` int(11) NOT NULL COMMENT '借阅次数',
  `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `buy_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '购买时间',
  PRIMARY KEY (`book_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (1, 'spring boot实战开发', NULL, 60, 'spring boot技术', 1, 1, '侯彦骁', 3, '2019-09-25 12:40:48', '2019-09-25 12:32:04');
INSERT INTO `book` VALUES (2, '机器学习西瓜书', NULL, 45, '机器学习知识', 2, 1, '赵鑫', 5, '2019-09-25 12:40:50', '2019-09-25 12:32:09');
INSERT INTO `book` VALUES (3, '大话数据结构', NULL, 33, '数据结构相关知识', 3, 1, '周云磊', 2, '2019-09-25 12:40:52', '2019-09-25 12:32:11');
INSERT INTO `book` VALUES (4, '算法导论', NULL, 66, '算法相关知识', 2, 0, '实验室', 3, '2019-09-25 12:41:04', '2019-09-25 12:32:16');
INSERT INTO `book` VALUES (5, '深度学习', NULL, 120, 'deeplearning', 3, 1, '赵鑫', 4, '2019-09-25 12:41:07', '2019-09-25 12:40:29');

SET FOREIGN_KEY_CHECKS = 1;
