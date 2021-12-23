/*
 Navicat Premium Data Transfer

 Source Server         : MasterMySQL
 Source Server Type    : MySQL
 Source Server Version : 80025
 Source Host           : 127.0.0.1:3306
 Source Schema         : study_sharding

 Target Server Type    : MySQL
 Target Server Version : 80025
 File Encoding         : 65001

 Date: 23/12/2021 18:02:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for mto_user_0
-- ----------------------------
DROP TABLE IF EXISTS `mto_user_0`;
CREATE TABLE `mto_user_0` (
  `id` varchar(50) NOT NULL,
  `username` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `avatar` varchar(128) DEFAULT '/dist/images/ava/default.png',
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `status` int NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `gender` int NOT NULL,
  `role_id` int DEFAULT NULL,
  `comments` int NOT NULL,
  `posts` int NOT NULL,
  `signature` varchar(140) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UK_USERNAME` (`username`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of mto_user_0
-- ----------------------------
BEGIN;
INSERT INTO `mto_user_0` VALUES ('680831425380876288', '1234567', 'tests', '/dist/images/ava/default.png', NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, 2, 0, NULL);
COMMIT;

-- ----------------------------
-- Table structure for mto_user_1
-- ----------------------------
DROP TABLE IF EXISTS `mto_user_1`;
CREATE TABLE `mto_user_1` (
  `id` varchar(50) NOT NULL,
  `username` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `avatar` varchar(128) DEFAULT '/dist/images/ava/default.png',
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `status` int NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `gender` int NOT NULL,
  `role_id` int DEFAULT NULL,
  `comments` int NOT NULL,
  `posts` int NOT NULL,
  `signature` varchar(140) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UK_USERNAME` (`username`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of mto_user_1
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for mto_user_2
-- ----------------------------
DROP TABLE IF EXISTS `mto_user_2`;
CREATE TABLE `mto_user_2` (
  `id` varchar(50) NOT NULL,
  `username` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `avatar` varchar(128) DEFAULT '/dist/images/ava/default.png',
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `status` int NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `gender` int NOT NULL,
  `role_id` int DEFAULT NULL,
  `comments` int NOT NULL,
  `posts` int NOT NULL,
  `signature` varchar(140) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UK_USERNAME` (`username`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of mto_user_2
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for mto_user_role_0
-- ----------------------------
DROP TABLE IF EXISTS `mto_user_role_0`;
CREATE TABLE `mto_user_role_0` (
  `user_id` varchar(50) NOT NULL,
  `role` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of mto_user_role_0
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for mto_user_role_1
-- ----------------------------
DROP TABLE IF EXISTS `mto_user_role_1`;
CREATE TABLE `mto_user_role_1` (
  `user_id` varchar(50) NOT NULL,
  `role` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of mto_user_role_1
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for mto_user_role_2
-- ----------------------------
DROP TABLE IF EXISTS `mto_user_role_2`;
CREATE TABLE `mto_user_role_2` (
  `user_id` varchar(50) NOT NULL,
  `role` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of mto_user_role_2
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
