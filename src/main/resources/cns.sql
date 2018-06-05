/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : cns

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-06-05 21:23:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cns_user_record
-- ----------------------------
DROP TABLE IF EXISTS `cns_user_record`;
CREATE TABLE `cns_user_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `behavior` varchar(255) DEFAULT NULL COMMENT '操作',
  `operator` varchar(255) DEFAULT NULL COMMENT '用户id',
  `createTime` varchar(255) DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cns_user_record
-- ----------------------------
INSERT INTO `cns_user_record` VALUES ('6', '联系导游', 'linyuner', '2018-06-05 18:28:17');
INSERT INTO `cns_user_record` VALUES ('7', '联系导游', 'linyuner111', '2018-06-05 18:48:22');
INSERT INTO `cns_user_record` VALUES ('8', '联系导游', 'linyuner111', '2018-06-05 18:48:41');
INSERT INTO `cns_user_record` VALUES ('9', '联系导游', 'linyuner111', '2018-06-05 18:48:50');
INSERT INTO `cns_user_record` VALUES ('10', '联系导游', 'linyuner111', '2018-06-05 18:52:36');
INSERT INTO `cns_user_record` VALUES ('11', '联系导游', 'linyuner111', '2018-06-05 18:52:43');
INSERT INTO `cns_user_record` VALUES ('12', '联系导游', 'linyuner111', '2018-06-05 18:54:11');
INSERT INTO `cns_user_record` VALUES ('13', '联系导游', 'linyuner', '2018-06-05 19:21:33');
INSERT INTO `cns_user_record` VALUES ('14', '联系导游', 'linyuner', '2018-06-05 19:21:48');

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '部门表',
  `name` varchar(32) DEFAULT NULL COMMENT '部门名称',
  `parentId` int(11) DEFAULT NULL,
  `depPath` varchar(255) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '1',
  `isParent` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1', '辽宁石油化工大学', '-1', '.1', '1', '1');
INSERT INTO `department` VALUES ('4', '经济管理学院', '1', '.4', '1', '1');
INSERT INTO `department` VALUES ('5', '机械学院', '1', '.5', '1', '1');
INSERT INTO `department` VALUES ('8', '计算机与通信工程学院', '1', '.8', '1', '1');
INSERT INTO `department` VALUES ('9', '软件工程', '8', '.9', '1', '0');

-- ----------------------------
-- Table structure for guide
-- ----------------------------
DROP TABLE IF EXISTS `guide`;
CREATE TABLE `guide` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `placeId` bigint(20) DEFAULT NULL COMMENT '地点id',
  `userId` bigint(20) DEFAULT NULL COMMENT '用户id',
  `remark` varchar(255) DEFAULT NULL COMMENT '导游介绍',
  `yn` tinyint(1) DEFAULT '0' COMMENT '有效状态 0:无效 1:有效',
  PRIMARY KEY (`id`),
  KEY `uid` (`userId`) USING BTREE,
  KEY `pid` (`placeId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='导游表：用户-地点';

-- ----------------------------
-- Records of guide
-- ----------------------------
INSERT INTO `guide` VALUES ('1', '3', '1', '小哥哥网恋吗，我萝莉音', '1');
INSERT INTO `guide` VALUES ('2', '2', '1', null, '1');
INSERT INTO `guide` VALUES ('3', '2', '8', null, '1');
INSERT INTO `guide` VALUES ('4', '7', '1', '', '0');
INSERT INTO `guide` VALUES ('5', '4', '1', '', '0');
INSERT INTO `guide` VALUES ('6', '2', '11', '', '0');
INSERT INTO `guide` VALUES ('7', '2', '10', '', '0');
INSERT INTO `guide` VALUES ('8', '1', '1', '', '0');

-- ----------------------------
-- Table structure for hr
-- ----------------------------
DROP TABLE IF EXISTS `hr`;
CREATE TABLE `hr` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员表',
  `name` varchar(32) DEFAULT NULL COMMENT '姓名',
  `phone` char(11) DEFAULT NULL COMMENT '手机号码',
  `telephone` varchar(16) DEFAULT NULL COMMENT '住宅电话',
  `address` varchar(64) DEFAULT NULL COMMENT '联系地址',
  `enabled` tinyint(1) DEFAULT '1',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `userface` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hr
-- ----------------------------
INSERT INTO `hr` VALUES ('1', '系统管理员', '18568887789', '029-82881234', '深圳南山', '1', 'admin', '$2a$10$ySG2lkvjFHY5O0./CPIE1OI8VJsuKYEzOYzqIa7AJR6sEgSzUFOAm', 'http://bpic.588ku.com/element_pic/01/40/00/64573ce2edc0728.jpg', null);
INSERT INTO `hr` VALUES ('2', '李白', '23123123222', '029-34234234', '长安', '1', 'libai', '$2a$10$oE39aG10kB/rFu2vQeCJTu/V/v4n6DRR0f8WyXRiAYvBpmadoOBE.', 'https://gss3.bdstatic.com/-Po3dSag_xI4khGkpoWK1HF6hhy/baike/w%3D268%3Bg%3D0/sign=176befc2c8ef76093c0b9e9916e6c4f1/78310a55b319ebc4acda9dc68126cffc1f1716ca.jpg', '如果能重来，我要做李白');
INSERT INTO `hr` VALUES ('3', '韩愈', '18568123666', '029-82111555', '广州番禺', '1', 'hanyu', '$2a$10$oE39aG10kB/rFu2vQeCJTu/V/v4n6DRR0f8WyXRiAYvBpmadoOBE.', 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1406745149,1563524794&fm=27&gp=0.jpg', null);
INSERT INTO `hr` VALUES ('4', '柳宗元', '18568123377', '029-82111333', '广州天河', '1', 'liuzongyuan', '$2a$10$oE39aG10kB/rFu2vQeCJTu/V/v4n6DRR0f8WyXRiAYvBpmadoOBE.', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1515233756&di=0856d923a0a37a87fd26604a2c871370&imgtype=jpg&er=1&src=http%3A%2F%2Fwww.qqzhi.com%2Fuploadpic%2F2014-09-27%2F041716704.jpg', null);
INSERT INTO `hr` VALUES ('5', '林允儿', '18568128888', '029-82111222', '韩国首尔', '1', 'linyuner', '$2a$10$oE39aG10kB/rFu2vQeCJTu/V/v4n6DRR0f8WyXRiAYvBpmadoOBE.', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1521530896936&di=144e5e8fd8eaa6f9a23c3a2ebd6089d5&imgtype=0&src=http%3A%2F%2Fimg4q.duitang.com%2Fuploads%2Fitem%2F201506%2F01%2F20150601194711_2Tcha.jpeg', null);

-- ----------------------------
-- Table structure for hr_role
-- ----------------------------
DROP TABLE IF EXISTS `hr_role`;
CREATE TABLE `hr_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员角色中间表',
  `hrid` int(11) DEFAULT NULL,
  `rid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`),
  KEY `hr_role_ibfk_1` (`hrid`),
  CONSTRAINT `hr_role_ibfk_1` FOREIGN KEY (`hrid`) REFERENCES `hr` (`id`) ON DELETE CASCADE,
  CONSTRAINT `hr_role_ibfk_2` FOREIGN KEY (`rid`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hr_role
-- ----------------------------
INSERT INTO `hr_role` VALUES ('1', '1', '1');
INSERT INTO `hr_role` VALUES ('50', '5', '5');
INSERT INTO `hr_role` VALUES ('51', '5', '6');
INSERT INTO `hr_role` VALUES ('52', '5', '1');
INSERT INTO `hr_role` VALUES ('61', '2', '2');
INSERT INTO `hr_role` VALUES ('64', '4', '4');
INSERT INTO `hr_role` VALUES ('68', '3', '3');

-- ----------------------------
-- Table structure for joblevel
-- ----------------------------
DROP TABLE IF EXISTS `joblevel`;
CREATE TABLE `joblevel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL COMMENT '职称名称',
  `titleLevel` enum('正高级','副高级','中级','初级','员级') DEFAULT NULL,
  `createDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `enabled` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joblevel
-- ----------------------------
INSERT INTO `joblevel` VALUES ('10', '副教授', '副高级', '2018-01-11 21:19:20', '1');
INSERT INTO `joblevel` VALUES ('12', '助教', '初级', '2018-01-11 21:35:39', '1');
INSERT INTO `joblevel` VALUES ('13', '讲师', '中级', '2018-01-11 22:42:12', '1');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单表',
  `url` varchar(64) DEFAULT NULL,
  `path` varchar(64) DEFAULT NULL,
  `component` varchar(64) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `iconCls` varchar(64) DEFAULT NULL,
  `keepAlive` tinyint(1) DEFAULT NULL,
  `requireAuth` tinyint(1) DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `parentId` (`parentId`),
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parentId`) REFERENCES `menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '/', null, null, '所有', null, null, null, null, '1');
INSERT INTO `menu` VALUES ('2', '/', '/home', 'Home', '新闻管理', 'fa fa-user-circle-o', null, '1', '1', '1');
INSERT INTO `menu` VALUES ('3', '/', '/home', 'Home', '导游管理', 'fa fa-address-card-o', null, '1', '1', '1');
INSERT INTO `menu` VALUES ('4', '/', '/home', 'Home', '图片管理', 'fa fa-money', null, '1', '1', '1');
INSERT INTO `menu` VALUES ('5', '/', '/home', 'Home', '地点管理', 'fa fa-bar-chart', null, '1', '1', '1');
INSERT INTO `menu` VALUES ('6', '/', '/home', 'Home', '系统管理', 'fa fa-windows', null, '1', '1', '1');
INSERT INTO `menu` VALUES ('7', '/user/basic/**', '/news/manage', 'NewsManage', '新闻管理', null, null, '1', '2', '1');
INSERT INTO `menu` VALUES ('10', '/guide/manage/**', '/guide/manage', 'GuideManage', '导游管理', null, null, '1', '3', '1');
INSERT INTO `menu` VALUES ('11', '/picture/manage/**', '/picture/manage', 'PictureManage', '图片管理', null, null, '1', '4', '1');
INSERT INTO `menu` VALUES ('12', '/place/manage/**', '/place/manage', 'PlaceManage', '地点管理', null, null, '1', '5', '1');
INSERT INTO `menu` VALUES ('13', '/system/basic/**', '/sys/basic', 'SysBasic', '基础信息设置', null, null, '1', '6', '1');
INSERT INTO `menu` VALUES ('14', '/system/record/**', '/sys/log', 'SysLog', '操作日志管理', null, null, '1', '6', '1');
INSERT INTO `menu` VALUES ('15', '/system/hr/**', '/sys/hr', 'SysHr', '操作员管理', null, null, '1', '6', '1');

-- ----------------------------
-- Table structure for menu_role
-- ----------------------------
DROP TABLE IF EXISTS `menu_role`;
CREATE TABLE `menu_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单角色中间表',
  `mid` int(11) DEFAULT NULL,
  `rid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`),
  KEY `rid` (`rid`),
  CONSTRAINT `menu_role_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `menu` (`id`),
  CONSTRAINT `menu_role_ibfk_2` FOREIGN KEY (`rid`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu_role
-- ----------------------------
INSERT INTO `menu_role` VALUES ('1', '1', '1');
INSERT INTO `menu_role` VALUES ('2', '2', '1');
INSERT INTO `menu_role` VALUES ('3', '3', '1');
INSERT INTO `menu_role` VALUES ('4', '4', '1');
INSERT INTO `menu_role` VALUES ('5', '5', '1');
INSERT INTO `menu_role` VALUES ('6', '6', '1');
INSERT INTO `menu_role` VALUES ('7', '7', '1');
INSERT INTO `menu_role` VALUES ('10', '10', '1');
INSERT INTO `menu_role` VALUES ('11', '11', '1');
INSERT INTO `menu_role` VALUES ('12', '12', '1');
INSERT INTO `menu_role` VALUES ('13', '13', '1');
INSERT INTO `menu_role` VALUES ('14', '14', '1');
INSERT INTO `menu_role` VALUES ('15', '15', '1');
INSERT INTO `menu_role` VALUES ('297', '11', '2');
INSERT INTO `menu_role` VALUES ('299', '10', '4');
INSERT INTO `menu_role` VALUES ('300', '12', '3');

-- ----------------------------
-- Table structure for msgcontent
-- ----------------------------
DROP TABLE IF EXISTS `msgcontent`;
CREATE TABLE `msgcontent` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统通知表',
  `title` varchar(64) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `createDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of msgcontent
-- ----------------------------
INSERT INTO `msgcontent` VALUES ('14', '2222222222', '11111111111111111', '2018-02-02 20:46:19');
INSERT INTO `msgcontent` VALUES ('15', '22222222', '3333333333333333333333', '2018-02-02 21:45:57');
INSERT INTO `msgcontent` VALUES ('16', '通知标题1', '通知内容1', '2018-02-03 11:41:39');
INSERT INTO `msgcontent` VALUES ('17', '通知标题2', '通知内容2', '2018-02-03 11:52:37');
INSERT INTO `msgcontent` VALUES ('18', '通知标题3', '通知内容3', '2018-02-03 12:19:41');
INSERT INTO `msgcontent` VALUES ('19', '测试', '测试。。。。', '2018-03-21 17:34:14');
INSERT INTO `msgcontent` VALUES ('20', '周五进行操作记录审核', '望各位积极配合！', '2018-03-29 17:36:24');
INSERT INTO `msgcontent` VALUES ('22', '', '', '2018-05-29 12:00:16');

-- ----------------------------
-- Table structure for nation
-- ----------------------------
DROP TABLE IF EXISTS `nation`;
CREATE TABLE `nation` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '民族数据字典',
  `name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nation
-- ----------------------------
INSERT INTO `nation` VALUES ('1', '汉族');
INSERT INTO `nation` VALUES ('2', '蒙古族');
INSERT INTO `nation` VALUES ('3', '回族');
INSERT INTO `nation` VALUES ('4', '藏族');
INSERT INTO `nation` VALUES ('5', '维吾尔族');
INSERT INTO `nation` VALUES ('6', '苗族');
INSERT INTO `nation` VALUES ('7', '彝族');
INSERT INTO `nation` VALUES ('8', '壮族');
INSERT INTO `nation` VALUES ('9', '布依族');
INSERT INTO `nation` VALUES ('10', '朝鲜族');
INSERT INTO `nation` VALUES ('11', '满族');
INSERT INTO `nation` VALUES ('12', '侗族');
INSERT INTO `nation` VALUES ('13', '瑶族');
INSERT INTO `nation` VALUES ('14', '白族');
INSERT INTO `nation` VALUES ('15', '土家族');
INSERT INTO `nation` VALUES ('16', '哈尼族');
INSERT INTO `nation` VALUES ('17', '哈萨克族');
INSERT INTO `nation` VALUES ('18', '傣族');
INSERT INTO `nation` VALUES ('19', '黎族');
INSERT INTO `nation` VALUES ('20', '傈僳族');
INSERT INTO `nation` VALUES ('21', '佤族');
INSERT INTO `nation` VALUES ('22', '畲族');
INSERT INTO `nation` VALUES ('23', '高山族');
INSERT INTO `nation` VALUES ('24', '拉祜族');
INSERT INTO `nation` VALUES ('25', '水族');
INSERT INTO `nation` VALUES ('26', '东乡族');
INSERT INTO `nation` VALUES ('27', '纳西族');
INSERT INTO `nation` VALUES ('28', '景颇族');
INSERT INTO `nation` VALUES ('29', '柯尔克孜族');
INSERT INTO `nation` VALUES ('30', '土族');
INSERT INTO `nation` VALUES ('31', '达斡尔族');
INSERT INTO `nation` VALUES ('32', '仫佬族');
INSERT INTO `nation` VALUES ('33', '羌族');
INSERT INTO `nation` VALUES ('34', '布朗族');
INSERT INTO `nation` VALUES ('35', '撒拉族');
INSERT INTO `nation` VALUES ('36', '毛难族');
INSERT INTO `nation` VALUES ('37', '仡佬族');
INSERT INTO `nation` VALUES ('38', '锡伯族');
INSERT INTO `nation` VALUES ('39', '阿昌族');
INSERT INTO `nation` VALUES ('40', '普米族');
INSERT INTO `nation` VALUES ('41', '塔吉克族');
INSERT INTO `nation` VALUES ('42', '怒族');
INSERT INTO `nation` VALUES ('43', '乌孜别克族');
INSERT INTO `nation` VALUES ('44', '俄罗斯族');
INSERT INTO `nation` VALUES ('45', '鄂温克族');
INSERT INTO `nation` VALUES ('46', '崩龙族');
INSERT INTO `nation` VALUES ('47', '保安族');
INSERT INTO `nation` VALUES ('48', '裕固族');
INSERT INTO `nation` VALUES ('49', '京族');
INSERT INTO `nation` VALUES ('50', '塔塔尔族');
INSERT INTO `nation` VALUES ('51', '独龙族');
INSERT INTO `nation` VALUES ('52', '鄂伦春族');
INSERT INTO `nation` VALUES ('53', '赫哲族');
INSERT INTO `nation` VALUES ('54', '门巴族');
INSERT INTO `nation` VALUES ('55', '珞巴族');
INSERT INTO `nation` VALUES ('56', '基诺族');

-- ----------------------------
-- Table structure for oplog
-- ----------------------------
DROP TABLE IF EXISTS `oplog`;
CREATE TABLE `oplog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addDate` date DEFAULT NULL COMMENT '添加日期',
  `operate` varchar(255) DEFAULT NULL COMMENT '操作内容',
  `hrid` int(11) DEFAULT NULL COMMENT '操作员ID',
  PRIMARY KEY (`id`),
  KEY `hrid` (`hrid`),
  CONSTRAINT `oplog_ibfk_1` FOREIGN KEY (`hrid`) REFERENCES `hr` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oplog
-- ----------------------------

-- ----------------------------
-- Table structure for picture
-- ----------------------------
DROP TABLE IF EXISTS `picture`;
CREATE TABLE `picture` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '图片编号',
  `placeId` bigint(20) DEFAULT NULL,
  `url` varchar(2000) DEFAULT NULL COMMENT '图片url',
  `picName` varchar(100) DEFAULT NULL COMMENT '图片名字',
  `placeName` varchar(100) DEFAULT NULL COMMENT '地点名',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `createTime` varchar(40) DEFAULT NULL COMMENT '创建时间',
  `updateTime` varchar(40) DEFAULT '' COMMENT '更新时间',
  `operator` varchar(50) DEFAULT 'system' COMMENT '操作人',
  `yn` int(2) DEFAULT '-1' COMMENT '有效标识 0：无效 1：有效 -1:未审核',
  PRIMARY KEY (`id`),
  KEY `placeId` (`placeId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='图片表';

-- ----------------------------
-- Records of picture
-- ----------------------------
INSERT INTO `picture` VALUES ('1', '2', 'https://lnpu-cns.oss-cn-qingdao.aliyuncs.com/upload/avatar/06d3b8014a90f603a81a31943f12b31bb151ed09.jpg', '图书馆 莫言湖', '图书馆', '站在莫言湖畔，望着那美丽的图书馆倒影，沉醉其中。', '2018-4-1', '2018-4-9', 'system', '1');
INSERT INTO `picture` VALUES ('2', '2', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=4282841425,752234235&fm=27&gp=0.jpg', '阳光下的体育馆', '体育馆', '阳光下的她，熠熠生辉，闪烁着青春、运动、激情！', '2018-4-9', '2018-4-9', 'linyuner', '1');
INSERT INTO `picture` VALUES ('3', '2', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1523264386066&di=6b1c23c560b8142128caa977dfdbfcd9&imgtype=0&src=http%3A%2F%2Fwww.lnpu.edu.cn%2Fxxzl%2Fxiaoyuan%2F048f.jpg', '莫言湖畔', '莫言湖', '书自有颜如玉，湖中自有可爱的你！', '2018-4-9', '2018-4-9', 'system', '1');
INSERT INTO `picture` VALUES ('4', '2', 'https://lnpu-cns.oss-cn-qingdao.aliyuncs.com/upload/avatar/3c00f9198618367afea917752e738bd4b21ce5c3.jpg', '正门', '东1门', '回家的感觉！', '2018-3-4', '2018-4-10', 'linyuner', '1');
INSERT INTO `picture` VALUES ('5', '13', 'https://lnpu-cns.oss-cn-qingdao.aliyuncs.com/upload/avatar/136cf9dcd100baa15cbcd4de4610b912c9fc2e90.jpg', '莫言湖', '莫言湖', null, null, '', 'system', '-1');
INSERT INTO `picture` VALUES ('6', '2', 'https://lnpu-cns.oss-cn-qingdao.aliyuncs.com/upload/avatar/44adc2cec3fdfc0371588b10d43f8794a5c226c3.jpg', '图书馆', '图书馆', null, null, '', 'system', '1');

-- ----------------------------
-- Table structure for place
-- ----------------------------
DROP TABLE IF EXISTS `place`;
CREATE TABLE `place` (
  `id` bigint(50) NOT NULL AUTO_INCREMENT,
  `placeNameCh` varchar(100) DEFAULT NULL COMMENT '地点中文名称',
  `placeNameEn` varchar(100) DEFAULT NULL COMMENT '地点英文名称',
  `img` varchar(255) DEFAULT NULL COMMENT '地点展示图片地址',
  `alias` varchar(100) DEFAULT NULL COMMENT '百度地图地点名',
  `coordinate` varchar(255) DEFAULT NULL COMMENT '地点坐标',
  `isHot` int(2) DEFAULT '0' COMMENT '是否是热点 0：否 1 : 是',
  `isSchool` int(2) DEFAULT '0' COMMENT '是否校内:0是，1否',
  `type` int(2) DEFAULT '1' COMMENT '类别：1学习，2美食，3娱乐，4生活',
  `descr` varchar(5000) DEFAULT NULL COMMENT '描述',
  `createTime` varchar(40) DEFAULT NULL COMMENT '创建时间',
  `updateTime` varchar(40) DEFAULT NULL COMMENT '更新时间',
  `operator` varchar(50) DEFAULT 'system' COMMENT '操作人 默认system',
  `yn` int(2) DEFAULT '-1' COMMENT '有效标识 0：无效 1：有效 -1:未审核',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='地点表';

-- ----------------------------
-- Records of place
-- ----------------------------
INSERT INTO `place` VALUES ('1', '第五教学楼', 'fifth classroom', 'https://lnpu-cns.oss-cn-qingdao.aliyuncs.com/images/%E8%BE%BD%E7%9F%B3%E5%8C%96%E5%9B%BE%E7%89%87/timg1.jpg', '辽宁石油化工大学第五教学楼', '41.863866,123.798438', '1', '0', '1', '位于图书馆东侧', '2018-04-05 00:00:00', '2018-01-18 00:00:00', 'hanyu', '1');
INSERT INTO `place` VALUES ('2', '图书馆', 'library', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1525926644444&di=31859b8cef89e98da33c9782738dd4d6&imgtype=0&src=http%3A%2F%2Fimg2.sdaxue.com%2Fa8de388a-4cfe-67f2-14d1-55f28d7e3bec.jpg', '辽宁石油化工大学-图书馆 抚顺市望花区', '41.865019,123.797379', '1', '0', '1', '目前是东北最大的图书馆。\r\n辽宁石油化工大学图书馆1950年始建于大连市。建馆之初，馆舍只有 100平方米，藏书1000余册。1954年随校迁移抚顺市，1981年兴建独立馆舍近9200平方米。经过五十年的建设，图书馆有了很大的发展，现馆内机构设有：办公室、采访编目部、图书推荐部、期刊阅览部、情报提供部、自动化网络部六个科室。全馆现有图书管理人员45人，其中高级职称5人，中级职称16人，硕士毕业生2人，大学本科毕业的专业人才占31.7%，具有两个专业以上的复合型人才共17人。图书馆在五十年的发展过程中，逐步建立健全了各种规章制度，实行岗位责任制。管理工作做到了制度化、规范化、科学化。1985年学院首先在图书馆进行改革试点，两年后，推出《图书馆目标管理法》。', '2018-5-20', '2018-5-20', 'hanyu', '1');
INSERT INTO `place` VALUES ('3', '游泳馆', null, 'http://e.hiphotos.baidu.com/image/pic/item/d6ca7bcb0a46f21fca6fafecfa246b600c33ae32.jpg', '辽宁石油化工大学-游泳馆 抚顺市望花区', '41.862021,123.79712', '1', '0', '2', '2017年建成使用，丰富大学生活', null, null, '', '0');
INSERT INTO `place` VALUES ('4', '校史展览馆', null, 'https://lnpu-cns.oss-cn-qingdao.aliyuncs.com/images/%E8%BE%BD%E7%9F%B3%E5%8C%96%E5%9B%BE%E7%89%87/timg32234.jpg', '辽宁石油化工大学-校史展览馆 抚顺市望花区', '41.86142,123.799271', '1', '0', '1', '描述学校历史', null, '2018-04-11 00:00:00', 'linyuner', '1');
INSERT INTO `place` VALUES ('5', '龙源食堂', null, 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1527157779910&di=caa99a636b4017ebb82987ba2f6453d6&imgtype=0&src=http%3A%2F%2Fwww.newclasses.org%2Fupload%2Fzyt%2F201301%2F634937051134054072.jpg', '龙源餐饮中心 抚顺市望花区', '41.862719,123.792787', '1', '0', '3', null, null, null, 'system', '1');
INSERT INTO `place` VALUES ('6', '行知食堂', null, 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1527157965702&di=8894503395bf633d731acaa305e5eef2&imgtype=0&src=http%3A%2F%2Fimage2.cnpp.cn%2Fupload%2Fimages%2F20170719%2F16051936974_640x426.jpg', '石化大学学生食堂', '41.860191,123.792806', '1', '0', '2', null, null, null, 'system', '1');
INSERT INTO `place` VALUES ('7', '第四教学楼', null, 'https://lnpu-cns.oss-cn-qingdao.aliyuncs.com/images/%E8%BE%BD%E7%9F%B3%E5%8C%96%E5%9B%BE%E7%89%87/timg1231.jpg', '辽宁石油化工大学第四教学楼', '41.863855,123.796492', '1', '0', '1', null, null, null, 'system', '1');
INSERT INTO `place` VALUES ('8', '第一教学楼', null, 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1527158041963&di=9fd38d8cb1534fd43aa9e1c8d75eb7b5&imgtype=0&src=http%3A%2F%2Fs1.sinaimg.cn%2Fmw690%2Fc3cc0c9dtx6BxVqN9D250%26690', '辽宁石油化工大学-第一教学楼', '41.859715,123.796979', '1', '0', '1', null, null, null, 'hanyu', '1');
INSERT INTO `place` VALUES ('9', '行政楼', null, 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1527158201546&di=3fcfd653dc8995d8296aab32104f02ac&imgtype=0&src=http%3A%2F%2Fpic.baike.soso.com%2Fp%2F20110120%2F20110120105444-1821266521.jpg', '中国农业银行ATM(丹东路)', '41.860299,123.79637', '1', '0', '1', null, null, null, 'linyuner', '1');
INSERT INTO `place` VALUES ('11', '经济管理学院', null, 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1527158077236&di=dcc0ce115f88dd4d93eaa5a249a72f52&imgtype=0&src=http%3A%2F%2Fs15.sinaimg.cn%2Fbmiddle%2F4be6bfb54592c5b050bce', '辽宁石油化工大学-经济管理学院', '41.866903,123.801017', '1', '0', '1', null, null, null, 'system', '1');
INSERT INTO `place` VALUES ('12', '计算机与通信工程学院', null, 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3346797649,1330679757&fm=27&gp=0.jpg', '辽宁石油化工大学-计算机与通信工程学院', '41.864911,123.800864', '1', '0', '1', null, null, null, 'system', '1');
INSERT INTO `place` VALUES ('13', '莫言湖', null, 'https://lnpu-cns.oss-cn-qingdao.aliyuncs.com/images/%E8%BE%BD%E7%9F%B3%E5%8C%96%E5%9B%BE%E7%89%87/timg.jpg', '辽宁石油化工大学莫言湖', null, '0', '0', '1', null, null, null, 'system', '1');
INSERT INTO `place` VALUES ('14', '小体育场', 'small gym', 'https://lnpu-cns.oss-cn-qingdao.aliyuncs.com/upload/avatar/014100e93901213fc59f08b455e736d12e2e95ff.jpg', '辽宁石油化工大学体育馆', null, '0', '0', '4', '运动，挥洒汗水的好地方', '2018-05-30', null, 'wangning', '-1');

-- ----------------------------
-- Table structure for politicsstatus
-- ----------------------------
DROP TABLE IF EXISTS `politicsstatus`;
CREATE TABLE `politicsstatus` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '政治面貌数据字典',
  `name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of politicsstatus
-- ----------------------------
INSERT INTO `politicsstatus` VALUES ('1', '中共党员');
INSERT INTO `politicsstatus` VALUES ('2', '中共预备党员');
INSERT INTO `politicsstatus` VALUES ('3', '共青团员');
INSERT INTO `politicsstatus` VALUES ('4', '民革党员');
INSERT INTO `politicsstatus` VALUES ('5', '民盟盟员');
INSERT INTO `politicsstatus` VALUES ('6', '民建会员');
INSERT INTO `politicsstatus` VALUES ('7', '民进会员');
INSERT INTO `politicsstatus` VALUES ('8', '农工党党员');
INSERT INTO `politicsstatus` VALUES ('9', '致公党党员');
INSERT INTO `politicsstatus` VALUES ('10', '九三学社社员');
INSERT INTO `politicsstatus` VALUES ('11', '台盟盟员');
INSERT INTO `politicsstatus` VALUES ('12', '无党派民主人士');
INSERT INTO `politicsstatus` VALUES ('13', '普通公民');

-- ----------------------------
-- Table structure for position
-- ----------------------------
DROP TABLE IF EXISTS `position`;
CREATE TABLE `position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL COMMENT '职位',
  `createDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `enabled` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of position
-- ----------------------------
INSERT INTO `position` VALUES ('30', '主任', '2018-01-11 21:13:48', '1');
INSERT INTO `position` VALUES ('31', '学生会主席', '2018-01-11 21:13:56', '1');
INSERT INTO `position` VALUES ('34', '文艺部部长', '2018-01-14 16:11:41', '1');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `nameZh` varchar(64) DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'ROLE_admin', '系统管理员');
INSERT INTO `role` VALUES ('2', 'ROLE_picture', '图片管理员');
INSERT INTO `role` VALUES ('3', 'ROLE_place', '地点管理员');
INSERT INTO `role` VALUES ('4', 'ROLE_guide', '导游管理员');
INSERT INTO `role` VALUES ('5', 'ROLE_test2', '测试角色2');
INSERT INTO `role` VALUES ('6', 'ROLE_test1', '测试角色1');

-- ----------------------------
-- Table structure for sysmsg
-- ----------------------------
DROP TABLE IF EXISTS `sysmsg`;
CREATE TABLE `sysmsg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) DEFAULT NULL COMMENT '消息id',
  `type` int(11) DEFAULT '0' COMMENT '0表示群发消息',
  `hrid` int(11) DEFAULT NULL COMMENT '这条消息是给谁的',
  `state` int(11) DEFAULT '0' COMMENT '0 未读 1 已读',
  PRIMARY KEY (`id`),
  KEY `hrid` (`hrid`),
  KEY `sysmsg_ibfk_1` (`mid`),
  CONSTRAINT `sysmsg_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `msgcontent` (`id`),
  CONSTRAINT `sysmsg_ibfk_2` FOREIGN KEY (`hrid`) REFERENCES `hr` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sysmsg
-- ----------------------------
INSERT INTO `sysmsg` VALUES ('82', '19', '0', '1', '1');
INSERT INTO `sysmsg` VALUES ('83', '19', '0', '2', '1');
INSERT INTO `sysmsg` VALUES ('84', '19', '0', '3', '1');
INSERT INTO `sysmsg` VALUES ('85', '19', '0', '4', '0');
INSERT INTO `sysmsg` VALUES ('86', '19', '0', '5', '1');
INSERT INTO `sysmsg` VALUES ('87', '20', '0', '1', '0');
INSERT INTO `sysmsg` VALUES ('88', '20', '0', '2', '1');
INSERT INTO `sysmsg` VALUES ('89', '20', '0', '3', '1');
INSERT INTO `sysmsg` VALUES ('90', '20', '0', '4', '0');
INSERT INTO `sysmsg` VALUES ('91', '20', '0', '5', '1');
INSERT INTO `sysmsg` VALUES ('92', '22', '0', '1', '0');
INSERT INTO `sysmsg` VALUES ('93', '22', '0', '2', '0');
INSERT INTO `sysmsg` VALUES ('94', '22', '0', '3', '1');
INSERT INTO `sysmsg` VALUES ('95', '22', '0', '4', '0');
INSERT INTO `sysmsg` VALUES ('96', '22', '0', '5', '1');

-- ----------------------------
-- Table structure for t_news
-- ----------------------------
DROP TABLE IF EXISTS `t_news`;
CREATE TABLE `t_news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '新闻标题',
  `outline` varchar(255) DEFAULT NULL COMMENT '新闻梗概',
  `content` varchar(20000) DEFAULT NULL COMMENT '新闻内容',
  `imgUrl` varchar(500) DEFAULT NULL COMMENT '新闻图片链接',
  `author` varchar(40) DEFAULT NULL COMMENT '作者',
  `source` varchar(50) DEFAULT NULL COMMENT '来源',
  `type` int(2) NOT NULL DEFAULT '0' COMMENT '新闻类型 0 ： 校内新闻 1：其他新闻',
  `createTime` varchar(30) DEFAULT NULL COMMENT '创建时间',
  `yn` int(2) NOT NULL DEFAULT '1' COMMENT '有效标识 0：无效 1：有效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='新闻表';

-- ----------------------------
-- Records of t_news
-- ----------------------------
INSERT INTO `t_news` VALUES ('1', '      我校14项成果喜获2018年辽宁省本科教学成果奖\r\n我校14项成果喜获2018年辽宁省本科教学成果奖\r\n', '近日，辽宁省教育厅发布了《关于公布2018年辽宁省普通高等教育本科教学成果奖获奖名单的通知》（辽教函[2018]159号），我校作为第一完成单位推荐的15项本科教学成果最终有14项获奖，其中一等奖3项、二等奖3项、三等奖8项，另外还有2项作为参与单位完成的教学成果均荣获省级一等奖。今年我校省级本科教学成果获奖数量和获奖质量均创历史新高。\r\n', '近日，辽宁省教育厅发布了《关于公布2018年辽宁省普通高等教育本科教学成果奖获奖名单的通知》（辽教函[2018]159号），我校作为第一完成单位推荐的15项本科教学成果最终有14项获奖，其中一等奖3项、二等奖3项、三等奖8项，另外还有2项作为参与单位完成的教学成果均荣获省级一等奖。今年我校省级本科教学成果获奖数量和获奖质量均创历史新高。\r\n\r\n辽宁省普通高等教育本科教学成果奖是我省本科教育教学的最高奖项，对提升学校综合竞争力具有重要影响。学校高度重视本科教学成果奖申报工作，自2016年起前后组织开展了3次校内评审，针对具体项目从成果总结、简介、突出亮点及特色、支撑材料整合优化等方面分别提出修改意见，帮助教师和团队提升申报质量。获奖成果是对本科人才培养、教学建设和教学改革的集中检阅和展示，是学校深化高等教育教学改革过程中涌现出来的新成果，充分体现了近年来我校教师在立德树人、教育教学改革方面所取得的重大进展和成就。\r\n\r\n我校在今年省级教学成果奖评选中取得的成绩，是学校党政领导顶层设计集体决策的重大成果，是长期奋战在教学和管理一线的广大教职员工积极开展教育教学改革与实践的智慧结晶。学校将以本次教学成果奖评选为契机，紧密围绕应用型人才培养目标，坚持问题导向，继续深化教育教学改革和创新，以真抓实干的作风加强本科教学内涵建设，不断提高本科教学水平和人才培养质量，提升学校为石油化工行业和辽宁省经济社会发展的服务能力，为辽宁老工业基地新一轮振兴贡献新的力量。（孙文卓 文）\r\n', '%2FUploadFiles_7371%2F201610%2F2016100706231598.jpg', '孙卓文', '辽宁石油化工大学微信公众号', '0', '2018-5-22', '1');

-- ----------------------------
-- Table structure for t_placetype
-- ----------------------------
DROP TABLE IF EXISTS `t_placetype`;
CREATE TABLE `t_placetype` (
  `id` bigint(20) NOT NULL,
  `typeName` varchar(255) DEFAULT NULL COMMENT '类别名称',
  `code` varchar(255) DEFAULT NULL COMMENT '类别码值',
  `yn` int(2) DEFAULT NULL COMMENT '有效标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='地点类别字典表';

-- ----------------------------
-- Records of t_placetype
-- ----------------------------
INSERT INTO `t_placetype` VALUES ('1', '学习', '1', '1');
INSERT INTO `t_placetype` VALUES ('2', '美食', '2', '1');
INSERT INTO `t_placetype` VALUES ('3', '娱乐', '3', '1');
INSERT INTO `t_placetype` VALUES ('4', '生活', '4', '1');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(10) DEFAULT NULL COMMENT '用户姓名',
  `gender` char(4) DEFAULT NULL COMMENT '性别',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `imgUrl` varchar(255) DEFAULT NULL COMMENT '头像',
  `idCard` char(18) DEFAULT NULL COMMENT '身份证号',
  `nationId` int(8) DEFAULT NULL COMMENT '民族',
  `nativePlace` varchar(20) DEFAULT NULL COMMENT '籍贯',
  `politicId` int(8) DEFAULT NULL COMMENT '政治面貌',
  `email` varchar(20) DEFAULT NULL COMMENT '邮箱',
  `qq` varchar(255) DEFAULT NULL COMMENT 'QQ号码',
  `phone` varchar(11) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(64) DEFAULT NULL COMMENT '联系地址',
  `departmentId` int(11) DEFAULT NULL COMMENT '学院',
  `major` varchar(32) DEFAULT NULL COMMENT '专业',
  `beginDate` date DEFAULT NULL COMMENT '入学日期',
  `studentState` int(11) DEFAULT '0' COMMENT '学生状态 0:在读 1::毕业 2::休学',
  `studentID` char(12) DEFAULT NULL COMMENT '学号',
  `username` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(255) NOT NULL DEFAULT '' COMMENT '密码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING HASH,
  KEY `departmentId` (`departmentId`),
  KEY `nationId` (`nationId`),
  KEY `politicId` (`politicId`),
  CONSTRAINT `t_user_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `department` (`id`),
  CONSTRAINT `t_user_ibfk_4` FOREIGN KEY (`nationId`) REFERENCES `nation` (`id`),
  CONSTRAINT `t_user_ibfk_5` FOREIGN KEY (`politicId`) REFERENCES `politicsstatus` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', '林允儿', '女', '1995-09-02', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1524713823&di=1306f18a3f639931f3307ef59c45689e&imgtype=jpg&er=1&src=http%3A%2F%2Fimg4.duitang.com%2Fuploads%2Fitem%2F201502%2F14%2F20150214123546_zHMww.jpeg', '21238880', '1', '韩国首尔', '13', 'linyuner@163.com', '992901974', '23123', '北京市通州区亦庄经济开发区', '1', '经济管理', '2015-09-01', '0', '1411010211', 'linyuner111', '2313');
INSERT INTO `t_user` VALUES ('8', '吴宣仪', '女', null, 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1527697938433&di=718ddb238994068da2ac102ce4850128&imgtype=0&src=http%3A%2F%2Fimg4.duitang.com%2Fuploads%2Fitem%2F201609%2F28%2F20160928234655_d2GBk.jpeg', null, null, null, null, null, '992901974', '1111123', null, null, null, null, '0', null, 'wuxuanyi', '123');
INSERT INTO `t_user` VALUES ('9', null, null, null, null, null, null, null, null, null, '992901974', null, null, null, null, null, '0', null, 'yanglei', '123');
INSERT INTO `t_user` VALUES ('10', null, null, null, null, null, null, null, null, null, '992901974', null, null, null, null, null, '0', null, 'wangning', '123');
INSERT INTO `t_user` VALUES ('11', '林允儿', '女', null, '/cns/images/head.jpg', null, null, null, null, '', '712731970', null, null, null, null, null, '0', '', 'linyuner', '123');
INSERT INTO `t_user` VALUES ('12', null, null, null, null, null, null, null, null, null, '712731970', null, null, null, null, null, '0', null, 'wanging113', '1234');
INSERT INTO `t_user` VALUES ('13', null, null, null, null, null, null, null, null, null, '712731970', null, null, null, null, null, '0', null, 'wangning111', '123');
