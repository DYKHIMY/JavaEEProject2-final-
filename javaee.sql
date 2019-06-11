/*
Navicat MySQL Data Transfer

Source Server         : Tanyaconnect
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : javaee

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2019-06-09 17:54:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `question_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '题目id',
  `question_content` varchar(255) DEFAULT NULL COMMENT '题目题干',
  `question_Aans` varchar(255) DEFAULT NULL COMMENT 'A答案',
  `question_Bans` varchar(255) DEFAULT NULL COMMENT 'B答案',
  `question_Cans` varchar(255) DEFAULT NULL COMMENT 'C答案',
  `question_Dans` varchar(255) DEFAULT NULL COMMENT 'D答案',
  `question_rightans` varchar(255) DEFAULT NULL COMMENT '正确答案',
  `question_type` int(11) DEFAULT NULL COMMENT '题目类型',
  `question_test` int(11) NOT NULL DEFAULT '0' COMMENT '对应试卷id',
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('1', '()是构成C语言程序的基本单位。', '函数', '过程', '子程序', '子例程', '函数', '1', '3');
INSERT INTO `question` VALUES ('2', 'C语言程序从（）开始执行。', '程序中第一条可执行语句', '程序中第一个函数', '程序中的main函数', '包含文件中的第一个函数', '程序中的main函数', '1', '3');
INSERT INTO `question` VALUES ('3', '以下说法中正确的是（）', 'C语言程序总是从第一个定义的函数开始执行', '在C语言程序中，要调用的函数必须在main()函数中定义', 'C语言程序总是从main()函数开始执行', 'C语言程序中的main()函数必须放在程序的开始部分', 'C语言程序总是从main()函数开始执行', '1', '3');
INSERT INTO `question` VALUES ('4', '#include <stdio.h>\r\nmain()\r\n{ int a=1,b=3,c=5;\r\nif (c==a+b)\r\n printf(\"yes\\n\");\r\nelse\r\n printf(\"no\\n\");\r\n}', '', '', '', '', 'no', '3', '3');
INSERT INTO `question` VALUES ('5', '#include <stdio.h>\r\nmain()\r\n{ int a=12, b= -34, c=56, min=0;\r\nmin=a;\r\n  if(min>b)  \r\nmin=b;\r\n  if(min>c)  \r\nmin=c;\r\nprintf(\"min=%d\", min);\r\n}', null, null, null, null, 'min=34', '3', '3');
INSERT INTO `question` VALUES ('9', 'this()关键字表示当前类的对象', null, null, null, null, '对', '2', '3');
INSERT INTO `question` VALUES ('10', 'super()关键字表示父类对象', null, null, null, null, '对', '2', '3');
INSERT INTO `question` VALUES ('11', '()修饰抽象类，抽象方法', 'static', 'final', 'abstract', 'protect', 'static', '1', '3');
INSERT INTO `question` VALUES ('12', 'static修饰抽象类，抽象方法', null, null, null, null, '错', '2', '3');
INSERT INTO `question` VALUES ('13', 'jvm是虚拟机', null, null, null, null, '对', '2', '3');

-- ----------------------------
-- Table structure for questiontype
-- ----------------------------
DROP TABLE IF EXISTS `questiontype`;
CREATE TABLE `questiontype` (
  `qtid` int(11) NOT NULL AUTO_INCREMENT COMMENT '试题类型id',
  `qtname` varchar(50) NOT NULL COMMENT '试题类型名称',
  `score` int(11) NOT NULL COMMENT '该题型分数',
  PRIMARY KEY (`qtid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of questiontype
-- ----------------------------
INSERT INTO `questiontype` VALUES ('1', '选择题', '2');
INSERT INTO `questiontype` VALUES ('2', '判断题', '1');
INSERT INTO `questiontype` VALUES ('3', '读程序题', '3');

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `test_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '试卷id',
  `test_name` varchar(255) DEFAULT NULL COMMENT '试卷名称',
  `test_time` int(11) DEFAULT NULL COMMENT '考试时长（单位：分钟）',
  PRIMARY KEY (`test_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('3', '2016级一体化实践工程期末考', '90');
INSERT INTO `test` VALUES ('4', '2018年化学与社会期中考试', '60');
INSERT INTO `test` VALUES ('5', '2017级数学建模期末考试', '90');
INSERT INTO `test` VALUES ('6', '2017级化学与社会期末考试', '60');
INSERT INTO `test` VALUES ('7', '2018级高等数学考试', '90');
INSERT INTO `test` VALUES ('8', '2018年四级模拟试卷', '710');
INSERT INTO `test` VALUES ('9', '2018级英语水平测试', '120');

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_phone` varchar(255) DEFAULT NULL,
  `user_postbox` varchar(255) DEFAULT NULL,
  `user_type` int(1) NOT NULL,
  `user_wish` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('2', 'Morty', '1216', null, '5656545@qq.com', '0', '考研加油！！！');
INSERT INTO `userinfo` VALUES ('3', 'Summer', '1217', '15502664545', '16556586@qq.com', '0', '最强王者');
INSERT INTO `userinfo` VALUES ('4', 'Jerry', '1218', null, '1655165665@qq.com', '0', '新年脱单！！！');
INSERT INTO `userinfo` VALUES ('5', 'Beth', '111', null, '1656498456@qq.com', '0', 'LOL皮肤大减价');
INSERT INTO `userinfo` VALUES ('6', 'serv', '33333333', '15504475422', '26541656112@qq.com', '0', '哈哈哈啊哈哈哈哈啊哈哈');
INSERT INTO `userinfo` VALUES ('7', 'sss', 'ssss', null, '51654516@qq.com', '0', '不挂科');
INSERT INTO `userinfo` VALUES ('9', 'Dick', '123456', null, '1215456@qq.com', '0', '777777777');
INSERT INTO `userinfo` VALUES ('10', 'David', '666', null, '4549984@qq.com', '0', '略略略');
INSERT INTO `userinfo` VALUES ('13', 'Di', '156131', '15504475422', '165651652@qq.com', '0', 'hahahah');
INSERT INTO `userinfo` VALUES ('39', 'Aver', '151515', null, '154698546@qq.com', '0', '发发发！');
INSERT INTO `userinfo` VALUES ('40', 'THOR', '626262', null, '62523645@qq.com', '0', '就想上个墙');
INSERT INTO `userinfo` VALUES ('41', 'Tanya', '541619', null, '265454656@qq.com', '1', '上个墙+1');
INSERT INTO `userinfo` VALUES ('42', 'Tom', '999999', null, '999999@qq.com', '0', '赚钱赚钱赚钱');
INSERT INTO `userinfo` VALUES ('44', 'Auser', 'f379eaf3c831b04de153469d1bec345e', null, '555555@qq.com', '0', null);
INSERT INTO `userinfo` VALUES ('45', 'AbigUser', '5b1b68a9abf4d2cd155c81a9225fd158', null, '', '0', null);
INSERT INTO `userinfo` VALUES ('46', 'man', 'e10adc3949ba59abbe56e057f20f883e', null, '', '1', '777');
INSERT INTO `userinfo` VALUES ('47', 'girl', '96e79218965eb72c92a549dd5a330112', null, '', '0', '666');
INSERT INTO `userinfo` VALUES ('48', 'girl1', '96e79218965eb72c92a549dd5a330112', null, '', '0', '666');
INSERT INTO `userinfo` VALUES ('49', 'girl3', '96e79218965eb72c92a549dd5a330112', null, '', '0', '哈哈哈');
INSERT INTO `userinfo` VALUES ('50', 'girl2', '96e79218965eb72c92a549dd5a330112', null, '', '0', '哈哈哈');
INSERT INTO `userinfo` VALUES ('51', 'test', 'd41d8cd98f00b204e9800998ecf8427e', null, '', '0', null);
INSERT INTO `userinfo` VALUES ('54', 'mtest', '96e79218965eb72c92a549dd5a330112', null, '', '1', null);
INSERT INTO `userinfo` VALUES ('55', 'sad', '698d51a19d8a121ce581499d7b701668', null, '', '0', null);
INSERT INTO `userinfo` VALUES ('56', 'asdad', '698d51a19d8a121ce581499d7b701668', null, '', '0', null);
INSERT INTO `userinfo` VALUES ('57', 'test1', '96e79218965eb72c92a549dd5a330112', '15504415485', '', '0', 'test');
INSERT INTO `userinfo` VALUES ('58', 'test2', '96e79218965eb72c92a549dd5a330112', '15504475422', '', '0', 'test');
INSERT INTO `userinfo` VALUES ('59', 'test3', '96e79218965eb72c92a549dd5a330112', null, '123132165@qq.com', '1', null);
INSERT INTO `userinfo` VALUES ('60', 'ttt', 'e3ceb5881a0a1fdaad01296d7554868d', null, '12165165@qq.com', '0', '靠');
INSERT INTO `userinfo` VALUES ('61', 'lgb', '49bff6732fef7aad07d9236bfaf60d0d', '15504475422', '15613165@qq.com', '0', 'kanchunwan');
INSERT INTO `userinfo` VALUES ('62', 'user4', '1218', null, '16516132165', '0', null);
INSERT INTO `userinfo` VALUES ('63', 'user4', '1218', null, '16516132165', '0', null);

-- ----------------------------
-- Table structure for userinfo2
-- ----------------------------
DROP TABLE IF EXISTS `userinfo2`;
CREATE TABLE `userinfo2` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_type` int(11) DEFAULT NULL COMMENT '用户类型',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo2
-- ----------------------------
INSERT INTO `userinfo2` VALUES ('3', 'l', '698d51a19d8a121ce581499d7b701668', '2');
INSERT INTO `userinfo2` VALUES ('4', 'll', 'bcbe3365e6ac95ea2c0343a2395834dd', '1');
