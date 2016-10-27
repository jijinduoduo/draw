/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : cn_bjxxw

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2016-10-26 11:46:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bjxxw_lucky_draw
-- ----------------------------
DROP TABLE IF EXISTS `bjxxw_lucky_draw`;
CREATE TABLE `bjxxw_lucky_draw` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `uname` varchar(32) NOT NULL,
  `prize` varchar(32) NOT NULL,
  `leave` varchar(100) NOT NULL,
  `time` int(20) NOT NULL,
  `number` int(1) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `city` varchar(50) NOT NULL,
  `tel` char(11) NOT NULL,
  `state` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1655 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bjxxw_lucky_draw
-- ----------------------------
INSERT INTO `bjxxw_lucky_draw` VALUES ('61', '766169', 'zhaoshuang', '六等奖', '中奖了!好高兴呀!!!!', '1465982728', '1', '211.167.232.158', '&nbsp;', '18701233931', '0');
INSERT INTO `bjxxw_lucky_draw` VALUES ('59', '666', '中国移动', '六等奖', '六等奖  我不是在做梦吧', '1465976349', '2', '211.167.232.158', '&nbsp;', '18701233936', '0');
INSERT INTO `bjxxw_lucky_draw` VALUES ('131', '888', '王忠', '六等奖', '很开森', '1466229942', '1', '211.167.232.158', '&nbsp;', '18701233930', '0');
INSERT INTO `bjxxw_lucky_draw` VALUES ('722', '0', '黄丹', '七等奖', '第一次中奖,感觉在做梦', '1467181769', '1', '58.129.62.208', '中国北京市 ', '18701233933', '0');
INSERT INTO `bjxxw_lucky_draw` VALUES ('505', '0', '陈希', '六等奖', '哈哈', '1467094144', '3', '211.167.232.158', '中国北京市 鹏博士', '15926801192', '0');
INSERT INTO `bjxxw_lucky_draw` VALUES ('850', '0', '葛贵龙', '十二等奖', '喜中12等奖', '1467189978', '1', '106.121.7.160', '中国北京市 电信', '18910427130', '0');
INSERT INTO `bjxxw_lucky_draw` VALUES ('856', '0', '史红祥', '九等奖', '真不错的平台太给力了！', '1467192722', '1', '223.104.38.210', '中国北京市 移动', '15075124080', '0');
INSERT INTO `bjxxw_lucky_draw` VALUES ('501', '0', '梁庆伟', '四等奖', '中奖了 鸡冻', '1467087938', '1', '223.104.3.206', '中国北京市 移动', '15701380091', '0');
INSERT INTO `bjxxw_lucky_draw` VALUES ('475', '0', '王生成', '七等奖', '', '1466993721', '1', '218.30.109.26', '中国北京市 电信', '15313176625', '0');
INSERT INTO `bjxxw_lucky_draw` VALUES ('871', '0', '尹鹏', '六等奖', '', '1467243769', '1', '61.148.244.212', '中国北京市 联通', '13120249276', '0');
INSERT INTO `bjxxw_lucky_draw` VALUES ('872', '0', '刘晓曦', '十等奖', '', '1467243952', '1', '117.136.0.141', '中国北京市 移动', '13522897810', '0');
INSERT INTO `bjxxw_lucky_draw` VALUES ('498', '0', '高昆', '六等奖', '', '1467083494', '1', '221.222.200.45', '中国北京市海淀区 联通', '18801283025', '0');
INSERT INTO `bjxxw_lucky_draw` VALUES ('483', '0', '罗凯', '六等奖', '', '1466997909', '1', '118.244.190.50', '中国北京市 鹏博士', '17605393551', '0');
INSERT INTO `bjxxw_lucky_draw` VALUES ('873', '0', '史红祥', '九等奖', '哈哈，不错哟', '1467245079', '1', '117.136.0.158', '中国北京市 移动', '15075124080', '0');
INSERT INTO `bjxxw_lucky_draw` VALUES ('485', '0', '罗凯', '七等奖', '', '1466997978', '3', '118.244.190.50', '中国北京市 鹏博士', '17605393551', '0');
INSERT INTO `bjxxw_lucky_draw` VALUES ('874', '0', '陈光', '八等奖', '真好、天天有奖品', '1467245086', '1', '117.136.38.195', '中国北京市 移动', '15901199234', '0');
INSERT INTO `bjxxw_lucky_draw` VALUES ('875', '0', '梁庆伟', '七等奖', '哇塞、中奖了', '1467245091', '1', '223.104.3.171', '中国北京市 移动', '15701380091', '0');
INSERT INTO `bjxxw_lucky_draw` VALUES ('876', '0', '葛贵龙', '六等奖', '奖品越来越靠近一等奖了', '1467247627', '1', '106.121.6.244', '中国北京市 电信', '18910427130', '0');
INSERT INTO `bjxxw_lucky_draw` VALUES ('879', '0', '葛贵龙', '六等奖', '又中奖了，还是精美水杯一个', '1467249642', '1', '218.247.186.98', '中国北京市 鹏博士', '18910427130', '0');
INSERT INTO `bjxxw_lucky_draw` VALUES ('880', '0', '温文', '十等奖', '真能领吗？', '1467254652', '1', '115.171.109.146', '中国北京市 电信', '18410106869', '0');
INSERT INTO `bjxxw_lucky_draw` VALUES ('895', '0', '王家佳', '六等奖', '很棒的，百分百中奖！', '1467277511', '1', '114.242.248.185', '中国北京市通州区 联通', '13677726352', '0');
INSERT INTO `bjxxw_lucky_draw` VALUES ('885', '0', '邵晓虹', '九等奖', '', '1467265952', '1', '117.136.38.153', '中国北京市 移动', '13439740705', '0');
INSERT INTO `bjxxw_lucky_draw` VALUES ('886', '0', '史红祥', '六等奖', '又中奖太棒了', '1467270618', '1', '221.217.163.39', '中国北京市朝阳区 联通', '15075124080', '0');
INSERT INTO `bjxxw_lucky_draw` VALUES ('891', '0', '潘钰泽', '一等奖', '哇塞,一等奖,好开心,要有苹果本了!', '1467276242', '1', '117.136.36.57', '中国北京市', '18000000000', '0');
INSERT INTO `bjxxw_lucky_draw` VALUES ('536', '0', '史红祥', '四等奖', '谢谢，谢谢，我中奖了。', '1467156521', '3', '60.28.234.38', '中国天津市 联通', '15075124080', '0');
INSERT INTO `bjxxw_lucky_draw` VALUES ('857', '0', '吉海波', '二等奖', '好开心啊,中奖啦', '1467194450', '1', '223.104.38.181', '中国北京市 移动', '13111188852', '0');
INSERT INTO `bjxxw_lucky_draw` VALUES ('858', '0', '', '十一等奖', '', '1467195113', '1', '106.37.32.212', '中国北京市 电信', '', '0');
INSERT INTO `bjxxw_lucky_draw` VALUES ('733', '0', '郭宏伟', '七等奖', '', '1467183343', '1', '111.206.51.137', '中国北京市 联通', '13366312209', '0');
INSERT INTO `bjxxw_lucky_draw` VALUES ('734', '0', '周亮', '七等奖', '', '1467183382', '1', '111.202.59.39', '中国北京市 联通', '18810736754', '0');
INSERT INTO `bjxxw_lucky_draw` VALUES ('601', '0', '李翰伦', '六等奖', '中个杯子喝水不错', '1467169401', '3', '115.47.48.142', '中国北京市 鹏博士', '13811894694', '0');
INSERT INTO `bjxxw_lucky_draw` VALUES ('543', '0', '史红祥', '六等奖', '中奖啦好开森', '1467165851', '1', '117.136.0.141', '中国北京市 移动', '15075124080', '0');
INSERT INTO `bjxxw_lucky_draw` VALUES ('652', '0', '王建军', '四等奖', '中奖了.app不错', '1467169418', '2', '114.242.248.184', '中国北京市通州区 联通', '13901254912', '0');
INSERT INTO `bjxxw_lucky_draw` VALUES ('892', '0', '王卓', '二等奖', '哈哈,不用卖肾买ipad', '1467276249', '1', '117.136.36.24', '中国北京市', '13999999999', '0');
INSERT INTO `bjxxw_lucky_draw` VALUES ('870', '0', '史红祥', '九等奖', '天天都可以抽奖真不错', '1467242466', '1', '60.28.234.38', '中国天津市 联通', '15075124080', '0');
INSERT INTO `bjxxw_lucky_draw` VALUES ('869', '0', '', '八等奖', '', '1467240935', '1', '223.104.38.181', '中国北京市 移动', '', '0');
INSERT INTO `bjxxw_lucky_draw` VALUES ('854', '0', '', '十一等奖', '放弃领取', '1467190340', '1', '211.167.232.158', '中国北京市 鹏博士', '', '0');
INSERT INTO `bjxxw_lucky_draw` VALUES ('848', '0', '葛贵龙', '八等奖', '中奖了，喜中八等奖！', '1467189859', '1', '218.247.186.98', '中国北京市 鹏博士', '18910427130', '0');
INSERT INTO `bjxxw_lucky_draw` VALUES ('1653', '0', '', '十二等奖', '', '1477453125', '2', '::1', '北京', '', '0');
INSERT INTO `bjxxw_lucky_draw` VALUES ('1654', '0', '', '十一等奖', '放弃领取', '1477453197', '3', '::1', '北京', '', '0');
INSERT INTO `bjxxw_lucky_draw` VALUES ('1652', '0', '', '十二等奖', '', '1477453082', '1', '::1', '北京', '', '0');

-- ----------------------------
-- Table structure for bjxxw_lucky_prize
-- ----------------------------
DROP TABLE IF EXISTS `bjxxw_lucky_prize`;
CREATE TABLE `bjxxw_lucky_prize` (
  `prize` varchar(20) NOT NULL,
  `number` int(10) NOT NULL,
  `surplus` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bjxxw_lucky_prize
-- ----------------------------
INSERT INTO `bjxxw_lucky_prize` VALUES ('一等奖', '0', '0');
INSERT INTO `bjxxw_lucky_prize` VALUES ('二等奖', '0', '0');
INSERT INTO `bjxxw_lucky_prize` VALUES ('三等奖', '0', '0');
INSERT INTO `bjxxw_lucky_prize` VALUES ('四等奖', '0', '0');
INSERT INTO `bjxxw_lucky_prize` VALUES ('五等奖', '100', '100');
INSERT INTO `bjxxw_lucky_prize` VALUES ('六等奖', '180', '159');
INSERT INTO `bjxxw_lucky_prize` VALUES ('七等奖', '100', '84');
INSERT INTO `bjxxw_lucky_prize` VALUES ('八等奖', '100', '7');
INSERT INTO `bjxxw_lucky_prize` VALUES ('九等奖', '100', '45');
INSERT INTO `bjxxw_lucky_prize` VALUES ('十等奖', '100', '96');
INSERT INTO `bjxxw_lucky_prize` VALUES ('十一等奖', '100', '49');
INSERT INTO `bjxxw_lucky_prize` VALUES ('十二等奖', '100', '99542');
