/*
Navicat MySQL Data Transfer

Source Server         : 本地链接
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : diary

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2020-04-08 16:24:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for collectionmoney
-- ----------------------------
DROP TABLE IF EXISTS `collectionmoney`;
CREATE TABLE `collectionmoney` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `money` decimal(10,0) DEFAULT NULL,
  `mtime` varchar(50) DEFAULT NULL,
  `mcomment` text,
  `mstatus` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of collectionmoney
-- ----------------------------
INSERT INTO `collectionmoney` VALUES ('37', '50', '2020-03-29 ', '摸一下', '1', '34');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `cmid` int(11) NOT NULL AUTO_INCREMENT,
  `cmuid` int(11) DEFAULT NULL,
  `cmdid` int(11) DEFAULT NULL,
  `cmcomment` varchar(255) DEFAULT NULL,
  `cmdatime` varchar(50) DEFAULT NULL,
  `creattime` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cmid`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('4', '10', '32', '你好', '2020-03-24', '2020-03-18 13:16:45');
INSERT INTO `comment` VALUES ('20', '9', '32', 'dfgdfgdfg', '2020-03-24', '2020-03-24 18:45:49');
INSERT INTO `comment` VALUES ('28', '9', '34', '摸头需要', '2020-03-24', '2020-03-24 19:54:33');
INSERT INTO `comment` VALUES ('29', '9', '22', 'dfgdfg', '2020-03-25', '2020-03-25 17:23:26');
INSERT INTO `comment` VALUES ('30', '9', '22', 'gfhfgh', '2020-03-25', '2020-03-25 17:30:14');
INSERT INTO `comment` VALUES ('31', '9', '22', '', '2020-03-25', '2020-03-25 17:30:17');
INSERT INTO `comment` VALUES ('34', '9', '37', '内容不错！！！', '2020-03-25', '2020-03-25 20:14:10');
INSERT INTO `comment` VALUES ('35', '9', '31', '什么情况', '2020-03-25', '2020-03-25 20:14:38');
INSERT INTO `comment` VALUES ('36', '9', '37', '给你你点个赞哦', '2020-03-26', '2020-03-26 09:49:19');
INSERT INTO `comment` VALUES ('37', '9', '37', '', '2020-03-26', '2020-03-26 18:43:55');
INSERT INTO `comment` VALUES ('38', '9', '39', '哦摩西', '2020-03-27', '2020-03-27 15:51:52');
INSERT INTO `comment` VALUES ('40', '9', '40', '你都摸一下', '2020-03-27', '2020-03-27 16:04:23');
INSERT INTO `comment` VALUES ('41', '9', '41', '你好', '2020-03-27', '2020-03-27 16:06:18');
INSERT INTO `comment` VALUES ('42', '9', '43', '不错哦', '2020-03-29', '2020-03-29 18:58:02');
INSERT INTO `comment` VALUES ('43', '9', '45', '你问一下', '2020-03-30', '2020-03-30 09:50:33');
INSERT INTO `comment` VALUES ('44', '9', '45', '你问一下你问一下', '2020-03-30', '2020-03-30 09:50:42');
INSERT INTO `comment` VALUES ('56', '9', '47', '是的范德萨发', '2020-03-31', '2020-03-31 17:20:44');
INSERT INTO `comment` VALUES ('57', '9', '47', 'df戴戴', '2020-03-31', '2020-03-31 17:21:28');
INSERT INTO `comment` VALUES ('58', '18', '56', '干干净净看', '2020-04-02', '2020-04-02 16:59:12');
INSERT INTO `comment` VALUES ('59', '24', '58', '测试', '2020-04-02', '2020-04-02 20:58:43');

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(50) DEFAULT NULL,
  `cabbreviation` varchar(50) DEFAULT NULL,
  `weixin` varchar(255) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `creattime` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES ('1', '八位时空', '八位', null, '4', '2020-03-01 17:26:27');
INSERT INTO `company` VALUES ('2', '测试数据', '测试', 'ewqewqeq', '4', '2020-03-03 10:26:27');
INSERT INTO `company` VALUES ('5', '咸宁数据', '咸宁', null, '4', '2020-03-04 12:25:49');
INSERT INTO `company` VALUES ('16', 'daidia', '456456', null, '9', '2020-03-23 11:01');
INSERT INTO `company` VALUES ('17', '新增企业234', '测试', null, '9', '2020-03-23 11:04');
INSERT INTO `company` VALUES ('18', 'fghgh', 'ghg', null, null, '2020-04-02 15:31');
INSERT INTO `company` VALUES ('19', 'fghgh', 'ghg', null, null, '2020-04-02 15:32');
INSERT INTO `company` VALUES ('21', '哇哈哈', '嘿嘿嘿', null, '18', '2020-04-02 15:37');
INSERT INTO `company` VALUES ('23', '八维时空', '制造成功', null, '25', '2020-04-03 14:37');
INSERT INTO `company` VALUES ('24', '八维时空', '制造成功', null, '25', '2020-04-03 14:37');

-- ----------------------------
-- Table structure for daily
-- ----------------------------
DROP TABLE IF EXISTS `daily`;
CREATE TABLE `daily` (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `uposition` varchar(50) DEFAULT NULL,
  `utelphone` varchar(50) DEFAULT NULL,
  `weather` int(11) DEFAULT NULL,
  `attendancetody` int(11) DEFAULT NULL,
  `attendanceoneself` double DEFAULT NULL,
  `effectivework` int(11) DEFAULT NULL,
  `satisfactiondegree` int(11) DEFAULT NULL,
  `equipments` text,
  `workcomment` text,
  `abnorname` text,
  `dunning` text,
  `dunningpic` varchar(255) DEFAULT NULL,
  `amountody` decimal(10,0) DEFAULT NULL,
  `invoicetody` decimal(10,0) DEFAULT NULL,
  `dpic` text,
  `dvoideo` text,
  `dtime` varchar(255) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `creattime` varchar(50) DEFAULT NULL,
  `creatMouth` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of daily
-- ----------------------------
INSERT INTO `daily` VALUES ('22', '9', '戴庆洋', '程序员', '戴庆洋', '2', '2', '2', '3', '5', '[{\"namex\":\"4\",\"countx\":\"4\"},{\"namex\":\"3\",\"countx\":\"3\"}]', '454', '43', '4', null, '3', '4', '[]', '[]', '2020年03月20日', '35', '2020-03-19 19:05', '2020年03月');
INSERT INTO `daily` VALUES ('23', '9', '戴戴', '3', '戴戴', '3', '4', '4', '4', '3', '[{\"namex\":\"45\",\"countx\":\"45\"}]', 'lkj立刻就会卡萨达kjakjahskjhsalk卡号是框架和萨拉科技askjdhaskjdhkjaaskjdhkjahkjhadf奥斯卡觉得好看教案和空间哈地方', '45', '45', null, '45', '45', '[]', '[]', '2020年03月19日', '34', '2020-03-19 19:11', '2020年03月');
INSERT INTO `daily` VALUES ('24', '9', '距离', '租', '距离', '2', '5', '1', '3', '3', '[{\"namex\":\"4\",\"countx\":\"5\"}]', '测试', null, null, null, null, null, '[]', '[]', '2020年03月19日', '36', '2020-03-19 19:53', '2020年03月');
INSERT INTO `daily` VALUES ('26', '9', null, null, null, '1', null, null, '4', null, '[{\"namex\":\"\",\"countx\":\"\"}]', null, null, null, null, null, null, '[]', '[]', '2020年03月18日', '36', '2020-03-19 20:15', '2020年03月');
INSERT INTO `daily` VALUES ('29', '9', 'dada', null, 'dada', '1', '1', null, '4', null, '[{\"namex\":\"\",\"countx\":\"\"}]', null, null, null, null, null, null, '', '[{\"src\":\"/image/video/1584698446597.mp4\",\"thumbTempFilePath\":\"http://tmp/wx05797fdcc1a18a71.o6zAJs9D_rttdauYOXYanSXc0h9s.BxxjMDnatgp0f7f3f1f5da7764c45ea127011f5ba472.jpg\"},{\"src\":\"/image/video/1584698454040.mp4\",\"thumbTempFilePath\":\"http://tmp/wx05797fdcc1a18a71.o6zAJs9D_rttdauYOXYanSXc0h9s.HKeAigiBZvwUf7f3f1f5da7764c45ea127011f5ba472.jpg\"}]', '2020年03月20日', '35', '2020-03-20 18:00', '2020年03月');
INSERT INTO `daily` VALUES ('30', '9', '测试', '测试', '测试', '1', '2', '2', '3', '5', '[{\"namex\":\"5\",\"countx\":\"5\"},{\"namex\":\"5\",\"countx\":\"5\"}]', '无', '55', '56', null, '96', '966', '[]', '[]', '2020年03月23日', '34', '2020-03-23 09:59', '2020年03月');
INSERT INTO `daily` VALUES ('31', '9', '戴', '测试', '戴', '2', '2', '2', '4', '4', '[{\"namex\":\"2\",\"countx\":\"2\"},{\"namex\":\"2\",\"countx\":\"2\"}]', '33', '33', '33', null, '33', '33', '', '[]', '2020年03月23日', '35', '2020-03-23 10:26', '2020年03月');
INSERT INTO `daily` VALUES ('32', '9', '戴', '测试', '戴', '2', '2', '2', '4', '4', '[{\"namex\":\"2\",\"countx\":\"2\"}]', '33', '33', '33', null, '33', '33', '[\"{\\\"timestamp\\\":\\\"2020-03-23T02:25:20.003+0000\\\",\\\"status\\\":500,\\\"error\\\":\\\"Internal Server Error\\\",\\\"message\\\":\\\"Failed to parse multipart servlet request; nested exception is java.io.IOException: The temporary upload location [C:\\\\\\\\Users\\\\\\\\Administrator\\\\\\\\AppData\\\\\\\\Local\\\\\\\\Temp\\\\\\\\tomcat.1511166557280395332.8080\\\\\\\\work\\\\\\\\Tomcat\\\\\\\\localhost\\\\\\\\ROOT] is not valid\\\",\\\"path\\\":\\\"/file/upload\\\"}\"]', '[]', '2020年03月23日', '36', '2020-03-23 10:33', '2020年03月');
INSERT INTO `daily` VALUES ('33', '10', 'dai', 'cehsi', '13163395287', '1', '34', '0.5', '4', '4', '[{\"namex\":\"3\",\"countx\":\"3\"},{\"namex\":\"4\",\"countx\":\"4\"}]', 'hdsflkjhdsflk活动是法律框架和第三方来看 khjkhjkskhjksjdhfkjhds客户即可升级的回复框架和第三方', 'df豆腐干豆腐', '50', null, '50', '50', '[\"/image/picture/1585047131482.jpg\",\"/image/picture/1585047134449.jpg\",\"/image/picture/1585047141477.png\"]', '[{\"src\":\"/image/video/1585047146537.mp4\",\"thumbTempFilePath\":\"http://tmp/wx05797fdcc1a18a71.o6zAJs9D_rttdauYOXYanSXc0h9s.YGNTIrn4BGII7823750df719983849af73490e8e17e7.jpg\"}]', '2020年03月24日', '36', '2020-03-24 18:56', '2020年03月');
INSERT INTO `daily` VALUES ('34', '10', '戴戴', '34', '13163395287', '1', '2', '1', '4', '3', '[{\"namex\":\"\",\"countx\":\"\"}]', '是的发送到发送到', null, null, null, null, null, '[]', '[]', '2020年03月25日', '35', '2020-03-24 19:40', '2020年03月');
INSERT INTO `daily` VALUES ('36', '9', 'daidia', '1231', '13163395287', '1', '3', '1', '4', null, '[{\"namex\":\"\",\"countx\":\"\"}]', 'fhfghfghfghfgh', null, null, null, null, null, '[]', '[]', '2020年03月25日', '36', '2020-03-25 10:22', '2020年03月');
INSERT INTO `daily` VALUES ('37', '9', 'daidia', 'er', '13163395287', '3', '20', '0.23', '4', '3', '[{\"namex\":\"\",\"countx\":\"\"}]', 'cvbcvbcvb', null, null, null, null, null, '[]', '[]', '2020年03月25日', '35', '2020-03-25 15:40', '2020年03月');
INSERT INTO `daily` VALUES ('38', '9', '测评', '测试', '13147851211', '1', '5', '1', '4', '3', '[{\"namex\":\"\",\"countx\":\"\"}]', '来咯哈', null, null, null, null, null, '[\"/image/picture/1585224672581.jpg\"]', '[]', '2020年03月24日', '35', '2020-03-26 20:11', '2020年03月');
INSERT INTO `daily` VALUES ('39', '9', '3434', '框架和', '13163395287', '1', '12', '0.5', '4', null, '[{\"namex\":\"\",\"countx\":\"\"}]', '规划局规划', null, null, null, null, null, '[\"/image/picture/1585228215391.jpg\",\"/image/picture/1585228218889.jpg\"]', '[]', '2020年03月26日', '35', '2020-03-26 21:10', '2020年03月');
INSERT INTO `daily` VALUES ('40', '9', '554', '阿萨德', '13163395287', '1', '3', '0.5', '4', null, '[{\"namex\":\"\",\"countx\":\"\"}]', '规范', null, null, null, null, null, '[\"/image/picture/1585230243087.jpg\"]', '[]', '2020年03月26日', '34', '2020-03-26 21:44', '2020年03月');
INSERT INTO `daily` VALUES ('41', '9', '带带', '哦哦哦', '13163395287', '1', '5', '0.6', '4', null, '[{\"namex\":\"\",\"countx\":\"\"}]', '太墨子哦', null, null, null, null, null, '[]', '[]', '2020年03月27日', '34', '2020-03-27 14:21', '2020年03月');
INSERT INTO `daily` VALUES ('43', '9', '戴戴', '测试员', '13163395287', '2', '1', '0.5', '4', '4', '[{\"namex\":\"10\",\"countx\":\"1\"},{\"namex\":\"4\",\"countx\":\"\"}]', '这个是我我的作内容', null, null, null, null, null, '[]', '[]', '2020年03月29日', '34', '2020-03-29 18:48', '2020年03月');
INSERT INTO `daily` VALUES ('44', '9', '你现在', '测试员', '13163395287', '1', '5', '0.5', '4', null, '[{\"namex\":\"\",\"countx\":\"\"}]', '内容测试', null, null, null, null, null, '[\"/image/picture/1585479721390.jpg\",\"/image/picture/1585479729401.jpg\"]', '[{\"src\":\"/image/video/1585479742448.mp4\"},{\"src\":\"/image/video/1585479767021.mp4\"}]', '2020年03月26日', '36', '2020-03-29 19:03', '2020年03月');
INSERT INTO `daily` VALUES ('47', '9', '戴', '测试', '13163395287', '1', '8', '0.5', '4', null, '[{\"namex\":\"\",\"countx\":\"\"}]', '哦哦哦', null, null, null, null, null, '[\"/image/picture/1585535664350.jpg\",\"/image/picture/1585535678200.jpg\"]', '[]', '2020年03月30日', '34', '2020-03-30 10:35', '2020年03月');
INSERT INTO `daily` VALUES ('48', '9', '戴戴', '测试员', '13163395287', '2', '2', '0.5', '4', '3', '[{\"namex\":\"4\",\"countx\":\"4\"}]', '4343', null, null, null, null, null, '[\"/image/picture/1585619356958.jpg\",\"/image/picture/1585619359549.jpg\"]', '[]', '2020年03月31日', '34', '2020-03-31 09:49', '2020年03月');
INSERT INTO `daily` VALUES ('54', '9', 'daidia', 'asdasd', '13163395287', '1', '5', '0.3', '4', null, '[{\"namex\":\"\",\"countx\":\"\"}]', 'ertert', null, null, null, null, null, '[\"/image/picture/1585813999178.png\",\"/image/picture/1585814003690.jpg\"]', '[{\"src\":\"/image/video/1585814011100.mp4\",\"thumbTempFilePath\":\"http://tmp/wx05797fdcc1a18a71.o6zAJs9D_rttdauYOXYanSXc0h9s.MyN21BIqkhAxf7f3f1f5da7764c45ea127011f5ba472.jpg\"}]', '2020年04月02日', '37', '2020-04-02 15:53', '2020年04月');
INSERT INTO `daily` VALUES ('56', '18', '罗刚', '工程师', '15527844322', '2', '12', '0.5', '4', '4', '[{\"namex\":\"挖掘机\",\"countx\":\"8\"},{\"namex\":\"压路机\",\"countx\":\"10\"}]', '开发施工日报', null, null, null, null, null, '[\"/image/picture/1585817884712.jpg\"]', '[{\"src\":\"/image/video/1585817929477.mp4\"}]', '2020年04月01日', '37', '2020-04-02 16:58', '2020年04月');
INSERT INTO `daily` VALUES ('57', '9', 'daidai', 'sdsd', '13163395287', '1', '4', '0.4', '2', '4', '[{\"namex\":\"1\",\"countx\":\"1\"},{\"namex\":\"2\",\"countx\":\"2\"}]', 'sadsdf', null, null, null, null, null, '[]', '[]', '2020年04月02日', '36', '2020-04-02 19:31', '2020年04月');
INSERT INTO `daily` VALUES ('58', '24', '卢建', '程序员', '13174514711', '1', '5', '1', '4', '1', '[{\"namex\":\"挖掘机\",\"countx\":\"2\"}]', '主要是用来测试的', null, null, null, null, null, '[\"/image/picture/1585831945570.jpg\"]', '[{\"src\":\"/image/video/1585831974578.mp4\"}]', '2020年04月02日', '35', '2020-04-02 20:53', '2020年04月');

-- ----------------------------
-- Table structure for everyday
-- ----------------------------
DROP TABLE IF EXISTS `everyday`;
CREATE TABLE `everyday` (
  `dtime` varchar(255) NOT NULL,
  `creatMouth` varchar(50) DEFAULT NULL,
  `dtimerub` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`dtime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of everyday
-- ----------------------------
INSERT INTO `everyday` VALUES ('2020年03月03日', '2020年03月', null);
INSERT INTO `everyday` VALUES ('2020年03月04日', '2020年03月', null);
INSERT INTO `everyday` VALUES ('2020年03月05日', '2020年03月', null);
INSERT INTO `everyday` VALUES ('2020年03月06日', '2020年03月', null);
INSERT INTO `everyday` VALUES ('2020年03月07日', '2020年03月', null);
INSERT INTO `everyday` VALUES ('2020年03月08日', '2020年03月', null);
INSERT INTO `everyday` VALUES ('2020年03月09日', '2020年03月', null);
INSERT INTO `everyday` VALUES ('2020年03月10日', '2020年03月', null);
INSERT INTO `everyday` VALUES ('2020年03月11日', '2020年03月', null);
INSERT INTO `everyday` VALUES ('2020年03月12日', '2020年03月', null);
INSERT INTO `everyday` VALUES ('2020年03月13日', '2020年03月', null);
INSERT INTO `everyday` VALUES ('2020年03月14日', '2020年03月', null);
INSERT INTO `everyday` VALUES ('2020年03月15日', '2020年03月', null);
INSERT INTO `everyday` VALUES ('2020年03月16日', '2020年03月', null);
INSERT INTO `everyday` VALUES ('2020年03月17日', '2020年03月', null);
INSERT INTO `everyday` VALUES ('2020年03月18日', '2020年03月', null);
INSERT INTO `everyday` VALUES ('2020年03月19日', '2020年03月', null);
INSERT INTO `everyday` VALUES ('2020年03月20日', '2020年03月', null);
INSERT INTO `everyday` VALUES ('2020年03月21日', '2020年03月', null);
INSERT INTO `everyday` VALUES ('2020年03月22日', '2020年03月', null);
INSERT INTO `everyday` VALUES ('2020年03月23日', '2020年03月', null);
INSERT INTO `everyday` VALUES ('2020年03月24日', '2020年03月', '1585048339');
INSERT INTO `everyday` VALUES ('2020年03月25日', '2020年03月', '1585076400');
INSERT INTO `everyday` VALUES ('2020年03月26日', '2020年03月', '1585162800');
INSERT INTO `everyday` VALUES ('2020年03月27日', '2020年03月', '1585238400');
INSERT INTO `everyday` VALUES ('2020年03月28日', '2020年03月', '1585335601');
INSERT INTO `everyday` VALUES ('2020年03月29日', '2020年03月', '1585422000');
INSERT INTO `everyday` VALUES ('2020年03月30日', '2020年03月', '1585508400');
INSERT INTO `everyday` VALUES ('2020年03月31日', '2020年03月', '1585584000');
INSERT INTO `everyday` VALUES ('2020年04月01日', '2020年04月', '1585670400');
INSERT INTO `everyday` VALUES ('2020年04月02日', '2020年04月', '1585756800');
INSERT INTO `everyday` VALUES ('2020年04月04日', '2020年04月', '1585940400');
INSERT INTO `everyday` VALUES ('2020年04月05日', '2020年04月', '1586026800');
INSERT INTO `everyday` VALUES ('2020年04月06日', '2020年04月', '1586113200');
INSERT INTO `everyday` VALUES ('2020年04月07日', '2020年04月', '1586199600');

-- ----------------------------
-- Table structure for fileinfo
-- ----------------------------
DROP TABLE IF EXISTS `fileinfo`;
CREATE TABLE `fileinfo` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(50) DEFAULT NULL,
  `frealurl` varchar(255) DEFAULT NULL,
  `fvirtualurl` varchar(255) DEFAULT NULL,
  `fuploadtime` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fileinfo
-- ----------------------------
INSERT INTO `fileinfo` VALUES ('1', '1583740915288.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1583740915288.jpg', '/image/picture/1583740915288.jpg', '2020-03-09 16:01:55');
INSERT INTO `fileinfo` VALUES ('2', '1583740928803.mp4', 'D:\\sts-workspace\\diary\\upload\\video\\1583740928803.mp4', '/image/video/1583740928803.mp4', '2020-03-09 16:02:08');
INSERT INTO `fileinfo` VALUES ('3', '1584004416620.jpg', 'D:\\sts-workspace\\diary\\upload\\video\\1584004416620.jpg', '/image/video/1584004416620.jpg', '2020-03-12 17:13:36');
INSERT INTO `fileinfo` VALUES ('4', '1584607343784.jpg', 'D:\\sts-workspace\\diary\\upload\\video\\1584607343784.jpg', '/image/video/1584607343784.jpg', '2020-03-19 16:42:23');
INSERT INTO `fileinfo` VALUES ('5', '1584607377353.jpg', 'D:\\sts-workspace\\diary\\upload\\video\\1584607377353.jpg', '/image/video/1584607377353.jpg', '2020-03-19 16:42:57');
INSERT INTO `fileinfo` VALUES ('6', '1584607425862.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1584607425862.jpg', '/image/picture/1584607425862.jpg', '2020-03-19 16:43:45');
INSERT INTO `fileinfo` VALUES ('7', '1584608156259.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1584608156259.jpg', '/image/picture/1584608156259.jpg', '2020-03-19 16:55:56');
INSERT INTO `fileinfo` VALUES ('8', '1584608204174.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1584608204174.jpg', '/image/picture/1584608204174.jpg', '2020-03-19 16:56:44');
INSERT INTO `fileinfo` VALUES ('9', '1584608436009.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1584608436009.jpg', '/image/picture/1584608436009.jpg', '2020-03-19 17:00:36');
INSERT INTO `fileinfo` VALUES ('10', '1584608491014.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1584608491014.jpg', '/image/picture/1584608491014.jpg', '2020-03-19 17:01:31');
INSERT INTO `fileinfo` VALUES ('11', '1584608525373.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1584608525373.jpg', '/image/picture/1584608525373.jpg', '2020-03-19 17:02:05');
INSERT INTO `fileinfo` VALUES ('12', '1584608569710.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1584608569710.jpg', '/image/picture/1584608569710.jpg', '2020-03-19 17:02:49');
INSERT INTO `fileinfo` VALUES ('13', '1584608595155.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1584608595155.jpg', '/image/picture/1584608595155.jpg', '2020-03-19 17:03:15');
INSERT INTO `fileinfo` VALUES ('14', '1584608914283.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1584608914283.jpg', '/image/picture/1584608914283.jpg', '2020-03-19 17:08:34');
INSERT INTO `fileinfo` VALUES ('15', '1584609065655.mp4', 'D:\\sts-workspace\\diary\\upload\\video\\1584609065655.mp4', '/image/video/1584609065655.mp4', '2020-03-19 17:11:05');
INSERT INTO `fileinfo` VALUES ('16', '1584609170984.mp4', 'D:\\sts-workspace\\diary\\upload\\video\\1584609170984.mp4', '/image/video/1584609170984.mp4', '2020-03-19 17:12:51');
INSERT INTO `fileinfo` VALUES ('17', '1584609217177.mp4', 'D:\\sts-workspace\\diary\\upload\\video\\1584609217177.mp4', '/image/video/1584609217177.mp4', '2020-03-19 17:13:37');
INSERT INTO `fileinfo` VALUES ('18', '1584609366227.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1584609366227.jpg', '/image/picture/1584609366227.jpg', '2020-03-19 17:16:06');
INSERT INTO `fileinfo` VALUES ('19', '1584610757794.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1584610757794.jpg', '/image/picture/1584610757794.jpg', '2020-03-19 17:39:17');
INSERT INTO `fileinfo` VALUES ('20', '1584610761652.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1584610761652.jpg', '/image/picture/1584610761652.jpg', '2020-03-19 17:39:21');
INSERT INTO `fileinfo` VALUES ('21', '1584610912388.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1584610912388.jpg', '/image/picture/1584610912388.jpg', '2020-03-19 17:41:52');
INSERT INTO `fileinfo` VALUES ('22', '1584610917894.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1584610917894.jpg', '/image/picture/1584610917894.jpg', '2020-03-19 17:41:57');
INSERT INTO `fileinfo` VALUES ('23', '1584611005902.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1584611005902.jpg', '/image/picture/1584611005902.jpg', '2020-03-19 17:43:25');
INSERT INTO `fileinfo` VALUES ('24', '1584611147458.mp4', 'D:\\sts-workspace\\diary\\upload\\video\\1584611147458.mp4', '/image/video/1584611147458.mp4', '2020-03-19 17:45:47');
INSERT INTO `fileinfo` VALUES ('25', '1584611426105.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1584611426105.jpg', '/image/picture/1584611426105.jpg', '2020-03-19 17:50:26');
INSERT INTO `fileinfo` VALUES ('26', '1584611428764.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1584611428764.jpg', '/image/picture/1584611428764.jpg', '2020-03-19 17:50:28');
INSERT INTO `fileinfo` VALUES ('27', '1584611476271.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1584611476271.jpg', '/image/picture/1584611476271.jpg', '2020-03-19 17:51:16');
INSERT INTO `fileinfo` VALUES ('28', '1584611492360.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1584611492360.jpg', '/image/picture/1584611492360.jpg', '2020-03-19 17:51:32');
INSERT INTO `fileinfo` VALUES ('29', '1584611550339.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1584611550339.jpg', '/image/picture/1584611550339.jpg', '2020-03-19 17:52:30');
INSERT INTO `fileinfo` VALUES ('30', '1584611553194.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1584611553194.jpg', '/image/picture/1584611553194.jpg', '2020-03-19 17:52:33');
INSERT INTO `fileinfo` VALUES ('31', '1584611599257.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1584611599257.jpg', '/image/picture/1584611599257.jpg', '2020-03-19 17:53:19');
INSERT INTO `fileinfo` VALUES ('32', '1584611646636.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1584611646636.jpg', '/image/picture/1584611646636.jpg', '2020-03-19 17:54:06');
INSERT INTO `fileinfo` VALUES ('33', '1584611649808.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1584611649808.jpg', '/image/picture/1584611649808.jpg', '2020-03-19 17:54:09');
INSERT INTO `fileinfo` VALUES ('34', '1584613779541.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1584613779541.jpg', '/image/picture/1584613779541.jpg', '2020-03-19 18:29:39');
INSERT INTO `fileinfo` VALUES ('35', '1584613783211.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1584613783211.jpg', '/image/picture/1584613783211.jpg', '2020-03-19 18:29:43');
INSERT INTO `fileinfo` VALUES ('36', '1584613897566.mp4', 'D:\\sts-workspace\\diary\\upload\\video\\1584613897566.mp4', '/image/video/1584613897566.mp4', '2020-03-19 18:31:37');
INSERT INTO `fileinfo` VALUES ('37', '1584613902519.mp4', 'D:\\sts-workspace\\diary\\upload\\video\\1584613902519.mp4', '/image/video/1584613902519.mp4', '2020-03-19 18:31:42');
INSERT INTO `fileinfo` VALUES ('38', '1584614060258.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1584614060258.jpg', '/image/picture/1584614060258.jpg', '2020-03-19 18:34:20');
INSERT INTO `fileinfo` VALUES ('39', '1584614063179.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1584614063179.jpg', '/image/picture/1584614063179.jpg', '2020-03-19 18:34:23');
INSERT INTO `fileinfo` VALUES ('40', '1584614067279.mp4', 'D:\\sts-workspace\\diary\\upload\\video\\1584614067279.mp4', '/image/video/1584614067279.mp4', '2020-03-19 18:34:27');
INSERT INTO `fileinfo` VALUES ('41', '1584614764167.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1584614764167.jpg', '/image/picture/1584614764167.jpg', '2020-03-19 18:46:04');
INSERT INTO `fileinfo` VALUES ('42', '1584614768362.mp4', 'D:\\sts-workspace\\diary\\upload\\video\\1584614768362.mp4', '/image/video/1584614768362.mp4', '2020-03-19 18:46:08');
INSERT INTO `fileinfo` VALUES ('43', '1584618745827.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1584618745827.jpg', '/image/picture/1584618745827.jpg', '2020-03-19 19:52');
INSERT INTO `fileinfo` VALUES ('44', '1584618758558.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1584618758558.jpg', '/image/picture/1584618758558.jpg', '2020-03-19 19:52');
INSERT INTO `fileinfo` VALUES ('45', '1584692290033.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1584692290033.jpg', '/image/picture/1584692290033.jpg', '2020-03-20 16:18');
INSERT INTO `fileinfo` VALUES ('46', '1584692293097.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1584692293097.jpg', '/image/picture/1584692293097.jpg', '2020-03-20 16:18');
INSERT INTO `fileinfo` VALUES ('47', '1584692297391.mp4', 'D:\\sts-workspace\\diary\\upload\\video\\1584692297391.mp4', '/image/video/1584692297391.mp4', '2020-03-20 16:18');
INSERT INTO `fileinfo` VALUES ('48', '1584696604213.mp4', 'D:\\sts-workspace\\diary\\upload\\video\\1584696604213.mp4', '/image/video/1584696604213.mp4', '2020-03-20 17:30');
INSERT INTO `fileinfo` VALUES ('49', '1584696608938.mp4', 'D:\\sts-workspace\\diary\\upload\\video\\1584696608938.mp4', '/image/video/1584696608938.mp4', '2020-03-20 17:30');
INSERT INTO `fileinfo` VALUES ('50', '1584698439170.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1584698439170.jpg', '/image/picture/1584698439170.jpg', '2020-03-20 18:00');
INSERT INTO `fileinfo` VALUES ('51', '1584698442117.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1584698442117.jpg', '/image/picture/1584698442117.jpg', '2020-03-20 18:00');
INSERT INTO `fileinfo` VALUES ('52', '1584698446597.mp4', 'D:\\sts-workspace\\diary\\upload\\video\\1584698446597.mp4', '/image/video/1584698446597.mp4', '2020-03-20 18:00');
INSERT INTO `fileinfo` VALUES ('53', '1584698454040.mp4', 'D:\\sts-workspace\\diary\\upload\\video\\1584698454040.mp4', '/image/video/1584698454040.mp4', '2020-03-20 18:00');
INSERT INTO `fileinfo` VALUES ('54', '1585047131482.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1585047131482.jpg', '/image/picture/1585047131482.jpg', '2020-03-24 18:52');
INSERT INTO `fileinfo` VALUES ('55', '1585047134449.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1585047134449.jpg', '/image/picture/1585047134449.jpg', '2020-03-24 18:52');
INSERT INTO `fileinfo` VALUES ('56', '1585047141477.png', 'D:\\sts-workspace\\diary\\upload\\picture\\1585047141477.png', '/image/picture/1585047141477.png', '2020-03-24 18:52');
INSERT INTO `fileinfo` VALUES ('57', '1585047146537.mp4', 'D:\\sts-workspace\\diary\\upload\\video\\1585047146537.mp4', '/image/video/1585047146537.mp4', '2020-03-24 18:52');
INSERT INTO `fileinfo` VALUES ('58', '1585102733713.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1585102733713.jpg', '/image/picture/1585102733713.jpg', '2020-03-25 10:18');
INSERT INTO `fileinfo` VALUES ('59', '1585102742788.mp4', 'D:\\sts-workspace\\diary\\upload\\video\\1585102742788.mp4', '/image/video/1585102742788.mp4', '2020-03-25 10:19');
INSERT INTO `fileinfo` VALUES ('60', '1585138206678.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1585138206678.jpg', '/image/picture/1585138206678.jpg', '2020-03-25 20:10');
INSERT INTO `fileinfo` VALUES ('61', '1585138292554.mp4', 'D:\\sts-workspace\\diary\\upload\\video\\1585138292554.mp4', '/image/video/1585138292554.mp4', '2020-03-25 20:11');
INSERT INTO `fileinfo` VALUES ('62', '1585138325620.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1585138325620.jpg', '/image/picture/1585138325620.jpg', '2020-03-25 20:12');
INSERT INTO `fileinfo` VALUES ('63', '1585224672581.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1585224672581.jpg', '/image/picture/1585224672581.jpg', '2020-03-26 20:11');
INSERT INTO `fileinfo` VALUES ('64', '1585228215391.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1585228215391.jpg', '/image/picture/1585228215391.jpg', '2020-03-26 21:10');
INSERT INTO `fileinfo` VALUES ('65', '1585228218889.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1585228218889.jpg', '/image/picture/1585228218889.jpg', '2020-03-26 21:10');
INSERT INTO `fileinfo` VALUES ('66', '1585230243087.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1585230243087.jpg', '/image/picture/1585230243087.jpg', '2020-03-26 21:44');
INSERT INTO `fileinfo` VALUES ('67', '1585479721390.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1585479721390.jpg', '/image/picture/1585479721390.jpg', '2020-03-29 19:02');
INSERT INTO `fileinfo` VALUES ('68', '1585479729401.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1585479729401.jpg', '/image/picture/1585479729401.jpg', '2020-03-29 19:02');
INSERT INTO `fileinfo` VALUES ('69', '1585479742448.mp4', 'D:\\sts-workspace\\diary\\upload\\video\\1585479742448.mp4', '/image/video/1585479742448.mp4', '2020-03-29 19:02');
INSERT INTO `fileinfo` VALUES ('70', '1585479767021.mp4', 'D:\\sts-workspace\\diary\\upload\\video\\1585479767021.mp4', '/image/video/1585479767021.mp4', '2020-03-29 19:02');
INSERT INTO `fileinfo` VALUES ('71', '1585480063106.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1585480063106.jpg', '/image/picture/1585480063106.jpg', '2020-03-29 19:07');
INSERT INTO `fileinfo` VALUES ('72', '1585480087962.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1585480087962.jpg', '/image/picture/1585480087962.jpg', '2020-03-29 19:08');
INSERT INTO `fileinfo` VALUES ('73', '1585480094144.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1585480094144.jpg', '/image/picture/1585480094144.jpg', '2020-03-29 19:08');
INSERT INTO `fileinfo` VALUES ('74', '1585480097720.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1585480097720.jpg', '/image/picture/1585480097720.jpg', '2020-03-29 19:08');
INSERT INTO `fileinfo` VALUES ('75', '1585480101407.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1585480101407.jpg', '/image/picture/1585480101407.jpg', '2020-03-29 19:08');
INSERT INTO `fileinfo` VALUES ('76', '1585480123642.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1585480123642.jpg', '/image/picture/1585480123642.jpg', '2020-03-29 19:08');
INSERT INTO `fileinfo` VALUES ('77', '1585480127087.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1585480127087.jpg', '/image/picture/1585480127087.jpg', '2020-03-29 19:08');
INSERT INTO `fileinfo` VALUES ('78', '1585480133486.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1585480133486.jpg', '/image/picture/1585480133486.jpg', '2020-03-29 19:08');
INSERT INTO `fileinfo` VALUES ('79', '1585480138892.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1585480138892.jpg', '/image/picture/1585480138892.jpg', '2020-03-29 19:08');
INSERT INTO `fileinfo` VALUES ('80', '1585486384491.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1585486384491.jpg', '/image/picture/1585486384491.jpg', '2020-03-29 20:53');
INSERT INTO `fileinfo` VALUES ('81', '1585489607232.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1585489607232.jpg', '/image/picture/1585489607232.jpg', '2020-03-29 21:46');
INSERT INTO `fileinfo` VALUES ('82', '1585489617903.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1585489617903.jpg', '/image/picture/1585489617903.jpg', '2020-03-29 21:46');
INSERT INTO `fileinfo` VALUES ('83', '1585489628397.mp4', 'D:\\sts-workspace\\diary\\upload\\video\\1585489628397.mp4', '/image/video/1585489628397.mp4', '2020-03-29 21:47');
INSERT INTO `fileinfo` VALUES ('84', '1585489646484.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1585489646484.jpg', '/image/picture/1585489646484.jpg', '2020-03-29 21:47');
INSERT INTO `fileinfo` VALUES ('85', '1585533110670.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1585533110670.jpg', '/image/picture/1585533110670.jpg', '2020-03-30 09:51');
INSERT INTO `fileinfo` VALUES ('86', '1585533119165.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1585533119165.jpg', '/image/picture/1585533119165.jpg', '2020-03-30 09:51');
INSERT INTO `fileinfo` VALUES ('87', '1585535664350.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1585535664350.jpg', '/image/picture/1585535664350.jpg', '2020-03-30 10:34');
INSERT INTO `fileinfo` VALUES ('88', '1585535678200.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1585535678200.jpg', '/image/picture/1585535678200.jpg', '2020-03-30 10:34');
INSERT INTO `fileinfo` VALUES ('89', '1585619356958.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1585619356958.jpg', '/image/picture/1585619356958.jpg', '2020-03-31 09:49');
INSERT INTO `fileinfo` VALUES ('90', '1585619359549.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1585619359549.jpg', '/image/picture/1585619359549.jpg', '2020-03-31 09:49');
INSERT INTO `fileinfo` VALUES ('91', '1585622933456.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1585622933456.jpg', '/image/picture/1585622933456.jpg', '2020-03-31 10:48');
INSERT INTO `fileinfo` VALUES ('92', '1585622936437.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1585622936437.jpg', '/image/picture/1585622936437.jpg', '2020-03-31 10:48');
INSERT INTO `fileinfo` VALUES ('93', '1585622940459.mp4', 'D:\\sts-workspace\\diary\\upload\\video\\1585622940459.mp4', '/image/video/1585622940459.mp4', '2020-03-31 10:49');
INSERT INTO `fileinfo` VALUES ('94', '1585812633817.jpg', 'C:\\Users\\Administrator\\upload\\picture\\1585812633817.jpg', '/image/picture/1585812633817.jpg', '2020-04-02 15:30');
INSERT INTO `fileinfo` VALUES ('95', '1585812678079.mp4', 'C:\\Users\\Administrator\\upload\\video\\1585812678079.mp4', '/image/video/1585812678079.mp4', '2020-04-02 15:31');
INSERT INTO `fileinfo` VALUES ('96', '1585812686418.mp4', 'C:\\Users\\Administrator\\upload\\video\\1585812686418.mp4', '/image/video/1585812686418.mp4', '2020-04-02 15:31');
INSERT INTO `fileinfo` VALUES ('97', '1585812900198.png', 'C:\\Users\\Administrator\\upload\\picture\\1585812900198.png', '/image/picture/1585812900198.png', '2020-04-02 15:35');
INSERT INTO `fileinfo` VALUES ('98', '1585812902890.jpg', 'C:\\Users\\Administrator\\upload\\picture\\1585812902890.jpg', '/image/picture/1585812902890.jpg', '2020-04-02 15:35');
INSERT INTO `fileinfo` VALUES ('99', '1585813999178.png', 'D:\\sts-workspace\\diary\\upload\\picture\\1585813999178.png', '/image/picture/1585813999178.png', '2020-04-02 15:53');
INSERT INTO `fileinfo` VALUES ('100', '1585814003690.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1585814003690.jpg', '/image/picture/1585814003690.jpg', '2020-04-02 15:53');
INSERT INTO `fileinfo` VALUES ('101', '1585814011100.mp4', 'D:\\sts-workspace\\diary\\upload\\video\\1585814011100.mp4', '/image/video/1585814011100.mp4', '2020-04-02 15:53');
INSERT INTO `fileinfo` VALUES ('102', '1585815936921.jpg', 'C:\\Users\\Administrator\\upload\\picture\\1585815936921.jpg', '/image/picture/1585815936921.jpg', '2020-04-02 16:25');
INSERT INTO `fileinfo` VALUES ('103', '1585815943035.mp4', 'C:\\Users\\Administrator\\upload\\video\\1585815943035.mp4', '/image/video/1585815943035.mp4', '2020-04-02 16:25');
INSERT INTO `fileinfo` VALUES ('104', '1585817884712.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1585817884712.jpg', '/image/picture/1585817884712.jpg', '2020-04-02 16:58');
INSERT INTO `fileinfo` VALUES ('105', '1585817929477.mp4', 'D:\\sts-workspace\\diary\\upload\\video\\1585817929477.mp4', '/image/video/1585817929477.mp4', '2020-04-02 16:58');
INSERT INTO `fileinfo` VALUES ('106', '1585829881251.mp4', 'D:\\sts-workspace\\diary\\upload\\video\\1585829881251.mp4', '/image/video/1585829881251.mp4', '2020-04-02 20:18');
INSERT INTO `fileinfo` VALUES ('107', '1585829904416.mp4', 'D:\\sts-workspace\\diary\\upload\\video\\1585829904416.mp4', '/image/video/1585829904416.mp4', '2020-04-02 20:18');
INSERT INTO `fileinfo` VALUES ('108', '1585830667233.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1585830667233.jpg', '/image/picture/1585830667233.jpg', '2020-04-02 20:31');
INSERT INTO `fileinfo` VALUES ('109', '1585831945570.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1585831945570.jpg', '/image/picture/1585831945570.jpg', '2020-04-02 20:52');
INSERT INTO `fileinfo` VALUES ('110', '1585831974578.mp4', 'D:\\sts-workspace\\diary\\upload\\video\\1585831974578.mp4', '/image/video/1585831974578.mp4', '2020-04-02 20:52');
INSERT INTO `fileinfo` VALUES ('111', '1586228070141.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1586228070141.jpg', '/image/picture/1586228070141.jpg', '2020-04-07 10:54');
INSERT INTO `fileinfo` VALUES ('112', '1586228082900.jpg', 'D:\\sts-workspace\\diary\\upload\\picture\\1586228082900.jpg', '/image/picture/1586228082900.jpg', '2020-04-07 10:54');
INSERT INTO `fileinfo` VALUES ('113', '1586228099928.mp4', 'D:\\sts-workspace\\diary\\upload\\video\\1586228099928.mp4', '/image/video/1586228099928.mp4', '2020-04-07 10:54');

-- ----------------------------
-- Table structure for material
-- ----------------------------
DROP TABLE IF EXISTS `material`;
CREATE TABLE `material` (
  `mtid` int(11) NOT NULL AUTO_INCREMENT,
  `mtname` varchar(50) DEFAULT NULL,
  `mttime` varchar(50) DEFAULT NULL,
  `mttype` int(11) DEFAULT NULL,
  `mtremark` text,
  `mtstatus` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`mtid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of material
-- ----------------------------
INSERT INTO `material` VALUES ('4', '58', '2020-03-29 ', '0', '莫玄羽', '1', '34');

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(50) DEFAULT NULL,
  `pabbreviation` varchar(50) DEFAULT NULL,
  `pnumber` varchar(255) DEFAULT NULL,
  `paddress` text,
  `pstatus` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `ptype` int(11) DEFAULT NULL,
  `contractamount` decimal(10,0) DEFAULT NULL,
  `acceptedamount` decimal(10,0) DEFAULT NULL,
  `acceptedinvoice` decimal(10,0) DEFAULT NULL,
  `totalartificial` int(11) DEFAULT NULL,
  `approachDay` varchar(50) DEFAULT NULL,
  `completeDay` varchar(50) DEFAULT NULL,
  `paycondition` text,
  `fineremarks` text,
  `creattime` varchar(50) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `weixin` varchar(255) DEFAULT NULL,
  `materialuid` int(11) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of project
-- ----------------------------
INSERT INTO `project` VALUES ('34', '八维时空', '345', '345', '', '2', '17', '1', '34', '34', '3', '45', '2020-03-24', null, '345', '345', '2020-03-18 16:43:45', '9', 'GUMsd5BSzS89lSK1kjQds1iErNXA', '9');
INSERT INTO `project` VALUES ('35', '研发部', '789', '789', null, '3', '1', '1', '789', '78', '898989', '789', '2020-03-16', '2020-04-16', '789', '789', '2020-03-18 16:46:30', '9', 'GUMsd5BSzS89lSK1kjQds1iErNXA', '9');
INSERT INTO `project` VALUES ('36', '动画部', '45', '345', null, '1', '1', '1', null, null, null, null, null, null, null, null, '2020-03-18 17:19:55', '9', 'GUMsd5BSzS89lSK1kjQds1iErNXA', '9');
INSERT INTO `project` VALUES ('37', '八维', '哈哈哈', '0', null, '1', null, '1', null, null, null, null, '2020-04-02', '2025-04-02', null, null, '2020-04-02 15:25', '18', 'GUMsd5AzlQAUFrcVm1F1k3WH9Ivs', '18');
INSERT INTO `project` VALUES ('38', '建造系统', '场地布置', '0', null, '1', null, '1', null, null, null, null, null, null, null, null, '2020-04-03 14:39', '25', null, '25');

-- ----------------------------
-- Table structure for projectuser
-- ----------------------------
DROP TABLE IF EXISTS `projectuser`;
CREATE TABLE `projectuser` (
  `pid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of projectuser
-- ----------------------------
INSERT INTO `projectuser` VALUES ('36', '9');
INSERT INTO `projectuser` VALUES ('34', '10');
INSERT INTO `projectuser` VALUES ('35', '10');
INSERT INTO `projectuser` VALUES ('34', '9');
INSERT INTO `projectuser` VALUES ('35', '9');
INSERT INTO `projectuser` VALUES ('37', '9');
INSERT INTO `projectuser` VALUES ('35', '24');
INSERT INTO `projectuser` VALUES ('38', '25');

-- ----------------------------
-- Table structure for thumb
-- ----------------------------
DROP TABLE IF EXISTS `thumb`;
CREATE TABLE `thumb` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `tdid` int(11) DEFAULT NULL,
  `tuid` int(11) DEFAULT NULL,
  `creattime` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thumb
-- ----------------------------
INSERT INTO `thumb` VALUES ('3', '32', '10', '2020-03-18 16:26:45');
INSERT INTO `thumb` VALUES ('4', '22', '1', '2020-03-18 16:16:45');
INSERT INTO `thumb` VALUES ('20', '32', '9', '2020-03-24 18:45:39');
INSERT INTO `thumb` VALUES ('31', '31', '9', '2020-03-25 15:59:02');
INSERT INTO `thumb` VALUES ('37', '22', '9', '2020-03-25 17:30:19');
INSERT INTO `thumb` VALUES ('38', '29', '9', '2020-03-25 17:30:22');
INSERT INTO `thumb` VALUES ('55', '37', '9', '2020-03-26 19:11:30');
INSERT INTO `thumb` VALUES ('56', '38', '9', '2020-03-26 20:39:10');
INSERT INTO `thumb` VALUES ('62', '42', '9', '2020-03-27 16:00:42');
INSERT INTO `thumb` VALUES ('63', '40', '9', '2020-03-27 16:04:17');
INSERT INTO `thumb` VALUES ('65', '41', '9', '2020-03-27 16:06:11');
INSERT INTO `thumb` VALUES ('69', '45', '9', '2020-03-30 09:50:26');
INSERT INTO `thumb` VALUES ('71', '43', '9', '2020-03-30 10:35:39');
INSERT INTO `thumb` VALUES ('73', '56', '18', '2020-04-02 16:59:36');
INSERT INTO `thumb` VALUES ('74', '56', '9', '2020-04-02 17:11:40');
INSERT INTO `thumb` VALUES ('76', '57', '9', '2020-04-02 19:41:53');
INSERT INTO `thumb` VALUES ('77', '58', '24', '2020-04-02 20:58:34');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(32) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) DEFAULT NULL,
  `utelphone` varchar(50) DEFAULT NULL,
  `uposition` varchar(32) DEFAULT NULL,
  `upic` varchar(255) DEFAULT NULL,
  `wxid` varchar(255) DEFAULT NULL,
  `creattime` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('9', '古？', null, null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKX5yibQpSkzocuXu19WqLW8iaVfkuIhdFibVr4DfzicTSoREQ4ibVu23oDib6YgFQq8sATzALzYcMk0oLQ/132', 'oUMsd5NF4bUG7tRfLHR46kUkIXcw', '2020-04-02 17:02');
INSERT INTO `user` VALUES ('10', 'junp', null, null, 'https://wx.qlogo.cn/mmopen/vi_32/5q5DEM6zNIBmPIZPtNojsChiaAzPAH4YN6ehxFpAKnzzLAZhEo4dURgThBNBMCeKty2eHhicHjNHNWz2QXcIOr5g/132', 'oUMsd5HxWtLpIkHHAYVzHrFzzgLc', '2020-04-02 17:41');
INSERT INTO `user` VALUES ('24', '兜兜转转', null, null, 'https://wx.qlogo.cn/mmopen/vi_32/AASYkicYRjTwYK7icLpBuFW2776rVMYaC5CGbDBTxJyzXg0HqJyKiaq2KiamSVcDat5IR435AdYyT04b9YtwknyS1g/132', 'oUMsd5K6ePb94zywwSdSLndH8lKQ', '2020-04-02 17:12');
INSERT INTO `user` VALUES ('25', null, null, null, null, 'oUMsd5LJRg8-YtpEjXeiOWsGbT5E', '2020-04-03 14:36');

-- ----------------------------
-- Table structure for weather
-- ----------------------------
DROP TABLE IF EXISTS `weather`;
CREATE TABLE `weather` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weather
-- ----------------------------
INSERT INTO `weather` VALUES ('1', '晴');
INSERT INTO `weather` VALUES ('2', '阴');
INSERT INTO `weather` VALUES ('3', '雨');
INSERT INTO `weather` VALUES ('4', '未知');
