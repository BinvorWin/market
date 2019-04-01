/*
 Navicat Premium Data Transfer

 Source Server         : hbh
 Source Server Type    : MySQL
 Source Server Version : 50515
 Source Host           : localhost:3306
 Source Schema         : market

 Target Server Type    : MySQL
 Target Server Version : 50515
 File Encoding         : 65001

 Date: 01/04/2019 17:57:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ckin
-- ----------------------------
DROP TABLE IF EXISTS `ckin`;
CREATE TABLE `ckin`  (
  `inid` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `proid` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pname` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `num` int(25) UNSIGNED NULL DEFAULT NULL,
  `indate` date NULL DEFAULT NULL,
  `marks` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`inid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ckin
-- ----------------------------
INSERT INTO `ckin` VALUES ('2', '2', '绿萝', 100, '2019-03-02', NULL);
INSERT INTO `ckin` VALUES ('3', '3', '可乐', 100, '2019-03-07', NULL);
INSERT INTO `ckin` VALUES ('4', '4', '雪碧', 100, '2019-03-12', NULL);
INSERT INTO `ckin` VALUES ('5', '5', '开心果', 100, '2019-03-19', NULL);
INSERT INTO `ckin` VALUES ('6', '6', '碧根果', 100, '2019-03-20', NULL);

-- ----------------------------
-- Table structure for ckretire
-- ----------------------------
DROP TABLE IF EXISTS `ckretire`;
CREATE TABLE `ckretire`  (
  `inid` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `proid` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pname` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `num` int(25) NULL DEFAULT NULL,
  `indate` date NULL DEFAULT NULL,
  `retdate` date NULL DEFAULT NULL,
  `reason` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `marks` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`inid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ckretire
-- ----------------------------
INSERT INTO `ckretire` VALUES ('1', '2', '绿罗', 10, '2019-03-14', '2019-03-27', NULL, '1');
INSERT INTO `ckretire` VALUES ('2', '3', '可乐', 22, '2019-03-12', '2019-03-26', NULL, '');

-- ----------------------------
-- Table structure for cusretire
-- ----------------------------
DROP TABLE IF EXISTS `cusretire`;
CREATE TABLE `cusretire`  (
  `saleid` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `proid` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pname` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` double(25, 3) NULL DEFAULT NULL,
  `num` int(25) NULL DEFAULT NULL,
  `total` double(25, 3) NULL DEFAULT NULL,
  `saledate` date NULL DEFAULT NULL,
  `retdate` date NULL DEFAULT NULL,
  `reason` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `marks` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`saleid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for custom
-- ----------------------------
DROP TABLE IF EXISTS `custom`;
CREATE TABLE `custom`  (
  `cusid` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cusname` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tel` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `person` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `emali` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`cusid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of custom
-- ----------------------------
INSERT INTO `custom` VALUES ('1', '清风', '13517064592', '刘经理', '庐山南大道', '3078343267@qq.com');
INSERT INTO `custom` VALUES ('10', '利总', '12333232312', '周易', '江西景德镇', NULL);
INSERT INTO `custom` VALUES ('11', '绿箭', '12312312312', '张建翔', '江西南昌', NULL);
INSERT INTO `custom` VALUES ('2', '百事可乐', '13517064591', '小刘', '湖北武汉', '3078343267@qq.com');

-- ----------------------------
-- Table structure for kcxx
-- ----------------------------
DROP TABLE IF EXISTS `kcxx`;
CREATE TABLE `kcxx`  (
  `proid` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pname` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `num` int(25) NULL DEFAULT NULL,
  `marks` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`proid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kcxx
-- ----------------------------
INSERT INTO `kcxx` VALUES ('1', '手帕纸', 100, '3453');
INSERT INTO `kcxx` VALUES ('10', '剃须刀', 40, NULL);
INSERT INTO `kcxx` VALUES ('11', '水杯', 20, NULL);
INSERT INTO `kcxx` VALUES ('2', '绿萝', 50, NULL);
INSERT INTO `kcxx` VALUES ('3', '可乐', 50, NULL);
INSERT INTO `kcxx` VALUES ('4', '雪碧', 40, NULL);
INSERT INTO `kcxx` VALUES ('5', '开心果', 30, NULL);
INSERT INTO `kcxx` VALUES ('6', '碧根果', 1000, NULL);
INSERT INTO `kcxx` VALUES ('7', '辣条', 100, NULL);
INSERT INTO `kcxx` VALUES ('8', '奥利奥', 30, NULL);
INSERT INTO `kcxx` VALUES ('9', '口香糖', 30, NULL);

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager`  (
  `managerid` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `managername` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `card` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tel` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stafftype` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pwd` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`managerid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `proid` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pname` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` double(25, 3) NOT NULL,
  `inprice` double(25, 3) NULL DEFAULT NULL,
  `prodate` date NULL DEFAULT NULL,
  `reledate` date NULL DEFAULT NULL,
  `supname` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `protype` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `unit` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `marks` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`proid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '手帕纸', 1.000, 0.500, '2019-01-02', '2019-03-25', '清风', '生活用品', '包', '');
INSERT INTO `product` VALUES ('10', '剃须刀', 79.000, 50.000, '2018-08-01', '2019-03-05', '超人', '个人护理', '个', '');
INSERT INTO `product` VALUES ('11', '水杯', 32.000, 22.000, '2019-03-22', '2019-03-29', '富光', '水杯', '2', '1');
INSERT INTO `product` VALUES ('2', '绿萝', 15.000, 8.000, '2019-03-01', '2019-03-25', '花鸟市场', '盆栽', '盆', '1');
INSERT INTO `product` VALUES ('3', '可乐', 3.000, 1.000, '2018-12-06', '2019-10-01', '百事可乐', '饮料', '瓶', '');
INSERT INTO `product` VALUES ('4', '雪碧', 3.000, 1.000, '2019-01-16', '2019-10-01', '百事可乐', '饮料', '瓶', '');
INSERT INTO `product` VALUES ('5', '开心果', 30.000, 20.000, '2018-12-01', '2019-10-01', '三只松鼠', '休闲零食', '斤', NULL);
INSERT INTO `product` VALUES ('6', '碧根果', 20.000, 17.000, '2018-12-01', '2019-10-01', '百草味', '休闲零食', '斤', NULL);
INSERT INTO `product` VALUES ('7', '辣条', 4.000, 3.000, '2018-12-01', '2019-10-01', '卫龙', '休闲零食', '包', NULL);
INSERT INTO `product` VALUES ('8', '奥利奥', 7.000, 3.800, '2018-12-01', '2019-10-01', '利总', '饼干', '包', '');
INSERT INTO `product` VALUES ('9', '口香糖', 3.000, 2.000, '2018-12-01', '2019-10-01', '绿箭', '休闲零食', '条', '');

-- ----------------------------
-- Table structure for sale
-- ----------------------------
DROP TABLE IF EXISTS `sale`;
CREATE TABLE `sale`  (
  `saleid` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `proid` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pname` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` double(25, 3) NULL DEFAULT NULL,
  `num` int(25) NULL DEFAULT NULL,
  `total` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `saledate` date NULL DEFAULT NULL,
  `marks` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`saleid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sale
-- ----------------------------
INSERT INTO `sale` VALUES ('1', '1', '手帕纸', 1.000, 5, '5', '2019-03-31', NULL);
INSERT INTO `sale` VALUES ('2', '2', '剃须刀', 79.000, 1, '79', '2019-04-01', '');

-- ----------------------------
-- Table structure for staff
-- ----------------------------
DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff`  (
  `staffid` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `staffname` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `card` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tel` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stafftype` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pwd` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`staffid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of staff
-- ----------------------------
INSERT INTO `staff` VALUES ('15203122', '贺彬华', '1234', '男', '110', '2', '123456');

-- ----------------------------
-- Table structure for supply
-- ----------------------------
DROP TABLE IF EXISTS `supply`;
CREATE TABLE `supply`  (
  `supid` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `suppname` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tel` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `person` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `emali` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`supid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of supply
-- ----------------------------
INSERT INTO `supply` VALUES ('1', '清风', '13517064592', '贺彬华', '江西南昌', '123@163.com');
INSERT INTO `supply` VALUES ('2', '超人', '13517064591', '罗天赐', '江西吉安', '123@163.com');
INSERT INTO `supply` VALUES ('3', '富光', '18239328283', '刘经理', '江西南昌', '124@163.com');
INSERT INTO `supply` VALUES ('4', '百事可乐', '13473273221', '李总', '江西赣州', '134@163.com');
INSERT INTO `supply` VALUES ('5', '三只松鼠', '13123454521', '松果', '江西南昌', '2412@163.com');
INSERT INTO `supply` VALUES ('6', '百草味', '13711312312', '贺生', '江西吉安', '1231@163.com');

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type`  (
  `protypeid` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `typename` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`protypeid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('1', '个人护理');
INSERT INTO `type` VALUES ('2', '休闲零食');
INSERT INTO `type` VALUES ('3', '生活用品');
INSERT INTO `type` VALUES ('4', '水杯');
INSERT INTO `type` VALUES ('6', '饼干');

SET FOREIGN_KEY_CHECKS = 1;
