/*
 Navicat Premium Data Transfer

 Source Server         : MySQL_JuLiy
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : localhost:3306
 Source Schema         : lan_talk

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 23/06/2022 12:01:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `account` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `department` enum('行政部门A','行政部门B','行政部门C') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`account`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('111', '111', '张三', '行政部门A');
INSERT INTO `account` VALUES ('222', '222', '李四', '行政部门A');
INSERT INTO `account` VALUES ('333', '333', '王五', '行政部门A');
INSERT INTO `account` VALUES ('444', '444', '赵六', '行政部门B');
INSERT INTO `account` VALUES ('555', '555', 'test', '行政部门C');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `name` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `department` enum('行政部门A','行政部门B','行政部门C') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `target` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `time` datetime(0) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('张三', '行政部门A', '全部', '再次测试日志是否对齐', '2022-06-14 21:04:23');
INSERT INTO `message` VALUES ('张三', '行政部门A', '全部', '测试', '2022-06-14 21:04:24');
INSERT INTO `message` VALUES ('张三', '行政部门A', '行政部门A', '11', '2022-06-14 21:04:27');
INSERT INTO `message` VALUES ('张三', '行政部门A', '李四', '私聊文件测试', '2022-06-15 08:30:50');
INSERT INTO `message` VALUES ('张三', '行政部门A', '李四', '私聊文件测试', '2022-06-15 08:32:02');
INSERT INTO `message` VALUES ('李四', '行政部门A', '张三', '文件测试', '2022-06-15 08:54:02');
INSERT INTO `message` VALUES ('李四', '行政部门A', '张三', '私聊文件测试', '2022-06-15 09:25:45');
INSERT INTO `message` VALUES ('张三', '行政部门A', '全部', '测试成功', '2022-06-15 21:42:09');
INSERT INTO `message` VALUES ('张三', '行政部门A', '全部', '测试日志中文件上传消息', '2022-06-15 21:44:11');
INSERT INTO `message` VALUES ('张三', '行政部门A', '全部', '111', '2022-06-16 13:33:14');
INSERT INTO `message` VALUES ('张三', '行政部门A', '全部', '123', '2022-06-16 14:01:36');
INSERT INTO `message` VALUES ('张三', '行政部门A', '全部', '综合测试', '2022-06-16 16:21:44');
INSERT INTO `message` VALUES ('李四', '行政部门A', '全部', '1', '2022-06-16 16:21:48');
INSERT INTO `message` VALUES ('赵六', '行政部门B', '全部', '2', '2022-06-16 16:21:50');
INSERT INTO `message` VALUES ('张三', '行政部门A', '行政部门A', '部门测试', '2022-06-16 16:22:00');
INSERT INTO `message` VALUES ('李四', '行政部门A', '行政部门A', '1', '2022-06-16 16:22:04');
INSERT INTO `message` VALUES ('赵六', '行政部门B', '行政部门B', '2', '2022-06-16 16:22:06');
INSERT INTO `message` VALUES ('张三', '行政部门A', '全部', '文件测试', '2022-06-16 16:22:13');
INSERT INTO `message` VALUES ('张三', '行政部门A', '李四', '私聊测试', '2022-06-16 16:24:45');
INSERT INTO `message` VALUES ('李四', '行政部门A', '张三', '私聊文件测试', '2022-06-16 16:24:54');
INSERT INTO `message` VALUES ('张三', '行政部门A', '全部', '111', '2022-06-16 16:38:17');
INSERT INTO `message` VALUES ('李四', '行政部门A', '全部', '222', '2022-06-16 16:38:27');
INSERT INTO `message` VALUES ('李四', '行政部门A', '张三', '123', '2022-06-16 16:39:32');
INSERT INTO `message` VALUES ('张三', '行政部门A', '行政部门A', '123', '2022-06-17 10:03:15');
INSERT INTO `message` VALUES ('张三', '行政部门A', '全部', '321', '2022-06-17 10:03:25');
INSERT INTO `message` VALUES ('张三', '行政部门A', '全部', 'o((>ω< ))o', '2022-06-17 10:15:22');
INSERT INTO `message` VALUES ('张三', '行政部门A', '全部', 'O(∩_∩)O', '2022-06-17 10:15:31');
INSERT INTO `message` VALUES ('张三', '行政部门A', '行政部门A', '', '2022-06-17 10:15:59');
INSERT INTO `message` VALUES ('张三', '行政部门A', '全部', '', '2022-06-17 10:16:01');
INSERT INTO `message` VALUES ('张三', '行政部门A', '全部', '┭┮﹏┭┮', '2022-06-17 10:16:13');
INSERT INTO `message` VALUES ('张三', '行政部门A', '全部', '123', '2022-06-23 10:05:33');
INSERT INTO `message` VALUES ('李四', '行政部门A', '行政部门A', '321', '2022-06-23 10:05:36');
INSERT INTO `message` VALUES ('张三', '行政部门A', '行政部门A', '123', '2022-06-23 10:05:39');
INSERT INTO `message` VALUES ('张三', '行政部门A', '李四', '321', '2022-06-23 10:05:43');
INSERT INTO `message` VALUES ('张三', '行政部门A', '全部', '123', '2022-06-23 10:35:24');
INSERT INTO `message` VALUES ('张三', '行政部门A', '李四', '321', '2022-06-23 10:35:31');

SET FOREIGN_KEY_CHECKS = 1;
