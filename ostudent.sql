/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 100428
 Source Host           : localhost:3306
 Source Schema         : ostudent

 Target Server Type    : MySQL
 Target Server Version : 100428
 File Encoding         : 65001

 Date: 23/12/2023 17:53:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '广告图ID',
  `bannerName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '广告图名',
  `info` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '广告图描述',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '广告图类型',
  `linkUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '广告图跳转链接',
  `bannerImg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '广告图url',
  `state` int NOT NULL DEFAULT 1 COMMENT '0禁用 1可用',
  `sort` int NULL DEFAULT NULL COMMENT '广告图排序',
  `createTime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 240885916363739137 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '广告图表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES (1, '卓越平台首页banner图', '测试', 'index_one', NULL, '/upload/banner/17941493.png', 1, 1, '2023-05-24 16:55:53', '2023-05-24 16:55:53');
INSERT INTO `banner` VALUES (2, '卓越平台首页banner图', '测试', 'index_one', NULL, '/upload/banner/2.png', 1, 2, '2023-05-24 17:13:11', '2023-06-28 15:19:44');

-- ----------------------------
-- Table structure for clothing
-- ----------------------------
DROP TABLE IF EXISTS `clothing`;
CREATE TABLE `clothing`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '衣服表主键id',
  `clothingImg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '衣服图片',
  `clothingName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '衣服名',
  `sort` int NULL DEFAULT NULL COMMENT '排序字段',
  `state` int NULL DEFAULT 1 COMMENT '状态 0 禁用 1 正常',
  `createTime` datetime NULL DEFAULT NULL,
  `updateTime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of clothing
-- ----------------------------
INSERT INTO `clothing` VALUES (1, '/upload/clothoing/T恤.png', 'T恤', 1, 1, '2023-10-30 21:45:16', '2023-10-30 21:45:18');
INSERT INTO `clothing` VALUES (2, '/upload/clothoing/白logo.png', '白logo', 1, 1, '2023-10-30 21:45:16', '2023-10-30 21:45:18');
INSERT INTO `clothing` VALUES (3, '/upload/clothoing/衬衣.png', '衬衣', 1, 1, '2023-10-30 21:45:16', '2023-10-30 21:45:18');
INSERT INTO `clothing` VALUES (4, '/upload/clothoing/敦厚发型.png', '敦厚发型', 1, 1, '2023-10-30 21:45:16', '2023-10-30 21:45:18');
INSERT INTO `clothing` VALUES (5, '/upload/clothoing/耳饰.png', '耳饰', 1, 1, '2023-10-30 21:45:16', '2023-10-30 21:45:18');
INSERT INTO `clothing` VALUES (6, '/upload/clothoing/换装表情.png', '换装表情', 1, 1, '2023-10-30 21:45:16', '2023-10-30 21:45:18');
INSERT INTO `clothing` VALUES (7, '/upload/clothoing/换装发型.png', '换装发型', 1, 1, '2023-10-30 21:45:16', '2023-10-30 21:45:18');
INSERT INTO `clothing` VALUES (8, '/upload/clothoing/换装裙子带原双腿.png', '换装裙子带原双腿', 1, 1, '2023-10-30 21:45:16', '2023-10-30 21:45:18');
INSERT INTO `clothing` VALUES (9, '/upload/clothoing/换装上衣.png', '换装上衣', 1, 1, '2023-10-30 21:45:16', '2023-10-30 21:45:18');
INSERT INTO `clothing` VALUES (10, '/upload/clothoing/换装鞋带换装裙子.png', '换装鞋带换装裙子', 1, 1, '2023-10-30 21:45:16', '2023-10-30 21:45:18');
INSERT INTO `clothing` VALUES (11, '/upload/clothoing/换装腰带.png', '换装腰带', 1, 1, '2023-10-30 21:45:16', '2023-10-30 21:45:18');
INSERT INTO `clothing` VALUES (12, '/upload/clothoing/开朗表情.png', '开朗表情', 1, 1, '2023-10-30 21:45:16', '2023-10-30 21:45:18');
INSERT INTO `clothing` VALUES (13, '/upload/clothoing/裤子原始.png', '裤子原始', 1, 1, '2023-10-30 21:45:16', '2023-10-30 21:45:18');
INSERT INTO `clothing` VALUES (14, '/upload/clothoing/脸型.png', '脸型', 1, 1, '2023-10-30 21:45:16', '2023-10-30 21:45:18');
INSERT INTO `clothing` VALUES (15, '/upload/clothoing/领带.png', '领带', 1, 1, '2023-10-30 21:45:16', '2023-10-30 21:45:18');
INSERT INTO `clothing` VALUES (16, '/upload/clothoing/皮鞋.png', '皮鞋', 1, 1, '2023-10-30 21:45:16', '2023-10-30 21:45:18');
INSERT INTO `clothing` VALUES (17, '/upload/clothoing/手臂.png', '手臂', 1, 1, '2023-10-30 21:45:16', '2023-10-30 21:45:18');
INSERT INTO `clothing` VALUES (18, '/upload/clothoing/手表.png', '手表', 1, 1, '2023-10-30 21:45:16', '2023-10-30 21:45:18');
INSERT INTO `clothing` VALUES (19, '/upload/clothoing/帅气发型.png', '帅气发型', 1, 1, '2023-10-30 21:45:16', '2023-10-30 21:45:18');
INSERT INTO `clothing` VALUES (20, '/upload/clothoing/头部.png', '头部', 1, 1, '2023-10-30 21:45:16', '2023-10-30 21:45:18');
INSERT INTO `clothing` VALUES (21, '/upload/clothoing/颓废表情.png', '颓废表情', 1, 1, '2023-10-30 21:45:16', '2023-10-30 21:45:18');
INSERT INTO `clothing` VALUES (22, '/upload/clothoing/西服裤子.png', '西服裤子', 1, 1, '2023-10-30 21:45:16', '2023-10-30 21:45:18');
INSERT INTO `clothing` VALUES (23, '/upload/clothoing/西服上衣.png', '西服上衣', 1, 1, '2023-10-30 21:45:16', '2023-10-30 21:45:18');
INSERT INTO `clothing` VALUES (24, '/upload/clothoing/休闲鞋.png', '休闲鞋', 1, 1, '2023-10-30 21:45:16', '2023-10-30 21:45:18');
INSERT INTO `clothing` VALUES (25, '/upload/clothoing/原表情.png', '原表情', 1, 1, '2023-10-30 21:45:16', '2023-10-30 21:45:18');
INSERT INTO `clothing` VALUES (26, '/upload/clothoing/原彩logo.png', '原彩logo', 1, 1, '2023-10-30 21:45:16', '2023-10-30 21:45:18');
INSERT INTO `clothing` VALUES (27, '/upload/clothoing/原裙子.png', '原裙子', 1, 1, '2023-10-30 21:45:16', '2023-10-30 21:45:18');
INSERT INTO `clothing` VALUES (28, '/upload/clothoing/原上衣.png', '原上衣', 1, 1, '2023-10-30 21:45:16', '2023-10-30 21:45:18');

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '公司id',
  `companyName` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '公司名称',
  `companyInfo` varchar(1024) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '公司介绍',
  `cover` varchar(512) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '封面',
  `sort` int NOT NULL DEFAULT 1 COMMENT '排序',
  `state` int NOT NULL DEFAULT 1 COMMENT '0禁用 1正常',
  `createTime` datetime NULL DEFAULT NULL,
  `updateTime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of company
-- ----------------------------

-- ----------------------------
-- Table structure for daycheck
-- ----------------------------
DROP TABLE IF EXISTS `daycheck`;
CREATE TABLE `daycheck`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '日验收id',
  `personnelId` bigint NOT NULL COMMENT '人员id',
  `schedule` int NULL DEFAULT NULL COMMENT '0差 1良 2优',
  `stuState` int NULL DEFAULT NULL COMMENT '0差 1良 2优',
  `questionFrequency` int NULL DEFAULT NULL COMMENT '0差 1良 2优',
  `checkDay` datetime NULL DEFAULT NULL COMMENT '验收日期',
  `weekId` bigint NULL DEFAULT NULL COMMENT '周id',
  `state` int NOT NULL DEFAULT 1 COMMENT '0禁用 1正常',
  `createTime` datetime NULL DEFAULT NULL,
  `updateTime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of daycheck
-- ----------------------------
INSERT INTO `daycheck` VALUES (1, 1, 2, 2, 2, '2023-11-01 00:00:00', 2, 1, '2023-10-31 10:35:52', '2023-11-02 17:33:39');
INSERT INTO `daycheck` VALUES (2, 2, 2, 3, 2, '2023-10-31 10:35:57', 1, 1, '2023-10-31 10:35:52', '2023-10-31 10:35:54');
INSERT INTO `daycheck` VALUES (3, 3, 2, 2, 1, '2023-10-31 10:35:57', 1, 1, '2023-10-31 10:35:52', '2023-10-31 10:35:54');
INSERT INTO `daycheck` VALUES (5, 1, 2, 2, 2, '2023-11-01 00:00:00', 2, 1, '2023-11-02 17:34:52', '2023-11-02 17:34:52');
INSERT INTO `daycheck` VALUES (6, 10, 2, 2, 2, '2023-11-03 00:00:00', 5, 1, '2023-11-24 09:34:25', '2023-11-24 09:34:25');
INSERT INTO `daycheck` VALUES (7, 22, 2, 2, 2, '2023-11-03 00:00:00', 5, 1, '2023-11-24 09:34:47', '2023-11-24 09:34:47');
INSERT INTO `daycheck` VALUES (8, 4, 3, 2, 2, '2023-11-04 00:00:00', 4, 1, '2023-11-24 09:34:47', '2023-11-24 09:34:47');
INSERT INTO `daycheck` VALUES (9, 14, 2, 3, 2, '2023-11-05 00:00:00', 4, 1, '2023-11-24 09:34:47', '2023-11-24 09:34:47');
INSERT INTO `daycheck` VALUES (10, 15, 2, 3, 2, '2023-11-06 00:00:00', 4, 1, '2023-11-24 09:34:47', '2023-11-24 09:34:47');
INSERT INTO `daycheck` VALUES (11, 4, 3, 2, 2, '2023-11-07 00:00:00', 8, 1, '2023-11-24 09:34:47', '2023-11-24 09:34:47');
INSERT INTO `daycheck` VALUES (12, 14, 2, 3, 2, '2023-11-08 00:00:00', 8, 1, '2023-11-24 09:34:47', '2023-11-24 09:34:47');
INSERT INTO `daycheck` VALUES (13, 15, 2, 3, 2, '2023-11-09 00:00:00', 8, 1, '2023-11-24 09:34:47', '2023-11-24 09:34:47');

-- ----------------------------
-- Table structure for honor
-- ----------------------------
DROP TABLE IF EXISTS `honor`;
CREATE TABLE `honor`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '荣誉id',
  `honorName` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '荣誉名',
  `honorImg` varchar(512) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '荣誉图片',
  `type` int NULL DEFAULT NULL COMMENT '荣誉类型 暂定',
  `state` int NOT NULL DEFAULT 1 COMMENT '0禁用 1正常',
  `createTime` datetime NULL DEFAULT NULL,
  `updateTime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of honor
-- ----------------------------
INSERT INTO `honor` VALUES (1, '集体荣誉', '\\upload\\banner\\jiangzhuang.png', 1, 1, '2023-10-29 15:23:22', '2023-10-29 15:23:24');
INSERT INTO `honor` VALUES (2, '个人荣誉', '\\upload\\banner\\jiangzhuang1.png', 1, 1, '2023-10-29 15:23:22', '2023-10-29 15:23:24');

-- ----------------------------
-- Table structure for know
-- ----------------------------
DROP TABLE IF EXISTS `know`;
CREATE TABLE `know`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '知识点id',
  `milestoneId` bigint NULL DEFAULT NULL COMMENT '里程碑id',
  `knowName` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '知识点名称',
  `weekId` bigint NULL DEFAULT NULL COMMENT '周id',
  `isShow` int NULL DEFAULT 1 COMMENT '是否展示 0 不展示 1展示(默认)',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  `createTime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of know
-- ----------------------------
INSERT INTO `know` VALUES (1, 1, 'HTML基础语法', 1, 1, 1, '2023-10-26 08:30:00', '2023-10-26 08:30:00');
INSERT INTO `know` VALUES (2, 1, 'CSS选择器', 1, 1, 2, '2023-10-27 13:30:00', '2023-10-27 13:30:00');
INSERT INTO `know` VALUES (3, 1, '盒模型', 1, 1, 3, '2023-10-28 09:30:00', '2023-10-28 09:30:00');
INSERT INTO `know` VALUES (5, 2, 'IO流的使用', 4, 1, 3, '2023-10-26 08:30:00', '2023-10-26 08:30:00');
INSERT INTO `know` VALUES (10, 4, '嵌入式基础', 1, 1, 1, '2023-10-26 08:30:00', '2023-10-26 08:30:00');
INSERT INTO `know` VALUES (11, 4, 'C语音', 1, 1, 1, '2023-10-26 08:30:00', '2023-10-26 08:30:00');
INSERT INTO `know` VALUES (12, 5, 'python基础语法', 5, 1, 1, '2023-10-26 08:30:00', '2023-10-26 08:30:00');
INSERT INTO `know` VALUES (13, 6, 'python页面开发', 7, 1, 1, '2023-10-26 08:30:00', '2023-10-26 08:30:00');
INSERT INTO `know` VALUES (14, 5, 'Python爬虫', 5, 1, 1, '2023-11-24 08:42:35', '2023-11-24 08:42:35');
INSERT INTO `know` VALUES (15, 6, '前后端对接', 7, 1, 1, '2023-10-26 08:30:00', '2023-10-26 08:30:00');
INSERT INTO `know` VALUES (16, 2, 'Java基础语法', 4, 1, 4, '2023-10-26 08:30:00', '2023-10-26 08:30:00');
INSERT INTO `know` VALUES (17, 2, 'Java程序编写', 4, 1, 5, '2023-10-26 08:30:00', '2023-10-26 08:30:00');
INSERT INTO `know` VALUES (18, 7, 'HTML页面搭建', 8, 1, 1, '2023-10-26 08:30:00', '2023-10-26 08:30:00');
INSERT INTO `know` VALUES (19, 7, 'JavaWeb项目搭建', 8, 1, 1, '2023-10-26 08:30:00', '2023-10-26 08:30:00');
INSERT INTO `know` VALUES (20, 8, 'Spring入门', 9, 1, 1, '2023-10-26 08:30:00', '2023-10-26 08:30:00');
INSERT INTO `know` VALUES (21, 8, '注解开发', 9, 1, 1, '2023-10-26 08:30:00', '2023-10-26 08:30:00');
INSERT INTO `know` VALUES (22, 8, '配置文件编写', 9, 1, 1, '2023-10-26 08:30:00', '2023-10-26 08:30:00');
INSERT INTO `know` VALUES (23, 11, '特性', 10, 1, 1, '2023-10-26 08:30:00', '2023-10-26 08:30:00');
INSERT INTO `know` VALUES (24, 11, 'Spring事务', 10, 1, 1, '2023-10-26 08:30:00', '2023-10-26 08:30:00');
INSERT INTO `know` VALUES (25, 11, '集成各类框架', 10, 1, 1, '2023-10-26 08:30:00', '2023-10-26 08:30:00');
INSERT INTO `know` VALUES (31, 12, '网关', 11, 1, 1, '2023-10-26 08:30:00', '2023-10-26 08:30:00');
INSERT INTO `know` VALUES (32, 12, 'Fegin远程调用服务', 11, 1, 1, '2023-10-26 08:30:00', '2023-10-26 08:30:00');

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `time` bigint NULL DEFAULT NULL COMMENT '202303012 周一日期数',
  `type` bigint NULL DEFAULT NULL COMMENT '类型 1课程 2 商业项目 3 比赛 4 就业培训 5学生',
  `count` int NULL DEFAULT NULL COMMENT '数量',
  `subjectId` bigint NULL DEFAULT NULL COMMENT '专业id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES (1, 202310, 1, 2, 1);
INSERT INTO `log` VALUES (2, 202310, 2, 10, 1);
INSERT INTO `log` VALUES (3, 202310, 5, 6, 1);
INSERT INTO `log` VALUES (4, 202311, 1, 15, 2);
INSERT INTO `log` VALUES (5, 202311, 2, 13, 2);
INSERT INTO `log` VALUES (6, 202311, 5, 5, 2);
INSERT INTO `log` VALUES (7, 202312, 1, 30, 3);
INSERT INTO `log` VALUES (8, 202312, 2, 26, 3);
INSERT INTO `log` VALUES (9, 202312, 5, 25, 3);

-- ----------------------------
-- Table structure for medal
-- ----------------------------
DROP TABLE IF EXISTS `medal`;
CREATE TABLE `medal`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '勋章id',
  `medalName` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '勋章名称',
  `medalImg` varchar(512) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '勋章图片',
  `state` int NOT NULL DEFAULT 1 COMMENT '0禁用 1正常',
  `createTime` datetime NULL DEFAULT NULL,
  `updateTime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of medal
-- ----------------------------
INSERT INTO `medal` VALUES (1, '突出贡献', '\\upload\\banner\\4.png', 1, '2023-10-29 14:53:51', '2023-10-29 14:53:55');
INSERT INTO `medal` VALUES (2, '突飞猛进', '\\upload\\banner\\4.png', 1, '2023-10-29 14:53:51', '2023-10-29 14:53:55');
INSERT INTO `medal` VALUES (3, '勤劳卫生', '\\upload\\banner\\4.png', 1, '2023-11-01 10:55:10', '2023-11-01 10:55:13');
INSERT INTO `medal` VALUES (4, '进度先锋', '\\upload\\banner\\4.png', 1, '2023-11-01 10:55:10', '2023-11-01 10:55:13');
INSERT INTO `medal` VALUES (5, '能言善辩', '\\upload\\banner\\4.png', 1, '2023-11-01 10:55:10', '2023-11-01 10:55:13');
INSERT INTO `medal` VALUES (6, '工作时长', '\\upload\\banner\\4.png', 1, '2023-11-01 10:55:10', '2023-11-01 10:55:13');

-- ----------------------------
-- Table structure for milestone
-- ----------------------------
DROP TABLE IF EXISTS `milestone`;
CREATE TABLE `milestone`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '课程id',
  `milestoneName` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '课程名',
  `subjectId` bigint NULL DEFAULT NULL COMMENT '专业id',
  `icon` varchar(512) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '图标',
  `womanClothingId` bigint NULL DEFAULT NULL COMMENT '女生衣服id 与课程绑定',
  `manClothingId` bigint NULL DEFAULT NULL COMMENT '男生衣服id 与课程绑定',
  `startTime` datetime NULL DEFAULT NULL COMMENT '课程开始时间',
  `endTime` datetime NULL DEFAULT NULL COMMENT '课程结束时间',
  `target` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '学习目标',
  `type` int NULL DEFAULT 1 COMMENT '类型 1课程 2 商业项目 3 比赛 4 就业培训',
  `state` int NOT NULL DEFAULT 1 COMMENT '0禁用 1正常',
  `createTime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of milestone
-- ----------------------------
INSERT INTO `milestone` VALUES (1, '网页布局', 5, '\\upload\\banner\\kecheng1.png', 9, 23, '2023-10-25 09:00:00', '2023-10-26 12:00:00', '<p>1.使用CSS高级特效,丰富网页元素的呈现方式和效果;</p>\r\n<p>2.使用rem或vw/vh实现网页元素宽高随着视口变化等比缩放的效果;</p>\r\n<p>3.使用bootstrap框架布局响应式网页。</p>', 1, 1, '2023-10-26 08:30:00', '2023-10-26 08:30:00');
INSERT INTO `milestone` VALUES (2, 'Java基础', 3, '\\upload\\banner\\kecheng2.png', 8, 22, '2023-10-26 09:00:00', '2023-10-26 12:00:00', '<p>1.学习Java基础语法;</p>\r\n<p>2.能够使用Java语言编写简易程序;</p>\r\n<p>3.了解Java多线程相关知识</p>', 1, 1, '2023-10-27 13:30:00', '2023-10-27 13:30:00');
INSERT INTO `milestone` VALUES (4, '嵌入式开发', 2, '\\upload\\banner\\kecheng3.png', 18, 2, '2023-10-26 09:00:00', '2023-12-01 12:00:00', '<p>1.使用CSS高级特效,丰富网页元素的呈现方式和效果;</p>\r\n<p>2.使用rem或vw/vh实现网页元素宽高随着视口变化等比缩放的效果;</p>\r\n<p>3.使用bootstrap框架布局响应式网页。</p>', 1, 1, '2023-10-28 09:30:00', '2023-10-28 09:30:00');
INSERT INTO `milestone` VALUES (5, 'python基础', 1, '\\upload\\banner\\kecheng4.png', 18, 15, '2023-10-26 09:00:00', '2023-12-01 12:00:00', '<p>1.学习python基础语法;</p>\r\n<p>2.使用python编写简单的程序;</p>', 1, 1, '2023-10-28 09:30:00', '2023-10-28 09:30:00');
INSERT INTO `milestone` VALUES (6, 'pythonWeb', 1, '\\upload\\banner\\kecheng1.png', 18, 15, '2023-10-26 09:00:00', '2023-12-01 12:00:00', '<p>1.使用pythonWeb构建简单的网页;</p>\r\n<p>2.实现前后端对接;</p>', 1, 1, '2023-10-28 09:30:00', '2023-10-28 09:30:00');
INSERT INTO `milestone` VALUES (7, 'JavaWeb学习', 3, '\\upload\\banner\\kecheng2.png', 18, 22, '2023-10-26 09:00:00', '2023-10-26 12:00:00', '<p>1.使用HTML进行页面搭建</p>\r\n<p>2.使用CSS高级特效,丰富网页元素的呈现方式和效果;</p>\r\n<p>3.使用JavaWeb搭建编写Web项目</p>', 1, 1, '2023-10-27 13:30:00', '2023-10-27 13:30:00');
INSERT INTO `milestone` VALUES (8, 'Spring框架', 3, '\\upload\\banner\\kecheng3.png', 9, 22, '2023-10-26 09:00:00', '2023-10-26 12:00:00', '<p>1.学习Spring IOC AOP等概念并了解如何使用;</p>\r\n<p>2.了解Spring各组件的关系;</p>\r\n<p>3.学习注解式开发;</p>', 1, 1, '2023-10-27 13:30:00', '2023-10-27 13:30:00');
INSERT INTO `milestone` VALUES (9, '比赛名称', 3, '\\upload\\banner\\kecheng4.png', 8, 22, '2024-01-01 12:00:00', '2024-02-01 12:00:00', '<p>1.学习Spring IOC AOP等概念并了解如何使用;</p>\r\n<p>2.了解Spring各组件的关系;</p>\r\n<p>3.学习注解式开发;</p>', 3, 1, '2024-03-21 13:30:00', '2023-10-27 13:30:00');
INSERT INTO `milestone` VALUES (10, '项目名称', 3, '\\upload\\banner\\kecheng1.png', 8, 22, '2024-01-01 12:00:00', '2024-02-01 12:00:00', '<p>1.学习Spring IOC AOP等概念并了解如何使用;</p>\r\n<p>2.了解Spring各组件的关系;</p>\r\n<p>3.学习注解式开发;</p>', 2, 1, '2023-10-27 13:30:00', '2023-10-27 13:30:00');
INSERT INTO `milestone` VALUES (11, 'SpringBoot框架', 3, '\\upload\\banner\\kecheng2.png', 8, 22, '2023-10-26 09:00:00', '2023-10-26 12:00:00', '<p>1.学习SpringBoot项目搭建;</p>\r\n<p>2.学习SpringBoot使用方式;</p>\r\n<p>3.使用SpringBoot完成正常项目的流程测试;</p>', 1, 1, '2023-10-27 13:30:00', '2023-10-27 13:30:00');
INSERT INTO `milestone` VALUES (12, 'SpringCloud微服务开发', 3, '\\upload\\banner\\kecheng2.png', 8, 22, '2023-10-26 09:00:00', '2023-10-26 12:00:00', '<p>1.学习搭建SpringCloud项目;</p>\r\n<p>2.了解SpringCloud项目调用流程;</p>\r\n<p>3.完成分库分表;</p>', 1, 1, '2023-10-27 13:30:00', '2023-10-27 13:30:00');

-- ----------------------------
-- Table structure for moonreport
-- ----------------------------
DROP TABLE IF EXISTS `moonreport`;
CREATE TABLE `moonreport`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '月度考核表id',
  `personnelId` bigint NULL DEFAULT NULL COMMENT '人员id',
  `videoPath` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '精彩瞬间视频路径',
  `theoryAchievement` int NULL DEFAULT NULL COMMENT '理论成绩',
  `practiceAchievement` int NULL DEFAULT NULL COMMENT '实践成绩',
  `weekId` bigint NULL DEFAULT NULL COMMENT '周id',
  `isPass` int NOT NULL DEFAULT 0 COMMENT '是否通过 0否 1是',
  `state` int NULL DEFAULT 1 COMMENT '状态0禁用  1正常',
  `createTime` datetime NULL DEFAULT NULL,
  `updateTime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of moonreport
-- ----------------------------

-- ----------------------------
-- Table structure for personnel
-- ----------------------------
DROP TABLE IF EXISTS `personnel`;
CREATE TABLE `personnel`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '人员信息id',
  `realName` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '人员名称',
  `sex` int NOT NULL DEFAULT 0 COMMENT '0未知 1男 2女',
  `stuId` int NULL DEFAULT NULL COMMENT '学号',
  `roleId` bigint NULL DEFAULT NULL COMMENT '职位id',
  `subjectId` bigint NULL DEFAULT NULL COMMENT '专业id',
  `avatar` varchar(512) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '头像',
  `feature` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '特点',
  `sort` int NOT NULL DEFAULT 1 COMMENT '排序',
  `state` int NOT NULL DEFAULT 1 COMMENT '0禁用 1正常',
  `exitReason` varchar(512) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '退出原因',
  `exitTime` datetime NULL DEFAULT NULL COMMENT '退出日期',
  `joinTime` datetime NULL DEFAULT NULL COMMENT '加入日期',
  `knowId` bigint NULL DEFAULT NULL COMMENT '知识点id  知识点进度',
  `createTime` datetime NULL DEFAULT NULL,
  `updateTime` datetime NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '职称',
  `subjectName` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '部门',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of personnel
-- ----------------------------
INSERT INTO `personnel` VALUES (1, '郝鑫', 1, 12345, 5, 5, '\\upload\\banner\\1.png', '打篮球', 1, 1, NULL, NULL, '2023-10-29 18:32:34', 1, '2023-10-26 09:00:00', '2023-10-26 09:00:00', '助理工程师', '嵌入式开发专业');
INSERT INTO `personnel` VALUES (2, '崔志勇', 1, 12345, 6, 5, '\\upload\\avatar\\touxiang.jpg', '打羽毛球', 1, 1, NULL, NULL, '2023-10-29 18:32:34', 1, '2023-10-26 09:00:00', '2023-10-26 09:00:00', '实习工程师', '嵌入式开发专业');
INSERT INTO `personnel` VALUES (3, '张翔宇', 1, 12345, 5, 3, '\\upload\\banner\\1.png', '打乒乓球', 1, 1, NULL, NULL, '2023-10-29 18:32:34', 1, '2023-10-26 09:00:00', '2023-10-26 09:00:00', '助理工程师', 'JAVA开发专业');
INSERT INTO `personnel` VALUES (4, '胡玥林', 0, 12345, 6, 3, '\\upload\\avatar\\touxiang1.jpg', '打乒乓球', 1, 1, NULL, NULL, '2023-10-29 18:32:34', 1, '2023-10-26 09:00:00', '2023-10-26 09:00:00', '实习工程师', 'JAVA开发专业');
INSERT INTO `personnel` VALUES (5, '李冰冰', 1, 12345, 5, 1, '\\upload\\banner\\1.png', '打乒乓球', 1, 1, NULL, NULL, '2023-10-29 18:32:34', 1, '2023-10-26 09:00:00', '2023-10-26 09:00:00', '助理工程师', 'JAVA开发专业');
INSERT INTO `personnel` VALUES (6, '赵云泽', 1, 12345, 6, 1, '\\upload\\avatar\\touxiang.jpg', '打乒乓球', 1, 1, NULL, NULL, '2023-10-29 18:32:34', 1, '2023-10-26 09:00:00', '2023-10-26 09:00:00', '实习工程师', 'JAVA开发专业');
INSERT INTO `personnel` VALUES (7, '任孟欣', 1, 12345, 5, 2, '\\upload\\banner\\1.png', '打乒乓球', 1, 1, NULL, NULL, '2023-10-29 18:32:34', 1, '2023-10-26 09:00:00', '2023-10-26 09:00:00', '助理工程师', 'AI开发专业');
INSERT INTO `personnel` VALUES (8, '魏树琪', 1, 12345, 5, 2, '\\upload\\banner\\1.png', '打乒乓球', 1, 1, NULL, NULL, '2023-10-29 18:32:34', 1, '2023-10-26 09:00:00', '2023-10-26 09:00:00', '助理工程师', 'AI开发专业');
INSERT INTO `personnel` VALUES (9, '卢玺', 1, 12345, 6, 2, '\\upload\\avatar\\touxiang.jpg', '打乒乓球', 1, 1, NULL, NULL, '2023-10-29 18:32:34', 1, '2023-10-26 09:00:00', '2023-10-26 09:00:00', '实习工程师', 'AI开发专业');
INSERT INTO `personnel` VALUES (10, '方华', 1, 12345, 6, 3, '\\upload\\avatar\\touxiang.jpg', '打乒乓球', 1, 1, NULL, NULL, '2023-10-29 18:32:34', 1, '2023-10-26 09:00:00', '2023-10-26 09:00:00', '实习工程师', 'JAVA开发专业');
INSERT INTO `personnel` VALUES (11, '张佳伟', 1, 12345, 5, 3, '\\upload\\banner\\1.png', '打乒乓球', 1, 1, NULL, NULL, '2023-10-29 18:32:34', 1, '2023-10-26 09:00:00', '2023-10-26 09:00:00', '助理工程师', 'JAVA开发专业');
INSERT INTO `personnel` VALUES (12, '胡聪聪', 0, 12345, 5, 1, '\\upload\\banner\\1.png', '打乒乓球', 1, 1, NULL, NULL, '2023-10-29 18:32:34', 1, '2023-10-26 09:00:00', '2023-10-26 09:00:00', '助理工程师', 'JAVA开发专业');
INSERT INTO `personnel` VALUES (13, '张旭光', 1, 12345, 5, 5, '\\upload\\banner\\1.png', '打篮球', 1, 1, NULL, NULL, '2023-10-29 18:32:34', 1, '2023-10-26 09:00:00', '2023-10-26 09:00:00', '助理工程师', '嵌入式开发专业');
INSERT INTO `personnel` VALUES (14, '王超', 1, 12345, 6, 3, '\\upload\\avatar\\touxiang.jpg', '打乒乓球', 1, 1, NULL, NULL, '2023-10-29 18:32:34', 1, '2023-10-26 09:00:00', '2023-10-26 09:00:00', '实习工程师', 'JAVA开发专业');
INSERT INTO `personnel` VALUES (15, '范向东', 1, 12345, 6, 3, '\\upload\\avatar\\touxiang.jpg', '打乒乓球', 1, 1, NULL, NULL, '2023-10-29 18:32:34', 1, '2023-10-26 09:00:00', '2023-10-26 09:00:00', '实习工程师', 'JAVA开发专业');
INSERT INTO `personnel` VALUES (16, '吴鑫月', 0, 12345, 6, 5, '\\upload\\avatar\\touxiang1.jpg', '打羽毛球', 1, 1, NULL, NULL, '2023-10-29 18:32:34', 1, '2023-10-26 09:00:00', '2023-10-26 09:00:00', '实习工程师', '嵌入式开发专业');
INSERT INTO `personnel` VALUES (17, '刘俊浩', 1, 12345, 6, 5, '\\upload\\avatar\\touxiang.jpg', '打羽毛球', 1, 1, NULL, NULL, '2023-10-29 18:32:34', 1, '2023-10-26 09:00:00', '2023-10-26 09:00:00', '实习工程师', '嵌入式开发专业');
INSERT INTO `personnel` VALUES (18, '许正豪', 1, 12345, 6, 5, '\\upload\\avatar\\touxiang.jpg', '打羽毛球', 1, 1, NULL, NULL, '2023-10-29 18:32:34', 1, '2023-10-26 09:00:00', '2023-10-26 09:00:00', '实习工程师', '嵌入式开发专业');
INSERT INTO `personnel` VALUES (19, '许子寒', 1, 12345, 6, 5, '\\upload\\avatar\\touxiang.jpg', '打羽毛球', 1, 1, NULL, NULL, '2023-10-29 18:32:34', 1, '2023-10-26 09:00:00', '2023-10-26 09:00:00', '实习工程师', '嵌入式开发专业');
INSERT INTO `personnel` VALUES (20, '贾清雨', 1, 12345, 6, 5, '\\upload\\avatar\\touxiang.jpg', '打羽毛球', 1, 1, NULL, NULL, '2023-10-29 18:32:34', 1, '2023-10-26 09:00:00', '2023-10-26 09:00:00', '实习工程师', '嵌入式开发专业');
INSERT INTO `personnel` VALUES (21, '陈嘉深', 1, 12345, 6, 2, '\\upload\\avatar\\touxiang.jpg', '打乒乓球', 1, 1, NULL, NULL, '2023-10-29 18:32:34', 1, '2023-10-26 09:00:00', '2023-10-26 09:00:00', '实习工程师', 'AI开发专业');
INSERT INTO `personnel` VALUES (23, '李向阳', 1, 12345, 6, 3, '\\upload\\avatar\\touxiang.jpg', '打乒乓球', 1, 1, NULL, NULL, '2023-10-29 18:32:34', 1, '2023-10-26 09:00:00', '2023-10-26 09:00:00', '实习工程师', 'JAVA开发专业');
INSERT INTO `personnel` VALUES (24, '张家庆', 1, 12345, 6, 2, '\\upload\\avatar\\touxiang.jpg', '打乒乓球', 1, 1, NULL, NULL, '2023-10-29 18:32:34', 1, '2023-10-26 09:00:00', '2023-10-26 09:00:00', '实习工程师', 'AI开发专业');
INSERT INTO `personnel` VALUES (25, '孟羽佳', 1, 12345, 6, 2, '\\upload\\avatar\\touxiang.jpg', '打乒乓球', 1, 1, NULL, NULL, '2023-10-29 18:32:34', 1, '2023-10-26 09:00:00', '2023-10-26 09:00:00', '实习工程师', 'AI开发专业');
INSERT INTO `personnel` VALUES (26, '周磊', 1, 12345, 6, 2, '\\upload\\avatar\\touxiang.jpg', '打乒乓球', 1, 1, NULL, NULL, '2023-10-29 18:32:34', 1, '2023-10-26 09:00:00', '2023-10-26 09:00:00', '实习工程师', 'AI开发专业');
INSERT INTO `personnel` VALUES (27, '孙志浩', 1, 12345, 6, 1, '\\upload\\avatar\\touxiang.jpg', '打王者', 1, 1, NULL, NULL, '2023-12-20 23:45:05', 1, '2023-12-20 23:45:14', '2023-12-20 23:45:09', '实习工程师', 'JAVA开发专业');
INSERT INTO `personnel` VALUES (28, '王莲峰', 1, 12345, 6, 1, '\\upload\\avatar\\touxiang.jpg', '打英雄联盟', 1, 1, NULL, NULL, '2023-12-20 23:45:05', 1, '2023-12-20 23:45:14', '2023-12-20 23:45:09', '实习工程师', 'JAVA开发专业');
INSERT INTO `personnel` VALUES (29, '张海舰', 1, 12345, 6, 1, '\\upload\\avatar\\touxiang.jpg', '看剧', 1, 1, NULL, NULL, '2023-12-20 23:45:05', 1, '2023-12-20 23:45:14', '2023-12-20 23:45:09', '实习工程师', 'JAVA开发专业');

-- ----------------------------
-- Table structure for personnelhonordata
-- ----------------------------
DROP TABLE IF EXISTS `personnelhonordata`;
CREATE TABLE `personnelhonordata`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '人员荣誉关联id',
  `personnelId` bigint NULL DEFAULT NULL COMMENT '人员id',
  `honorId` bigint NULL DEFAULT NULL COMMENT '荣誉id',
  `createTime` datetime NULL DEFAULT NULL,
  `updateTime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of personnelhonordata
-- ----------------------------
INSERT INTO `personnelhonordata` VALUES (1, 2, 1, '2023-11-01 08:49:03', '2023-11-01 08:49:03');
INSERT INTO `personnelhonordata` VALUES (2, 2, 2, '2023-11-01 08:49:03', '2023-11-01 08:49:03');
INSERT INTO `personnelhonordata` VALUES (3, 14, 1, '2023-11-01 08:49:03', '2023-11-01 08:49:03');
INSERT INTO `personnelhonordata` VALUES (4, 15, 1, '2023-11-01 08:49:03', '2023-11-01 08:49:03');
INSERT INTO `personnelhonordata` VALUES (5, 16, 1, '2023-11-01 08:49:03', '2023-11-01 08:49:03');
INSERT INTO `personnelhonordata` VALUES (6, 17, 1, '2023-11-01 08:49:03', '2023-11-01 08:49:03');
INSERT INTO `personnelhonordata` VALUES (7, 18, 1, '2023-11-01 08:49:03', '2023-11-01 08:49:03');
INSERT INTO `personnelhonordata` VALUES (8, 19, 1, '2023-11-01 08:49:03', '2023-11-01 08:49:03');
INSERT INTO `personnelhonordata` VALUES (9, 20, 1, '2023-11-01 08:49:03', '2023-11-01 08:49:03');
INSERT INTO `personnelhonordata` VALUES (10, 21, 1, '2023-11-01 08:49:03', '2023-11-01 08:49:03');
INSERT INTO `personnelhonordata` VALUES (11, 22, 1, '2023-11-01 08:49:03', '2023-11-01 08:49:03');
INSERT INTO `personnelhonordata` VALUES (12, 23, 1, '2023-11-01 08:49:03', '2023-11-01 08:49:03');
INSERT INTO `personnelhonordata` VALUES (13, 4, 2, '2023-11-01 08:49:03', '2023-11-01 08:49:03');

-- ----------------------------
-- Table structure for personnelmedaldata
-- ----------------------------
DROP TABLE IF EXISTS `personnelmedaldata`;
CREATE TABLE `personnelmedaldata`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '人员勋章关联id',
  `personnelId` bigint NULL DEFAULT NULL COMMENT '人员id',
  `medalId` bigint NULL DEFAULT NULL COMMENT '勋章id',
  `createTime` datetime NULL DEFAULT NULL,
  `updateTime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of personnelmedaldata
-- ----------------------------
INSERT INTO `personnelmedaldata` VALUES (1, 2, 1, '2023-10-29 14:53:09', '2023-10-29 14:53:12');
INSERT INTO `personnelmedaldata` VALUES (2, 2, 2, '2023-11-11 14:33:31', '2023-11-11 14:33:34');

-- ----------------------------
-- Table structure for personnelmilestonedata
-- ----------------------------
DROP TABLE IF EXISTS `personnelmilestonedata`;
CREATE TABLE `personnelmilestonedata`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '人员课程关联表',
  `personnelId` bigint NOT NULL COMMENT '人员id',
  `milestoneId` bigint NULL DEFAULT NULL COMMENT '课程id',
  `isPass` int NOT NULL DEFAULT 0 COMMENT '是否通过 0否 1是',
  `createTime` datetime NULL DEFAULT NULL,
  `updateTime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of personnelmilestonedata
-- ----------------------------
INSERT INTO `personnelmilestonedata` VALUES (1, 2, 1, 1, '2023-11-01 08:49:03', '2023-11-01 08:49:03');
INSERT INTO `personnelmilestonedata` VALUES (2, 2, 2, 1, '2023-11-01 08:49:03', '2023-11-01 08:49:03');
INSERT INTO `personnelmilestonedata` VALUES (3, 4, 1, 1, '2023-11-01 08:49:03', '2023-11-01 08:49:03');
INSERT INTO `personnelmilestonedata` VALUES (4, 4, 2, 1, '2023-11-01 08:49:03', '2023-11-01 08:49:03');
INSERT INTO `personnelmilestonedata` VALUES (5, 8, 1, 1, '2023-11-01 08:49:03', '2023-11-01 08:49:03');
INSERT INTO `personnelmilestonedata` VALUES (6, 8, 2, 1, '2023-11-01 08:49:03', '2023-11-01 08:49:03');
INSERT INTO `personnelmilestonedata` VALUES (7, 8, 3, 1, '2023-11-01 08:49:03', '2023-11-01 08:49:03');
INSERT INTO `personnelmilestonedata` VALUES (8, 4, 3, 1, '2023-11-01 08:49:03', '2023-11-01 08:49:03');
INSERT INTO `personnelmilestonedata` VALUES (9, 14, 2, 1, '2023-11-01 08:49:03', '2023-11-01 08:49:03');
INSERT INTO `personnelmilestonedata` VALUES (10, 6, 5, 1, '2023-11-01 08:49:03', '2023-11-01 08:49:03');
INSERT INTO `personnelmilestonedata` VALUES (11, 6, 6, 0, '2023-11-01 08:49:03', '2023-11-01 08:49:03');
INSERT INTO `personnelmilestonedata` VALUES (12, 10, 2, 1, '2023-11-01 08:49:03', '2023-11-01 08:49:03');
INSERT INTO `personnelmilestonedata` VALUES (13, 10, 7, 1, '2023-11-01 08:49:03', '2023-11-01 08:49:03');
INSERT INTO `personnelmilestonedata` VALUES (14, 10, 8, 1, '2023-11-01 08:49:03', '2023-11-01 08:49:03');
INSERT INTO `personnelmilestonedata` VALUES (15, 14, 2, 0, '2023-11-01 08:49:03', '2023-11-01 08:49:03');
INSERT INTO `personnelmilestonedata` VALUES (16, 14, 7, 0, '2023-11-01 08:49:03', '2023-11-01 08:49:03');
INSERT INTO `personnelmilestonedata` VALUES (17, 14, 8, 1, '2023-11-01 08:49:03', '2023-11-01 08:49:03');
INSERT INTO `personnelmilestonedata` VALUES (18, 15, 2, 1, '2023-11-01 08:49:03', '2023-11-01 08:49:03');
INSERT INTO `personnelmilestonedata` VALUES (19, 15, 7, 1, '2023-11-01 08:49:03', '2023-11-01 08:49:03');
INSERT INTO `personnelmilestonedata` VALUES (20, 15, 8, 1, '2023-11-01 08:49:03', '2023-11-01 08:49:03');
INSERT INTO `personnelmilestonedata` VALUES (21, 23, 2, 1, '2023-11-01 08:49:03', '2023-11-01 08:49:03');
INSERT INTO `personnelmilestonedata` VALUES (22, 23, 7, 1, '2023-11-01 08:49:03', '2023-11-01 08:49:03');
INSERT INTO `personnelmilestonedata` VALUES (23, 23, 8, 1, '2023-11-01 08:49:03', '2023-11-01 08:49:03');

-- ----------------------------
-- Table structure for personnelprojectdata
-- ----------------------------
DROP TABLE IF EXISTS `personnelprojectdata`;
CREATE TABLE `personnelprojectdata`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '项目人员关联表id',
  `personnelId` bigint NULL DEFAULT NULL COMMENT '人员id',
  `projectId` bigint NULL DEFAULT NULL COMMENT '项目id',
  `isComplete` int NULL DEFAULT 0 COMMENT '0未完成  1 已完成',
  `createTime` datetime NULL DEFAULT NULL,
  `updateTime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of personnelprojectdata
-- ----------------------------
INSERT INTO `personnelprojectdata` VALUES (1, 2, 1, 1, '2023-11-01 08:50:46', '2023-11-01 08:50:46');
INSERT INTO `personnelprojectdata` VALUES (2, 2, 2, 1, '2023-11-01 08:50:46', '2023-11-01 08:50:46');
INSERT INTO `personnelprojectdata` VALUES (3, 2, 3, 0, '2023-11-01 17:32:23', '2023-11-01 17:32:28');
INSERT INTO `personnelprojectdata` VALUES (4, 2, 4, 0, '2023-11-01 17:32:37', '2023-11-01 17:32:40');
INSERT INTO `personnelprojectdata` VALUES (5, 2, 5, 0, '2023-11-01 17:32:53', '2023-11-01 17:32:55');
INSERT INTO `personnelprojectdata` VALUES (6, 2, 6, 0, '2023-11-01 17:33:02', '2023-11-01 17:33:04');
INSERT INTO `personnelprojectdata` VALUES (7, 2, 1, 0, '2023-11-01 17:33:20', '2023-11-01 17:33:21');
INSERT INTO `personnelprojectdata` VALUES (8, 2, 2, 0, '2023-11-01 17:33:29', '2023-11-01 17:33:31');
INSERT INTO `personnelprojectdata` VALUES (9, 2, 3, 0, '2023-11-01 17:33:37', '2023-11-01 17:33:38');
INSERT INTO `personnelprojectdata` VALUES (10, 2, 4, 0, '2023-11-01 17:33:43', '2023-11-01 17:33:45');
INSERT INTO `personnelprojectdata` VALUES (11, 2, 5, 0, '2023-11-01 17:33:50', '2023-11-01 17:33:51');

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '项目id',
  `projectName` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '项目名',
  `projectImg` varchar(512) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '项目封面图',
  `startTime` datetime NULL DEFAULT NULL COMMENT '开始时间',
  `endTime` datetime NULL DEFAULT NULL COMMENT '结束时间',
  `state` int NOT NULL DEFAULT 1 COMMENT '0禁用 1正常',
  `createTime` datetime NULL DEFAULT NULL,
  `updateTime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of project
-- ----------------------------
INSERT INTO `project` VALUES (1, '启嘉校园', '\\upload\\banner\\xiangmu1.png', '2023-10-30 18:25:34', '2023-10-30 18:25:37', 1, '2023-11-01 08:50:08', '2023-11-01 08:50:11');
INSERT INTO `project` VALUES (2, '卓越平台', '\\upload\\banner\\xiangmu2.png', '2023-10-30 18:25:34', '2023-10-30 18:25:37', 1, '2023-11-01 08:50:08', '2023-11-01 08:50:11');
INSERT INTO `project` VALUES (3, 'AI', '\\upload\\banner\\xiangmu3.png', '2023-10-30 18:25:34', '2023-10-30 18:25:37', 1, '2023-11-01 08:50:08', '2023-11-01 08:50:11');
INSERT INTO `project` VALUES (4, 'AI绘诗', '\\upload\\banner\\xiangmu4.png', '2023-10-30 18:25:34', '2023-10-30 18:25:37', 1, '2023-11-01 08:50:08', '2023-11-01 08:50:11');
INSERT INTO `project` VALUES (5, 'AICode', '\\upload\\banner\\xiangmu1.png', '2023-10-30 18:25:34', '2023-10-30 18:25:37', 1, '2023-11-01 08:50:08', '2023-11-01 08:50:11');
INSERT INTO `project` VALUES (6, 'AIWill', '\\upload\\banner\\xiangmu2.png', '2023-10-30 18:25:34', '2023-10-30 18:25:37', 1, '2023-11-01 08:50:08', '2023-11-01 08:50:11');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '职位id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '职位名',
  `parentId` bigint NOT NULL DEFAULT 0 COMMENT '父级id',
  `level` int NOT NULL COMMENT '层级',
  `state` int NOT NULL DEFAULT 1 COMMENT '0禁用 1可用',
  `createTime` datetime NULL DEFAULT NULL,
  `updateTime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23112 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (2, '项目经理', 0, 1, 1, '2023-10-26 16:41:39', '2023-10-26 16:41:39');
INSERT INTO `role` VALUES (3, '技术经理', 2, 2, 1, '2023-10-26 17:51:57', '2023-10-26 17:51:57');
INSERT INTO `role` VALUES (5, '助理工程师', 3, 3, 1, '2023-10-26 23:35:34', '2023-10-26 23:35:34');
INSERT INTO `role` VALUES (6, '实习工程师', 5, 4, 1, '2023-10-26 23:35:50', '2023-10-26 23:35:50');
INSERT INTO `role` VALUES (9, '优秀员工', 3, 3, 1, '2023-10-27 09:09:54', '2023-10-27 09:09:54');

-- ----------------------------
-- Table structure for subject
-- ----------------------------
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '专业id',
  `userId` bigint NULL DEFAULT NULL COMMENT '管理员id',
  `info` varchar(512) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '专业信息',
  `subjectName` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '专业名',
  `cover` varchar(512) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '封面图',
  `theme` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '主体色',
  `coverActive` varchar(512) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '封面激活图',
  `sort` int NOT NULL DEFAULT 1 COMMENT '排序',
  `state` int NOT NULL DEFAULT 1 COMMENT '0下架 1正常',
  `createTime` datetime NULL DEFAULT NULL,
  `updateTime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of subject
-- ----------------------------
INSERT INTO `subject` VALUES (1, 5, 'Artificial Intelligence Major', '人工智能专业', '/upload/subject/Artificial.png', '#274D7F', '/upload/subject/Artificial_active.png', 1, 1, '2023-10-26 08:30:00', '2023-10-26 08:30:00');
INSERT INTO `subject` VALUES (2, 7, 'Embedded Professional', '嵌入式专业', '/upload/subject/Industrial.png', '#008CE2', '/upload/subject/Industrial_active.png', 1, 1, '2023-10-27 13:30:00', '2023-10-27 13:30:00');
INSERT INTO `subject` VALUES (3, 5, 'Java Development Major', 'JAVA开发专业', '/upload/subject/Java.png', '#2365C4', '/upload/subject/Java_active.png', 1, 1, '2023-11-01 08:29:35', '2023-11-01 08:29:38');
INSERT INTO `subject` VALUES (5, 6, 'Front End Development Major', '前端开发专业', '/upload/subject/web.png', '#FE6B1E', '/upload/subject/web_active.png', 1, 1, '2023-11-01 08:29:35', '2023-11-01 08:29:38');

-- ----------------------------
-- Table structure for sysuser
-- ----------------------------
DROP TABLE IF EXISTS `sysuser`;
CREATE TABLE `sysuser`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户主键',
  `phone` char(11) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '手机/账号',
  `avatar` varchar(512) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '头像',
  `sex` int NULL DEFAULT NULL COMMENT '0未知 1女 2男',
  `realName` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '姓名',
  `password` varchar(512) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '密码',
  `roleId` bigint NULL DEFAULT NULL COMMENT '角色id',
  `createTime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `state` int NOT NULL DEFAULT 1 COMMENT '状态 0已注销 1正常',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sysuser
-- ----------------------------
INSERT INTO `sysuser` VALUES (4, '17659700883', '\\upload\\banner\\1.png', 0, '看海蚂蚁', 'e10adc3949ba59abbe56e057f20f883e', 2, '2023-10-27 15:30:23', '2023-10-27 15:30:26', 1);
INSERT INTO `sysuser` VALUES (5, '17582011026', '\\upload\\banner\\1.png', 1, '赵子宣', 'e10adc3949ba59abbe56e057f20f883e', 3, '2023-10-27 15:30:28', '2023-10-27 15:30:30', 1);
INSERT INTO `sysuser` VALUES (6, '17582011027', '\\upload\\banner\\1.png', 1, '理想', 'e10adc3949ba59abbe56e057f20f883e', 3, '2023-11-01 08:15:14', '2023-11-01 08:15:17', 1);
INSERT INTO `sysuser` VALUES (7, '17582011028', '\\upload\\banner\\1.png', 1, '王刚', 'e10adc3949ba59abbe56e057f20f883e', 3, '2023-11-01 08:15:14', '2023-11-01 08:15:17', 1);

-- ----------------------------
-- Table structure for technicalpoints
-- ----------------------------
DROP TABLE IF EXISTS `technicalpoints`;
CREATE TABLE `technicalpoints`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '技术点id',
  `knowId` bigint NULL DEFAULT NULL COMMENT '知识点id',
  `technicalPointsName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '技术点名',
  `state` int NULL DEFAULT 1 COMMENT '状态 0禁用 1正常',
  `createTime` datetime NULL DEFAULT NULL,
  `updateTime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of technicalpoints
-- ----------------------------
INSERT INTO `technicalpoints` VALUES (1, 1, '排版标签', 1, '2023-11-02 17:45:01', '2023-11-02 17:45:01');
INSERT INTO `technicalpoints` VALUES (2, 1, 'HTML基础语法', 1, '2023-11-02 17:45:01', '2023-11-02 17:45:01');
INSERT INTO `technicalpoints` VALUES (3, 1, '多媒体标签', 1, '2023-11-02 17:45:01', '2023-11-02 17:45:01');
INSERT INTO `technicalpoints` VALUES (4, 1, '链接标签', 1, '2023-11-02 17:45:01', '2023-11-02 17:45:01');
INSERT INTO `technicalpoints` VALUES (5, 1, '列表标签', 1, '2023-11-02 17:45:01', '2023-11-02 17:45:01');
INSERT INTO `technicalpoints` VALUES (6, 1, '表格标签', 1, '2023-11-02 17:45:01', '2023-11-02 17:45:01');
INSERT INTO `technicalpoints` VALUES (7, 1, '表单标签', 1, '2023-11-02 17:45:01', '2023-11-02 17:45:01');
INSERT INTO `technicalpoints` VALUES (8, 1, '路径', 1, '2023-11-02 17:45:01', '2023-11-02 17:45:01');
INSERT INTO `technicalpoints` VALUES (9, 12, '分支条件判断', 1, '2023-11-02 17:45:01', '2023-11-02 17:45:01');
INSERT INTO `technicalpoints` VALUES (10, 5, '连接配置 | 连接池参数 | 表设计三范式', 1, '2023-11-02 17:45:01', '2023-11-02 17:45:01');
INSERT INTO `technicalpoints` VALUES (11, 16, '语法规范 | 权限范围 ', 1, '2023-11-02 17:45:01', '2023-11-02 17:45:01');
INSERT INTO `technicalpoints` VALUES (12, 17, '命名规范 | 流程控制', 1, '2023-11-02 17:45:01', '2023-11-02 17:45:01');
INSERT INTO `technicalpoints` VALUES (13, 18, 'HTML基础语法 | CSS样式 | JS基础', 1, '2023-11-02 17:45:01', '2023-11-02 17:45:01');
INSERT INTO `technicalpoints` VALUES (14, 19, '数据库连接 | tomcat部署', 1, '2023-11-02 17:45:01', '2023-11-02 17:45:01');
INSERT INTO `technicalpoints` VALUES (15, 20, 'IOC对象容器 | AOP切面编程', 1, '2023-11-02 17:45:01', '2023-11-02 17:45:01');
INSERT INTO `technicalpoints` VALUES (16, 21, '简化开发流程', 1, '2023-11-02 17:45:01', '2023-11-02 17:45:01');
INSERT INTO `technicalpoints` VALUES (17, 22, '配置数据库连接 | 属性配置', 1, '2023-11-02 17:45:01', '2023-11-02 17:45:01');
INSERT INTO `technicalpoints` VALUES (18, 23, '约定大于配置 | 内置tomcat | jar包版本控制', 1, '2023-11-02 17:45:01', '2023-11-02 17:45:01');
INSERT INTO `technicalpoints` VALUES (19, 24, '注解形成事务 | 交给Spring托管事务', 1, '2023-11-02 17:45:01', '2023-11-02 17:45:01');
INSERT INTO `technicalpoints` VALUES (20, 25, '集成Mybatis | 集成Redis', 1, '2023-11-02 17:45:01', '2023-11-02 17:45:01');
INSERT INTO `technicalpoints` VALUES (21, 31, 'GateWay网关的使用', 1, '2023-11-02 17:45:01', '2023-11-02 17:45:01');
INSERT INTO `technicalpoints` VALUES (22, 32, 'Feing实现远程服务调用', 1, '2023-11-02 17:45:01', '2023-11-02 17:45:01');

-- ----------------------------
-- Table structure for week
-- ----------------------------
DROP TABLE IF EXISTS `week`;
CREATE TABLE `week`  (
  `id` bigint NOT NULL COMMENT '周id',
  `startTime` datetime NULL DEFAULT NULL COMMENT '本周开始时间',
  `endTime` datetime NULL DEFAULT NULL COMMENT '本周结束时间',
  `milestoneId` bigint NULL DEFAULT NULL COMMENT '课程id',
  `videoPath` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '精彩瞬间视频路径',
  `type` int NULL DEFAULT NULL COMMENT '类型 1 周汇报 2 月汇报',
  `state` int NOT NULL DEFAULT 1 COMMENT '0禁用 1正常',
  `createTime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of week
-- ----------------------------
INSERT INTO `week` VALUES (1, '2023-10-25 00:00:00', '2023-10-31 23:59:59', 1, '\\upload\\shiping\\shiping1.mp4', 1, 1, '2023-10-26 09:00:00', '2023-10-26 09:00:00');
INSERT INTO `week` VALUES (4, '2023-11-08 00:00:00', '2023-11-14 23:59:59', 2, '\\upload\\shiping\\shiping1.mp4', 2, 1, '2023-10-26 09:00:00', '2023-10-26 09:00:00');
INSERT INTO `week` VALUES (5, '2023-11-08 00:00:00', '2023-11-14 23:59:59', 5, '\\upload\\shiping\\shiping1.mp4', 1, 1, '2023-10-26 09:00:00', '2023-10-26 09:00:00');
INSERT INTO `week` VALUES (7, '2023-11-08 00:00:00', '2023-11-14 23:59:59', 6, '\\upload\\shiping\\shiping1.mp4', 1, 1, '2023-10-26 09:00:00', '2023-10-26 09:00:00');
INSERT INTO `week` VALUES (8, '2023-11-08 00:00:00', '2023-11-14 23:59:59', 7, '\\upload\\shiping\\shiping1.mp4', 1, 1, '2023-10-26 09:00:00', '2023-10-26 09:00:00');
INSERT INTO `week` VALUES (9, '2023-11-08 00:00:00', '2023-11-14 23:59:59', 8, '\\upload\\shiping\\shiping1.mp4', 1, 1, '2023-10-26 09:00:00', '2023-10-26 09:00:00');
INSERT INTO `week` VALUES (10, '2023-11-08 00:00:00', '2023-11-14 23:59:59', 11, '\\upload\\shiping\\shiping1.mp4', 1, 1, '2023-10-26 09:00:00', '2023-10-26 09:00:00');
INSERT INTO `week` VALUES (11, '2023-11-08 00:00:00', '2023-11-14 23:59:59', 12, '\\upload\\shiping\\shiping1.mp4', 1, 1, '2023-10-26 09:00:00', '2023-10-26 09:00:00');

-- ----------------------------
-- Table structure for weekreport
-- ----------------------------
DROP TABLE IF EXISTS `weekreport`;
CREATE TABLE `weekreport`  (
  `id` bigint NOT NULL COMMENT '周汇报表',
  `personnelId` bigint NULL DEFAULT NULL COMMENT '人员id',
  `expressiveAbility` int NULL DEFAULT NULL COMMENT '表达能力 1-5',
  `workAbility` int NULL DEFAULT NULL COMMENT '学习能力 1-5',
  `skillAbility` int NULL DEFAULT NULL COMMENT '技术能力 1-5',
  `organizationalAbility` int NULL DEFAULT NULL COMMENT '组织能力 1-5',
  `theoryAchievement` int NULL DEFAULT NULL COMMENT '理论成绩',
  `practiceAchievement` int NULL DEFAULT NULL COMMENT '实践成绩',
  `charisma` int NULL DEFAULT NULL COMMENT '魅力 1-5',
  `isPass` int NOT NULL DEFAULT 0 COMMENT '是否通过 0否 1是',
  `subjectId` bigint NULL DEFAULT NULL COMMENT '专业id',
  `weekId` bigint NULL DEFAULT NULL COMMENT '周id',
  `createTime` datetime NULL DEFAULT NULL,
  `updateTime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of weekreport
-- ----------------------------
INSERT INTO `weekreport` VALUES (1, 1, 4, 3, 5, 2, 11, 22, 4, 1, 1, 1, '2023-10-26 09:00:00', '2023-10-26 09:00:00');
INSERT INTO `weekreport` VALUES (2, 2, 4, 3, 5, 2, 77, 88, 4, 1, 1, 3, '2023-10-26 09:00:00', '2023-10-26 09:00:00');
INSERT INTO `weekreport` VALUES (3, 3, 4, 3, 5, 2, 77, 88, 4, 1, 1, 1, '2023-10-26 09:00:00', '2023-10-26 09:00:00');
INSERT INTO `weekreport` VALUES (4, 2, 4, 3, 5, 2, 77, 88, 4, 1, 1, 1, '2023-10-26 09:00:00', '2023-10-26 09:00:00');
INSERT INTO `weekreport` VALUES (5, 10, 4, 4, 4, 3, 90, 98, 4, 1, 1, 5, '2023-10-26 09:00:00', '2023-10-26 09:00:00');
INSERT INTO `weekreport` VALUES (6, 22, 4, 3, 5, 2, 77, 88, 4, 1, 1, 5, '2023-10-26 09:00:00', '2023-10-26 09:00:00');
INSERT INTO `weekreport` VALUES (7, 10, 4, 4, 4, 3, 90, 98, 4, 1, 1, 7, '2023-10-26 09:00:00', '2023-10-26 09:00:00');
INSERT INTO `weekreport` VALUES (8, 22, 4, 3, 5, 2, 77, 88, 4, 1, 1, 7, '2023-10-26 09:00:00', '2023-10-26 09:00:00');
INSERT INTO `weekreport` VALUES (9, 4, 5, 4, 3, 4, 78, 91, 4, 1, 1, 4, '2023-10-26 09:00:00', '2023-10-26 09:00:00');
INSERT INTO `weekreport` VALUES (10, 14, 4, 4, 4, 3, 77, 92, 4, 1, 1, 4, '2023-10-26 09:00:00', '2023-10-26 09:00:00');
INSERT INTO `weekreport` VALUES (11, 15, 4, 5, 3, 4, 91, 89, 4, 1, 1, 4, '2023-10-26 09:00:00', '2023-10-26 09:00:00');
INSERT INTO `weekreport` VALUES (12, 4, 3, 3, 5, 4, 85, 93, 4, 1, 1, 8, '2023-10-26 09:00:00', '2023-10-26 09:00:00');
INSERT INTO `weekreport` VALUES (13, 14, 4, 5, 3, 3, 83, 94, 4, 1, 1, 8, '2023-10-26 09:00:00', '2023-10-26 09:00:00');
INSERT INTO `weekreport` VALUES (14, 15, 5, 3, 4, 4, 89, 88, 4, 1, 1, 8, '2023-10-26 09:00:00', '2023-10-26 09:00:00');
INSERT INTO `weekreport` VALUES (15, 4, 4, 5, 4, 3, 94, 89, 4, 1, 1, 9, '2023-10-26 09:00:00', '2023-10-26 09:00:00');
INSERT INTO `weekreport` VALUES (16, 14, 3, 4, 5, 3, 83, 94, 4, 1, 1, 9, '2023-10-26 09:00:00', '2023-10-26 09:00:00');
INSERT INTO `weekreport` VALUES (17, 15, 4, 3, 5, 3, 89, 88, 4, 1, 1, 9, '2023-10-26 09:00:00', '2023-10-26 09:00:00');
INSERT INTO `weekreport` VALUES (18, 4, 4, 5, 3, 4, 93, 93, 4, 1, 1, 10, '2023-10-26 09:00:00', '2023-10-26 09:00:00');
INSERT INTO `weekreport` VALUES (19, 14, 4, 5, 3, 5, 83, 85, 4, 1, 1, 10, '2023-10-26 09:00:00', '2023-10-26 09:00:00');
INSERT INTO `weekreport` VALUES (20, 15, 5, 3, 4, 4, 89, 83, 4, 1, 1, 10, '2023-10-26 09:00:00', '2023-10-26 09:00:00');
INSERT INTO `weekreport` VALUES (21, 4, 3, 3, 5, 4, 85, 93, 4, 1, 1, 11, '2023-10-26 09:00:00', '2023-10-26 09:00:00');
INSERT INTO `weekreport` VALUES (22, 14, 4, 5, 3, 3, 89, 94, 4, 1, 1, 11, '2023-10-26 09:00:00', '2023-10-26 09:00:00');
INSERT INTO `weekreport` VALUES (23, 15, 5, 3, 4, 4, 89, 88, 4, 1, 1, 11, '2023-10-26 09:00:00', '2023-10-26 09:00:00');
INSERT INTO `weekreport` VALUES (24, 6, 5, 3, 4, 4, 89, 88, 4, 1, 1, 5, '2023-10-26 09:00:00', '2023-10-26 09:00:00');

SET FOREIGN_KEY_CHECKS = 1;
