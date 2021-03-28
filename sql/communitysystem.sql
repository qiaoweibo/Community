/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50535
Source Host           : localhost:3306
Source Database       : communitysystem

Target Server Type    : MYSQL
Target Server Version : 50535
File Encoding         : 65001

Date: 2019-04-23 13:46:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for qwb_complaint
-- ----------------------------
DROP TABLE IF EXISTS `qwb_complaint`;
CREATE TABLE `qwb_complaint` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT '用户id',
  `creation_time` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `content` varchar(255) DEFAULT NULL COMMENT '投诉内容',
  `complete_time` varchar(255) DEFAULT NULL COMMENT '完成时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '投诉处理结果',
  `state` int(11) DEFAULT NULL COMMENT '状态:0.未完成，1，完成。2.无法完成',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qwb_complaint
-- ----------------------------

-- ----------------------------
-- Table structure for qwb_cost
-- ----------------------------
DROP TABLE IF EXISTS `qwb_cost`;
CREATE TABLE `qwb_cost` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT '用户id',
  `create_date` varchar(255) DEFAULT NULL COMMENT '创建日期',
  `electricity_costs` double DEFAULT NULL COMMENT '电费',
  `water_costs` double DEFAULT NULL COMMENT '水费',
  `gas_costs` double DEFAULT NULL COMMENT '燃气费',
  `property_costs` double DEFAULT NULL COMMENT '物业费',
  `payment_time` varchar(255) DEFAULT NULL COMMENT '缴费时间',
  `state` int(11) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qwb_cost
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qwb_exchange
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=2002 DEFAULT CHARSET=utf8;

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
  `length` double(255,1) DEFAULT '0.0' COMMENT '楼号',
  `width` double(255,1) DEFAULT '0.0' COMMENT '单元',
  `age_limit` int(255) DEFAULT '1' COMMENT '年限',
  `rent` int(255) DEFAULT '0' COMMENT '租金',
  `remark` varchar(255) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户表';

-- ----------------------------
-- Records of qwb_parking_space
-- ----------------------------

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qwb_repair
-- ----------------------------

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
