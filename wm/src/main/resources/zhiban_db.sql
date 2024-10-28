/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : wms_db

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2019-12-02 06:30:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `wms_access_record`
-- ----------------------------
DROP TABLE IF EXISTS `wms_access_record`;
CREATE TABLE `wms_access_record` (
  `RECORD_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `USER_NAME` varchar(50) NOT NULL,
  `ACCESS_TYPE` varchar(30) NOT NULL,
  `ACCESS_TIME` datetime NOT NULL,
  `ACCESS_IP` varchar(45) NOT NULL,
  PRIMARY KEY (`RECORD_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wms_access_record
-- ----------------------------
INSERT INTO `wms_access_record` VALUES ('1', '1010', 'user', 'login', '2019-11-12 18:02:33', '0:0:0:0:0:0:0:1');
INSERT INTO `wms_access_record` VALUES ('2', '1010', 'user', 'logout', '2019-11-12 18:02:33', '-');
INSERT INTO `wms_access_record` VALUES ('3', '1010', 'user', 'login', '2019-11-12 18:02:33', '0:0:0:0:0:0:0:1');
INSERT INTO `wms_access_record` VALUES ('4', '1010', 'user', 'login', '2019-11-12 18:02:33', '0:0:0:0:0:0:0:1');
INSERT INTO `wms_access_record` VALUES ('5', '1010', 'user', 'logout', '2019-11-12 18:02:33', '-');
INSERT INTO `wms_access_record` VALUES ('6', '1020', '周周', 'login', '2019-11-12 18:02:33', '0:0:0:0:0:0:0:1');
INSERT INTO `wms_access_record` VALUES ('7', '1020', '周周', 'logout', '2019-11-12 18:02:33', '-');
INSERT INTO `wms_access_record` VALUES ('8', '1010', 'user', 'login', '2019-11-12 18:02:33', '0:0:0:0:0:0:0:1');
INSERT INTO `wms_access_record` VALUES ('9', '1010', 'user', 'logout', '2019-11-12 18:02:33', '-');
INSERT INTO `wms_access_record` VALUES ('10', '1010', 'user', 'login', '2019-11-12 18:02:33', '0:0:0:0:0:0:0:1');
INSERT INTO `wms_access_record` VALUES ('11', '1010', 'user', 'logout', '2019-11-12 18:02:33', '-');
INSERT INTO `wms_access_record` VALUES ('12', '1020', '周周', 'login', '2019-11-12 18:02:33', '0:0:0:0:0:0:0:1');
INSERT INTO `wms_access_record` VALUES ('13', '1020', '周周', 'logout', '2019-11-12 18:02:33', '-');
INSERT INTO `wms_access_record` VALUES ('14', '1010', 'user', 'login', '2019-11-12 18:02:33', '0:0:0:0:0:0:0:1');
INSERT INTO `wms_access_record` VALUES ('15', '1001', 'admin', 'login', '2019-11-12 18:02:33', '0:0:0:0:0:0:0:1');
INSERT INTO `wms_access_record` VALUES ('16', '1001', 'admin', 'login', '2019-11-12 18:02:33', '0:0:0:0:0:0:0:1');
INSERT INTO `wms_access_record` VALUES ('17', '1001', 'admin', 'login', '2019-11-12 18:02:33', '0:0:0:0:0:0:0:1');
INSERT INTO `wms_access_record` VALUES ('18', '1001', 'admin', 'logout', '2019-12-05 05:05:42', '-');
INSERT INTO `wms_access_record` VALUES ('19', '1001', 'admin', 'login', '2019-12-05 05:07:37', '0:0:0:0:0:0:0:1');
INSERT INTO `wms_access_record` VALUES ('20', '1001', 'admin', 'logout', '2019-12-05 05:09:53', '-');
INSERT INTO `wms_access_record` VALUES ('21', '1022', '天空', 'login', '2019-12-05 05:10:05', '0:0:0:0:0:0:0:1');
INSERT INTO `wms_access_record` VALUES ('22', '1001', 'admin', 'login', '2019-12-05 05:38:04', '0:0:0:0:0:0:0:1');
INSERT INTO `wms_access_record` VALUES ('23', '1001', 'admin', 'logout', '2019-12-05 05:43:33', '-');
INSERT INTO `wms_access_record` VALUES ('24', '1022', '天空', 'login', '2019-12-05 05:43:59', '0:0:0:0:0:0:0:1');
INSERT INTO `wms_access_record` VALUES ('25', '1001', 'admin', 'login', '2019-12-05 06:21:18', '0:0:0:0:0:0:0:1');
INSERT INTO `wms_access_record` VALUES ('26', '1001', 'admin', 'login', '2019-12-05 06:27:21', '0:0:0:0:0:0:0:1');

-- ----------------------------
-- Table structure for `wms_action`
-- ----------------------------
DROP TABLE IF EXISTS `wms_action`;
CREATE TABLE `wms_action` (
  `ACTION_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACTION_NAME` varchar(30) NOT NULL,
  `ACTION_DESC` varchar(30) DEFAULT NULL,
  `ACTION_PARAM` varchar(50) NOT NULL,
  PRIMARY KEY (`ACTION_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wms_action
-- ----------------------------
INSERT INTO `wms_action` VALUES ('1', 'addSupplier', null, '/supplierManage/addSupplier');
INSERT INTO `wms_action` VALUES ('2', 'deleteSupplier', null, '/supplierManage/deleteSupplier');
INSERT INTO `wms_action` VALUES ('3', 'updateSupplier', null, '/supplierManage/updateSupplier');
INSERT INTO `wms_action` VALUES ('4', 'selectSupplier', null, '/supplierManage/getSupplierList');
INSERT INTO `wms_action` VALUES ('5', 'getSupplierInfo', null, '/supplierManage/getSupplierInfo');
INSERT INTO `wms_action` VALUES ('6', 'importSupplier', null, '/supplierManage/importSupplier');
INSERT INTO `wms_action` VALUES ('7', 'exportSupplier', null, '/supplierManage/exportSupplier');
INSERT INTO `wms_action` VALUES ('8', 'selectCustomer', null, '/customerManage/getCustomerList');
INSERT INTO `wms_action` VALUES ('9', 'addCustomer', null, '/customerManage/addCustomer');
INSERT INTO `wms_action` VALUES ('10', 'getCustomerInfo', null, '/customerManage/getCustomerInfo');
INSERT INTO `wms_action` VALUES ('11', 'updateCustomer', null, '/customerManage/updateCustomer');
INSERT INTO `wms_action` VALUES ('12', 'deleteCustomer', null, '/customerManage/deleteCustomer');
INSERT INTO `wms_action` VALUES ('13', 'importCustomer', null, '/customerManage/importCustomer');
INSERT INTO `wms_action` VALUES ('14', 'exportCustomer', null, '/customerManage/exportCustomer');
INSERT INTO `wms_action` VALUES ('15', 'selectGoods', null, '/goodsManage/getGoodsList');
INSERT INTO `wms_action` VALUES ('16', 'addGoods', null, '/goodsManage/addGoods');
INSERT INTO `wms_action` VALUES ('17', 'getGoodsInfo', null, '/goodsManage/getGoodsInfo');
INSERT INTO `wms_action` VALUES ('18', 'updateGoods', null, '/goodsManage/updateGoods');
INSERT INTO `wms_action` VALUES ('19', 'deleteGoods', null, '/goodsManage/deleteGoods');
INSERT INTO `wms_action` VALUES ('20', 'importGoods', null, '/goodsManage/importGoods');
INSERT INTO `wms_action` VALUES ('21', 'exportGoods', null, '/goodsManage/exportGoods');
INSERT INTO `wms_action` VALUES ('22', 'selectRepository', null, '/repositoryManage/getRepositoryList');
INSERT INTO `wms_action` VALUES ('23', 'addRepository', null, '/repositoryManage/addRepository');
INSERT INTO `wms_action` VALUES ('24', 'getRepositoryInfo', null, '/repositoryManage/getRepository');
INSERT INTO `wms_action` VALUES ('25', 'updateRepository', null, '/repositoryManage/updateRepository');
INSERT INTO `wms_action` VALUES ('26', 'deleteRepository', null, '/repositoryManage/deleteRepository');
INSERT INTO `wms_action` VALUES ('27', 'importRepository', null, '/repositoryManage/importRepository');
INSERT INTO `wms_action` VALUES ('28', 'exportRepository', null, '/repositoryManage/exportRepository');
INSERT INTO `wms_action` VALUES ('29', 'selectRepositoryAdmin', null, '/repositoryAdminManage/getRepositoryAdminList');
INSERT INTO `wms_action` VALUES ('30', 'addRepositoryAdmin', null, '/repositoryAdminManage/addRepositoryAdmin');
INSERT INTO `wms_action` VALUES ('31', 'getRepositoryAdminInfo', null, '/repositoryAdminManage/getRepositoryAdminInfo');
INSERT INTO `wms_action` VALUES ('32', 'updateRepositoryAdmin', null, '/repositoryAdminManage/updateRepositoryAdmin');
INSERT INTO `wms_action` VALUES ('33', 'deleteRepositoryAdmin', null, '/repositoryAdminManage/deleteRepositoryAdmin');
INSERT INTO `wms_action` VALUES ('34', 'importRepositoryAd,om', null, '/repositoryAdminManage/importRepositoryAdmin');
INSERT INTO `wms_action` VALUES ('35', 'exportRepository', null, '/repositoryAdminManage/exportRepositoryAdmin');
INSERT INTO `wms_action` VALUES ('36', 'getUnassignRepository', null, '/repositoryManage/getUnassignRepository');
INSERT INTO `wms_action` VALUES ('37', 'getStorageListWithRepository', null, '/storageManage/getStorageListWithRepository');
INSERT INTO `wms_action` VALUES ('38', 'getStorageList', null, '/storageManage/getStorageList');
INSERT INTO `wms_action` VALUES ('39', 'addStorageRecord', null, '/storageManage/addStorageRecord');
INSERT INTO `wms_action` VALUES ('40', 'updateStorageRecord', null, '/storageManage/updateStorageRecord');
INSERT INTO `wms_action` VALUES ('41', 'deleteStorageRecord', null, '/storageManage/deleteStorageRecord');
INSERT INTO `wms_action` VALUES ('42', 'importStorageRecord', null, '/storageManage/importStorageRecord');
INSERT INTO `wms_action` VALUES ('43', 'exportStorageRecord', null, '/storageManage/exportStorageRecord');
INSERT INTO `wms_action` VALUES ('44', ' stockIn', null, '/stockRecordManage/stockIn');
INSERT INTO `wms_action` VALUES ('45', 'stockOut', null, '/stockRecordManage/stockOut');
INSERT INTO `wms_action` VALUES ('46', 'searchStockRecord', null, '/stockRecordManage/searchStockRecord');
INSERT INTO `wms_action` VALUES ('47', 'getAccessRecords', null, '/systemLog/getAccessRecords');
INSERT INTO `wms_action` VALUES ('48', 'selectUserOperationRecords', null, '/systemLog/selectUserOperationRecords');

-- ----------------------------
-- Table structure for `wms_operation_record`
-- ----------------------------
DROP TABLE IF EXISTS `wms_operation_record`;
CREATE TABLE `wms_operation_record` (
  `RECORD_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `USER_NAME` varchar(50) NOT NULL,
  `OPERATION_NAME` varchar(30) NOT NULL,
  `OPERATION_TIME` datetime NOT NULL,
  `OPERATION_RESULT` varchar(15) NOT NULL,
  PRIMARY KEY (`RECORD_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wms_operation_record
-- ----------------------------
INSERT INTO `wms_operation_record` VALUES ('17', '1001', 'admin', '导出值班信息', '2019-12-05 04:37:42', '-');
INSERT INTO `wms_operation_record` VALUES ('18', '1001', 'admin', '导出值班信息', '2019-12-05 04:39:47', '-');
INSERT INTO `wms_operation_record` VALUES ('20', '1001', 'admin', '添加值班信息', '2019-12-05 04:46:17', '成功');
INSERT INTO `wms_operation_record` VALUES ('22', '1001', 'admin', '导出值班管理员信息', '2019-12-05 06:21:43', '-');

-- ----------------------------
-- Table structure for `wms_repo_admin`
-- ----------------------------
DROP TABLE IF EXISTS `wms_repo_admin`;
CREATE TABLE `wms_repo_admin` (
  `REPO_ADMIN_ID` int(11) NOT NULL AUTO_INCREMENT,
  `REPO_ADMIN_NAME` varchar(10) NOT NULL,
  `REPO_ADMIN_SEX` varchar(10) NOT NULL,
  `REPO_ADMIN_TEL` varchar(20) NOT NULL,
  `REPO_ADMIN_ADDRESS` varchar(30) NOT NULL,
  `REPO_ADMIN_BIRTH` datetime NOT NULL,
  `REPO_ADMIN_REPOID` int(11) DEFAULT NULL,
  PRIMARY KEY (`REPO_ADMIN_ID`),
  KEY `REPO_ADMIN_REPOID` (`REPO_ADMIN_REPOID`),
  CONSTRAINT `wms_repo_admin_ibfk_1` FOREIGN KEY (`REPO_ADMIN_REPOID`) REFERENCES `wms_respository` (`REPO_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1023 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wms_repo_admin
-- ----------------------------
INSERT INTO `wms_repo_admin` VALUES ('1018', '王皓', '女', '12345874526', '中国佛山', '2019-11-23 00:00:00', '1004');
INSERT INTO `wms_repo_admin` VALUES ('1019', '李富荣', '男', '1234', '广州', '2019-11-23 00:00:00', '1003');
INSERT INTO `wms_repo_admin` VALUES ('1020', '周周', '女', '1111111', '大连', '2019-11-23 00:00:00', null);
INSERT INTO `wms_repo_admin` VALUES ('1021', 'XIA', '男', '11111', '大连', '2019-11-23 00:00:00', null);
INSERT INTO `wms_repo_admin` VALUES ('1022', '天空', '女', '111111', '大连', '2019-11-27 00:00:00', null);

-- ----------------------------
-- Table structure for `wms_respository`
-- ----------------------------
DROP TABLE IF EXISTS `wms_respository`;
CREATE TABLE `wms_respository` (
  `REPO_ID` int(11) NOT NULL AUTO_INCREMENT,
  `REPO_ADDRESS` varchar(30) NOT NULL,
  `REPO_STATUS` varchar(20) NOT NULL,
  `REPO_AREA` varchar(20) NOT NULL,
  `REPO_DESC` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`REPO_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1007 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wms_respository
-- ----------------------------
INSERT INTO `wms_respository` VALUES ('1003', '北京顺义南彩工业园区彩祥西路9号', '可用', '2019-11-23', '物流极为便利');
INSERT INTO `wms_respository` VALUES ('1004', '广州白云石井石潭路大基围工业区', '可用', '2019-11-23', '物流极为便利');
INSERT INTO `wms_respository` VALUES ('1005', ' 香港北区文锦渡路（红桥新村）', '可用', '2019-11-23', null);
INSERT INTO `wms_respository` VALUES ('1006', '大连工区1区', '开始', '2019-11-20', '独自值班');

-- ----------------------------
-- Table structure for `wms_roles`
-- ----------------------------
DROP TABLE IF EXISTS `wms_roles`;
CREATE TABLE `wms_roles` (
  `ROLE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ROLE_NAME` varchar(20) NOT NULL,
  `ROLE_DESC` varchar(30) DEFAULT NULL,
  `ROLE_URL_PREFIX` varchar(20) NOT NULL,
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wms_roles
-- ----------------------------
INSERT INTO `wms_roles` VALUES ('1', 'systemAdmin', null, 'systemAdmin');
INSERT INTO `wms_roles` VALUES ('2', 'commonsAdmin', null, 'commonsAdmin');

-- ----------------------------
-- Table structure for `wms_role_action`
-- ----------------------------
DROP TABLE IF EXISTS `wms_role_action`;
CREATE TABLE `wms_role_action` (
  `ACTION_ID` int(11) NOT NULL,
  `ROLE_ID` int(11) NOT NULL,
  PRIMARY KEY (`ACTION_ID`,`ROLE_ID`),
  KEY `ROLE_ID` (`ROLE_ID`),
  CONSTRAINT `wms_role_action_ibfk_1` FOREIGN KEY (`ROLE_ID`) REFERENCES `wms_roles` (`ROLE_ID`),
  CONSTRAINT `wms_role_action_ibfk_2` FOREIGN KEY (`ACTION_ID`) REFERENCES `wms_action` (`ACTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wms_role_action
-- ----------------------------
INSERT INTO `wms_role_action` VALUES ('1', '1');
INSERT INTO `wms_role_action` VALUES ('2', '1');
INSERT INTO `wms_role_action` VALUES ('3', '1');
INSERT INTO `wms_role_action` VALUES ('4', '1');
INSERT INTO `wms_role_action` VALUES ('5', '1');
INSERT INTO `wms_role_action` VALUES ('6', '1');
INSERT INTO `wms_role_action` VALUES ('7', '1');
INSERT INTO `wms_role_action` VALUES ('8', '1');
INSERT INTO `wms_role_action` VALUES ('9', '1');
INSERT INTO `wms_role_action` VALUES ('10', '1');
INSERT INTO `wms_role_action` VALUES ('11', '1');
INSERT INTO `wms_role_action` VALUES ('12', '1');
INSERT INTO `wms_role_action` VALUES ('13', '1');
INSERT INTO `wms_role_action` VALUES ('14', '1');
INSERT INTO `wms_role_action` VALUES ('15', '1');
INSERT INTO `wms_role_action` VALUES ('16', '1');
INSERT INTO `wms_role_action` VALUES ('17', '1');
INSERT INTO `wms_role_action` VALUES ('18', '1');
INSERT INTO `wms_role_action` VALUES ('19', '1');
INSERT INTO `wms_role_action` VALUES ('20', '1');
INSERT INTO `wms_role_action` VALUES ('21', '1');
INSERT INTO `wms_role_action` VALUES ('22', '1');
INSERT INTO `wms_role_action` VALUES ('23', '1');
INSERT INTO `wms_role_action` VALUES ('24', '1');
INSERT INTO `wms_role_action` VALUES ('25', '1');
INSERT INTO `wms_role_action` VALUES ('26', '1');
INSERT INTO `wms_role_action` VALUES ('27', '1');
INSERT INTO `wms_role_action` VALUES ('28', '1');
INSERT INTO `wms_role_action` VALUES ('29', '1');
INSERT INTO `wms_role_action` VALUES ('30', '1');
INSERT INTO `wms_role_action` VALUES ('31', '1');
INSERT INTO `wms_role_action` VALUES ('32', '1');
INSERT INTO `wms_role_action` VALUES ('33', '1');
INSERT INTO `wms_role_action` VALUES ('34', '1');
INSERT INTO `wms_role_action` VALUES ('35', '1');
INSERT INTO `wms_role_action` VALUES ('36', '1');
INSERT INTO `wms_role_action` VALUES ('37', '1');
INSERT INTO `wms_role_action` VALUES ('39', '1');
INSERT INTO `wms_role_action` VALUES ('40', '1');
INSERT INTO `wms_role_action` VALUES ('41', '1');
INSERT INTO `wms_role_action` VALUES ('42', '1');
INSERT INTO `wms_role_action` VALUES ('43', '1');
INSERT INTO `wms_role_action` VALUES ('44', '1');
INSERT INTO `wms_role_action` VALUES ('45', '1');
INSERT INTO `wms_role_action` VALUES ('46', '1');
INSERT INTO `wms_role_action` VALUES ('47', '1');
INSERT INTO `wms_role_action` VALUES ('48', '1');
INSERT INTO `wms_role_action` VALUES ('4', '2');
INSERT INTO `wms_role_action` VALUES ('38', '2');
INSERT INTO `wms_role_action` VALUES ('43', '2');

-- ----------------------------
-- Table structure for `wms_user`
-- ----------------------------
DROP TABLE IF EXISTS `wms_user`;
CREATE TABLE `wms_user` (
  `USER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_USERNAME` varchar(30) NOT NULL,
  `USER_PASSWORD` varchar(40) NOT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1023 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wms_user
-- ----------------------------
INSERT INTO `wms_user` VALUES ('1001', 'admin', '6f5379e73c1a9eac6163ab8eaec7e41c');
INSERT INTO `wms_user` VALUES ('1002', 'admin1', '123456');
INSERT INTO `wms_user` VALUES ('1010', 'user', '013af5d4303ff3944ca656aa849dbe53');
INSERT INTO `wms_user` VALUES ('1018', '王皓', '50f202f4862360e55635b0a9616ded13');
INSERT INTO `wms_user` VALUES ('1019', '李富荣', 'c4b3af5a5ab3e3d5aac4c5a5436201b8');
INSERT INTO `wms_user` VALUES ('1020', '周周', '38dc12ed0ca4f15ef59db04c6479b5ce');
INSERT INTO `wms_user` VALUES ('1021', 'XIA', '19c6797d19c8ee2d308e65106b01aa5b');
INSERT INTO `wms_user` VALUES ('1022', '天空', '56a0660fee83d4197dcd4696e56a1e61');

-- ----------------------------
-- Table structure for `wms_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `wms_user_role`;
CREATE TABLE `wms_user_role` (
  `ROLE_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  PRIMARY KEY (`ROLE_ID`,`USER_ID`),
  KEY `USER_ID` (`USER_ID`),
  CONSTRAINT `wms_user_role_ibfk_1` FOREIGN KEY (`ROLE_ID`) REFERENCES `wms_roles` (`ROLE_ID`),
  CONSTRAINT `wms_user_role_ibfk_2` FOREIGN KEY (`USER_ID`) REFERENCES `wms_user` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wms_user_role
-- ----------------------------
INSERT INTO `wms_user_role` VALUES ('1', '1001');
INSERT INTO `wms_user_role` VALUES ('1', '1010');
INSERT INTO `wms_user_role` VALUES ('2', '1018');
INSERT INTO `wms_user_role` VALUES ('2', '1019');
INSERT INTO `wms_user_role` VALUES ('2', '1020');
INSERT INTO `wms_user_role` VALUES ('2', '1021');
INSERT INTO `wms_user_role` VALUES ('2', '1022');
