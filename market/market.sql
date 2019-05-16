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

 Date: 16/05/2019 15:05:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ckin
-- ----------------------------
DROP TABLE IF EXISTS `ckin`;
CREATE TABLE `ckin`  (
  `inid` int(7) NOT NULL AUTO_INCREMENT,
  `proid` int(7) NOT NULL,
  `pname` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `num` int(25) UNSIGNED NULL DEFAULT 100,
  `indate` date NULL DEFAULT NULL,
  `marks` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`inid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 129 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ckin
-- ----------------------------
INSERT INTO `ckin` VALUES (121, 1260300, '苹果', 100, '2019-04-27', NULL);
INSERT INTO `ckin` VALUES (122, 1260300, '苹果', 10000, '2019-04-27', NULL);
INSERT INTO `ckin` VALUES (123, 5287527, '瓜子', 100, '2019-05-01', NULL);
INSERT INTO `ckin` VALUES (124, 5287527, '瓜子', 100, '2019-05-02', NULL);
INSERT INTO `ckin` VALUES (125, 8556504, '绿萝', 100, '2019-05-02', NULL);
INSERT INTO `ckin` VALUES (126, 241677, '怡宝矿泉水', 100, '2019-05-12', NULL);
INSERT INTO `ckin` VALUES (127, 241677, '怡宝矿泉水', 20, '2019-05-12', NULL);
INSERT INTO `ckin` VALUES (128, 241677, '怡宝矿泉水', 100, '2019-05-12', NULL);

-- ----------------------------
-- Table structure for ckretire
-- ----------------------------
DROP TABLE IF EXISTS `ckretire`;
CREATE TABLE `ckretire`  (
  `inid` int(8) NOT NULL AUTO_INCREMENT,
  `proid` int(8) NOT NULL,
  `pname` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `num` int(25) NULL DEFAULT NULL,
  `indate` date NULL DEFAULT NULL,
  `retdate` date NULL DEFAULT NULL,
  `reason` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `marks` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`inid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 124 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ckretire
-- ----------------------------
INSERT INTO `ckretire` VALUES (123, 5287527, '瓜子', 100, NULL, '2019-05-11', NULL, '');

-- ----------------------------
-- Table structure for cusretire
-- ----------------------------
DROP TABLE IF EXISTS `cusretire`;
CREATE TABLE `cusretire`  (
  `saleid` int(25) NOT NULL,
  `proid` int(25) NOT NULL,
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
-- Records of cusretire
-- ----------------------------
INSERT INTO `cusretire` VALUES (3718799, 1260300, '苹果', NULL, 10, NULL, NULL, '2019-04-12', NULL, '');
INSERT INTO `cusretire` VALUES (5595579, 1260300, '苹果', NULL, 6, NULL, NULL, '2019-04-19', NULL, '');
INSERT INTO `cusretire` VALUES (8749456, 241677, '怡宝矿泉水', NULL, 10, NULL, NULL, '2019-05-12', NULL, '');

-- ----------------------------
-- Table structure for custom
-- ----------------------------
DROP TABLE IF EXISTS `custom`;
CREATE TABLE `custom`  (
  `cusid` int(25) NOT NULL,
  `cusname` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tel` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `person` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `emali` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`cusid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of custom
-- ----------------------------
INSERT INTO `custom` VALUES (5, '5', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for kcxx
-- ----------------------------
DROP TABLE IF EXISTS `kcxx`;
CREATE TABLE `kcxx`  (
  `proid` int(25) NOT NULL,
  `pname` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `num` int(25) NULL DEFAULT NULL,
  `marks` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`proid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kcxx
-- ----------------------------
INSERT INTO `kcxx` VALUES (241677, '怡宝矿泉水', 129, '');
INSERT INTO `kcxx` VALUES (1260300, '苹果', 9513, '');
INSERT INTO `kcxx` VALUES (5287527, '瓜子', 100, '');
INSERT INTO `kcxx` VALUES (8556504, '绿萝', 100, NULL);

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
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES ('15203111', '贺彬华', '362430199712207275', '男', '13517064592', '管理员', '1234');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `proid` int(25) NOT NULL AUTO_INCREMENT,
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
) ENGINE = InnoDB AUTO_INCREMENT = 8556505 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (241677, '怡宝矿泉水', 2.000, 1.000, '2019-01-01', '2019-05-08', '怡宝', '矿泉水', '瓶', '');
INSERT INTO `product` VALUES (1260300, '苹果', 23.000, 17.000, '2019-01-01', '2019-11-15', '百果园', '水果', '斤', '');
INSERT INTO `product` VALUES (5287527, '瓜子', 5.000, 3.000, '2019-04-05', '2019-07-26', '恰恰', '零食', '袋', '');
INSERT INTO `product` VALUES (8556504, '绿萝', 12.000, 7.000, '2019-05-17', '2019-05-25', '花鸟市场', '绿植盆栽', '盆', '');

-- ----------------------------
-- Table structure for sale
-- ----------------------------
DROP TABLE IF EXISTS `sale`;
CREATE TABLE `sale`  (
  `saleid` int(25) NOT NULL,
  `proid` int(25) NOT NULL,
  `pname` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` double(25, 3) NULL DEFAULT NULL,
  `num` int(25) NULL DEFAULT NULL,
  `total` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `saledate` date NULL DEFAULT NULL,
  `cusname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `cusid` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `marks` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`saleid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sale
-- ----------------------------
INSERT INTO `sale` VALUES (30579, 1260300, '苹果', 23.000, 600, '13800.0', NULL, '5', '5', '');
INSERT INTO `sale` VALUES (3007323, 241677, '怡宝矿泉水', 2.000, 69, '138.0', NULL, 'hbh', '20', '');
INSERT INTO `sale` VALUES (3718799, 1260300, '苹果', 23.000, 5, '115.0', NULL, '10', '324', '1');
INSERT INTO `sale` VALUES (5595579, 1260300, '苹果', 23.000, 12, '276.0', NULL, '10', '2312', '');
INSERT INTO `sale` VALUES (8749456, 241677, '怡宝矿泉水', 2.000, 12, '24.0', NULL, 'hbh', '134', '');
INSERT INTO `sale` VALUES (9092816, 241677, '怡宝矿泉水', 2.000, 20, '40.0', NULL, 'hbh', '12', '');
INSERT INTO `sale` VALUES (9841755, 1260300, '苹果', 23.000, 2, '46.0', NULL, '1', '2', '');

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
INSERT INTO `staff` VALUES ('15203122', '贺彬华', '362430199712207275', '男', '13517064592', '普通员工', '123456');
INSERT INTO `staff` VALUES ('15203123', '贺彬华', '234123412341234', '142', '13519081234', '普通员工', '123456');
INSERT INTO `staff` VALUES ('15203124', '小贺同学', '362430199712207275', '男', '13517064592', '普通员工', '123456');
INSERT INTO `staff` VALUES ('154203129', '小贺同学', '362430199712207275', '男', '13517064592', '普通员工', '1234');

-- ----------------------------
-- Table structure for supply
-- ----------------------------
DROP TABLE IF EXISTS `supply`;
CREATE TABLE `supply`  (
  `supid` int(25) NOT NULL AUTO_INCREMENT,
  `suppname` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tel` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `person` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `emali` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`supid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of supply
-- ----------------------------
INSERT INTO `supply` VALUES (16, '百果园', '13517064592', '某总', '吉安永新', '3078343267@qq.com');
INSERT INTO `supply` VALUES (17, '恰恰', '13517064592', '贺天', '吉安永新', '3078343267@qq.com');
INSERT INTO `supply` VALUES (18, '花鸟市场', NULL, NULL, NULL, NULL);
INSERT INTO `supply` VALUES (19, '怡宝', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type`  (
  `protypeid` int(25) UNSIGNED NOT NULL AUTO_INCREMENT,
  `typename` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`protypeid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES (26, '水果');
INSERT INTO `type` VALUES (27, '零食');
INSERT INTO `type` VALUES (28, '绿植盆栽');
INSERT INTO `type` VALUES (29, '矿泉水');

-- ----------------------------
-- Triggers structure for table ckin
-- ----------------------------
DROP TRIGGER IF EXISTS `xgjhxx`;
delimiter ;;
CREATE TRIGGER `xgjhxx` AFTER UPDATE ON `ckin` FOR EACH ROW begin
UPDATE kcxx set num=num+new.num-old.num where proid=new.proid;
end
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table ckretire
-- ----------------------------
DROP TRIGGER IF EXISTS `th`;
delimiter ;;
CREATE TRIGGER `th` AFTER INSERT ON `ckretire` FOR EACH ROW BEGIN
UPDATE kcxx set num=num-new.num where proid=new.proid;
end
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table ckretire
-- ----------------------------
DROP TRIGGER IF EXISTS `xgth`;
delimiter ;;
CREATE TRIGGER `xgth` AFTER UPDATE ON `ckretire` FOR EACH ROW BEGIN
update kcxx set num=num+old.num-new.num where proid=new.proid;
end
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table product
-- ----------------------------
DROP TRIGGER IF EXISTS `tg1`;
delimiter ;;
CREATE TRIGGER `tg1` AFTER INSERT ON `product` FOR EACH ROW begin 
set @flag3=(SELECT count(*)  from ckin where proid=NEW.proid);
if(@flag3=0)
THEN
INSERT into ckin(proid,pname,indate) VALUES (NEW.proid,NEW.pname,now());
end if;

set @flag4=(SELECT count(*)  from kcxx where proid=NEW.proid);
if(@flag4=0)
THEN
INSERT INTO kcxx(proid,pname,num) VALUES (NEW.proid,NEW.pname,100);
end if;

set @flag=(select COUNT(*) FROM type where typename=NEW.protype);
if(@flag=0)
then
INSERT INTO type(typename) VALUES(NEW.protype);
end if;

set @flag2=(SELECT count(*)  from supply where suppname=NEW.supname);
if(@flag2=0)
THEN
INSERT INTO supply(suppname) VALUES (NEW.supname);
end if;
end
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table type
-- ----------------------------
DROP TRIGGER IF EXISTS `xglb`;
delimiter ;;
CREATE TRIGGER `xglb` AFTER UPDATE ON `type` FOR EACH ROW begin
update product set protype=new.typename where protype=old.typename;
end
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
