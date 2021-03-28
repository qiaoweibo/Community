/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50535
Source Host           : localhost:3306
Source Database       : qwb-community

Target Server Type    : MYSQL
Target Server Version : 50535
File Encoding         : 65001

Date: 2019-04-27 10:49:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for qwb_complaint
-- ----------------------------
DROP TABLE IF EXISTS `qwb_complaint`;
CREATE TABLE `qwb_complaint` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT '用户id',
  `creation_time` datetime DEFAULT NULL COMMENT '创建时间',
  `content` varchar(255) DEFAULT NULL COMMENT '投诉内容',
  `complete_time` datetime DEFAULT NULL COMMENT '完成时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '投诉处理结果',
  `state` int(11) DEFAULT NULL COMMENT '状态:0.未完成，1，完成。2.无法完成',
  `room` varchar(255) DEFAULT NULL COMMENT '投诉人的房间号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='投訴表';

-- ----------------------------
-- Records of qwb_complaint
-- ----------------------------
INSERT INTO `qwb_complaint` VALUES ('4', '乔伟博', '2019-04-27 09:36:46', '楼上的住户太吵', '2019-04-27 09:39:07', '已经向对方反应', '1', '1102');
INSERT INTO `qwb_complaint` VALUES ('5', '乔伟博', '2019-04-27 09:39:37', '111', '2019-04-27 09:45:53', '111', '1', '1102');
INSERT INTO `qwb_complaint` VALUES ('6', '乔伟博', '2019-04-27 09:50:05', '小区门卫态度恶劣', null, null, '0', '1102');

-- ----------------------------
-- Table structure for qwb_cost
-- ----------------------------
DROP TABLE IF EXISTS `qwb_cost`;
CREATE TABLE `qwb_cost` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT '用户id',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `electricity_costs` double DEFAULT NULL COMMENT '电费',
  `water_costs` double DEFAULT NULL COMMENT '水费',
  `gas_costs` double DEFAULT NULL COMMENT '燃气费',
  `property_costs` double DEFAULT NULL COMMENT '物业费',
  `payment_time` datetime DEFAULT NULL COMMENT '缴费时间',
  `state` int(11) DEFAULT NULL COMMENT '处理状态',
  `room` varchar(255) DEFAULT NULL COMMENT '房间号',
  `check` int(11) DEFAULT NULL COMMENT '查看  0：已查看;  1：未查看',
  `total` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='費用表';

-- ----------------------------
-- Records of qwb_cost
-- ----------------------------
INSERT INTO `qwb_cost` VALUES ('25', '乔伟博', null, null, null, null, null, '2019-04-27 09:06:28', '1', '1102', null, null);
INSERT INTO `qwb_cost` VALUES ('26', '乔伟博', null, null, null, null, null, '2019-04-27 09:06:31', '1', '1102', null, null);
INSERT INTO `qwb_cost` VALUES ('27', '乔伟博', '2019-04-26 22:04:02', null, null, null, null, '2019-04-26 22:05:07', '1', '1102', null, '100');
INSERT INTO `qwb_cost` VALUES ('34', '乔伟博', '2019-04-27 09:19:19', '10', '20', '30', '40', null, '0', '1102', null, '100');
INSERT INTO `qwb_cost` VALUES ('35', '张三', '2019-04-27 09:19:19', '20', '10', '40', '30', null, '0', '3301', null, '100');

-- ----------------------------
-- Table structure for qwb_exchange
-- ----------------------------
DROP TABLE IF EXISTS `qwb_exchange`;
CREATE TABLE `qwb_exchange` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT '用户id',
  `creation_time` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `content` varchar(255) NOT NULL COMMENT '交流内容',
  `state` int(11) DEFAULT NULL COMMENT '状态:0.未完成，1，完成。2.无法完成',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='社區交流表';

-- ----------------------------
-- Records of qwb_exchange
-- ----------------------------
INSERT INTO `qwb_exchange` VALUES ('1', '1', '2019', '請問', '0');

-- ----------------------------
-- Table structure for qwb_notice
-- ----------------------------
DROP TABLE IF EXISTS `qwb_notice`;
CREATE TABLE `qwb_notice` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT '公告发布者',
  `creation_time` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `content` varchar(255) DEFAULT NULL COMMENT '内容',
  `state` int(11) DEFAULT NULL COMMENT '状态:0.未完成，1，完成。2.无法完成',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2002 DEFAULT CHARSET=utf8 COMMENT='小區公告表';

-- ----------------------------
-- Records of qwb_notice
-- ----------------------------
INSERT INTO `qwb_notice` VALUES ('1', null, '2010', '今天下雨', null);
INSERT INTO `qwb_notice` VALUES ('2', null, '2011', '今天打雷', null);
INSERT INTO `qwb_notice` VALUES ('1002', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1003', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1004', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1005', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1006', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1007', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1008', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1009', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1010', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1011', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1012', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1013', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1014', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1015', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1016', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1017', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1018', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1019', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1020', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1021', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1022', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1023', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1024', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1025', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1026', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1027', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1028', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1029', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1030', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1031', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1032', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1033', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1034', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1035', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1036', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1037', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1038', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1039', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1040', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1041', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1042', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1043', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1044', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1045', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1046', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1047', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1048', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1049', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1050', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1051', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1052', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1053', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1054', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1055', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1056', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1057', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1058', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1059', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1060', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1061', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1062', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1063', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1064', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1065', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1066', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1067', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1068', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1069', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1070', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1071', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1072', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1073', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1074', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1075', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1076', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1077', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1078', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1079', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1080', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1081', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1082', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1083', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1084', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1085', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1086', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1087', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1088', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1089', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1090', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1091', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1092', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1093', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1094', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1095', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1096', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1097', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1098', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1099', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1100', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1101', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1102', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1103', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1104', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1105', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1106', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1107', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1108', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1109', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1110', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1111', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1112', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1113', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1114', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1115', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1116', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1117', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1118', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1119', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1120', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1121', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1122', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1123', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1124', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1125', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1126', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1127', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1128', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1129', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1130', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1131', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1132', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1133', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1134', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1135', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1136', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1137', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1138', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1139', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1140', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1141', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1142', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1143', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1144', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1145', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1146', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1147', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1148', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1149', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1150', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1151', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1152', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1153', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1154', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1155', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1156', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1157', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1158', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1159', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1160', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1161', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1162', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1163', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1164', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1165', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1166', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1167', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1168', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1169', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1170', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1171', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1172', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1173', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1174', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1175', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1176', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1177', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1178', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1179', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1180', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1181', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1182', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1183', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1184', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1185', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1186', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1187', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1188', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1189', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1190', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1191', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1192', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1193', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1194', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1195', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1196', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1197', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1198', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1199', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1200', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1201', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1202', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1203', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1204', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1205', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1206', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1207', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1208', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1209', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1210', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1211', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1212', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1213', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1214', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1215', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1216', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1217', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1218', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1219', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1220', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1221', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1222', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1223', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1224', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1225', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1226', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1227', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1228', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1229', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1230', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1231', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1232', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1233', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1234', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1235', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1236', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1237', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1238', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1239', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1240', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1241', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1242', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1243', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1244', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1245', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1246', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1247', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1248', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1249', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1250', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1251', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1252', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1253', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1254', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1255', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1256', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1257', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1258', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1259', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1260', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1261', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1262', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1263', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1264', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1265', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1266', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1267', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1268', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1269', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1270', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1271', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1272', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1273', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1274', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1275', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1276', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1277', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1278', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1279', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1280', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1281', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1282', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1283', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1284', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1285', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1286', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1287', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1288', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1289', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1290', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1291', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1292', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1293', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1294', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1295', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1296', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1297', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1298', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1299', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1300', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1301', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1302', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1303', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1304', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1305', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1306', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1307', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1308', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1309', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1310', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1311', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1312', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1313', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1314', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1315', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1316', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1317', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1318', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1319', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1320', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1321', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1322', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1323', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1324', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1325', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1326', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1327', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1328', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1329', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1330', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1331', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1332', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1333', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1334', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1335', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1336', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1337', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1338', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1339', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1340', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1341', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1342', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1343', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1344', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1345', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1346', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1347', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1348', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1349', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1350', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1351', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1352', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1353', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1354', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1355', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1356', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1357', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1358', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1359', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1360', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1361', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1362', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1363', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1364', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1365', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1366', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1367', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1368', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1369', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1370', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1371', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1372', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1373', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1374', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1375', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1376', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1377', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1378', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1379', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1380', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1381', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1382', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1383', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1384', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1385', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1386', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1387', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1388', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1389', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1390', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1391', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1392', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1393', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1394', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1395', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1396', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1397', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1398', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1399', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1400', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1401', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1402', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1403', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1404', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1405', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1406', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1407', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1408', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1409', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1410', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1411', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1412', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1413', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1414', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1415', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1416', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1417', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1418', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1419', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1420', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1421', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1422', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1423', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1424', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1425', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1426', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1427', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1428', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1429', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1430', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1431', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1432', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1433', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1434', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1435', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1436', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1437', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1438', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1439', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1440', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1441', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1442', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1443', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1444', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1445', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1446', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1447', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1448', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1449', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1450', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1451', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1452', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1453', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1454', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1455', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1456', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1457', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1458', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1459', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1460', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1461', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1462', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1463', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1464', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1465', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1466', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1467', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1468', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1469', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1470', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1471', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1472', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1473', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1474', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1475', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1476', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1477', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1478', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1479', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1480', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1481', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1482', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1483', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1484', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1485', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1486', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1487', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1488', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1489', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1490', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1491', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1492', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1493', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1494', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1495', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1496', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1497', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1498', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1499', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1500', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1501', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1502', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1503', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1504', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1505', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1506', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1507', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1508', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1509', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1510', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1511', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1512', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1513', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1514', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1515', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1516', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1517', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1518', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1519', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1520', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1521', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1522', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1523', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1524', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1525', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1526', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1527', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1528', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1529', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1530', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1531', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1532', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1533', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1534', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1535', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1536', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1537', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1538', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1539', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1540', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1541', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1542', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1543', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1544', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1545', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1546', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1547', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1548', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1549', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1550', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1551', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1552', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1553', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1554', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1555', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1556', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1557', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1558', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1559', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1560', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1561', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1562', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1563', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1564', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1565', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1566', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1567', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1568', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1569', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1570', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1571', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1572', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1573', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1574', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1575', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1576', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1577', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1578', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1579', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1580', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1581', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1582', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1583', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1584', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1585', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1586', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1587', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1588', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1589', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1590', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1591', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1592', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1593', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1594', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1595', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1596', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1597', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1598', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1599', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1600', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1601', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1602', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1603', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1604', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1605', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1606', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1607', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1608', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1609', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1610', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1611', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1612', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1613', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1614', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1615', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1616', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1617', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1618', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1619', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1620', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1621', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1622', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1623', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1624', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1625', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1626', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1627', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1628', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1629', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1630', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1631', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1632', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1633', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1634', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1635', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1636', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1637', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1638', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1639', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1640', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1641', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1642', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1643', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1644', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1645', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1646', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1647', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1648', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1649', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1650', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1651', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1652', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1653', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1654', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1655', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1656', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1657', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1658', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1659', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1660', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1661', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1662', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1663', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1664', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1665', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1666', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1667', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1668', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1669', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1670', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1671', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1672', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1673', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1674', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1675', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1676', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1677', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1678', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1679', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1680', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1681', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1682', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1683', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1684', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1685', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1686', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1687', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1688', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1689', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1690', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1691', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1692', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1693', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1694', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1695', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1696', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1697', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1698', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1699', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1700', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1701', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1702', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1703', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1704', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1705', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1706', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1707', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1708', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1709', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1710', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1711', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1712', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1713', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1714', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1715', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1716', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1717', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1718', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1719', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1720', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1721', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1722', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1723', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1724', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1725', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1726', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1727', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1728', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1729', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1730', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1731', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1732', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1733', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1734', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1735', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1736', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1737', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1738', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1739', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1740', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1741', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1742', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1743', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1744', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1745', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1746', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1747', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1748', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1749', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1750', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1751', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1752', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1753', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1754', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1755', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1756', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1757', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1758', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1759', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1760', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1761', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1762', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1763', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1764', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1765', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1766', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1767', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1768', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1769', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1770', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1771', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1772', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1773', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1774', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1775', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1776', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1777', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1778', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1779', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1780', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1781', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1782', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1783', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1784', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1785', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1786', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1787', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1788', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1789', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1790', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1791', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1792', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1793', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1794', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1795', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1796', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1797', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1798', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1799', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1800', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1801', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1802', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1803', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1804', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1805', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1806', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1807', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1808', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1809', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1810', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1811', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1812', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1813', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1814', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1815', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1816', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1817', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1818', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1819', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1820', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1821', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1822', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1823', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1824', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1825', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1826', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1827', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1828', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1829', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1830', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1831', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1832', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1833', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1834', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1835', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1836', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1837', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1838', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1839', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1840', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1841', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1842', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1843', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1844', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1845', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1846', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1847', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1848', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1849', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1850', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1851', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1852', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1853', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1854', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1855', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1856', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1857', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1858', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1859', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1860', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1861', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1862', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1863', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1864', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1865', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1866', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1867', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1868', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1869', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1870', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1871', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1872', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1873', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1874', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1875', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1876', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1877', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1878', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1879', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1880', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1881', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1882', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1883', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1884', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1885', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1886', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1887', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1888', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1889', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1890', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1891', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1892', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1893', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1894', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1895', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1896', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1897', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1898', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1899', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1900', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1901', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1902', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1903', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1904', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1905', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1906', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1907', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1908', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1909', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1910', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1911', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1912', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1913', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1914', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1915', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1916', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1917', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1918', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1919', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1920', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1921', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1922', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1923', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1924', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1925', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1926', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1927', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1928', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1929', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1930', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1931', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1932', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1933', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1934', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1935', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1936', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1937', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1938', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1939', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1940', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1941', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1942', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1943', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1944', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1945', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1946', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1947', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1948', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1949', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1950', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1951', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1952', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1953', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1954', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1955', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1956', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1957', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1958', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1959', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1960', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1961', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1962', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1963', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1964', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1965', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1966', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1967', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1968', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1969', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1970', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1971', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1972', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1973', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1974', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1975', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1976', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1977', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1978', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1979', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1980', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1981', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1982', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1983', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1984', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1985', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1986', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1987', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1988', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1989', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1990', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1991', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1992', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1993', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1994', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1995', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1996', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1997', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1998', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('1999', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('2000', null, '2108', '今天下雨', '1');
INSERT INTO `qwb_notice` VALUES ('2001', null, '2108', '今天下雨', '1');

-- ----------------------------
-- Table structure for qwb_parking_space
-- ----------------------------
DROP TABLE IF EXISTS `qwb_parking_space`;
CREATE TABLE `qwb_parking_space` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '账号，员工号',
  `startTime` varchar(255) DEFAULT NULL COMMENT '开始时间',
  `endTime` varchar(20) DEFAULT NULL COMMENT '截止时间',
  `space` varchar(255) DEFAULT '' COMMENT '位置',
  `area` double(255,2) DEFAULT '0.00' COMMENT '面积',
  `length` double(255,1) DEFAULT '0.0' COMMENT '车位长度',
  `width` double(255,1) DEFAULT '0.0' COMMENT '车位宽度',
  `age_limit` int(255) DEFAULT '1' COMMENT '年限',
  `rent` varchar(255) DEFAULT '' COMMENT '租金',
  `remark` varchar(255) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='車位租用表';

-- ----------------------------
-- Records of qwb_parking_space
-- ----------------------------
INSERT INTO `qwb_parking_space` VALUES ('1', '乔伟博', '2019-4-23', '2020', '', '100.00', '1.0', '1.0', '4', '1万', '');

-- ----------------------------
-- Table structure for qwb_repair
-- ----------------------------
DROP TABLE IF EXISTS `qwb_repair`;
CREATE TABLE `qwb_repair` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT '用户id',
  `creation_time` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `content` varchar(255) DEFAULT NULL COMMENT '维修内容',
  `complete_time` varchar(255) DEFAULT NULL COMMENT '完成时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '维修结果',
  `state` int(11) DEFAULT NULL COMMENT '状态:0.未完成，1，完成。2.无法完成',
  `room` varchar(255) DEFAULT NULL COMMENT '报修申请人的房间号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='維修表';

-- ----------------------------
-- Records of qwb_repair
-- ----------------------------
INSERT INTO `qwb_repair` VALUES ('1', '乔伟博', '2017-03-04 00:00:00', '客厅灯泡坏了', null, null, '0', '1101');
INSERT INTO `qwb_repair` VALUES ('6', '张三', '2017-03-21', '卫生间水管破裂', null, null, '0', '3301');

-- ----------------------------
-- Table structure for qwb_user
-- ----------------------------
DROP TABLE IF EXISTS `qwb_user`;
CREATE TABLE `qwb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) DEFAULT '' COMMENT '账号，员工号',
  `password` varchar(255) DEFAULT '' COMMENT '密码',
  `name` varchar(255) DEFAULT '' COMMENT '姓名',
  `role` int(255) DEFAULT '0' COMMENT '角色 0:学生   1:管理员',
  `people` int(255) DEFAULT '1' COMMENT '家庭人口',
  `phone` varchar(255) DEFAULT '' COMMENT '手机号',
  `email` varchar(255) DEFAULT '' COMMENT '邮箱',
  `state` int(255) DEFAULT '0' COMMENT '状态  0正常1禁用2删除',
  `area` double(255,1) DEFAULT '0.0' COMMENT '面积',
  `floor` varchar(11) DEFAULT '' COMMENT '楼号',
  `unit` varchar(255) DEFAULT NULL COMMENT '单元',
  `room` varchar(255) DEFAULT NULL COMMENT '房间号',
  `building_age` varchar(255) DEFAULT NULL COMMENT '建筑年代',
  `move_in_date` varchar(255) DEFAULT NULL COMMENT '迁入日期',
  `type` int(255) DEFAULT NULL COMMENT '户型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户表';

-- ----------------------------
-- Records of qwb_user
-- ----------------------------

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(100) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2018-03-16 11:33:00', 'admin', '2019-04-26 20:02:18', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES ('2', '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '初始化密码 123456');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8 COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('100', '0', '0', '小区', '0', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-04-23 14:03:15');
INSERT INTO `sys_dept` VALUES ('101', '100', '0,100', '管理部门', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-04-23 14:03:15');
INSERT INTO `sys_dept` VALUES ('102', '100', '0,100', '长沙分公司', '2', '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('103', '101', '0,100,101', '研发部门', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('104', '101', '0,100,101', '市场部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('105', '101', '0,100,101', '测试部门', '3', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('106', '101', '0,100,101', '财务部门', '4', '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('107', '101', '0,100,101', '运维部门', '5', '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('108', '102', '0,100,102', '市场部门', '1', '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('109', '102', '0,100,102', '财务部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES ('1', '1', '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别男');
INSERT INTO `sys_dict_data` VALUES ('2', '2', '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别女');
INSERT INTO `sys_dict_data` VALUES ('3', '3', '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别未知');
INSERT INTO `sys_dict_data` VALUES ('4', '1', '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '显示菜单');
INSERT INTO `sys_dict_data` VALUES ('5', '2', '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES ('6', '1', '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('7', '2', '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES ('8', '1', '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('9', '2', '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES ('10', '1', '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认是');
INSERT INTO `sys_dict_data` VALUES ('11', '2', '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认否');
INSERT INTO `sys_dict_data` VALUES ('12', '1', '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知');
INSERT INTO `sys_dict_data` VALUES ('13', '2', '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '公告');
INSERT INTO `sys_dict_data` VALUES ('14', '1', '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('15', '2', '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '关闭状态');
INSERT INTO `sys_dict_data` VALUES ('16', '1', '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '新增操作');
INSERT INTO `sys_dict_data` VALUES ('17', '2', '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '修改操作');
INSERT INTO `sys_dict_data` VALUES ('18', '3', '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '删除操作');
INSERT INTO `sys_dict_data` VALUES ('19', '4', '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '授权操作');
INSERT INTO `sys_dict_data` VALUES ('20', '5', '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导出操作');
INSERT INTO `sys_dict_data` VALUES ('21', '6', '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导入操作');
INSERT INTO `sys_dict_data` VALUES ('22', '7', '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '强退操作');
INSERT INTO `sys_dict_data` VALUES ('23', '8', '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '生成操作');
INSERT INTO `sys_dict_data` VALUES ('24', '9', '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '清空操作');
INSERT INTO `sys_dict_data` VALUES ('25', '1', '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('26', '2', '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES ('1', '用户性别', 'sys_user_sex', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户性别列表');
INSERT INTO `sys_dict_type` VALUES ('2', '菜单状态', 'sys_show_hide', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES ('3', '系统开关', 'sys_normal_disable', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统开关列表');
INSERT INTO `sys_dict_type` VALUES ('4', '任务状态', 'sys_job_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务状态列表');
INSERT INTO `sys_dict_type` VALUES ('5', '系统是否', 'sys_yes_no', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统是否列表');
INSERT INTO `sys_dict_type` VALUES ('6', '通知类型', 'sys_notice_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知类型列表');
INSERT INTO `sys_dict_type` VALUES ('7', '通知状态', 'sys_notice_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知状态列表');
INSERT INTO `sys_dict_type` VALUES ('8', '操作类型', 'sys_oper_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作类型列表');
INSERT INTO `sys_dict_type` VALUES ('9', '系统状态', 'sys_common_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录状态列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT '' COMMENT '任务组名',
  `method_name` varchar(500) DEFAULT '' COMMENT '任务方法',
  `method_params` varchar(50) DEFAULT NULL COMMENT '方法参数',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES ('1', 'ryTask', '系统默认（无参）', 'ryNoParams', '', '0/10 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES ('2', 'ryTask', '系统默认（有参）', 'ryParams', 'ry', '0/20 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `method_name` varchar(500) DEFAULT NULL COMMENT '任务方法',
  `method_params` varchar(50) DEFAULT NULL COMMENT '方法参数',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务调度日志表';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=397 DEFAULT CHARSET=utf8 COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES ('100', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-04-23 13:42:01');
INSERT INTO `sys_logininfor` VALUES ('101', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误2次', '2019-04-23 13:42:08');
INSERT INTO `sys_logininfor` VALUES ('102', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误3次', '2019-04-23 13:42:23');
INSERT INTO `sys_logininfor` VALUES ('103', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 13:43:03');
INSERT INTO `sys_logininfor` VALUES ('104', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 13:57:10');
INSERT INTO `sys_logininfor` VALUES ('105', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 14:13:57');
INSERT INTO `sys_logininfor` VALUES ('106', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-23 14:17:34');
INSERT INTO `sys_logininfor` VALUES ('107', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 14:18:07');
INSERT INTO `sys_logininfor` VALUES ('108', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-23 14:18:18');
INSERT INTO `sys_logininfor` VALUES ('109', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 14:18:33');
INSERT INTO `sys_logininfor` VALUES ('110', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-04-23 15:12:58');
INSERT INTO `sys_logininfor` VALUES ('111', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-04-23 15:13:03');
INSERT INTO `sys_logininfor` VALUES ('112', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 15:13:24');
INSERT INTO `sys_logininfor` VALUES ('113', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-23 15:16:15');
INSERT INTO `sys_logininfor` VALUES ('114', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 15:17:01');
INSERT INTO `sys_logininfor` VALUES ('115', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-23 15:17:19');
INSERT INTO `sys_logininfor` VALUES ('116', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 15:17:29');
INSERT INTO `sys_logininfor` VALUES ('117', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-23 15:17:34');
INSERT INTO `sys_logininfor` VALUES ('118', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-04-23 15:17:40');
INSERT INTO `sys_logininfor` VALUES ('119', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 15:17:43');
INSERT INTO `sys_logininfor` VALUES ('120', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-23 15:18:45');
INSERT INTO `sys_logininfor` VALUES ('121', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 15:18:50');
INSERT INTO `sys_logininfor` VALUES ('122', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 15:22:46');
INSERT INTO `sys_logininfor` VALUES ('123', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-23 15:33:50');
INSERT INTO `sys_logininfor` VALUES ('124', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 15:34:00');
INSERT INTO `sys_logininfor` VALUES ('125', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-23 15:34:58');
INSERT INTO `sys_logininfor` VALUES ('126', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 15:35:06');
INSERT INTO `sys_logininfor` VALUES ('127', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 15:52:30');
INSERT INTO `sys_logininfor` VALUES ('128', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 15:55:11');
INSERT INTO `sys_logininfor` VALUES ('129', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 16:00:00');
INSERT INTO `sys_logininfor` VALUES ('130', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-04-23 16:00:59');
INSERT INTO `sys_logininfor` VALUES ('131', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 16:01:06');
INSERT INTO `sys_logininfor` VALUES ('132', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 16:04:59');
INSERT INTO `sys_logininfor` VALUES ('133', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 16:06:39');
INSERT INTO `sys_logininfor` VALUES ('134', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-23 16:18:33');
INSERT INTO `sys_logininfor` VALUES ('135', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 16:18:41');
INSERT INTO `sys_logininfor` VALUES ('136', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 16:21:29');
INSERT INTO `sys_logininfor` VALUES ('137', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-23 16:21:52');
INSERT INTO `sys_logininfor` VALUES ('138', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 16:21:58');
INSERT INTO `sys_logininfor` VALUES ('139', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-23 16:22:25');
INSERT INTO `sys_logininfor` VALUES ('140', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 16:22:29');
INSERT INTO `sys_logininfor` VALUES ('141', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-23 16:41:01');
INSERT INTO `sys_logininfor` VALUES ('142', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 16:41:10');
INSERT INTO `sys_logininfor` VALUES ('143', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-23 16:56:04');
INSERT INTO `sys_logininfor` VALUES ('144', 'qwb', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 16:56:18');
INSERT INTO `sys_logininfor` VALUES ('145', 'qwb', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-23 16:56:42');
INSERT INTO `sys_logininfor` VALUES ('146', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 16:56:46');
INSERT INTO `sys_logininfor` VALUES ('147', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-23 16:58:26');
INSERT INTO `sys_logininfor` VALUES ('148', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-04-23 16:58:31');
INSERT INTO `sys_logininfor` VALUES ('149', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 16:58:34');
INSERT INTO `sys_logininfor` VALUES ('150', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-23 17:03:41');
INSERT INTO `sys_logininfor` VALUES ('151', '乔伟博', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '对不起，您的账号已被删除', '2019-04-23 17:03:49');
INSERT INTO `sys_logininfor` VALUES ('152', 'qwb', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 17:04:01');
INSERT INTO `sys_logininfor` VALUES ('153', 'qwb', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-23 17:04:44');
INSERT INTO `sys_logininfor` VALUES ('154', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 17:05:40');
INSERT INTO `sys_logininfor` VALUES ('155', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-23 17:09:26');
INSERT INTO `sys_logininfor` VALUES ('156', '乔伟博', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-04-23 17:09:31');
INSERT INTO `sys_logininfor` VALUES ('157', '乔伟博', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '对不起，您的账号已被删除', '2019-04-23 17:09:35');
INSERT INTO `sys_logininfor` VALUES ('158', 'qwb', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-04-23 17:09:45');
INSERT INTO `sys_logininfor` VALUES ('159', 'qwb', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 17:09:54');
INSERT INTO `sys_logininfor` VALUES ('160', 'qwb', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-23 17:10:55');
INSERT INTO `sys_logininfor` VALUES ('161', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 17:10:59');
INSERT INTO `sys_logininfor` VALUES ('162', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-23 17:17:42');
INSERT INTO `sys_logininfor` VALUES ('163', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 17:17:53');
INSERT INTO `sys_logininfor` VALUES ('164', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-04-23 17:27:25');
INSERT INTO `sys_logininfor` VALUES ('165', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 17:27:31');
INSERT INTO `sys_logininfor` VALUES ('166', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-23 17:27:57');
INSERT INTO `sys_logininfor` VALUES ('167', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 17:28:05');
INSERT INTO `sys_logininfor` VALUES ('168', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-23 17:28:26');
INSERT INTO `sys_logininfor` VALUES ('169', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 17:28:34');
INSERT INTO `sys_logininfor` VALUES ('170', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-23 17:35:42');
INSERT INTO `sys_logininfor` VALUES ('171', 'qwb', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-04-23 17:35:49');
INSERT INTO `sys_logininfor` VALUES ('172', 'qwb', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-04-23 17:35:54');
INSERT INTO `sys_logininfor` VALUES ('173', 'qwb', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 17:36:04');
INSERT INTO `sys_logininfor` VALUES ('174', 'qwb', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-23 17:36:59');
INSERT INTO `sys_logininfor` VALUES ('175', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-04-23 17:37:05');
INSERT INTO `sys_logininfor` VALUES ('176', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 17:37:10');
INSERT INTO `sys_logininfor` VALUES ('177', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-23 17:40:31');
INSERT INTO `sys_logininfor` VALUES ('178', 'ry123', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 17:40:44');
INSERT INTO `sys_logininfor` VALUES ('179', 'ry123', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-23 17:41:30');
INSERT INTO `sys_logininfor` VALUES ('180', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 17:41:34');
INSERT INTO `sys_logininfor` VALUES ('181', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-23 17:42:12');
INSERT INTO `sys_logininfor` VALUES ('182', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 17:42:26');
INSERT INTO `sys_logininfor` VALUES ('183', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-23 17:42:51');
INSERT INTO `sys_logininfor` VALUES ('184', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 17:42:55');
INSERT INTO `sys_logininfor` VALUES ('185', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-23 17:43:51');
INSERT INTO `sys_logininfor` VALUES ('186', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 17:44:00');
INSERT INTO `sys_logininfor` VALUES ('187', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 19:07:10');
INSERT INTO `sys_logininfor` VALUES ('188', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-23 21:01:32');
INSERT INTO `sys_logininfor` VALUES ('189', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 21:01:39');
INSERT INTO `sys_logininfor` VALUES ('190', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-23 21:18:23');
INSERT INTO `sys_logininfor` VALUES ('191', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 21:18:29');
INSERT INTO `sys_logininfor` VALUES ('192', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-23 21:18:57');
INSERT INTO `sys_logininfor` VALUES ('193', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 21:19:07');
INSERT INTO `sys_logininfor` VALUES ('194', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-23 21:53:17');
INSERT INTO `sys_logininfor` VALUES ('195', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 21:53:22');
INSERT INTO `sys_logininfor` VALUES ('196', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-23 21:56:02');
INSERT INTO `sys_logininfor` VALUES ('197', 'qwb', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-04-23 21:56:11');
INSERT INTO `sys_logininfor` VALUES ('198', 'qwb', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误2次', '2019-04-23 21:56:29');
INSERT INTO `sys_logininfor` VALUES ('199', 'qwb', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 21:56:44');
INSERT INTO `sys_logininfor` VALUES ('200', 'qwb', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-23 21:57:40');
INSERT INTO `sys_logininfor` VALUES ('201', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 21:57:47');
INSERT INTO `sys_logininfor` VALUES ('202', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-23 22:05:26');
INSERT INTO `sys_logininfor` VALUES ('203', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-04-23 22:05:39');
INSERT INTO `sys_logininfor` VALUES ('204', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 22:05:43');
INSERT INTO `sys_logininfor` VALUES ('205', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-23 22:05:54');
INSERT INTO `sys_logininfor` VALUES ('206', 'qwb', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-04-23 22:06:15');
INSERT INTO `sys_logininfor` VALUES ('207', 'qwb', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 22:06:19');
INSERT INTO `sys_logininfor` VALUES ('208', 'qwb', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-23 22:07:30');
INSERT INTO `sys_logininfor` VALUES ('209', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-04-23 22:07:38');
INSERT INTO `sys_logininfor` VALUES ('210', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 22:07:42');
INSERT INTO `sys_logininfor` VALUES ('211', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-23 22:08:09');
INSERT INTO `sys_logininfor` VALUES ('212', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 22:08:14');
INSERT INTO `sys_logininfor` VALUES ('213', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-24 08:38:25');
INSERT INTO `sys_logininfor` VALUES ('214', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-24 08:38:31');
INSERT INTO `sys_logininfor` VALUES ('215', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-24 08:41:38');
INSERT INTO `sys_logininfor` VALUES ('216', 'qwb', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-04-24 08:41:56');
INSERT INTO `sys_logininfor` VALUES ('217', 'qwb', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-24 08:42:01');
INSERT INTO `sys_logininfor` VALUES ('218', 'qwb', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-24 08:49:14');
INSERT INTO `sys_logininfor` VALUES ('219', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-24 08:49:19');
INSERT INTO `sys_logininfor` VALUES ('220', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-24 09:23:01');
INSERT INTO `sys_logininfor` VALUES ('221', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-24 09:23:08');
INSERT INTO `sys_logininfor` VALUES ('222', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-24 09:23:30');
INSERT INTO `sys_logininfor` VALUES ('223', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-24 09:23:34');
INSERT INTO `sys_logininfor` VALUES ('224', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-24 09:41:08');
INSERT INTO `sys_logininfor` VALUES ('225', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-24 09:44:23');
INSERT INTO `sys_logininfor` VALUES ('226', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-24 09:45:57');
INSERT INTO `sys_logininfor` VALUES ('227', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-24 10:19:30');
INSERT INTO `sys_logininfor` VALUES ('228', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-24 10:39:03');
INSERT INTO `sys_logininfor` VALUES ('229', 'qwb', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-04-24 10:39:10');
INSERT INTO `sys_logininfor` VALUES ('230', 'qwb', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-24 10:39:17');
INSERT INTO `sys_logininfor` VALUES ('231', 'qwb', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-24 10:39:30');
INSERT INTO `sys_logininfor` VALUES ('232', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-24 10:39:34');
INSERT INTO `sys_logininfor` VALUES ('233', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-24 10:55:21');
INSERT INTO `sys_logininfor` VALUES ('234', 'qwb', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-24 10:55:38');
INSERT INTO `sys_logininfor` VALUES ('235', 'qwb', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-24 14:07:31');
INSERT INTO `sys_logininfor` VALUES ('236', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-24 14:07:34');
INSERT INTO `sys_logininfor` VALUES ('237', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-24 14:07:37');
INSERT INTO `sys_logininfor` VALUES ('238', 'qwb', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-04-24 14:07:51');
INSERT INTO `sys_logininfor` VALUES ('239', 'qwb', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-24 14:07:55');
INSERT INTO `sys_logininfor` VALUES ('240', 'qwb', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-24 14:10:11');
INSERT INTO `sys_logininfor` VALUES ('241', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-24 14:10:22');
INSERT INTO `sys_logininfor` VALUES ('242', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-24 14:11:48');
INSERT INTO `sys_logininfor` VALUES ('243', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-24 14:11:56');
INSERT INTO `sys_logininfor` VALUES ('244', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-24 14:32:57');
INSERT INTO `sys_logininfor` VALUES ('245', 'qwb', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-04-24 14:33:10');
INSERT INTO `sys_logininfor` VALUES ('246', 'qwb', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-24 14:33:26');
INSERT INTO `sys_logininfor` VALUES ('247', 'qwb', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-24 15:43:49');
INSERT INTO `sys_logininfor` VALUES ('248', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-24 15:43:55');
INSERT INTO `sys_logininfor` VALUES ('249', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-24 15:45:46');
INSERT INTO `sys_logininfor` VALUES ('250', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-24 15:45:54');
INSERT INTO `sys_logininfor` VALUES ('251', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-24 15:50:14');
INSERT INTO `sys_logininfor` VALUES ('252', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-24 15:50:55');
INSERT INTO `sys_logininfor` VALUES ('253', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-24 15:51:14');
INSERT INTO `sys_logininfor` VALUES ('254', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-24 15:54:51');
INSERT INTO `sys_logininfor` VALUES ('255', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-24 15:54:56');
INSERT INTO `sys_logininfor` VALUES ('256', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-24 15:55:52');
INSERT INTO `sys_logininfor` VALUES ('257', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-24 15:55:59');
INSERT INTO `sys_logininfor` VALUES ('258', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-24 16:10:11');
INSERT INTO `sys_logininfor` VALUES ('259', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-24 16:10:20');
INSERT INTO `sys_logininfor` VALUES ('260', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-24 16:31:48');
INSERT INTO `sys_logininfor` VALUES ('261', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-24 16:31:54');
INSERT INTO `sys_logininfor` VALUES ('262', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-24 16:32:05');
INSERT INTO `sys_logininfor` VALUES ('263', 'qwb', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-24 16:32:21');
INSERT INTO `sys_logininfor` VALUES ('264', 'qwb', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-24 16:32:39');
INSERT INTO `sys_logininfor` VALUES ('265', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-24 16:32:43');
INSERT INTO `sys_logininfor` VALUES ('266', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-24 16:34:35');
INSERT INTO `sys_logininfor` VALUES ('267', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-24 16:34:44');
INSERT INTO `sys_logininfor` VALUES ('268', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-24 16:35:53');
INSERT INTO `sys_logininfor` VALUES ('269', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-24 17:09:10');
INSERT INTO `sys_logininfor` VALUES ('270', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-24 17:09:27');
INSERT INTO `sys_logininfor` VALUES ('271', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-24 19:29:03');
INSERT INTO `sys_logininfor` VALUES ('272', 'qwb', '127.0.0.1', '内网IP', 'Microsoft Edge', 'Windows 10', '0', '登录成功', '2019-04-24 19:38:30');
INSERT INTO `sys_logininfor` VALUES ('273', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-24 19:52:18');
INSERT INTO `sys_logininfor` VALUES ('274', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-24 19:58:26');
INSERT INTO `sys_logininfor` VALUES ('275', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-24 20:02:37');
INSERT INTO `sys_logininfor` VALUES ('276', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-24 20:11:44');
INSERT INTO `sys_logininfor` VALUES ('277', 'qwb', '127.0.0.1', '内网IP', 'Microsoft Edge', 'Windows 10', '0', '登录成功', '2019-04-24 20:12:26');
INSERT INTO `sys_logininfor` VALUES ('278', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-24 20:41:05');
INSERT INTO `sys_logininfor` VALUES ('279', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-24 21:08:51');
INSERT INTO `sys_logininfor` VALUES ('280', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-24 21:39:31');
INSERT INTO `sys_logininfor` VALUES ('281', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-24 21:42:14');
INSERT INTO `sys_logininfor` VALUES ('282', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-24 21:43:34');
INSERT INTO `sys_logininfor` VALUES ('283', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-24 21:45:03');
INSERT INTO `sys_logininfor` VALUES ('284', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-24 21:46:14');
INSERT INTO `sys_logininfor` VALUES ('285', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-24 21:51:02');
INSERT INTO `sys_logininfor` VALUES ('286', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-24 22:01:04');
INSERT INTO `sys_logininfor` VALUES ('287', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-25 09:07:21');
INSERT INTO `sys_logininfor` VALUES ('288', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-25 09:07:34');
INSERT INTO `sys_logininfor` VALUES ('289', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-25 11:29:28');
INSERT INTO `sys_logininfor` VALUES ('290', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-25 13:52:06');
INSERT INTO `sys_logininfor` VALUES ('291', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-25 14:03:06');
INSERT INTO `sys_logininfor` VALUES ('292', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-25 14:42:05');
INSERT INTO `sys_logininfor` VALUES ('293', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-25 14:52:27');
INSERT INTO `sys_logininfor` VALUES ('294', 'OneFloor', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-25 15:36:29');
INSERT INTO `sys_logininfor` VALUES ('295', 'O', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '验证码错误', '2019-04-25 16:03:47');
INSERT INTO `sys_logininfor` VALUES ('296', 'O', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '用户不存在/密码错误', '2019-04-25 16:03:53');
INSERT INTO `sys_logininfor` VALUES ('297', 'OneFloor', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-25 16:04:03');
INSERT INTO `sys_logininfor` VALUES ('298', 'OneFloor', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-25 16:13:21');
INSERT INTO `sys_logininfor` VALUES ('299', 'OneFloor', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-25 16:19:17');
INSERT INTO `sys_logininfor` VALUES ('300', 'OneFloor', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-25 16:25:52');
INSERT INTO `sys_logininfor` VALUES ('301', 'OneFloor', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-25 17:00:50');
INSERT INTO `sys_logininfor` VALUES ('302', 'OneFloor', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-25 19:37:02');
INSERT INTO `sys_logininfor` VALUES ('303', 'OneFloor', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-25 20:44:49');
INSERT INTO `sys_logininfor` VALUES ('304', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-25 21:03:47');
INSERT INTO `sys_logininfor` VALUES ('305', 'qwb', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-25 21:03:59');
INSERT INTO `sys_logininfor` VALUES ('306', 'OneFloor', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-25 21:08:45');
INSERT INTO `sys_logininfor` VALUES ('307', 'OneFloor', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-25 21:13:05');
INSERT INTO `sys_logininfor` VALUES ('308', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-04-25 21:20:31');
INSERT INTO `sys_logininfor` VALUES ('309', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-25 21:20:37');
INSERT INTO `sys_logininfor` VALUES ('310', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-25 22:08:50');
INSERT INTO `sys_logininfor` VALUES ('311', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-04-25 22:57:37');
INSERT INTO `sys_logininfor` VALUES ('312', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-25 22:57:41');
INSERT INTO `sys_logininfor` VALUES ('313', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 09:08:08');
INSERT INTO `sys_logininfor` VALUES ('314', 'OneFloor', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-26 09:10:56');
INSERT INTO `sys_logininfor` VALUES ('315', 'OneFloor', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-26 09:24:05');
INSERT INTO `sys_logininfor` VALUES ('316', 'OneFloor', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-26 09:29:48');
INSERT INTO `sys_logininfor` VALUES ('317', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 09:32:22');
INSERT INTO `sys_logininfor` VALUES ('318', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 10:09:35');
INSERT INTO `sys_logininfor` VALUES ('319', 'OneFloor', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-26 10:10:20');
INSERT INTO `sys_logininfor` VALUES ('320', 'OneFloor', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-04-26 10:13:12');
INSERT INTO `sys_logininfor` VALUES ('321', 'OneFloor', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-26 10:13:27');
INSERT INTO `sys_logininfor` VALUES ('322', 'OneFloor', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-26 10:33:12');
INSERT INTO `sys_logininfor` VALUES ('323', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 10:33:44');
INSERT INTO `sys_logininfor` VALUES ('324', 'OneFloor', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-26 10:35:29');
INSERT INTO `sys_logininfor` VALUES ('325', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 10:37:31');
INSERT INTO `sys_logininfor` VALUES ('326', 'OneFloor', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-26 11:07:53');
INSERT INTO `sys_logininfor` VALUES ('327', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 11:08:05');
INSERT INTO `sys_logininfor` VALUES ('328', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 11:10:58');
INSERT INTO `sys_logininfor` VALUES ('329', 'OneFloor', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-26 11:11:16');
INSERT INTO `sys_logininfor` VALUES ('330', 'OneFloor', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-26 11:13:14');
INSERT INTO `sys_logininfor` VALUES ('331', 'OneFloor', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-26 11:30:07');
INSERT INTO `sys_logininfor` VALUES ('332', 'OneFloor', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-26 11:42:16');
INSERT INTO `sys_logininfor` VALUES ('333', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 12:30:51');
INSERT INTO `sys_logininfor` VALUES ('334', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '验证码错误', '2019-04-26 12:35:27');
INSERT INTO `sys_logininfor` VALUES ('335', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-26 12:35:30');
INSERT INTO `sys_logininfor` VALUES ('336', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 12:40:57');
INSERT INTO `sys_logininfor` VALUES ('337', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 12:49:41');
INSERT INTO `sys_logininfor` VALUES ('338', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 13:11:01');
INSERT INTO `sys_logininfor` VALUES ('339', 'OneFloor', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 13:18:03');
INSERT INTO `sys_logininfor` VALUES ('340', 'OneFloor', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-04-26 14:35:40');
INSERT INTO `sys_logininfor` VALUES ('341', 'OneFloor', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 14:35:47');
INSERT INTO `sys_logininfor` VALUES ('342', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-26 15:16:06');
INSERT INTO `sys_logininfor` VALUES ('343', 'OneFloor', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 15:32:18');
INSERT INTO `sys_logininfor` VALUES ('344', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-26 15:32:39');
INSERT INTO `sys_logininfor` VALUES ('345', 'OneFloor', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 16:01:10');
INSERT INTO `sys_logininfor` VALUES ('346', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-26 16:01:54');
INSERT INTO `sys_logininfor` VALUES ('347', 'OneFloor', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 16:30:45');
INSERT INTO `sys_logininfor` VALUES ('348', 'o', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-04-26 16:34:54');
INSERT INTO `sys_logininfor` VALUES ('349', 'OneFloor', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 16:35:03');
INSERT INTO `sys_logininfor` VALUES ('350', 'OneFloor', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 16:39:57');
INSERT INTO `sys_logininfor` VALUES ('351', 'OneFloor', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-26 16:57:15');
INSERT INTO `sys_logininfor` VALUES ('352', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-04-26 17:01:56');
INSERT INTO `sys_logininfor` VALUES ('353', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 17:01:59');
INSERT INTO `sys_logininfor` VALUES ('354', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-26 17:02:02');
INSERT INTO `sys_logininfor` VALUES ('355', 'OneFloor', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-04-26 17:03:52');
INSERT INTO `sys_logininfor` VALUES ('356', 'OneFloor', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 17:03:55');
INSERT INTO `sys_logininfor` VALUES ('357', 'OneFloor', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-26 17:05:52');
INSERT INTO `sys_logininfor` VALUES ('358', 'qwb', '127.0.0.1', '内网IP', 'Microsoft Edge', 'Windows 10', '0', '退出成功', '2019-04-26 17:21:59');
INSERT INTO `sys_logininfor` VALUES ('359', 'admin', '127.0.0.1', '内网IP', 'Microsoft Edge', 'Windows 10', '0', '登录成功', '2019-04-26 17:29:32');
INSERT INTO `sys_logininfor` VALUES ('360', 'admin', '127.0.0.1', '内网IP', 'Microsoft Edge', 'Windows 10', '0', '退出成功', '2019-04-26 17:29:37');
INSERT INTO `sys_logininfor` VALUES ('361', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 18:58:35');
INSERT INTO `sys_logininfor` VALUES ('362', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-26 18:58:37');
INSERT INTO `sys_logininfor` VALUES ('363', 'qwb', '127.0.0.1', '内网IP', 'Microsoft Edge', 'Windows 10', '0', '登录成功', '2019-04-26 19:00:27');
INSERT INTO `sys_logininfor` VALUES ('364', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-26 19:01:02');
INSERT INTO `sys_logininfor` VALUES ('365', 'OneFloor', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 19:01:18');
INSERT INTO `sys_logininfor` VALUES ('366', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-26 19:22:36');
INSERT INTO `sys_logininfor` VALUES ('367', 'OneFloor', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-04-26 19:22:58');
INSERT INTO `sys_logininfor` VALUES ('368', 'OneFloor', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 19:23:04');
INSERT INTO `sys_logininfor` VALUES ('369', 'OneFloor', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-04-26 19:26:05');
INSERT INTO `sys_logininfor` VALUES ('370', 'OneFloor', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 19:26:11');
INSERT INTO `sys_logininfor` VALUES ('371', 'qwb', '127.0.0.1', '内网IP', 'Microsoft Edge', 'Windows 10', '0', '登录成功', '2019-04-26 19:27:29');
INSERT INTO `sys_logininfor` VALUES ('372', 'qwb', '127.0.0.1', '内网IP', 'Microsoft Edge', 'Windows 10', '0', '登录成功', '2019-04-26 19:35:44');
INSERT INTO `sys_logininfor` VALUES ('373', 'OneFloor', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 19:36:30');
INSERT INTO `sys_logininfor` VALUES ('374', 'qwb', '127.0.0.1', '内网IP', 'Microsoft Edge', 'Windows 10', '0', '登录成功', '2019-04-26 19:45:32');
INSERT INTO `sys_logininfor` VALUES ('375', 'OneFloor', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 19:46:00');
INSERT INTO `sys_logininfor` VALUES ('376', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-26 19:56:37');
INSERT INTO `sys_logininfor` VALUES ('377', 'admin', '127.0.0.1', '内网IP', 'Microsoft Edge', 'Windows 10', '0', '登录成功', '2019-04-26 20:26:25');
INSERT INTO `sys_logininfor` VALUES ('378', 'admin', '127.0.0.1', '内网IP', 'Microsoft Edge', 'Windows 10', '0', '退出成功', '2019-04-26 20:26:31');
INSERT INTO `sys_logininfor` VALUES ('379', 'qwb', '127.0.0.1', '内网IP', 'Microsoft Edge', 'Windows 10', '0', '登录成功', '2019-04-26 20:26:44');
INSERT INTO `sys_logininfor` VALUES ('380', 'OneFloor', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 21:52:57');
INSERT INTO `sys_logininfor` VALUES ('381', 'OneFloor', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 22:01:58');
INSERT INTO `sys_logininfor` VALUES ('382', 'qwb', '127.0.0.1', '内网IP', 'Microsoft Edge', 'Windows 10', '0', '登录成功', '2019-04-26 22:02:30');
INSERT INTO `sys_logininfor` VALUES ('383', 'qwb', '127.0.0.1', '内网IP', 'Microsoft Edge', 'Windows 10', '0', '登录成功', '2019-04-27 08:58:49');
INSERT INTO `sys_logininfor` VALUES ('384', 'OneFloor', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-27 09:00:09');
INSERT INTO `sys_logininfor` VALUES ('385', 'ry', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-27 09:06:04');
INSERT INTO `sys_logininfor` VALUES ('386', 'qwb', '127.0.0.1', '内网IP', 'Microsoft Edge', 'Windows 10', '1', '验证码错误', '2019-04-27 09:35:19');
INSERT INTO `sys_logininfor` VALUES ('387', 'qwb', '127.0.0.1', '内网IP', 'Microsoft Edge', 'Windows 10', '0', '登录成功', '2019-04-27 09:35:24');
INSERT INTO `sys_logininfor` VALUES ('388', 'OneFloor', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-27 09:35:42');
INSERT INTO `sys_logininfor` VALUES ('389', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-27 09:49:17');
INSERT INTO `sys_logininfor` VALUES ('390', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-27 10:08:53');
INSERT INTO `sys_logininfor` VALUES ('391', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-27 10:12:27');
INSERT INTO `sys_logininfor` VALUES ('392', 'admin', '127.0.0.1', '内网IP', 'Microsoft Edge', 'Windows 10', '1', '验证码错误', '2019-04-27 10:25:36');
INSERT INTO `sys_logininfor` VALUES ('393', 'admin', '127.0.0.1', '内网IP', 'Microsoft Edge', 'Windows 10', '0', '登录成功', '2019-04-27 10:28:57');
INSERT INTO `sys_logininfor` VALUES ('394', 'admin', '127.0.0.1', '内网IP', 'Microsoft Edge', 'Windows 10', '0', '登录成功', '2019-04-27 10:35:24');
INSERT INTO `sys_logininfor` VALUES ('395', 'admin', '127.0.0.1', '内网IP', 'Microsoft Edge', 'Windows 10', '0', '登录成功', '2019-04-27 10:39:49');
INSERT INTO `sys_logininfor` VALUES ('396', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-27 10:46:44');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `url` varchar(200) DEFAULT '#' COMMENT '请求地址',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2044 DEFAULT CHARSET=utf8 COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '0', '7', '#', 'M', '0', '', 'fa fa-gear', 'admin', '2018-03-16 11:33:00', 'admin', '2019-04-23 16:46:45', '系统管理目录');
INSERT INTO `sys_menu` VALUES ('2', '系统监控', '0', '7', '#', 'M', '0', '', 'fa fa-video-camera', 'admin', '2018-03-16 11:33:00', 'admin', '2019-04-23 16:47:04', '系统监控目录');
INSERT INTO `sys_menu` VALUES ('3', '系统工具', '0', '7', '#', 'M', '0', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'admin', '2019-04-23 16:47:12', '系统工具目录');
INSERT INTO `sys_menu` VALUES ('100', '用户管理', '2038', '1', '/system/user', 'C', '0', 'system:user:view', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2019-04-23 16:45:52', '用户管理菜单');
INSERT INTO `sys_menu` VALUES ('101', '角色管理', '1', '2', '/system/role', 'C', '0', 'system:role:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '角色管理菜单');
INSERT INTO `sys_menu` VALUES ('102', '菜单管理', '1', '3', '/system/menu', 'C', '0', 'system:menu:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES ('103', '部门管理', '1', '4', '/system/dept', 'C', '0', 'system:dept:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '部门管理菜单');
INSERT INTO `sys_menu` VALUES ('104', '岗位管理', '1', '5', '/system/post', 'C', '0', 'system:post:view', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2019-04-23 14:04:50', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES ('105', '字典管理', '1', '6', '/system/dict', 'C', '0', 'system:dict:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '字典管理菜单');
INSERT INTO `sys_menu` VALUES ('106', '参数设置', '1', '7', '/system/config', 'C', '0', 'system:config:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '参数设置菜单');
INSERT INTO `sys_menu` VALUES ('107', '通知公告', '1', '8', '/system/notice', 'C', '0', 'system:notice:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知公告菜单');
INSERT INTO `sys_menu` VALUES ('108', '日志管理', '1', '9', '#', 'M', '0', '', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '日志管理菜单');
INSERT INTO `sys_menu` VALUES ('109', '在线用户', '2', '1', '/monitor/online', 'C', '0', 'monitor:online:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '在线用户菜单');
INSERT INTO `sys_menu` VALUES ('111', '数据监控', '2', '3', '/monitor/data', 'C', '0', 'monitor:data:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '数据监控菜单');
INSERT INTO `sys_menu` VALUES ('112', '服务监控', '2', '3', '/monitor/server', 'C', '0', 'monitor:server:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '服务监控菜单');
INSERT INTO `sys_menu` VALUES ('113', '表单构建', '3', '1', '/tool/build', 'C', '0', 'tool:build:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '表单构建菜单');
INSERT INTO `sys_menu` VALUES ('114', '代码生成', '3', '2', '/tool/gen', 'C', '0', 'tool:gen:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '代码生成菜单');
INSERT INTO `sys_menu` VALUES ('115', '系统接口', '3', '3', '/tool/swagger', 'C', '0', 'tool:swagger:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统接口菜单');
INSERT INTO `sys_menu` VALUES ('500', '操作日志', '108', '1', '/monitor/operlog', 'C', '0', 'monitor:operlog:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作日志菜单');
INSERT INTO `sys_menu` VALUES ('501', '登录日志', '108', '2', '/monitor/logininfor', 'C', '0', 'monitor:logininfor:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录日志菜单');
INSERT INTO `sys_menu` VALUES ('1000', '用户查询', '100', '1', '#', 'F', '0', 'system:user:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1001', '用户新增', '100', '2', '#', 'F', '0', 'system:user:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1002', '用户修改', '100', '3', '#', 'F', '0', 'system:user:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1003', '用户删除', '100', '4', '#', 'F', '0', 'system:user:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1004', '用户导出', '100', '5', '#', 'F', '0', 'system:user:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1005', '用户导入', '100', '6', '#', 'F', '0', 'system:user:import', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1006', '重置密码', '100', '7', '#', 'F', '0', 'system:user:resetPwd', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1007', '角色查询', '101', '1', '#', 'F', '0', 'system:role:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1008', '角色新增', '101', '2', '#', 'F', '0', 'system:role:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1009', '角色修改', '101', '3', '#', 'F', '0', 'system:role:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1010', '角色删除', '101', '4', '#', 'F', '0', 'system:role:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1011', '角色导出', '101', '5', '#', 'F', '0', 'system:role:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1012', '菜单查询', '102', '1', '#', 'F', '0', 'system:menu:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1013', '菜单新增', '102', '2', '#', 'F', '0', 'system:menu:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1014', '菜单修改', '102', '3', '#', 'F', '0', 'system:menu:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1015', '菜单删除', '102', '4', '#', 'F', '0', 'system:menu:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1016', '部门查询', '103', '1', '#', 'F', '0', 'system:dept:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1017', '部门新增', '103', '2', '#', 'F', '0', 'system:dept:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1018', '部门修改', '103', '3', '#', 'F', '0', 'system:dept:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1019', '部门删除', '103', '4', '#', 'F', '0', 'system:dept:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1020', '岗位查询', '104', '1', '#', 'F', '0', 'system:post:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1021', '岗位新增', '104', '2', '#', 'F', '0', 'system:post:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1022', '岗位修改', '104', '3', '#', 'F', '0', 'system:post:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1023', '岗位删除', '104', '4', '#', 'F', '0', 'system:post:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1024', '岗位导出', '104', '5', '#', 'F', '0', 'system:post:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1025', '字典查询', '105', '1', '#', 'F', '0', 'system:dict:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1026', '字典新增', '105', '2', '#', 'F', '0', 'system:dict:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1027', '字典修改', '105', '3', '#', 'F', '0', 'system:dict:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1028', '字典删除', '105', '4', '#', 'F', '0', 'system:dict:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1029', '字典导出', '105', '5', '#', 'F', '0', 'system:dict:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1030', '参数查询', '106', '1', '#', 'F', '0', 'system:config:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1031', '参数新增', '106', '2', '#', 'F', '0', 'system:config:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1032', '参数修改', '106', '3', '#', 'F', '0', 'system:config:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1033', '参数删除', '106', '4', '#', 'F', '0', 'system:config:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1034', '参数导出', '106', '5', '#', 'F', '0', 'system:config:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1035', '公告查询', '107', '1', '#', 'F', '0', 'system:notice:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1036', '公告新增', '107', '2', '#', 'F', '0', 'system:notice:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1037', '公告修改', '107', '3', '#', 'F', '0', 'system:notice:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1038', '公告删除', '107', '4', '#', 'F', '0', 'system:notice:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1039', '操作查询', '500', '1', '#', 'F', '0', 'monitor:operlog:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1040', '操作删除', '500', '2', '#', 'F', '0', 'monitor:operlog:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1041', '详细信息', '500', '3', '#', 'F', '0', 'monitor:operlog:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1042', '日志导出', '500', '4', '#', 'F', '0', 'monitor:operlog:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1043', '登录查询', '501', '1', '#', 'F', '0', 'monitor:logininfor:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1044', '登录删除', '501', '2', '#', 'F', '0', 'monitor:logininfor:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1045', '日志导出', '501', '3', '#', 'F', '0', 'monitor:logininfor:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1046', '在线查询', '109', '1', '#', 'F', '0', 'monitor:online:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1047', '批量强退', '109', '2', '#', 'F', '0', 'monitor:online:batchForceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1048', '单条强退', '109', '3', '#', 'F', '0', 'monitor:online:forceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1056', '生成查询', '114', '1', '#', 'F', '0', 'tool:gen:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1057', '生成代码', '114', '2', '#', 'F', '0', 'tool:gen:code', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('2000', '投诉', '2033', '4', '/system/qwbComplaint', 'C', '0', 'system:qwbComplaint:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-04-23 14:57:42', '投訴菜单');
INSERT INTO `sys_menu` VALUES ('2001', '投訴查询', '2000', '1', '#', 'F', '0', 'system:qwbComplaint:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2002', '投訴新增', '2000', '2', '#', 'F', '0', 'system:qwbComplaint:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2003', '投訴修改', '2000', '3', '#', 'F', '0', 'system:qwbComplaint:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2004', '投訴删除', '2000', '4', '#', 'F', '0', 'system:qwbComplaint:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2005', '已交费用', '2034', '2', '/system/qwbCost', 'C', '0', 'system:qwbCost:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-04-25 19:27:44', '費用菜单');
INSERT INTO `sys_menu` VALUES ('2006', '費用查询', '2005', '1', '#', 'F', '0', 'system:qwbCost:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2007', '費用新增', '2005', '2', '#', 'F', '0', 'system:qwbCost:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2008', '費用修改', '2005', '3', '#', 'F', '0', 'system:qwbCost:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2009', '費用删除', '2005', '4', '#', 'F', '0', 'system:qwbCost:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2010', '社区交流', '2030', '1', '/system/qwbExchange', 'C', '0', 'system:qwbExchange:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-04-23 14:58:48', '社區交流菜单');
INSERT INTO `sys_menu` VALUES ('2011', '社區交流查询', '2010', '1', '#', 'F', '0', 'system:qwbExchange:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2012', '社區交流新增', '2010', '2', '#', 'F', '0', 'system:qwbExchange:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2013', '社區交流修改', '2010', '3', '#', 'F', '0', 'system:qwbExchange:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2014', '社區交流删除', '2010', '4', '#', 'F', '0', 'system:qwbExchange:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2015', '小区公告', '2037', '1', '/system/qwbNotice', 'C', '0', 'system:qwbNotice:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-04-23 14:55:07', '小區公告菜单');
INSERT INTO `sys_menu` VALUES ('2016', '小區公告查询', '2015', '1', '#', 'F', '0', 'system:qwbNotice:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2017', '小區公告新增', '2015', '2', '#', 'F', '0', 'system:qwbNotice:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2018', '小區公告修改', '2015', '3', '#', 'F', '0', 'system:qwbNotice:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2019', '小區公告删除', '2015', '4', '#', 'F', '0', 'system:qwbNotice:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2020', '车位出租', '2035', '1', '/system/qwbParkingSpace', 'C', '0', 'system:qwbParkingSpace:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-04-23 14:58:19', '車位租用菜单');
INSERT INTO `sys_menu` VALUES ('2021', '車位租用查询', '2020', '1', '#', 'F', '0', 'system:qwbParkingSpace:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2022', '車位租用新增', '2020', '2', '#', 'F', '0', 'system:qwbParkingSpace:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2023', '車位租用修改', '2020', '3', '#', 'F', '0', 'system:qwbParkingSpace:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2024', '車位租用删除', '2020', '4', '#', 'F', '0', 'system:qwbParkingSpace:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2025', '维修', '2036', '1', '/system/qwbRepair', 'C', '0', 'system:qwbRepair:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-04-23 14:58:32', '維修菜单');
INSERT INTO `sys_menu` VALUES ('2026', '維修查询', '2025', '1', '#', 'F', '0', 'system:qwbRepair:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2027', '維修新增', '2025', '2', '#', 'F', '0', 'system:qwbRepair:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2028', '維修修改', '2025', '3', '#', 'F', '0', 'system:qwbRepair:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2029', '維修删除', '2025', '4', '#', 'F', '0', 'system:qwbRepair:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2030', '社区交流模块', '0', '5', '#', 'M', '0', '', 'fa fa-address-book-o', 'admin', '2019-04-23 13:58:35', 'admin', '2019-04-23 14:56:21', '');
INSERT INTO `sys_menu` VALUES ('2033', '投诉管理模块', '0', '4', '#', 'M', '0', '', 'fa fa-bell', 'admin', '2019-04-23 14:44:24', 'admin', '2019-04-23 14:46:24', '');
INSERT INTO `sys_menu` VALUES ('2034', '交费管理模块', '0', '4', '#', 'M', '0', '', 'fa fa-tasks', 'admin', '2019-04-23 14:49:06', 'admin', '2019-04-25 19:29:06', '');
INSERT INTO `sys_menu` VALUES ('2035', '车位租用模块', '0', '4', '#', 'M', '0', null, 'fa fa-automobile', 'admin', '2019-04-23 14:51:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('2036', '维修处理模块', '0', '4', '#', 'M', '0', null, 'fa fa-wrench', 'admin', '2019-04-23 14:52:42', '', null, '');
INSERT INTO `sys_menu` VALUES ('2037', '公告发布模块', '0', '4', '#', 'M', '0', null, 'fa fa-archive', 'admin', '2019-04-23 14:54:15', '', null, '');
INSERT INTO `sys_menu` VALUES ('2038', '用户信息管理模块', '0', '1', '#', 'M', '0', '', 'fa fa-male', 'admin', '2019-04-23 16:45:20', 'admin', '2019-04-23 16:47:24', '');
INSERT INTO `sys_menu` VALUES ('2039', '交费通知', '2034', '1', '/system/qwbCost/noCostDeal', 'C', '0', 'system:qwbCost:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-04-25 19:27:27', '費用菜单');
INSERT INTO `sys_menu` VALUES ('2040', '費用查询', '2039', '1', '#', 'F', '0', 'system:qwbCost:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2041', '費用新增', '2039', '2', '#', 'F', '0', 'system:qwbCost:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2042', '費用修改', '2039', '3', '#', 'F', '0', 'system:qwbCost:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2043', '費用删除', '2039', '4', '#', 'F', '0', 'system:qwbCost:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) DEFAULT NULL COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES ('1', '温馨提醒：2018-07-01 若依新版本发布啦', '2', '新版本内容', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');
INSERT INTO `sys_notice` VALUES ('2', '维护通知：2018-07-01 若依系统凌晨维护', '1', '维护内容', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=390 DEFAULT CHARSET=utf8 COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES ('100', '代码生成', '8', 'GenController.batchGenCode()', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"qwb_repair,qwb_parking_space,qwb_exchange,qwb_cost,qwb_complaint,qwb_notice\"]}', '0', null, '2019-04-23 13:50:51');
INSERT INTO `sys_oper_log` VALUES ('101', '菜单管理', '2', 'MenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"104\"],\"parentId\":[\"1\"],\"menuType\":[\"C\"],\"menuName\":[\"岗位管理\"],\"url\":[\"/system/post\"],\"perms\":[\"system:post:view\"],\"orderNum\":[\"5\"],\"icon\":[\"#\"],\"visible\":[\"1\"]}', '0', null, '2019-04-23 13:54:07');
INSERT INTO `sys_oper_log` VALUES ('102', '社區交流', '1', 'QwbExchangeController.addSave()', '1', 'admin', '研发部门', '/system/qwbExchange/add', '127.0.0.1', '内网IP', '{\"name\":[\" 1\"],\"creationTime\":[\"2019\"],\"content\":[\"請問\"],\"state\":[\"0\"]}', '0', null, '2019-04-23 13:57:45');
INSERT INTO `sys_oper_log` VALUES ('103', '菜单管理', '1', 'MenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"交流\"],\"url\":[\"\"],\"perms\":[\"\"],\"orderNum\":[\"5\"],\"icon\":[\"fa fa-address-book-o\"],\"visible\":[\"0\"]}', '0', null, '2019-04-23 13:58:35');
INSERT INTO `sys_oper_log` VALUES ('104', '菜单管理', '2', 'MenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2010\"],\"parentId\":[\"2030\"],\"menuType\":[\"C\"],\"menuName\":[\"社區交流\"],\"url\":[\"/system/qwbExchange\"],\"perms\":[\"system:qwbExchange:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-04-23 13:58:48');
INSERT INTO `sys_oper_log` VALUES ('105', '部门管理', '2', 'com.ruoyi.project.system.dept.controller.DeptController.editSave()', '1', 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"100\"],\"parentId\":[\"0\"],\"parentName\":[\"无\"],\"deptName\":[\"小区\"],\"orderNum\":[\"0\"],\"leader\":[\"若依\"],\"phone\":[\"15888888888\"],\"email\":[\"ry@qq.com\"],\"status\":[\"0\"]}', '0', null, '2019-04-23 14:02:57');
INSERT INTO `sys_oper_log` VALUES ('106', '部门管理', '2', 'com.ruoyi.project.system.dept.controller.DeptController.editSave()', '1', 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"101\"],\"parentId\":[\"100\"],\"parentName\":[\"小区\"],\"deptName\":[\"管理部门\"],\"orderNum\":[\"1\"],\"leader\":[\"若依\"],\"phone\":[\"15888888888\"],\"email\":[\"ry@qq.com\"],\"status\":[\"0\"]}', '0', null, '2019-04-23 14:03:15');
INSERT INTO `sys_oper_log` VALUES ('107', '部门管理', '3', 'com.ruoyi.project.system.dept.controller.DeptController.remove()', '1', 'admin', '研发部门', '/system/dept/remove/102', '127.0.0.1', '内网IP', '{}', '0', null, '2019-04-23 14:03:33');
INSERT INTO `sys_oper_log` VALUES ('108', '部门管理', '3', 'com.ruoyi.project.system.dept.controller.DeptController.remove()', '1', 'admin', '研发部门', '/system/dept/remove/108', '127.0.0.1', '内网IP', '{}', '0', null, '2019-04-23 14:03:42');
INSERT INTO `sys_oper_log` VALUES ('109', '部门管理', '3', 'com.ruoyi.project.system.dept.controller.DeptController.remove()', '1', 'admin', '研发部门', '/system/dept/remove/109', '127.0.0.1', '内网IP', '{}', '0', null, '2019-04-23 14:03:48');
INSERT INTO `sys_oper_log` VALUES ('110', '部门管理', '3', 'com.ruoyi.project.system.dept.controller.DeptController.remove()', '1', 'admin', '研发部门', '/system/dept/remove/102', '127.0.0.1', '内网IP', '{}', '0', null, '2019-04-23 14:03:56');
INSERT INTO `sys_oper_log` VALUES ('111', '部门管理', '3', 'com.ruoyi.project.system.dept.controller.DeptController.remove()', '1', 'admin', '研发部门', '/system/dept/remove/107', '127.0.0.1', '内网IP', '{}', '0', null, '2019-04-23 14:04:04');
INSERT INTO `sys_oper_log` VALUES ('112', '部门管理', '3', 'com.ruoyi.project.system.dept.controller.DeptController.remove()', '1', 'admin', '研发部门', '/system/dept/remove/106', '127.0.0.1', '内网IP', '{}', '0', null, '2019-04-23 14:04:09');
INSERT INTO `sys_oper_log` VALUES ('113', '部门管理', '3', 'com.ruoyi.project.system.dept.controller.DeptController.remove()', '1', 'admin', '研发部门', '/system/dept/remove/105', '127.0.0.1', '内网IP', '{}', '0', null, '2019-04-23 14:04:14');
INSERT INTO `sys_oper_log` VALUES ('114', '部门管理', '3', 'com.ruoyi.project.system.dept.controller.DeptController.remove()', '1', 'admin', '研发部门', '/system/dept/remove/104', '127.0.0.1', '内网IP', '{}', '0', null, '2019-04-23 14:04:23');
INSERT INTO `sys_oper_log` VALUES ('115', '部门管理', '3', 'com.ruoyi.project.system.dept.controller.DeptController.remove()', '1', 'admin', '研发部门', '/system/dept/remove/103', '127.0.0.1', '内网IP', '{}', '0', null, '2019-04-23 14:04:28');
INSERT INTO `sys_oper_log` VALUES ('116', '菜单管理', '2', 'MenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"104\"],\"parentId\":[\"1\"],\"menuType\":[\"C\"],\"menuName\":[\"岗位管理\"],\"url\":[\"/system/post\"],\"perms\":[\"system:post:view\"],\"orderNum\":[\"5\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-04-23 14:04:50');
INSERT INTO `sys_oper_log` VALUES ('117', '岗位管理', '3', 'com.ruoyi.project.system.post.controller.PostController.remove()', '1', 'admin', '研发部门', '/system/post/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"4\"]}', '0', null, '2019-04-23 14:05:08');
INSERT INTO `sys_oper_log` VALUES ('118', '岗位管理', '3', 'com.ruoyi.project.system.post.controller.PostController.remove()', '1', 'admin', '研发部门', '/system/post/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3\"]}', '0', null, '2019-04-23 14:05:11');
INSERT INTO `sys_oper_log` VALUES ('119', '岗位管理', '3', 'com.ruoyi.project.system.post.controller.PostController.remove()', '1', 'admin', '研发部门', '/system/post/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', '0', null, '2019-04-23 14:05:14');
INSERT INTO `sys_oper_log` VALUES ('120', '岗位管理', '3', 'com.ruoyi.project.system.post.controller.PostController.remove()', '1', 'admin', '研发部门', '/system/post/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', '0', null, '2019-04-23 14:05:17');
INSERT INTO `sys_oper_log` VALUES ('121', '角色管理', '2', 'RoleController.editSave()', '1', 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"2030,2010,2011,2012,2013\"]}', '0', null, '2019-04-23 14:17:31');
INSERT INTO `sys_oper_log` VALUES ('122', '菜单管理', '1', 'MenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"交流1\"],\"url\":[\"\"],\"perms\":[\"\"],\"orderNum\":[\"6\"],\"icon\":[\"fa fa-adjust\"],\"visible\":[\"0\"]}', '0', null, '2019-04-23 14:19:29');
INSERT INTO `sys_oper_log` VALUES ('123', '菜单管理', '1', 'MenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2031\"],\"menuType\":[\"C\"],\"menuName\":[\"交流1\"],\"url\":[\"index\"],\"perms\":[\"\"],\"orderNum\":[\"0\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '0', null, '2019-04-23 14:20:02');
INSERT INTO `sys_oper_log` VALUES ('124', '菜单管理', '2', 'MenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2032\"],\"parentId\":[\"2031\"],\"menuType\":[\"C\"],\"menuName\":[\"交流1\"],\"url\":[\"/system/main\"],\"perms\":[\"\"],\"orderNum\":[\"0\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-04-23 14:20:54');
INSERT INTO `sys_oper_log` VALUES ('125', '角色管理', '2', 'RoleController.editSave()', '1', 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"2030,2010,2011,2012,2013,2031,2032\"]}', '0', null, '2019-04-23 14:21:32');
INSERT INTO `sys_oper_log` VALUES ('126', '重置密码', '2', 'UserController.resetPwd()', '1', 'admin', '研发部门', '/system/user/resetPwd/1', '127.0.0.1', '内网IP', '{}', '0', null, '2019-04-23 14:22:03');
INSERT INTO `sys_oper_log` VALUES ('127', '菜单管理', '2', 'MenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2000\"],\"parentId\":[\"1\"],\"menuType\":[\"M\"],\"menuName\":[\"投訴\"],\"url\":[\"/system/qwbComplaint\"],\"perms\":[\"system:qwbComplaint:view\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-04-23 14:41:19');
INSERT INTO `sys_oper_log` VALUES ('128', '菜单管理', '1', 'MenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"投诉管理模块\"],\"url\":[\"\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '0', null, '2019-04-23 14:44:24');
INSERT INTO `sys_oper_log` VALUES ('129', '菜单管理', '2', 'MenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2000\"],\"parentId\":[\"2033\"],\"menuType\":[\"C\"],\"menuName\":[\"投訴\"],\"url\":[\"/system/qwbComplaint\"],\"perms\":[\"system:qwbComplaint:view\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-04-23 14:44:55');
INSERT INTO `sys_oper_log` VALUES ('130', '菜单管理', '2', 'MenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2033\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"投诉管理模块\"],\"url\":[\"#\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-bell\"],\"visible\":[\"0\"]}', '0', null, '2019-04-23 14:46:24');
INSERT INTO `sys_oper_log` VALUES ('131', '菜单管理', '1', 'MenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"缴费管理模块\"],\"url\":[\"\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"fa fa-tasks\"],\"visible\":[\"0\"]}', '0', null, '2019-04-23 14:49:06');
INSERT INTO `sys_oper_log` VALUES ('132', '菜单管理', '2', 'MenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2034\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"缴费管理模块\"],\"url\":[\"#\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-tasks\"],\"visible\":[\"0\"]}', '0', null, '2019-04-23 14:49:37');
INSERT INTO `sys_oper_log` VALUES ('133', '菜单管理', '2', 'MenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2005\"],\"parentId\":[\"2034\"],\"menuType\":[\"C\"],\"menuName\":[\"費用\"],\"url\":[\"/system/qwbCost\"],\"perms\":[\"system:qwbCost:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-04-23 14:50:30');
INSERT INTO `sys_oper_log` VALUES ('134', '菜单管理', '1', 'MenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"车位租用模块\"],\"url\":[\"\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-automobile\"],\"visible\":[\"0\"]}', '0', null, '2019-04-23 14:51:18');
INSERT INTO `sys_oper_log` VALUES ('135', '菜单管理', '2', 'MenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2020\"],\"parentId\":[\"2035\"],\"menuType\":[\"C\"],\"menuName\":[\"車位租用\"],\"url\":[\"/system/qwbParkingSpace\"],\"perms\":[\"system:qwbParkingSpace:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-04-23 14:51:43');
INSERT INTO `sys_oper_log` VALUES ('136', '菜单管理', '1', 'MenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"维修处理模块\"],\"url\":[\"\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-wrench\"],\"visible\":[\"0\"]}', '0', null, '2019-04-23 14:52:42');
INSERT INTO `sys_oper_log` VALUES ('137', '菜单管理', '2', 'MenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2025\"],\"parentId\":[\"2036\"],\"menuType\":[\"C\"],\"menuName\":[\"維修\"],\"url\":[\"/system/qwbRepair\"],\"perms\":[\"system:qwbRepair:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-04-23 14:53:06');
INSERT INTO `sys_oper_log` VALUES ('138', '菜单管理', '1', 'MenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"公告发布模块\"],\"url\":[\"\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-archive\"],\"visible\":[\"0\"]}', '0', null, '2019-04-23 14:54:15');
INSERT INTO `sys_oper_log` VALUES ('139', '菜单管理', '2', 'MenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2015\"],\"parentId\":[\"3\"],\"menuType\":[\"C\"],\"menuName\":[\"小区公告\"],\"url\":[\"/system/qwbNotice\"],\"perms\":[\"system:qwbNotice:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-04-23 14:54:32');
INSERT INTO `sys_oper_log` VALUES ('140', '菜单管理', '2', 'MenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2015\"],\"parentId\":[\"2037\"],\"menuType\":[\"C\"],\"menuName\":[\"小区公告\"],\"url\":[\"/system/qwbNotice\"],\"perms\":[\"system:qwbNotice:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-04-23 14:55:07');
INSERT INTO `sys_oper_log` VALUES ('141', '菜单管理', '2', 'MenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2030\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"交流\"],\"url\":[\"#\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-address-book-o\"],\"visible\":[\"0\"]}', '0', null, '2019-04-23 14:55:43');
INSERT INTO `sys_oper_log` VALUES ('142', '菜单管理', '2', 'MenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2030\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"社区交流模块\"],\"url\":[\"#\"],\"perms\":[\"\"],\"orderNum\":[\"5\"],\"icon\":[\"fa fa-address-book-o\"],\"visible\":[\"0\"]}', '0', null, '2019-04-23 14:56:21');
INSERT INTO `sys_oper_log` VALUES ('143', '菜单管理', '2', 'MenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2000\"],\"parentId\":[\"2033\"],\"menuType\":[\"C\"],\"menuName\":[\"投诉\"],\"url\":[\"/system/qwbComplaint\"],\"perms\":[\"system:qwbComplaint:view\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-04-23 14:57:42');
INSERT INTO `sys_oper_log` VALUES ('144', '菜单管理', '2', 'MenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2005\"],\"parentId\":[\"2034\"],\"menuType\":[\"C\"],\"menuName\":[\"缴费\"],\"url\":[\"/system/qwbCost\"],\"perms\":[\"system:qwbCost:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-04-23 14:58:00');
INSERT INTO `sys_oper_log` VALUES ('145', '菜单管理', '2', 'MenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2020\"],\"parentId\":[\"2035\"],\"menuType\":[\"C\"],\"menuName\":[\"车位出租\"],\"url\":[\"/system/qwbParkingSpace\"],\"perms\":[\"system:qwbParkingSpace:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-04-23 14:58:19');
INSERT INTO `sys_oper_log` VALUES ('146', '菜单管理', '2', 'MenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2025\"],\"parentId\":[\"2036\"],\"menuType\":[\"C\"],\"menuName\":[\"维修\"],\"url\":[\"/system/qwbRepair\"],\"perms\":[\"system:qwbRepair:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-04-23 14:58:33');
INSERT INTO `sys_oper_log` VALUES ('147', '菜单管理', '2', 'MenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2010\"],\"parentId\":[\"2030\"],\"menuType\":[\"C\"],\"menuName\":[\"社区交流\"],\"url\":[\"/system/qwbExchange\"],\"perms\":[\"system:qwbExchange:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-04-23 14:58:48');
INSERT INTO `sys_oper_log` VALUES ('148', '費用', '1', 'QwbCostController.addSave()', '1', 'admin', '研发部门', '/system/qwbCost/add', '127.0.0.1', '内网IP', '{\"name\":[\"乔伟博\"],\"createDate\":[\"2019-4-3\"],\"electricityCosts\":[\"100\"],\"waterCosts\":[\"100\"],\"gasCosts\":[\"100\"],\"propertyCosts\":[\"100\"],\"paymentTime\":[\"\"],\"state\":[\"\"]}', '0', null, '2019-04-23 15:16:04');
INSERT INTO `sys_oper_log` VALUES ('149', '重置密码', '2', 'UserController.resetPwd()', '1', 'admin', '研发部门', '/system/user/resetPwd/2', '127.0.0.1', '内网IP', '{}', '0', null, '2019-04-23 15:17:10');
INSERT INTO `sys_oper_log` VALUES ('150', '重置密码', '2', 'UserController.resetPwd()', '1', 'admin', '研发部门', '/system/user/resetPwd', '127.0.0.1', '内网IP', '{\"userId\":[\"2\"],\"loginName\":[\"ry\"],\"password\":[\"111111\"]}', '0', null, '2019-04-23 15:17:15');
INSERT INTO `sys_oper_log` VALUES ('151', '角色管理', '2', 'RoleController.editSave()', '1', 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"2033,2000,2001,2002,2003,2004,2034,2005,2006,2007,2008,2009,2035,2020,2021,2022,2023,2024,2036,2025,2026,2027,2028,2029,2030,2010,2011,2012,2013\"]}', '0', null, '2019-04-23 15:18:42');
INSERT INTO `sys_oper_log` VALUES ('152', '角色管理', '2', 'RoleController.editSave()', '1', 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"2033,2000,2001,2002,2003,2004,2034,2005,2006,2008,2035,2020,2021,2022,2023,2024,2036,2025,2026,2027,2028,2029,2030,2010,2011,2012,2013\"]}', '0', null, '2019-04-23 15:34:41');
INSERT INTO `sys_oper_log` VALUES ('153', '費用', '2', 'QwbCostController.editSave()', '1', 'ry', '测试部门', '/system/qwbCost/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"name\":[\"乔伟博\"],\"createDate\":[\"2019-4-3\"],\"electricityCosts\":[\"100.0\"],\"waterCosts\":[\"100.0\"],\"gasCosts\":[\"100.0\"],\"propertyCosts\":[\"100.0\"],\"paymentTime\":[\"\"],\"state\":[\"1\"]}', '0', null, '2019-04-23 15:39:23');
INSERT INTO `sys_oper_log` VALUES ('154', '費用', '1', 'QwbCostController.addSave()', '1', 'admin', '研发部门', '/system/qwbCost/add', '127.0.0.1', '内网IP', '{\"name\":[\"ry\"],\"createDate\":[\"\"],\"electricityCosts\":[\"\"],\"waterCosts\":[\"\"],\"gasCosts\":[\"\"],\"propertyCosts\":[\"\"],\"paymentTime\":[\"\"],\"state\":[\"\"]}', '0', null, '2019-04-23 16:22:20');
INSERT INTO `sys_oper_log` VALUES ('155', '菜单管理', '1', 'MenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"用户信息管理模块\"],\"url\":[\"\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-male\"],\"visible\":[\"0\"]}', '0', null, '2019-04-23 16:45:20');
INSERT INTO `sys_oper_log` VALUES ('156', '菜单管理', '2', 'MenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"100\"],\"parentId\":[\"2038\"],\"menuType\":[\"C\"],\"menuName\":[\"用户管理\"],\"url\":[\"/system/user\"],\"perms\":[\"system:user:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-04-23 16:45:52');
INSERT INTO `sys_oper_log` VALUES ('157', '菜单管理', '2', 'MenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统管理\"],\"url\":[\"#\"],\"perms\":[\"\"],\"orderNum\":[\"7\"],\"icon\":[\"fa fa-gear\"],\"visible\":[\"0\"]}', '0', null, '2019-04-23 16:46:45');
INSERT INTO `sys_oper_log` VALUES ('158', '菜单管理', '2', 'MenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统监控\"],\"url\":[\"#\"],\"perms\":[\"\"],\"orderNum\":[\"7\"],\"icon\":[\"fa fa-video-camera\"],\"visible\":[\"0\"]}', '0', null, '2019-04-23 16:47:04');
INSERT INTO `sys_oper_log` VALUES ('159', '菜单管理', '2', 'MenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"3\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统工具\"],\"url\":[\"#\"],\"perms\":[\"\"],\"orderNum\":[\"7\"],\"icon\":[\"fa fa-bars\"],\"visible\":[\"0\"]}', '0', null, '2019-04-23 16:47:12');
INSERT INTO `sys_oper_log` VALUES ('160', '菜单管理', '2', 'MenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2038\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"用户信息管理模块\"],\"url\":[\"#\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-male\"],\"visible\":[\"0\"]}', '0', null, '2019-04-23 16:47:24');
INSERT INTO `sys_oper_log` VALUES ('161', '用户管理', '1', 'UserController.addSave()', '1', 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"userName\":[\"乔伟博\"],\"phonenumber\":[\"18738780193\"],\"email\":[\"3152618907@qq.com\"],\"loginName\":[\"qwb\"],\"password\":[\"111111\"],\"sex\":[\"0\"],\"role\":[\"2\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"\"]}', '0', null, '2019-04-23 16:55:32');
INSERT INTO `sys_oper_log` VALUES ('162', '用户管理', '1', 'UserController.addSave()', '1', 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"userName\":[\"乔伟博\"],\"phonenumber\":[\"13677860590\"],\"email\":[\"2615289151@qq.com\"],\"loginName\":[\"乔伟博\"],\"password\":[\"admin123\"],\"sex\":[\"0\"],\"role\":[\"2\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"\"]}', '0', null, '2019-04-23 16:58:20');
INSERT INTO `sys_oper_log` VALUES ('163', '用户管理', '3', 'UserController.remove()', '1', 'admin', '研发部门', '/system/user/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"101\"]}', '0', null, '2019-04-23 17:00:07');
INSERT INTO `sys_oper_log` VALUES ('164', '費用', '1', 'QwbCostController.addSave()', '1', 'admin', '研发部门', '/system/qwbCost/add', '127.0.0.1', '内网IP', '{\"name\":[\"qwb\"],\"createDate\":[\"\"],\"electricityCosts\":[\"\"],\"waterCosts\":[\"\"],\"gasCosts\":[\"\"],\"propertyCosts\":[\"\"],\"paymentTime\":[\"\"],\"state\":[\"\"]}', '0', null, '2019-04-23 17:03:31');
INSERT INTO `sys_oper_log` VALUES ('165', '角色管理', '2', 'RoleController.editSave()', '1', 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"2038,100,1000,1002,1004,1006,2033,2000,2001,2002,2003,2004,2034,2005,2006,2008,2035,2020,2021,2022,2023,2024,2036,2025,2026,2027,2028,2029,2030,2010,2011,2012,2013\"]}', '0', null, '2019-04-23 17:09:04');
INSERT INTO `sys_oper_log` VALUES ('166', '用户管理', '2', 'UserController.editSave()', '1', 'qwb', null, '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"2\"],\"deptId\":[\"105\"],\"userName\":[\"若依\"],\"phonenumber\":[\"15666666666\"],\"email\":[\"ry@qq.com\"],\"loginName\":[\"ry\"],\"sex\":[\"1\"],\"role\":[\"2\"],\"remark\":[\"测试员\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"\"]}', '0', null, '2019-04-23 17:10:27');
INSERT INTO `sys_oper_log` VALUES ('167', '用户管理', '1', 'UserController.addSave()', '1', 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"userName\":[\"ry\"],\"phonenumber\":[\"13677860990\"],\"email\":[\"3332618907@qq.com\"],\"loginName\":[\"ry123\"],\"password\":[\"111111\"],\"sex\":[\"0\"],\"role\":[\"2\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"\"]}', '0', null, '2019-04-23 17:40:09');
INSERT INTO `sys_oper_log` VALUES ('168', '角色管理', '2', 'RoleController.editSave()', '1', 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"2033,2000,2001,2002,2003,2004,2034,2005,2006,2008,2035,2020,2021,2022,2023,2024,2036,2025,2026,2027,2028,2029,2030,2010,2011,2012,2013\"]}', '0', null, '2019-04-23 17:42:07');
INSERT INTO `sys_oper_log` VALUES ('169', '角色管理', '2', 'RoleController.editSave()', '1', 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"2033,2000,2001,2002,2003,2004,2034,2005,2006,2008,2035,2020,2021,2022,2023,2024,2036,2025,2026,2027,2028,2029,2037,2015,2016,2017,2018,2019,2030,2010,2011,2012,2013\"]}', '0', null, '2019-04-23 17:43:47');
INSERT INTO `sys_oper_log` VALUES ('170', '用户管理', '2', 'UserController.editSave()', '1', 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"deptId\":[\"103\"],\"userName\":[\"乔总\"],\"phonenumber\":[\"15888888888\"],\"email\":[\"ry@163.com\"],\"loginName\":[\"admin\"],\"sex\":[\"0\"],\"role\":[\"1\"],\"remark\":[\"管理员\"],\"status\":[\"0\"],\"roleIds\":[\"1\"],\"postIds\":[\"1\"]}', '0', null, '2019-04-23 19:08:12');
INSERT INTO `sys_oper_log` VALUES ('171', '用户管理', '2', 'UserController.editSave()', '1', 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"2\"],\"deptId\":[\"105\"],\"userName\":[\"张三\"],\"phonenumber\":[\"15666666666\"],\"email\":[\"zhangsan@qq.com\"],\"loginName\":[\"ry\"],\"sex\":[\"0\"],\"role\":[\"2\"],\"remark\":[\"测试员\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"\"]}', '0', null, '2019-04-23 19:09:05');
INSERT INTO `sys_oper_log` VALUES ('172', '用户管理', '2', 'UserController.editSave()', '1', 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"100\"],\"deptId\":[\"\"],\"userName\":[\"乔伟博\"],\"phonenumber\":[\"18738780193\"],\"email\":[\"3152618907@qq.com\"],\"loginName\":[\"qwb\"],\"sex\":[\"0\"],\"area\":[\"100\"],\"floor\":[\"1\"],\"unit\":[\"1\"],\"room\":[\"1\"],\"moveIndate\":[\"2019-4-21\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"\"]}', '0', null, '2019-04-23 20:34:31');
INSERT INTO `sys_oper_log` VALUES ('173', '用户管理', '2', 'UserController.editSave()', '1', 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"100\"],\"deptId\":[\"\"],\"userName\":[\"乔伟博\"],\"phonenumber\":[\"18738780193\"],\"email\":[\"3152618907@qq.com\"],\"loginName\":[\"qwb\"],\"sex\":[\"0\"],\"area\":[\"101\"],\"floor\":[\"\"],\"unit\":[\"\"],\"room\":[\"\"],\"moveIndate\":[\"\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"\"]}', '0', null, '2019-04-23 20:35:50');
INSERT INTO `sys_oper_log` VALUES ('174', '用户管理', '5', 'UserController.export()', '1', 'admin', '研发部门', '/system/user/export', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"\"],\"params[beginTime]\":[\"\"],\"params[endTime]\":[\"\"]}', '0', null, '2019-04-23 20:41:40');
INSERT INTO `sys_oper_log` VALUES ('175', '用户管理', '2', 'UserController.editSave()', '1', 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"102\"],\"deptId\":[\"\"],\"userName\":[\"ry\"],\"phonenumber\":[\"13677860990\"],\"email\":[\"3332618907@qq.com\"],\"loginName\":[\"ry123\"],\"sex\":[\"0\"],\"area\":[\"99\"],\"floor\":[\"2\"],\"unit\":[\"1\"],\"room\":[\"1\"],\"moveIndate\":[\"2018-4-21\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"\"]}', '0', null, '2019-04-23 20:43:05');
INSERT INTO `sys_oper_log` VALUES ('176', '个人信息', '2', 'ProfileController.updateAvatar()', '1', 'admin', '研发部门', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', '0', null, '2019-04-23 20:57:40');
INSERT INTO `sys_oper_log` VALUES ('177', '个人信息', '2', 'ProfileController.updateAvatar()', '1', 'ry', '测试部门', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', '0', null, '2019-04-23 21:11:48');
INSERT INTO `sys_oper_log` VALUES ('178', '个人信息', '2', 'ProfileController.updateAvatar()', '1', 'ry', '测试部门', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', '0', null, '2019-04-23 21:11:56');
INSERT INTO `sys_oper_log` VALUES ('179', '个人信息', '2', 'ProfileController.updateAvatar()', '1', 'ry', '测试部门', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', '0', null, '2019-04-23 21:12:09');
INSERT INTO `sys_oper_log` VALUES ('180', '費用', '2', 'QwbCostController.editSave()', '1', 'qwb', null, '/system/qwbCost/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"name\":[\"乔伟博\"],\"createDate\":[\"2019-4-3\"],\"electricityCosts\":[\"100.0\"],\"waterCosts\":[\"100.0\"],\"gasCosts\":[\"100.0\"],\"propertyCosts\":[\"100.0\"],\"paymentTime\":[\"2019-4-23\"],\"state\":[\"1\"]}', '0', null, '2019-04-23 21:57:26');
INSERT INTO `sys_oper_log` VALUES ('181', '用户管理', '2', 'UserController.editSave()', '1', 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"2\"],\"deptId\":[\"105\"],\"userName\":[\"张三\"],\"phonenumber\":[\"15666666666\"],\"email\":[\"zs@qq.com\"],\"loginName\":[\"ry\"],\"sex\":[\"0\"],\"area\":[\"\"],\"floor\":[\"\"],\"unit\":[\"\"],\"room\":[\"\"],\"moveIndate\":[\"\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"\"]}', '0', null, '2019-04-23 22:02:42');
INSERT INTO `sys_oper_log` VALUES ('182', '用户管理', '2', 'UserController.editSave()', '1', 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"2\"],\"deptId\":[\"105\"],\"userName\":[\"张三\"],\"phonenumber\":[\"15666666666\"],\"email\":[\"zs@qq.com\"],\"loginName\":[\"ry\"],\"sex\":[\"0\"],\"area\":[\"87\"],\"floor\":[\"3\"],\"unit\":[\"3\"],\"room\":[\"3301\"],\"moveIndate\":[\"\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"\"]}', '0', null, '2019-04-23 22:03:12');
INSERT INTO `sys_oper_log` VALUES ('183', '用户管理', '2', 'UserController.editSave()', '1', 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"2\"],\"deptId\":[\"105\"],\"userName\":[\"张三\"],\"phonenumber\":[\"15666666666\"],\"email\":[\"zs@qq.com\"],\"loginName\":[\"ry\"],\"sex\":[\"0\"],\"area\":[\"\"],\"floor\":[\"\"],\"unit\":[\"\"],\"room\":[\"\"],\"moveIndate\":[\"2017-4-21\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"\"]}', '0', null, '2019-04-23 22:04:57');
INSERT INTO `sys_oper_log` VALUES ('184', '用户管理', '2', 'UserController.editSave()', '1', 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"100\"],\"deptId\":[\"\"],\"userName\":[\"乔伟博\"],\"phonenumber\":[\"18738780193\"],\"email\":[\"3152618907@qq.com\"],\"loginName\":[\"qwb\"],\"sex\":[\"0\"],\"area\":[\"\"],\"floor\":[\"\"],\"unit\":[\"\"],\"room\":[\"1101\"],\"moveIndate\":[\"\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"\"]}', '0', null, '2019-04-23 22:08:34');
INSERT INTO `sys_oper_log` VALUES ('185', '用户管理', '2', 'UserController.editSave()', '1', 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"102\"],\"deptId\":[\"\"],\"userName\":[\"ry\"],\"phonenumber\":[\"13677860990\"],\"email\":[\"3332618907@qq.com\"],\"loginName\":[\"ry123\"],\"sex\":[\"0\"],\"area\":[\"\"],\"floor\":[\"\"],\"unit\":[\"\"],\"room\":[\"2101\"],\"moveIndate\":[\"\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"\"]}', '0', null, '2019-04-23 22:08:54');
INSERT INTO `sys_oper_log` VALUES ('186', '用户管理', '2', 'UserController.editSave()', '1', 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"102\"],\"deptId\":[\"\"],\"userName\":[\"ry\"],\"phonenumber\":[\"13677860990\"],\"email\":[\"3332618907@qq.com\"],\"loginName\":[\"ry123\"],\"sex\":[\"0\"],\"area\":[\"\"],\"floor\":[\"\"],\"unit\":[\"\"],\"room\":[\"1101\"],\"moveIndate\":[\"\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"\"]}', '0', null, '2019-04-24 08:50:14');
INSERT INTO `sys_oper_log` VALUES ('187', '用户管理', '2', 'UserController.editSave()', '1', 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"102\"],\"deptId\":[\"\"],\"userName\":[\"ry\"],\"phonenumber\":[\"13677860990\"],\"email\":[\"3332618907@qq.com\"],\"loginName\":[\"ry123\"],\"sex\":[\"0\"],\"area\":[\"\"],\"floor\":[\"\"],\"unit\":[\"\"],\"room\":[\"2101\"],\"moveIndate\":[\"\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"\"]}', '0', null, '2019-04-24 08:50:38');
INSERT INTO `sys_oper_log` VALUES ('188', '費用', '3', 'QwbCostController.remove()', '1', 'admin', '研发部门', '/system/qwbCost/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3\"]}', '0', null, '2019-04-24 10:39:41');
INSERT INTO `sys_oper_log` VALUES ('189', '費用', '2', 'QwbCostController.editSave()', '1', 'admin', '研发部门', '/system/qwbCost/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"name\":[\"乔伟博\"],\"room\":[\"1101\"],\"createDate\":[\"2019-4-3\"],\"electricityCosts\":[\"100.0\"],\"waterCosts\":[\"100.0\"],\"gasCosts\":[\"100.0\"],\"propertyCosts\":[\"100.0\"],\"paymentTime\":[\"2019-4-23\"],\"state\":[\"1\"]}', '0', null, '2019-04-24 10:47:26');
INSERT INTO `sys_oper_log` VALUES ('190', '費用', '2', 'QwbCostController.editSave()', '1', 'admin', '研发部门', '/system/qwbCost/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"name\":[\"ry\"],\"room\":[\"\"],\"createDate\":[\"\"],\"electricityCosts\":[\"\"],\"waterCosts\":[\"\"],\"gasCosts\":[\"\"],\"propertyCosts\":[\"\"],\"paymentTime\":[\"\"],\"state\":[\"\"]}', '0', null, '2019-04-24 10:47:43');
INSERT INTO `sys_oper_log` VALUES ('191', '費用', '2', 'QwbCostController.editSave()', '1', 'admin', '研发部门', '/system/qwbCost/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"name\":[\"ry\"],\"room\":[\"2101\"],\"createDate\":[\"\"],\"electricityCosts\":[\"\"],\"waterCosts\":[\"\"],\"gasCosts\":[\"\"],\"propertyCosts\":[\"\"],\"paymentTime\":[\"\"],\"state\":[\"\"]}', '0', null, '2019-04-24 10:47:54');
INSERT INTO `sys_oper_log` VALUES ('192', '个人信息', '2', 'ProfileController.updateAvatar()', '1', 'qwb', null, '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', '0', null, '2019-04-24 11:00:30');
INSERT INTO `sys_oper_log` VALUES ('193', '个人信息', '2', 'ProfileController.updateAvatar()', '1', 'qwb', null, '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', '0', null, '2019-04-24 13:10:00');
INSERT INTO `sys_oper_log` VALUES ('194', '个人信息', '2', 'ProfileController.update()', '1', 'qwb', null, '/system/user/profile/update', '127.0.0.1', '内网IP', '{\"id\":[\"\"],\"userName\":[\"乔伟博\"],\"sex\":[\"0\"],\"floor\":[\"1\"],\"unit\":[\"1\"],\"room\":[\"1101\"]}', '0', null, '2019-04-24 13:10:03');
INSERT INTO `sys_oper_log` VALUES ('195', '投訴', '1', 'QwbComplaintController.addSave()', '1', 'qwb', null, '/system/qwbComplaint/add', '127.0.0.1', '内网IP', '{\"name\":[\"乔伟博\"],\"room\":[\"\"],\"creationTime\":[\"\"],\"content\":[\"\"],\"remarks\":[\"\"],\"completeTime\":[\"\"],\"state\":[\"\"]}', '0', null, '2019-04-24 14:05:00');
INSERT INTO `sys_oper_log` VALUES ('196', '投訴', '3', 'QwbComplaintController.remove()', '1', 'qwb', null, '/system/qwbComplaint/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', '0', null, '2019-04-24 14:05:05');
INSERT INTO `sys_oper_log` VALUES ('197', '个人信息', '2', 'ProfileController.updateAvatar()', '1', 'qwb', null, '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', '0', null, '2019-04-24 14:06:26');
INSERT INTO `sys_oper_log` VALUES ('198', '个人信息', '2', 'ProfileController.update()', '1', 'qwb', null, '/system/user/profile/update', '127.0.0.1', '内网IP', '{\"id\":[\"\"],\"userName\":[\"乔伟博\"],\"sex\":[\"0\"],\"floor\":[\"1\"],\"unit\":[\"1\"],\"room\":[\"1101\"]}', '0', null, '2019-04-24 14:06:28');
INSERT INTO `sys_oper_log` VALUES ('199', '个人信息', '2', 'ProfileController.updateAvatar()', '1', 'qwb', null, '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', '0', null, '2019-04-24 14:07:22');
INSERT INTO `sys_oper_log` VALUES ('200', '个人信息', '2', 'ProfileController.updateAvatar()', '1', 'qwb', null, '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', '0', null, '2019-04-24 14:08:24');
INSERT INTO `sys_oper_log` VALUES ('201', '投訴', '1', 'QwbComplaintController.addSave()', '1', 'qwb', null, '/system/qwbComplaint/add', '127.0.0.1', '内网IP', '{\"name\":[\"乔伟博\"],\"room\":[\"1101\"],\"creationTime\":[\"2018-4-23\"],\"content\":[\"厨房灯泡坏了\"],\"remarks\":[\"\"],\"completeTime\":[\"\"],\"state\":[\"0\"]}', '0', null, '2019-04-24 14:10:04');
INSERT INTO `sys_oper_log` VALUES ('202', '投訴', '1', 'QwbComplaintController.addSave()', '1', 'ry', '测试部门', '/system/qwbComplaint/add', '127.0.0.1', '内网IP', '{\"name\":[\"张三\"],\"room\":[\"3301\"],\"creationTime\":[\"2017-9-23\"],\"content\":[\"暖气不热\"],\"remarks\":[\"\"],\"completeTime\":[\"\"],\"state\":[\"\"]}', '0', null, '2019-04-24 14:11:37');
INSERT INTO `sys_oper_log` VALUES ('203', '投訴', '2', 'QwbComplaintController.editSave()', '1', 'admin', '研发部门', '/system/qwbComplaint/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"name\":[\"乔伟博\"],\"room\":[\"1101\"],\"creationTime\":[\"2018-4-23\"],\"content\":[\"1102户晚上太吵了\"],\"remarks\":[\"\"],\"completeTime\":[\"\"],\"state\":[\"0\"]}', '0', null, '2019-04-24 14:18:53');
INSERT INTO `sys_oper_log` VALUES ('204', '投訴', '2', 'QwbComplaintController.editSave()', '1', 'admin', '研发部门', '/system/qwbComplaint/edit', '127.0.0.1', '内网IP', '{\"id\":[\"3\"],\"name\":[\"张三\"],\"room\":[\"3301\"],\"creationTime\":[\"2017-9-23\"],\"content\":[\"小区门卫服务态度差\"],\"remarks\":[\"\"],\"completeTime\":[\"\"],\"state\":[\"\"]}', '0', null, '2019-04-24 14:19:38');
INSERT INTO `sys_oper_log` VALUES ('205', '投訴', '2', 'QwbComplaintController.editSave()', '1', 'admin', '研发部门', '/system/qwbComplaint/edit', '127.0.0.1', '内网IP', '{\"id\":[\"3\"],\"name\":[\"张三\"],\"room\":[\"3301\"],\"creationTime\":[\"2017-9-23\"],\"content\":[\"小区门卫服务态度差\"],\"remarks\":[\"\"],\"completeTime\":[\"\"],\"state\":[\"0\"]}', '0', null, '2019-04-24 14:20:00');
INSERT INTO `sys_oper_log` VALUES ('206', '維修', '1', 'QwbRepairController.addSave()', '1', 'qwb', null, '/system/qwbRepair/add', '127.0.0.1', '内网IP', '{\"name\":[\"乔伟博\"],\"room\":[\"1101\"],\"creationTime\":[\"2017-3-4\"],\"content\":[\"客厅灯泡坏了\"],\"remarks\":[\"\"],\"completeTime\":[\"\"],\"state\":[\"\"]}', '0', null, '2019-04-24 14:54:08');
INSERT INTO `sys_oper_log` VALUES ('207', '維修', '1', 'QwbRepairController.addSave()', '1', 'qwb', null, '/system/qwbRepair/add', '127.0.0.1', '内网IP', '{\"name\":[\"乔伟博\"],\"room\":[\"\"],\"creationTime\":[\"\"],\"content\":[\"\"],\"remarks\":[\"\"],\"completeTime\":[\"\"],\"state\":[\"\"]}', '0', null, '2019-04-24 14:56:11');
INSERT INTO `sys_oper_log` VALUES ('208', '維修', '1', 'QwbRepairController.addSave()', '1', 'qwb', null, '/system/qwbRepair/add', '127.0.0.1', '内网IP', '{\"name\":[\"乔伟博\"],\"room\":[\"\"],\"creationTime\":[\"\"],\"content\":[\"\"],\"remarks\":[\"\"],\"completeTime\":[\"\"],\"state\":[\"\"]}', '0', null, '2019-04-24 14:58:00');
INSERT INTO `sys_oper_log` VALUES ('209', '維修', '3', 'QwbRepairController.remove()', '1', 'qwb', null, '/system/qwbRepair/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3\"]}', '0', null, '2019-04-24 15:00:36');
INSERT INTO `sys_oper_log` VALUES ('210', '維修', '3', 'QwbRepairController.remove()', '1', 'qwb', null, '/system/qwbRepair/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', '0', null, '2019-04-24 15:00:37');
INSERT INTO `sys_oper_log` VALUES ('211', '維修', '1', 'QwbRepairController.addSave()', '1', 'qwb', null, '/system/qwbRepair/add', '127.0.0.1', '内网IP', '{\"name\":[\"乔伟博\"],\"creationTime\":[\"\"],\"content\":[\"\"],\"completeTime\":[\"\"],\"remarks\":[\"\"],\"state\":[\"\"]}', '0', null, '2019-04-24 15:19:01');
INSERT INTO `sys_oper_log` VALUES ('212', '維修', '3', 'QwbRepairController.remove()', '1', 'qwb', null, '/system/qwbRepair/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"4\"]}', '0', null, '2019-04-24 15:21:36');
INSERT INTO `sys_oper_log` VALUES ('213', '維修', '1', 'QwbRepairController.addSave()', '1', 'qwb', null, '/system/qwbRepair/add', '127.0.0.1', '内网IP', '{\"name\":[\"\"],\"creationTime\":[\"\"],\"content\":[\"sada\"],\"remarks\":[\"\"],\"completeTime\":[\"\"],\"state\":[\"\"]}', '0', null, '2019-04-24 15:21:42');
INSERT INTO `sys_oper_log` VALUES ('214', '維修', '3', 'QwbRepairController.remove()', '1', 'qwb', null, '/system/qwbRepair/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"5\"]}', '0', null, '2019-04-24 15:22:00');
INSERT INTO `sys_oper_log` VALUES ('215', '維修', '2', 'QwbRepairController.editSave()', '1', 'qwb', null, '/system/qwbRepair/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"name\":[\"乔伟博\"],\"creationTime\":[\"2017-3-4\"],\"content\":[\"客厅灯泡坏了\"],\"remarks\":[\"\"],\"completeTime\":[\"\"],\"state\":[\"\"]}', '0', null, '2019-04-24 15:25:20');
INSERT INTO `sys_oper_log` VALUES ('216', '維修', '2', 'QwbRepairController.editSave()', '1', 'qwb', null, '/system/qwbRepair/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"name\":[\"乔伟博\"],\"creationTime\":[\"2017-3-4\"],\"content\":[\"客厅灯泡坏了\"],\"remarks\":[\"\"],\"completeTime\":[\"\"],\"state\":[\"\"]}', '0', null, '2019-04-24 15:26:26');
INSERT INTO `sys_oper_log` VALUES ('217', '維修', '2', 'QwbRepairController.editSave()', '1', 'qwb', null, '/system/qwbRepair/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"name\":[\"乔伟博\"],\"room\":[\"1101\"],\"creationTime\":[\"2017-3-4\"],\"content\":[\"客厅灯泡坏了\"],\"remarks\":[\"\"],\"completeTime\":[\"\"],\"state\":[\"\"]}', '0', null, '2019-04-24 15:35:04');
INSERT INTO `sys_oper_log` VALUES ('218', '維修', '2', 'QwbRepairController.editSave()', '1', 'qwb', null, '/system/qwbRepair/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"name\":[\"乔伟博\"],\"room\":[\"1101\"],\"creationTime\":[\"2017-3-4\"],\"content\":[\"客厅灯泡坏了\"],\"state\":[\"0\"]}', '0', null, '2019-04-24 15:40:40');
INSERT INTO `sys_oper_log` VALUES ('219', '費用', '1', 'QwbCostController.addSave()', '1', 'admin', '研发部门', '/system/qwbCost/add', '127.0.0.1', '内网IP', '{\"name\":[\"张三\"],\"room\":[\"3301\"],\"createDate\":[\"2019-4-24\"],\"electricityCosts\":[\"10\"],\"waterCosts\":[\"10\"],\"gasCosts\":[\"10\"],\"propertyCosts\":[\"10\"],\"paymentTime\":[\"\"],\"state\":[\"\"]}', '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\r\n### The error may involve QwbCostMapper.insertQwbCost-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into qwb_cost    ( name,    create_date,    electricity_costs,    water_costs,    gas_costs,    property_costs )           values ( ?,    ?,    ?,    ?,    ?,    ?,                                  ? )\r\n### Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n; bad SQL grammar []; nested exception is java.sql.SQLException: Column count doesn\'t match value count at row 1', '2019-04-24 15:47:21');
INSERT INTO `sys_oper_log` VALUES ('220', '費用', '1', 'QwbCostController.addSave()', '1', 'admin', '研发部门', '/system/qwbCost/add', '127.0.0.1', '内网IP', '{\"name\":[\"张三\"],\"room\":[\"3301\"],\"createDate\":[\"2019-4-24\"],\"electricityCosts\":[\"10\"],\"waterCosts\":[\"10\"],\"gasCosts\":[\"10\"],\"propertyCosts\":[\"10\"],\"paymentTime\":[\"\"],\"state\":[\"\"]}', '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\r\n### The error may involve QwbCostMapper.insertQwbCost-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into qwb_cost    ( name,    create_date,    electricity_costs,    water_costs,    gas_costs,    property_costs )           values ( ?,    ?,    ?,    ?,    ?,    ?,                                  ? )\r\n### Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n; bad SQL grammar []; nested exception is java.sql.SQLException: Column count doesn\'t match value count at row 1', '2019-04-24 15:47:33');
INSERT INTO `sys_oper_log` VALUES ('221', '費用', '2', 'QwbCostController.editSave()', '1', 'admin', '研发部门', '/system/qwbCost/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"name\":[\"ry\"],\"room\":[\"2101\"],\"createDate\":[\"\"],\"electricityCosts\":[\"10\"],\"waterCosts\":[\"\"],\"gasCosts\":[\"\"],\"propertyCosts\":[\"\"],\"paymentTime\":[\"\"],\"state\":[\"\"]}', '0', null, '2019-04-24 15:48:12');
INSERT INTO `sys_oper_log` VALUES ('222', '費用', '1', 'QwbCostController.addSave()', '1', 'admin', '研发部门', '/system/qwbCost/add', '127.0.0.1', '内网IP', '{\"name\":[\"张三\"],\"room\":[\"3301\"],\"createDate\":[\"\"],\"electricityCosts\":[\"\"],\"waterCosts\":[\"\"],\"gasCosts\":[\"\"],\"propertyCosts\":[\"\"],\"paymentTime\":[\"\"],\"state\":[\"\"]}', '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\r\n### The error may involve QwbCostMapper.insertQwbCost-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into qwb_cost    ( name )           values ( ?,                                                      ? )\r\n### Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n; bad SQL grammar []; nested exception is java.sql.SQLException: Column count doesn\'t match value count at row 1', '2019-04-24 15:48:30');
INSERT INTO `sys_oper_log` VALUES ('223', '費用', '1', 'QwbCostController.addSave()', '1', 'admin', '研发部门', '/system/qwbCost/add', '127.0.0.1', '内网IP', '{\"name\":[\"张三\"],\"room\":[\"3301\"],\"createDate\":[\"\"],\"electricityCosts\":[\"\"],\"waterCosts\":[\"\"],\"gasCosts\":[\"\"],\"propertyCosts\":[\"\"],\"paymentTime\":[\"\"],\"state\":[\"\"]}', '0', null, '2019-04-24 15:50:29');
INSERT INTO `sys_oper_log` VALUES ('224', '費用', '2', 'QwbCostController.editSave()', '1', 'admin', '研发部门', '/system/qwbCost/edit', '127.0.0.1', '内网IP', '{\"id\":[\"4\"],\"name\":[\"张三\"],\"room\":[\"3301\"],\"createDate\":[\"2019-4-24\"],\"electricityCosts\":[\"10\"],\"waterCosts\":[\"10\"],\"gasCosts\":[\"10\"],\"propertyCosts\":[\"10\"],\"paymentTime\":[\"\"],\"state\":[\"0\"]}', '0', null, '2019-04-24 15:50:51');
INSERT INTO `sys_oper_log` VALUES ('225', '車位租用', '1', 'com.ruoyi.project.system.qwbParkingSpace.controller.QwbParkingSpaceController.addSave()', '1', 'admin', '研发部门', '/system/qwbParkingSpace/add', '127.0.0.1', '内网IP', '{\"name\":[\"乔伟博\"],\"startTime\":[\"2019-4-23\"],\"endTime\":[\"\"],\"space\":[\"\"],\"area\":[\"\"],\"length\":[\"1\"],\"width\":[\"1\"],\"ageLimit\":[\"4\"],\"rent\":[\"1\"],\"remark\":[\"\"]}', '0', null, '2019-04-24 16:12:32');
INSERT INTO `sys_oper_log` VALUES ('226', '車位租用', '2', 'com.ruoyi.project.system.qwbParkingSpace.controller.QwbParkingSpaceController.editSave()', '1', 'admin', '研发部门', '/system/qwbParkingSpace/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"name\":[\"乔伟博\"],\"startTime\":[\"2019-4-23\"],\"endTime\":[\"1万\"],\"space\":[\"\"],\"area\":[\"0.0\"],\"length\":[\"1.0\"],\"width\":[\"1.0\"],\"ageLimit\":[\"4\"],\"rent\":[\"1\"],\"remark\":[\"\"]}', '0', null, '2019-04-24 16:14:00');
INSERT INTO `sys_oper_log` VALUES ('227', '車位租用', '2', 'com.ruoyi.project.system.qwbParkingSpace.controller.QwbParkingSpaceController.editSave()', '1', 'admin', '研发部门', '/system/qwbParkingSpace/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"name\":[\"乔伟博\"],\"startTime\":[\"2019-4-23\"],\"endTime\":[\"1万\"],\"space\":[\"\"],\"area\":[\"0.0\"],\"length\":[\"1.0\"],\"width\":[\"1.0\"],\"ageLimit\":[\"4\"],\"rent\":[\"1\"],\"remark\":[\"\"]}', '0', null, '2019-04-24 16:17:18');
INSERT INTO `sys_oper_log` VALUES ('228', '車位租用', '2', 'com.ruoyi.project.system.qwbParkingSpace.controller.QwbParkingSpaceController.editSave()', '1', 'admin', '研发部门', '/system/qwbParkingSpace/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"name\":[\"乔伟博\"],\"startTime\":[\"2019-4-23\"],\"endTime\":[\"1万\"],\"space\":[\"\"],\"area\":[\"0.0\"],\"length\":[\"1.0\"],\"width\":[\"1.0\"],\"ageLimit\":[\"4\"],\"rent\":[\"1\"],\"remark\":[\"\"]}', '0', null, '2019-04-24 16:17:27');
INSERT INTO `sys_oper_log` VALUES ('229', '車位租用', '2', 'com.ruoyi.project.system.qwbParkingSpace.controller.QwbParkingSpaceController.editSave()', '1', 'admin', '研发部门', '/system/qwbParkingSpace/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"name\":[\"乔伟博\"],\"startTime\":[\"2019-4-23\"],\"endTime\":[\"1万\"],\"space\":[\"\"],\"area\":[\"0.0\"],\"length\":[\"1.0\"],\"width\":[\"1.0\"],\"ageLimit\":[\"4\"],\"rent\":[\"1\"],\"remark\":[\"\"]}', '0', null, '2019-04-24 16:17:41');
INSERT INTO `sys_oper_log` VALUES ('230', '車位租用', '2', 'com.ruoyi.project.system.qwbParkingSpace.controller.QwbParkingSpaceController.editSave()', '1', 'admin', '研发部门', '/system/qwbParkingSpace/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"name\":[\"乔伟博\"],\"startTime\":[\"2019-4-23\"],\"endTime\":[\"1万\"],\"space\":[\"\"],\"area\":[\"0.0\"],\"length\":[\"1.0\"],\"width\":[\"1.0\"],\"ageLimit\":[\"4\"],\"rent\":[\"1万\"],\"remark\":[\"\"]}', '0', null, '2019-04-24 16:27:42');
INSERT INTO `sys_oper_log` VALUES ('231', '車位租用', '2', 'com.ruoyi.project.system.qwbParkingSpace.controller.QwbParkingSpaceController.editSave()', '1', 'admin', '研发部门', '/system/qwbParkingSpace/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"name\":[\"乔伟博\"],\"startTime\":[\"2019-4-23\"],\"endTime\":[\"\"],\"space\":[\"\"],\"area\":[\"0.0\"],\"length\":[\"1.0\"],\"width\":[\"1.0\"],\"ageLimit\":[\"4\"],\"rent\":[\"1万\"],\"remark\":[\"\"]}', '0', null, '2019-04-24 16:27:48');
INSERT INTO `sys_oper_log` VALUES ('232', '車位租用', '1', 'com.ruoyi.project.system.qwbParkingSpace.controller.QwbParkingSpaceController.addSave()', '1', 'admin', '研发部门', '/system/qwbParkingSpace/add', '127.0.0.1', '内网IP', '{\"name\":[\"\"],\"startTime\":[\"\"],\"endTime\":[\"\"],\"space\":[\"\"],\"area\":[\"\"],\"length\":[\"\"],\"width\":[\"\"],\"ageLimit\":[\"\"],\"rent\":[\"1万\"],\"remark\":[\"\"]}', '0', null, '2019-04-24 16:27:59');
INSERT INTO `sys_oper_log` VALUES ('233', '車位租用', '3', 'com.ruoyi.project.system.qwbParkingSpace.controller.QwbParkingSpaceController.remove()', '1', 'admin', '研发部门', '/system/qwbParkingSpace/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', '0', null, '2019-04-24 16:28:02');
INSERT INTO `sys_oper_log` VALUES ('234', '車位租用', '2', 'com.ruoyi.project.system.qwbParkingSpace.controller.QwbParkingSpaceController.editSave()', '1', 'admin', '研发部门', '/system/qwbParkingSpace/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"name\":[\"乔伟博\"],\"startTime\":[\"2019-4-23\"],\"endTime\":[\"\"],\"space\":[\"\"],\"area\":[\"0.0\"],\"length\":[\"1.0\"],\"width\":[\"1.0\"],\"ageLimit\":[\"4\"],\"rent\":[\"1万\"],\"remark\":[\"\"]}', '0', null, '2019-04-24 16:28:10');
INSERT INTO `sys_oper_log` VALUES ('235', '車位租用', '2', 'com.ruoyi.project.system.qwbParkingSpace.controller.QwbParkingSpaceController.editSave()', '1', 'admin', '研发部门', '/system/qwbParkingSpace/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"name\":[\"乔伟博\"],\"startTime\":[\"2019-4-23\"],\"endTime\":[\"\"],\"space\":[\"\"],\"area\":[\"0.0\"],\"length\":[\"1.0\"],\"width\":[\"1.0\"],\"ageLimit\":[\"4\"],\"rent\":[\"1万\"],\"remark\":[\"\"]}', '0', null, '2019-04-24 16:28:18');
INSERT INTO `sys_oper_log` VALUES ('236', '車位租用', '2', 'com.ruoyi.project.system.qwbParkingSpace.controller.QwbParkingSpaceController.editSave()', '1', 'admin', '研发部门', '/system/qwbParkingSpace/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"name\":[\"乔伟博\"],\"startTime\":[\"\"],\"endTime\":[\"1万\"],\"space\":[\"\"],\"area\":[\"0.0\"],\"length\":[\"1.0\"],\"width\":[\"1.0\"],\"ageLimit\":[\"4\"],\"rent\":[\"1万\"],\"remark\":[\"\"]}', '0', null, '2019-04-24 16:29:29');
INSERT INTO `sys_oper_log` VALUES ('237', '車位租用', '2', 'com.ruoyi.project.system.qwbParkingSpace.controller.QwbParkingSpaceController.editSave()', '1', 'admin', '研发部门', '/system/qwbParkingSpace/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"name\":[\"乔伟博\"],\"startTime\":[\"2019-4-23\"],\"endTime\":[\"1万\"],\"space\":[\"\"],\"area\":[\"100.0\"],\"length\":[\"1.0\"],\"width\":[\"1.0\"],\"ageLimit\":[\"4\"],\"rent\":[\"1万\"],\"remark\":[\"\"]}', '0', null, '2019-04-24 16:29:38');
INSERT INTO `sys_oper_log` VALUES ('238', '車位租用', '2', 'com.ruoyi.project.system.qwbParkingSpace.controller.QwbParkingSpaceController.editSave()', '1', 'admin', '研发部门', '/system/qwbParkingSpace/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"name\":[\"乔伟博\"],\"startTime\":[\"2019-4-23\"],\"endTime\":[\"2020\"],\"space\":[\"\"],\"area\":[\"100.0\"],\"length\":[\"1.0\"],\"width\":[\"1.0\"],\"ageLimit\":[\"4\"],\"rent\":[\"1万\"],\"remark\":[\"\"]}', '0', null, '2019-04-24 16:29:55');
INSERT INTO `sys_oper_log` VALUES ('239', '費用', '2', 'QwbCostController.editSave()', '1', 'admin', '研发部门', '/system/qwbCost/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"name\":[\"ry\"],\"room\":[\"2101\"],\"createDate\":[\"\"],\"electricityCosts\":[\"\"],\"waterCosts\":[\"\"],\"gasCosts\":[\"\"],\"propertyCosts\":[\"\"],\"paymentTime\":[\"\"],\"state\":[\"\"]}', '0', null, '2019-04-24 16:30:30');
INSERT INTO `sys_oper_log` VALUES ('240', '維修', '1', 'QwbRepairController.addSave()', '1', 'admin', '研发部门', '/system/qwbRepair/add', '127.0.0.1', '内网IP', '{\"name\":[\"张三\"],\"room\":[\"3301\"],\"creationTime\":[\"2017-3-21\"],\"content\":[\"卫生间水管破裂\"],\"state\":[\"0\"]}', '0', null, '2019-04-24 20:35:40');
INSERT INTO `sys_oper_log` VALUES ('241', '費用', '2', 'QwbCostController.editSave()', '1', 'admin', '研发部门', '/system/qwbCost/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"name\":[\"ry\"],\"room\":[\"2101\"],\"createDate\":[\"2016-3-1\"],\"electricityCosts\":[\"10.0\"],\"waterCosts\":[\"\"],\"gasCosts\":[\"\"],\"propertyCosts\":[\"\"],\"paymentTime\":[\"\"],\"state\":[\"\"]}', '0', null, '2019-04-24 21:48:33');
INSERT INTO `sys_oper_log` VALUES ('242', '維修', '2', 'QwbRepairController.editSave()', '1', 'admin', '研发部门', '/system/qwbRepair/edit', '127.0.0.1', '内网IP', '{\"id\":[\"6\"],\"name\":[\"张三\"],\"room\":[\"3301\"],\"creationTime\":[\"2017-03-21 \"],\"content\":[\"卫生间水管破裂\"],\"state\":[\"0\"]}', '0', null, '2019-04-24 22:02:36');
INSERT INTO `sys_oper_log` VALUES ('243', '菜单管理', '2', 'MenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2005\"],\"parentId\":[\"2034\"],\"menuType\":[\"C\"],\"menuName\":[\"已缴费\"],\"url\":[\"/system/qwbCost\"],\"perms\":[\"system:qwbCost:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-04-25 14:33:55');
INSERT INTO `sys_oper_log` VALUES ('244', '代码生成', '8', 'GenController.genCode()', '1', 'admin', '研发部门', '/tool/gen/genCode/qwb_cost', '127.0.0.1', '内网IP', '{}', '0', null, '2019-04-25 14:34:50');
INSERT INTO `sys_oper_log` VALUES ('245', '菜单管理', '2', 'MenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2039\"],\"parentId\":[\"2034\"],\"menuType\":[\"C\"],\"menuName\":[\"未費用\"],\"url\":[\"/system/qwbCost\"],\"perms\":[\"system:qwbCost:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-04-25 14:36:13');
INSERT INTO `sys_oper_log` VALUES ('246', '菜单管理', '2', 'MenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2039\"],\"parentId\":[\"2034\"],\"menuType\":[\"C\"],\"menuName\":[\"未費用\"],\"url\":[\"/system/qwbCost/noCostDeal\"],\"perms\":[\"system:qwbCost:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-04-25 14:42:26');
INSERT INTO `sys_oper_log` VALUES ('247', '角色管理', '2', 'RoleController.editSave()', '1', 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"roleName\":[\"系统管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"管理员\"],\"menuIds\":[\"\"]}', '0', null, '2019-04-25 15:09:39');
INSERT INTO `sys_oper_log` VALUES ('248', '角色管理', '1', 'RoleController.addSave()', '1', 'admin', '研发部门', '/system/role/add', '127.0.0.1', '内网IP', '{\"roleName\":[\"服务人员\"],\"roleKey\":[\"staff\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2038,100,1000,1001,1002,1003,1004,1005,1006,2033,2000,2001,2002,2003,2004,2034,2005,2006,2007,2008,2009,2039,2040,2041,2042,2043,2035,2020,2021,2022,2023,2024,2036,2025,2026,2027,2028,2029,2037,2015,2016,2017,2018,2019,2030,2010,2011,2012,2013,2014\"]}', '0', null, '2019-04-25 15:12:06');
INSERT INTO `sys_oper_log` VALUES ('249', '用户管理', '1', 'UserController.addSave()', '1', 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"userName\":[\"乔先生\"],\"phonenumber\":[\"13738780193\"],\"email\":[\"3152618970@qq.com\"],\"loginName\":[\"OneFloor\"],\"password\":[\"111111\"],\"sex\":[\"0\"],\"area\":[\"100\"],\"floor\":[\"1\"],\"unit\":[\"1\"],\"room\":[\"1101\"],\"moveIndate\":[\"2015-2-21\"],\"role\":[\"3\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"3\"],\"postIds\":[\"\"]}', '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\r\n### The error may involve UserMapper.insertUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_user(                  login_name,       user_name,       email,       phonenumber,       sex,       password,       salt,       status,       create_by,            area,     floor,     unit,     room,     move_in_date,       create_time    )values(                  ?,       ?,       ?,       ?,       ?,       ?,       ?,       ?,       ?,            sysdate()    )\r\n### Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n; bad SQL grammar []; nested exception is java.sql.SQLException: Column count doesn\'t match value count at row 1', '2019-04-25 15:19:54');
INSERT INTO `sys_oper_log` VALUES ('250', '用户管理', '1', 'UserController.addSave()', '1', 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"userName\":[\"乔先生\"],\"phonenumber\":[\"18738780178\"],\"email\":[\"3122618907@qq.com\"],\"loginName\":[\"OneFloor\"],\"password\":[\"111111\"],\"sex\":[\"0\"],\"area\":[\"100\"],\"floor\":[\"1\"],\"unit\":[\"1\"],\"room\":[\"1101\"],\"moveIndate\":[\"2017-3-21\"],\"role\":[\"3\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"3\"],\"postIds\":[\"\"]}', '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\r\n### The error may involve UserMapper.insertUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_user(                  login_name,       user_name,       email,       phonenumber,       sex,       password,       salt,       status,       create_by,            area,     floor,     unit,     room,     move_in_date,       create_time    )values(                  ?,       ?,       ?,       ?,       ?,       ?,       ?,       ?,       ?,            sysdate()    )\r\n### Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n; bad SQL grammar []; nested exception is java.sql.SQLException: Column count doesn\'t match value count at row 1', '2019-04-25 15:21:30');
INSERT INTO `sys_oper_log` VALUES ('251', '用户管理', '1', 'UserController.addSave()', '1', 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"userName\":[\"乔先生\"],\"phonenumber\":[\"18738780178\"],\"email\":[\"3122618907@qq.com\"],\"loginName\":[\"OneFloor\"],\"password\":[\"111111\"],\"sex\":[\"0\"],\"area\":[\"100\"],\"floor\":[\"1\"],\"unit\":[\"1\"],\"room\":[\"1101\"],\"moveIndate\":[\"2017-3-21\"],\"role\":[\"2\",\"3\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"2,3\"],\"postIds\":[\"\"]}', '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\r\n### The error may involve UserMapper.insertUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_user(                  login_name,       user_name,       email,       phonenumber,       sex,       password,       salt,       status,       create_by,            area,     floor,     unit,     room,     move_in_date,       create_time    )values(                  ?,       ?,       ?,       ?,       ?,       ?,       ?,       ?,       ?,            sysdate()    )\r\n### Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n; bad SQL grammar []; nested exception is java.sql.SQLException: Column count doesn\'t match value count at row 1', '2019-04-25 15:21:55');
INSERT INTO `sys_oper_log` VALUES ('252', '用户管理', '1', 'UserController.addSave()', '1', 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"userName\":[\"乔先生\"],\"phonenumber\":[\"18738780178\"],\"email\":[\"3122618907@qq.com\"],\"loginName\":[\"OneFloor\"],\"password\":[\"111111\"],\"sex\":[\"0\"],\"area\":[\"100\"],\"floor\":[\"1\"],\"unit\":[\"1\"],\"room\":[\"1101\"],\"moveIndate\":[\"2017-3-21\"],\"role\":[\"2\",\"3\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"2,3\"],\"postIds\":[\"\"]}', '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\r\n### The error may involve UserMapper.insertUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_user(                  login_name,       user_name,       email,       phonenumber,       sex,       password,       salt,       status,       create_by,            area,     floor,     unit,     room,     move_in_date,       create_time    )values(                  ?,       ?,       ?,       ?,       ?,       ?,       ?,       ?,       ?,            sysdate()    )\r\n### Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n; bad SQL grammar []; nested exception is java.sql.SQLException: Column count doesn\'t match value count at row 1', '2019-04-25 15:22:11');
INSERT INTO `sys_oper_log` VALUES ('253', '用户管理', '1', 'UserController.addSave()', '1', 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"userName\":[\"乔先生\"],\"phonenumber\":[\"18738780178\"],\"email\":[\"3122618907@qq.com\"],\"loginName\":[\"OneFloor\"],\"password\":[\"111111\"],\"sex\":[\"0\"],\"area\":[\"100\"],\"floor\":[\"1\"],\"unit\":[\"1\"],\"room\":[\"1101\"],\"moveIndate\":[\"2017-3-21\"],\"role\":[\"2\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"\"]}', '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\r\n### The error may involve UserMapper.insertUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_user(                  login_name,       user_name,       email,       phonenumber,       sex,       password,       salt,       status,       create_by,            area,     floor,     unit,     room,     move_in_date,       create_time    )values(                  ?,       ?,       ?,       ?,       ?,       ?,       ?,       ?,       ?,            sysdate()    )\r\n### Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n; bad SQL grammar []; nested exception is java.sql.SQLException: Column count doesn\'t match value count at row 1', '2019-04-25 15:23:09');
INSERT INTO `sys_oper_log` VALUES ('254', '用户管理', '1', 'UserController.addSave()', '1', 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"userName\":[\"乔先生\"],\"phonenumber\":[\"18738780178\"],\"email\":[\"3122618907@qq.com\"],\"loginName\":[\"OneFloor\"],\"password\":[\"111111\"],\"sex\":[\"0\"],\"area\":[\"100\"],\"floor\":[\"1\"],\"unit\":[\"1\"],\"room\":[\"1101\"],\"moveIndate\":[\"2017-3-21\"],\"role\":[\"2\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"\"]}', '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\r\n### The error may involve UserMapper.insertUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_user(                  login_name,       user_name,       email,       phonenumber,       sex,       password,       salt,       status,       create_by,            area,     floor,     unit,     room,     move_in_date,       create_time    )values(                  ?,       ?,       ?,       ?,       ?,       ?,       ?,       ?,       ?,            sysdate()    )\r\n### Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n; bad SQL grammar []; nested exception is java.sql.SQLException: Column count doesn\'t match value count at row 1', '2019-04-25 15:23:11');
INSERT INTO `sys_oper_log` VALUES ('255', '用户管理', '1', 'UserController.addSave()', '1', 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"userName\":[\"乔先生\"],\"phonenumber\":[\"18738780178\"],\"email\":[\"3122618907@qq.com\"],\"loginName\":[\"OneFloor\"],\"password\":[\"111111\"],\"sex\":[\"0\"],\"area\":[\"100\"],\"floor\":[\"1\"],\"unit\":[\"1\"],\"room\":[\"1101\"],\"moveIndate\":[\"2017-3-21\"],\"role\":[\"3\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"3\"],\"postIds\":[\"\"]}', '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\r\n### The error may involve UserMapper.insertUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_user(                  login_name,       user_name,       email,       phonenumber,       sex,       password,       salt,       status,       create_by,            area,     floor,     unit,     room,     move_in_date,       create_time    )values(                  ?,       ?,       ?,       ?,       ?,       ?,       ?,       ?,       ?,            sysdate()    )\r\n### Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n; bad SQL grammar []; nested exception is java.sql.SQLException: Column count doesn\'t match value count at row 1', '2019-04-25 15:23:21');
INSERT INTO `sys_oper_log` VALUES ('256', '用户管理', '1', 'UserController.addSave()', '1', 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"userName\":[\"乔先生\"],\"phonenumber\":[\"18738780178\"],\"email\":[\"3122618907@qq.com\"],\"loginName\":[\"sada\"],\"password\":[\"111111\"],\"sex\":[\"0\"],\"area\":[\"100\"],\"floor\":[\"1\"],\"unit\":[\"1\"],\"room\":[\"1101\"],\"moveIndate\":[\"2017-3-21\"],\"role\":[\"3\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"3\"],\"postIds\":[\"\"]}', '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\r\n### The error may involve UserMapper.insertUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_user(                  login_name,       user_name,       email,       phonenumber,       sex,       password,       salt,       status,       create_by,            area,     floor,     unit,     room,     move_in_date,       create_time    )values(                  ?,       ?,       ?,       ?,       ?,       ?,       ?,       ?,       ?,            sysdate()    )\r\n### Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n; bad SQL grammar []; nested exception is java.sql.SQLException: Column count doesn\'t match value count at row 1', '2019-04-25 15:24:51');
INSERT INTO `sys_oper_log` VALUES ('257', '用户管理', '1', 'UserController.addSave()', '1', 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"userName\":[\"乔先生\"],\"phonenumber\":[\"18738780178\"],\"email\":[\"3122618907@qq.com\"],\"loginName\":[\"OneFloor\"],\"password\":[\"111111\"],\"sex\":[\"0\"],\"area\":[\"100\"],\"floor\":[\"1\"],\"unit\":[\"1\"],\"room\":[\"1101\"],\"moveIndate\":[\"2017-3-21\"],\"role\":[\"3\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"3\"],\"postIds\":[\"\"]}', '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\r\n### The error may involve UserMapper.insertUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_user(                  login_name,       user_name,       email,       phonenumber,       sex,       password,       salt,       status,       create_by,            area,     floor,     unit,     room,     move_in_date,       create_time    )values(                  ?,       ?,       ?,       ?,       ?,       ?,       ?,       ?,       ?,            sysdate()    )\r\n### Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n; bad SQL grammar []; nested exception is java.sql.SQLException: Column count doesn\'t match value count at row 1', '2019-04-25 15:25:30');
INSERT INTO `sys_oper_log` VALUES ('258', '用户管理', '1', 'UserController.addSave()', '1', 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"userName\":[\"乔先生\"],\"phonenumber\":[\"13677320590\"],\"email\":[\"3121218907@qq.com\"],\"loginName\":[\"OneFloor\"],\"password\":[\"111111\"],\"sex\":[\"0\"],\"area\":[\"100\"],\"floor\":[\"1\"],\"unit\":[\"1\"],\"room\":[\"1101\"],\"moveIndate\":[\"2017-2-21\"],\"role\":[\"3\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"3\"],\"postIds\":[\"\"]}', '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\r\n### The error may involve UserMapper.insertUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_user(                  login_name,       user_name,       email,       phonenumber,       sex,       password,       salt,       status,       create_by,            area,     floor,     unit,     room,     move_in_date,       create_time    )values(                  ?,       ?,       ?,       ?,       ?,       ?,       ?,       ?,       ?,            sysdate()    )\r\n### Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n; bad SQL grammar []; nested exception is java.sql.SQLException: Column count doesn\'t match value count at row 1', '2019-04-25 15:27:50');
INSERT INTO `sys_oper_log` VALUES ('259', '用户管理', '1', 'UserController.addSave()', '1', 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"userName\":[\"乔先生\"],\"phonenumber\":[\"18738790893\"],\"email\":[\"OneFloor@qq.com\"],\"loginName\":[\"OneFloor\"],\"password\":[\"111111\"],\"sex\":[\"0\"],\"area\":[\"100\"],\"floor\":[\"1\"],\"unit\":[\"1\"],\"room\":[\"1101\"],\"moveIndate\":[\"2018-12-23\"],\"role\":[\"3\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"3\"],\"postIds\":[\"\"]}', '0', null, '2019-04-25 15:36:01');
INSERT INTO `sys_oper_log` VALUES ('260', '用户管理', '2', 'UserController.editSave()', '1', 'OneFloor', null, '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"100\"],\"deptId\":[\"\"],\"userName\":[\"乔伟博\"],\"phonenumber\":[\"18738780193\"],\"email\":[\"3152618907@qq.com\"],\"loginName\":[\"qwb\"],\"sex\":[\"0\"],\"area\":[\"\"],\"floor\":[\"1\"],\"unit\":[\"1\"],\"room\":[\"1102\"],\"moveIndate\":[\"\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"\"]}', '0', null, '2019-04-25 15:38:33');
INSERT INTO `sys_oper_log` VALUES ('261', '用户管理', '2', 'UserController.editSave()', '1', 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"deptId\":[\"103\"],\"userName\":[\"qwb\"],\"phonenumber\":[\"15888888888\"],\"email\":[\"ry@163.com\"],\"loginName\":[\"admin\"],\"sex\":[\"1\"],\"area\":[\"\"],\"floor\":[\"\"],\"unit\":[\"\"],\"room\":[\"\"],\"moveIndate\":[\"\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"1\"],\"postIds\":[\"\"]}', '0', null, '2019-04-25 15:40:45');
INSERT INTO `sys_oper_log` VALUES ('262', '費用', '2', 'QwbCostController.editSave()', '1', 'admin', '研发部门', '/system/qwbCost/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"name\":[\"ry\"],\"room\":[\"2101\"],\"createDate\":[\"2016-3-1\"],\"electricityCosts\":[\"10.0\"],\"waterCosts\":[\"\"],\"gasCosts\":[\"\"],\"propertyCosts\":[\"\"],\"paymentTime\":[\"\"],\"state\":[\"0\"]}', '0', null, '2019-04-25 15:45:00');
INSERT INTO `sys_oper_log` VALUES ('263', '角色管理', '2', 'RoleController.editSave()', '1', 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"2033,2000,2001,2002,2003,2004,2034,2005,2006,2008,2039,2040,2041,2042,2043,2035,2020,2021,2022,2023,2024,2036,2025,2026,2027,2028,2029,2037,2015,2016,2017,2018,2019,2030,2010,2011,2012,2013\"]}', '0', null, '2019-04-25 15:55:58');
INSERT INTO `sys_oper_log` VALUES ('264', '菜单管理', '2', 'MenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2039\"],\"parentId\":[\"2034\"],\"menuType\":[\"C\"],\"menuName\":[\"未交费\"],\"url\":[\"/system/qwbCost/noCostDeal\"],\"perms\":[\"system:qwbCost:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-04-25 16:00:52');
INSERT INTO `sys_oper_log` VALUES ('265', '費用', '2', 'QwbCostController.editSave()', '1', 'OneFloor', null, '/system/qwbCost/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"name\":[\"乔伟博\"],\"room\":[\"1102\"],\"createDate\":[\"2019-4-3\"],\"electricityCosts\":[\"100.0\"],\"waterCosts\":[\"100.0\"],\"gasCosts\":[\"100.0\"],\"propertyCosts\":[\"100.0\"],\"paymentTime\":[\"2019-4-23\"],\"state\":[\"1\"]}', '0', null, '2019-04-25 16:13:44');
INSERT INTO `sys_oper_log` VALUES ('266', '个人信息', '2', 'ProfileController.update()', '1', 'qwb', null, '/system/user/profile/update', '127.0.0.1', '内网IP', '{\"id\":[\"\"],\"userName\":[\"乔伟博\"],\"sex\":[\"0\"],\"floor\":[\"1\"],\"unit\":[\"1\"],\"room\":[\"1102\"]}', '0', null, '2019-04-25 16:13:52');
INSERT INTO `sys_oper_log` VALUES ('267', '个人信息', '2', 'ProfileController.update()', '1', 'qwb', null, '/system/user/profile/update', '127.0.0.1', '内网IP', '{\"id\":[\"\"],\"userName\":[\"乔伟博\"],\"sex\":[\"0\"],\"floor\":[\"1\"],\"unit\":[\"1\"],\"room\":[\"1102\"]}', '0', null, '2019-04-25 16:14:11');
INSERT INTO `sys_oper_log` VALUES ('268', '費用', '1', 'QwbCostController.addSave()', '1', 'OneFloor', null, '/system/qwbCost/add', '127.0.0.1', '内网IP', '{\"name\":[\"乔伟博\"],\"room\":[\"\"],\"createDate\":[\"\"],\"electricityCosts\":[\"\"],\"waterCosts\":[\"\"],\"gasCosts\":[\"\"],\"propertyCosts\":[\"\"],\"state\":[\"\"]}', '0', null, '2019-04-25 16:20:33');
INSERT INTO `sys_oper_log` VALUES ('269', '費用', '1', 'QwbCostController.addSave()', '1', 'OneFloor', null, '/system/qwbCost/add', '127.0.0.1', '内网IP', '{\"name\":[\"乔伟博\"],\"room\":[\"\"],\"createDate\":[\"\"],\"electricityCosts\":[\"\"],\"waterCosts\":[\"\"],\"gasCosts\":[\"\"],\"propertyCosts\":[\"\"],\"state\":[\"\"]}', '0', null, '2019-04-25 16:21:28');
INSERT INTO `sys_oper_log` VALUES ('270', '費用', '1', 'QwbCostController.addSave()', '1', 'OneFloor', null, '/system/qwbCost/add', '127.0.0.1', '内网IP', '{\"name\":[\"乔伟博\"],\"room\":[\"\"],\"createDate\":[\"\"],\"electricityCosts\":[\"\"],\"waterCosts\":[\"\"],\"gasCosts\":[\"\"],\"propertyCosts\":[\"\"],\"state\":[\"\"]}', '0', null, '2019-04-25 16:26:16');
INSERT INTO `sys_oper_log` VALUES ('271', '費用', '1', 'QwbCostController.addSave()', '1', 'OneFloor', null, '/system/qwbCost/add', '127.0.0.1', '内网IP', '{\"name\":[\"乔伟博\"],\"room\":[\"\"],\"createDate\":[\"\"],\"electricityCosts\":[\"\"],\"waterCosts\":[\"\"],\"gasCosts\":[\"\"],\"propertyCosts\":[\"\"],\"state\":[\"\"]}', '0', null, '2019-04-25 16:26:47');
INSERT INTO `sys_oper_log` VALUES ('272', '費用', '1', 'QwbCostController.addSave()', '1', 'OneFloor', null, '/system/qwbCost/add', '127.0.0.1', '内网IP', '{\"name\":[\"乔伟博\"],\"room\":[\"\"],\"createDate\":[\"\"],\"electricityCosts\":[\"\"],\"waterCosts\":[\"\"],\"gasCosts\":[\"\"],\"propertyCosts\":[\"\"],\"state\":[\"\"]}', '0', null, '2019-04-25 16:28:40');
INSERT INTO `sys_oper_log` VALUES ('273', '用户管理', '2', 'UserController.editSave()', '1', 'OneFloor', null, '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"100\"],\"deptId\":[\"\"],\"userName\":[\"乔伟博\"],\"phonenumber\":[\"18738780193\"],\"email\":[\"3152618907@qq.com\"],\"loginName\":[\"qwb\"],\"sex\":[\"0\"],\"area\":[\"\"],\"floor\":[\"\"],\"unit\":[\"\"],\"room\":[\"1102\"],\"moveIndate\":[\"\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"\"]}', '0', null, '2019-04-25 16:30:51');
INSERT INTO `sys_oper_log` VALUES ('274', '費用', '1', 'QwbCostController.addSave()', '1', 'OneFloor', null, '/system/qwbCost/add', '127.0.0.1', '内网IP', '{\"name\":[\"乔伟博\"],\"room\":[\"1102\"],\"createDate\":[\"\"],\"electricityCosts\":[\"\"],\"waterCosts\":[\"\"],\"gasCosts\":[\"\"],\"propertyCosts\":[\"\"],\"state\":[\"\"]}', '0', null, '2019-04-25 16:32:02');
INSERT INTO `sys_oper_log` VALUES ('275', '費用', '1', 'QwbCostController.addSave()', '1', 'OneFloor', null, '/system/qwbCost/add', '127.0.0.1', '内网IP', '{\"name\":[\"乔伟博\"],\"room\":[\"1102\"],\"createDate\":[\"2121\"],\"electricityCosts\":[\"21\"],\"waterCosts\":[\"21\"],\"gasCosts\":[\"212\"],\"propertyCosts\":[\"21\"],\"state\":[\"0\"]}', '0', null, '2019-04-25 16:32:24');
INSERT INTO `sys_oper_log` VALUES ('276', '費用', '3', 'QwbCostController.remove()', '1', 'OneFloor', null, '/system/qwbCost/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"11\"]}', '0', null, '2019-04-25 16:32:36');
INSERT INTO `sys_oper_log` VALUES ('277', '費用', '1', 'QwbCostController.addSave()', '1', 'OneFloor', null, '/system/qwbCost/add', '127.0.0.1', '内网IP', '{\"name\":[\"乔伟博\"],\"room\":[\"1102\"],\"createDate\":[\"2016\"],\"electricityCosts\":[\"12\"],\"waterCosts\":[\"\"],\"gasCosts\":[\"\"],\"propertyCosts\":[\"\"],\"state\":[\"\"]}', '0', null, '2019-04-25 16:32:57');
INSERT INTO `sys_oper_log` VALUES ('278', '費用', '1', 'QwbCostController.addSave()', '1', 'OneFloor', null, '/system/qwbCost/add', '127.0.0.1', '内网IP', '{\"name\":[\"乔伟博\"],\"room\":[\"1102\"],\"createDate\":[\"2018\"],\"electricityCosts\":[\"\"],\"waterCosts\":[\"\"],\"gasCosts\":[\"\"],\"propertyCosts\":[\"\"],\"state\":[\"0\"]}', '0', null, '2019-04-25 16:33:17');
INSERT INTO `sys_oper_log` VALUES ('279', '費用', '3', 'QwbCostController.remove()', '1', 'qwb', null, '/system/qwbCost/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"5\"]}', '0', null, '2019-04-25 16:51:44');
INSERT INTO `sys_oper_log` VALUES ('280', '費用', '3', 'QwbCostController.remove()', '1', 'qwb', null, '/system/qwbCost/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"6,7,8,9,10,12\"]}', '0', null, '2019-04-25 16:51:56');
INSERT INTO `sys_oper_log` VALUES ('281', '費用', '1', 'QwbCostController.addSave()', '1', 'OneFloor', null, '/system/qwbCost/add', '127.0.0.1', '内网IP', '{\"name\":[\"乔伟博\"],\"room\":[\"1102\"],\"createDate\":[\"2020-1-21\"],\"electricityCosts\":[\"100\"],\"waterCosts\":[\"50\"],\"gasCosts\":[\"31\"],\"propertyCosts\":[\"45\"],\"state\":[\"0\"]}', '0', null, '2019-04-25 17:08:26');
INSERT INTO `sys_oper_log` VALUES ('282', '費用', '2', 'QwbCostController.editSave()', '1', 'qwb', null, '/system/qwbCost/edit', '127.0.0.1', '内网IP', '{\"id\":[\"14\"],\"name\":[\"乔伟博\"],\"room\":[\"1102\"],\"createDate\":[\"2020-1-21\"],\"electricityCosts\":[\"100.0\"],\"waterCosts\":[\"50.0\"],\"gasCosts\":[\"31.0\"],\"propertyCosts\":[\"45.0\"],\"paymentTime\":[\"\"],\"state\":[\"0\"]}', '0', null, '2019-04-25 17:17:58');
INSERT INTO `sys_oper_log` VALUES ('283', '費用', '2', 'QwbCostController.editSave()', '1', 'qwb', null, '/system/qwbCost/edit', '127.0.0.1', '内网IP', '{\"id\":[\"14\"],\"name\":[\"乔伟博\"],\"room\":[\"1102\"],\"createDate\":[\"2020-1-21\"],\"electricityCosts\":[\"100.0\"],\"waterCosts\":[\"50.0\"],\"gasCosts\":[\"31.0\"],\"propertyCosts\":[\"45.0\"],\"paymentTime\":[\"\"],\"state\":[\"1\"]}', '0', null, '2019-04-25 17:19:20');
INSERT INTO `sys_oper_log` VALUES ('284', '費用', '2', 'QwbCostController.editSave()', '1', 'OneFloor', null, '/system/qwbCost/edit', '127.0.0.1', '内网IP', '{\"id\":[\"13\"],\"name\":[\"乔伟博\"],\"room\":[\"1102\"],\"createDate\":[\"2018\"],\"electricityCosts\":[\"\"],\"waterCosts\":[\"\"],\"gasCosts\":[\"\"],\"propertyCosts\":[\"\"],\"paymentTime\":[\"\"],\"state\":[\"1\"]}', '0', null, '2019-04-25 17:20:10');
INSERT INTO `sys_oper_log` VALUES ('285', '費用', '1', 'QwbCostController.addSave()', '1', 'OneFloor', null, '/system/qwbCost/add', '127.0.0.1', '内网IP', '{\"name\":[\"乔伟博\"],\"room\":[\"1102\"],\"createDate\":[\"2019-4-25\"],\"electricityCosts\":[\"1\"],\"waterCosts\":[\"1\"],\"gasCosts\":[\"1\"],\"propertyCosts\":[\"1\"],\"state\":[\"0\"]}', '0', null, '2019-04-25 17:44:54');
INSERT INTO `sys_oper_log` VALUES ('286', '菜单管理', '2', 'MenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2005\"],\"parentId\":[\"2034\"],\"menuType\":[\"C\"],\"menuName\":[\"交费通知\"],\"url\":[\"/system/qwbCost\"],\"perms\":[\"system:qwbCost:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-04-25 19:26:07');
INSERT INTO `sys_oper_log` VALUES ('287', '菜单管理', '2', 'MenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2005\"],\"parentId\":[\"2034\"],\"menuType\":[\"C\"],\"menuName\":[\"已交费用\"],\"url\":[\"/system/qwbCost\"],\"perms\":[\"system:qwbCost:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-04-25 19:27:15');
INSERT INTO `sys_oper_log` VALUES ('288', '菜单管理', '2', 'MenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2039\"],\"parentId\":[\"2034\"],\"menuType\":[\"C\"],\"menuName\":[\"交费通知\"],\"url\":[\"/system/qwbCost/noCostDeal\"],\"perms\":[\"system:qwbCost:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-04-25 19:27:27');
INSERT INTO `sys_oper_log` VALUES ('289', '菜单管理', '2', 'MenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2005\"],\"parentId\":[\"2034\"],\"menuType\":[\"C\"],\"menuName\":[\"已交费用\"],\"url\":[\"/system/qwbCost\"],\"perms\":[\"system:qwbCost:view\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-04-25 19:27:44');
INSERT INTO `sys_oper_log` VALUES ('290', '菜单管理', '2', 'MenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2034\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"交费管理模块\"],\"url\":[\"#\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-tasks\"],\"visible\":[\"0\"]}', '0', null, '2019-04-25 19:29:06');
INSERT INTO `sys_oper_log` VALUES ('291', '用户管理', '5', 'UserController.export()', '1', 'admin', '研发部门', '/system/user/export', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"parentId\":[\"\"],\"userName\":[\"\"],\"status\":[\"\"],\"params[beginTime]\":[\"\"],\"params[endTime]\":[\"\"]}', '0', null, '2019-04-25 20:37:00');
INSERT INTO `sys_oper_log` VALUES ('292', '角色管理', '2', 'RoleController.editSave()', '1', 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"3\"],\"roleName\":[\"服务人员\"],\"roleKey\":[\"staff\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2038,100,1000,1001,1002,1003,1004,1005,1006,2033,2000,2001,2002,2003,2034,2039,2040,2041,2042,2043,2005,2006,2007,2008,2009,2035,2020,2021,2022,2023,2024,2036,2025,2026,2027,2028,2029,2037,2015,2016,2017,2018,2019,2030,2010,2011,2012,2013,2014\"]}', '0', null, '2019-04-25 21:22:05');
INSERT INTO `sys_oper_log` VALUES ('293', '角色管理', '2', 'RoleController.editSave()', '1', 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"3\"],\"roleName\":[\"服务人员\"],\"roleKey\":[\"staff\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2038,100,1000,1001,1002,1003,1004,1005,1006,2033,2000,2001,2002,2003,2004,2034,2039,2040,2041,2042,2043,2005,2006,2009,2035,2020,2021,2022,2023,2024,2036,2025,2026,2027,2028,2029,2037,2015,2016,2017,2018,2019,2030,2010,2011,2012,2013,2014\"]}', '0', null, '2019-04-26 09:12:17');
INSERT INTO `sys_oper_log` VALUES ('294', '費用', '2', 'QwbCostController.editSave()', '1', 'OneFloor', null, '/system/qwbCost/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"name\":[\"ry\"],\"room\":[\"2101\"],\"createDate\":[\"2016-3-1\"],\"electricityCosts\":[\"10.0\"],\"waterCosts\":[\"\"],\"gasCosts\":[\"\"],\"propertyCosts\":[\"\"],\"paymentTime\":[\"\"]}', '0', null, '2019-04-26 09:25:08');
INSERT INTO `sys_oper_log` VALUES ('295', '角色管理', '2', 'RoleController.editSave()', '1', 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"3\"],\"roleName\":[\"服务人员\"],\"roleKey\":[\"staff\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2038,100,1000,1001,1002,1003,1004,1005,1006,2033,2000,2001,2002,2003,2004,2034,2039,2040,2041,2042,2043,2005,2006,2009,2035,2020,2021,2022,2023,2024,2036,2025,2026,2027,2028,2029,2037,2015,2016,2017,2018,2019,2030,2010,2011,2012,2013,2014\"]}', '0', null, '2019-04-26 09:33:07');
INSERT INTO `sys_oper_log` VALUES ('296', '費用', '2', 'QwbCostController.editSave()', '1', 'qwb', null, '/system/qwbCost/edit', '127.0.0.1', '内网IP', '{\"id\":[\"15\"],\"name\":[\"乔伟博\"],\"room\":[\"1102\"],\"createDate\":[\"2019-4-25\"],\"electricityCosts\":[\"1.0\"],\"waterCosts\":[\"1.0\"],\"gasCosts\":[\"1.0\"],\"propertyCosts\":[\"1.0\"],\"paymentTime\":[\"\"]}', '0', null, '2019-04-26 09:53:50');
INSERT INTO `sys_oper_log` VALUES ('297', '費用', '2', 'QwbCostController.editSave()', '1', 'qwb', null, '/system/qwbCost/edit', '127.0.0.1', '内网IP', '{\"id\":[\"15\"],\"name\":[\"乔伟博\"],\"room\":[\"1102\"],\"createDate\":[\"2019-4-25\"],\"electricityCosts\":[\"1.0\"],\"waterCosts\":[\"1.0\"],\"gasCosts\":[\"1.0\"],\"propertyCosts\":[\"1.0\"],\"paymentTime\":[\"\"]}', '0', null, '2019-04-26 09:55:41');
INSERT INTO `sys_oper_log` VALUES ('298', '費用', '2', 'QwbCostController.editSave()', '1', 'qwb', null, '/system/qwbCost/edit', '127.0.0.1', '内网IP', '{\"id\":[\"15\"],\"name\":[\"乔伟博\"],\"room\":[\"1102\"],\"createDate\":[\"2019-4-25\"],\"electricityCosts\":[\"1.0\"],\"waterCosts\":[\"1.0\"],\"gasCosts\":[\"1.0\"],\"propertyCosts\":[\"1.0\"],\"paymentTime\":[\"\"]}', '0', null, '2019-04-26 09:56:27');
INSERT INTO `sys_oper_log` VALUES ('299', '費用', '2', 'QwbCostController.editSave()', '1', 'qwb', null, '/system/qwbCost/edit', '127.0.0.1', '内网IP', '{\"id\":[\"15\"],\"name\":[\"乔伟博\"],\"room\":[\"1102\"],\"createDate\":[\"2019-4-25\"],\"electricityCosts\":[\"1.0\"],\"waterCosts\":[\"1.0\"],\"gasCosts\":[\"1.0\"],\"propertyCosts\":[\"1.0\"],\"paymentTime\":[\"\"]}', '0', null, '2019-04-26 09:57:02');
INSERT INTO `sys_oper_log` VALUES ('300', '費用', '2', 'QwbCostController.editSave()', '1', 'qwb', null, '/system/qwbCost/edit', '127.0.0.1', '内网IP', '{\"id\":[\"15\"],\"name\":[\"乔伟博\"],\"room\":[\"1102\"],\"createDate\":[\"2019-4-25\"],\"electricityCosts\":[\"1.0\"],\"waterCosts\":[\"1.0\"],\"gasCosts\":[\"1.0\"],\"propertyCosts\":[\"1.0\"],\"paymentTime\":[\"\"]}', '0', null, '2019-04-26 09:58:03');
INSERT INTO `sys_oper_log` VALUES ('301', '費用', '2', 'QwbCostController.editSave()', '1', 'qwb', null, '/system/qwbCost/edit', '127.0.0.1', '内网IP', '{\"id\":[\"15\"],\"name\":[\"乔伟博\"],\"room\":[\"1102\"],\"createDate\":[\"2019-4-25\"],\"electricityCosts\":[\"1.0\"],\"waterCosts\":[\"1.0\"],\"gasCosts\":[\"1.0\"],\"propertyCosts\":[\"1.0\"],\"paymentTime\":[\"\"]}', '0', null, '2019-04-26 10:00:24');
INSERT INTO `sys_oper_log` VALUES ('302', '角色管理', '2', 'RoleController.editSave()', '1', 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"3\"],\"roleName\":[\"服务人员\"],\"roleKey\":[\"staff\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2038,100,1000,1001,1002,1003,1004,1005,1006,2033,2000,2001,2002,2003,2004,2034,2039,2040,2041,2043,2005,2006,2009,2035,2020,2021,2022,2023,2024,2036,2025,2026,2027,2028,2029,2037,2015,2016,2017,2018,2019,2030,2010,2011,2012,2013,2014\"]}', '0', null, '2019-04-26 10:11:28');
INSERT INTO `sys_oper_log` VALUES ('303', '角色管理', '2', 'RoleController.editSave()', '1', 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"3\"],\"roleName\":[\"服务人员\"],\"roleKey\":[\"staff\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2038,100,1000,1001,1002,1003,1004,1005,1006,2033,2000,2001,2002,2003,2004,2034,2039,2040,2041,2043,2005,2006,2009,2035,2020,2021,2022,2023,2024,2036,2025,2026,2027,2028,2029,2037,2015,2016,2017,2018,2019,2030,2010,2011,2012,2013,2014\"]}', '0', null, '2019-04-26 10:12:26');
INSERT INTO `sys_oper_log` VALUES ('304', '角色管理', '2', 'RoleController.editSave()', '1', 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"3\"],\"roleName\":[\"服务人员\"],\"roleKey\":[\"staff\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2038,100,1000,1001,1002,1003,1004,1005,1006,2033,2000,2001,2002,2003,2004,2034,2039,2040,2041,2042,2043,2005,2006,2008,2009,2035,2020,2021,2022,2023,2024,2036,2025,2026,2027,2028,2029,2037,2015,2016,2017,2018,2019,2030,2010,2011,2012,2013,2014\"]}', '0', null, '2019-04-26 10:34:01');
INSERT INTO `sys_oper_log` VALUES ('305', '費用', '2', 'QwbCostController.editSave()', '1', 'OneFloor', null, '/system/qwbCost/edit', '127.0.0.1', '内网IP', '{\"id\":[\"15\"],\"name\":[\"乔伟博\"],\"room\":[\"1102\"],\"createDate\":[\"2019-4-25\"],\"electricityCosts\":[\"1.0\"],\"waterCosts\":[\"5\"],\"gasCosts\":[\"1.0\"],\"propertyCosts\":[\"1.0\"],\"paymentTime\":[\"\"],\"state\":[\"0\"]}', '0', null, '2019-04-26 10:36:19');
INSERT INTO `sys_oper_log` VALUES ('306', '費用', '2', 'QwbCostController.editSave()', '1', 'qwb', null, '/system/qwbCost/edit', '127.0.0.1', '内网IP', '{\"id\":[\"15\"],\"name\":[\"乔伟博\"],\"room\":[\"1102\"],\"createDate\":[\"2019-4-25\"],\"electricityCosts\":[\"1.0\"],\"waterCosts\":[\"5.0\"],\"gasCosts\":[\"1.0\"],\"propertyCosts\":[\"1.0\"],\"paymentTime\":[\"\"],\"state\":[\"1\"]}', '0', null, '2019-04-26 10:56:18');
INSERT INTO `sys_oper_log` VALUES ('307', '費用', '2', 'QwbCostController.editSave()', '1', 'OneFloor', null, '/system/qwbCost/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"name\":[\"ry\"],\"room\":[\"2101\"],\"createDate\":[\"2016-3-1\"],\"electricityCosts\":[\"10.0\"],\"waterCosts\":[\"20\"],\"gasCosts\":[\"30\"],\"propertyCosts\":[\"40\"],\"paymentTime\":[\"\"],\"state\":[\"0\"]}', '0', null, '2019-04-26 11:00:32');
INSERT INTO `sys_oper_log` VALUES ('308', '費用', '1', 'QwbCostController.addSave()', '1', 'OneFloor', null, '/system/qwbCost/add', '127.0.0.1', '内网IP', '{\"name\":[\"乔伟博\"],\"room\":[\"1102\"],\"createDate\":[\"\"],\"electricityCosts\":[\"\"],\"waterCosts\":[\"\"],\"gasCosts\":[\"\"],\"propertyCosts\":[\"\"],\"total\":[\"100\"],\"state\":[\"0\"]}', '0', null, '2019-04-26 11:33:50');
INSERT INTO `sys_oper_log` VALUES ('309', '費用', '2', 'QwbCostController.editSave()', '1', 'OneFloor', null, '/system/qwbCost/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"name\":[\"ry\"],\"room\":[\"2101\"],\"createDate\":[\"2016-3-1\"],\"electricityCosts\":[\"10.0\"],\"waterCosts\":[\"20.0\"],\"gasCosts\":[\"30.0\"],\"propertyCosts\":[\"40.0\"],\"total\":[\"100\"],\"state\":[\"0\"]}', '0', null, '2019-04-26 11:34:33');
INSERT INTO `sys_oper_log` VALUES ('310', '費用', '2', 'QwbCostController.editSave()', '1', 'OneFloor', null, '/system/qwbCost/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"name\":[\"ry\"],\"room\":[\"2101\"],\"createDate\":[\"2016-3-1\"],\"electricityCosts\":[\"10.0\"],\"waterCosts\":[\"20.0\"],\"gasCosts\":[\"100.0\"],\"propertyCosts\":[\"40.0\"],\"total\":[\"100\"],\"state\":[\"0\"]}', '0', null, '2019-04-26 11:34:46');
INSERT INTO `sys_oper_log` VALUES ('311', '費用', '2', 'QwbCostController.editSave()', '1', 'OneFloor', null, '/system/qwbCost/edit', '127.0.0.1', '内网IP', '{\"id\":[\"16\"],\"name\":[\"乔伟博\"],\"room\":[\"1102\"],\"createDate\":[\"\"],\"electricityCosts\":[\"10\"],\"waterCosts\":[\"\"],\"gasCosts\":[\"\"],\"propertyCosts\":[\"\"],\"total\":[\"100.0\"],\"state\":[\"0\"]}', '0', null, '2019-04-26 11:35:00');
INSERT INTO `sys_oper_log` VALUES ('312', '費用', '2', 'QwbCostController.editSave()', '1', 'OneFloor', null, '/system/qwbCost/edit', '127.0.0.1', '内网IP', '{\"id\":[\"16\"],\"name\":[\"乔伟博\"],\"room\":[\"1102\"],\"createDate\":[\"\"],\"electricityCosts\":[\"10.0\"],\"waterCosts\":[\"\"],\"gasCosts\":[\"30\"],\"propertyCosts\":[\"\"],\"total\":[\"100.0\"],\"state\":[\"0\"]}', '0', null, '2019-04-26 11:35:14');
INSERT INTO `sys_oper_log` VALUES ('313', '費用', '2', 'QwbCostController.editSave()', '1', 'OneFloor', null, '/system/qwbCost/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"name\":[\"ry\"],\"room\":[\"2101\"],\"createDate\":[\"2016-3-1\"],\"electricityCosts\":[\"10.0\"],\"waterCosts\":[\"20.0\"],\"gasCosts\":[\"30\"],\"propertyCosts\":[\"40.0\"],\"total\":[\"\"],\"state\":[\"0\"]}', '0', null, '2019-04-26 11:36:42');
INSERT INTO `sys_oper_log` VALUES ('314', '費用', '2', 'QwbCostController.editSave()', '1', 'OneFloor', null, '/system/qwbCost/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"name\":[\"ry\"],\"room\":[\"2101\"],\"createDate\":[\"2016-3-1\"],\"electricityCosts\":[\"10.0\"],\"waterCosts\":[\"20.0\"],\"gasCosts\":[\"30.0\"],\"propertyCosts\":[\"40.0\"],\"total\":[\"100\"],\"state\":[\"0\"]}', '0', null, '2019-04-26 11:36:52');
INSERT INTO `sys_oper_log` VALUES ('315', '費用', '2', 'QwbCostController.editSave()', '1', 'OneFloor', null, '/system/qwbCost/edit', '127.0.0.1', '内网IP', '{\"id\":[\"16\"],\"name\":[\"乔伟博\"],\"room\":[\"1102\"],\"createDate\":[\"\"],\"electricityCosts\":[\"10.0\"],\"waterCosts\":[\"\"],\"gasCosts\":[\"100.0\"],\"propertyCosts\":[\"\"],\"total\":[\"200\"],\"state\":[\"0\"]}', '0', null, '2019-04-26 11:37:54');
INSERT INTO `sys_oper_log` VALUES ('316', '費用', '2', 'QwbCostController.editSave()', '1', 'OneFloor', null, '/system/qwbCost/edit', '127.0.0.1', '内网IP', '{\"id\":[\"16\"],\"name\":[\"乔伟博\"],\"room\":[\"1102\"],\"createDate\":[\"\"],\"electricityCosts\":[\"10.0\"],\"waterCosts\":[\"\"],\"gasCosts\":[\"50\"],\"propertyCosts\":[\"\"],\"total\":[\"100.0\"],\"state\":[\"0\"]}', '0', null, '2019-04-26 11:41:16');
INSERT INTO `sys_oper_log` VALUES ('317', '費用', '2', 'QwbCostController.editSave()', '1', 'OneFloor', null, '/system/qwbCost/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"name\":[\"ry\"],\"room\":[\"2101\"],\"createDate\":[\"2016-3-1\"],\"electricityCosts\":[\"10.0\"],\"waterCosts\":[\"20.0\"],\"gasCosts\":[\"100.0\"],\"propertyCosts\":[\"40.0\"],\"total\":[\"600\"],\"state\":[\"0\"]}', '0', null, '2019-04-26 11:41:37');
INSERT INTO `sys_oper_log` VALUES ('318', '費用', '2', 'QwbCostController.editSave()', '1', 'OneFloor', null, '/system/qwbCost/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"name\":[\"ry\"],\"room\":[\"2101\"],\"createDate\":[\"2016-3-1\"],\"electricityCosts\":[\"10.0\"],\"waterCosts\":[\"20.0\"],\"gasCosts\":[\"30\"],\"propertyCosts\":[\"40.0\"],\"total\":[\"\"],\"state\":[\"0\"]}', '0', null, '2019-04-26 11:42:27');
INSERT INTO `sys_oper_log` VALUES ('319', '費用', '2', 'QwbCostController.editSave()', '1', 'OneFloor', null, '/system/qwbCost/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"name\":[\"ry\"],\"room\":[\"2101\"],\"createDate\":[\"2016-3-1\"],\"electricityCosts\":[\"10.0\"],\"waterCosts\":[\"20.0\"],\"gasCosts\":[\"30.0\"],\"propertyCosts\":[\"40.0\"],\"total\":[\"80\"],\"state\":[\"0\"]}', '0', null, '2019-04-26 11:42:33');
INSERT INTO `sys_oper_log` VALUES ('320', '費用', '2', 'QwbCostController.editSave()', '1', 'OneFloor', null, '/system/qwbCost/edit', '127.0.0.1', '内网IP', '{\"id\":[\"16\"],\"name\":[\"乔伟博\"],\"room\":[\"1102\"],\"createDate\":[\"\"],\"electricityCosts\":[\"10.0\"],\"waterCosts\":[\"\"],\"gasCosts\":[\"40\"],\"propertyCosts\":[\"\"],\"total\":[\"200\"],\"state\":[\"0\"]}', '0', null, '2019-04-26 11:42:46');
INSERT INTO `sys_oper_log` VALUES ('321', '費用', '2', 'QwbCostController.editSave()', '1', 'qwb', null, '/system/qwbCost/edit', '127.0.0.1', '内网IP', '{\"id\":[\"16\"],\"name\":[\"乔伟博\"],\"room\":[\"1102\"],\"createDate\":[\"\"],\"electricityCosts\":[\"10.0\"],\"waterCosts\":[\"\"],\"gasCosts\":[\"40.0\"],\"propertyCosts\":[\"\"],\"total\":[\"200.0\"],\"state\":[\"1\"]}', '0', null, '2019-04-26 12:32:43');
INSERT INTO `sys_oper_log` VALUES ('322', '費用', '1', 'QwbCostController.addSave()', '1', 'admin', '研发部门', '/system/qwbCost/add', '127.0.0.1', '内网IP', '{\"name\":[\"乔伟博\"],\"room\":[\"1102\"],\"createDate\":[\"\"],\"electricityCosts\":[\"\"],\"waterCosts\":[\"\"],\"gasCosts\":[\"\"],\"propertyCosts\":[\"\"],\"total\":[\"\"],\"state\":[\"0\"]}', '0', null, '2019-04-26 12:35:50');
INSERT INTO `sys_oper_log` VALUES ('323', '費用', '2', 'QwbCostController.editSave()', '1', 'qwb', null, '/system/qwbCost/edit', '127.0.0.1', '内网IP', '{\"id\":[\"17\"],\"name\":[\"乔伟博\"],\"room\":[\"1102\"],\"createDate\":[\"\"],\"electricityCosts\":[\"\"],\"waterCosts\":[\"\"],\"gasCosts\":[\"\"],\"propertyCosts\":[\"\"],\"total\":[\"\"],\"state\":[\"1\"]}', '0', null, '2019-04-26 12:36:01');
INSERT INTO `sys_oper_log` VALUES ('324', '用户管理', '6', 'QwbCostController.importData()', '1', 'admin', '研发部门', '/system/qwbCost/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"false\"]}', '0', null, '2019-04-26 13:11:41');
INSERT INTO `sys_oper_log` VALUES ('325', '用户管理', '6', 'QwbCostController.importData()', '1', 'OneFloor', null, '/system/qwbCost/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"false\"]}', '0', null, '2019-04-26 13:18:15');
INSERT INTO `sys_oper_log` VALUES ('326', '費用', '3', 'QwbCostController.remove()', '1', 'OneFloor', null, '/system/qwbCost/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"18\"]}', '0', null, '2019-04-26 14:35:57');
INSERT INTO `sys_oper_log` VALUES ('327', '費用', '2', 'QwbCostController.editSave()', '1', 'admin', '研发部门', '/system/qwbCost/edit', '127.0.0.1', '内网IP', '{\"id\":[\"19\"],\"name\":[\"乔伟博\"],\"room\":[\"\"],\"createDate\":[\"\"],\"electricityCosts\":[\"10\"],\"waterCosts\":[\"\"],\"gasCosts\":[\"\"],\"propertyCosts\":[\"\"],\"total\":[\"\"],\"state\":[\"0\"]}', '0', null, '2019-04-26 15:32:56');
INSERT INTO `sys_oper_log` VALUES ('328', '費用', '2', 'QwbCostController.editSave()', '1', 'admin', '研发部门', '/system/qwbCost/edit', '127.0.0.1', '内网IP', '{\"id\":[\"19\"],\"name\":[\"乔伟博\"],\"room\":[\"\"],\"createDate\":[\"\"],\"electricityCosts\":[\"\"],\"waterCosts\":[\"\"],\"gasCosts\":[\"\"],\"propertyCosts\":[\"\"],\"total\":[\"\"],\"state\":[\"0\"]}', '0', null, '2019-04-26 15:33:23');
INSERT INTO `sys_oper_log` VALUES ('329', '費用', '2', 'QwbCostController.editSave()', '1', 'OneFloor', null, '/system/qwbCost/edit', '127.0.0.1', '内网IP', '{\"id\":[\"19\"],\"name\":[\"乔伟博\"],\"room\":[\"\"],\"createDate\":[\"\"],\"electricityCosts\":[\"20\"],\"waterCosts\":[\"\"],\"gasCosts\":[\"\"],\"propertyCosts\":[\"\"],\"total\":[\"\"],\"state\":[\"0\"]}', '0', null, '2019-04-26 15:35:27');
INSERT INTO `sys_oper_log` VALUES ('330', '費用', '2', 'QwbCostController.editSave()', '1', 'OneFloor', null, '/system/qwbCost/edit', '127.0.0.1', '内网IP', '{\"id\":[\"19\"],\"name\":[\"乔伟博\"],\"room\":[\"\"],\"createDate\":[\"\"],\"electricityCosts\":[\"10\"],\"waterCosts\":[\"\"],\"gasCosts\":[\"\"],\"propertyCosts\":[\"\"],\"total\":[\"\"],\"state\":[\"0\"]}', '0', null, '2019-04-26 15:49:46');
INSERT INTO `sys_oper_log` VALUES ('331', '費用', '2', 'QwbCostController.editSave()', '1', 'OneFloor', null, '/system/qwbCost/edit', '127.0.0.1', '内网IP', '{\"id\":[\"19\"],\"name\":[\"乔伟博\"],\"room\":[\"\"],\"createDate\":[\"\"],\"electricityCosts\":[\"30\"],\"waterCosts\":[\"\"],\"gasCosts\":[\"\"],\"propertyCosts\":[\"\"],\"total\":[\"\"],\"state\":[\"0\"]}', '0', null, '2019-04-26 15:50:34');
INSERT INTO `sys_oper_log` VALUES ('332', '費用', '2', 'QwbCostController.editSave()', '1', 'OneFloor', null, '/system/qwbCost/edit', '127.0.0.1', '内网IP', '{\"id\":[\"19\"],\"name\":[\"乔伟博\"],\"room\":[\"\"],\"createDate\":[\"\"],\"electricityCosts\":[\"40\"],\"waterCosts\":[\"\"],\"gasCosts\":[\"\"],\"propertyCosts\":[\"\"],\"total\":[\"\"],\"state\":[\"0\"]}', '0', null, '2019-04-26 15:51:15');
INSERT INTO `sys_oper_log` VALUES ('333', '用户管理', '6', 'QwbCostController.importData()', '1', 'OneFloor', null, '/system/qwbCost/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"false\"]}', '0', null, '2019-04-26 16:03:41');
INSERT INTO `sys_oper_log` VALUES ('334', '用户管理', '6', 'QwbCostController.importData()', '1', 'OneFloor', null, '/system/qwbCost/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"false\"]}', '1', '导入用户数据不能为空！', '2019-04-26 16:10:05');
INSERT INTO `sys_oper_log` VALUES ('335', '用户管理', '6', 'QwbCostController.importData()', '1', 'OneFloor', null, '/system/qwbCost/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"false\"]}', '1', '导入用户数据不能为空！', '2019-04-26 16:10:08');
INSERT INTO `sys_oper_log` VALUES ('336', '費用', '2', 'QwbCostController.editSave()', '1', 'OneFloor', null, '/system/qwbCost/edit', '127.0.0.1', '内网IP', '{\"id\":[\"19\"],\"name\":[\"乔伟博\"],\"room\":[\"1102\"],\"createDate\":[\"\"],\"electricityCosts\":[\"40.0\"],\"waterCosts\":[\"\"],\"gasCosts\":[\"\"],\"propertyCosts\":[\"\"],\"total\":[\"\"],\"state\":[\"0\"]}', '0', null, '2019-04-26 16:13:06');
INSERT INTO `sys_oper_log` VALUES ('337', '費用', '1', 'QwbCostController.addSave()', '1', 'OneFloor', null, '/system/qwbCost/add', '127.0.0.1', '内网IP', '{\"name\":[\"乔伟博\"],\"room\":[\"1102\"],\"createDate\":[\"\"],\"electricityCosts\":[\"\"],\"waterCosts\":[\"\"],\"gasCosts\":[\"\"],\"propertyCosts\":[\"\"],\"total\":[\"500\"],\"state\":[\"0\"]}', '0', null, '2019-04-26 16:15:49');
INSERT INTO `sys_oper_log` VALUES ('338', '費用', '1', 'QwbCostController.addSave()', '1', 'OneFloor', null, '/system/qwbCost/add', '127.0.0.1', '内网IP', '{\"name\":[\"乔伟博\"],\"room\":[\"1102\"],\"createDate\":[\"\"],\"electricityCosts\":[\"\"],\"waterCosts\":[\"\"],\"gasCosts\":[\"\"],\"propertyCosts\":[\"\"],\"total\":[\"\"],\"state\":[\"0\"]}', '0', null, '2019-04-26 16:31:41');
INSERT INTO `sys_oper_log` VALUES ('339', '費用', '3', 'QwbCostController.remove()', '1', 'OneFloor', null, '/system/qwbCost/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"22\"]}', '0', null, '2019-04-26 16:35:29');
INSERT INTO `sys_oper_log` VALUES ('340', '費用', '1', 'QwbCostController.addSave()', '1', 'OneFloor', null, '/system/qwbCost/add', '127.0.0.1', '内网IP', '{\"name\":[\"乔伟博\"],\"room\":[\"1102\"],\"createDate\":[\"\"],\"electricityCosts\":[\"\"],\"waterCosts\":[\"\"],\"gasCosts\":[\"\"],\"propertyCosts\":[\"\"],\"total\":[\"\"],\"state\":[\"0\"]}', '0', null, '2019-04-26 16:35:34');
INSERT INTO `sys_oper_log` VALUES ('341', '費用', '3', 'QwbCostController.remove()', '1', 'OneFloor', null, '/system/qwbCost/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"23\"]}', '0', null, '2019-04-26 16:40:04');
INSERT INTO `sys_oper_log` VALUES ('342', '費用', '1', 'QwbCostController.addSave()', '1', 'OneFloor', null, '/system/qwbCost/add', '127.0.0.1', '内网IP', '{\"name\":[\"乔伟博\"],\"room\":[\"1102\"],\"electricityCosts\":[\"\"],\"waterCosts\":[\"\"],\"gasCosts\":[\"\"],\"propertyCosts\":[\"\"],\"total\":[\"\"],\"state\":[\"0\"]}', '0', null, '2019-04-26 16:40:08');
INSERT INTO `sys_oper_log` VALUES ('343', '費用', '2', 'QwbCostController.editSave()', '1', 'qwb', null, '/system/qwbCost/edit', '127.0.0.1', '内网IP', '{\"id\":[\"24\"],\"name\":[\"乔伟博\"],\"room\":[\"1102\"],\"createDate\":[\"\"],\"electricityCosts\":[\"\"],\"waterCosts\":[\"\"],\"gasCosts\":[\"\"],\"propertyCosts\":[\"\"],\"total\":[\"\"],\"state\":[\"1\"]}', '0', null, '2019-04-26 16:48:50');
INSERT INTO `sys_oper_log` VALUES ('344', '投訴', '2', 'QwbComplaintController.editSave()', '1', 'admin', '研发部门', '/system/qwbComplaint/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"name\":[\"乔伟博\"],\"room\":[\"1102\"],\"creationTime\":[\"2018-4-23\"],\"content\":[\"1102户晚上太吵了\"],\"state\":[\"0\"]}', '0', null, '2019-04-26 19:11:20');
INSERT INTO `sys_oper_log` VALUES ('345', '个人信息', '2', 'ProfileController.update()', '1', 'admin', '研发部门', '/system/user/profile/update', '127.0.0.1', '内网IP', '{\"id\":[\"\"],\"userName\":[\"若依\"],\"sex\":[\"0\"],\"floor\":[\"\"],\"unit\":[\"\"],\"room\":[\"\"]}', '0', null, '2019-04-26 19:11:30');
INSERT INTO `sys_oper_log` VALUES ('346', '个人信息', '2', 'ProfileController.update()', '1', 'admin', '研发部门', '/system/user/profile/update', '127.0.0.1', '内网IP', '{\"id\":[\"\"],\"userName\":[\"乔大大\"],\"sex\":[\"0\"],\"floor\":[\"\"],\"unit\":[\"\"],\"room\":[\"\"]}', '0', null, '2019-04-26 19:11:51');
INSERT INTO `sys_oper_log` VALUES ('347', '个人信息', '2', 'ProfileController.update()', '1', 'admin', '研发部门', '/system/user/profile/update', '127.0.0.1', '内网IP', '{\"id\":[\"\"],\"userName\":[\"乔大大\"],\"sex\":[\"0\"],\"floor\":[\"\"],\"unit\":[\"\"],\"room\":[\"\"]}', '0', null, '2019-04-26 19:11:58');
INSERT INTO `sys_oper_log` VALUES ('348', '角色管理', '2', 'RoleController.editSave()', '1', 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"3\"],\"roleName\":[\"服务人员\"],\"roleKey\":[\"staff\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2038,100,1000,1001,1002,1003,1004,1005,1006,2033,2000,2001,2003,2034,2039,2040,2041,2042,2043,2005,2006,2008,2009,2035,2020,2021,2022,2023,2024,2036,2025,2026,2028,2037,2015,2016,2017,2018,2019,2030,2010,2011,2012,2013,2014\"]}', '0', null, '2019-04-26 19:15:38');
INSERT INTO `sys_oper_log` VALUES ('349', '角色管理', '2', 'RoleController.editSave()', '1', 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"3\"],\"roleName\":[\"服务人员\"],\"roleKey\":[\"staff\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2038,100,1000,1001,1002,1003,1004,1005,1006,2033,2000,2001,2003,2004,2034,2039,2040,2041,2042,2043,2005,2006,2008,2009,2035,2020,2021,2022,2023,2024,2036,2025,2026,2028,2029,2037,2015,2016,2017,2018,2019,2030,2010,2011,2012,2013,2014\"]}', '0', null, '2019-04-26 19:25:02');
INSERT INTO `sys_oper_log` VALUES ('350', '投訴', '2', 'QwbComplaintController.editSave()', '1', 'OneFloor', null, '/system/qwbComplaint/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"name\":[\"乔伟博\"],\"room\":[\"1102\"],\"creationTime\":[\"2018-4-23\"],\"content\":[\"1102户晚上太吵了\"],\"state\":[\"1\"]}', '0', null, '2019-04-26 19:47:33');
INSERT INTO `sys_oper_log` VALUES ('351', '菜单管理', '3', 'MenuController.remove()', '1', 'admin', '研发部门', '/system/menu/remove/2032', '127.0.0.1', '内网IP', '{}', '0', null, '2019-04-26 19:58:15');
INSERT INTO `sys_oper_log` VALUES ('352', '菜单管理', '3', 'MenuController.remove()', '1', 'admin', '研发部门', '/system/menu/remove/2031', '127.0.0.1', '内网IP', '{}', '0', null, '2019-04-26 19:58:27');
INSERT INTO `sys_oper_log` VALUES ('353', '参数管理', '2', 'ConfigController.editSave()', '1', 'admin', '研发部门', '/system/config/edit', '127.0.0.1', '内网IP', '{\"configId\":[\"1\"],\"configName\":[\"主框架页-默认皮肤样式名称\"],\"configKey\":[\"sys.index.skinName\"],\"configValue\":[\"skin-red\"],\"configType\":[\"Y\"],\"remark\":[\"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\"]}', '0', null, '2019-04-26 20:00:49');
INSERT INTO `sys_oper_log` VALUES ('354', '参数管理', '2', 'ConfigController.editSave()', '1', 'admin', '研发部门', '/system/config/edit', '127.0.0.1', '内网IP', '{\"configId\":[\"1\"],\"configName\":[\"主框架页-默认皮肤样式名称\"],\"configKey\":[\"sys.index.skinName\"],\"configValue\":[\"skin-purple\"],\"configType\":[\"Y\"],\"remark\":[\"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\"]}', '0', null, '2019-04-26 20:01:30');
INSERT INTO `sys_oper_log` VALUES ('355', '参数管理', '2', 'ConfigController.editSave()', '1', 'admin', '研发部门', '/system/config/edit', '127.0.0.1', '内网IP', '{\"configId\":[\"1\"],\"configName\":[\"主框架页-默认皮肤样式名称\"],\"configKey\":[\"sys.index.skinName\"],\"configValue\":[\"skin-blue\"],\"configType\":[\"Y\"],\"remark\":[\"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\"]}', '0', null, '2019-04-26 20:02:18');
INSERT INTO `sys_oper_log` VALUES ('356', '費用', '1', 'QwbCostController.addSave()', '1', 'OneFloor', null, '/system/qwbCost/add', '127.0.0.1', '内网IP', '{\"name\":[\"乔伟博\"],\"room\":[\"1102\"],\"electricityCosts\":[\"\"],\"waterCosts\":[\"\"],\"gasCosts\":[\"\"],\"propertyCosts\":[\"\"],\"total\":[\"\"],\"state\":[\"0\"]}', '0', null, '2019-04-26 21:53:55');
INSERT INTO `sys_oper_log` VALUES ('357', '費用', '1', 'QwbCostController.addSave()', '1', 'OneFloor', null, '/system/qwbCost/add', '127.0.0.1', '内网IP', '{\"name\":[\"乔伟博\"],\"room\":[\"1102\"],\"electricityCosts\":[\"\"],\"waterCosts\":[\"\"],\"gasCosts\":[\"\"],\"propertyCosts\":[\"\"],\"total\":[\"\"],\"state\":[\"0\"]}', '0', null, '2019-04-26 21:56:22');
INSERT INTO `sys_oper_log` VALUES ('358', '費用', '2', 'QwbCostController.editSave()', '1', 'OneFloor', null, '/system/qwbCost/edit', '127.0.0.1', '内网IP', '{\"id\":[\"24\"],\"name\":[\"乔伟博\"],\"room\":[\"1102\"],\"createDate\":[\"\"],\"electricityCosts\":[\"10\"],\"waterCosts\":[\"\"],\"gasCosts\":[\"\"],\"propertyCosts\":[\"\"],\"total\":[\"\"],\"state\":[\"0\"]}', '0', null, '2019-04-26 21:59:34');
INSERT INTO `sys_oper_log` VALUES ('359', '費用', '2', 'QwbCostController.editSave()', '1', 'OneFloor', null, '/system/qwbCost/edit', '127.0.0.1', '内网IP', '{\"id\":[\"24\"],\"name\":[\"乔伟博\"],\"room\":[\"1102\"],\"createDate\":[\"\"],\"electricityCosts\":[\"10.0\"],\"waterCosts\":[\"23\"],\"gasCosts\":[\"\"],\"propertyCosts\":[\"\"],\"total\":[\"\"],\"state\":[\"0\"]}', '0', null, '2019-04-26 22:02:14');
INSERT INTO `sys_oper_log` VALUES ('360', '費用', '2', 'QwbCostController.editSave()', '1', 'qwb', null, '/system/qwbCost/edit', '127.0.0.1', '内网IP', '{\"id\":[\"24\"],\"name\":[\"乔伟博\"],\"room\":[\"1102\"],\"createDate\":[\"\"],\"electricityCosts\":[\"10.0\"],\"waterCosts\":[\"23.0\"],\"gasCosts\":[\"\"],\"propertyCosts\":[\"\"],\"total\":[\"\"],\"state\":[\"1\"]}', '0', null, '2019-04-26 22:02:52');
INSERT INTO `sys_oper_log` VALUES ('361', '費用', '1', 'QwbCostController.addSave()', '1', 'OneFloor', null, '/system/qwbCost/add', '127.0.0.1', '内网IP', '{\"name\":[\"乔伟博\"],\"room\":[\"1102\"],\"electricityCosts\":[\"\"],\"waterCosts\":[\"\"],\"gasCosts\":[\"\"],\"propertyCosts\":[\"\"],\"total\":[\"100\"],\"state\":[\"0\"]}', '0', null, '2019-04-26 22:04:02');
INSERT INTO `sys_oper_log` VALUES ('362', '費用', '3', 'QwbCostController.remove()', '1', 'OneFloor', null, '/system/qwbCost/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"24\"]}', '0', null, '2019-04-26 22:04:50');
INSERT INTO `sys_oper_log` VALUES ('363', '費用', '2', 'QwbCostController.editSave()', '1', 'qwb', null, '/system/qwbCost/edit', '127.0.0.1', '内网IP', '{\"id\":[\"27\"],\"name\":[\"乔伟博\"],\"room\":[\"1102\"],\"createDate\":[\"Fri Apr 26 22:04:02 CST 2019\"],\"electricityCosts\":[\"\"],\"waterCosts\":[\"\"],\"gasCosts\":[\"\"],\"propertyCosts\":[\"\"],\"total\":[\"100.0\"],\"state\":[\"1\"]}', '0', null, '2019-04-26 22:05:07');
INSERT INTO `sys_oper_log` VALUES ('364', '費用', '2', 'QwbCostController.editSave()', '1', 'qwb', null, '/system/qwbCost/edit', '127.0.0.1', '内网IP', '{\"id\":[\"25\"],\"name\":[\"乔伟博\"],\"room\":[\"1102\"],\"createDate\":[\"\"],\"electricityCosts\":[\"\"],\"waterCosts\":[\"\"],\"gasCosts\":[\"\"],\"propertyCosts\":[\"\"],\"total\":[\"\"],\"state\":[\"1\"]}', '0', null, '2019-04-27 09:06:28');
INSERT INTO `sys_oper_log` VALUES ('365', '費用', '2', 'QwbCostController.editSave()', '1', 'qwb', null, '/system/qwbCost/edit', '127.0.0.1', '内网IP', '{\"id\":[\"26\"],\"name\":[\"乔伟博\"],\"room\":[\"1102\"],\"createDate\":[\"\"],\"electricityCosts\":[\"\"],\"waterCosts\":[\"\"],\"gasCosts\":[\"\"],\"propertyCosts\":[\"\"],\"total\":[\"\"],\"state\":[\"1\"]}', '0', null, '2019-04-27 09:06:31');
INSERT INTO `sys_oper_log` VALUES ('366', '用户管理', '6', 'QwbCostController.importData()', '1', 'OneFloor', null, '/system/qwbCost/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"false\"]}', '0', null, '2019-04-27 09:09:02');
INSERT INTO `sys_oper_log` VALUES ('367', '費用', '3', 'QwbCostController.remove()', '1', 'OneFloor', null, '/system/qwbCost/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"28\"]}', '0', null, '2019-04-27 09:16:25');
INSERT INTO `sys_oper_log` VALUES ('368', '費用', '3', 'QwbCostController.remove()', '1', 'OneFloor', null, '/system/qwbCost/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"29\"]}', '0', null, '2019-04-27 09:16:27');
INSERT INTO `sys_oper_log` VALUES ('369', '用户管理', '6', 'QwbCostController.importData()', '1', 'OneFloor', null, '/system/qwbCost/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"false\"]}', '0', null, '2019-04-27 09:18:03');
INSERT INTO `sys_oper_log` VALUES ('370', '費用', '3', 'QwbCostController.remove()', '1', 'OneFloor', null, '/system/qwbCost/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"30\"]}', '0', null, '2019-04-27 09:18:11');
INSERT INTO `sys_oper_log` VALUES ('371', '費用', '3', 'QwbCostController.remove()', '1', 'OneFloor', null, '/system/qwbCost/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"31\"]}', '0', null, '2019-04-27 09:18:13');
INSERT INTO `sys_oper_log` VALUES ('372', '用户管理', '6', 'QwbCostController.importData()', '1', 'OneFloor', null, '/system/qwbCost/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"false\"]}', '0', null, '2019-04-27 09:18:30');
INSERT INTO `sys_oper_log` VALUES ('373', '費用', '3', 'QwbCostController.remove()', '1', 'OneFloor', null, '/system/qwbCost/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"32\"]}', '0', null, '2019-04-27 09:18:34');
INSERT INTO `sys_oper_log` VALUES ('374', '費用', '3', 'QwbCostController.remove()', '1', 'OneFloor', null, '/system/qwbCost/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"33\"]}', '0', null, '2019-04-27 09:18:36');
INSERT INTO `sys_oper_log` VALUES ('375', '用户管理', '6', 'QwbCostController.importData()', '1', 'OneFloor', null, '/system/qwbCost/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"false\"]}', '0', null, '2019-04-27 09:19:19');
INSERT INTO `sys_oper_log` VALUES ('376', '投訴', '1', 'QwbComplaintController.addSave()', '1', 'qwb', null, '/system/qwbComplaint/add', '127.0.0.1', '内网IP', '{\"name\":[\"乔伟博\"],\"room\":[\"1102\"],\"content\":[\"楼上的住户太吵\"],\"state\":[\"0\"]}', '0', null, '2019-04-27 09:36:46');
INSERT INTO `sys_oper_log` VALUES ('377', '投訴', '2', 'QwbComplaintController.editSave()', '1', 'OneFloor', null, '/system/qwbComplaint/edit', '127.0.0.1', '内网IP', '{\"id\":[\"4\"],\"name\":[\"乔伟博\"],\"room\":[\"1102\"],\"creationTime\":[\"Sat Apr 27 09:36:46 CST 2019\"],\"content\":[\"楼上的住户太吵\"],\"remarks\":[\"已经向对方反应\"],\"state\":[\"1\"]}', '0', null, '2019-04-27 09:39:07');
INSERT INTO `sys_oper_log` VALUES ('378', '投訴', '1', 'QwbComplaintController.addSave()', '1', 'qwb', null, '/system/qwbComplaint/add', '127.0.0.1', '内网IP', '{\"name\":[\"乔伟博\"],\"room\":[\"1102\"],\"content\":[\"111\"],\"state\":[\"0\"]}', '0', null, '2019-04-27 09:39:37');
INSERT INTO `sys_oper_log` VALUES ('379', '投訴', '2', 'QwbComplaintController.editSave()', '1', 'OneFloor', null, '/system/qwbComplaint/edit', '127.0.0.1', '内网IP', '{\"id\":[\"5\"],\"name\":[\"乔伟博\"],\"room\":[\"1102\"],\"creationTime\":[\"Sat Apr 27 09:39:37 CST 2019\"],\"content\":[\"111\"],\"remarks\":[\"111\"],\"state\":[\"1\"]}', '0', null, '2019-04-27 09:45:53');
INSERT INTO `sys_oper_log` VALUES ('380', '投訴', '1', 'QwbComplaintController.addSave()', '1', 'qwb', null, '/system/qwbComplaint/add', '127.0.0.1', '内网IP', '{\"name\":[\"乔伟博\"],\"room\":[\"1102\"],\"content\":[\"小区门卫态度恶劣\"],\"state\":[\"0\"]}', '0', null, '2019-04-27 09:50:05');
INSERT INTO `sys_oper_log` VALUES ('381', '菜单管理', '3', 'MenuController.remove()', '1', 'admin', '研发部门', '/system/menu/remove/110', '127.0.0.1', '内网IP', '{}', '0', null, '2019-04-27 10:09:25');
INSERT INTO `sys_oper_log` VALUES ('382', '菜单管理', '3', 'MenuController.remove()', '1', 'admin', '研发部门', '/system/menu/remove/1049', '127.0.0.1', '内网IP', '{}', '0', null, '2019-04-27 10:09:35');
INSERT INTO `sys_oper_log` VALUES ('383', '菜单管理', '3', 'MenuController.remove()', '1', 'admin', '研发部门', '/system/menu/remove/1054', '127.0.0.1', '内网IP', '{}', '0', null, '2019-04-27 10:09:58');
INSERT INTO `sys_oper_log` VALUES ('384', '菜单管理', '3', 'MenuController.remove()', '1', 'admin', '研发部门', '/system/menu/remove/1055', '127.0.0.1', '内网IP', '{}', '0', null, '2019-04-27 10:10:09');
INSERT INTO `sys_oper_log` VALUES ('385', '菜单管理', '3', 'MenuController.remove()', '1', 'admin', '研发部门', '/system/menu/remove/1053', '127.0.0.1', '内网IP', '{}', '0', null, '2019-04-27 10:10:20');
INSERT INTO `sys_oper_log` VALUES ('386', '菜单管理', '3', 'MenuController.remove()', '1', 'admin', '研发部门', '/system/menu/remove/1052', '127.0.0.1', '内网IP', '{}', '0', null, '2019-04-27 10:10:29');
INSERT INTO `sys_oper_log` VALUES ('387', '菜单管理', '3', 'MenuController.remove()', '1', 'admin', '研发部门', '/system/menu/remove/1050', '127.0.0.1', '内网IP', '{}', '0', null, '2019-04-27 10:10:36');
INSERT INTO `sys_oper_log` VALUES ('388', '菜单管理', '3', 'MenuController.remove()', '1', 'admin', '研发部门', '/system/menu/remove/1051', '127.0.0.1', '内网IP', '{}', '0', null, '2019-04-27 10:10:44');
INSERT INTO `sys_oper_log` VALUES ('389', '菜单管理', '3', 'MenuController.remove()', '1', 'admin', '研发部门', '/system/menu/remove/110', '127.0.0.1', '内网IP', '{}', '0', null, '2019-04-27 10:10:51');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES ('1', 'ceo', '董事长', '1', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES ('2', 'se', '项目经理', '2', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限）',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '系统管理员', 'admin', '1', '1', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-04-25 15:09:39', '管理员');
INSERT INTO `sys_role` VALUES ('2', '普通角色', 'common', '2', '2', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-04-25 15:55:58', '普通角色');
INSERT INTO `sys_role` VALUES ('3', '服务人员', 'staff', '3', '1', '0', '0', 'admin', '2019-04-25 15:12:06', 'admin', '2019-04-26 19:25:02', '');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES ('2', '100');
INSERT INTO `sys_role_dept` VALUES ('2', '101');
INSERT INTO `sys_role_dept` VALUES ('2', '105');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('2', '2000');
INSERT INTO `sys_role_menu` VALUES ('2', '2001');
INSERT INTO `sys_role_menu` VALUES ('2', '2002');
INSERT INTO `sys_role_menu` VALUES ('2', '2003');
INSERT INTO `sys_role_menu` VALUES ('2', '2004');
INSERT INTO `sys_role_menu` VALUES ('2', '2005');
INSERT INTO `sys_role_menu` VALUES ('2', '2006');
INSERT INTO `sys_role_menu` VALUES ('2', '2008');
INSERT INTO `sys_role_menu` VALUES ('2', '2010');
INSERT INTO `sys_role_menu` VALUES ('2', '2011');
INSERT INTO `sys_role_menu` VALUES ('2', '2012');
INSERT INTO `sys_role_menu` VALUES ('2', '2013');
INSERT INTO `sys_role_menu` VALUES ('2', '2015');
INSERT INTO `sys_role_menu` VALUES ('2', '2016');
INSERT INTO `sys_role_menu` VALUES ('2', '2017');
INSERT INTO `sys_role_menu` VALUES ('2', '2018');
INSERT INTO `sys_role_menu` VALUES ('2', '2019');
INSERT INTO `sys_role_menu` VALUES ('2', '2020');
INSERT INTO `sys_role_menu` VALUES ('2', '2021');
INSERT INTO `sys_role_menu` VALUES ('2', '2022');
INSERT INTO `sys_role_menu` VALUES ('2', '2023');
INSERT INTO `sys_role_menu` VALUES ('2', '2024');
INSERT INTO `sys_role_menu` VALUES ('2', '2025');
INSERT INTO `sys_role_menu` VALUES ('2', '2026');
INSERT INTO `sys_role_menu` VALUES ('2', '2027');
INSERT INTO `sys_role_menu` VALUES ('2', '2028');
INSERT INTO `sys_role_menu` VALUES ('2', '2029');
INSERT INTO `sys_role_menu` VALUES ('2', '2030');
INSERT INTO `sys_role_menu` VALUES ('2', '2033');
INSERT INTO `sys_role_menu` VALUES ('2', '2034');
INSERT INTO `sys_role_menu` VALUES ('2', '2035');
INSERT INTO `sys_role_menu` VALUES ('2', '2036');
INSERT INTO `sys_role_menu` VALUES ('2', '2037');
INSERT INTO `sys_role_menu` VALUES ('2', '2039');
INSERT INTO `sys_role_menu` VALUES ('2', '2040');
INSERT INTO `sys_role_menu` VALUES ('2', '2041');
INSERT INTO `sys_role_menu` VALUES ('2', '2042');
INSERT INTO `sys_role_menu` VALUES ('2', '2043');
INSERT INTO `sys_role_menu` VALUES ('3', '100');
INSERT INTO `sys_role_menu` VALUES ('3', '1000');
INSERT INTO `sys_role_menu` VALUES ('3', '1001');
INSERT INTO `sys_role_menu` VALUES ('3', '1002');
INSERT INTO `sys_role_menu` VALUES ('3', '1003');
INSERT INTO `sys_role_menu` VALUES ('3', '1004');
INSERT INTO `sys_role_menu` VALUES ('3', '1005');
INSERT INTO `sys_role_menu` VALUES ('3', '1006');
INSERT INTO `sys_role_menu` VALUES ('3', '2000');
INSERT INTO `sys_role_menu` VALUES ('3', '2001');
INSERT INTO `sys_role_menu` VALUES ('3', '2003');
INSERT INTO `sys_role_menu` VALUES ('3', '2004');
INSERT INTO `sys_role_menu` VALUES ('3', '2005');
INSERT INTO `sys_role_menu` VALUES ('3', '2006');
INSERT INTO `sys_role_menu` VALUES ('3', '2008');
INSERT INTO `sys_role_menu` VALUES ('3', '2009');
INSERT INTO `sys_role_menu` VALUES ('3', '2010');
INSERT INTO `sys_role_menu` VALUES ('3', '2011');
INSERT INTO `sys_role_menu` VALUES ('3', '2012');
INSERT INTO `sys_role_menu` VALUES ('3', '2013');
INSERT INTO `sys_role_menu` VALUES ('3', '2014');
INSERT INTO `sys_role_menu` VALUES ('3', '2015');
INSERT INTO `sys_role_menu` VALUES ('3', '2016');
INSERT INTO `sys_role_menu` VALUES ('3', '2017');
INSERT INTO `sys_role_menu` VALUES ('3', '2018');
INSERT INTO `sys_role_menu` VALUES ('3', '2019');
INSERT INTO `sys_role_menu` VALUES ('3', '2020');
INSERT INTO `sys_role_menu` VALUES ('3', '2021');
INSERT INTO `sys_role_menu` VALUES ('3', '2022');
INSERT INTO `sys_role_menu` VALUES ('3', '2023');
INSERT INTO `sys_role_menu` VALUES ('3', '2024');
INSERT INTO `sys_role_menu` VALUES ('3', '2025');
INSERT INTO `sys_role_menu` VALUES ('3', '2026');
INSERT INTO `sys_role_menu` VALUES ('3', '2028');
INSERT INTO `sys_role_menu` VALUES ('3', '2029');
INSERT INTO `sys_role_menu` VALUES ('3', '2030');
INSERT INTO `sys_role_menu` VALUES ('3', '2033');
INSERT INTO `sys_role_menu` VALUES ('3', '2034');
INSERT INTO `sys_role_menu` VALUES ('3', '2035');
INSERT INTO `sys_role_menu` VALUES ('3', '2036');
INSERT INTO `sys_role_menu` VALUES ('3', '2037');
INSERT INTO `sys_role_menu` VALUES ('3', '2038');
INSERT INTO `sys_role_menu` VALUES ('3', '2039');
INSERT INTO `sys_role_menu` VALUES ('3', '2040');
INSERT INTO `sys_role_menu` VALUES ('3', '2041');
INSERT INTO `sys_role_menu` VALUES ('3', '2042');
INSERT INTO `sys_role_menu` VALUES ('3', '2043');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) DEFAULT '' COMMENT '密码',
  `salt` varchar(20) DEFAULT '' COMMENT '盐加密',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  `area` bigint(255) DEFAULT NULL COMMENT '住房面积',
  `floor` varchar(50) DEFAULT NULL COMMENT '楼号',
  `unit` varchar(50) DEFAULT NULL COMMENT '单元号',
  `room` varchar(50) DEFAULT NULL COMMENT '房间号',
  `move_in_date` varchar(255) DEFAULT NULL COMMENT '入住时间',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '103', 'admin', '乔大大', '00', 'ry@163.com', '15888888888', '0', '2019/04/23/1992c0ef8a0601396fca9dbc4e99ef3c.jpg', '29c67a30398638269fe600f73a054934', '111111', '0', '0', '127.0.0.1', '2019-04-27 10:46:44', 'admin', '2018-03-16 11:33:00', 'ry', '2019-04-27 10:46:44', '管理员', null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('2', '105', 'ry', '张三', '00', 'zs@qq.com', '15666666666', '0', '2019/04/23/09da3313a0afa459ee227f720b9514dc.jpg', '36a00ea071e5c7b29707982cd0d9bc26', '9d8bd0', '0', '0', '127.0.0.1', '2019-04-27 09:06:04', 'admin', '2018-03-16 11:33:00', 'admin', '2019-04-27 09:06:04', '测试员', '87', '3', '3', '3301', '2017-4-21');
INSERT INTO `sys_user` VALUES ('100', null, 'qwb', '乔伟博', '00', '3152618907@qq.com', '18738780193', '0', '2019/04/24/e9a3d1c7a711a76de442a32677cf11c0.jpg', '19da2ba9bdcf629318d36d1b7615c4f5', '28ed3b', '0', '0', '127.0.0.1', '2019-04-27 09:35:24', 'admin', '2019-04-23 16:55:32', 'OneFloor', '2019-04-27 09:35:24', '', '101', '1', '1', '1102', '2019-4-21');
INSERT INTO `sys_user` VALUES ('102', null, 'ry123', 'ry', '00', '3332618907@qq.com', '13677860990', '0', '', '3510baa46577e818b92fb8910ba33219', '870c2a', '0', '0', '127.0.0.1', '2019-04-23 17:40:44', 'admin', '2019-04-23 17:40:09', 'admin', '2019-04-24 08:50:38', '', '99', '2', '1', '2101', '2018-4-21');
INSERT INTO `sys_user` VALUES ('103', null, 'OneFloor', '乔先生', '00', 'OneFloor@qq.com', '18738790893', '0', '', '68b1d05f4994686c8b6537561d0bf7a3', 'eacd13', '0', '0', '127.0.0.1', '2019-04-27 09:35:42', 'admin', '2019-04-25 15:36:01', '', '2019-04-27 09:35:42', '', '100', '1', '1', '1101', '2018-12-23');

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online` (
  `sessionId` varchar(50) NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) DEFAULT '0' COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='在线用户记录';

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------
INSERT INTO `sys_user_online` VALUES ('747af568-d812-4b7e-8d40-5bef9a7d80a8', 'admin', '', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', 'on_line', '2019-04-27 10:46:40', '2019-04-27 10:46:44', '1800000');
INSERT INTO `sys_user_online` VALUES ('ed7d4913-d683-4f6c-8233-ac823d27a957', 'admin', '', '127.0.0.1', '内网IP', 'Microsoft Edge', 'Windows 10', 'on_line', '2019-04-27 10:48:01', '2019-04-27 10:48:05', '1800000');

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES ('1', '1');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('2', '2');
INSERT INTO `sys_user_role` VALUES ('100', '2');
INSERT INTO `sys_user_role` VALUES ('102', '2');
INSERT INTO `sys_user_role` VALUES ('103', '3');
