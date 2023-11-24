/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : localhost:3306
 Source Schema         : gym

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 27/04/2023 14:45:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for commodity
-- ----------------------------
DROP TABLE IF EXISTS `commodity`;
CREATE TABLE `commodity` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `price` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `cover` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `details` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of commodity
-- ----------------------------
BEGIN;
INSERT INTO `commodity` (`id`, `name`, `price`, `number`, `type`, `cover`, `details`) VALUES (1, '小米12pro', '4699', '100', 'Good', 'http://8.130.53.22:9092/files/4cc0c10960264f00a8a15cbe13cb8d36', '全新骁龙8 | 2K AMOLED');
INSERT INTO `commodity` (`id`, `name`, `price`, `number`, `type`, `cover`, `details`) VALUES (2, '小米12', '3999', '122', 'Good', 'http://8.130.53.22/files/3cf66117e0fa4d8599785ae89ac8a12a', '全新骁龙8 | 5000万主摄');
INSERT INTO `commodity` (`id`, `name`, `price`, `number`, `type`, `cover`, `details`) VALUES (3, '小米12X', '3199', '21', 'Good', 'http://8.130.53.22/files/48b624aae3f949a6b7a6fe4417081658', '骁龙870 | 5000万主摄');
INSERT INTO `commodity` (`id`, `name`, `price`, `number`, `type`, `cover`, `details`) VALUES (4, '红米note11', '1799', '2121', 'Good', 'http://8.130.53.22/files/c941409d63ac4828b18d04e62c7fb0ca', '三星AMOLED高刷屏');
INSERT INTO `commodity` (`id`, `name`, `price`, `number`, `type`, `cover`, `details`) VALUES (6, 'mi12pro', NULL, NULL, 'Scan', 'http://8.130.53.22:9092/files/395c2228a945481bae9e946bfcd3d2ab', '21');
INSERT INTO `commodity` (`id`, `name`, `price`, `number`, `type`, `cover`, `details`) VALUES (7, 'win11', NULL, NULL, 'Scan', 'http://8.130.53.22:9092/files/4cc0c10960264f00a8a15cbe13cb8d36', '21');
INSERT INTO `commodity` (`id`, `name`, `price`, `number`, `type`, `cover`, `details`) VALUES (8, 'mipad', NULL, NULL, 'Scan', 'http://8.130.53.22:9092/files/4cc0c10960264f00a8a15cbe13cb8d36', NULL);
INSERT INTO `commodity` (`id`, `name`, `price`, `number`, `type`, `cover`, `details`) VALUES (12, '小米11青春版', '1999', '321', 'Good', 'http://8.130.53.22/files/2f71875bca414144b4a5fc872c4fde8f', '6400万主摄像头  | 超线性立体声');
INSERT INTO `commodity` (`id`, `name`, `price`, `number`, `type`, `cover`, `details`) VALUES (13, '红米K50', '2199', '21112', 'Good', 'http://8.130.53.22/files/86a3b5ea41074d9fb843f704e0aed0e8', '2K直屏的狠旗舰');
INSERT INTO `commodity` (`id`, `name`, `price`, `number`, `type`, `cover`, `details`) VALUES (14, '红米K50pro', '2499', '21223', 'Good', 'http://8.130.53.22/files/a2a269fa9358407581b32b1586973af5', '2K直屏的狠旗舰');
INSERT INTO `commodity` (`id`, `name`, `price`, `number`, `type`, `cover`, `details`) VALUES (15, '红米K50电竞版', '3299', '1212', 'Good', 'http://8.130.53.22/files/ec1b3631c7864ceebd3eea57dc55488b', '全线拉满的冷旗舰');
COMMIT;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
BEGIN;
INSERT INTO `gen_table` (`table_id`, `table_name`, `table_comment`, `sub_table_name`, `sub_table_fk_name`, `class_name`, `tpl_category`, `package_name`, `module_name`, `business_name`, `function_name`, `function_author`, `gen_type`, `gen_path`, `options`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (60, 'tb_course', '课程表', NULL, NULL, 'TbCourse', 'crud', 'com.wanou.project.system', 'system', 'course', '课程', 'ruoyi', '0', '/', NULL, 'admin', '2023-04-19 18:58:46', '', NULL, NULL);
INSERT INTO `gen_table` (`table_id`, `table_name`, `table_comment`, `sub_table_name`, `sub_table_fk_name`, `class_name`, `tpl_category`, `package_name`, `module_name`, `business_name`, `function_name`, `function_author`, `gen_type`, `gen_path`, `options`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (61, 'tb_course_select', '课程选择', NULL, NULL, 'TbCourseSelect', 'crud', 'com.wanou.project.system', 'system', 'select', '课程选择', 'ruoyi', '0', '/', NULL, 'admin', '2023-04-19 19:15:16', '', NULL, NULL);
INSERT INTO `gen_table` (`table_id`, `table_name`, `table_comment`, `sub_table_name`, `sub_table_fk_name`, `class_name`, `tpl_category`, `package_name`, `module_name`, `business_name`, `function_name`, `function_author`, `gen_type`, `gen_path`, `options`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (62, 'tb_card', '打卡表', NULL, NULL, 'TbCard', 'crud', 'com.wanou.project.system', 'system', 'card', '打卡', 'ruoyi', '0', '/', NULL, 'admin', '2023-04-24 09:31:11', '', NULL, NULL);
INSERT INTO `gen_table` (`table_id`, `table_name`, `table_comment`, `sub_table_name`, `sub_table_fk_name`, `class_name`, `tpl_category`, `package_name`, `module_name`, `business_name`, `function_name`, `function_author`, `gen_type`, `gen_path`, `options`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (63, 'tb_qicai', '器材表', NULL, NULL, 'TbQicai', 'crud', 'com.wanou.project.system', 'system', 'qicai', '器材', 'ruoyi', '0', '/', NULL, 'admin', '2023-04-24 10:15:28', '', NULL, NULL);
INSERT INTO `gen_table` (`table_id`, `table_name`, `table_comment`, `sub_table_name`, `sub_table_fk_name`, `class_name`, `tpl_category`, `package_name`, `module_name`, `business_name`, `function_name`, `function_author`, `gen_type`, `gen_path`, `options`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (64, 'tb_member', '会员表', NULL, NULL, 'TbMember', 'crud', 'com.wanou.project.system', 'system', 'member', '会员', 'ruoyi', '0', '/', NULL, 'admin', '2023-04-24 14:40:44', '', NULL, NULL);
INSERT INTO `gen_table` (`table_id`, `table_name`, `table_comment`, `sub_table_name`, `sub_table_fk_name`, `class_name`, `tpl_category`, `package_name`, `module_name`, `business_name`, `function_name`, `function_author`, `gen_type`, `gen_path`, `options`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (65, 'tb_shop', '店面信息', NULL, NULL, 'TbShop', 'crud', 'com.wanou.project.system', 'system', 'shop', '店面信息', 'ruoyi', '0', '/', NULL, 'admin', '2023-04-24 15:39:52', '', NULL, NULL);
INSERT INTO `gen_table` (`table_id`, `table_name`, `table_comment`, `sub_table_name`, `sub_table_fk_name`, `class_name`, `tpl_category`, `package_name`, `module_name`, `business_name`, `function_name`, `function_author`, `gen_type`, `gen_path`, `options`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (66, 'tb_employee', '员工信息表', NULL, NULL, 'TbEmployee', 'crud', 'com.wanou.project.system', 'system', 'employee', '员工信息', 'ruoyi', '0', '/', NULL, 'admin', '2023-04-24 16:10:30', '', NULL, NULL);
INSERT INTO `gen_table` (`table_id`, `table_name`, `table_comment`, `sub_table_name`, `sub_table_fk_name`, `class_name`, `tpl_category`, `package_name`, `module_name`, `business_name`, `function_name`, `function_author`, `gen_type`, `gen_path`, `options`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (67, 'tb_project', '健身项目表', NULL, NULL, 'TbProject', 'crud', 'com.wanou.project.system', 'system', 'project', '健身项目', 'ruoyi', '0', '/', NULL, 'admin', '2023-04-24 16:48:46', '', NULL, NULL);
INSERT INTO `gen_table` (`table_id`, `table_name`, `table_comment`, `sub_table_name`, `sub_table_fk_name`, `class_name`, `tpl_category`, `package_name`, `module_name`, `business_name`, `function_name`, `function_author`, `gen_type`, `gen_path`, `options`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (68, 'tb_guide_project', '指导项目', NULL, NULL, 'TbGuideProject', 'crud', 'com.wanou.project.system', 'system', 'project', '指导项目', 'ruoyi', '0', '/', NULL, 'admin', '2023-04-24 17:34:08', '', NULL, NULL);
INSERT INTO `gen_table` (`table_id`, `table_name`, `table_comment`, `sub_table_name`, `sub_table_fk_name`, `class_name`, `tpl_category`, `package_name`, `module_name`, `business_name`, `function_name`, `function_author`, `gen_type`, `gen_path`, `options`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (69, 'tb_evaluate', '评价', NULL, NULL, 'TbEvaluate', 'crud', 'com.wanou.project.system', 'system', 'evaluate', '评价', 'ruoyi', '0', '/', NULL, 'admin', '2023-04-25 09:36:10', '', NULL, NULL);
INSERT INTO `gen_table` (`table_id`, `table_name`, `table_comment`, `sub_table_name`, `sub_table_fk_name`, `class_name`, `tpl_category`, `package_name`, `module_name`, `business_name`, `function_name`, `function_author`, `gen_type`, `gen_path`, `options`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (70, 'tb_jiaolian', '教练管理', NULL, NULL, 'TbJiaolian', 'crud', 'com.wanou.project.system', 'system', 'jiaolian', '教练管理', 'ruoyi', '0', '/', NULL, 'admin', '2023-04-25 15:58:30', '', NULL, NULL);
INSERT INTO `gen_table` (`table_id`, `table_name`, `table_comment`, `sub_table_name`, `sub_table_fk_name`, `class_name`, `tpl_category`, `package_name`, `module_name`, `business_name`, `function_name`, `function_author`, `gen_type`, `gen_path`, `options`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (71, 'tb_jl_select', '', NULL, NULL, 'TbJlSelect', 'crud', 'com.wanou.project.system', 'system', 'select', NULL, 'ruoyi', '0', '/', NULL, 'admin', '2023-04-25 16:17:57', '', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '字典类型',
  `sort` int DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=711 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
BEGIN;
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (652, '60', 'id', 'id', 'bigint', 'Long', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-04-19 18:58:46', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (653, '60', 'title', '课程名称', 'varchar(255)', 'String', 'title', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-04-19 18:58:46', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (654, '60', 'user_id', '创建人', 'bigint', 'Long', 'userId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-04-19 18:58:46', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (655, '60', 'status', '审核状态0待审核；1审核成功；2审核失败', 'tinyint', 'Long', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 4, 'admin', '2023-04-19 18:58:46', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (656, '60', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 5, 'admin', '2023-04-19 18:58:46', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (657, '61', 'id', 'id', 'int', 'Long', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-04-19 19:15:16', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (658, '61', 'user_id', '用户id', 'int', 'Long', 'userId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-04-19 19:15:16', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (659, '61', 'course_id', '课程id', 'int', 'Long', 'courseId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-04-19 19:15:16', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (660, '61', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 4, 'admin', '2023-04-19 19:15:16', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (661, '62', 'id', 'id', 'int', 'Long', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-04-24 09:31:11', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (662, '62', 'user_id', '用户id', 'int', 'Long', 'userId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-04-24 09:31:11', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (663, '62', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 3, 'admin', '2023-04-24 09:31:11', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (664, '62', 'address', '打卡地点', 'varchar(255)', 'String', 'address', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-04-24 09:31:11', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (665, '63', 'id', 'id', 'int', 'Long', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-04-24 10:15:28', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (666, '63', 'name', '器材名称', 'varchar(255)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-04-24 10:15:28', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (667, '63', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 3, 'admin', '2023-04-24 10:15:28', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (668, '64', 'id', 'id', 'int', 'Long', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-04-24 14:40:44', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (669, '64', 'user_id', '用户id', 'int', 'Long', 'userId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-04-24 14:40:44', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (670, '64', 'grade', '会员卡等级', 'varchar(255)', 'String', 'grade', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-04-24 14:40:44', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (671, '64', 'expire_time', '到期时间', 'datetime', 'Date', 'expireTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 4, 'admin', '2023-04-24 14:40:44', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (672, '64', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 5, 'admin', '2023-04-24 14:40:44', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (673, '64', 'card', '会员卡', 'varchar(255)', 'String', 'card', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, '', '2023-04-24 15:16:30', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (674, '65', 'id', 'id', 'int', 'Long', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-04-24 15:39:52', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (675, '65', 'name', '店铺名称', 'varchar(255)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-04-24 15:39:52', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (676, '65', 'summary', '店铺介绍', 'varchar(255)', 'String', 'summary', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-04-24 15:39:52', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (677, '65', 'address', '店铺地址', 'varchar(255)', 'String', 'address', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-04-24 15:39:52', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (678, '65', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 5, 'admin', '2023-04-24 15:39:52', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (679, '66', 'id', 'id', 'int', 'Long', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-04-24 16:10:30', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (680, '66', 'name', '姓名', 'varchar(255)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-04-24 16:10:30', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (681, '66', 'phone', '电话', 'varchar(255)', 'String', 'phone', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-04-24 16:10:30', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (682, '66', 'age', '年龄', 'int', 'Long', 'age', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-04-24 16:10:30', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (683, '66', 'post', '职位', 'varchar(255)', 'String', 'post', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-04-24 16:10:30', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (684, '66', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 6, 'admin', '2023-04-24 16:10:30', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (685, '67', 'id', 'id', 'int', 'Long', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-04-24 16:48:46', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (686, '67', 'name', '项目名称', 'varchar(255)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-04-24 16:48:46', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (687, '67', 'summary', '项目简介', 'varchar(255)', 'String', 'summary', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-04-24 16:48:46', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (688, '67', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 4, 'admin', '2023-04-24 16:48:46', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (689, '68', 'id', 'id', 'int', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-04-24 17:34:08', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (690, '68', 'name', '项目名称', 'varchar(255)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-04-24 17:34:08', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (691, '68', 'summary', '项目简介', 'varchar(255)', 'String', 'summary', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-04-24 17:34:08', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (692, '68', 'user_id', '用户', 'int', 'Long', 'userId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-04-24 17:34:08', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (693, '68', 'review', '审核；0待审核；1审核通过；2审核失败', 'int', 'Long', 'review', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-04-24 17:34:08', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (694, '68', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 6, 'admin', '2023-04-24 17:34:08', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (695, '69', 'id', 'id', 'int', 'Long', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-04-25 09:36:10', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (696, '69', 'content', '评价', 'text', 'String', 'content', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'editor', '', 2, 'admin', '2023-04-25 09:36:10', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (697, '69', 'type', '1课程评价 2教练评价', 'int', 'Long', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 3, 'admin', '2023-04-25 09:36:10', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (698, '69', 'user_id', '评价人', 'int', 'Long', 'userId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-04-25 09:36:10', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (699, '69', 'create_time', '创建人', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 5, 'admin', '2023-04-25 09:36:10', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (700, '69', 'common_id', '课程或教练id', 'int', 'Long', 'commonId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, '', '2023-04-25 14:38:13', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (701, '70', 'id', 'id', 'int', 'Long', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-04-25 15:58:30', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (702, '70', 'name', '姓名', 'varchar(255)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-04-25 15:58:30', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (703, '70', 'age', '年龄', 'int', 'Long', 'age', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-04-25 15:58:30', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (704, '70', 'phone', '电话', 'varchar(255)', 'String', 'phone', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-04-25 15:58:30', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (705, '70', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 5, 'admin', '2023-04-25 15:58:30', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (706, '71', 'id', 'id', 'int', 'Long', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-04-25 16:17:57', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (707, '71', 'user_id', '用户', 'int', 'Long', 'userId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-04-25 16:17:57', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (708, '71', 'jl_id', '教练', 'int', 'Long', 'jlId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-04-25 16:17:57', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (709, '71', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 4, 'admin', '2023-04-25 16:17:57', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (710, '70', 'course_name', '课程', 'varchar(255)', 'String', 'courseName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 6, '', '2023-04-25 17:25:09', '', NULL);
COMMIT;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `order_number` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `id` int NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `count` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `cover` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `dates` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `pay_state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `deliver_state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `deliver_number` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `address` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`order_id`) USING BTREE,
  KEY `idorder` (`id`) USING BTREE,
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of orders
-- ----------------------------
BEGIN;
INSERT INTO `orders` (`order_id`, `order_number`, `id`, `username`, `name`, `price`, `count`, `cover`, `dates`, `pay_state`, `deliver_state`, `deliver_number`, `address`) VALUES (7, '1164439867435746271', 1, '夏天', '小米12X 8GB+128GB 紫色', '3199.00', '1', 'http://localhost:9092/files/48b624aae3f949a6b7a6fe4417081658', '2022年02月09日 17:24:34', NULL, '已发货', '327513743213', '天津市河西区天津科技大学');
INSERT INTO `orders` (`order_id`, `order_number`, `id`, `username`, `name`, `price`, `count`, `cover`, `dates`, `pay_state`, `deliver_state`, `deliver_number`, `address`) VALUES (20, '11644550972476470', 1, '夏天', '小米12X 8GB+128GB 紫色', '3199.00', '1', 'http://localhost:9092/files/48b624aae3f949a6b7a6fe4417081658', '2022年02月11日 11:42:52', NULL, '已确认', NULL, '夏天 1882204679 青岛市黄岛区丁松路12号');
INSERT INTO `orders` (`order_id`, `order_number`, `id`, `username`, `name`, `price`, `count`, `cover`, `dates`, `pay_state`, `deliver_state`, `deliver_number`, `address`) VALUES (22, '2164456528071963359', 2, 'duoduo', '小米11青春版 8GB+128GB 紫色', '1999.00', '1', 'http://localhost:9092/files/2f71875bca414144b4a5fc872c4fde8f', '2022年02月11日 15:41:20', NULL, '已确认', NULL, '夏天 18822067367 天津市河西区天津科技大学');
INSERT INTO `orders` (`order_id`, `order_number`, `id`, `username`, `name`, `price`, `count`, `cover`, `dates`, `pay_state`, `deliver_state`, `deliver_number`, `address`) VALUES (29, '1164542133360548543', 1, '夏天', '小米12X 8GB+128GB 原野绿', '3199.00', '1', 'http://localhost:9092/files/48b624aae3f949a6b7a6fe4417081658', '2022年02月21日 13:28:53', NULL, '已发货', '12431264121221', '夏天 1882204679 青岛市黄岛区丁松路12号');
INSERT INTO `orders` (`order_id`, `order_number`, `id`, `username`, `name`, `price`, `count`, `cover`, `dates`, `pay_state`, `deliver_state`, `deliver_number`, `address`) VALUES (30, '1164630400157559289', 1, '夏天', '小米12X 8GB+128GB 原野绿', '3199.00', '1', 'http://localhost:9092/files/48b624aae3f949a6b7a6fe4417081658', '2022年03月03日 18:40:01', NULL, '未发货', NULL, '陈处 18822049633 陕西省西安市未央区');
INSERT INTO `orders` (`order_id`, `order_number`, `id`, `username`, `name`, `price`, `count`, `cover`, `dates`, `pay_state`, `deliver_state`, `deliver_number`, `address`) VALUES (31, '1164916260027326534', 1, '夏天', '小米12X 8GB+128GB 原野绿', '3199.00', '1', 'http://localhost:9092/files/48b624aae3f949a6b7a6fe4417081658', '2022年04月05日 20:43:20', NULL, '未发货', NULL, '陈处 18822049633 陕西省西安市未央区');
INSERT INTO `orders` (`order_id`, `order_number`, `id`, `username`, `name`, `price`, `count`, `cover`, `dates`, `pay_state`, `deliver_state`, `deliver_number`, `address`) VALUES (32, '1165154498010925632', 1, '夏天', '小米12X 8GB+128GB 原野绿', '3199.00', '1', 'http://localhost:9092/files/48b624aae3f949a6b7a6fe4417081658', '2022年05月03日 10:29:40', NULL, '未发货', NULL, '夏天 1882204679 青岛市黄岛区丁松路12号');
COMMIT;

-- ----------------------------
-- Table structure for shopcar
-- ----------------------------
DROP TABLE IF EXISTS `shopcar`;
CREATE TABLE `shopcar` (
  `shop_id` int NOT NULL AUTO_INCREMENT,
  `id` int NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `count` int DEFAULT NULL,
  `flag` tinyint DEFAULT NULL,
  `cover` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `details` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`shop_id`) USING BTREE,
  KEY `id` (`id`) USING BTREE,
  CONSTRAINT `shopcar_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of shopcar
-- ----------------------------
BEGIN;
INSERT INTO `shopcar` (`shop_id`, `id`, `username`, `name`, `price`, `count`, `flag`, `cover`, `details`) VALUES (27, 2, 'duoduo', '小米12pro 8GB+128GB 紫色', 4699.00, 1, NULL, 'http://localhost:9092/files/a4138398f9e6411e9dd32837f4024c61', NULL);
INSERT INTO `shopcar` (`shop_id`, `id`, `username`, `name`, `price`, `count`, `flag`, `cover`, `details`) VALUES (36, 2, 'duoduo', '小米12X 8GB+128GB 原野绿', 3199.00, 1, NULL, 'http://localhost:9092/files/48b624aae3f949a6b7a6fe4417081658', NULL);
INSERT INTO `shopcar` (`shop_id`, `id`, `username`, `name`, `price`, `count`, `flag`, `cover`, `details`) VALUES (37, 2, 'duoduo', '小米11青春版 8GB+128GB 紫色', 1999.00, 1, NULL, 'http://localhost:9092/files/2f71875bca414144b4a5fc872c4fde8f', NULL);
INSERT INTO `shopcar` (`shop_id`, `id`, `username`, `name`, `price`, `count`, `flag`, `cover`, `details`) VALUES (38, 2, 'duoduo', '小米12X 8GB+128GB 黑色', 3199.00, 1, NULL, 'http://localhost:9092/files/48b624aae3f949a6b7a6fe4417081658', NULL);
INSERT INTO `shopcar` (`shop_id`, `id`, `username`, `name`, `price`, `count`, `flag`, `cover`, `details`) VALUES (39, 2, 'duoduo', '小米12 16GB+256GB 紫色', 3999.00, 1, NULL, 'http://localhost:9092/files/3cf66117e0fa4d8599785ae89ac8a12a', NULL);
INSERT INTO `shopcar` (`shop_id`, `id`, `username`, `name`, `price`, `count`, `flag`, `cover`, `details`) VALUES (44, 1, '夏天', '小米12X 8GB+128GB 原野绿', 3199.00, 1, NULL, 'http://localhost:9092/files/48b624aae3f949a6b7a6fe4417081658', NULL);
INSERT INTO `shopcar` (`shop_id`, `id`, `username`, `name`, `price`, `count`, `flag`, `cover`, `details`) VALUES (45, 1, '夏天', '小米12pro 8GB+128GB 紫色', 4699.00, 1, NULL, 'http://localhost:9092/files/a4138398f9e6411e9dd32837f4024c61', NULL);
INSERT INTO `shopcar` (`shop_id`, `id`, `username`, `name`, `price`, `count`, `flag`, `cover`, `details`) VALUES (58, 1, '夏天', '小米12pro 8GB+128GB 黑色', 4699.00, 1, NULL, 'http://localhost:9092/files/a4138398f9e6411e9dd32837f4024c61', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
BEGIN;
INSERT INTO `sys_config` (`config_id`, `config_name`, `config_key`, `config_value`, `config_type`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2021-08-09 14:15:43', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` (`config_id`, `config_name`, `config_key`, `config_value`, `config_type`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2021-08-09 14:15:43', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` (`config_id`, `config_name`, `config_key`, `config_value`, `config_type`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2021-08-09 14:15:43', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` (`config_id`, `config_name`, `config_key`, `config_value`, `config_type`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (4, '账号自助-验证码开关', 'sys.account.captchaOnOff', 'true', 'Y', 'admin', '2021-08-09 14:15:43', '', NULL, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` (`config_id`, `config_name`, `config_key`, `config_value`, `config_type`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'true', 'Y', 'admin', '2021-08-09 14:15:43', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
COMMIT;

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '部门名称',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE,
  KEY `idx_dept_id` (`dept_id`) USING BTREE COMMENT '部门id索引',
  KEY `idx_ancestors` (`ancestors`) USING BTREE COMMENT '祖级部门id索引'
) ENGINE=InnoDB AUTO_INCREMENT=273 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
BEGIN;
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (100, 0, '0', '中南大学', 0, 'wanou', '15888888888', 'wanou@qq.com', '0', '0', 'admin', '2021-08-09 14:15:39', 'admin', '2021-12-06 16:09:39');
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (232, 100, '0,100', '安化县中医院', 1, '安华', '18876656575', '570682564@qq.com', '0', '2', 'admin', '2021-08-16 21:22:17', 'anhuaadmin', '2021-08-16 22:02:17');
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (233, 100, '0,100', '长沙珂信肿瘤医院', 2, NULL, NULL, NULL, '0', '2', 'admin', '2021-08-16 21:25:13', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (234, 100, '0,100', '长沙音乐厅', 3, NULL, NULL, NULL, '0', '2', 'admin', '2021-08-16 21:26:42', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (235, 100, '0,100', '常宁市中医院', 4, NULL, NULL, NULL, '0', '2', 'admin', '2021-08-16 21:27:14', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (236, 100, '0,100', '常宁文化执法大队', 5, NULL, NULL, NULL, '0', '2', 'admin', '2021-08-16 21:27:33', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (237, 100, '0,100', '郴州宜章县中医院', 6, NULL, NULL, NULL, '0', '2', 'admin', '2021-08-16 21:28:55', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (238, 100, '0,100', '城步县人民医院', 7, NULL, NULL, NULL, '0', '2', 'admin', '2021-08-16 21:30:10', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (239, 100, '0,100', '东坪镇安化县人民医院', 8, NULL, NULL, NULL, '0', '2', 'admin', '2021-08-16 21:30:39', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (240, 100, '0,100', '湖南妇幼保健医院', 9, NULL, NULL, NULL, '0', '2', 'admin', '2021-08-16 21:31:08', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (241, 100, '0,100', '湖南怀化第二人民医院', 10, NULL, NULL, NULL, '0', '2', 'admin', '2021-08-16 21:31:35', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (242, 100, '0,100', '湖南省职业病防治医院', 11, NULL, NULL, NULL, '0', '2', 'admin', '2021-08-16 21:31:58', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (243, 100, '0,100', '怀化市第二人民医院', 12, NULL, NULL, NULL, '0', '2', 'admin', '2021-08-16 21:32:51', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (244, 100, '0,100', '江华县界碑乡卫生院', 13, NULL, NULL, NULL, '0', '2', 'admin', '2021-08-16 21:33:25', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (245, 100, '0,100', '江华县桥市卫生院', 14, NULL, NULL, NULL, '0', '2', 'admin', '2021-08-16 21:33:55', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (246, 100, '0,100', '粟江卫生院', 15, NULL, NULL, NULL, '0', '2', 'admin', '2021-08-16 21:34:23', 'admin', '2021-08-16 21:38:45');
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (247, 100, '0,100', '临武县中医医院', 16, NULL, NULL, NULL, '0', '2', 'admin', '2021-08-16 21:34:58', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (248, 100, '0,100', '娄底妇幼保健医院', 17, NULL, NULL, NULL, '0', '2', 'admin', '2021-08-16 21:35:19', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (249, 100, '0,100', '马栏山人才公寓', 18, NULL, NULL, NULL, '0', '2', 'admin', '2021-08-16 21:35:34', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (250, 100, '0,100', '桑县人民医院', 19, NULL, NULL, NULL, '0', '2', 'admin', '2021-08-16 21:35:50', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (251, 100, '0,100', '桑植县名族中医院', 20, NULL, NULL, NULL, '0', '2', 'admin', '2021-08-16 21:36:07', 'admin', '2021-08-16 21:36:13');
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (252, 100, '0,100', '湘潭妇幼保健医院', 21, NULL, NULL, NULL, '0', '2', 'admin', '2021-08-16 21:36:34', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (253, 100, '0,100', '新宁县人民医院', 22, NULL, NULL, NULL, '0', '2', 'admin', '2021-08-16 21:37:04', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (254, 232, '0,100,232', '骨科部', 1, NULL, NULL, NULL, '0', '2', 'anhuaadmin', '2021-08-18 17:44:07', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (255, 232, '0,100,232', '神经科', 2, NULL, NULL, NULL, '0', '2', 'anhuaadmin', '2021-08-19 09:27:17', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (256, 100, '0,100', '邵阳医院', 11, NULL, NULL, NULL, '0', '2', 'admin', '2021-08-19 09:48:50', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (257, 256, '0,100,256', '骨科', 0, NULL, NULL, NULL, '0', '2', 'shaoyanadmin', '2021-08-19 09:51:14', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (258, 256, '0,100,256', '神经科', 2, NULL, NULL, NULL, '0', '2', 'shaoyanadmin', '2021-08-19 09:53:06', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (259, 256, '0,100,256', '妇科', 3, NULL, NULL, NULL, '0', '2', 'shaoyanadmin', '2021-08-19 12:02:31', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (260, 232, '0,100,232', '妇科', 5, NULL, NULL, NULL, '0', '2', 'anhuaadmin', '2021-08-19 16:55:51', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (261, 100, '0,100', '新邵人民医院', 23, NULL, NULL, NULL, '0', '2', 'admin', '2021-08-19 18:29:09', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (262, 261, '0,100,261', '耳鼻喉科', 0, NULL, NULL, NULL, '0', '2', 'xinshaoadmin', '2021-08-19 18:31:18', 'admin', '2021-08-30 09:14:42');
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (263, 232, '0,100,232', '手科', 6, NULL, NULL, NULL, '0', '2', 'anhuaadmin', '2021-08-19 18:45:38', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (264, 232, '0,100,232', '腿科', 5, NULL, NULL, NULL, '0', '2', 'anhuaadmin', '2021-08-28 16:16:38', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (265, 100, '0,100', '麓谷国际工业园', 8, 'luguadmin', NULL, NULL, '0', '2', 'admin', '2021-08-28 16:20:42', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (266, 100, '0,100', '湖南联通', 24, NULL, NULL, NULL, '0', '2', 'admin', '2021-11-09 15:08:58', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (267, 266, '0,100,266', '研发部', 0, NULL, NULL, NULL, '0', '2', 'hnliantong', '2021-11-09 15:19:10', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (268, 266, '0,100,266', '工程部', 1, NULL, NULL, NULL, '0', '2', 'hnliantong', '2021-11-09 19:00:25', 'hnliantong', '2021-11-09 19:01:56');
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (269, 266, '0,100,266', '工程部', 1, NULL, NULL, NULL, '0', '2', 'hnliantong', '2021-11-09 19:02:17', 'hnliantong', '2021-11-09 19:02:54');
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (270, 100, '0,100', 'nnn', 0, 'nnn', '19108474450', 'jhvbjhb@qq.com', '0', '2', 'admin', '2021-12-06 16:08:28', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (271, 100, '0,100', '化学实验', 1, '您能', '15654030888', 'ddcd@qq.com', '0', '0', 'admin', '2021-12-06 16:11:10', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (272, 100, '0,100', '计算机科学与技术', 1, '彻底的', '15641242013', 'cdgbh@qq.com', '0', '0', 'admin', '2021-12-06 16:12:19', '', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '性别男');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '性别女');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '通知');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '公告');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (18, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (19, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (20, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (21, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (22, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (23, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (24, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (25, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (26, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (27, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (28, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (100, 0, '正式工', '1', 'tex_personnel_type', NULL, 'default', 'N', '0', 'admin', '2021-08-11 17:23:12', '', NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (101, 0, '临时工', '2', 'tex_personnel_type', NULL, 'default', 'N', '0', 'admin', '2021-08-11 17:23:23', '', NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (102, 0, '访客', '3', 'tex_personnel_type', NULL, 'default', 'N', '0', 'admin', '2021-08-11 17:23:31', '', NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (103, 0, '研发部门', '103', 'tx_bumeng', NULL, 'default', 'N', '0', 'admin', '2021-08-11 21:11:27', '', NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (104, 0, '市场部门', '104', 'tx_bumeng', NULL, 'default', 'N', '0', 'admin', '2021-08-11 21:11:44', '', NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (105, 0, '测试部门', '105', 'tx_bumeng', NULL, 'default', 'N', '0', 'admin', '2021-08-11 21:12:00', 'admin', '2021-08-11 21:12:22', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (106, 0, '财务部门', '106', 'tx_bumeng', NULL, 'default', 'N', '0', 'admin', '2021-08-11 21:12:40', '', NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (107, 0, '运维部门', '107', 'tx_bumeng', NULL, 'default', 'N', '0', 'admin', '2021-08-11 21:13:10', '', NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (108, 0, '市场部门', '108', 'tx_bumeng', NULL, 'default', 'N', '0', 'admin', '2021-08-11 21:13:23', '', NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (109, 0, '财务部门', '109', 'tx_bumeng', NULL, 'default', 'N', '0', 'admin', '2021-08-11 21:13:34', '', NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (110, 0, '否', '0', 'sys_right', NULL, 'default', 'N', '0', 'admin', '2021-11-16 11:42:45', '', NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (111, 1, '是', '1', 'sys_right', NULL, 'default', 'N', '0', 'admin', '2021-11-16 11:42:57', '', NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (112, 0, '约谈', '1', 'client_type', NULL, 'default', 'N', '0', 'admin', '2021-12-22 16:17:42', '', NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (113, 0, '签约', '2', 'client_type', NULL, 'default', 'N', '0', 'admin', '2021-12-22 16:17:52', '', NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (114, 0, '拒绝', '3', 'client_type', NULL, 'default', 'N', '0', 'admin', '2021-12-22 16:18:01', '', NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (115, 0, '已接单', '0', 'order_status', NULL, 'default', 'N', '0', 'admin', '2021-12-23 15:13:32', '', NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (116, 0, '进行中', '1', 'order_status', NULL, 'default', 'N', '0', 'admin', '2021-12-23 15:13:47', '', NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (117, 0, '已结束', '2', 'order_status', NULL, 'default', 'N', '0', 'admin', '2021-12-23 15:14:29', '', NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (118, 0, '未支付', '0', 'pay_status', NULL, 'default', 'N', '0', 'admin', '2021-12-23 15:36:09', '', NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (119, 0, '已支付', '1', 'pay_status', NULL, 'default', 'N', '0', 'admin', '2021-12-23 15:36:16', '', NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (120, 0, '食材', '1', 'consume_status', NULL, 'default', 'N', '0', 'admin', '2022-01-07 15:46:23', '', NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (121, 0, '生活用品', '2', 'consume_status', NULL, 'default', 'N', '0', 'admin', '2022-01-07 15:46:31', '', NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (122, 0, '家具', '3', 'consume_status', NULL, 'default', 'N', '0', 'admin', '2022-01-07 15:46:40', '', NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (123, 0, '其它用品', '4', 'consume_status', NULL, 'default', 'N', '0', 'admin', '2022-01-07 15:46:47', '', NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (124, 0, '未上户', '0', 'station_status', NULL, NULL, 'N', '0', '', NULL, '', NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (125, 0, '上户', '1', 'station_status', NULL, NULL, 'N', '0', '', NULL, '', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE KEY `dict_type` (`dict_type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '登录状态列表');
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (100, '部门类型', 'tx_bumeng', '1', 'admin', '2021-08-11 16:34:44', 'admin', '2021-08-14 11:45:56', '部门类型列表');
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (101, '人员类型', 'tex_personnel_type', '0', 'admin', '2021-08-11 16:37:09', 'admin', '2021-08-11 21:09:35', '人员类型列表');
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (102, '员工是否', 'sys_right', '0', 'admin', '2021-11-16 11:41:39', '', NULL, NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (103, '客户类型', 'client_type', '0', 'admin', '2021-12-22 16:17:24', '', NULL, NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (104, '订单状态', 'order_status', '0', 'admin', '2021-12-23 15:13:03', '', NULL, NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (105, '支付状态', 'pay_status', '0', 'admin', '2021-12-23 15:35:54', '', NULL, NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (106, '消耗状态', 'consume_status', '0', 'admin', '2022-01-07 15:46:01', '', NULL, NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (107, '上岗状态', 'station_status', '0', 'admin', '2022-01-08 12:31:47', '', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '组件路径',
  `is_frame` int DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` int DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2100 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1, '系统管理', 0, 1, 'system', NULL, 1, 0, 'M', '0', '0', '', 'system', 'admin', '2021-08-09 14:15:40', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (3, '系统工具', 0, 3, 'tool', NULL, 1, 0, 'M', '0', '1', '', 'tool', 'admin', '2021-08-09 14:15:40', 'admin', '2023-04-25 19:20:23', '系统工具目录');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2021-08-09 14:15:40', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2021-08-09 14:15:40', 'admin', '2023-04-19 18:43:08', '角色管理菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2021-08-09 14:15:40', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', 1, 0, 'C', '0', '1', 'system:dict:list', 'dict', 'admin', '2021-08-09 14:15:40', 'admin', '2022-05-06 16:27:04', '字典管理菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (114, '表单构建', 3, 1, 'build', 'tool/build/index', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2021-08-09 14:15:40', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (115, '代码生成', 3, 2, 'gen', 'tool/gen/index', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2021-08-09 14:15:40', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (116, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', 1, 0, 'C', '0', '1', 'tool:swagger:list', 'swagger', 'admin', '2021-08-09 14:15:40', 'admin', '2021-12-06 19:34:51', '系统接口菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1001, '用户查询', 100, 1, '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1002, '用户新增', 100, 2, '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1003, '用户修改', 100, 3, '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1004, '用户删除', 100, 4, '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1005, '用户导出', 100, 5, '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1006, '用户导入', 100, 6, '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1007, '重置密码', 100, 7, '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1008, '角色查询', 101, 1, '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1009, '角色新增', 101, 2, '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1010, '角色修改', 101, 3, '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1011, '角色删除', 101, 4, '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1012, '角色导出', 101, 5, '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1013, '菜单查询', 102, 1, '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1014, '菜单新增', 102, 2, '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1015, '菜单修改', 102, 3, '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1016, '菜单删除', 102, 4, '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1026, '字典查询', 105, 1, '#', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1027, '字典新增', 105, 2, '#', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1028, '字典修改', 105, 3, '#', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1029, '字典删除', 105, 4, '#', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1030, '字典导出', 105, 5, '#', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1055, '生成查询', 115, 1, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1056, '生成修改', 115, 2, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1057, '生成删除', 115, 3, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1058, '导入代码', 115, 2, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1059, '预览代码', 115, 4, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1060, '生成代码', 115, 5, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2039, '实验室管理', 1, 9, 'laboratory/list', 'system/lab/index', 1, 0, 'M', '0', '1', '', 'row', 'admin', '2021-12-07 11:42:01', 'admin', '2021-12-08 16:46:25', '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2083, '公告管理', 0, 3, '/notices', 'system/notice/index', 1, 0, 'C', '0', '0', '', 'documentation', 'admin', '2023-04-19 18:49:16', 'admin', '2023-04-19 18:49:56', '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2084, '课程管理', 0, 3, '/courses', NULL, 1, 0, 'M', '0', '0', NULL, 'education', 'admin', '2023-04-19 19:03:32', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2085, '课程管理', 2084, 4, '/courses', 'course/index', 1, 0, 'C', '0', '0', NULL, 'color', 'admin', '2023-04-19 19:09:06', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2086, '打卡管理', 0, 3, '/cards', 'card/index', 1, 0, 'C', '0', '0', NULL, 'component', 'admin', '2023-04-24 09:47:29', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2087, '器材管理', 0, 3, '/qicais', 'qicai/index', 1, 0, 'C', '0', '0', NULL, 'download', 'admin', '2023-04-24 10:21:29', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2088, '会员管理', 1, 3, '/members', 'member/index', 1, 0, 'C', '0', '0', '', 'documentation', 'admin', '2023-04-24 14:45:50', 'admin', '2023-04-24 16:04:20', '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2089, '店面管理', 1, 3, '/shops', 'system/shop/index', 1, 0, 'C', '0', '0', '', 'education', 'admin', '2023-04-24 15:59:25', 'admin', '2023-04-24 16:00:15', '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2090, '员工信息管理', 1, 3, '/yuangongs', 'system/yuangong/index', 1, 0, 'C', '0', '0', NULL, 'checkbox', 'admin', '2023-04-24 16:13:49', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2091, '健身项目管理', 1, 3, '/projects', 'project/index', 1, 0, 'C', '0', '0', NULL, 'checkbox', 'admin', '2023-04-24 17:14:24', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2092, '指导项目管理', 0, 3, '/guideProjects', 'guide/index', 1, 0, 'C', '0', '0', NULL, 'documentation', 'admin', '2023-04-24 18:44:38', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2093, '课程选择', 2084, 4, '/selects', 'course/select/index', 1, 0, 'C', '0', '0', NULL, 'documentation', 'admin', '2023-04-25 09:51:49', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2094, '评价管理', 0, 2, '/comment', NULL, 1, 0, 'M', '0', '0', '', 'tree', 'admin', '2023-04-25 14:17:29', 'admin', '2023-04-25 16:43:53', '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2095, '课程评价', 2094, 1, '/counrseComment', 'evaluate/course', 1, 0, 'C', '0', '0', NULL, 'tree-table', 'admin', '2023-04-25 14:18:36', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2096, '教练评价', 2094, 2, '/jlComment', 'evaluate/jl/index', 1, 0, 'C', '0', '0', NULL, 'theme', 'admin', '2023-04-25 14:20:08', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2097, '教练管理', 0, 2, '/jiaol', NULL, 1, 0, 'M', '0', '0', NULL, 'date-range', 'admin', '2023-04-25 16:12:07', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2098, '教练管理', 2097, 1, '/jl', 'jiaolian/index', 1, 0, 'C', '0', '0', NULL, 'documentation', 'admin', '2023-04-25 16:12:44', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2099, '教练选择', 2097, 1, '/jlselect', 'jiaolian/select/index', 1, 0, 'C', '0', '0', NULL, 'color', 'admin', '2023-04-25 16:14:01', '', NULL, '');
COMMIT;

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
BEGIN;
INSERT INTO `sys_notice` (`notice_id`, `notice_title`, `notice_type`, `notice_content`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1, '温馨提醒：2018-07-01 新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2021-08-09 14:15:44', 'admin', '2023-04-26 19:08:46', '管理员');
INSERT INTO `sys_notice` (`notice_id`, `notice_title`, `notice_type`, `notice_content`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2, '维护通知：2018-07-01 系统凌晨维护', '1', 0x3C703EE7BBB4E68AA4E58685E5AEB93C2F703E, '0', 'admin', '2021-08-09 14:15:44', 'admin', '2023-04-26 19:08:52', '管理员');
COMMIT;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` (`role_id`, `role_name`, `role_key`, `role_sort`, `data_scope`, `menu_check_strictly`, `dept_check_strictly`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2021-08-09 14:15:40', '', NULL, '超级管理员');
INSERT INTO `sys_role` (`role_id`, `role_name`, `role_key`, `role_sort`, `data_scope`, `menu_check_strictly`, `dept_check_strictly`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2, '会员', 'member', 2, '5', 1, 0, '0', '0', 'admin', '2021-08-09 14:15:40', 'admin', '2023-04-27 11:26:22', '普通角色');
INSERT INTO `sys_role` (`role_id`, `role_name`, `role_key`, `role_sort`, `data_scope`, `menu_check_strictly`, `dept_check_strictly`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (100, '学生', 'student', 3, '1', 1, 1, '0', '2', 'admin', '2021-08-11 18:35:13', '', NULL, NULL);
INSERT INTO `sys_role` (`role_id`, `role_name`, `role_key`, `role_sort`, `data_scope`, `menu_check_strictly`, `dept_check_strictly`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (101, '教练', 'coach', 0, '5', 0, 1, '0', '0', 'admin', '2023-04-19 18:44:28', 'admin', '2023-04-25 19:09:46', NULL);
COMMIT;/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : localhost:3306
 Source Schema         : gym

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 27/04/2023 14:45:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for commodity
-- ----------------------------
DROP TABLE IF EXISTS `commodity`;
CREATE TABLE `commodity` (
                             `id` int NOT NULL AUTO_INCREMENT,
                             `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                             `price` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                             `number` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                             `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                             `cover` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                             `details` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                             PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of commodity
-- ----------------------------
BEGIN;
INSERT INTO `commodity` (`id`, `name`, `price`, `number`, `type`, `cover`, `details`) VALUES (1, '小米12pro', '4699', '100', 'Good', 'http://8.130.53.22:9092/files/4cc0c10960264f00a8a15cbe13cb8d36', '全新骁龙8 | 2K AMOLED');
INSERT INTO `commodity` (`id`, `name`, `price`, `number`, `type`, `cover`, `details`) VALUES (2, '小米12', '3999', '122', 'Good', 'http://8.130.53.22/files/3cf66117e0fa4d8599785ae89ac8a12a', '全新骁龙8 | 5000万主摄');
INSERT INTO `commodity` (`id`, `name`, `price`, `number`, `type`, `cover`, `details`) VALUES (3, '小米12X', '3199', '21', 'Good', 'http://8.130.53.22/files/48b624aae3f949a6b7a6fe4417081658', '骁龙870 | 5000万主摄');
INSERT INTO `commodity` (`id`, `name`, `price`, `number`, `type`, `cover`, `details`) VALUES (4, '红米note11', '1799', '2121', 'Good', 'http://8.130.53.22/files/c941409d63ac4828b18d04e62c7fb0ca', '三星AMOLED高刷屏');
INSERT INTO `commodity` (`id`, `name`, `price`, `number`, `type`, `cover`, `details`) VALUES (6, 'mi12pro', NULL, NULL, 'Scan', 'http://8.130.53.22:9092/files/395c2228a945481bae9e946bfcd3d2ab', '21');
INSERT INTO `commodity` (`id`, `name`, `price`, `number`, `type`, `cover`, `details`) VALUES (7, 'win11', NULL, NULL, 'Scan', 'http://8.130.53.22:9092/files/4cc0c10960264f00a8a15cbe13cb8d36', '21');
INSERT INTO `commodity` (`id`, `name`, `price`, `number`, `type`, `cover`, `details`) VALUES (8, 'mipad', NULL, NULL, 'Scan', 'http://8.130.53.22:9092/files/4cc0c10960264f00a8a15cbe13cb8d36', NULL);
INSERT INTO `commodity` (`id`, `name`, `price`, `number`, `type`, `cover`, `details`) VALUES (12, '小米11青春版', '1999', '321', 'Good', 'http://8.130.53.22/files/2f71875bca414144b4a5fc872c4fde8f', '6400万主摄像头  | 超线性立体声');
INSERT INTO `commodity` (`id`, `name`, `price`, `number`, `type`, `cover`, `details`) VALUES (13, '红米K50', '2199', '21112', 'Good', 'http://8.130.53.22/files/86a3b5ea41074d9fb843f704e0aed0e8', '2K直屏的狠旗舰');
INSERT INTO `commodity` (`id`, `name`, `price`, `number`, `type`, `cover`, `details`) VALUES (14, '红米K50pro', '2499', '21223', 'Good', 'http://8.130.53.22/files/a2a269fa9358407581b32b1586973af5', '2K直屏的狠旗舰');
INSERT INTO `commodity` (`id`, `name`, `price`, `number`, `type`, `cover`, `details`) VALUES (15, '红米K50电竞版', '3299', '1212', 'Good', 'http://8.130.53.22/files/ec1b3631c7864ceebd3eea57dc55488b', '全线拉满的冷旗舰');
COMMIT;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
                             `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
                             `table_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '表名称',
                             `table_comment` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '表描述',
                             `sub_table_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '关联子表的表名',
                             `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '子表关联的外键名',
                             `class_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '实体类名称',
                             `tpl_category` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
                             `package_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '生成包路径',
                             `module_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '生成模块名',
                             `business_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '生成业务名',
                             `function_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '生成功能名',
                             `function_author` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '生成功能作者',
                             `gen_type` char(1) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
                             `gen_path` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
                             `options` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '其它生成选项',
                             `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
                             `create_time` datetime DEFAULT NULL COMMENT '创建时间',
                             `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
                             `update_time` datetime DEFAULT NULL COMMENT '更新时间',
                             `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
                             PRIMARY KEY (`table_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
BEGIN;
INSERT INTO `gen_table` (`table_id`, `table_name`, `table_comment`, `sub_table_name`, `sub_table_fk_name`, `class_name`, `tpl_category`, `package_name`, `module_name`, `business_name`, `function_name`, `function_author`, `gen_type`, `gen_path`, `options`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (60, 'tb_course', '课程表', NULL, NULL, 'TbCourse', 'crud', 'com.wanou.project.system', 'system', 'course', '课程', 'ruoyi', '0', '/', NULL, 'admin', '2023-04-19 18:58:46', '', NULL, NULL);
INSERT INTO `gen_table` (`table_id`, `table_name`, `table_comment`, `sub_table_name`, `sub_table_fk_name`, `class_name`, `tpl_category`, `package_name`, `module_name`, `business_name`, `function_name`, `function_author`, `gen_type`, `gen_path`, `options`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (61, 'tb_course_select', '课程选择', NULL, NULL, 'TbCourseSelect', 'crud', 'com.wanou.project.system', 'system', 'select', '课程选择', 'ruoyi', '0', '/', NULL, 'admin', '2023-04-19 19:15:16', '', NULL, NULL);
INSERT INTO `gen_table` (`table_id`, `table_name`, `table_comment`, `sub_table_name`, `sub_table_fk_name`, `class_name`, `tpl_category`, `package_name`, `module_name`, `business_name`, `function_name`, `function_author`, `gen_type`, `gen_path`, `options`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (62, 'tb_card', '打卡表', NULL, NULL, 'TbCard', 'crud', 'com.wanou.project.system', 'system', 'card', '打卡', 'ruoyi', '0', '/', NULL, 'admin', '2023-04-24 09:31:11', '', NULL, NULL);
INSERT INTO `gen_table` (`table_id`, `table_name`, `table_comment`, `sub_table_name`, `sub_table_fk_name`, `class_name`, `tpl_category`, `package_name`, `module_name`, `business_name`, `function_name`, `function_author`, `gen_type`, `gen_path`, `options`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (63, 'tb_qicai', '器材表', NULL, NULL, 'TbQicai', 'crud', 'com.wanou.project.system', 'system', 'qicai', '器材', 'ruoyi', '0', '/', NULL, 'admin', '2023-04-24 10:15:28', '', NULL, NULL);
INSERT INTO `gen_table` (`table_id`, `table_name`, `table_comment`, `sub_table_name`, `sub_table_fk_name`, `class_name`, `tpl_category`, `package_name`, `module_name`, `business_name`, `function_name`, `function_author`, `gen_type`, `gen_path`, `options`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (64, 'tb_member', '会员表', NULL, NULL, 'TbMember', 'crud', 'com.wanou.project.system', 'system', 'member', '会员', 'ruoyi', '0', '/', NULL, 'admin', '2023-04-24 14:40:44', '', NULL, NULL);
INSERT INTO `gen_table` (`table_id`, `table_name`, `table_comment`, `sub_table_name`, `sub_table_fk_name`, `class_name`, `tpl_category`, `package_name`, `module_name`, `business_name`, `function_name`, `function_author`, `gen_type`, `gen_path`, `options`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (65, 'tb_shop', '店面信息', NULL, NULL, 'TbShop', 'crud', 'com.wanou.project.system', 'system', 'shop', '店面信息', 'ruoyi', '0', '/', NULL, 'admin', '2023-04-24 15:39:52', '', NULL, NULL);
INSERT INTO `gen_table` (`table_id`, `table_name`, `table_comment`, `sub_table_name`, `sub_table_fk_name`, `class_name`, `tpl_category`, `package_name`, `module_name`, `business_name`, `function_name`, `function_author`, `gen_type`, `gen_path`, `options`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (66, 'tb_employee', '员工信息表', NULL, NULL, 'TbEmployee', 'crud', 'com.wanou.project.system', 'system', 'employee', '员工信息', 'ruoyi', '0', '/', NULL, 'admin', '2023-04-24 16:10:30', '', NULL, NULL);
INSERT INTO `gen_table` (`table_id`, `table_name`, `table_comment`, `sub_table_name`, `sub_table_fk_name`, `class_name`, `tpl_category`, `package_name`, `module_name`, `business_name`, `function_name`, `function_author`, `gen_type`, `gen_path`, `options`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (67, 'tb_project', '健身项目表', NULL, NULL, 'TbProject', 'crud', 'com.wanou.project.system', 'system', 'project', '健身项目', 'ruoyi', '0', '/', NULL, 'admin', '2023-04-24 16:48:46', '', NULL, NULL);
INSERT INTO `gen_table` (`table_id`, `table_name`, `table_comment`, `sub_table_name`, `sub_table_fk_name`, `class_name`, `tpl_category`, `package_name`, `module_name`, `business_name`, `function_name`, `function_author`, `gen_type`, `gen_path`, `options`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (68, 'tb_guide_project', '指导项目', NULL, NULL, 'TbGuideProject', 'crud', 'com.wanou.project.system', 'system', 'project', '指导项目', 'ruoyi', '0', '/', NULL, 'admin', '2023-04-24 17:34:08', '', NULL, NULL);
INSERT INTO `gen_table` (`table_id`, `table_name`, `table_comment`, `sub_table_name`, `sub_table_fk_name`, `class_name`, `tpl_category`, `package_name`, `module_name`, `business_name`, `function_name`, `function_author`, `gen_type`, `gen_path`, `options`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (69, 'tb_evaluate', '评价', NULL, NULL, 'TbEvaluate', 'crud', 'com.wanou.project.system', 'system', 'evaluate', '评价', 'ruoyi', '0', '/', NULL, 'admin', '2023-04-25 09:36:10', '', NULL, NULL);
INSERT INTO `gen_table` (`table_id`, `table_name`, `table_comment`, `sub_table_name`, `sub_table_fk_name`, `class_name`, `tpl_category`, `package_name`, `module_name`, `business_name`, `function_name`, `function_author`, `gen_type`, `gen_path`, `options`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (70, 'tb_jiaolian', '教练管理', NULL, NULL, 'TbJiaolian', 'crud', 'com.wanou.project.system', 'system', 'jiaolian', '教练管理', 'ruoyi', '0', '/', NULL, 'admin', '2023-04-25 15:58:30', '', NULL, NULL);
INSERT INTO `gen_table` (`table_id`, `table_name`, `table_comment`, `sub_table_name`, `sub_table_fk_name`, `class_name`, `tpl_category`, `package_name`, `module_name`, `business_name`, `function_name`, `function_author`, `gen_type`, `gen_path`, `options`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (71, 'tb_jl_select', '', NULL, NULL, 'TbJlSelect', 'crud', 'com.wanou.project.system', 'system', 'select', NULL, 'ruoyi', '0', '/', NULL, 'admin', '2023-04-25 16:17:57', '', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
                                    `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
                                    `table_id` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '归属表编号',
                                    `column_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '列名称',
                                    `column_comment` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '列描述',
                                    `column_type` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '列类型',
                                    `java_type` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'JAVA类型',
                                    `java_field` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'JAVA字段名',
                                    `is_pk` char(1) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '是否主键（1是）',
                                    `is_increment` char(1) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '是否自增（1是）',
                                    `is_required` char(1) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '是否必填（1是）',
                                    `is_insert` char(1) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '是否为插入字段（1是）',
                                    `is_edit` char(1) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '是否编辑字段（1是）',
                                    `is_list` char(1) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '是否列表字段（1是）',
                                    `is_query` char(1) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '是否查询字段（1是）',
                                    `query_type` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
                                    `html_type` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
                                    `dict_type` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '字典类型',
                                    `sort` int DEFAULT NULL COMMENT '排序',
                                    `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
                                    `create_time` datetime DEFAULT NULL COMMENT '创建时间',
                                    `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
                                    `update_time` datetime DEFAULT NULL COMMENT '更新时间',
                                    PRIMARY KEY (`column_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=711 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
BEGIN;
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (652, '60', 'id', 'id', 'bigint', 'Long', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-04-19 18:58:46', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (653, '60', 'title', '课程名称', 'varchar(255)', 'String', 'title', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-04-19 18:58:46', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (654, '60', 'user_id', '创建人', 'bigint', 'Long', 'userId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-04-19 18:58:46', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (655, '60', 'status', '审核状态0待审核；1审核成功；2审核失败', 'tinyint', 'Long', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 4, 'admin', '2023-04-19 18:58:46', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (656, '60', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 5, 'admin', '2023-04-19 18:58:46', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (657, '61', 'id', 'id', 'int', 'Long', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-04-19 19:15:16', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (658, '61', 'user_id', '用户id', 'int', 'Long', 'userId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-04-19 19:15:16', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (659, '61', 'course_id', '课程id', 'int', 'Long', 'courseId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-04-19 19:15:16', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (660, '61', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 4, 'admin', '2023-04-19 19:15:16', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (661, '62', 'id', 'id', 'int', 'Long', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-04-24 09:31:11', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (662, '62', 'user_id', '用户id', 'int', 'Long', 'userId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-04-24 09:31:11', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (663, '62', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 3, 'admin', '2023-04-24 09:31:11', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (664, '62', 'address', '打卡地点', 'varchar(255)', 'String', 'address', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-04-24 09:31:11', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (665, '63', 'id', 'id', 'int', 'Long', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-04-24 10:15:28', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (666, '63', 'name', '器材名称', 'varchar(255)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-04-24 10:15:28', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (667, '63', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 3, 'admin', '2023-04-24 10:15:28', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (668, '64', 'id', 'id', 'int', 'Long', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-04-24 14:40:44', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (669, '64', 'user_id', '用户id', 'int', 'Long', 'userId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-04-24 14:40:44', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (670, '64', 'grade', '会员卡等级', 'varchar(255)', 'String', 'grade', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-04-24 14:40:44', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (671, '64', 'expire_time', '到期时间', 'datetime', 'Date', 'expireTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 4, 'admin', '2023-04-24 14:40:44', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (672, '64', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 5, 'admin', '2023-04-24 14:40:44', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (673, '64', 'card', '会员卡', 'varchar(255)', 'String', 'card', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, '', '2023-04-24 15:16:30', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (674, '65', 'id', 'id', 'int', 'Long', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-04-24 15:39:52', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (675, '65', 'name', '店铺名称', 'varchar(255)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-04-24 15:39:52', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (676, '65', 'summary', '店铺介绍', 'varchar(255)', 'String', 'summary', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-04-24 15:39:52', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (677, '65', 'address', '店铺地址', 'varchar(255)', 'String', 'address', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-04-24 15:39:52', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (678, '65', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 5, 'admin', '2023-04-24 15:39:52', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (679, '66', 'id', 'id', 'int', 'Long', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-04-24 16:10:30', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (680, '66', 'name', '姓名', 'varchar(255)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-04-24 16:10:30', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (681, '66', 'phone', '电话', 'varchar(255)', 'String', 'phone', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-04-24 16:10:30', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (682, '66', 'age', '年龄', 'int', 'Long', 'age', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-04-24 16:10:30', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (683, '66', 'post', '职位', 'varchar(255)', 'String', 'post', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-04-24 16:10:30', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (684, '66', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 6, 'admin', '2023-04-24 16:10:30', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (685, '67', 'id', 'id', 'int', 'Long', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-04-24 16:48:46', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (686, '67', 'name', '项目名称', 'varchar(255)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-04-24 16:48:46', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (687, '67', 'summary', '项目简介', 'varchar(255)', 'String', 'summary', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-04-24 16:48:46', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (688, '67', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 4, 'admin', '2023-04-24 16:48:46', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (689, '68', 'id', 'id', 'int', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-04-24 17:34:08', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (690, '68', 'name', '项目名称', 'varchar(255)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-04-24 17:34:08', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (691, '68', 'summary', '项目简介', 'varchar(255)', 'String', 'summary', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-04-24 17:34:08', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (692, '68', 'user_id', '用户', 'int', 'Long', 'userId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-04-24 17:34:08', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (693, '68', 'review', '审核；0待审核；1审核通过；2审核失败', 'int', 'Long', 'review', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-04-24 17:34:08', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (694, '68', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 6, 'admin', '2023-04-24 17:34:08', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (695, '69', 'id', 'id', 'int', 'Long', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-04-25 09:36:10', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (696, '69', 'content', '评价', 'text', 'String', 'content', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'editor', '', 2, 'admin', '2023-04-25 09:36:10', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (697, '69', 'type', '1课程评价 2教练评价', 'int', 'Long', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 3, 'admin', '2023-04-25 09:36:10', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (698, '69', 'user_id', '评价人', 'int', 'Long', 'userId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-04-25 09:36:10', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (699, '69', 'create_time', '创建人', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 5, 'admin', '2023-04-25 09:36:10', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (700, '69', 'common_id', '课程或教练id', 'int', 'Long', 'commonId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, '', '2023-04-25 14:38:13', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (701, '70', 'id', 'id', 'int', 'Long', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-04-25 15:58:30', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (702, '70', 'name', '姓名', 'varchar(255)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-04-25 15:58:30', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (703, '70', 'age', '年龄', 'int', 'Long', 'age', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-04-25 15:58:30', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (704, '70', 'phone', '电话', 'varchar(255)', 'String', 'phone', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-04-25 15:58:30', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (705, '70', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 5, 'admin', '2023-04-25 15:58:30', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (706, '71', 'id', 'id', 'int', 'Long', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-04-25 16:17:57', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (707, '71', 'user_id', '用户', 'int', 'Long', 'userId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-04-25 16:17:57', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (708, '71', 'jl_id', '教练', 'int', 'Long', 'jlId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-04-25 16:17:57', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (709, '71', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 4, 'admin', '2023-04-25 16:17:57', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (710, '70', 'course_name', '课程', 'varchar(255)', 'String', 'courseName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 6, '', '2023-04-25 17:25:09', '', NULL);
COMMIT;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
                          `order_id` int NOT NULL AUTO_INCREMENT,
                          `order_number` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
                          `id` int NOT NULL,
                          `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                          `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                          `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                          `count` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                          `cover` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                          `dates` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                          `pay_state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                          `deliver_state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                          `deliver_number` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                          `address` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                          PRIMARY KEY (`order_id`) USING BTREE,
                          KEY `idorder` (`id`) USING BTREE,
                          CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of orders
-- ----------------------------
BEGIN;
INSERT INTO `orders` (`order_id`, `order_number`, `id`, `username`, `name`, `price`, `count`, `cover`, `dates`, `pay_state`, `deliver_state`, `deliver_number`, `address`) VALUES (7, '1164439867435746271', 1, '夏天', '小米12X 8GB+128GB 紫色', '3199.00', '1', 'http://localhost:9092/files/48b624aae3f949a6b7a6fe4417081658', '2022年02月09日 17:24:34', NULL, '已发货', '327513743213', '天津市河西区天津科技大学');
INSERT INTO `orders` (`order_id`, `order_number`, `id`, `username`, `name`, `price`, `count`, `cover`, `dates`, `pay_state`, `deliver_state`, `deliver_number`, `address`) VALUES (20, '11644550972476470', 1, '夏天', '小米12X 8GB+128GB 紫色', '3199.00', '1', 'http://localhost:9092/files/48b624aae3f949a6b7a6fe4417081658', '2022年02月11日 11:42:52', NULL, '已确认', NULL, '夏天 1882204679 青岛市黄岛区丁松路12号');
INSERT INTO `orders` (`order_id`, `order_number`, `id`, `username`, `name`, `price`, `count`, `cover`, `dates`, `pay_state`, `deliver_state`, `deliver_number`, `address`) VALUES (22, '2164456528071963359', 2, 'duoduo', '小米11青春版 8GB+128GB 紫色', '1999.00', '1', 'http://localhost:9092/files/2f71875bca414144b4a5fc872c4fde8f', '2022年02月11日 15:41:20', NULL, '已确认', NULL, '夏天 18822067367 天津市河西区天津科技大学');
INSERT INTO `orders` (`order_id`, `order_number`, `id`, `username`, `name`, `price`, `count`, `cover`, `dates`, `pay_state`, `deliver_state`, `deliver_number`, `address`) VALUES (29, '1164542133360548543', 1, '夏天', '小米12X 8GB+128GB 原野绿', '3199.00', '1', 'http://localhost:9092/files/48b624aae3f949a6b7a6fe4417081658', '2022年02月21日 13:28:53', NULL, '已发货', '12431264121221', '夏天 1882204679 青岛市黄岛区丁松路12号');
INSERT INTO `orders` (`order_id`, `order_number`, `id`, `username`, `name`, `price`, `count`, `cover`, `dates`, `pay_state`, `deliver_state`, `deliver_number`, `address`) VALUES (30, '1164630400157559289', 1, '夏天', '小米12X 8GB+128GB 原野绿', '3199.00', '1', 'http://localhost:9092/files/48b624aae3f949a6b7a6fe4417081658', '2022年03月03日 18:40:01', NULL, '未发货', NULL, '陈处 18822049633 陕西省西安市未央区');
INSERT INTO `orders` (`order_id`, `order_number`, `id`, `username`, `name`, `price`, `count`, `cover`, `dates`, `pay_state`, `deliver_state`, `deliver_number`, `address`) VALUES (31, '1164916260027326534', 1, '夏天', '小米12X 8GB+128GB 原野绿', '3199.00', '1', 'http://localhost:9092/files/48b624aae3f949a6b7a6fe4417081658', '2022年04月05日 20:43:20', NULL, '未发货', NULL, '陈处 18822049633 陕西省西安市未央区');
INSERT INTO `orders` (`order_id`, `order_number`, `id`, `username`, `name`, `price`, `count`, `cover`, `dates`, `pay_state`, `deliver_state`, `deliver_number`, `address`) VALUES (32, '1165154498010925632', 1, '夏天', '小米12X 8GB+128GB 原野绿', '3199.00', '1', 'http://localhost:9092/files/48b624aae3f949a6b7a6fe4417081658', '2022年05月03日 10:29:40', NULL, '未发货', NULL, '夏天 1882204679 青岛市黄岛区丁松路12号');
COMMIT;

-- ----------------------------
-- Table structure for shopcar
-- ----------------------------
DROP TABLE IF EXISTS `shopcar`;
CREATE TABLE `shopcar` (
                           `shop_id` int NOT NULL AUTO_INCREMENT,
                           `id` int NOT NULL,
                           `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
                           `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                           `price` decimal(10,2) DEFAULT NULL,
                           `count` int DEFAULT NULL,
                           `flag` tinyint DEFAULT NULL,
                           `cover` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                           `details` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                           PRIMARY KEY (`shop_id`) USING BTREE,
                           KEY `id` (`id`) USING BTREE,
                           CONSTRAINT `shopcar_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of shopcar
-- ----------------------------
BEGIN;
INSERT INTO `shopcar` (`shop_id`, `id`, `username`, `name`, `price`, `count`, `flag`, `cover`, `details`) VALUES (27, 2, 'duoduo', '小米12pro 8GB+128GB 紫色', 4699.00, 1, NULL, 'http://localhost:9092/files/a4138398f9e6411e9dd32837f4024c61', NULL);
INSERT INTO `shopcar` (`shop_id`, `id`, `username`, `name`, `price`, `count`, `flag`, `cover`, `details`) VALUES (36, 2, 'duoduo', '小米12X 8GB+128GB 原野绿', 3199.00, 1, NULL, 'http://localhost:9092/files/48b624aae3f949a6b7a6fe4417081658', NULL);
INSERT INTO `shopcar` (`shop_id`, `id`, `username`, `name`, `price`, `count`, `flag`, `cover`, `details`) VALUES (37, 2, 'duoduo', '小米11青春版 8GB+128GB 紫色', 1999.00, 1, NULL, 'http://localhost:9092/files/2f71875bca414144b4a5fc872c4fde8f', NULL);
INSERT INTO `shopcar` (`shop_id`, `id`, `username`, `name`, `price`, `count`, `flag`, `cover`, `details`) VALUES (38, 2, 'duoduo', '小米12X 8GB+128GB 黑色', 3199.00, 1, NULL, 'http://localhost:9092/files/48b624aae3f949a6b7a6fe4417081658', NULL);
INSERT INTO `shopcar` (`shop_id`, `id`, `username`, `name`, `price`, `count`, `flag`, `cover`, `details`) VALUES (39, 2, 'duoduo', '小米12 16GB+256GB 紫色', 3999.00, 1, NULL, 'http://localhost:9092/files/3cf66117e0fa4d8599785ae89ac8a12a', NULL);
INSERT INTO `shopcar` (`shop_id`, `id`, `username`, `name`, `price`, `count`, `flag`, `cover`, `details`) VALUES (44, 1, '夏天', '小米12X 8GB+128GB 原野绿', 3199.00, 1, NULL, 'http://localhost:9092/files/48b624aae3f949a6b7a6fe4417081658', NULL);
INSERT INTO `shopcar` (`shop_id`, `id`, `username`, `name`, `price`, `count`, `flag`, `cover`, `details`) VALUES (45, 1, '夏天', '小米12pro 8GB+128GB 紫色', 4699.00, 1, NULL, 'http://localhost:9092/files/a4138398f9e6411e9dd32837f4024c61', NULL);
INSERT INTO `shopcar` (`shop_id`, `id`, `username`, `name`, `price`, `count`, `flag`, `cover`, `details`) VALUES (58, 1, '夏天', '小米12pro 8GB+128GB 黑色', 4699.00, 1, NULL, 'http://localhost:9092/files/a4138398f9e6411e9dd32837f4024c61', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
                              `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
                              `config_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '参数名称',
                              `config_key` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '参数键名',
                              `config_value` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '参数键值',
                              `config_type` char(1) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
                              `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
                              `create_time` datetime DEFAULT NULL COMMENT '创建时间',
                              `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
                              `update_time` datetime DEFAULT NULL COMMENT '更新时间',
                              `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
                              PRIMARY KEY (`config_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
BEGIN;
INSERT INTO `sys_config` (`config_id`, `config_name`, `config_key`, `config_value`, `config_type`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2021-08-09 14:15:43', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` (`config_id`, `config_name`, `config_key`, `config_value`, `config_type`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2021-08-09 14:15:43', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` (`config_id`, `config_name`, `config_key`, `config_value`, `config_type`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2021-08-09 14:15:43', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` (`config_id`, `config_name`, `config_key`, `config_value`, `config_type`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (4, '账号自助-验证码开关', 'sys.account.captchaOnOff', 'true', 'Y', 'admin', '2021-08-09 14:15:43', '', NULL, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` (`config_id`, `config_name`, `config_key`, `config_value`, `config_type`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'true', 'Y', 'admin', '2021-08-09 14:15:43', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
COMMIT;

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
                            `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
                            `parent_id` bigint DEFAULT '0' COMMENT '父部门id',
                            `ancestors` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '祖级列表',
                            `dept_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '部门名称',
                            `order_num` int DEFAULT '0' COMMENT '显示顺序',
                            `leader` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '负责人',
                            `phone` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系电话',
                            `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '邮箱',
                            `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
                            `del_flag` char(1) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
                            `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
                            `create_time` datetime DEFAULT NULL COMMENT '创建时间',
                            `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
                            `update_time` datetime DEFAULT NULL COMMENT '更新时间',
                            PRIMARY KEY (`dept_id`) USING BTREE,
                            KEY `idx_dept_id` (`dept_id`) USING BTREE COMMENT '部门id索引',
                            KEY `idx_ancestors` (`ancestors`) USING BTREE COMMENT '祖级部门id索引'
) ENGINE=InnoDB AUTO_INCREMENT=273 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
BEGIN;
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (100, 0, '0', '中南大学', 0, 'wanou', '15888888888', 'wanou@qq.com', '0', '0', 'admin', '2021-08-09 14:15:39', 'admin', '2021-12-06 16:09:39');
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (232, 100, '0,100', '安化县中医院', 1, '安华', '18876656575', '570682564@qq.com', '0', '2', 'admin', '2021-08-16 21:22:17', 'anhuaadmin', '2021-08-16 22:02:17');
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (233, 100, '0,100', '长沙珂信肿瘤医院', 2, NULL, NULL, NULL, '0', '2', 'admin', '2021-08-16 21:25:13', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (234, 100, '0,100', '长沙音乐厅', 3, NULL, NULL, NULL, '0', '2', 'admin', '2021-08-16 21:26:42', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (235, 100, '0,100', '常宁市中医院', 4, NULL, NULL, NULL, '0', '2', 'admin', '2021-08-16 21:27:14', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (236, 100, '0,100', '常宁文化执法大队', 5, NULL, NULL, NULL, '0', '2', 'admin', '2021-08-16 21:27:33', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (237, 100, '0,100', '郴州宜章县中医院', 6, NULL, NULL, NULL, '0', '2', 'admin', '2021-08-16 21:28:55', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (238, 100, '0,100', '城步县人民医院', 7, NULL, NULL, NULL, '0', '2', 'admin', '2021-08-16 21:30:10', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (239, 100, '0,100', '东坪镇安化县人民医院', 8, NULL, NULL, NULL, '0', '2', 'admin', '2021-08-16 21:30:39', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (240, 100, '0,100', '湖南妇幼保健医院', 9, NULL, NULL, NULL, '0', '2', 'admin', '2021-08-16 21:31:08', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (241, 100, '0,100', '湖南怀化第二人民医院', 10, NULL, NULL, NULL, '0', '2', 'admin', '2021-08-16 21:31:35', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (242, 100, '0,100', '湖南省职业病防治医院', 11, NULL, NULL, NULL, '0', '2', 'admin', '2021-08-16 21:31:58', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (243, 100, '0,100', '怀化市第二人民医院', 12, NULL, NULL, NULL, '0', '2', 'admin', '2021-08-16 21:32:51', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (244, 100, '0,100', '江华县界碑乡卫生院', 13, NULL, NULL, NULL, '0', '2', 'admin', '2021-08-16 21:33:25', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (245, 100, '0,100', '江华县桥市卫生院', 14, NULL, NULL, NULL, '0', '2', 'admin', '2021-08-16 21:33:55', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (246, 100, '0,100', '粟江卫生院', 15, NULL, NULL, NULL, '0', '2', 'admin', '2021-08-16 21:34:23', 'admin', '2021-08-16 21:38:45');
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (247, 100, '0,100', '临武县中医医院', 16, NULL, NULL, NULL, '0', '2', 'admin', '2021-08-16 21:34:58', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (248, 100, '0,100', '娄底妇幼保健医院', 17, NULL, NULL, NULL, '0', '2', 'admin', '2021-08-16 21:35:19', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (249, 100, '0,100', '马栏山人才公寓', 18, NULL, NULL, NULL, '0', '2', 'admin', '2021-08-16 21:35:34', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (250, 100, '0,100', '桑县人民医院', 19, NULL, NULL, NULL, '0', '2', 'admin', '2021-08-16 21:35:50', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (251, 100, '0,100', '桑植县名族中医院', 20, NULL, NULL, NULL, '0', '2', 'admin', '2021-08-16 21:36:07', 'admin', '2021-08-16 21:36:13');
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (252, 100, '0,100', '湘潭妇幼保健医院', 21, NULL, NULL, NULL, '0', '2', 'admin', '2021-08-16 21:36:34', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (253, 100, '0,100', '新宁县人民医院', 22, NULL, NULL, NULL, '0', '2', 'admin', '2021-08-16 21:37:04', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (254, 232, '0,100,232', '骨科部', 1, NULL, NULL, NULL, '0', '2', 'anhuaadmin', '2021-08-18 17:44:07', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (255, 232, '0,100,232', '神经科', 2, NULL, NULL, NULL, '0', '2', 'anhuaadmin', '2021-08-19 09:27:17', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (256, 100, '0,100', '邵阳医院', 11, NULL, NULL, NULL, '0', '2', 'admin', '2021-08-19 09:48:50', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (257, 256, '0,100,256', '骨科', 0, NULL, NULL, NULL, '0', '2', 'shaoyanadmin', '2021-08-19 09:51:14', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (258, 256, '0,100,256', '神经科', 2, NULL, NULL, NULL, '0', '2', 'shaoyanadmin', '2021-08-19 09:53:06', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (259, 256, '0,100,256', '妇科', 3, NULL, NULL, NULL, '0', '2', 'shaoyanadmin', '2021-08-19 12:02:31', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (260, 232, '0,100,232', '妇科', 5, NULL, NULL, NULL, '0', '2', 'anhuaadmin', '2021-08-19 16:55:51', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (261, 100, '0,100', '新邵人民医院', 23, NULL, NULL, NULL, '0', '2', 'admin', '2021-08-19 18:29:09', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (262, 261, '0,100,261', '耳鼻喉科', 0, NULL, NULL, NULL, '0', '2', 'xinshaoadmin', '2021-08-19 18:31:18', 'admin', '2021-08-30 09:14:42');
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (263, 232, '0,100,232', '手科', 6, NULL, NULL, NULL, '0', '2', 'anhuaadmin', '2021-08-19 18:45:38', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (264, 232, '0,100,232', '腿科', 5, NULL, NULL, NULL, '0', '2', 'anhuaadmin', '2021-08-28 16:16:38', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (265, 100, '0,100', '麓谷国际工业园', 8, 'luguadmin', NULL, NULL, '0', '2', 'admin', '2021-08-28 16:20:42', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (266, 100, '0,100', '湖南联通', 24, NULL, NULL, NULL, '0', '2', 'admin', '2021-11-09 15:08:58', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (267, 266, '0,100,266', '研发部', 0, NULL, NULL, NULL, '0', '2', 'hnliantong', '2021-11-09 15:19:10', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (268, 266, '0,100,266', '工程部', 1, NULL, NULL, NULL, '0', '2', 'hnliantong', '2021-11-09 19:00:25', 'hnliantong', '2021-11-09 19:01:56');
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (269, 266, '0,100,266', '工程部', 1, NULL, NULL, NULL, '0', '2', 'hnliantong', '2021-11-09 19:02:17', 'hnliantong', '2021-11-09 19:02:54');
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (270, 100, '0,100', 'nnn', 0, 'nnn', '19108474450', 'jhvbjhb@qq.com', '0', '2', 'admin', '2021-12-06 16:08:28', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (271, 100, '0,100', '化学实验', 1, '您能', '15654030888', 'ddcd@qq.com', '0', '0', 'admin', '2021-12-06 16:11:10', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (272, 100, '0,100', '计算机科学与技术', 1, '彻底的', '15641242013', 'cdgbh@qq.com', '0', '0', 'admin', '2021-12-06 16:12:19', '', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
                                 `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
                                 `dict_sort` int DEFAULT '0' COMMENT '字典排序',
                                 `dict_label` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '字典标签',
                                 `dict_value` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '字典键值',
                                 `dict_type` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '字典类型',
                                 `css_class` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
                                 `list_class` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '表格回显样式',
                                 `is_default` char(1) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
                                 `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '0' COMMENT '状态（0正常 1停用）',
                                 `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
                                 `create_time` datetime DEFAULT NULL COMMENT '创建时间',
                                 `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
                                 `update_time` datetime DEFAULT NULL COMMENT '更新时间',
                                 `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
                                 PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '性别男');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '性别女');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '通知');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '公告');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (18, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (19, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (20, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (21, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (22, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (23, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (24, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (25, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (26, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (27, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (28, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (100, 0, '正式工', '1', 'tex_personnel_type', NULL, 'default', 'N', '0', 'admin', '2021-08-11 17:23:12', '', NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (101, 0, '临时工', '2', 'tex_personnel_type', NULL, 'default', 'N', '0', 'admin', '2021-08-11 17:23:23', '', NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (102, 0, '访客', '3', 'tex_personnel_type', NULL, 'default', 'N', '0', 'admin', '2021-08-11 17:23:31', '', NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (103, 0, '研发部门', '103', 'tx_bumeng', NULL, 'default', 'N', '0', 'admin', '2021-08-11 21:11:27', '', NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (104, 0, '市场部门', '104', 'tx_bumeng', NULL, 'default', 'N', '0', 'admin', '2021-08-11 21:11:44', '', NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (105, 0, '测试部门', '105', 'tx_bumeng', NULL, 'default', 'N', '0', 'admin', '2021-08-11 21:12:00', 'admin', '2021-08-11 21:12:22', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (106, 0, '财务部门', '106', 'tx_bumeng', NULL, 'default', 'N', '0', 'admin', '2021-08-11 21:12:40', '', NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (107, 0, '运维部门', '107', 'tx_bumeng', NULL, 'default', 'N', '0', 'admin', '2021-08-11 21:13:10', '', NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (108, 0, '市场部门', '108', 'tx_bumeng', NULL, 'default', 'N', '0', 'admin', '2021-08-11 21:13:23', '', NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (109, 0, '财务部门', '109', 'tx_bumeng', NULL, 'default', 'N', '0', 'admin', '2021-08-11 21:13:34', '', NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (110, 0, '否', '0', 'sys_right', NULL, 'default', 'N', '0', 'admin', '2021-11-16 11:42:45', '', NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (111, 1, '是', '1', 'sys_right', NULL, 'default', 'N', '0', 'admin', '2021-11-16 11:42:57', '', NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (112, 0, '约谈', '1', 'client_type', NULL, 'default', 'N', '0', 'admin', '2021-12-22 16:17:42', '', NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (113, 0, '签约', '2', 'client_type', NULL, 'default', 'N', '0', 'admin', '2021-12-22 16:17:52', '', NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (114, 0, '拒绝', '3', 'client_type', NULL, 'default', 'N', '0', 'admin', '2021-12-22 16:18:01', '', NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (115, 0, '已接单', '0', 'order_status', NULL, 'default', 'N', '0', 'admin', '2021-12-23 15:13:32', '', NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (116, 0, '进行中', '1', 'order_status', NULL, 'default', 'N', '0', 'admin', '2021-12-23 15:13:47', '', NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (117, 0, '已结束', '2', 'order_status', NULL, 'default', 'N', '0', 'admin', '2021-12-23 15:14:29', '', NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (118, 0, '未支付', '0', 'pay_status', NULL, 'default', 'N', '0', 'admin', '2021-12-23 15:36:09', '', NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (119, 0, '已支付', '1', 'pay_status', NULL, 'default', 'N', '0', 'admin', '2021-12-23 15:36:16', '', NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (120, 0, '食材', '1', 'consume_status', NULL, 'default', 'N', '0', 'admin', '2022-01-07 15:46:23', '', NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (121, 0, '生活用品', '2', 'consume_status', NULL, 'default', 'N', '0', 'admin', '2022-01-07 15:46:31', '', NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (122, 0, '家具', '3', 'consume_status', NULL, 'default', 'N', '0', 'admin', '2022-01-07 15:46:40', '', NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (123, 0, '其它用品', '4', 'consume_status', NULL, 'default', 'N', '0', 'admin', '2022-01-07 15:46:47', '', NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (124, 0, '未上户', '0', 'station_status', NULL, NULL, 'N', '0', '', NULL, '', NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (125, 0, '上户', '1', 'station_status', NULL, NULL, 'N', '0', '', NULL, '', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
                                 `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
                                 `dict_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '字典名称',
                                 `dict_type` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '字典类型',
                                 `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '0' COMMENT '状态（0正常 1停用）',
                                 `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
                                 `create_time` datetime DEFAULT NULL COMMENT '创建时间',
                                 `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
                                 `update_time` datetime DEFAULT NULL COMMENT '更新时间',
                                 `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
                                 PRIMARY KEY (`dict_id`) USING BTREE,
                                 UNIQUE KEY `dict_type` (`dict_type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2021-08-09 14:15:42', '', NULL, '登录状态列表');
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (100, '部门类型', 'tx_bumeng', '1', 'admin', '2021-08-11 16:34:44', 'admin', '2021-08-14 11:45:56', '部门类型列表');
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (101, '人员类型', 'tex_personnel_type', '0', 'admin', '2021-08-11 16:37:09', 'admin', '2021-08-11 21:09:35', '人员类型列表');
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (102, '员工是否', 'sys_right', '0', 'admin', '2021-11-16 11:41:39', '', NULL, NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (103, '客户类型', 'client_type', '0', 'admin', '2021-12-22 16:17:24', '', NULL, NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (104, '订单状态', 'order_status', '0', 'admin', '2021-12-23 15:13:03', '', NULL, NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (105, '支付状态', 'pay_status', '0', 'admin', '2021-12-23 15:35:54', '', NULL, NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (106, '消耗状态', 'consume_status', '0', 'admin', '2022-01-07 15:46:01', '', NULL, NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (107, '上岗状态', 'station_status', '0', 'admin', '2022-01-08 12:31:47', '', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
                            `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
                            `menu_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
                            `parent_id` bigint DEFAULT '0' COMMENT '父菜单ID',
                            `order_num` int DEFAULT '0' COMMENT '显示顺序',
                            `path` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '路由地址',
                            `component` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '组件路径',
                            `is_frame` int DEFAULT '1' COMMENT '是否为外链（0是 1否）',
                            `is_cache` int DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
                            `menu_type` char(1) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
                            `visible` char(1) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
                            `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
                            `perms` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '权限标识',
                            `icon` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '#' COMMENT '菜单图标',
                            `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
                            `create_time` datetime DEFAULT NULL COMMENT '创建时间',
                            `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
                            `update_time` datetime DEFAULT NULL COMMENT '更新时间',
                            `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '备注',
                            PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2100 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1, '系统管理', 0, 1, 'system', NULL, 1, 0, 'M', '0', '0', '', 'system', 'admin', '2021-08-09 14:15:40', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (3, '系统工具', 0, 3, 'tool', NULL, 1, 0, 'M', '0', '1', '', 'tool', 'admin', '2021-08-09 14:15:40', 'admin', '2023-04-25 19:20:23', '系统工具目录');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2021-08-09 14:15:40', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2021-08-09 14:15:40', 'admin', '2023-04-19 18:43:08', '角色管理菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2021-08-09 14:15:40', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', 1, 0, 'C', '0', '1', 'system:dict:list', 'dict', 'admin', '2021-08-09 14:15:40', 'admin', '2022-05-06 16:27:04', '字典管理菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (114, '表单构建', 3, 1, 'build', 'tool/build/index', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2021-08-09 14:15:40', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (115, '代码生成', 3, 2, 'gen', 'tool/gen/index', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2021-08-09 14:15:40', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (116, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', 1, 0, 'C', '0', '1', 'tool:swagger:list', 'swagger', 'admin', '2021-08-09 14:15:40', 'admin', '2021-12-06 19:34:51', '系统接口菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1001, '用户查询', 100, 1, '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1002, '用户新增', 100, 2, '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1003, '用户修改', 100, 3, '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1004, '用户删除', 100, 4, '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1005, '用户导出', 100, 5, '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1006, '用户导入', 100, 6, '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1007, '重置密码', 100, 7, '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1008, '角色查询', 101, 1, '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1009, '角色新增', 101, 2, '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1010, '角色修改', 101, 3, '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1011, '角色删除', 101, 4, '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1012, '角色导出', 101, 5, '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1013, '菜单查询', 102, 1, '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1014, '菜单新增', 102, 2, '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1015, '菜单修改', 102, 3, '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1016, '菜单删除', 102, 4, '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1026, '字典查询', 105, 1, '#', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1027, '字典新增', 105, 2, '#', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1028, '字典修改', 105, 3, '#', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1029, '字典删除', 105, 4, '#', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1030, '字典导出', 105, 5, '#', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1055, '生成查询', 115, 1, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1056, '生成修改', 115, 2, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1057, '生成删除', 115, 3, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1058, '导入代码', 115, 2, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1059, '预览代码', 115, 4, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1060, '生成代码', 115, 5, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2021-08-09 14:15:40', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2039, '实验室管理', 1, 9, 'laboratory/list', 'system/lab/index', 1, 0, 'M', '0', '1', '', 'row', 'admin', '2021-12-07 11:42:01', 'admin', '2021-12-08 16:46:25', '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2083, '公告管理', 0, 3, '/notices', 'system/notice/index', 1, 0, 'C', '0', '0', '', 'documentation', 'admin', '2023-04-19 18:49:16', 'admin', '2023-04-19 18:49:56', '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2084, '课程管理', 0, 3, '/courses', NULL, 1, 0, 'M', '0', '0', NULL, 'education', 'admin', '2023-04-19 19:03:32', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2085, '课程管理', 2084, 4, '/courses', 'course/index', 1, 0, 'C', '0', '0', NULL, 'color', 'admin', '2023-04-19 19:09:06', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2086, '打卡管理', 0, 3, '/cards', 'card/index', 1, 0, 'C', '0', '0', NULL, 'component', 'admin', '2023-04-24 09:47:29', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2087, '器材管理', 0, 3, '/qicais', 'qicai/index', 1, 0, 'C', '0', '0', NULL, 'download', 'admin', '2023-04-24 10:21:29', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2088, '会员管理', 1, 3, '/members', 'member/index', 1, 0, 'C', '0', '0', '', 'documentation', 'admin', '2023-04-24 14:45:50', 'admin', '2023-04-24 16:04:20', '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2089, '店面管理', 1, 3, '/shops', 'system/shop/index', 1, 0, 'C', '0', '0', '', 'education', 'admin', '2023-04-24 15:59:25', 'admin', '2023-04-24 16:00:15', '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2090, '员工信息管理', 1, 3, '/yuangongs', 'system/yuangong/index', 1, 0, 'C', '0', '0', NULL, 'checkbox', 'admin', '2023-04-24 16:13:49', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2091, '健身项目管理', 1, 3, '/projects', 'project/index', 1, 0, 'C', '0', '0', NULL, 'checkbox', 'admin', '2023-04-24 17:14:24', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2092, '指导项目管理', 0, 3, '/guideProjects', 'guide/index', 1, 0, 'C', '0', '0', NULL, 'documentation', 'admin', '2023-04-24 18:44:38', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2093, '课程选择', 2084, 4, '/selects', 'course/select/index', 1, 0, 'C', '0', '0', NULL, 'documentation', 'admin', '2023-04-25 09:51:49', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2094, '评价管理', 0, 2, '/comment', NULL, 1, 0, 'M', '0', '0', '', 'tree', 'admin', '2023-04-25 14:17:29', 'admin', '2023-04-25 16:43:53', '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2095, '课程评价', 2094, 1, '/counrseComment', 'evaluate/course', 1, 0, 'C', '0', '0', NULL, 'tree-table', 'admin', '2023-04-25 14:18:36', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2096, '教练评价', 2094, 2, '/jlComment', 'evaluate/jl/index', 1, 0, 'C', '0', '0', NULL, 'theme', 'admin', '2023-04-25 14:20:08', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2097, '教练管理', 0, 2, '/jiaol', NULL, 1, 0, 'M', '0', '0', NULL, 'date-range', 'admin', '2023-04-25 16:12:07', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2098, '教练管理', 2097, 1, '/jl', 'jiaolian/index', 1, 0, 'C', '0', '0', NULL, 'documentation', 'admin', '2023-04-25 16:12:44', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2099, '教练选择', 2097, 1, '/jlselect', 'jiaolian/select/index', 1, 0, 'C', '0', '0', NULL, 'color', 'admin', '2023-04-25 16:14:01', '', NULL, '');
COMMIT;

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
                              `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
                              `notice_title` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT '公告标题',
                              `notice_type` char(1) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
                              `notice_content` longblob COMMENT '公告内容',
                              `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
                              `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
                              `create_time` datetime DEFAULT NULL COMMENT '创建时间',
                              `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
                              `update_time` datetime DEFAULT NULL COMMENT '更新时间',
                              `remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
                              PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
BEGIN;
INSERT INTO `sys_notice` (`notice_id`, `notice_title`, `notice_type`, `notice_content`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1, '温馨提醒：2018-07-01 新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2021-08-09 14:15:44', 'admin', '2023-04-26 19:08:46', '管理员');
INSERT INTO `sys_notice` (`notice_id`, `notice_title`, `notice_type`, `notice_content`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2, '维护通知：2018-07-01 系统凌晨维护', '1', 0x3C703EE7BBB4E68AA4E58685E5AEB93C2F703E, '0', 'admin', '2021-08-09 14:15:44', 'admin', '2023-04-26 19:08:52', '管理员');
COMMIT;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
                            `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
                            `role_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
                            `role_key` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT '角色权限字符串',
                            `role_sort` int NOT NULL COMMENT '显示顺序',
                            `data_scope` char(1) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
                            `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
                            `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
                            `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
                            `del_flag` char(1) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
                            `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
                            `create_time` datetime DEFAULT NULL COMMENT '创建时间',
                            `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
                            `update_time` datetime DEFAULT NULL COMMENT '更新时间',
                            `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
                            PRIMARY KEY (`role_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` (`role_id`, `role_name`, `role_key`, `role_sort`, `data_scope`, `menu_check_strictly`, `dept_check_strictly`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2021-08-09 14:15:40', '', NULL, '超级管理员');
INSERT INTO `sys_role` (`role_id`, `role_name`, `role_key`, `role_sort`, `data_scope`, `menu_check_strictly`, `dept_check_strictly`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2, '会员', 'member', 2, '5', 1, 0, '0', '0', 'admin', '2021-08-09 14:15:40', 'admin', '2023-04-27 11:26:22', '普通角色');
INSERT INTO `sys_role` (`role_id`, `role_name`, `role_key`, `role_sort`, `data_scope`, `menu_check_strictly`, `dept_check_strictly`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (100, '学生', 'student', 3, '1', 1, 1, '0', '2', 'admin', '2021-08-11 18:35:13', '', NULL, NULL);
INSERT INTO `sys_role` (`role_id`, `role_name`, `role_key`, `role_sort`, `data_scope`, `menu_check_strictly`, `dept_check_strictly`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (101, '教练', 'coach', 0, '5', 0, 1, '0', '0', 'admin', '2023-04-19 18:44:28', 'admin', '2023-04-25 19:09:46', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
                                 `role_id` bigint NOT NULL COMMENT '角色ID',
                                 `dept_id` bigint NOT NULL COMMENT '部门ID',
                                 PRIMARY KEY (`role_id`,`dept_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
                                 `role_id` bigint NOT NULL COMMENT '角色ID',
                                 `menu_id` bigint NOT NULL COMMENT '菜单ID',
                                 PRIMARY KEY (`role_id`,`menu_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 2083);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 2084);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 2085);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 2086);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 2093);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 2094);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 2095);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 2096);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 2097);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 2098);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 2099);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 1);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 1001);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 1002);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 1003);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 1004);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 1005);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 1006);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 1007);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 1008);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 1009);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 1010);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 1011);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 1012);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 1013);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 1014);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 1015);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 1016);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 1026);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 1027);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 1028);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 1029);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 1030);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 2088);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 2091);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 2092);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 2097);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 2098);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (112, 2010);
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
                            `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
                            `dept_id` bigint DEFAULT '100' COMMENT '部门ID',
                            `user_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT '用户账号',
                            `nick_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT '用户昵称',
                            `user_type` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '00' COMMENT '用户类型（00系统用户）',
                            `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '用户邮箱',
                            `phonenumber` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '手机号码',
                            `sex` char(1) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
                            `avatar` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '头像地址',
                            `password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '密码',
                            `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
                            `del_flag` char(1) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
                            `login_ip` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '最后登录IP',
                            `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
                            `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
                            `create_time` datetime DEFAULT NULL COMMENT '创建时间',
                            `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
                            `update_time` datetime DEFAULT NULL COMMENT '更新时间',
                            `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
                            PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` (`user_id`, `dept_id`, `user_name`, `nick_name`, `user_type`, `email`, `phonenumber`, `sex`, `avatar`, `password`, `status`, `del_flag`, `login_ip`, `login_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1, 100, 'admin', '大帅哥', '00', 'ry@163.co', '15888888888', '0', '/profile/avatar/2022/10/17/9e1eb9a1-88a5-4108-8925-7a930243f90d.jpeg', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2023-04-27 11:26:13', 'admin', '2021-08-09 14:15:39', '', '2023-04-27 11:26:12', '管理员');
INSERT INTO `sys_user` (`user_id`, `dept_id`, `user_name`, `nick_name`, `user_type`, `email`, `phonenumber`, `sex`, `avatar`, `password`, `status`, `del_flag`, `login_ip`, `login_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (32, NULL, 'zhaoguoshun', 'zhaoguoshun', '00', '', '', '0', '', '$2a$10$fy69XV3NWBvut0HrGEA.N.iYIRDy/UAHoFowaedC0lDUHmdnjuDJG', '0', '2', '127.0.0.1', '2021-12-06 16:52:43', '', '2021-12-06 16:52:28', '', '2021-12-06 16:52:43', NULL);
INSERT INTO `sys_user` (`user_id`, `dept_id`, `user_name`, `nick_name`, `user_type`, `email`, `phonenumber`, `sex`, `avatar`, `password`, `status`, `del_flag`, `login_ip`, `login_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (33, NULL, 'dfskjhfncjdkn', 'dfskjhfncjdkn', '00', '', '', '0', '', '$2a$10$IstraLWrycdjOUHIlhkoVuJdsF/hlKxpZyVx.oQEEemkguTlNVqx2', '0', '2', '', NULL, '', '2021-12-06 16:56:44', '', NULL, NULL);
INSERT INTO `sys_user` (`user_id`, `dept_id`, `user_name`, `nick_name`, `user_type`, `email`, `phonenumber`, `sex`, `avatar`, `password`, `status`, `del_flag`, `login_ip`, `login_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (34, NULL, 'cndjnfd', 'cndjnfd', '00', '', '', '0', '', '$2a$10$ZMa8gryBhrQwiRS/ZfUwHu1X.lowmabe4bZ7hDnNShZKxPBVIo3uC', '0', '2', '', NULL, '', '2021-12-06 17:21:13', '', NULL, NULL);
INSERT INTO `sys_user` (`user_id`, `dept_id`, `user_name`, `nick_name`, `user_type`, `email`, `phonenumber`, `sex`, `avatar`, `password`, `status`, `del_flag`, `login_ip`, `login_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (35, 100, 'vfdfdf', 'vfdfdf', '00', '', '', '0', '', '$2a$10$1vHSxBZ1wIwBkFntrXY/HeVf7dzNjFl8nrJc0xw3UBHdHnO9SxrkO', '0', '2', '127.0.0.1', '2021-12-07 15:07:16', '', '2021-12-06 17:22:17', '', '2021-12-07 15:07:14', NULL);
INSERT INTO `sys_user` (`user_id`, `dept_id`, `user_name`, `nick_name`, `user_type`, `email`, `phonenumber`, `sex`, `avatar`, `password`, `status`, `del_flag`, `login_ip`, `login_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (36, 0, 'cfdccsd', 'cfdccsd', '00', '', '', '0', '', '$2a$10$x3v8DkZ6R9AXUnMvFOo22ex/fshkglLkrkfYrEH0Ge/ICoA9gYMf6', '0', '0', '', NULL, '', '2021-12-08 15:46:50', 'admin', '2022-05-09 18:46:10', NULL);
INSERT INTO `sys_user` (`user_id`, `dept_id`, `user_name`, `nick_name`, `user_type`, `email`, `phonenumber`, `sex`, `avatar`, `password`, `status`, `del_flag`, `login_ip`, `login_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (37, 0, '111', '111', '00', '', '', '0', '', '$2a$10$3Ux4vZ6lSMm6GRSMCNvsieXpz2CL3v.Md7F8IBzsfK9EvNZ.focZ6', '0', '0', '127.0.0.1', '2021-12-08 20:45:59', '', '2021-12-08 20:36:25', '', '2021-12-08 20:45:59', NULL);
INSERT INTO `sys_user` (`user_id`, `dept_id`, `user_name`, `nick_name`, `user_type`, `email`, `phonenumber`, `sex`, `avatar`, `password`, `status`, `del_flag`, `login_ip`, `login_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (38, 0, '1233', '1233', '00', '', '', '0', '', '$2a$10$So9AyLgY0DnvQ/4lWb4di.82oJ6im6cmhD8aSFKzPBbydCWwHwzWW', '0', '0', '127.0.0.1', '2021-12-08 20:46:46', '', '2021-12-08 20:46:34', '', '2021-12-08 20:46:46', NULL);
INSERT INTO `sys_user` (`user_id`, `dept_id`, `user_name`, `nick_name`, `user_type`, `email`, `phonenumber`, `sex`, `avatar`, `password`, `status`, `del_flag`, `login_ip`, `login_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (39, 100, 'test1', 'test1', '00', '', '', '0', '', '$2a$10$2GTOJ1hg4uecW1AUYdSF2.JmPfSrmd8RbRSIP.qfahNWFEpsxcx4C', '0', '0', '127.0.0.1', '2022-05-09 19:01:51', '', '2022-05-09 18:26:30', '', '2022-05-09 19:01:50', NULL);
INSERT INTO `sys_user` (`user_id`, `dept_id`, `user_name`, `nick_name`, `user_type`, `email`, `phonenumber`, `sex`, `avatar`, `password`, `status`, `del_flag`, `login_ip`, `login_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (40, 100, 'wei', '123', '00', '11111111@qq.com', '15288902435', '2', '', '$2a$10$oC9bTkSF4Nl8G0m7EfuuPO.Tg2nxrmc0cnPHQf/hlWKueeN238fou', '0', '0', '', NULL, 'admin', '2022-05-09 18:47:04', '', NULL, '4567');
INSERT INTO `sys_user` (`user_id`, `dept_id`, `user_name`, `nick_name`, `user_type`, `email`, `phonenumber`, `sex`, `avatar`, `password`, `status`, `del_flag`, `login_ip`, `login_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (41, 100, 'ww', 'ww', '00', 'dd@qq.com', '15698456126', '0', '/profile/avatar/2022/05/09/cad8acbd-3c92-4010-bd72-6bdda22d196e.jpeg', '$2a$10$.40W0u/XGO8Ny3S1x3Z2ZOPgtxOpknOFloo/vmhZAuzJ5FcofrfZ.', '0', '0', '127.0.0.1', '2022-05-09 19:03:07', '', '2022-05-09 19:02:51', '', '2022-05-09 19:20:17', NULL);
INSERT INTO `sys_user` (`user_id`, `dept_id`, `user_name`, `nick_name`, `user_type`, `email`, `phonenumber`, `sex`, `avatar`, `password`, `status`, `del_flag`, `login_ip`, `login_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (42, 100, 'shunshun', 'shunshun', '00', '', '', '0', '', '$2a$10$//ZbfQPGPlfl7pugq0sY4.GUGYbmuDyROo/kin5FmahkbsxeBZ/Ci', '0', '0', '127.0.0.1', '2022-10-15 20:33:38', '', '2022-10-15 20:33:21', '', '2022-10-15 20:33:38', NULL);
INSERT INTO `sys_user` (`user_id`, `dept_id`, `user_name`, `nick_name`, `user_type`, `email`, `phonenumber`, `sex`, `avatar`, `password`, `status`, `del_flag`, `login_ip`, `login_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (45, 100, 'zhaoguoshun', 'zhaoguoshun', '00', '', '', '0', '', '$2a$10$IaUbA8rCUoBaeavUfxzBj.3sYqlNK/JKDvN./WIXN0lCtSWjAwKHm', '0', '0', '', NULL, '', '2023-04-05 15:38:02', '', NULL, NULL);
INSERT INTO `sys_user` (`user_id`, `dept_id`, `user_name`, `nick_name`, `user_type`, `email`, `phonenumber`, `sex`, `avatar`, `password`, `status`, `del_flag`, `login_ip`, `login_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (46, 100, 'hello', 'hello', '00', '', '', '0', '', '$2a$10$1VAv2jQvVS9EBFq9l5j9GOLLGNdJo2ef9s./Mp6At6pGl0sb4dwai', '0', '0', '127.0.0.1', '2023-04-06 00:22:21', '', '2023-04-05 15:39:33', '', '2023-04-06 00:22:21', NULL);
INSERT INTO `sys_user` (`user_id`, `dept_id`, `user_name`, `nick_name`, `user_type`, `email`, `phonenumber`, `sex`, `avatar`, `password`, `status`, `del_flag`, `login_ip`, `login_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (47, 100, 'admin123', 'admin123', '00', '', '', '0', '', '$2a$10$3use9yzZPeFC/iUXSToPkeaoidPdszVWWJJuOpzLYBicP4pnWRhaK', '0', '0', '127.0.0.1', '2023-04-10 01:17:02', '', '2023-04-09 23:25:34', '', '2023-04-10 01:17:02', NULL);
INSERT INTO `sys_user` (`user_id`, `dept_id`, `user_name`, `nick_name`, `user_type`, `email`, `phonenumber`, `sex`, `avatar`, `password`, `status`, `del_flag`, `login_ip`, `login_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (48, 100, 'jiaolian', 'jiaolian', '00', '', '', '0', '', '$2a$10$Cy0VLF1Ccxx9Pr1tTffI5eXjuP8URZcgW.fxDn3uQi5rPwNAiNWvG', '0', '0', '127.0.0.1', '2023-04-25 19:16:29', 'admin', '2023-04-25 17:18:30', '', '2023-04-25 19:16:29', NULL);
INSERT INTO `sys_user` (`user_id`, `dept_id`, `user_name`, `nick_name`, `user_type`, `email`, `phonenumber`, `sex`, `avatar`, `password`, `status`, `del_flag`, `login_ip`, `login_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (49, 100, 'huiyuan', 'huiyuan', '00', '', '', '0', '', '$2a$10$Dyp1OBgS4/pOf3BncxmomugykLM/V9xRAgAipRn/kzjoqNr6owAcy', '0', '0', '127.0.0.1', '2023-04-26 09:20:53', 'admin', '2023-04-25 19:21:38', '', '2023-04-26 09:20:52', NULL);
INSERT INTO `sys_user` (`user_id`, `dept_id`, `user_name`, `nick_name`, `user_type`, `email`, `phonenumber`, `sex`, `avatar`, `password`, `status`, `del_flag`, `login_ip`, `login_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (50, 100, 'huiyuan2', 'huiyuan2', '00', '', '', '0', '', '$2a$10$3fqxA/M3Z9JZxaQXG3a1.e9IGig8MQPQAR9IHiVZrFZJ9cg/i4x7.', '0', '0', '127.0.0.1', '2023-04-27 11:31:43', 'admin', '2023-04-27 11:24:37', '', '2023-04-27 11:31:43', NULL);
INSERT INTO `sys_user` (`user_id`, `dept_id`, `user_name`, `nick_name`, `user_type`, `email`, `phonenumber`, `sex`, `avatar`, `password`, `status`, `del_flag`, `login_ip`, `login_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (51, 100, 'jiaolian2', 'jiaolian2', '00', '', '', '0', '', '$2a$10$SPu45reve9ENE57mqxJqkO.JMFMQn/TidMY4GOwLBsiD0BEvTgHi6', '0', '0', '127.0.0.1', '2023-04-27 11:27:01', 'admin', '2023-04-27 11:26:35', '', '2023-04-27 11:27:01', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
                                 `user_id` bigint NOT NULL COMMENT '用户ID',
                                 `post_id` bigint NOT NULL COMMENT '岗位ID',
                                 PRIMARY KEY (`user_id`,`post_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES (1, 1);
INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES (5, 6);
INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES (7, 11);
INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES (8, 11);
INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES (12, 13);
INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES (14, 1);
INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES (15, 15);
INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES (16, 2);
INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES (118, 12);
INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES (119, 12);
INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES (120, 11);
INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES (121, 12);
COMMIT;

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
                                 `user_id` bigint NOT NULL COMMENT '用户ID',
                                 `role_id` bigint NOT NULL COMMENT '角色ID',
                                 PRIMARY KEY (`user_id`,`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_role` (`user_id`, `role_id`) VALUES (1, 1);
INSERT INTO `sys_user_role` (`user_id`, `role_id`) VALUES (48, 101);
INSERT INTO `sys_user_role` (`user_id`, `role_id`) VALUES (49, 2);
INSERT INTO `sys_user_role` (`user_id`, `role_id`) VALUES (50, 2);
INSERT INTO `sys_user_role` (`user_id`, `role_id`) VALUES (51, 101);
COMMIT;

-- ----------------------------
-- Table structure for tb_address
-- ----------------------------
DROP TABLE IF EXISTS `tb_address`;
CREATE TABLE `tb_address` (
                              `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
                              `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '用户名',
                              `delname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '姓名',
                              `telephone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '联系手机',
                              `address` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '地址',
                              `user_id` int DEFAULT NULL COMMENT '用户id',
                              `create_time` datetime DEFAULT NULL COMMENT '创建时间',
                              KEY `addid` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_address
-- ----------------------------
BEGIN;
INSERT INTO `tb_address` (`id`, `username`, `delname`, `telephone`, `address`, `user_id`, `create_time`) VALUES (5, '', 'xjncj', '12121', 'cdjncjdncd', NULL, '2023-04-05 15:20:54');
INSERT INTO `tb_address` (`id`, `username`, `delname`, `telephone`, `address`, `user_id`, `create_time`) VALUES (7, '', 'cfndj', 'cdnj', 'cdnj', NULL, '2023-04-05 15:22:00');
INSERT INTO `tb_address` (`id`, `username`, `delname`, `telephone`, `address`, `user_id`, `create_time`) VALUES (8, '', 'dcdc', 'cdcd', 'cdcd', NULL, '2023-04-05 15:22:23');
INSERT INTO `tb_address` (`id`, `username`, `delname`, `telephone`, `address`, `user_id`, `create_time`) VALUES (9, '', 'cdcd', 'cdcd', 'cddcdcd', NULL, '2023-04-05 15:22:39');
INSERT INTO `tb_address` (`id`, `username`, `delname`, `telephone`, `address`, `user_id`, `create_time`) VALUES (10, '', '赵国顺', '1399392', '深圳', NULL, '2023-04-05 18:19:44');
INSERT INTO `tb_address` (`id`, `username`, `delname`, `telephone`, `address`, `user_id`, `create_time`) VALUES (11, '', 'd f v g b', 'cdcd', 'cdcd', NULL, '2023-04-05 18:20:00');
INSERT INTO `tb_address` (`id`, `username`, `delname`, `telephone`, `address`, `user_id`, `create_time`) VALUES (12, '', '招果树', '232', '差点时间才拿到手', 46, '2023-04-05 18:22:11');
COMMIT;

-- ----------------------------
-- Table structure for tb_card
-- ----------------------------
DROP TABLE IF EXISTS `tb_card`;
CREATE TABLE `tb_card` (
                           `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
                           `user_id` int DEFAULT NULL COMMENT '用户id',
                           `create_time` datetime DEFAULT NULL COMMENT '创建时间',
                           `address` varchar(255) DEFAULT NULL COMMENT '打卡地点',
                           PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='打卡表';

-- ----------------------------
-- Records of tb_card
-- ----------------------------
BEGIN;
INSERT INTO `tb_card` (`id`, `user_id`, `create_time`, `address`) VALUES (1, 1, '2023-04-25 16:57:58', '山东菏泽曹县');
INSERT INTO `tb_card` (`id`, `user_id`, `create_time`, `address`) VALUES (2, 49, '2023-04-26 09:27:48', '深圳');
INSERT INTO `tb_card` (`id`, `user_id`, `create_time`, `address`) VALUES (3, 50, '2023-04-27 11:26:03', '湖南省长沙市');
COMMIT;

-- ----------------------------
-- Table structure for tb_chat
-- ----------------------------
DROP TABLE IF EXISTS `tb_chat`;
CREATE TABLE `tb_chat` (
                           `id` int NOT NULL COMMENT 'id',
                           `content` varchar(255) DEFAULT NULL COMMENT '内容',
                           `user_id` int DEFAULT NULL COMMENT '发送人',
                           `review_id` int DEFAULT NULL COMMENT '接收人',
                           `create_time` datetime DEFAULT NULL COMMENT '创建时间',
                           `is_read` int DEFAULT '0' COMMENT '1',
                           PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of tb_chat
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tb_commodity
-- ----------------------------
DROP TABLE IF EXISTS `tb_commodity`;
CREATE TABLE `tb_commodity` (
                                `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
                                `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '姓名',
                                `price` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '价格',
                                `number` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '数量',
                                `type` varchar(22) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '类型',
                                `cover` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '图片',
                                `details` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '详情',
                                `create_time` datetime DEFAULT NULL COMMENT '创建时间',
                                `type_id` int DEFAULT NULL COMMENT '分类id',
                                PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='商品表';

-- ----------------------------
-- Records of tb_commodity
-- ----------------------------
BEGIN;
INSERT INTO `tb_commodity` (`id`, `name`, `price`, `number`, `type`, `cover`, `details`, `create_time`, `type_id`) VALUES (1, '小米12pro', '4699', '100', 'Good', 'http://8.130.53.22:9092/files/4cc0c10960264f00a8a15cbe13cb8d36', '全新骁龙8 | 2K AMOLED', NULL, NULL);
INSERT INTO `tb_commodity` (`id`, `name`, `price`, `number`, `type`, `cover`, `details`, `create_time`, `type_id`) VALUES (2, '小米12', '3999', '122', 'Good', 'http://8.130.53.22/files/3cf66117e0fa4d8599785ae89ac8a12a', '全新骁龙8 | 5000万主摄', NULL, NULL);
INSERT INTO `tb_commodity` (`id`, `name`, `price`, `number`, `type`, `cover`, `details`, `create_time`, `type_id`) VALUES (3, '小米12X', '3199', '21', 'Good', 'http://8.130.53.22/files/48b624aae3f949a6b7a6fe4417081658', '骁龙870 | 5000万主摄', NULL, NULL);
INSERT INTO `tb_commodity` (`id`, `name`, `price`, `number`, `type`, `cover`, `details`, `create_time`, `type_id`) VALUES (4, '红米note11', '1799', '2121', 'Good', 'http://8.130.53.22/files/c941409d63ac4828b18d04e62c7fb0ca', '三星AMOLED高刷屏', NULL, NULL);
INSERT INTO `tb_commodity` (`id`, `name`, `price`, `number`, `type`, `cover`, `details`, `create_time`, `type_id`) VALUES (6, 'mi12pro', NULL, NULL, 'Scan', 'http://8.130.53.22:9092/files/395c2228a945481bae9e946bfcd3d2ab', '21', NULL, NULL);
INSERT INTO `tb_commodity` (`id`, `name`, `price`, `number`, `type`, `cover`, `details`, `create_time`, `type_id`) VALUES (8, 'mipad', NULL, NULL, 'Scan', 'http://8.130.53.22:9092/files/4cc0c10960264f00a8a15cbe13cb8d36', NULL, NULL, NULL);
INSERT INTO `tb_commodity` (`id`, `name`, `price`, `number`, `type`, `cover`, `details`, `create_time`, `type_id`) VALUES (12, '小米11青春版', '1999', '321', 'Good', 'http://8.130.53.22/files/2f71875bca414144b4a5fc872c4fde8f', '6400万主摄像头  | 超线性立体声', NULL, NULL);
INSERT INTO `tb_commodity` (`id`, `name`, `price`, `number`, `type`, `cover`, `details`, `create_time`, `type_id`) VALUES (13, '红米K50', '2199', '21112', 'Good', 'http://8.130.53.22/files/86a3b5ea41074d9fb843f704e0aed0e8', '2K直屏的狠旗舰', NULL, NULL);
INSERT INTO `tb_commodity` (`id`, `name`, `price`, `number`, `type`, `cover`, `details`, `create_time`, `type_id`) VALUES (14, '红米K50pro', '2499', '21223', 'Good', 'http://8.130.53.22/files/a2a269fa9358407581b32b1586973af5', '2K直屏的狠旗舰', NULL, NULL);
INSERT INTO `tb_commodity` (`id`, `name`, `price`, `number`, `type`, `cover`, `details`, `create_time`, `type_id`) VALUES (15, '红米K50电竞版', '3299', '1212', 'Good', 'http://8.130.53.22/files/ec1b3631c7864ceebd3eea57dc55488b', '全线拉满的冷旗舰', NULL, NULL);
INSERT INTO `tb_commodity` (`id`, `name`, `price`, `number`, `type`, `cover`, `details`, `create_time`, `type_id`) VALUES (24, 'cndmn', '12121', '1212', NULL, 'cdc', 'cdc', '2023-04-05 13:55:28', 1);
INSERT INTO `tb_commodity` (`id`, `name`, `price`, `number`, `type`, `cover`, `details`, `create_time`, `type_id`) VALUES (25, 'mc,', '232', '232', NULL, 'http://localhost:8083/profile/avatar/2023/04/05/b5eb2d36-a483-456c-82fe-016e826fb68b.jpeg', '2323', '2023-04-05 13:58:20', 1);
COMMIT;

-- ----------------------------
-- Table structure for tb_course
-- ----------------------------
DROP TABLE IF EXISTS `tb_course`;
CREATE TABLE `tb_course` (
                             `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
                             `title` varchar(255) DEFAULT NULL COMMENT '课程名称',
                             `user_id` bigint DEFAULT NULL COMMENT '创建人',
                             `status` tinyint DEFAULT '0' COMMENT '审核状态0待审核；1审核成功；2审核失败',
                             `create_time` datetime DEFAULT NULL COMMENT '创建时间',
                             PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='课程表';

-- ----------------------------
-- Records of tb_course
-- ----------------------------
BEGIN;
INSERT INTO `tb_course` (`id`, `title`, `user_id`, `status`, `create_time`) VALUES (1, '马课程', 1, 0, '2023-04-25 11:48:50');
COMMIT;

-- ----------------------------
-- Table structure for tb_course_select
-- ----------------------------
DROP TABLE IF EXISTS `tb_course_select`;
CREATE TABLE `tb_course_select` (
                                    `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
                                    `user_id` int DEFAULT NULL COMMENT '用户id',
                                    `course_id` int DEFAULT NULL COMMENT '课程id',
                                    `create_time` datetime DEFAULT NULL COMMENT '创建时间',
                                    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='课程选择';

-- ----------------------------
-- Records of tb_course_select
-- ----------------------------
BEGIN;
INSERT INTO `tb_course_select` (`id`, `user_id`, `course_id`, `create_time`) VALUES (1, 1, 1, '2023-04-25 14:14:22');
INSERT INTO `tb_course_select` (`id`, `user_id`, `course_id`, `create_time`) VALUES (2, 1, 1, '2023-04-25 16:46:10');
INSERT INTO `tb_course_select` (`id`, `user_id`, `course_id`, `create_time`) VALUES (3, 49, 1, '2023-04-26 09:24:21');
INSERT INTO `tb_course_select` (`id`, `user_id`, `course_id`, `create_time`) VALUES (4, 50, 1, '2023-04-27 11:25:22');
COMMIT;

-- ----------------------------
-- Table structure for tb_employee
-- ----------------------------
DROP TABLE IF EXISTS `tb_employee`;
CREATE TABLE `tb_employee` (
                               `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
                               `name` varchar(255) DEFAULT NULL COMMENT '姓名',
                               `phone` varchar(255) DEFAULT NULL COMMENT '电话',
                               `age` int DEFAULT NULL COMMENT '年龄',
                               `post` varchar(255) DEFAULT NULL COMMENT '职位',
                               `create_time` datetime DEFAULT NULL COMMENT '创建时间',
                               PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='员工信息表';

-- ----------------------------
-- Records of tb_employee
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tb_evaluate
-- ----------------------------
DROP TABLE IF EXISTS `tb_evaluate`;
CREATE TABLE `tb_evaluate` (
                               `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
                               `content` text COMMENT '评价',
                               `type` int DEFAULT NULL COMMENT '1课程评价 2教练评价',
                               `user_id` int DEFAULT NULL COMMENT '评价人',
                               `create_time` datetime DEFAULT NULL COMMENT '创建人',
                               `common_id` int DEFAULT NULL COMMENT '课程或教练id',
                               PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='评价';

-- ----------------------------
-- Records of tb_evaluate
-- ----------------------------
BEGIN;
INSERT INTO `tb_evaluate` (`id`, `content`, `type`, `user_id`, `create_time`, `common_id`) VALUES (4, '折课很不错', 1, NULL, '2023-04-25 17:14:58', 1);
INSERT INTO `tb_evaluate` (`id`, `content`, `type`, `user_id`, `create_time`, `common_id`) VALUES (5, '教练人很好', 2, NULL, '2023-04-25 17:15:09', 1);
INSERT INTO `tb_evaluate` (`id`, `content`, `type`, `user_id`, `create_time`, `common_id`) VALUES (6, 'lll', 2, 49, '2023-04-25 19:38:30', 3);
INSERT INTO `tb_evaluate` (`id`, `content`, `type`, `user_id`, `create_time`, `common_id`) VALUES (7, 'hao', 1, 1, '2023-04-27 11:23:37', 1);
INSERT INTO `tb_evaluate` (`id`, `content`, `type`, `user_id`, `create_time`, `common_id`) VALUES (8, '好', 1, 50, '2023-04-27 11:25:30', 1);
INSERT INTO `tb_evaluate` (`id`, `content`, `type`, `user_id`, `create_time`, `common_id`) VALUES (9, '教练好', 2, 50, '2023-04-27 11:25:41', 3);
COMMIT;

-- ----------------------------
-- Table structure for tb_guide_project
-- ----------------------------
DROP TABLE IF EXISTS `tb_guide_project`;
CREATE TABLE `tb_guide_project` (
                                    `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
                                    `name` varchar(255) DEFAULT NULL COMMENT '项目名称',
                                    `summary` varchar(255) DEFAULT NULL COMMENT '项目简介',
                                    `user_id` int DEFAULT NULL COMMENT '用户',
                                    `review` int DEFAULT '0' COMMENT '审核；0待审核；1审核通过；2审核失败',
                                    `create_time` datetime DEFAULT NULL COMMENT '创建时间',
                                    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='指导项目';

-- ----------------------------
-- Records of tb_guide_project
-- ----------------------------
BEGIN;
INSERT INTO `tb_guide_project` (`id`, `name`, `summary`, `user_id`, `review`, `create_time`) VALUES (1, '好项目', '到家家户户', 1, 2, '2023-04-25 09:14:08');
INSERT INTO `tb_guide_project` (`id`, `name`, `summary`, `user_id`, `review`, `create_time`) VALUES (2, '为我', '2wew', 1, 1, '2023-04-25 09:26:47');
INSERT INTO `tb_guide_project` (`id`, `name`, `summary`, `user_id`, `review`, `create_time`) VALUES (3, 'dd', '121', 48, 2, '2023-04-25 19:19:46');
INSERT INTO `tb_guide_project` (`id`, `name`, `summary`, `user_id`, `review`, `create_time`) VALUES (4, '单车', 'ddd', 51, 0, '2023-04-27 11:27:26');
COMMIT;

-- ----------------------------
-- Table structure for tb_jiaolian
-- ----------------------------
DROP TABLE IF EXISTS `tb_jiaolian`;
CREATE TABLE `tb_jiaolian` (
                               `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
                               `name` varchar(255) DEFAULT NULL COMMENT '姓名',
                               `age` int DEFAULT NULL COMMENT '年龄',
                               `phone` varchar(255) DEFAULT NULL COMMENT '电话',
                               `create_time` datetime DEFAULT NULL COMMENT '创建时间',
                               `course_name` varchar(255) DEFAULT NULL COMMENT '课程',
                               PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='教练管理';

-- ----------------------------
-- Records of tb_jiaolian
-- ----------------------------
BEGIN;
INSERT INTO `tb_jiaolian` (`id`, `name`, `age`, `phone`, `create_time`, `course_name`) VALUES (3, '的打开毛孔', 121, '192912', '2023-04-25 19:07:53', '川端康成门口');
COMMIT;

-- ----------------------------
-- Table structure for tb_jl_select
-- ----------------------------
DROP TABLE IF EXISTS `tb_jl_select`;
CREATE TABLE `tb_jl_select` (
                                `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
                                `user_id` int DEFAULT NULL COMMENT '用户',
                                `jl_id` int DEFAULT NULL COMMENT '教练',
                                `create_time` datetime DEFAULT NULL COMMENT '创建时间',
                                PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of tb_jl_select
-- ----------------------------
BEGIN;
INSERT INTO `tb_jl_select` (`id`, `user_id`, `jl_id`, `create_time`) VALUES (1, 1, 1, '2023-04-25 16:38:51');
INSERT INTO `tb_jl_select` (`id`, `user_id`, `jl_id`, `create_time`) VALUES (2, 49, 3, '2023-04-25 19:44:41');
COMMIT;

-- ----------------------------
-- Table structure for tb_journalism
-- ----------------------------
DROP TABLE IF EXISTS `tb_journalism`;
CREATE TABLE `tb_journalism` (
                                 `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
                                 `title` varchar(255) DEFAULT NULL COMMENT '标题',
                                 `content` text COMMENT '内容',
                                 `img_url` varchar(255) DEFAULT NULL COMMENT '封面',
                                 `summary` varchar(255) DEFAULT NULL COMMENT '简介',
                                 `create_time` datetime DEFAULT NULL COMMENT '创建时间',
                                 PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='新闻';

-- ----------------------------
-- Records of tb_journalism
-- ----------------------------
BEGIN;
INSERT INTO `tb_journalism` (`id`, `title`, `content`, `img_url`, `summary`, `create_time`) VALUES (1, 'ce', '<p>999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999</p>', 'http://localhost:8083/profile/avatar/2023/04/02/bde53e32-02a1-41be-b6da-63c6512c226c.jpg', 'dede', '2023-04-02 16:09:15');
COMMIT;

-- ----------------------------
-- Table structure for tb_member
-- ----------------------------
DROP TABLE IF EXISTS `tb_member`;
CREATE TABLE `tb_member` (
                             `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
                             `user_id` int DEFAULT NULL COMMENT '用户id',
                             `grade` varchar(255) DEFAULT NULL COMMENT '会员卡等级',
                             `expire_time` datetime DEFAULT NULL COMMENT '到期时间',
                             `create_time` datetime DEFAULT NULL COMMENT '创建时间',
                             `card` varchar(255) DEFAULT NULL COMMENT '会员卡',
                             PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='会员表';

-- ----------------------------
-- Records of tb_member
-- ----------------------------
BEGIN;
INSERT INTO `tb_member` (`id`, `user_id`, `grade`, `expire_time`, `create_time`, `card`) VALUES (2, 37, '1', '2023-04-24 00:00:00', '2023-04-24 15:30:51', '年卡');
INSERT INTO `tb_member` (`id`, `user_id`, `grade`, `expire_time`, `create_time`, `card`) VALUES (3, 1, 'ss', '2023-04-16 00:00:00', '2023-04-26 19:12:36', '年卡');
COMMIT;

-- ----------------------------
-- Table structure for tb_oder
-- ----------------------------
DROP TABLE IF EXISTS `tb_oder`;
CREATE TABLE `tb_oder` (
                           `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
                           `good_name` varchar(255) DEFAULT NULL COMMENT '商品名称',
                           `count` int DEFAULT NULL COMMENT '数量',
                           `price` decimal(10,2) DEFAULT NULL COMMENT '金额',
                           `user_id` int DEFAULT NULL COMMENT '用户id',
                           `create_time` datetime DEFAULT NULL COMMENT '创建时间',
                           `order_num` varchar(255) DEFAULT NULL COMMENT '订单号',
                           `address` varchar(255) DEFAULT NULL COMMENT '地址',
                           PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of tb_oder
-- ----------------------------
BEGIN;
INSERT INTO `tb_oder` (`id`, `good_name`, `count`, `price`, `user_id`, `create_time`, `order_num`, `address`) VALUES (1, NULL, 1, 232.00, NULL, '2023-04-05 14:56:55', NULL, NULL);
INSERT INTO `tb_oder` (`id`, `good_name`, `count`, `price`, `user_id`, `create_time`, `order_num`, `address`) VALUES (2, NULL, 1, 232.00, NULL, '2023-04-05 14:58:30', NULL, NULL);
INSERT INTO `tb_oder` (`id`, `good_name`, `count`, `price`, `user_id`, `create_time`, `order_num`, `address`) VALUES (3, NULL, 1, 232.00, NULL, '2023-04-05 14:59:20', NULL, NULL);
INSERT INTO `tb_oder` (`id`, `good_name`, `count`, `price`, `user_id`, `create_time`, `order_num`, `address`) VALUES (4, NULL, 1, 232.00, NULL, '2023-04-05 14:59:43', NULL, NULL);
INSERT INTO `tb_oder` (`id`, `good_name`, `count`, `price`, `user_id`, `create_time`, `order_num`, `address`) VALUES (5, 'mc, undefined undefined', 1, 232.00, NULL, '2023-04-05 15:00:32', NULL, NULL);
INSERT INTO `tb_oder` (`id`, `good_name`, `count`, `price`, `user_id`, `create_time`, `order_num`, `address`) VALUES (6, 'mc, undefined undefined', 1, 232.00, NULL, '2023-04-05 15:01:23', NULL, NULL);
INSERT INTO `tb_oder` (`id`, `good_name`, `count`, `price`, `user_id`, `create_time`, `order_num`, `address`) VALUES (7, 'mc, undefined undefined', 1, 232.00, 1, '2023-04-05 15:02:19', NULL, NULL);
INSERT INTO `tb_oder` (`id`, `good_name`, `count`, `price`, `user_id`, `create_time`, `order_num`, `address`) VALUES (8, 'mc, undefined undefined', 1, 232.00, 1, '2023-04-05 15:02:21', NULL, NULL);
INSERT INTO `tb_oder` (`id`, `good_name`, `count`, `price`, `user_id`, `create_time`, `order_num`, `address`) VALUES (9, 'mc, undefined undefined', 1, 232.00, 1, '2023-04-05 15:14:55', '3d4fa4a3-ab21-4218-8139-c16490f0111b', NULL);
INSERT INTO `tb_oder` (`id`, `good_name`, `count`, `price`, `user_id`, `create_time`, `order_num`, `address`) VALUES (10, 'mc, undefined undefined', 1, 232.00, 1, '2023-04-05 15:15:12', '27453f93-2d48-4471-95c8-65ea2dffad48', 'qesd dsds dsds');
INSERT INTO `tb_oder` (`id`, `good_name`, `count`, `price`, `user_id`, `create_time`, `order_num`, `address`) VALUES (11, 'mc, undefined undefined', 1, 232.00, NULL, '2023-04-05 18:09:21', 'fa87debb-205f-4449-9adf-45ce33631030', 'cdcd cdcd cddcdcd');
INSERT INTO `tb_oder` (`id`, `good_name`, `count`, `price`, `user_id`, `create_time`, `order_num`, `address`) VALUES (12, 'mc, undefined undefined', 1, 232.00, NULL, '2023-04-05 18:09:24', '93c1e02f-c2e2-4c4a-94f6-635e8cc59205', 'cdcd cdcd cddcdcd');
INSERT INTO `tb_oder` (`id`, `good_name`, `count`, `price`, `user_id`, `create_time`, `order_num`, `address`) VALUES (13, 'mc, undefined undefined', 1, 232.00, NULL, '2023-04-05 18:09:29', '7fc20c31-f0a4-4589-ae64-822adf7a51c6', 'cdcd cdcd cddcdcd');
INSERT INTO `tb_oder` (`id`, `good_name`, `count`, `price`, `user_id`, `create_time`, `order_num`, `address`) VALUES (14, 'mi12pro undefined undefined', 1, NULL, 46, '2023-04-05 18:13:48', '5c541fd1-c73a-46ae-8d08-f7a632062390', NULL);
INSERT INTO `tb_oder` (`id`, `good_name`, `count`, `price`, `user_id`, `create_time`, `order_num`, `address`) VALUES (15, 'mc, undefined undefined', 3, 232.00, 46, '2023-04-05 18:22:16', '15675118-3834-4387-b8d1-34d06c4834e8', '招果树 232 差点时间才拿到手');
INSERT INTO `tb_oder` (`id`, `good_name`, `count`, `price`, `user_id`, `create_time`, `order_num`, `address`) VALUES (16, 'mc, undefined undefined', 1, 232.00, 46, '2023-04-05 18:28:02', '0e63380d-24ce-40c9-b958-80f5a831e825', NULL);
INSERT INTO `tb_oder` (`id`, `good_name`, `count`, `price`, `user_id`, `create_time`, `order_num`, `address`) VALUES (17, '小米12pro 8GB+128GB 紫色', 1, 4699.00, 1, '2023-04-09 23:06:48', '124cde66-4ddd-4d1d-b012-3b604fc662b8', 'xjncj 12121 cdjncjdncd');
INSERT INTO `tb_oder` (`id`, `good_name`, `count`, `price`, `user_id`, `create_time`, `order_num`, `address`) VALUES (18, 'win11 undefined undefined', 1, NULL, 1, '2023-04-09 23:08:28', 'de919564-b04d-4cea-aa7d-b8043c368d87', 'xjncj 12121 cdjncjdncd');
COMMIT;

-- ----------------------------
-- Table structure for tb_orders
-- ----------------------------
DROP TABLE IF EXISTS `tb_orders`;
CREATE TABLE `tb_orders` (
                             `order_id` int NOT NULL AUTO_INCREMENT,
                             `order_number` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
                             `id` int NOT NULL,
                             `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                             `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                             `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                             `count` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                             `cover` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                             `dates` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                             `pay_state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                             `deliver_state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                             `deliver_number` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                             `address` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                             PRIMARY KEY (`order_id`) USING BTREE,
                             KEY `idorder` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_orders
-- ----------------------------
BEGIN;
INSERT INTO `tb_orders` (`order_id`, `order_number`, `id`, `username`, `name`, `price`, `count`, `cover`, `dates`, `pay_state`, `deliver_state`, `deliver_number`, `address`) VALUES (7, '1164439867435746271', 1, '夏天', '小米12X 8GB+128GB 紫色', '3199.00', '1', 'http://localhost:9092/files/48b624aae3f949a6b7a6fe4417081658', '2022年02月09日 17:24:34', NULL, '已发货', '327513743213', '天津市河西区天津科技大学');
INSERT INTO `tb_orders` (`order_id`, `order_number`, `id`, `username`, `name`, `price`, `count`, `cover`, `dates`, `pay_state`, `deliver_state`, `deliver_number`, `address`) VALUES (20, '11644550972476470', 1, '夏天', '小米12X 8GB+128GB 紫色', '3199.00', '1', 'http://localhost:9092/files/48b624aae3f949a6b7a6fe4417081658', '2022年02月11日 11:42:52', NULL, '已确认', NULL, '夏天 1882204679 青岛市黄岛区丁松路12号');
INSERT INTO `tb_orders` (`order_id`, `order_number`, `id`, `username`, `name`, `price`, `count`, `cover`, `dates`, `pay_state`, `deliver_state`, `deliver_number`, `address`) VALUES (22, '2164456528071963359', 2, 'duoduo', '小米11青春版 8GB+128GB 紫色', '1999.00', '1', 'http://localhost:9092/files/2f71875bca414144b4a5fc872c4fde8f', '2022年02月11日 15:41:20', NULL, '已确认', NULL, '夏天 18822067367 天津市河西区天津科技大学');
INSERT INTO `tb_orders` (`order_id`, `order_number`, `id`, `username`, `name`, `price`, `count`, `cover`, `dates`, `pay_state`, `deliver_state`, `deliver_number`, `address`) VALUES (29, '1164542133360548543', 1, '夏天', '小米12X 8GB+128GB 原野绿', '3199.00', '1', 'http://localhost:9092/files/48b624aae3f949a6b7a6fe4417081658', '2022年02月21日 13:28:53', NULL, '已发货', '12431264121221', '夏天 1882204679 青岛市黄岛区丁松路12号');
INSERT INTO `tb_orders` (`order_id`, `order_number`, `id`, `username`, `name`, `price`, `count`, `cover`, `dates`, `pay_state`, `deliver_state`, `deliver_number`, `address`) VALUES (30, '1164630400157559289', 1, '夏天', '小米12X 8GB+128GB 原野绿', '3199.00', '1', 'http://localhost:9092/files/48b624aae3f949a6b7a6fe4417081658', '2022年03月03日 18:40:01', NULL, '未发货', NULL, '陈处 18822049633 陕西省西安市未央区');
INSERT INTO `tb_orders` (`order_id`, `order_number`, `id`, `username`, `name`, `price`, `count`, `cover`, `dates`, `pay_state`, `deliver_state`, `deliver_number`, `address`) VALUES (31, '1164916260027326534', 1, '夏天', '小米12X 8GB+128GB 原野绿', '3199.00', '1', 'http://localhost:9092/files/48b624aae3f949a6b7a6fe4417081658', '2022年04月05日 20:43:20', NULL, '未发货', NULL, '陈处 18822049633 陕西省西安市未央区');
INSERT INTO `tb_orders` (`order_id`, `order_number`, `id`, `username`, `name`, `price`, `count`, `cover`, `dates`, `pay_state`, `deliver_state`, `deliver_number`, `address`) VALUES (32, '1165154498010925632', 1, '夏天', '小米12X 8GB+128GB 原野绿', '3199.00', '1', 'http://localhost:9092/files/48b624aae3f949a6b7a6fe4417081658', '2022年05月03日 10:29:40', NULL, '未发货', NULL, '夏天 1882204679 青岛市黄岛区丁松路12号');
COMMIT;

-- ----------------------------
-- Table structure for tb_project
-- ----------------------------
DROP TABLE IF EXISTS `tb_project`;
CREATE TABLE `tb_project` (
                              `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
                              `name` varchar(255) DEFAULT NULL COMMENT '项目名称',
                              `summary` varchar(255) DEFAULT NULL COMMENT '项目简介',
                              `create_time` datetime DEFAULT NULL COMMENT '创建时间',
                              PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='健身项目表';

-- ----------------------------
-- Records of tb_project
-- ----------------------------
BEGIN;
INSERT INTO `tb_project` (`id`, `name`, `summary`, `create_time`) VALUES (1, '摩拜单车', '放音乐骑单车', '2023-04-24 17:15:14');
COMMIT;

-- ----------------------------
-- Table structure for tb_qicai
-- ----------------------------
DROP TABLE IF EXISTS `tb_qicai`;
CREATE TABLE `tb_qicai` (
                            `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
                            `name` varchar(255) DEFAULT NULL COMMENT '器材名称',
                            `create_time` datetime DEFAULT NULL COMMENT '创建时间',
                            PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='器材表';

-- ----------------------------
-- Records of tb_qicai
-- ----------------------------
BEGIN;
INSERT INTO `tb_qicai` (`id`, `name`, `create_time`) VALUES (1, '跑步机', '2023-04-25 16:59:05');
COMMIT;

-- ----------------------------
-- Table structure for tb_shop
-- ----------------------------
DROP TABLE IF EXISTS `tb_shop`;
CREATE TABLE `tb_shop` (
                           `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
                           `name` varchar(255) DEFAULT NULL COMMENT '店铺名称',
                           `summary` varchar(255) DEFAULT NULL COMMENT '店铺介绍',
                           `address` varchar(255) DEFAULT NULL COMMENT '店铺地址',
                           `create_time` datetime DEFAULT NULL COMMENT '创建时间',
                           PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='店面信息';

-- ----------------------------
-- Records of tb_shop
-- ----------------------------
BEGIN;
INSERT INTO `tb_shop` (`id`, `name`, `summary`, `address`, `create_time`) VALUES (1, '健身房', '超大健身房', '深圳市罗湖区翠竹街道2301', '2023-04-26 19:08:22');
COMMIT;

-- ----------------------------
-- Table structure for tb_type
-- ----------------------------
DROP TABLE IF EXISTS `tb_type`;
CREATE TABLE `tb_type` (
                           `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
                           `name` varchar(255) DEFAULT NULL COMMENT '分类名称',
                           `create_time` datetime DEFAULT NULL COMMENT '创建时间',
                           PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of tb_type
-- ----------------------------
BEGIN;
INSERT INTO `tb_type` (`id`, `name`, `create_time`) VALUES (1, '帽子', '2023-04-05 13:47:58');
INSERT INTO `tb_type` (`id`, `name`, `create_time`) VALUES (2, '鞋子', '2023-04-05 13:48:04');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;


-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 2083);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 2084);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 2085);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 2086);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 2093);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 2094);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 2095);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 2096);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 2097);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 2098);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 2099);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 1);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 1001);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 1002);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 1003);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 1004);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 1005);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 1006);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 1007);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 1008);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 1009);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 1010);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 1011);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 1012);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 1013);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 1014);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 1015);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 1016);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 1026);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 1027);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 1028);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 1029);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 1030);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 2088);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 2091);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 2092);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 2097);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101, 2098);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (112, 2010);
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint DEFAULT '100' COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` (`user_id`, `dept_id`, `user_name`, `nick_name`, `user_type`, `email`, `phonenumber`, `sex`, `avatar`, `password`, `status`, `del_flag`, `login_ip`, `login_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1, 100, 'admin', '大帅哥', '00', 'ry@163.co', '15888888888', '0', '/profile/avatar/2022/10/17/9e1eb9a1-88a5-4108-8925-7a930243f90d.jpeg', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2023-04-27 11:26:13', 'admin', '2021-08-09 14:15:39', '', '2023-04-27 11:26:12', '管理员');
INSERT INTO `sys_user` (`user_id`, `dept_id`, `user_name`, `nick_name`, `user_type`, `email`, `phonenumber`, `sex`, `avatar`, `password`, `status`, `del_flag`, `login_ip`, `login_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (32, NULL, 'zhaoguoshun', 'zhaoguoshun', '00', '', '', '0', '', '$2a$10$fy69XV3NWBvut0HrGEA.N.iYIRDy/UAHoFowaedC0lDUHmdnjuDJG', '0', '2', '127.0.0.1', '2021-12-06 16:52:43', '', '2021-12-06 16:52:28', '', '2021-12-06 16:52:43', NULL);
INSERT INTO `sys_user` (`user_id`, `dept_id`, `user_name`, `nick_name`, `user_type`, `email`, `phonenumber`, `sex`, `avatar`, `password`, `status`, `del_flag`, `login_ip`, `login_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (33, NULL, 'dfskjhfncjdkn', 'dfskjhfncjdkn', '00', '', '', '0', '', '$2a$10$IstraLWrycdjOUHIlhkoVuJdsF/hlKxpZyVx.oQEEemkguTlNVqx2', '0', '2', '', NULL, '', '2021-12-06 16:56:44', '', NULL, NULL);
INSERT INTO `sys_user` (`user_id`, `dept_id`, `user_name`, `nick_name`, `user_type`, `email`, `phonenumber`, `sex`, `avatar`, `password`, `status`, `del_flag`, `login_ip`, `login_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (34, NULL, 'cndjnfd', 'cndjnfd', '00', '', '', '0', '', '$2a$10$ZMa8gryBhrQwiRS/ZfUwHu1X.lowmabe4bZ7hDnNShZKxPBVIo3uC', '0', '2', '', NULL, '', '2021-12-06 17:21:13', '', NULL, NULL);
INSERT INTO `sys_user` (`user_id`, `dept_id`, `user_name`, `nick_name`, `user_type`, `email`, `phonenumber`, `sex`, `avatar`, `password`, `status`, `del_flag`, `login_ip`, `login_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (35, 100, 'vfdfdf', 'vfdfdf', '00', '', '', '0', '', '$2a$10$1vHSxBZ1wIwBkFntrXY/HeVf7dzNjFl8nrJc0xw3UBHdHnO9SxrkO', '0', '2', '127.0.0.1', '2021-12-07 15:07:16', '', '2021-12-06 17:22:17', '', '2021-12-07 15:07:14', NULL);
INSERT INTO `sys_user` (`user_id`, `dept_id`, `user_name`, `nick_name`, `user_type`, `email`, `phonenumber`, `sex`, `avatar`, `password`, `status`, `del_flag`, `login_ip`, `login_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (36, 0, 'cfdccsd', 'cfdccsd', '00', '', '', '0', '', '$2a$10$x3v8DkZ6R9AXUnMvFOo22ex/fshkglLkrkfYrEH0Ge/ICoA9gYMf6', '0', '0', '', NULL, '', '2021-12-08 15:46:50', 'admin', '2022-05-09 18:46:10', NULL);
INSERT INTO `sys_user` (`user_id`, `dept_id`, `user_name`, `nick_name`, `user_type`, `email`, `phonenumber`, `sex`, `avatar`, `password`, `status`, `del_flag`, `login_ip`, `login_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (37, 0, '111', '111', '00', '', '', '0', '', '$2a$10$3Ux4vZ6lSMm6GRSMCNvsieXpz2CL3v.Md7F8IBzsfK9EvNZ.focZ6', '0', '0', '127.0.0.1', '2021-12-08 20:45:59', '', '2021-12-08 20:36:25', '', '2021-12-08 20:45:59', NULL);
INSERT INTO `sys_user` (`user_id`, `dept_id`, `user_name`, `nick_name`, `user_type`, `email`, `phonenumber`, `sex`, `avatar`, `password`, `status`, `del_flag`, `login_ip`, `login_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (38, 0, '1233', '1233', '00', '', '', '0', '', '$2a$10$So9AyLgY0DnvQ/4lWb4di.82oJ6im6cmhD8aSFKzPBbydCWwHwzWW', '0', '0', '127.0.0.1', '2021-12-08 20:46:46', '', '2021-12-08 20:46:34', '', '2021-12-08 20:46:46', NULL);
INSERT INTO `sys_user` (`user_id`, `dept_id`, `user_name`, `nick_name`, `user_type`, `email`, `phonenumber`, `sex`, `avatar`, `password`, `status`, `del_flag`, `login_ip`, `login_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (39, 100, 'test1', 'test1', '00', '', '', '0', '', '$2a$10$2GTOJ1hg4uecW1AUYdSF2.JmPfSrmd8RbRSIP.qfahNWFEpsxcx4C', '0', '0', '127.0.0.1', '2022-05-09 19:01:51', '', '2022-05-09 18:26:30', '', '2022-05-09 19:01:50', NULL);
INSERT INTO `sys_user` (`user_id`, `dept_id`, `user_name`, `nick_name`, `user_type`, `email`, `phonenumber`, `sex`, `avatar`, `password`, `status`, `del_flag`, `login_ip`, `login_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (40, 100, 'wei', '123', '00', '11111111@qq.com', '15288902435', '2', '', '$2a$10$oC9bTkSF4Nl8G0m7EfuuPO.Tg2nxrmc0cnPHQf/hlWKueeN238fou', '0', '0', '', NULL, 'admin', '2022-05-09 18:47:04', '', NULL, '4567');
INSERT INTO `sys_user` (`user_id`, `dept_id`, `user_name`, `nick_name`, `user_type`, `email`, `phonenumber`, `sex`, `avatar`, `password`, `status`, `del_flag`, `login_ip`, `login_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (41, 100, 'ww', 'ww', '00', 'dd@qq.com', '15698456126', '0', '/profile/avatar/2022/05/09/cad8acbd-3c92-4010-bd72-6bdda22d196e.jpeg', '$2a$10$.40W0u/XGO8Ny3S1x3Z2ZOPgtxOpknOFloo/vmhZAuzJ5FcofrfZ.', '0', '0', '127.0.0.1', '2022-05-09 19:03:07', '', '2022-05-09 19:02:51', '', '2022-05-09 19:20:17', NULL);
INSERT INTO `sys_user` (`user_id`, `dept_id`, `user_name`, `nick_name`, `user_type`, `email`, `phonenumber`, `sex`, `avatar`, `password`, `status`, `del_flag`, `login_ip`, `login_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (42, 100, 'shunshun', 'shunshun', '00', '', '', '0', '', '$2a$10$//ZbfQPGPlfl7pugq0sY4.GUGYbmuDyROo/kin5FmahkbsxeBZ/Ci', '0', '0', '127.0.0.1', '2022-10-15 20:33:38', '', '2022-10-15 20:33:21', '', '2022-10-15 20:33:38', NULL);
INSERT INTO `sys_user` (`user_id`, `dept_id`, `user_name`, `nick_name`, `user_type`, `email`, `phonenumber`, `sex`, `avatar`, `password`, `status`, `del_flag`, `login_ip`, `login_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (45, 100, 'zhaoguoshun', 'zhaoguoshun', '00', '', '', '0', '', '$2a$10$IaUbA8rCUoBaeavUfxzBj.3sYqlNK/JKDvN./WIXN0lCtSWjAwKHm', '0', '0', '', NULL, '', '2023-04-05 15:38:02', '', NULL, NULL);
INSERT INTO `sys_user` (`user_id`, `dept_id`, `user_name`, `nick_name`, `user_type`, `email`, `phonenumber`, `sex`, `avatar`, `password`, `status`, `del_flag`, `login_ip`, `login_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (46, 100, 'hello', 'hello', '00', '', '', '0', '', '$2a$10$1VAv2jQvVS9EBFq9l5j9GOLLGNdJo2ef9s./Mp6At6pGl0sb4dwai', '0', '0', '127.0.0.1', '2023-04-06 00:22:21', '', '2023-04-05 15:39:33', '', '2023-04-06 00:22:21', NULL);
INSERT INTO `sys_user` (`user_id`, `dept_id`, `user_name`, `nick_name`, `user_type`, `email`, `phonenumber`, `sex`, `avatar`, `password`, `status`, `del_flag`, `login_ip`, `login_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (47, 100, 'admin123', 'admin123', '00', '', '', '0', '', '$2a$10$3use9yzZPeFC/iUXSToPkeaoidPdszVWWJJuOpzLYBicP4pnWRhaK', '0', '0', '127.0.0.1', '2023-04-10 01:17:02', '', '2023-04-09 23:25:34', '', '2023-04-10 01:17:02', NULL);
INSERT INTO `sys_user` (`user_id`, `dept_id`, `user_name`, `nick_name`, `user_type`, `email`, `phonenumber`, `sex`, `avatar`, `password`, `status`, `del_flag`, `login_ip`, `login_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (48, 100, 'jiaolian', 'jiaolian', '00', '', '', '0', '', '$2a$10$Cy0VLF1Ccxx9Pr1tTffI5eXjuP8URZcgW.fxDn3uQi5rPwNAiNWvG', '0', '0', '127.0.0.1', '2023-04-25 19:16:29', 'admin', '2023-04-25 17:18:30', '', '2023-04-25 19:16:29', NULL);
INSERT INTO `sys_user` (`user_id`, `dept_id`, `user_name`, `nick_name`, `user_type`, `email`, `phonenumber`, `sex`, `avatar`, `password`, `status`, `del_flag`, `login_ip`, `login_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (49, 100, 'huiyuan', 'huiyuan', '00', '', '', '0', '', '$2a$10$Dyp1OBgS4/pOf3BncxmomugykLM/V9xRAgAipRn/kzjoqNr6owAcy', '0', '0', '127.0.0.1', '2023-04-26 09:20:53', 'admin', '2023-04-25 19:21:38', '', '2023-04-26 09:20:52', NULL);
INSERT INTO `sys_user` (`user_id`, `dept_id`, `user_name`, `nick_name`, `user_type`, `email`, `phonenumber`, `sex`, `avatar`, `password`, `status`, `del_flag`, `login_ip`, `login_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (50, 100, 'huiyuan2', 'huiyuan2', '00', '', '', '0', '', '$2a$10$3fqxA/M3Z9JZxaQXG3a1.e9IGig8MQPQAR9IHiVZrFZJ9cg/i4x7.', '0', '0', '127.0.0.1', '2023-04-27 11:31:43', 'admin', '2023-04-27 11:24:37', '', '2023-04-27 11:31:43', NULL);
INSERT INTO `sys_user` (`user_id`, `dept_id`, `user_name`, `nick_name`, `user_type`, `email`, `phonenumber`, `sex`, `avatar`, `password`, `status`, `del_flag`, `login_ip`, `login_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (51, 100, 'jiaolian2', 'jiaolian2', '00', '', '', '0', '', '$2a$10$SPu45reve9ENE57mqxJqkO.JMFMQn/TidMY4GOwLBsiD0BEvTgHi6', '0', '0', '127.0.0.1', '2023-04-27 11:27:01', 'admin', '2023-04-27 11:26:35', '', '2023-04-27 11:27:01', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES (1, 1);
INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES (5, 6);
INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES (7, 11);
INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES (8, 11);
INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES (12, 13);
INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES (14, 1);
INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES (15, 15);
INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES (16, 2);
INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES (118, 12);
INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES (119, 12);
INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES (120, 11);
INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES (121, 12);
COMMIT;

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_role` (`user_id`, `role_id`) VALUES (1, 1);
INSERT INTO `sys_user_role` (`user_id`, `role_id`) VALUES (48, 101);
INSERT INTO `sys_user_role` (`user_id`, `role_id`) VALUES (49, 2);
INSERT INTO `sys_user_role` (`user_id`, `role_id`) VALUES (50, 2);
INSERT INTO `sys_user_role` (`user_id`, `role_id`) VALUES (51, 101);
COMMIT;

-- ----------------------------
-- Table structure for tb_address
-- ----------------------------
DROP TABLE IF EXISTS `tb_address`;
CREATE TABLE `tb_address` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '用户名',
  `delname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '姓名',
  `telephone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '联系手机',
  `address` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '地址',
  `user_id` int DEFAULT NULL COMMENT '用户id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  KEY `addid` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_address
-- ----------------------------
BEGIN;
INSERT INTO `tb_address` (`id`, `username`, `delname`, `telephone`, `address`, `user_id`, `create_time`) VALUES (5, '', 'xjncj', '12121', 'cdjncjdncd', NULL, '2023-04-05 15:20:54');
INSERT INTO `tb_address` (`id`, `username`, `delname`, `telephone`, `address`, `user_id`, `create_time`) VALUES (7, '', 'cfndj', 'cdnj', 'cdnj', NULL, '2023-04-05 15:22:00');
INSERT INTO `tb_address` (`id`, `username`, `delname`, `telephone`, `address`, `user_id`, `create_time`) VALUES (8, '', 'dcdc', 'cdcd', 'cdcd', NULL, '2023-04-05 15:22:23');
INSERT INTO `tb_address` (`id`, `username`, `delname`, `telephone`, `address`, `user_id`, `create_time`) VALUES (9, '', 'cdcd', 'cdcd', 'cddcdcd', NULL, '2023-04-05 15:22:39');
INSERT INTO `tb_address` (`id`, `username`, `delname`, `telephone`, `address`, `user_id`, `create_time`) VALUES (10, '', '赵国顺', '1399392', '深圳', NULL, '2023-04-05 18:19:44');
INSERT INTO `tb_address` (`id`, `username`, `delname`, `telephone`, `address`, `user_id`, `create_time`) VALUES (11, '', 'd f v g b', 'cdcd', 'cdcd', NULL, '2023-04-05 18:20:00');
INSERT INTO `tb_address` (`id`, `username`, `delname`, `telephone`, `address`, `user_id`, `create_time`) VALUES (12, '', '招果树', '232', '差点时间才拿到手', 46, '2023-04-05 18:22:11');
COMMIT;

-- ----------------------------
-- Table structure for tb_card
-- ----------------------------
DROP TABLE IF EXISTS `tb_card`;
CREATE TABLE `tb_card` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int DEFAULT NULL COMMENT '用户id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `address` varchar(255) DEFAULT NULL COMMENT '打卡地点',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='打卡表';

-- ----------------------------
-- Records of tb_card
-- ----------------------------
BEGIN;
INSERT INTO `tb_card` (`id`, `user_id`, `create_time`, `address`) VALUES (1, 1, '2023-04-25 16:57:58', '山东菏泽曹县');
INSERT INTO `tb_card` (`id`, `user_id`, `create_time`, `address`) VALUES (2, 49, '2023-04-26 09:27:48', '深圳');
INSERT INTO `tb_card` (`id`, `user_id`, `create_time`, `address`) VALUES (3, 50, '2023-04-27 11:26:03', '湖南省长沙市');
COMMIT;

-- ----------------------------
-- Table structure for tb_chat
-- ----------------------------
DROP TABLE IF EXISTS `tb_chat`;
CREATE TABLE `tb_chat` (
  `id` int NOT NULL COMMENT 'id',
  `content` varchar(255) DEFAULT NULL COMMENT '内容',
  `user_id` int DEFAULT NULL COMMENT '发送人',
  `review_id` int DEFAULT NULL COMMENT '接收人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `is_read` int DEFAULT '0' COMMENT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of tb_chat
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tb_commodity
-- ----------------------------
DROP TABLE IF EXISTS `tb_commodity`;
CREATE TABLE `tb_commodity` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '姓名',
  `price` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '价格',
  `number` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '数量',
  `type` varchar(22) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '类型',
  `cover` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '图片',
  `details` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '详情',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `type_id` int DEFAULT NULL COMMENT '分类id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='商品表';

-- ----------------------------
-- Records of tb_commodity
-- ----------------------------
BEGIN;
INSERT INTO `tb_commodity` (`id`, `name`, `price`, `number`, `type`, `cover`, `details`, `create_time`, `type_id`) VALUES (1, '小米12pro', '4699', '100', 'Good', 'http://8.130.53.22:9092/files/4cc0c10960264f00a8a15cbe13cb8d36', '全新骁龙8 | 2K AMOLED', NULL, NULL);
INSERT INTO `tb_commodity` (`id`, `name`, `price`, `number`, `type`, `cover`, `details`, `create_time`, `type_id`) VALUES (2, '小米12', '3999', '122', 'Good', 'http://8.130.53.22/files/3cf66117e0fa4d8599785ae89ac8a12a', '全新骁龙8 | 5000万主摄', NULL, NULL);
INSERT INTO `tb_commodity` (`id`, `name`, `price`, `number`, `type`, `cover`, `details`, `create_time`, `type_id`) VALUES (3, '小米12X', '3199', '21', 'Good', 'http://8.130.53.22/files/48b624aae3f949a6b7a6fe4417081658', '骁龙870 | 5000万主摄', NULL, NULL);
INSERT INTO `tb_commodity` (`id`, `name`, `price`, `number`, `type`, `cover`, `details`, `create_time`, `type_id`) VALUES (4, '红米note11', '1799', '2121', 'Good', 'http://8.130.53.22/files/c941409d63ac4828b18d04e62c7fb0ca', '三星AMOLED高刷屏', NULL, NULL);
INSERT INTO `tb_commodity` (`id`, `name`, `price`, `number`, `type`, `cover`, `details`, `create_time`, `type_id`) VALUES (6, 'mi12pro', NULL, NULL, 'Scan', 'http://8.130.53.22:9092/files/395c2228a945481bae9e946bfcd3d2ab', '21', NULL, NULL);
INSERT INTO `tb_commodity` (`id`, `name`, `price`, `number`, `type`, `cover`, `details`, `create_time`, `type_id`) VALUES (8, 'mipad', NULL, NULL, 'Scan', 'http://8.130.53.22:9092/files/4cc0c10960264f00a8a15cbe13cb8d36', NULL, NULL, NULL);
INSERT INTO `tb_commodity` (`id`, `name`, `price`, `number`, `type`, `cover`, `details`, `create_time`, `type_id`) VALUES (12, '小米11青春版', '1999', '321', 'Good', 'http://8.130.53.22/files/2f71875bca414144b4a5fc872c4fde8f', '6400万主摄像头  | 超线性立体声', NULL, NULL);
INSERT INTO `tb_commodity` (`id`, `name`, `price`, `number`, `type`, `cover`, `details`, `create_time`, `type_id`) VALUES (13, '红米K50', '2199', '21112', 'Good', 'http://8.130.53.22/files/86a3b5ea41074d9fb843f704e0aed0e8', '2K直屏的狠旗舰', NULL, NULL);
INSERT INTO `tb_commodity` (`id`, `name`, `price`, `number`, `type`, `cover`, `details`, `create_time`, `type_id`) VALUES (14, '红米K50pro', '2499', '21223', 'Good', 'http://8.130.53.22/files/a2a269fa9358407581b32b1586973af5', '2K直屏的狠旗舰', NULL, NULL);
INSERT INTO `tb_commodity` (`id`, `name`, `price`, `number`, `type`, `cover`, `details`, `create_time`, `type_id`) VALUES (15, '红米K50电竞版', '3299', '1212', 'Good', 'http://8.130.53.22/files/ec1b3631c7864ceebd3eea57dc55488b', '全线拉满的冷旗舰', NULL, NULL);
INSERT INTO `tb_commodity` (`id`, `name`, `price`, `number`, `type`, `cover`, `details`, `create_time`, `type_id`) VALUES (24, 'cndmn', '12121', '1212', NULL, 'cdc', 'cdc', '2023-04-05 13:55:28', 1);
INSERT INTO `tb_commodity` (`id`, `name`, `price`, `number`, `type`, `cover`, `details`, `create_time`, `type_id`) VALUES (25, 'mc,', '232', '232', NULL, 'http://localhost:8083/profile/avatar/2023/04/05/b5eb2d36-a483-456c-82fe-016e826fb68b.jpeg', '2323', '2023-04-05 13:58:20', 1);
COMMIT;

-- ----------------------------
-- Table structure for tb_course
-- ----------------------------
DROP TABLE IF EXISTS `tb_course`;
CREATE TABLE `tb_course` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(255) DEFAULT NULL COMMENT '课程名称',
  `user_id` bigint DEFAULT NULL COMMENT '创建人',
  `status` tinyint DEFAULT '0' COMMENT '审核状态0待审核；1审核成功；2审核失败',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='课程表';

-- ----------------------------
-- Records of tb_course
-- ----------------------------
BEGIN;
INSERT INTO `tb_course` (`id`, `title`, `user_id`, `status`, `create_time`) VALUES (1, '马课程', 1, 0, '2023-04-25 11:48:50');
COMMIT;

-- ----------------------------
-- Table structure for tb_course_select
-- ----------------------------
DROP TABLE IF EXISTS `tb_course_select`;
CREATE TABLE `tb_course_select` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int DEFAULT NULL COMMENT '用户id',
  `course_id` int DEFAULT NULL COMMENT '课程id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='课程选择';

-- ----------------------------
-- Records of tb_course_select
-- ----------------------------
BEGIN;
INSERT INTO `tb_course_select` (`id`, `user_id`, `course_id`, `create_time`) VALUES (1, 1, 1, '2023-04-25 14:14:22');
INSERT INTO `tb_course_select` (`id`, `user_id`, `course_id`, `create_time`) VALUES (2, 1, 1, '2023-04-25 16:46:10');
INSERT INTO `tb_course_select` (`id`, `user_id`, `course_id`, `create_time`) VALUES (3, 49, 1, '2023-04-26 09:24:21');
INSERT INTO `tb_course_select` (`id`, `user_id`, `course_id`, `create_time`) VALUES (4, 50, 1, '2023-04-27 11:25:22');
COMMIT;

-- ----------------------------
-- Table structure for tb_employee
-- ----------------------------
DROP TABLE IF EXISTS `tb_employee`;
CREATE TABLE `tb_employee` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `phone` varchar(255) DEFAULT NULL COMMENT '电话',
  `age` int DEFAULT NULL COMMENT '年龄',
  `post` varchar(255) DEFAULT NULL COMMENT '职位',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='员工信息表';

-- ----------------------------
-- Records of tb_employee
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tb_evaluate
-- ----------------------------
DROP TABLE IF EXISTS `tb_evaluate`;
CREATE TABLE `tb_evaluate` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `content` text COMMENT '评价',
  `type` int DEFAULT NULL COMMENT '1课程评价 2教练评价',
  `user_id` int DEFAULT NULL COMMENT '评价人',
  `create_time` datetime DEFAULT NULL COMMENT '创建人',
  `common_id` int DEFAULT NULL COMMENT '课程或教练id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='评价';

-- ----------------------------
-- Records of tb_evaluate
-- ----------------------------
BEGIN;
INSERT INTO `tb_evaluate` (`id`, `content`, `type`, `user_id`, `create_time`, `common_id`) VALUES (4, '折课很不错', 1, NULL, '2023-04-25 17:14:58', 1);
INSERT INTO `tb_evaluate` (`id`, `content`, `type`, `user_id`, `create_time`, `common_id`) VALUES (5, '教练人很好', 2, NULL, '2023-04-25 17:15:09', 1);
INSERT INTO `tb_evaluate` (`id`, `content`, `type`, `user_id`, `create_time`, `common_id`) VALUES (6, 'lll', 2, 49, '2023-04-25 19:38:30', 3);
INSERT INTO `tb_evaluate` (`id`, `content`, `type`, `user_id`, `create_time`, `common_id`) VALUES (7, 'hao', 1, 1, '2023-04-27 11:23:37', 1);
INSERT INTO `tb_evaluate` (`id`, `content`, `type`, `user_id`, `create_time`, `common_id`) VALUES (8, '好', 1, 50, '2023-04-27 11:25:30', 1);
INSERT INTO `tb_evaluate` (`id`, `content`, `type`, `user_id`, `create_time`, `common_id`) VALUES (9, '教练好', 2, 50, '2023-04-27 11:25:41', 3);
COMMIT;

-- ----------------------------
-- Table structure for tb_guide_project
-- ----------------------------
DROP TABLE IF EXISTS `tb_guide_project`;
CREATE TABLE `tb_guide_project` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) DEFAULT NULL COMMENT '项目名称',
  `summary` varchar(255) DEFAULT NULL COMMENT '项目简介',
  `user_id` int DEFAULT NULL COMMENT '用户',
  `review` int DEFAULT '0' COMMENT '审核；0待审核；1审核通过；2审核失败',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='指导项目';

-- ----------------------------
-- Records of tb_guide_project
-- ----------------------------
BEGIN;
INSERT INTO `tb_guide_project` (`id`, `name`, `summary`, `user_id`, `review`, `create_time`) VALUES (1, '好项目', '到家家户户', 1, 2, '2023-04-25 09:14:08');
INSERT INTO `tb_guide_project` (`id`, `name`, `summary`, `user_id`, `review`, `create_time`) VALUES (2, '为我', '2wew', 1, 1, '2023-04-25 09:26:47');
INSERT INTO `tb_guide_project` (`id`, `name`, `summary`, `user_id`, `review`, `create_time`) VALUES (3, 'dd', '121', 48, 2, '2023-04-25 19:19:46');
INSERT INTO `tb_guide_project` (`id`, `name`, `summary`, `user_id`, `review`, `create_time`) VALUES (4, '单车', 'ddd', 51, 0, '2023-04-27 11:27:26');
COMMIT;

-- ----------------------------
-- Table structure for tb_jiaolian
-- ----------------------------
DROP TABLE IF EXISTS `tb_jiaolian`;
CREATE TABLE `tb_jiaolian` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `age` int DEFAULT NULL COMMENT '年龄',
  `phone` varchar(255) DEFAULT NULL COMMENT '电话',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `course_name` varchar(255) DEFAULT NULL COMMENT '课程',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='教练管理';

-- ----------------------------
-- Records of tb_jiaolian
-- ----------------------------
BEGIN;
INSERT INTO `tb_jiaolian` (`id`, `name`, `age`, `phone`, `create_time`, `course_name`) VALUES (3, '的打开毛孔', 121, '192912', '2023-04-25 19:07:53', '川端康成门口');
COMMIT;

-- ----------------------------
-- Table structure for tb_jl_select
-- ----------------------------
DROP TABLE IF EXISTS `tb_jl_select`;
CREATE TABLE `tb_jl_select` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int DEFAULT NULL COMMENT '用户',
  `jl_id` int DEFAULT NULL COMMENT '教练',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of tb_jl_select
-- ----------------------------
BEGIN;
INSERT INTO `tb_jl_select` (`id`, `user_id`, `jl_id`, `create_time`) VALUES (1, 1, 1, '2023-04-25 16:38:51');
INSERT INTO `tb_jl_select` (`id`, `user_id`, `jl_id`, `create_time`) VALUES (2, 49, 3, '2023-04-25 19:44:41');
COMMIT;

-- ----------------------------
-- Table structure for tb_journalism
-- ----------------------------
DROP TABLE IF EXISTS `tb_journalism`;
CREATE TABLE `tb_journalism` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `content` text COMMENT '内容',
  `img_url` varchar(255) DEFAULT NULL COMMENT '封面',
  `summary` varchar(255) DEFAULT NULL COMMENT '简介',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='新闻';

-- ----------------------------
-- Records of tb_journalism
-- ----------------------------
BEGIN;
INSERT INTO `tb_journalism` (`id`, `title`, `content`, `img_url`, `summary`, `create_time`) VALUES (1, 'ce', '<p>999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999</p>', 'http://localhost:8083/profile/avatar/2023/04/02/bde53e32-02a1-41be-b6da-63c6512c226c.jpg', 'dede', '2023-04-02 16:09:15');
COMMIT;

-- ----------------------------
-- Table structure for tb_member
-- ----------------------------
DROP TABLE IF EXISTS `tb_member`;
CREATE TABLE `tb_member` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int DEFAULT NULL COMMENT '用户id',
  `grade` varchar(255) DEFAULT NULL COMMENT '会员卡等级',
  `expire_time` datetime DEFAULT NULL COMMENT '到期时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `card` varchar(255) DEFAULT NULL COMMENT '会员卡',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='会员表';

-- ----------------------------
-- Records of tb_member
-- ----------------------------
BEGIN;
INSERT INTO `tb_member` (`id`, `user_id`, `grade`, `expire_time`, `create_time`, `card`) VALUES (2, 37, '1', '2023-04-24 00:00:00', '2023-04-24 15:30:51', '年卡');
INSERT INTO `tb_member` (`id`, `user_id`, `grade`, `expire_time`, `create_time`, `card`) VALUES (3, 1, 'ss', '2023-04-16 00:00:00', '2023-04-26 19:12:36', '年卡');
COMMIT;

-- ----------------------------
-- Table structure for tb_oder
-- ----------------------------
DROP TABLE IF EXISTS `tb_oder`;
CREATE TABLE `tb_oder` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `good_name` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `count` int DEFAULT NULL COMMENT '数量',
  `price` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `user_id` int DEFAULT NULL COMMENT '用户id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `order_num` varchar(255) DEFAULT NULL COMMENT '订单号',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of tb_oder
-- ----------------------------
BEGIN;
INSERT INTO `tb_oder` (`id`, `good_name`, `count`, `price`, `user_id`, `create_time`, `order_num`, `address`) VALUES (1, NULL, 1, 232.00, NULL, '2023-04-05 14:56:55', NULL, NULL);
INSERT INTO `tb_oder` (`id`, `good_name`, `count`, `price`, `user_id`, `create_time`, `order_num`, `address`) VALUES (2, NULL, 1, 232.00, NULL, '2023-04-05 14:58:30', NULL, NULL);
INSERT INTO `tb_oder` (`id`, `good_name`, `count`, `price`, `user_id`, `create_time`, `order_num`, `address`) VALUES (3, NULL, 1, 232.00, NULL, '2023-04-05 14:59:20', NULL, NULL);
INSERT INTO `tb_oder` (`id`, `good_name`, `count`, `price`, `user_id`, `create_time`, `order_num`, `address`) VALUES (4, NULL, 1, 232.00, NULL, '2023-04-05 14:59:43', NULL, NULL);
INSERT INTO `tb_oder` (`id`, `good_name`, `count`, `price`, `user_id`, `create_time`, `order_num`, `address`) VALUES (5, 'mc, undefined undefined', 1, 232.00, NULL, '2023-04-05 15:00:32', NULL, NULL);
INSERT INTO `tb_oder` (`id`, `good_name`, `count`, `price`, `user_id`, `create_time`, `order_num`, `address`) VALUES (6, 'mc, undefined undefined', 1, 232.00, NULL, '2023-04-05 15:01:23', NULL, NULL);
INSERT INTO `tb_oder` (`id`, `good_name`, `count`, `price`, `user_id`, `create_time`, `order_num`, `address`) VALUES (7, 'mc, undefined undefined', 1, 232.00, 1, '2023-04-05 15:02:19', NULL, NULL);
INSERT INTO `tb_oder` (`id`, `good_name`, `count`, `price`, `user_id`, `create_time`, `order_num`, `address`) VALUES (8, 'mc, undefined undefined', 1, 232.00, 1, '2023-04-05 15:02:21', NULL, NULL);
INSERT INTO `tb_oder` (`id`, `good_name`, `count`, `price`, `user_id`, `create_time`, `order_num`, `address`) VALUES (9, 'mc, undefined undefined', 1, 232.00, 1, '2023-04-05 15:14:55', '3d4fa4a3-ab21-4218-8139-c16490f0111b', NULL);
INSERT INTO `tb_oder` (`id`, `good_name`, `count`, `price`, `user_id`, `create_time`, `order_num`, `address`) VALUES (10, 'mc, undefined undefined', 1, 232.00, 1, '2023-04-05 15:15:12', '27453f93-2d48-4471-95c8-65ea2dffad48', 'qesd dsds dsds');
INSERT INTO `tb_oder` (`id`, `good_name`, `count`, `price`, `user_id`, `create_time`, `order_num`, `address`) VALUES (11, 'mc, undefined undefined', 1, 232.00, NULL, '2023-04-05 18:09:21', 'fa87debb-205f-4449-9adf-45ce33631030', 'cdcd cdcd cddcdcd');
INSERT INTO `tb_oder` (`id`, `good_name`, `count`, `price`, `user_id`, `create_time`, `order_num`, `address`) VALUES (12, 'mc, undefined undefined', 1, 232.00, NULL, '2023-04-05 18:09:24', '93c1e02f-c2e2-4c4a-94f6-635e8cc59205', 'cdcd cdcd cddcdcd');
INSERT INTO `tb_oder` (`id`, `good_name`, `count`, `price`, `user_id`, `create_time`, `order_num`, `address`) VALUES (13, 'mc, undefined undefined', 1, 232.00, NULL, '2023-04-05 18:09:29', '7fc20c31-f0a4-4589-ae64-822adf7a51c6', 'cdcd cdcd cddcdcd');
INSERT INTO `tb_oder` (`id`, `good_name`, `count`, `price`, `user_id`, `create_time`, `order_num`, `address`) VALUES (14, 'mi12pro undefined undefined', 1, NULL, 46, '2023-04-05 18:13:48', '5c541fd1-c73a-46ae-8d08-f7a632062390', NULL);
INSERT INTO `tb_oder` (`id`, `good_name`, `count`, `price`, `user_id`, `create_time`, `order_num`, `address`) VALUES (15, 'mc, undefined undefined', 3, 232.00, 46, '2023-04-05 18:22:16', '15675118-3834-4387-b8d1-34d06c4834e8', '招果树 232 差点时间才拿到手');
INSERT INTO `tb_oder` (`id`, `good_name`, `count`, `price`, `user_id`, `create_time`, `order_num`, `address`) VALUES (16, 'mc, undefined undefined', 1, 232.00, 46, '2023-04-05 18:28:02', '0e63380d-24ce-40c9-b958-80f5a831e825', NULL);
INSERT INTO `tb_oder` (`id`, `good_name`, `count`, `price`, `user_id`, `create_time`, `order_num`, `address`) VALUES (17, '小米12pro 8GB+128GB 紫色', 1, 4699.00, 1, '2023-04-09 23:06:48', '124cde66-4ddd-4d1d-b012-3b604fc662b8', 'xjncj 12121 cdjncjdncd');
INSERT INTO `tb_oder` (`id`, `good_name`, `count`, `price`, `user_id`, `create_time`, `order_num`, `address`) VALUES (18, 'win11 undefined undefined', 1, NULL, 1, '2023-04-09 23:08:28', 'de919564-b04d-4cea-aa7d-b8043c368d87', 'xjncj 12121 cdjncjdncd');
COMMIT;

-- ----------------------------
-- Table structure for tb_orders
-- ----------------------------
DROP TABLE IF EXISTS `tb_orders`;
CREATE TABLE `tb_orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `order_number` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `id` int NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `count` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `cover` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `dates` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `pay_state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `deliver_state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `deliver_number` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `address` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`order_id`) USING BTREE,
  KEY `idorder` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_orders
-- ----------------------------
BEGIN;
INSERT INTO `tb_orders` (`order_id`, `order_number`, `id`, `username`, `name`, `price`, `count`, `cover`, `dates`, `pay_state`, `deliver_state`, `deliver_number`, `address`) VALUES (7, '1164439867435746271', 1, '夏天', '小米12X 8GB+128GB 紫色', '3199.00', '1', 'http://localhost:9092/files/48b624aae3f949a6b7a6fe4417081658', '2022年02月09日 17:24:34', NULL, '已发货', '327513743213', '天津市河西区天津科技大学');
INSERT INTO `tb_orders` (`order_id`, `order_number`, `id`, `username`, `name`, `price`, `count`, `cover`, `dates`, `pay_state`, `deliver_state`, `deliver_number`, `address`) VALUES (20, '11644550972476470', 1, '夏天', '小米12X 8GB+128GB 紫色', '3199.00', '1', 'http://localhost:9092/files/48b624aae3f949a6b7a6fe4417081658', '2022年02月11日 11:42:52', NULL, '已确认', NULL, '夏天 1882204679 青岛市黄岛区丁松路12号');
INSERT INTO `tb_orders` (`order_id`, `order_number`, `id`, `username`, `name`, `price`, `count`, `cover`, `dates`, `pay_state`, `deliver_state`, `deliver_number`, `address`) VALUES (22, '2164456528071963359', 2, 'duoduo', '小米11青春版 8GB+128GB 紫色', '1999.00', '1', 'http://localhost:9092/files/2f71875bca414144b4a5fc872c4fde8f', '2022年02月11日 15:41:20', NULL, '已确认', NULL, '夏天 18822067367 天津市河西区天津科技大学');
INSERT INTO `tb_orders` (`order_id`, `order_number`, `id`, `username`, `name`, `price`, `count`, `cover`, `dates`, `pay_state`, `deliver_state`, `deliver_number`, `address`) VALUES (29, '1164542133360548543', 1, '夏天', '小米12X 8GB+128GB 原野绿', '3199.00', '1', 'http://localhost:9092/files/48b624aae3f949a6b7a6fe4417081658', '2022年02月21日 13:28:53', NULL, '已发货', '12431264121221', '夏天 1882204679 青岛市黄岛区丁松路12号');
INSERT INTO `tb_orders` (`order_id`, `order_number`, `id`, `username`, `name`, `price`, `count`, `cover`, `dates`, `pay_state`, `deliver_state`, `deliver_number`, `address`) VALUES (30, '1164630400157559289', 1, '夏天', '小米12X 8GB+128GB 原野绿', '3199.00', '1', 'http://localhost:9092/files/48b624aae3f949a6b7a6fe4417081658', '2022年03月03日 18:40:01', NULL, '未发货', NULL, '陈处 18822049633 陕西省西安市未央区');
INSERT INTO `tb_orders` (`order_id`, `order_number`, `id`, `username`, `name`, `price`, `count`, `cover`, `dates`, `pay_state`, `deliver_state`, `deliver_number`, `address`) VALUES (31, '1164916260027326534', 1, '夏天', '小米12X 8GB+128GB 原野绿', '3199.00', '1', 'http://localhost:9092/files/48b624aae3f949a6b7a6fe4417081658', '2022年04月05日 20:43:20', NULL, '未发货', NULL, '陈处 18822049633 陕西省西安市未央区');
INSERT INTO `tb_orders` (`order_id`, `order_number`, `id`, `username`, `name`, `price`, `count`, `cover`, `dates`, `pay_state`, `deliver_state`, `deliver_number`, `address`) VALUES (32, '1165154498010925632', 1, '夏天', '小米12X 8GB+128GB 原野绿', '3199.00', '1', 'http://localhost:9092/files/48b624aae3f949a6b7a6fe4417081658', '2022年05月03日 10:29:40', NULL, '未发货', NULL, '夏天 1882204679 青岛市黄岛区丁松路12号');
COMMIT;

-- ----------------------------
-- Table structure for tb_project
-- ----------------------------
DROP TABLE IF EXISTS `tb_project`;
CREATE TABLE `tb_project` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) DEFAULT NULL COMMENT '项目名称',
  `summary` varchar(255) DEFAULT NULL COMMENT '项目简介',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='健身项目表';

-- ----------------------------
-- Records of tb_project
-- ----------------------------
BEGIN;
INSERT INTO `tb_project` (`id`, `name`, `summary`, `create_time`) VALUES (1, '摩拜单车', '放音乐骑单车', '2023-04-24 17:15:14');
COMMIT;

-- ----------------------------
-- Table structure for tb_qicai
-- ----------------------------
DROP TABLE IF EXISTS `tb_qicai`;
CREATE TABLE `tb_qicai` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) DEFAULT NULL COMMENT '器材名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='器材表';

-- ----------------------------
-- Records of tb_qicai
-- ----------------------------
BEGIN;
INSERT INTO `tb_qicai` (`id`, `name`, `create_time`) VALUES (1, '跑步机', '2023-04-25 16:59:05');
COMMIT;

-- ----------------------------
-- Table structure for tb_shop
-- ----------------------------
DROP TABLE IF EXISTS `tb_shop`;
CREATE TABLE `tb_shop` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) DEFAULT NULL COMMENT '店铺名称',
  `summary` varchar(255) DEFAULT NULL COMMENT '店铺介绍',
  `address` varchar(255) DEFAULT NULL COMMENT '店铺地址',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='店面信息';

-- ----------------------------
-- Records of tb_shop
-- ----------------------------
BEGIN;
INSERT INTO `tb_shop` (`id`, `name`, `summary`, `address`, `create_time`) VALUES (1, '健身房', '超大健身房', '深圳市罗湖区翠竹街道2301', '2023-04-26 19:08:22');
COMMIT;

-- ----------------------------
-- Table structure for tb_type
-- ----------------------------
DROP TABLE IF EXISTS `tb_type`;
CREATE TABLE `tb_type` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) DEFAULT NULL COMMENT '分类名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of tb_type
-- ----------------------------
BEGIN;
INSERT INTO `tb_type` (`id`, `name`, `create_time`) VALUES (1, '帽子', '2023-04-05 13:47:58');
INSERT INTO `tb_type` (`id`, `name`, `create_time`) VALUES (2, '鞋子', '2023-04-05 13:48:04');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
