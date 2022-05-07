/*
Navicat MySQL Data Transfer

Source Server         : fldl
Source Server Version : 80027
Source Host           : localhost:3306
Source Database       : materials

Target Server Type    : MYSQL
Target Server Version : 80027
File Encoding         : 65001

Date: 2022-04-12 20:15:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_admin
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin`;
CREATE TABLE `tb_admin` (
  `adminname` varchar(255) NOT NULL,
  `adminpwd` varchar(255) NOT NULL,
  PRIMARY KEY (`adminname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of tb_admin
-- ----------------------------
INSERT INTO `tb_admin` VALUES ('he', 'he');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `userpwd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('he', '1234');
INSERT INTO `tb_user` VALUES ('mr', '1234');

-- ----------------------------
-- Table structure for 圆球度表
-- ----------------------------
DROP TABLE IF EXISTS `圆球度表`;
CREATE TABLE `圆球度表` (
  `编号` varchar(20) NOT NULL,
  `初始圆度` float(10,2) DEFAULT NULL,
  `压后圆度` float(10,2) DEFAULT NULL,
  `磨后圆度` float(10,2) DEFAULT NULL,
  `级别` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`编号`),
  CONSTRAINT `pk2` FOREIGN KEY (`编号`) REFERENCES `基本信息表` (`编号`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of 圆球度表
-- ----------------------------
INSERT INTO `圆球度表` VALUES ('LCM-B1', null, null, null, '');
INSERT INTO `圆球度表` VALUES ('LCM-B2', null, null, null, '');
INSERT INTO `圆球度表` VALUES ('LCM-B3', null, null, null, '');
INSERT INTO `圆球度表` VALUES ('LCM-B4', null, null, null, '');
INSERT INTO `圆球度表` VALUES ('LCM-B5', null, null, null, '');
INSERT INTO `圆球度表` VALUES ('LCM-B6', null, null, null, '');
INSERT INTO `圆球度表` VALUES ('LCM-D1', null, null, null, '');
INSERT INTO `圆球度表` VALUES ('LCM-D10', '0.49', null, '0.69', '中等偏低');
INSERT INTO `圆球度表` VALUES ('LCM-D11', '0.56', null, '0.76', '中等偏低');
INSERT INTO `圆球度表` VALUES ('LCM-D12', null, null, null, '');
INSERT INTO `圆球度表` VALUES ('LCM-D13', null, null, null, '');
INSERT INTO `圆球度表` VALUES ('LCM-D14', null, null, null, '');
INSERT INTO `圆球度表` VALUES ('LCM-D15', '0.57', '0.43', null, '中等偏低');
INSERT INTO `圆球度表` VALUES ('LCM-D16', null, null, null, '');
INSERT INTO `圆球度表` VALUES ('LCM-D17', '0.86', '0.80', '0.81', '中等偏高');
INSERT INTO `圆球度表` VALUES ('LCM-D18', '0.88', '0.89', '0.81', '中等偏高');
INSERT INTO `圆球度表` VALUES ('LCM-D19', '0.91', '0.85', null, '中等偏高');
INSERT INTO `圆球度表` VALUES ('LCM-D2', '0.84', '0.65', '0.72', '中等偏高');
INSERT INTO `圆球度表` VALUES ('LCM-D20', '0.96', '0.73', null, '中等');
INSERT INTO `圆球度表` VALUES ('LCM-D21', null, null, null, '');
INSERT INTO `圆球度表` VALUES ('LCM-D3', '0.82', '0.72', '0.78', '中等偏高');
INSERT INTO `圆球度表` VALUES ('LCM-D4', '0.85', '0.72', '0.73', '中等偏高');
INSERT INTO `圆球度表` VALUES ('LCM-D5', '0.53', '0.74', '0.78', '中等偏低');
INSERT INTO `圆球度表` VALUES ('LCM-D6', '0.77', '0.63', '0.79', '中等');
INSERT INTO `圆球度表` VALUES ('LCM-D7', '0.77', '0.60', '0.83', '中等');
INSERT INTO `圆球度表` VALUES ('LCM-D8', null, null, null, '');
INSERT INTO `圆球度表` VALUES ('LCM-D9', null, null, null, '');
INSERT INTO `圆球度表` VALUES ('LCM-F1', '0.69', null, null, '中等');
INSERT INTO `圆球度表` VALUES ('LCM-F2', '0.74', null, null, '中等偏高');
INSERT INTO `圆球度表` VALUES ('LCM-F3', null, null, null, '');
INSERT INTO `圆球度表` VALUES ('LCM-G1', '0.88', null, null, '中等偏高');
INSERT INTO `圆球度表` VALUES ('LCM-G10', null, null, null, '');
INSERT INTO `圆球度表` VALUES ('LCM-G11', '0.49', null, '0.57', '中等偏低');
INSERT INTO `圆球度表` VALUES ('LCM-G12', null, null, '0.51', '中等偏低');
INSERT INTO `圆球度表` VALUES ('LCM-G13', '0.59', null, '0.65', '中等偏低');
INSERT INTO `圆球度表` VALUES ('LCM-G14', null, null, null, '');
INSERT INTO `圆球度表` VALUES ('LCM-G2', '0.69', null, null, '中等');
INSERT INTO `圆球度表` VALUES ('LCM-G3', '0.59', null, null, '中等');
INSERT INTO `圆球度表` VALUES ('LCM-G4', null, '0.59', '0.72', '中的偏低');
INSERT INTO `圆球度表` VALUES ('LCM-G5', '0.88', '0.64', null, '中等');
INSERT INTO `圆球度表` VALUES ('LCM-G6', null, null, null, '');
INSERT INTO `圆球度表` VALUES ('LCM-G7', null, null, null, '');
INSERT INTO `圆球度表` VALUES ('LCM-G8', null, null, null, '');
INSERT INTO `圆球度表` VALUES ('LCM-G9', null, null, null, '');
INSERT INTO `圆球度表` VALUES ('LCM-K1', null, null, null, '');
INSERT INTO `圆球度表` VALUES ('LCM-K2', null, null, null, '');
INSERT INTO `圆球度表` VALUES ('LCM-K3', '0.42', '0.51', '0.62', '中等偏低');
INSERT INTO `圆球度表` VALUES ('LCM-K4', '0.41', '0.55', '0.74', '中等偏低');
INSERT INTO `圆球度表` VALUES ('LCM-K5', '0.53', '0.86', '0.75', '中等偏低');
INSERT INTO `圆球度表` VALUES ('LCM-K6', null, null, null, '');
INSERT INTO `圆球度表` VALUES ('LCM-K7', null, null, null, '');
INSERT INTO `圆球度表` VALUES ('LCM-K8', '0.88', '0.91', null, '中等偏高');
INSERT INTO `圆球度表` VALUES ('LCM-K8a', null, null, null, '');
INSERT INTO `圆球度表` VALUES ('LCM-K9', '0.93', '0.83', null, '中等偏高');
INSERT INTO `圆球度表` VALUES ('LCM-L1', '0.70', null, null, '中等');
INSERT INTO `圆球度表` VALUES ('LCM-L2', null, null, null, '');

-- ----------------------------
-- Table structure for 基本信息表
-- ----------------------------
DROP TABLE IF EXISTS `基本信息表`;
CREATE TABLE `基本信息表` (
  `编号` varchar(20) NOT NULL,
  `名称` varchar(20) DEFAULT NULL,
  `类型` varchar(20) DEFAULT NULL,
  `来源` varchar(20) DEFAULT NULL,
  `适用层位` varchar(20) DEFAULT NULL,
  `功能` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`编号`),
  KEY `编号` (`编号`,`名称`,`类型`,`来源`,`适用层位`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of 基本信息表
-- ----------------------------
INSERT INTO `基本信息表` VALUES ('LCM-B1', 'BZ-PRC', '混合类', '渤海钻探', '', '混合类');
INSERT INTO `基本信息表` VALUES ('LCM-B2', 'BZ-SRC', '混合类', '渤海钻探', '', '混合类');
INSERT INTO `基本信息表` VALUES ('LCM-B3', 'BZ-SRCⅡ', '混合类', '渤海钻探', '', '混合类');
INSERT INTO `基本信息表` VALUES ('LCM-B4', 'BZ-SRCⅢ', '混合类', '渤海钻探', '', '混合类');
INSERT INTO `基本信息表` VALUES ('LCM-B5', 'BZ-STAⅠ', '混合类', '渤海钻探', '', '混合类');
INSERT INTO `基本信息表` VALUES ('LCM-B6', 'BZ-STAⅡ', '圆球状', 'FDC', '目的层/盐膏层', '混合类');
INSERT INTO `基本信息表` VALUES ('LCM-D1', 'LCC100-8(3-4目）', '圆球状', '得道', '目的层', '架桥');
INSERT INTO `基本信息表` VALUES ('LCM-D10', 'LCC100-8（10-16）有机高分子', '圆球状', '得道', '', '');
INSERT INTO `基本信息表` VALUES ('LCM-D11', 'LCC100-8（30-60）有机高分子', '纤维状', '得道', '目的层', '');
INSERT INTO `基本信息表` VALUES ('LCM-D12', 'LCC200(5mm）', '纤维状', '得道', '目的层', '变形拉筋');
INSERT INTO `基本信息表` VALUES ('LCM-D13', 'LCC200(8mm）', '纤维状', '得道', '', '变形拉筋');
INSERT INTO `基本信息表` VALUES ('LCM-D14', '合成纤维LCC-200', '片状', '得道', '目的层', '变形拉筋');
INSERT INTO `基本信息表` VALUES ('LCM-D15', 'LCC300', '圆球状', '得道', '目的层', '填充');
INSERT INTO `基本信息表` VALUES ('LCM-D16', 'LCC400(7-10目）', '圆球状', '得道', '目的层', '填充');
INSERT INTO `基本信息表` VALUES ('LCM-D17', 'LCC400(10-16目）', '圆球状', '得道', '目的层', '填充');
INSERT INTO `基本信息表` VALUES ('LCM-D18', 'LCC400(16-30目）', '圆球状', '得道', '目的层', '填充');
INSERT INTO `基本信息表` VALUES ('LCM-D19', 'LCC400(30-60目）', '圆球状', '得道', '目的层', '填充');
INSERT INTO `基本信息表` VALUES ('LCM-D2', 'LCC100-8(4-6目）', '圆球状', '得道', '目的层', '架桥/填充');
INSERT INTO `基本信息表` VALUES ('LCM-D20', 'LCC400(60-120目）', '圆球状', '得道', '目的层', '填充');
INSERT INTO `基本信息表` VALUES ('LCM-D21', 'SDL', '圆球状', '格瑞迪斯', '目的层', '填充');
INSERT INTO `基本信息表` VALUES ('LCM-D3', 'LCC100-8(5-7目）（偏灰）', '圆球状', '得道', '目的层', '架桥/填充');
INSERT INTO `基本信息表` VALUES ('LCM-D4', 'LCC100-8(7-10目）', '圆球状', '得道', '目的层', '架桥/填充');
INSERT INTO `基本信息表` VALUES ('LCM-D5', 'LCC100-8(10-16目）', '圆球状', '得道', '目的层', '架桥/填充');
INSERT INTO `基本信息表` VALUES ('LCM-D6', 'LCC100-8(16-30目）', '圆球状', '得道', '目的层', '填充');
INSERT INTO `基本信息表` VALUES ('LCM-D7', 'LCC100-8(30-60目）', '圆球状', '得道', '', '填充');
INSERT INTO `基本信息表` VALUES ('LCM-D8', 'LCC100-8(5-7)(黑色)', '圆球状', '得道', '', '');
INSERT INTO `基本信息表` VALUES ('LCM-D9', 'LCC100-8（7-10）有机高分子', '圆球状', '得道', '', '');
INSERT INTO `基本信息表` VALUES ('LCM-F1', '碳酸钙（10-16目）', '圆球状', 'FDC', '目的层/盐膏层', '');
INSERT INTO `基本信息表` VALUES ('LCM-F2', '碳酸钙（16-30目）', '圆球状', 'FDC', '目的层/盐膏层', '');
INSERT INTO `基本信息表` VALUES ('LCM-F3', '碳酸钙（30-40目）', '', '', '', '');
INSERT INTO `基本信息表` VALUES ('LCM-G1', 'GT-SM（粗）', '圆球状', '格瑞迪斯', '目的层', '');
INSERT INTO `基本信息表` VALUES ('LCM-G10', 'GT-MF', '圆球状', '格瑞迪斯', '目的层', '');
INSERT INTO `基本信息表` VALUES ('LCM-G11', 'GT-HS（粗）', '复合状', '格瑞迪斯', '目的层', '架桥');
INSERT INTO `基本信息表` VALUES ('LCM-G12', 'GT-HS（中粗）', '复合状', '格瑞迪斯', '目的层', '架桥');
INSERT INTO `基本信息表` VALUES ('LCM-G13', 'GT-HS（细）', '圆球状', '格瑞迪斯', '目的层', '架桥');
INSERT INTO `基本信息表` VALUES ('LCM-G14', 'GT-DS', '片状', '鹿鸣科技', '', '填充');
INSERT INTO `基本信息表` VALUES ('LCM-G2', 'GT-SM（中粗）', '圆球状', '格瑞迪斯', '目的层', '');
INSERT INTO `基本信息表` VALUES ('LCM-G3', 'GT-SM（细）', '片状', '格瑞迪斯', '目的层', '');
INSERT INTO `基本信息表` VALUES ('LCM-G4', 'NTS-M（中粗）', '片状', '格瑞迪斯', '目的层', '架桥/填充');
INSERT INTO `基本信息表` VALUES ('LCM-G5', 'NTS-M（粗）', '片状', '格瑞迪斯', '目的层', '架桥/填充');
INSERT INTO `基本信息表` VALUES ('LCM-G6', 'NTS-S（I型，粗）', '片状', '格瑞迪斯', '目的层', '架桥/填充');
INSERT INTO `基本信息表` VALUES ('LCM-G7', 'NTS-S（II型，中粗）', '纤维状', '格瑞迪斯', '目的层/盐膏层', '架桥/填充');
INSERT INTO `基本信息表` VALUES ('LCM-G8', '超级纤维NT-2（1/2\")', '纤维状', '格瑞迪斯', '目的层/盐膏层', '变形拉筋');
INSERT INTO `基本信息表` VALUES ('LCM-G9', '超级纤维NT-2（1/8\")抗高温', '纤维状', '格瑞迪斯', '目的层/盐膏层', '变形拉筋');
INSERT INTO `基本信息表` VALUES ('LCM-K1', '石油工程纤维FCL', '纤维', '科麦仕', '目的层/盐膏层', '变形拉筋');
INSERT INTO `基本信息表` VALUES ('LCM-K2', '石油工程纤维FCL-10', '纤维', '科麦仕', '', '变形拉筋');
INSERT INTO `基本信息表` VALUES ('LCM-K3', 'GYD-粗', '复合状', '科麦仕', '目的层/盐膏层', '架桥');
INSERT INTO `基本信息表` VALUES ('LCM-K4', 'GYD-中粗', '复合状', '科麦仕', '目的层/盐膏层', '架桥');
INSERT INTO `基本信息表` VALUES ('LCM-K5', 'GYD-细', '复合状', '科麦仕', '目的层/盐膏层', '架桥');
INSERT INTO `基本信息表` VALUES ('LCM-K6', 'SHD', '纤维', '科麦仕', '目的层/盐膏层', '填充/变形拉筋');
INSERT INTO `基本信息表` VALUES ('LCM-K7', 'BYD', '圆球状', '科麦仕', '目的层/盐膏层', '填充');
INSERT INTO `基本信息表` VALUES ('LCM-K8', 'KGD-2', '圆球状', '科麦仕', '目的层', '填充');
INSERT INTO `基本信息表` VALUES ('LCM-K8a', 'KGD-1', '圆球状', '科麦仕', '目的层', '');
INSERT INTO `基本信息表` VALUES ('LCM-K9', 'KGD-3', '圆球状', '得道', '目的层', '填充');
INSERT INTO `基本信息表` VALUES ('LCM-L1', '贝壳（细）', '片状', '鹿鸣科技', '', '');
INSERT INTO `基本信息表` VALUES ('LCM-L2', '贝壳（粗）抗温差', '混合类', '渤海钻探', '', '');

-- ----------------------------
-- Table structure for 抗压能力表
-- ----------------------------
DROP TABLE IF EXISTS `抗压能力表`;
CREATE TABLE `抗压能力表` (
  `编号` varchar(20) NOT NULL,
  `D50降级` float(10,2) DEFAULT NULL,
  `D90降级` float(10,2) DEFAULT NULL,
  `级别` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`编号`),
  CONSTRAINT `pk5` FOREIGN KEY (`编号`) REFERENCES `基本信息表` (`编号`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of 抗压能力表
-- ----------------------------
INSERT INTO `抗压能力表` VALUES ('LCM-B1', null, null, '');
INSERT INTO `抗压能力表` VALUES ('LCM-B2', null, null, '');
INSERT INTO `抗压能力表` VALUES ('LCM-B3', null, null, '');
INSERT INTO `抗压能力表` VALUES ('LCM-B4', null, null, '');
INSERT INTO `抗压能力表` VALUES ('LCM-B5', null, null, '');
INSERT INTO `抗压能力表` VALUES ('LCM-B6', null, null, '');
INSERT INTO `抗压能力表` VALUES ('LCM-D1', null, null, '');
INSERT INTO `抗压能力表` VALUES ('LCM-D10', null, null, '');
INSERT INTO `抗压能力表` VALUES ('LCM-D11', null, null, '');
INSERT INTO `抗压能力表` VALUES ('LCM-D12', null, null, '');
INSERT INTO `抗压能力表` VALUES ('LCM-D13', null, null, '');
INSERT INTO `抗压能力表` VALUES ('LCM-D14', null, null, '');
INSERT INTO `抗压能力表` VALUES ('LCM-D15', '49.44', '10.20', '中等');
INSERT INTO `抗压能力表` VALUES ('LCM-D16', null, null, '');
INSERT INTO `抗压能力表` VALUES ('LCM-D17', '22.67', '19.64', '中等');
INSERT INTO `抗压能力表` VALUES ('LCM-D18', '23.25', '22.67', '中等偏低');
INSERT INTO `抗压能力表` VALUES ('LCM-D19', '4.14', '4.01', '低');
INSERT INTO `抗压能力表` VALUES ('LCM-D2', '-3.20', '-4.48', '高');
INSERT INTO `抗压能力表` VALUES ('LCM-D20', null, null, '');
INSERT INTO `抗压能力表` VALUES ('LCM-D21', null, null, '');
INSERT INTO `抗压能力表` VALUES ('LCM-D3', '0.25', '2.59', '高');
INSERT INTO `抗压能力表` VALUES ('LCM-D4', '1.56', '3.49', '高');
INSERT INTO `抗压能力表` VALUES ('LCM-D5', '-1.55', '1.64', '高');
INSERT INTO `抗压能力表` VALUES ('LCM-D6', '-18.28', '10.67', '中等');
INSERT INTO `抗压能力表` VALUES ('LCM-D7', '15.45', '21.24', '中等偏低');
INSERT INTO `抗压能力表` VALUES ('LCM-D8', null, null, '');
INSERT INTO `抗压能力表` VALUES ('LCM-D9', null, null, '');
INSERT INTO `抗压能力表` VALUES ('LCM-F1', null, null, '');
INSERT INTO `抗压能力表` VALUES ('LCM-F2', null, null, '');
INSERT INTO `抗压能力表` VALUES ('LCM-F3', null, null, '');
INSERT INTO `抗压能力表` VALUES ('LCM-G1', null, null, '');
INSERT INTO `抗压能力表` VALUES ('LCM-G10', null, null, '');
INSERT INTO `抗压能力表` VALUES ('LCM-G11', '55.66', '4.11', '高');
INSERT INTO `抗压能力表` VALUES ('LCM-G12', '14.50', '3.84', '高');
INSERT INTO `抗压能力表` VALUES ('LCM-G13', '12.68', '4.78', '高');
INSERT INTO `抗压能力表` VALUES ('LCM-G14', null, null, '');
INSERT INTO `抗压能力表` VALUES ('LCM-G2', null, null, '');
INSERT INTO `抗压能力表` VALUES ('LCM-G3', null, null, '');
INSERT INTO `抗压能力表` VALUES ('LCM-G4', '30.00', '4.28', '低');
INSERT INTO `抗压能力表` VALUES ('LCM-G5', '23.07', '13.89', '中等');
INSERT INTO `抗压能力表` VALUES ('LCM-G6', null, null, '');
INSERT INTO `抗压能力表` VALUES ('LCM-G7', null, null, '');
INSERT INTO `抗压能力表` VALUES ('LCM-G8', null, null, '');
INSERT INTO `抗压能力表` VALUES ('LCM-G9', null, null, '');
INSERT INTO `抗压能力表` VALUES ('LCM-K1', null, null, '');
INSERT INTO `抗压能力表` VALUES ('LCM-K2', null, null, '');
INSERT INTO `抗压能力表` VALUES ('LCM-K3', '-5.94', '-8.76', '中等偏高');
INSERT INTO `抗压能力表` VALUES ('LCM-K4', '-13.86', '-17.66', '中等');
INSERT INTO `抗压能力表` VALUES ('LCM-K5', '-13.12', '-17.66', '中等');
INSERT INTO `抗压能力表` VALUES ('LCM-K6', null, null, '');
INSERT INTO `抗压能力表` VALUES ('LCM-K7', null, null, '');
INSERT INTO `抗压能力表` VALUES ('LCM-K8', '22.87', '19.14', '中等');
INSERT INTO `抗压能力表` VALUES ('LCM-K8a', null, null, '');
INSERT INTO `抗压能力表` VALUES ('LCM-K9', '3.61', '8.05', '中等偏高');
INSERT INTO `抗压能力表` VALUES ('LCM-L1', null, null, '');
INSERT INTO `抗压能力表` VALUES ('LCM-L2', null, null, '');

-- ----------------------------
-- Table structure for 抗磨蚀能力表
-- ----------------------------
DROP TABLE IF EXISTS `抗磨蚀能力表`;
CREATE TABLE `抗磨蚀能力表` (
  `编号` varchar(20) NOT NULL,
  `D50降级` float(10,2) DEFAULT NULL,
  `D90降级` float(10,2) DEFAULT NULL,
  `级别` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`编号`),
  CONSTRAINT `pk6` FOREIGN KEY (`编号`) REFERENCES `基本信息表` (`编号`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of 抗磨蚀能力表
-- ----------------------------
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-B1', null, null, '');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-B2', null, null, '');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-B3', null, null, '');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-B4', null, null, '');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-B5', null, null, '');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-B6', null, null, '');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-D1', null, null, '');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-D10', '-11.35', '-1.59', '高');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-D11', '-16.18', '2.27', '高');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-D12', null, null, '');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-D13', null, null, '');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-D14', null, null, '');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-D15', null, null, '');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-D16', null, null, '');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-D17', '40.20', '34.16', '低');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-D18', '17.21', '11.83', '中等');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-D19', null, null, '');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-D2', '-11.35', '2.92', '高');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-D20', null, null, '');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-D21', null, null, '');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-D3', '-1.05', '1.30', '高');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-D4', '12.75', '9.92', '中等偏高');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-D5', '3.10', '16.56', '中等');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-D6', '5.11', '15.23', '中等');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-D7', '9.96', '13.66', '中等');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-D8', null, null, '');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-D9', null, null, '');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-F1', null, null, '');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-F2', null, null, '');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-F3', null, null, '');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-G1', null, null, '');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-G10', null, null, '');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-G11', '55.98', '30.37', '低');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-G12', '30.55', '0.78', '高');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-G13', '25.26', '14.79', '中等');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-G14', null, null, '');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-G2', null, null, '');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-G3', null, null, '');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-G4', '54.48', '13.13', '中等');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-G5', null, null, '');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-G6', null, null, '');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-G7', null, null, '');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-G8', null, null, '');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-G9', null, null, '');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-K1', null, null, '');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-K2', null, null, '');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-K3', '7.08', '1.82', '高');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-K4', '31.55', '23.48', '中等偏低');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-K5', '42.20', '15.90', '中等');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-K6', null, null, '');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-K7', null, null, '');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-K8', null, null, '');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-K8a', null, null, '');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-K9', null, null, '');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-L1', null, null, '');
INSERT INTO `抗磨蚀能力表` VALUES ('LCM-L2', null, null, '');

-- ----------------------------
-- Table structure for 抗高温老化性质表
-- ----------------------------
DROP TABLE IF EXISTS `抗高温老化性质表`;
CREATE TABLE `抗高温老化性质表` (
  `编号` varchar(20) NOT NULL,
  `老化D50降级` float(10,2) DEFAULT NULL,
  `老化D90降级` float(10,2) DEFAULT NULL,
  `老化压后D50降级` float(10,2) DEFAULT NULL,
  `老化压后D90降级` float(10,2) DEFAULT NULL,
  `级别` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`编号`),
  CONSTRAINT `fk7` FOREIGN KEY (`编号`) REFERENCES `基本信息表` (`编号`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of 抗高温老化性质表
-- ----------------------------
INSERT INTO `抗高温老化性质表` VALUES ('LCM-B1', null, null, null, null, '');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-B2', null, null, null, null, '');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-B3', null, null, null, null, '');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-B4', null, null, null, null, '');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-B5', null, null, null, null, '');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-B6', null, null, null, null, '');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-D1', null, null, null, null, '');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-D10', '-16.74', '-16.74', '-0.79', '-1.34', '高');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-D11', '-10.53', '-10.53', '-8.26', '-4.17', '高');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-D12', null, null, null, null, '');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-D13', null, null, null, null, '');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-D14', null, null, null, null, '');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-D15', null, null, null, null, '');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-D16', '6.35', '6.35', '4.86', '5.61', '中等偏高');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-D17', '12.29', '12.29', '10.43', '7.08', '中等偏高');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-D18', '9.72', '9.72', null, null, '');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-D19', '0.62', '0.62', null, null, '');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-D2', '-5.11', '-5.11', '-11.94', '-2.50', '高');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-D20', null, null, null, null, '');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-D21', null, null, null, null, '');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-D3', '-1.05', '-1.05', '-5.11', '-4.29', '高');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-D4', '-0.54', '-0.54', '-2.91', '-1.05', '高');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-D5', '0.52', '0.52', '-6.22', '-1.04', '高');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-D6', '-4.79', '-4.79', '2.03', '8.17', '中等偏高');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-D7', '2.59', '2.59', '-3.09', '4.36', '高');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-D8', null, null, null, null, '');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-D9', null, null, null, null, '');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-F1', null, null, null, null, '');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-F2', null, null, null, null, '');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-F3', null, null, null, null, '');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-G1', null, null, null, null, '');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-G10', null, null, null, null, '');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-G11', null, null, null, null, '');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-G12', null, null, null, null, '');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-G13', null, null, null, null, '');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-G14', null, null, null, null, '');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-G2', null, null, null, null, '');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-G3', null, null, null, null, '');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-G4', null, null, null, null, '');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-G5', null, null, null, null, '');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-G6', null, null, null, null, '');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-G7', null, null, null, null, '');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-G8', null, null, null, null, '');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-G9', null, null, null, null, '');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-K1', null, null, null, null, '');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-K2', null, null, null, null, '');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-K3', '-6.98', '-6.98', '-4.36', '-3.55', '高');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-K4', '-4.15', '-4.15', '-6.83', '-3.77', '高');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-K5', '-5.94', '-5.94', '-6.22', '-4.01', '高');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-K6', null, null, null, null, '');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-K7', null, null, null, null, '');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-K8', null, null, null, null, '');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-K8a', null, null, null, null, '');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-K9', null, null, null, null, '');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-L1', null, null, null, null, '');
INSERT INTO `抗高温老化性质表` VALUES ('LCM-L2', null, null, null, null, '');

-- ----------------------------
-- Table structure for 摩擦系数表
-- ----------------------------
DROP TABLE IF EXISTS `摩擦系数表`;
CREATE TABLE `摩擦系数表` (
  `编号` varchar(20) NOT NULL,
  `dry_avg` float(10,2) DEFAULT NULL,
  `oil_based_avg` float(10,2) DEFAULT NULL,
  `dry_max_s` float(10,2) DEFAULT NULL,
  `oil_based_max` float(10,2) DEFAULT NULL,
  `级别` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`编号`),
  CONSTRAINT `pk4` FOREIGN KEY (`编号`) REFERENCES `基本信息表` (`编号`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of 摩擦系数表
-- ----------------------------
INSERT INTO `摩擦系数表` VALUES ('LCM-B1', '0.99', '0.73', '0.88', '0.80', '中等');
INSERT INTO `摩擦系数表` VALUES ('LCM-B2', '0.79', null, '0.60', null, '中等偏低');
INSERT INTO `摩擦系数表` VALUES ('LCM-B3', '0.57', '0.70', '0.69', '0.62', '中等偏低');
INSERT INTO `摩擦系数表` VALUES ('LCM-B4', '1.01', null, '1.08', null, '中等');
INSERT INTO `摩擦系数表` VALUES ('LCM-B5', '0.94', null, '1.12', null, '中等');
INSERT INTO `摩擦系数表` VALUES ('LCM-B6', '1.09', null, '1.31', null, '中等');
INSERT INTO `摩擦系数表` VALUES ('LCM-D1', null, null, null, null, '');
INSERT INTO `摩擦系数表` VALUES ('LCM-D10', '1.24', '0.72', '1.64', '0.64', '中等偏高');
INSERT INTO `摩擦系数表` VALUES ('LCM-D11', '1.25', '0.55', '1.31', '0.54', '中等偏高');
INSERT INTO `摩擦系数表` VALUES ('LCM-D12', '0.89', '0.61', '0.94', '0.54', '中等');
INSERT INTO `摩擦系数表` VALUES ('LCM-D13', '0.61', null, '0.68', null, '中等偏低');
INSERT INTO `摩擦系数表` VALUES ('LCM-D14', '1.03', null, '1.26', null, '中等');
INSERT INTO `摩擦系数表` VALUES ('LCM-D15', '0.73', '1.10', '0.76', '0.91', '中等偏低');
INSERT INTO `摩擦系数表` VALUES ('LCM-D16', null, null, null, null, '');
INSERT INTO `摩擦系数表` VALUES ('LCM-D17', '1.46', '0.76', '2.30', '0.86', '高');
INSERT INTO `摩擦系数表` VALUES ('LCM-D18', '1.43', null, '2.26', null, '高');
INSERT INTO `摩擦系数表` VALUES ('LCM-D19', '1.47', null, '2.15', null, '高');
INSERT INTO `摩擦系数表` VALUES ('LCM-D2', '1.01', null, '0.94', null, '中等');
INSERT INTO `摩擦系数表` VALUES ('LCM-D20', '1.50', '1.35', '1.93', '1.49', '高');
INSERT INTO `摩擦系数表` VALUES ('LCM-D21', '1.21', '1.04', '1.32', '1.24', '中等偏高');
INSERT INTO `摩擦系数表` VALUES ('LCM-D3', '1.11', null, '1.11', null, '中等偏高');
INSERT INTO `摩擦系数表` VALUES ('LCM-D4', '1.28', null, '1.54', null, '中等偏高');
INSERT INTO `摩擦系数表` VALUES ('LCM-D5', '1.09', null, '1.90', null, '中等');
INSERT INTO `摩擦系数表` VALUES ('LCM-D6', '1.29', null, '1.64', null, '中等偏高');
INSERT INTO `摩擦系数表` VALUES ('LCM-D7', '1.27', '0.55', '1.47', '0.60', '中等偏高');
INSERT INTO `摩擦系数表` VALUES ('LCM-D8', '1.11', null, '1.11', null, '中等偏高');
INSERT INTO `摩擦系数表` VALUES ('LCM-D9', '1.28', null, '1.54', null, '中等偏高');
INSERT INTO `摩擦系数表` VALUES ('LCM-F1', '0.95', null, '1.41', null, '中等');
INSERT INTO `摩擦系数表` VALUES ('LCM-F2', null, null, null, null, '');
INSERT INTO `摩擦系数表` VALUES ('LCM-F3', null, null, null, null, '');
INSERT INTO `摩擦系数表` VALUES ('LCM-G1', null, null, null, null, '');
INSERT INTO `摩擦系数表` VALUES ('LCM-G10', '1.03', null, '1.27', null, '中等');
INSERT INTO `摩擦系数表` VALUES ('LCM-G11', null, null, null, null, '');
INSERT INTO `摩擦系数表` VALUES ('LCM-G12', null, null, null, null, '');
INSERT INTO `摩擦系数表` VALUES ('LCM-G13', '0.46', null, '0.68', null, '低');
INSERT INTO `摩擦系数表` VALUES ('LCM-G14', '0.67', null, '0.74', null, '中等偏低');
INSERT INTO `摩擦系数表` VALUES ('LCM-G2', null, null, null, null, '');
INSERT INTO `摩擦系数表` VALUES ('LCM-G3', null, null, null, null, '');
INSERT INTO `摩擦系数表` VALUES ('LCM-G4', '1.27', null, '1.42', null, '中等偏高');
INSERT INTO `摩擦系数表` VALUES ('LCM-G5', '0.87', null, '1.04', null, '中等');
INSERT INTO `摩擦系数表` VALUES ('LCM-G6', null, null, null, null, '');
INSERT INTO `摩擦系数表` VALUES ('LCM-G7', null, null, null, null, '');
INSERT INTO `摩擦系数表` VALUES ('LCM-G8', '0.62', null, '0.76', null, '中等偏低');
INSERT INTO `摩擦系数表` VALUES ('LCM-G9', '0.80', null, '0.85', null, '中等偏低');
INSERT INTO `摩擦系数表` VALUES ('LCM-K1', '1.22', null, '1.25', null, '中等偏高');
INSERT INTO `摩擦系数表` VALUES ('LCM-K2', '0.86', null, '0.90', null, '中等');
INSERT INTO `摩擦系数表` VALUES ('LCM-K3', '1.45', null, '1.21', null, '高');
INSERT INTO `摩擦系数表` VALUES ('LCM-K4', '1.41', null, '0.93', null, '高');
INSERT INTO `摩擦系数表` VALUES ('LCM-K5', '1.23', null, '1.07', null, '中等偏高');
INSERT INTO `摩擦系数表` VALUES ('LCM-K6', '1.01', null, '1.15', null, '中等');
INSERT INTO `摩擦系数表` VALUES ('LCM-K7', '1.32', null, '1.89', null, '中等偏高');
INSERT INTO `摩擦系数表` VALUES ('LCM-K8', '1.27', null, '1.55', null, '中等偏高');
INSERT INTO `摩擦系数表` VALUES ('LCM-K8a', null, null, null, null, '');
INSERT INTO `摩擦系数表` VALUES ('LCM-K9', '0.98', null, '1.02', null, '中等');
INSERT INTO `摩擦系数表` VALUES ('LCM-L1', '0.95', null, '1.13', null, '中等');
INSERT INTO `摩擦系数表` VALUES ('LCM-L2', '1.39', null, '1.43', null, '中等偏高');

-- ----------------------------
-- Table structure for 物理形状表
-- ----------------------------
DROP TABLE IF EXISTS `物理形状表`;
CREATE TABLE `物理形状表` (
  `编号` varchar(20) NOT NULL,
  `形状` varchar(20) DEFAULT NULL,
  `密度` float(10,2) DEFAULT NULL,
  `D50` float(10,2) DEFAULT NULL,
  `D90` float(10,2) DEFAULT NULL,
  `长径比` float(10,2) DEFAULT NULL,
  PRIMARY KEY (`编号`),
  CONSTRAINT `fk1` FOREIGN KEY (`编号`) REFERENCES `基本信息表` (`编号`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of 物理形状表
-- ----------------------------
INSERT INTO `物理形状表` VALUES ('LCM-B1', '多种圆球状', null, null, null, null);
INSERT INTO `物理形状表` VALUES ('LCM-B2', '圆球+纤维', null, null, null, null);
INSERT INTO `物理形状表` VALUES ('LCM-B3', '圆球+纤维', null, null, null, null);
INSERT INTO `物理形状表` VALUES ('LCM-B4', '圆球+纤维', null, null, null, null);
INSERT INTO `物理形状表` VALUES ('LCM-B5', '多种圆球状', null, null, null, null);
INSERT INTO `物理形状表` VALUES ('LCM-B6', '多种圆球状', null, null, null, null);
INSERT INTO `物理形状表` VALUES ('LCM-D1', '圆球状', '1.35', null, null, null);
INSERT INTO `物理形状表` VALUES ('LCM-D10', '圆球状', null, '2230.34', '3220.03', null);
INSERT INTO `物理形状表` VALUES ('LCM-D11', '圆球状', null, '760.84', '1154.59', null);
INSERT INTO `物理形状表` VALUES ('LCM-D12', '纤维状', '1.02', null, null, '250.00');
INSERT INTO `物理形状表` VALUES ('LCM-D13', '纤维状', '1.02', null, null, '400.00');
INSERT INTO `物理形状表` VALUES ('LCM-D14', '纤维状', '1.02', null, null, '200.00');
INSERT INTO `物理形状表` VALUES ('LCM-D15', '片状', '1.07', '3576.25', '6043.26', null);
INSERT INTO `物理形状表` VALUES ('LCM-D16', '圆球状', '2.70', '2780.13', '4153.02', null);
INSERT INTO `物理形状表` VALUES ('LCM-D17', '圆球状', '2.70', '2338.17', '3223.02', null);
INSERT INTO `物理形状表` VALUES ('LCM-D18', '圆球状', '2.70', '1702.28', '2149.92', null);
INSERT INTO `物理形状表` VALUES ('LCM-D19', '圆球状', '2.70', '764.84', '1078.47', null);
INSERT INTO `物理形状表` VALUES ('LCM-D2', '圆球状', '1.35', '4308.37', '5830.06', null);
INSERT INTO `物理形状表` VALUES ('LCM-D20', '圆球状', '2.70', '313.50', '417.26', null);
INSERT INTO `物理形状表` VALUES ('LCM-D21', '圆球状', null, '33.03', '156.51', null);
INSERT INTO `物理形状表` VALUES ('LCM-D3', '圆球状', '1.35', '4446.14', '5556.70', null);
INSERT INTO `物理形状表` VALUES ('LCM-D4', '圆球状', '1.35', '3384.59', '4363.41', null);
INSERT INTO `物理形状表` VALUES ('LCM-D5', '圆球状', '1.35', '2295.63', '3529.66', null);
INSERT INTO `物理形状表` VALUES ('LCM-D6', '圆球状', '1.35', '1481.33', '2729.54', null);
INSERT INTO `物理形状表` VALUES ('LCM-D7', '圆球状', '1.35', '803.93', '1092.71', null);
INSERT INTO `物理形状表` VALUES ('LCM-D8', '圆球状', null, null, null, null);
INSERT INTO `物理形状表` VALUES ('LCM-D9', '圆球状', null, null, null, null);
INSERT INTO `物理形状表` VALUES ('LCM-F1', '圆球状', null, null, null, null);
INSERT INTO `物理形状表` VALUES ('LCM-F2', '圆球状', null, null, null, null);
INSERT INTO `物理形状表` VALUES ('LCM-F3', '圆球状', null, null, null, null);
INSERT INTO `物理形状表` VALUES ('LCM-G1', '圆球状', null, null, null, null);
INSERT INTO `物理形状表` VALUES ('LCM-G10', '圆球+纤维', null, '38.32', '271.96', null);
INSERT INTO `物理形状表` VALUES ('LCM-G11', '复合状', '1.43', '5495.54', '7036.32', null);
INSERT INTO `物理形状表` VALUES ('LCM-G12', '复合状', '1.43', '2968.55', '4797.56', null);
INSERT INTO `物理形状表` VALUES ('LCM-G13', '复合状', '1.43', '3023.57', '4077.46', null);
INSERT INTO `物理形状表` VALUES ('LCM-G14', '圆球状', null, '55.32', '332.16', null);
INSERT INTO `物理形状表` VALUES ('LCM-G2', '圆球状', null, null, null, null);
INSERT INTO `物理形状表` VALUES ('LCM-G3', '圆球状', null, null, null, null);
INSERT INTO `物理形状表` VALUES ('LCM-G4', '片状', '1.42', '2295.63', '3311.31', null);
INSERT INTO `物理形状表` VALUES ('LCM-G5', '片状', '1.42', '3194.79', '6236.51', null);
INSERT INTO `物理形状表` VALUES ('LCM-G6', '片状', '2.81', null, null, null);
INSERT INTO `物理形状表` VALUES ('LCM-G7', '片状', '2.81', null, null, null);
INSERT INTO `物理形状表` VALUES ('LCM-G8', '纤维状', '1.00', null, null, '635.00');
INSERT INTO `物理形状表` VALUES ('LCM-G9', '纤维状', '1.00', null, null, '158.75');
INSERT INTO `物理形状表` VALUES ('LCM-K1', '纤维', null, null, null, '500.00');
INSERT INTO `物理形状表` VALUES ('LCM-K2', '纤维', null, null, null, '450.00');
INSERT INTO `物理形状表` VALUES ('LCM-K3', '复合状', '1.60', '5245.11', '6836.19', null);
INSERT INTO `物理形状表` VALUES ('LCM-K4', '复合状', '1.60', '3075.59', '4207.85', null);
INSERT INTO `物理形状表` VALUES ('LCM-K5', '复合状', '1.60', '2061.55', '2715.26', null);
INSERT INTO `物理形状表` VALUES ('LCM-K6', '圆球+纤维', null, null, null, '100.00');
INSERT INTO `物理形状表` VALUES ('LCM-K7', '圆球状', null, '45.35', '196.84', null);
INSERT INTO `物理形状表` VALUES ('LCM-K8', '圆球状', '2.71', '1292.45', '1827.22', null);
INSERT INTO `物理形状表` VALUES ('LCM-K8a', '', null, null, null, null);
INSERT INTO `物理形状表` VALUES ('LCM-K9', '圆球状', '2.71', '2040.04', '2816.83', null);
INSERT INTO `物理形状表` VALUES ('LCM-L1', '片状', null, '608.57', '1430.63', null);
INSERT INTO `物理形状表` VALUES ('LCM-L2', '片状', null, null, null, null);

-- ----------------------------
-- Table structure for 配方设计表
-- ----------------------------
DROP TABLE IF EXISTS `配方设计表`;
CREATE TABLE `配方设计表` (
  `编号` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of 配方设计表
-- ----------------------------

-- ----------------------------
-- Table structure for 酸溶率表
-- ----------------------------
DROP TABLE IF EXISTS `酸溶率表`;
CREATE TABLE `酸溶率表` (
  `编号` varchar(20) NOT NULL,
  `acid20` float(10,2) DEFAULT NULL,
  `acid40` float(10,2) DEFAULT NULL,
  `acid60` float(10,2) DEFAULT NULL,
  `acid80` float(10,2) DEFAULT NULL,
  `acid100` float(10,2) DEFAULT NULL,
  `级别` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`编号`),
  CONSTRAINT `pk3` FOREIGN KEY (`编号`) REFERENCES `基本信息表` (`编号`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of 酸溶率表
-- ----------------------------
INSERT INTO `酸溶率表` VALUES ('LCM-B1', '23.43', '26.87', '38.64', '41.95', '44.91', '中等');
INSERT INTO `酸溶率表` VALUES ('LCM-B2', '23.79', '51.77', '72.28', '75.89', '87.58', '高');
INSERT INTO `酸溶率表` VALUES ('LCM-B3', '15.83', '43.70', '51.49', '67.01', '81.71', '高');
INSERT INTO `酸溶率表` VALUES ('LCM-B4', '20.46', '38.59', '60.32', '70.86', '85.81', '高');
INSERT INTO `酸溶率表` VALUES ('LCM-B5', '11.39', '11.77', '13.00', '37.42', '52.93', '中等');
INSERT INTO `酸溶率表` VALUES ('LCM-B6', '17.46', '31.91', '49.94', '79.59', '86.41', '高');
INSERT INTO `酸溶率表` VALUES ('LCM-D1', '1.21', '1.25', '7.02', '8.22', '11.72', '低');
INSERT INTO `酸溶率表` VALUES ('LCM-D10', '12.35', '20.98', '26.93', '27.08', '36.75', '中等偏低');
INSERT INTO `酸溶率表` VALUES ('LCM-D11', '15.45', '16.42', '38.09', '39.65', '40.02', '中等');
INSERT INTO `酸溶率表` VALUES ('LCM-D12', '0.82', '1.54', '58.09', '59.52', '67.09', '中等偏高');
INSERT INTO `酸溶率表` VALUES ('LCM-D13', '0.42', '1.24', '15.91', '28.23', '34.75', '中等偏低');
INSERT INTO `酸溶率表` VALUES ('LCM-D14', '0.05', '2.20', '2.43', '3.22', '3.98', '低');
INSERT INTO `酸溶率表` VALUES ('LCM-D15', '3.56', '11.65', '13.48', '15.09', '16.76', '低');
INSERT INTO `酸溶率表` VALUES ('LCM-D16', null, null, null, null, null, '高');
INSERT INTO `酸溶率表` VALUES ('LCM-D17', '6.34', '41.49', '55.91', '57.93', '100.00', '高');
INSERT INTO `酸溶率表` VALUES ('LCM-D18', '20.45', '41.97', '56.41', '58.90', '100.00', '高');
INSERT INTO `酸溶率表` VALUES ('LCM-D19', '24.80', '41.24', '57.85', '61.90', '100.00', '高');
INSERT INTO `酸溶率表` VALUES ('LCM-D2', '0.73', '1.92', '4.36', '6.56', '7.68', '低');
INSERT INTO `酸溶率表` VALUES ('LCM-D20', '25.05', '41.88', '59.44', '62.44', '100.00', '高');
INSERT INTO `酸溶率表` VALUES ('LCM-D21', '21.74', '53.11', '54.72', '58.00', '78.67', '中等偏高');
INSERT INTO `酸溶率表` VALUES ('LCM-D3', '6.72', '10.64', '12.03', '17.72', '17.79', '低');
INSERT INTO `酸溶率表` VALUES ('LCM-D4', '2.52', '3.26', '5.33', '7.38', '8.65', '低');
INSERT INTO `酸溶率表` VALUES ('LCM-D5', '5.28', '4.27', '8.79', '9.74', '10.45', '低');
INSERT INTO `酸溶率表` VALUES ('LCM-D6', '5.85', '7.63', '9.41', '9.91', '10.93', '低');
INSERT INTO `酸溶率表` VALUES ('LCM-D7', '7.38', '9.13', '10.15', '10.71', '13.17', '低');
INSERT INTO `酸溶率表` VALUES ('LCM-D8', '1.06', '1.82', '2.38', '6.29', '8.84', '低');
INSERT INTO `酸溶率表` VALUES ('LCM-D9', '6.35', '2.86', '2.72', '15.99', '17.07', '低');
INSERT INTO `酸溶率表` VALUES ('LCM-F1', '24.05', '40.05', '54.37', '61.39', '94.94', '高');
INSERT INTO `酸溶率表` VALUES ('LCM-F2', '27.61', '42.67', '57.11', '63.93', '100.00', '高');
INSERT INTO `酸溶率表` VALUES ('LCM-F3', '31.36', '46.51', '60.10', '66.21', '100.00', '高');
INSERT INTO `酸溶率表` VALUES ('LCM-G1', null, null, null, null, null, '中等');
INSERT INTO `酸溶率表` VALUES ('LCM-G10', '31.12', '31.46', '38.22', '40.85', '78.53', '中等偏高');
INSERT INTO `酸溶率表` VALUES ('LCM-G11', '20.59', '22.80', '24.04', '37.66', '56.83', '中等');
INSERT INTO `酸溶率表` VALUES ('LCM-G12', '20.62', '22.20', '23.78', '33.53', '55.84', '中等');
INSERT INTO `酸溶率表` VALUES ('LCM-G13', '20.23', '20.58', '20.46', '34.70', '40.32', '中等');
INSERT INTO `酸溶率表` VALUES ('LCM-G14', '25.33', '36.99', '45.78', '57.94', '73.06', '中等偏高');
INSERT INTO `酸溶率表` VALUES ('LCM-G2', null, null, null, null, null, '中等');
INSERT INTO `酸溶率表` VALUES ('LCM-G3', null, null, null, null, null, '中等');
INSERT INTO `酸溶率表` VALUES ('LCM-G4', null, null, null, null, null, '中等偏低');
INSERT INTO `酸溶率表` VALUES ('LCM-G5', null, null, null, null, null, '中等偏低');
INSERT INTO `酸溶率表` VALUES ('LCM-G6', null, null, null, null, null, '中等');
INSERT INTO `酸溶率表` VALUES ('LCM-G7', null, null, null, null, null, '中等');
INSERT INTO `酸溶率表` VALUES ('LCM-G8', '2.88', '5.42', '15.59', '22.34', '23.99', '中等偏低');
INSERT INTO `酸溶率表` VALUES ('LCM-G9', '3.54', '5.48', '19.92', '25.47', '26.71', '中等偏低');
INSERT INTO `酸溶率表` VALUES ('LCM-K1', '6.61', '12.87', '23.41', '31.54', '34.84', '中等偏低');
INSERT INTO `酸溶率表` VALUES ('LCM-K2', '2.08', '2.38', '2.43', '2.37', '2.52', '低');
INSERT INTO `酸溶率表` VALUES ('LCM-K3', '1.85', '1.93', '4.36', '13.00', '38.39', '中等偏低');
INSERT INTO `酸溶率表` VALUES ('LCM-K4', '21.31', '29.63', '43.18', '44.58', '44.75', '中等');
INSERT INTO `酸溶率表` VALUES ('LCM-K5', '0.13', '8.16', '10.87', '17.28', '48.68', '中等');
INSERT INTO `酸溶率表` VALUES ('LCM-K6', '0.29', '2.88', '5.50', '25.89', '29.38', '中等偏低');
INSERT INTO `酸溶率表` VALUES ('LCM-K7', '23.71', '25.37', '26.65', '30.76', '43.39', '中等');
INSERT INTO `酸溶率表` VALUES ('LCM-K8', '22.48', '48.21', '45.83', '59.24', '83.82', '高');
INSERT INTO `酸溶率表` VALUES ('LCM-K8a', null, null, null, null, null, '');
INSERT INTO `酸溶率表` VALUES ('LCM-K9', '22.75', '42.85', '63.47', '70.92', '100.00', '高');
INSERT INTO `酸溶率表` VALUES ('LCM-L1', '20.83', '27.63', '37.70', '49.98', '82.21', '高');
INSERT INTO `酸溶率表` VALUES ('LCM-L2', '19.05', '25.83', '35.49', '48.61', '80.16', '高');

-- ----------------------------
-- View structure for v_abrasion
-- ----------------------------
DROP VIEW IF EXISTS `v_abrasion`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_abrasion` AS select `抗磨蚀能力表`.`编号` AS `编号`,`抗磨蚀能力表`.`D50降级` AS `D50降级`,`抗磨蚀能力表`.`D90降级` AS `D90降级`,`抗磨蚀能力表`.`级别` AS `级别` from `抗磨蚀能力表` ;

-- ----------------------------
-- View structure for v_acid
-- ----------------------------
DROP VIEW IF EXISTS `v_acid`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_acid` AS select `酸溶率表`.`编号` AS `编号`,`酸溶率表`.`acid20` AS `acid20`,`酸溶率表`.`acid40` AS `acid40`,`酸溶率表`.`acid60` AS `acid60`,`酸溶率表`.`acid80` AS `acid80`,`酸溶率表`.`acid100` AS `acid100`,`酸溶率表`.`级别` AS `级别` from `酸溶率表` ;

-- ----------------------------
-- View structure for v_basicinfo
-- ----------------------------
DROP VIEW IF EXISTS `v_basicinfo`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_basicinfo` AS select `基本信息表`.`编号` AS `编号`,`基本信息表`.`名称` AS `名称`,`基本信息表`.`类型` AS `类型`,`基本信息表`.`来源` AS `来源`,`基本信息表`.`适用层位` AS `适用层位`,`基本信息表`.`功能` AS `功能` from `基本信息表` ;

-- ----------------------------
-- View structure for v_compress
-- ----------------------------
DROP VIEW IF EXISTS `v_compress`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_compress` AS select `抗压能力表`.`编号` AS `编号`,`抗压能力表`.`D50降级` AS `D50降级`,`抗压能力表`.`D90降级` AS `D90降级`,`抗压能力表`.`级别` AS `级别` from `抗压能力表` ;

-- ----------------------------
-- View structure for v_fric
-- ----------------------------
DROP VIEW IF EXISTS `v_fric`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_fric` AS select `摩擦系数表`.`编号` AS `编号`,`摩擦系数表`.`dry_avg` AS `dry_avg`,`摩擦系数表`.`oil_based_avg` AS `oil_based_avg`,`摩擦系数表`.`dry_max_s` AS `dry_max_s`,`摩擦系数表`.`oil_based_max` AS `oil_based_max`,`摩擦系数表`.`级别` AS `级别` from `摩擦系数表` ;

-- ----------------------------
-- View structure for v_physicshape
-- ----------------------------
DROP VIEW IF EXISTS `v_physicshape`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_physicshape` AS select `物理形状表`.`编号` AS `编号`,`物理形状表`.`形状` AS `形状`,`物理形状表`.`密度` AS `密度`,`物理形状表`.`D50` AS `D50`,`物理形状表`.`D90` AS `D90`,`物理形状表`.`长径比` AS `长径比` from `物理形状表` ;

-- ----------------------------
-- View structure for v_sph
-- ----------------------------
DROP VIEW IF EXISTS `v_sph`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_sph` AS select `圆球度表`.`编号` AS `编号`,`圆球度表`.`初始圆度` AS `初始圆度`,`圆球度表`.`压后圆度` AS `压后圆度`,`圆球度表`.`磨后圆度` AS `磨后圆度`,`圆球度表`.`级别` AS `级别` from `圆球度表` ;

-- ----------------------------
-- View structure for v_temper
-- ----------------------------
DROP VIEW IF EXISTS `v_temper`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_temper` AS select `抗高温老化性质表`.`编号` AS `编号`,`抗高温老化性质表`.`老化D50降级` AS `老化D50降级`,`抗高温老化性质表`.`老化D90降级` AS `老化D90降级`,`抗高温老化性质表`.`老化压后D50降级` AS `老化压后D50降级`,`抗高温老化性质表`.`老化压后D90降级` AS `老化压后D90降级`,`抗高温老化性质表`.`级别` AS `级别` from `抗高温老化性质表` ;
