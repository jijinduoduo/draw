/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : cn_bjxxw

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2016-10-26 17:01:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bjxxw_win_prize
-- ----------------------------
DROP TABLE IF EXISTS `bjxxw_win_prize`;
CREATE TABLE `bjxxw_win_prize` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `pname` varchar(100) DEFAULT NULL,
  `surename` varchar(10) DEFAULT NULL,
  `uemail` varchar(30) DEFAULT NULL,
  `utel` varchar(12) DEFAULT NULL,
  `pdate` datetime DEFAULT NULL,
  `ucity` varchar(100) DEFAULT NULL,
  `ip` varchar(30) DEFAULT NULL,
  `ifwin` varchar(1) DEFAULT NULL,
  `message` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=406 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of bjxxw_win_prize
-- ----------------------------
INSERT INTO `bjxxw_win_prize` VALUES ('264', '765732', '7', 'jijinduoduo', '六等奖', 'zhaoshuang', '', '', '2016-02-16 13:56:56', '中国&nbsp;联通', '117.114.139.98', '1', '中奖了!好高兴呀!!!!');
INSERT INTO `bjxxw_win_prize` VALUES ('270', '767529', '7', '总版主', '二等奖', '中国移动', '', '', '2016-02-16 14:08:02', '&nbsp;', '117.114.139.98', '1', '六等奖  我不是在做梦吧');
INSERT INTO `bjxxw_win_prize` VALUES ('288', '769543', '7', '18401252431', '三等奖', '王忠', '', '', '2016-02-18 09:49:38', '中国&nbsp;联通', '117.114.139.98', '1', '很开森');
INSERT INTO `bjxxw_win_prize` VALUES ('289', '766169', '7', 'zhaoshuang', '七等奖', '黄丹', '', '', '2016-02-18 14:05:05', '中国&nbsp;联通', '117.114.139.98', '1', '第一次中奖,感觉在做梦');
INSERT INTO `bjxxw_win_prize` VALUES ('298', '769543', '7', '豆豆', '五等奖', '陈希', '', '', '2016-02-22 08:48:36', '中国&nbsp;联通', '117.114.139.98', '1', '哈哈');
INSERT INTO `bjxxw_win_prize` VALUES ('299', '765947', '7', 'panyuze', '七等奖', '葛贵龙', '', '', '2016-02-23 08:29:46', '中国&nbsp;联通', '117.114.139.98', '1', '喜中12等奖');
INSERT INTO `bjxxw_win_prize` VALUES ('314', '666', '7', '中国移动', '四等奖', '史红祥', '', '', '2016-03-18 09:42:10', '&nbsp;', '211.167.232.158', '1', '真不错的平台太给力了！');
INSERT INTO `bjxxw_win_prize` VALUES ('317', '766169', '7', '海月', '七等奖', '梁庆伟', '', '', '2016-03-18 10:10:49', '&nbsp;', '211.167.232.158', '1', '中奖了 鸡冻');
INSERT INTO `bjxxw_win_prize` VALUES ('319', '772699', '7', 'zhangying', '六i等奖', '王生成', '2114420353@qq.com', '15201568219', '2016-03-24 09:29:12', '&nbsp;', '211.167.232.158', '1', '');
INSERT INTO `bjxxw_win_prize` VALUES ('320', '766169', '7', 'zhaoshuang', '七等奖', '尹鹏', '', '', '2016-03-24 09:40:35', '&nbsp;', '211.167.232.158', '1', '');
INSERT INTO `bjxxw_win_prize` VALUES ('329', '773843', '7', '开心的人123', '七等奖', '刘晓曦', '', '', '2016-04-06 15:46:10', '&nbsp;', '123.119.182.28', '1', '');
INSERT INTO `bjxxw_win_prize` VALUES ('332', '666', '4', '中国移动', '四等奖', '高昆', '', '', '2016-04-06 21:45:42', '', '123.114.123.50', '1', '');
INSERT INTO `bjxxw_win_prize` VALUES ('333', '769543', '7', '18401252431', '七等奖', '罗凯', '', '', '2016-04-06 21:59:22', '&nbsp;', '120.52.24.11', '1', '');
INSERT INTO `bjxxw_win_prize` VALUES ('338', '765947', '7', 'panyuze', '七等奖', '史红祥', '', '', '2016-04-11 09:13:42', '&nbsp;', '211.157.170.234', '1', '哈哈，不错哟');
INSERT INTO `bjxxw_win_prize` VALUES ('339', '773843', '7', '开心的人123', '七等奖', '罗凯', '', '', '2016-04-12 14:47:43', '&nbsp;', '221.223.3.166', '1', '');
INSERT INTO `bjxxw_win_prize` VALUES ('340', '766169', '6', 'zhacen', '六等奖', '陈光', '', '', '2016-04-13 12:18:51', '&nbsp;', '211.157.170.234', '1', '真好、天天有奖品');
INSERT INTO `bjxxw_win_prize` VALUES ('342', '769543', '7', '18401252431', '七等奖', '梁庆伟', '', '', '2016-04-13 12:19:10', '&nbsp;', '211.167.232.158', '1', '哇塞、中奖了');
INSERT INTO `bjxxw_win_prize` VALUES ('343', '766169', '7', 'zhaoshuang', '七等奖', '葛贵龙', '', '', '2016-04-13 12:19:16', '&nbsp;', '211.157.170.234', '1', '奖品越来越靠近一等奖了');
INSERT INTO `bjxxw_win_prize` VALUES ('344', '666', '5', '一二一', '五等奖', '葛贵龙', '', '', '2016-04-13 12:28:10', '&nbsp;', '211.157.170.234', '1', '又中奖了，还是精美水杯一个');
INSERT INTO `bjxxw_win_prize` VALUES ('347', '765947', '7', 'panyuze', '七等奖', '温文', '', '', '2016-04-13 12:41:24', '&nbsp;', '211.157.170.234', '1', '真能领吗？');
INSERT INTO `bjxxw_win_prize` VALUES ('350', '766169', '7', 'zhaoshuang', '七等奖', '王家佳', '', '', '2016-04-14 10:39:40', '&nbsp;', '211.157.170.234', '1', '很棒的，百分百中奖！');
INSERT INTO `bjxxw_win_prize` VALUES ('351', '765947', '7', 'panyuze', '七等奖', '邵晓虹', '', '', '2016-04-14 10:42:51', '&nbsp;', '211.157.170.234', '1', '');
INSERT INTO `bjxxw_win_prize` VALUES ('352', '769543', '7', '18401252431', '七等奖', '史红祥', '', '', '2016-04-14 10:43:37', '&nbsp;', '211.157.170.234', '1', '又中奖太棒了');
INSERT INTO `bjxxw_win_prize` VALUES ('353', '666', '7', '中国移动', '七等奖', '潘钰泽', '', '', '2016-04-14 10:43:41', '&nbsp;', '211.157.170.234', '1', '哇塞,奖,好开心,要有苹果本了!');
INSERT INTO `bjxxw_win_prize` VALUES ('356', '769543', '7', '18401252431', '七等奖', '史红祥', '', '', '2016-04-14 10:45:58', '&nbsp;', '211.157.170.234', '1', '谢谢，谢谢，我中奖了。');
INSERT INTO `bjxxw_win_prize` VALUES ('357', '766169', '7', 'zhaoshuang', '七等奖', '吉海波', '', '', '2016-04-14 10:56:06', '&nbsp;', '211.157.170.234', '1', '好开心啊,中奖啦');
INSERT INTO `bjxxw_win_prize` VALUES ('359', '765947', '7', 'panyuze', '七等奖', '', '', '', '2016-04-14 11:05:32', '&nbsp;', '211.157.170.234', '1', '');
INSERT INTO `bjxxw_win_prize` VALUES ('360', '709171', '7', '脚底三个板', '七等奖', '郭宏伟', '656110934@qq.com', '13501117821', '2016-04-14 13:05:28', '&nbsp;', '211.157.170.234', '1', '');
INSERT INTO `bjxxw_win_prize` VALUES ('361', '773843', '7', '开心的人123', '七等奖', '周亮', '', '', '2016-04-18 15:27:13', '&nbsp;', '123.119.167.209', '1', '');
INSERT INTO `bjxxw_win_prize` VALUES ('362', '774892', '7', 'zhaoxueyu', '七等奖', '李翰伦', 'zhaoxueyu1024@126.com', '18310553047', '2016-04-22 06:33:04', '&nbsp;', '117.136.0.49', '1', '');
INSERT INTO `bjxxw_win_prize` VALUES ('365', '774338', '7', '温威威', '七等奖', '史红祥', '351569310@qq.com', '15138500012', '2016-04-22 06:58:52', '&nbsp;', '114.254.118.142', '1', '中奖啦好开森');
INSERT INTO `bjxxw_win_prize` VALUES ('368', '766169', '4', 'zhaoshuang', '四等奖', '王建军', '', '', '2016-06-08 16:01:00', '&nbsp;', '211.167.232.158', '1', '中奖了.app不错');
INSERT INTO `bjxxw_win_prize` VALUES ('378', '666', '7', '白曲鹏', '七等奖', '王卓', '', '', '2016-06-15 13:40:00', '&nbsp;', '211.167.232.158', '1', '哈哈,不用卖肾买ipad');
INSERT INTO `bjxxw_win_prize` VALUES ('379', '772244', '7', 'ruyangyang', '七等奖', '史红祥', '2850149651@qq.com', '13269025758', '2016-06-21 11:29:33', '&nbsp;', '211.167.232.158', '1', '天天都可以抽奖真不错');
INSERT INTO `bjxxw_win_prize` VALUES ('395', '765732', '7', 'jijinduoduo', '七等奖', '葛贵龙', '', '', '2016-10-24 08:46:34', '&nbsp;', '211.167.232.158', '1', '中奖了，喜中等奖！');
