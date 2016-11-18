/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : tender

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2016-11-18 11:56:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tender_info
-- ----------------------------
DROP TABLE IF EXISTS `tender_info`;
CREATE TABLE `tender_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `area` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `purchase` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `createtime` datetime NOT NULL,
  `organization` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tender_info
-- ----------------------------
INSERT INTO `tender_info` VALUES ('1', '嘉峪关市第一人民医院医疗设备公开招标公告甘肃\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161031_7509708.htm', '甘肃', ' 嘉峪关市第一人民医院\n ', '2016-10-31 18:02:22', ' 嘉峪关市公共资源交易中心政府采购交易科\n公开招标公告\n ', '2');
INSERT INTO `tender_info` VALUES ('2', '上海市嘉定区中医医院医疗设备的中标公告上海\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161028_7500534.htm', '上海', ' 上海市嘉定区中医医院\n ', '2016-10-28 16:10:15', ' 上海市嘉定区政府采购中心\n中标公告\n ', '2');
INSERT INTO `tender_info` VALUES ('3', '浦东新区公利医院16排CT等项目国际招标评标结果公示公告上海\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161028_7500261.htm', '上海', ' 上海市浦东新区公利医院\n ', '2016-10-28 16:05:52', ' 上海社发项目管理服务有限公司\n中标公告\n ', '2');
INSERT INTO `tender_info` VALUES ('4', '东方医院医疗设备采购项目上海\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161028_7498973.htm', '上海', ' 上海市东方医院\n ', '2016-10-28 15:59:54', ' 上海社发项目管理服务有限公司\n中标公告\n ', '2');
INSERT INTO `tender_info` VALUES ('5', '第七人民医院胸腔镜、十二指肠镜、肠镜的中标公告上海\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161028_7498910.htm', '上海', ' 上海市第七人民医院\n ', '2016-10-28 15:58:32', ' 上海社发项目管理服务有限公司\n中标公告\n ', '2');
INSERT INTO `tender_info` VALUES ('6', '上海市杨浦区中医医院电子胃镜、肠镜的中标公告上海\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161028_7499070.htm', '上海', ' 上海市杨浦区中医医院\n ', '2016-10-28 15:57:47', ' 上海市机械设备成套（集团）有限公司\n中标公告\n ', '2');
INSERT INTO `tender_info` VALUES ('7', '福建医科大学附属第一医院消化内镜采购项目公开招标公告福建\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161027_7493070.htm', '福建', ' 福建医科大学附属第一医院\n ', '2016-10-27 17:32:45', ' 福建省金丰招标代理有限公司\n公开招标公告\n ', '2');
INSERT INTO `tender_info` VALUES ('8', '舟山医院采购医疗设备项目招标公告浙江\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161026_7488136.htm', '浙江', ' 舟山医院\n ', '2016-10-26 15:20:06', ' 宁波市国际招标有限公司\n公开招标公告\n ', '2');
INSERT INTO `tender_info` VALUES ('9', '秦皇岛市第一医院肛肠镜、外科手术能量系统采购公开招标公告河北\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161024_7470773.htm', '河北', ' 秦皇岛市第一医院\n ', '2016-10-24 10:30:07', ' 秦皇岛国民工程咨询有限公司\n公开招标公告\n ', '2');
INSERT INTO `tender_info` VALUES ('10', '北京大学第三医院设备购置项目-418中标公告北京\n', 'http://www.ccgp.gov.cn/cggg/zygg/zbgg/201610/t20161021_7466105.htm', '北京', ' 北京大学第三医院\n ', '2016-10-21 15:32:00', ' 中信国际招标有限公司\n中标公告\n ', '2');
INSERT INTO `tender_info` VALUES ('11', '广州市黄埔区中医医院采购医疗设备招标项目（0724-1601D62N2744）中标公告广东\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161021_7464438.htm', '广东', ' 广州市黄埔区中医医院\n ', '2016-10-21 11:57:11', ' 国义招标股份有限公司\n中标公告\n ', '2');
INSERT INTO `tender_info` VALUES ('12', '泰山医学院附属医院医院医疗设备采购中标公告山东\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161020_7462127.htm', '山东', ' 泰山医学院附属医院\n ', '2016-10-20 17:55:41', ' 青岛市招标中心\n中标公告\n ', '2');
INSERT INTO `tender_info` VALUES ('13', '福建省肿瘤医院胃肠镜维保项目单一来源公告福建\n', 'http://www.ccgp.gov.cn/cggg/dfgg/dylygg/201610/t20161020_7459791.htm', '福建', ' 福建省肿瘤医院\n ', '2016-10-20 15:56:28', ' 福建省闽咨造价咨询有限公司\n单一来源公告\n ', '2');
INSERT INTO `tender_info` VALUES ('14', '楚雄彝族自治州人民医院购置医疗设备项目招标公告云南\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161019_7460413.htm', '云南', ' 楚雄彝族自治州人民医院\n ', '2016-10-19 18:10:59', ' 昆明德缘工程咨询有限公司\n公开招标公告\n ', '2');
INSERT INTO `tender_info` VALUES ('15', '黎川县纵横招标服务有限公司关于黎川县人民医院电子肠镜采购项目中标公告江西\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161018_7448718.htm', '江西', ' 黎川县人民医院\n ', '2016-10-18 15:32:13', ' 黎川县纵横招标服务有限公司\n中标公告\n ', '2');
INSERT INTO `tender_info` VALUES ('16', '广宁县人民医院进口电子内窥镜公开招标公告广东\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161017_7443951.htm', '广东', ' 广宁县人民医院\n ', '2016-10-17 17:12:36', ' 广东明盈招标代理有限公司\n公开招标公告\n ', '2');
INSERT INTO `tender_info` VALUES ('17', '广州市花都区第二人民医院2016年第二季度设备采购项目公开招标公告广东\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161017_7441937.htm', '广东', ' 广州市花都区第二人民医院\n ', '2016-10-17 15:03:55', ' 广东秤风采购招标有限公司\n公开招标公告\n ', '2');
INSERT INTO `tender_info` VALUES ('18', '佛山市南海区人民医院蓝激光胃肠镜摄像系统单一来源公示广东\n', 'http://www.ccgp.gov.cn/cggg/dfgg/dylygg/201610/t20161014_7432004.htm', '广东', ' 佛山市南海区人民医院\n ', '2016-10-14 10:19:42', ' 广东省机电设备招标公司佛山分公司\n单一来源公告\n ', '2');
INSERT INTO `tender_info` VALUES ('19', '山东黄河河务局山东黄河医院山东黄河医院电子胃、肠镜系统采购项目中标公告山东\n', 'http://www.ccgp.gov.cn/cggg/zygg/zbgg/201610/t20161014_7431224.htm', '山东', ' 山东黄河河务局山东黄河医院\n ', '2016-10-14 08:35:21', ' 山东龙信达咨询监理有限公司\n中标公告\n ', '2');
INSERT INTO `tender_info` VALUES ('20', '嘉善县招投标交易中心关于嘉善县肿瘤防治所电子肠镜政府采购项目的公开招标公告浙江\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161013_7430878.htm', '浙江', ' 嘉善县肿瘤防治所\n ', '2016-10-13 10:53:31', ' 嘉善县招投标交易中心\n公开招标公告\n ', '2');
INSERT INTO `tender_info` VALUES ('21', '北京医院2016年第三批医疗设备采购项目公开招标公告北京\n', 'http://www.ccgp.gov.cn/cggg/zygg/gkzb/201610/t20161012_7423958.htm', '北京', ' 北京医院\n ', '2016-10-12 17:02:21', ' 中国机械进出口(集团)有限公司\n公开招标公告\n ', '2');
INSERT INTO `tender_info` VALUES ('22', '西安医学院附属宝鸡医院医疗设备采购项目二次变更公告陕西\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gzgg/201610/t20161012_7425578.htm', '陕西', ' 西安医学院附属宝鸡医院\n ', '2016-10-12 16:50:20', ' 中海建国际招标有限责任公司\n更正公告\n ', '2');
INSERT INTO `tender_info` VALUES ('23', '阳春市人民医院医疗设备招标采购项目公开招标公告【项目编号：YCRY-HW-1617】广东\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161010_7411151.htm', '广东', ' 阳春市人民医院\n ', '2016-10-10 15:32:49', ' 广东五洲采购电子商务有限公司阳江办事处\n公开招标公告\n ', '2');
INSERT INTO `tender_info` VALUES ('24', '梅河口市中医院采购电子胃肠镜等设备公开招标公告吉林\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161010_7409097.htm', '吉林', ' 梅河口市中医院\n ', '2016-10-10 10:27:46', ' 吉林省北华建设项目管理有限公司\n公开招标公告\n ', '2');
INSERT INTO `tender_info` VALUES ('25', '普陀区人民医院高清电子胃镜肠镜、电子十二指肠镜等的公开招标公告上海\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161010_7408720.htm', '上海', ' 上海市普陀区人民医院\n ', '2016-10-10 09:55:01', ' 上海市普陀区政府采购中心\n公开招标公告\n ', '2');
INSERT INTO `tender_info` VALUES ('26', '大连大学中山临床学院电子胃肠镜系统采购中标公告辽宁\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161010_7408758.htm', '辽宁', ' 大连大学\n ', '2016-10-10 09:52:35', ' 大连市机电设备招标中心\n中标公告\n ', '2');
INSERT INTO `tender_info` VALUES ('27', '景洪市人民医院医疗设备采购项目（二次）【A、D、E、F包招标公告】云南\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161009_7405539.htm', '云南', ' 景洪市人民医院\n ', '2016-10-09 16:10:32', ' 云南通拓招标有限公司\n公开招标公告\n ', '2');
INSERT INTO `tender_info` VALUES ('28', '景洪市人民医院医疗设备采购项目（二次）【A、D、E、F包招标公告】云南\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161009_7405533.htm', '云南', ' 景洪市人民医院\n ', '2016-10-09 16:10:13', ' 云南通拓招标有限公司\n公开招标公告\n ', '2');
INSERT INTO `tender_info` VALUES ('29', '西安市临潼区中医院医用设备采购项目（第二次）公开招标公告陕西\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161008_7400271.htm', '陕西', ' 西安市临潼区中医院\n ', '2016-10-08 16:10:51', ' 四川国际招标有限责任公司陕西分公司\n公开招标公告\n ', '2');
INSERT INTO `tender_info` VALUES ('30', '黑龙江省农垦牡丹江管理局中心医院专用设备采购项目(二)中标公告黑龙江\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161008_7400181.htm', '黑龙江', ' 黑龙江省农垦牡丹江管理局中心医院\n ', '2016-10-08 15:50:27', ' 黑龙江众成招标有限公司\n中标公告\n ', '2');
INSERT INTO `tender_info` VALUES ('31', '青海省康复医院医疗设备采购项目公开招标公告青海\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161031_7510199.htm', '青海', ' 青海省康复医院\n ', '2016-10-31 20:48:08', ' 青海塞特招标代理有限公司\n公开招标公告\n ', '3');
INSERT INTO `tender_info` VALUES ('32', '嘉峪关市第一人民医院医疗设备公开招标公告甘肃\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161031_7509708.htm', '甘肃', ' 嘉峪关市第一人民医院\n ', '2016-10-31 18:02:22', ' 嘉峪关市公共资源交易中心政府采购交易科\n公开招标公告\n ', '3');
INSERT INTO `tender_info` VALUES ('33', '海东市乐都区第二人民医院医疗设备采购项目公开招标公告青海\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161031_7509649.htm', '青海', ' 海东市乐都区第二人民医院\n ', '2016-10-31 17:58:06', ' 四川国际招标有限责任公司青海分公司\n公开招标公告\n ', '3');
INSERT INTO `tender_info` VALUES ('34', '上海市嘉定区中医医院医疗设备的中标公告上海\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161028_7500534.htm', '上海', ' 上海市嘉定区中医医院\n ', '2016-10-28 16:10:15', ' 上海市嘉定区政府采购中心\n中标公告\n ', '3');
INSERT INTO `tender_info` VALUES ('35', '浦东新区中医医院鼻胃镜、钼靶项目- 评标结果公示公告上海\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161028_7499692.htm', '上海', ' 上海市浦东新区中医医院\n ', '2016-10-28 16:04:47', ' 上海社发项目管理服务有限公司\n中标公告\n ', '3');
INSERT INTO `tender_info` VALUES ('36', '东方医院医疗设备采购项目上海\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161028_7498973.htm', '上海', ' 上海市东方医院\n ', '2016-10-28 15:59:54', ' 上海社发项目管理服务有限公司\n中标公告\n ', '3');
INSERT INTO `tender_info` VALUES ('37', '上海市杨浦区中医医院电子胃镜、肠镜的中标公告上海\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161028_7499070.htm', '上海', ' 上海市杨浦区中医医院\n ', '2016-10-28 15:57:47', ' 上海市机械设备成套（集团）有限公司\n中标公告\n ', '3');
INSERT INTO `tender_info` VALUES ('38', '福建医科大学附属第一医院消化内镜采购项目公开招标公告福建\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161027_7493070.htm', '福建', ' 福建医科大学附属第一医院\n ', '2016-10-27 17:32:45', ' 福建省金丰招标代理有限公司\n公开招标公告\n ', '3');
INSERT INTO `tender_info` VALUES ('39', '淮北市相山区相城医院电子胃镜采购项目招标公告安徽\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161027_7492444.htm', '安徽', ' 淮北市相山区相城医院\n ', '2016-10-27 17:05:08', ' 淮北市相山区相城医院\n公开招标公告\n ', '3');
INSERT INTO `tender_info` VALUES ('40', '临夏州中医医院C型臂等医疗设备采购项目中标公告甘肃\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161027_7490260.htm', '甘肃', ' 临夏州中医医院\n ', '2016-10-27 13:08:39', ' 全信项目管理咨询有限公司\n中标公告\n ', '3');
INSERT INTO `tender_info` VALUES ('41', '张家口市传染病医院传染病医院购电子胃镜项目公开招标公告（二次）河北\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161026_7484577.htm', '河北', ' 张家口市传染病医院\n ', '2016-10-26 11:21:25', ' 河北华业招标有限公司\n公开招标公告\n ', '3');
INSERT INTO `tender_info` VALUES ('42', '传染病医院购电子胃镜招标公告(二次)河北\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161026_7483623.htm', '河北', ' 张家口市传染病医院\n ', '2016-10-26 10:02:09', ' 河北华业招标有限公司\n公开招标公告\n ', '3');
INSERT INTO `tender_info` VALUES ('43', '贵定县人民医院医疗设备采购及安装采购公告贵州\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161024_7475251.htm', '贵州', ' 贵定县人民医院\n ', '2016-10-24 17:15:08', ' 贵州泰禾招标造价咨询有限公司\n公开招标公告\n ', '3');
INSERT INTO `tender_info` VALUES ('44', '包头市中心医院医疗设备采购公开招标公告采购公告(项目编号=包采公〔2016〕4012号)内蒙古\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161024_7473608.htm', '内蒙古', ' 包头市中心医院\n ', '2016-10-24 15:56:01', ' 内蒙古奥晨招标有限公司\n公开招标公告\n ', '3');
INSERT INTO `tender_info` VALUES ('45', '明光市中医院高清染色电子结肠镜采购与安装招标公告安徽\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161024_7473163.htm', '安徽', ' 明光市中医院\n ', '2016-10-24 15:24:54', ' 明光市中医院\n公开招标公告\n ', '3');
INSERT INTO `tender_info` VALUES ('46', '青岛开发区第一人民医院医疗设备采购项目单一来源采购的公示单一来源公告山东\n', 'http://www.ccgp.gov.cn/cggg/dfgg/dylygg/201610/t20161024_7470662.htm', '山东', ' 青岛开发区第一人民医院\n ', '2016-10-24 10:23:52', ' 青岛信易和招标有限公司\n单一来源公告\n ', '3');
INSERT INTO `tender_info` VALUES ('47', '北京大学第三医院设备购置项目-418中标公告北京\n', 'http://www.ccgp.gov.cn/cggg/zygg/zbgg/201610/t20161021_7466105.htm', '北京', ' 北京大学第三医院\n ', '2016-10-21 15:32:00', ' 中信国际招标有限公司\n中标公告\n ', '3');
INSERT INTO `tender_info` VALUES ('48', '浦东新区周浦医院高清结肠镜、可视人流、放大胃镜项目的公开招标公告上海\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161021_7465303.htm', '上海', ' 上海市浦东新区周浦医院\n ', '2016-10-21 14:55:07', ' 上海社发项目管理服务有限公司\n公开招标公告\n ', '3');
INSERT INTO `tender_info` VALUES ('49', '九江天平招投标咨询有限公司关于江西省瑞昌市人民医院内镜清洗工作站及电子胃镜设备采购项目（招标编号：JJTPZB2016-RC003）电子化公开招标公告江西\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161021_7464384.htm', '江西', ' 瑞昌市人民医院\n ', '2016-10-21 11:50:25', ' 九江天平招投标咨询有限公司\n公开招标公告\n ', '3');
INSERT INTO `tender_info` VALUES ('50', '杭州华旗招标代理有限公司关于超声胃镜检查仪的预中标结果公示浙江\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161021_7468697.htm', '浙江', ' 玉环县中医院\n ', '2016-10-21 09:57:49', ' 杭州华旗招标代理有限公司\n中标公告\n ', '3');
INSERT INTO `tender_info` VALUES ('51', '泰山医学院附属医院医院医疗设备采购中标公告山东\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161020_7462127.htm', '山东', ' 泰山医学院附属医院\n ', '2016-10-20 17:55:41', ' 青岛市招标中心\n中标公告\n ', '3');
INSERT INTO `tender_info` VALUES ('52', '遂溪县人民医院电子胃镜麻醉机采购项目公开招标公告广东\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161020_7461528.htm', '广东', ' 遂溪县人民医院\n ', '2016-10-20 17:14:28', ' 广东省电信规划设计院有限公司\n公开招标公告\n ', '3');
INSERT INTO `tender_info` VALUES ('53', '市一院胃镜中标公示（项目编号：WH01CG2016HW2349)安徽\n', 'http://www.ccgp.gov.cn/cggg/dfgg/cjgg/201610/t20161020_7460415.htm', '安徽', ' 芜湖市第一人民医院\n ', '2016-10-20 16:32:47', ' 芜湖市第一人民医院\n成交公告\n ', '3');
INSERT INTO `tender_info` VALUES ('54', '宣威市第一人民医院医疗设备一批采购项目（二次招标）中标公告云南\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161020_7461187.htm', '云南', ' 宣威市第一人民医院\n ', '2016-10-20 16:10:02', ' 云南招标股份有限公司\n中标公告\n ', '3');
INSERT INTO `tender_info` VALUES ('55', '福建省肿瘤医院胃肠镜维保项目单一来源公告福建\n', 'http://www.ccgp.gov.cn/cggg/dfgg/dylygg/201610/t20161020_7459791.htm', '福建', ' 福建省肿瘤医院\n ', '2016-10-20 15:56:28', ' 福建省闽咨造价咨询有限公司\n单一来源公告\n ', '3');
INSERT INTO `tender_info` VALUES ('56', '勃利县人民医院医疗设备采购中标公告黑龙江\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161020_7458434.htm', '黑龙江', ' 勃利县人民医院\n ', '2016-10-20 13:01:20', ' 黑龙江省招标公司\n中标公告\n ', '3');
INSERT INTO `tender_info` VALUES ('57', '法正项目管理集团有限公司关于海口市第三人民医院胃镜室设备采购项目海南\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161020_7457682.htm', '海南', ' 海口市第三人民医院\n ', '2016-10-20 10:41:10', ' 法正项目管理集团有限公司\n中标公告\n ', '3');
INSERT INTO `tender_info` VALUES ('58', '（佛山市三水区大塘镇卫生院）（卫生院胃镜及高压灭菌器采购项目） （HNSXSS-2016WJMJQ）的中标、成交公告广东\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161020_7456952.htm', '广东', ' 佛山市三水区大塘镇卫生院\n ', '2016-10-20 08:54:46', ' 湖南三湘工程管理有限公司\n中标公告\n ', '3');
INSERT INTO `tender_info` VALUES ('59', '楚雄彝族自治州人民医院购置医疗设备项目招标公告云南\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161019_7460413.htm', '云南', ' 楚雄彝族自治州人民医院\n ', '2016-10-19 18:10:59', ' 昆明德缘工程咨询有限公司\n公开招标公告\n ', '3');
INSERT INTO `tender_info` VALUES ('60', '张家口市传染病医院传染病医院购电子胃镜废标公告河北\n', 'http://www.ccgp.gov.cn/cggg/dfgg/fblbgg/201610/t20161019_7455277.htm', '河北', ' 张家口市传染病医院\n ', '2016-10-19 16:36:14', ' 河北华业招标有限公司\n废标流标公告\n ', '3');
INSERT INTO `tender_info` VALUES ('61', '滨州医学院附属医院摄碘仪等医疗设备采购公开招标公告山东\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161019_7454469.htm', '山东', ' 滨州医学院附属医院\n ', '2016-10-19 15:28:36', ' 青岛市招标中心\n公开招标公告\n ', '3');
INSERT INTO `tender_info` VALUES ('62', '定西市安定区第二人民医院手术室、重症医学科等医疗设备采购项目中标公告甘肃\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161018_7450627.htm', '甘肃', ' 定西市安定区第二人民医院\n ', '2016-10-18 17:42:10', ' 全信项目管理咨询有限公司\n中标公告\n ', '3');
INSERT INTO `tender_info` VALUES ('63', '罗城仫佬族自治县人民医院医疗设备采购中标公告广西\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161017_7444124.htm', '广西', ' 罗城仫佬族自治县人民医院\n ', '2016-10-17 17:20:29', ' 广西鑫磐工程项目管理有限责任公司\n中标公告\n ', '3');
INSERT INTO `tender_info` VALUES ('64', '广宁县人民医院进口电子内窥镜公开招标公告广东\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161017_7443951.htm', '广东', ' 广宁县人民医院\n ', '2016-10-17 17:12:36', ' 广东明盈招标代理有限公司\n公开招标公告\n ', '3');
INSERT INTO `tender_info` VALUES ('65', '广州市从化区中医医院采购医疗设备招标项目公开招标公告广东\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161017_7442417.htm', '广东', ' 广州市从化区中医医院\n ', '2016-10-17 15:48:04', ' 国义招标股份有限公司\n公开招标公告\n ', '3');
INSERT INTO `tender_info` VALUES ('66', '宜春市人民医院电子胃镜项目电子化公开招标采购公告江西\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161014_7437558.htm', '江西', ' 宜春市人民医院\n ', '2016-10-14 18:37:15', ' 宜春市政府采购中心\n公开招标公告\n ', '3');
INSERT INTO `tender_info` VALUES ('67', '苏州市相城区中医医院高清电子胃肠镜中标公告江苏\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161014_7437341.htm', '江苏', ' 苏州市相城区中医医院\n ', '2016-10-14 17:26:00', ' 苏州市卫康招投标咨询服务有限公司\n中标公告\n ', '3');
INSERT INTO `tender_info` VALUES ('68', '南丹县人民医院广西真诚工程咨询有限公司-《医院货物采购》中标公告成交公告广西\n', 'http://www.ccgp.gov.cn/cggg/dfgg/cjgg/201610/t20161014_7434561.htm', '广西', ' 南丹县人民医院\n ', '2016-10-14 15:41:00', ' 广西真诚工程咨询有限公司\n成交公告\n ', '3');
INSERT INTO `tender_info` VALUES ('69', '[GDJYYY2016001]广东省监狱中心医院医疗设备采购项目中标结果公告广东\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161014_7432662.htm', '广东', ' 广东省监狱中心医院\n ', '2016-10-14 11:22:07', ' 广东海虹药通电子商务有限公司\n中标公告\n ', '3');
INSERT INTO `tender_info` VALUES ('70', '广东省监狱中心医院医疗设备采购项目中标结果公告广东\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161014_7432194.htm', '广东', ' 广东省监狱中心医院\n ', '2016-10-14 10:31:15', ' 广东海虹药通电子商务有限公司\n中标公告\n ', '3');
INSERT INTO `tender_info` VALUES ('71', '佛山市南海区人民医院蓝激光胃肠镜摄像系统单一来源公示广东\n', 'http://www.ccgp.gov.cn/cggg/dfgg/dylygg/201610/t20161014_7432004.htm', '广东', ' 佛山市南海区人民医院\n ', '2016-10-14 10:19:42', ' 广东省机电设备招标公司佛山分公司\n单一来源公告\n ', '3');
INSERT INTO `tender_info` VALUES ('72', '广西龙建工程管理有限公司医疗设备采购废标公告/流标公告广西\n', 'http://www.ccgp.gov.cn/cggg/dfgg/fblbgg/201610/t20161013_7430429.htm', '广西', ' 钦州市第一人民医院\n ', '2016-10-13 17:28:38', ' 广西龙建工程管理有限公司\n废标流标公告\n ', '3');
INSERT INTO `tender_info` VALUES ('73', '广州市花都区卫生和计划生育局采购医疗设备招标项目更正公告 [招标编号：0724-1601D15N2783]广东\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gzgg/201610/t20161013_7429569.htm', '广东', ' 广州市花都区卫生和计划生育局\n ', '2016-10-13 16:53:22', ' 国义招标股份有限公司\n更正公告\n ', '3');
INSERT INTO `tender_info` VALUES ('74', '枞阳县钱桥镇中心卫生院电子胃镜询价采购公告安徽\n', 'http://www.ccgp.gov.cn/cggg/dfgg/xjgg/201610/t20161012_7426004.htm', '安徽', ' 枞阳县钱桥镇中心卫生院\n ', '2016-10-12 17:41:48', ' \n询价公告\n ', '3');
INSERT INTO `tender_info` VALUES ('75', '枞阳县钱桥镇中心卫生院电子胃镜询价采购函安徽\n', 'http://www.ccgp.gov.cn/cggg/dfgg/xjgg/201610/t20161012_7425826.htm', '安徽', ' 枞阳县钱桥镇中心卫生院\n ', '2016-10-12 17:37:13', ' \n询价公告\n ', '3');
INSERT INTO `tender_info` VALUES ('76', '北京医院2016年第三批医疗设备采购项目公开招标公告北京\n', 'http://www.ccgp.gov.cn/cggg/zygg/gkzb/201610/t20161012_7423958.htm', '北京', ' 北京医院\n ', '2016-10-12 17:02:21', ' 中国机械进出口(集团)有限公司\n公开招标公告\n ', '3');
INSERT INTO `tender_info` VALUES ('77', '西安医学院附属宝鸡医院医疗设备采购项目二次变更公告陕西\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gzgg/201610/t20161012_7425578.htm', '陕西', ' 西安医学院附属宝鸡医院\n ', '2016-10-12 16:50:20', ' 中海建国际招标有限责任公司\n更正公告\n ', '3');
INSERT INTO `tender_info` VALUES ('78', '苏州市营财招投标咨询服务有限公司关于苏州吴中人民医院电子胃肠镜、超声电子胃镜项目政府采购公开招标结果公告中标公告江苏\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161012_7423205.htm', '江苏', ' 苏州吴中人民医院\n ', '2016-10-12 16:10:31', ' 苏州市营财招投标咨询服务有限公司\n中标公告\n ', '3');
INSERT INTO `tender_info` VALUES ('79', '西吉县中医医院信息化建设设备政府采购项目竞争性谈判公告宁夏\n', 'http://www.ccgp.gov.cn/cggg/dfgg/jzxtpgg/201610/t20161011_7419082.htm', '宁夏', ' 西吉县中医医院\n ', '2016-10-11 17:44:09', ' 宁夏鸿立招标代理有限公司\n竞争性谈判公告\n ', '3');
INSERT INTO `tender_info` VALUES ('80', '广州市花都区卫生和计划生育局采购医疗设备招标项目公开招标公告广东\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161011_7418854.htm', '广东', ' 广州市花都区卫生和计划生育局\n ', '2016-10-11 17:24:15', ' 国义招标股份有限公司\n公开招标公告\n ', '3');
INSERT INTO `tender_info` VALUES ('81', '兰州市第一人民医院彩超等医疗设备采购项目第二次中标公告甘肃\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161011_7415690.htm', '甘肃', ' 兰州市第一人民医院\n ', '2016-10-11 11:30:03', ' 甘肃机械国际招标有限公司\n中标公告\n ', '3');
INSERT INTO `tender_info` VALUES ('82', '德江县人民医院医疗设备采购及安装项目中标（成交）公告贵州\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161011_7414957.htm', '贵州', ' 德江县人民医院\n ', '2016-10-11 10:19:01', ' 贵州德建招投标代理有限公司\n中标公告\n ', '3');
INSERT INTO `tender_info` VALUES ('83', '传染病医院购电子胃镜项目公开招标公告河北\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161010_7412133.htm', '河北', ' 张家口市传染病医院\n ', '2016-10-10 16:08:43', ' 河北华业招标有限公司\n公开招标公告\n ', '3');
INSERT INTO `tender_info` VALUES ('84', '传染病医院购电子胃镜招标公告河北\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161010_7411615.htm', '河北', ' 张家口市传染病医院\n ', '2016-10-10 16:00:29', ' 河北华业招标有限公司\n公开招标公告\n ', '3');
INSERT INTO `tender_info` VALUES ('85', '阳春市人民医院医疗设备招标采购项目公开招标公告【项目编号：YCRY-HW-1617】广东\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161010_7411151.htm', '广东', ' 阳春市人民医院\n ', '2016-10-10 15:32:49', ' 广东五洲采购电子商务有限公司阳江办事处\n公开招标公告\n ', '3');
INSERT INTO `tender_info` VALUES ('86', '上海市政府采购中心第2016-10802号信息--上海交通大学医学院附属仁济医院南院高清胃镜主机系统等医疗设备上海\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161010_7409406.htm', '上海', ' 上海交通大学医学院附属仁济医院南院\n ', '2016-10-10 10:55:05', ' 上海市政府采购中心\n公开招标公告\n ', '3');
INSERT INTO `tender_info` VALUES ('87', '梅河口市中医院采购电子胃肠镜等设备公开招标公告吉林\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161010_7409097.htm', '吉林', ' 梅河口市中医院\n ', '2016-10-10 10:27:46', ' 吉林省北华建设项目管理有限公司\n公开招标公告\n ', '3');
INSERT INTO `tender_info` VALUES ('88', '普陀区人民医院高清电子胃镜肠镜、电子十二指肠镜等的公开招标公告上海\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161010_7408720.htm', '上海', ' 上海市普陀区人民医院\n ', '2016-10-10 09:55:01', ' 上海市普陀区政府采购中心\n公开招标公告\n ', '3');
INSERT INTO `tender_info` VALUES ('89', '大连大学中山临床学院电子胃肠镜系统采购中标公告辽宁\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161010_7408758.htm', '辽宁', ' 大连大学\n ', '2016-10-10 09:52:35', ' 大连市机电设备招标中心\n中标公告\n ', '3');
INSERT INTO `tender_info` VALUES ('90', '景洪市人民医院医疗设备采购项目（二次）【A、D、E、F包招标公告】云南\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161009_7405539.htm', '云南', ' 景洪市人民医院\n ', '2016-10-09 16:10:32', ' 云南通拓招标有限公司\n公开招标公告\n ', '3');
INSERT INTO `tender_info` VALUES ('91', '景洪市人民医院医疗设备采购项目（二次）【A、D、E、F包招标公告】云南\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161009_7405533.htm', '云南', ' 景洪市人民医院\n ', '2016-10-09 16:10:13', ' 云南通拓招标有限公司\n公开招标公告\n ', '3');
INSERT INTO `tender_info` VALUES ('92', '承德医学院附属医院采购医疗设备二次招标公告河北\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161009_7404150.htm', '河北', ' 承德医学院附属医院\n ', '2016-10-09 11:33:54', ' 河北省成套招标有限公司\n公开招标公告\n ', '3');
INSERT INTO `tender_info` VALUES ('93', '黑龙江省农垦牡丹江管理局中心医院专用设备采购项目(二)中标公告黑龙江\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161008_7400181.htm', '黑龙江', ' 黑龙江省农垦牡丹江管理局中心医院\n ', '2016-10-08 15:50:27', ' 黑龙江众成招标有限公司\n中标公告\n ', '3');
INSERT INTO `tender_info` VALUES ('94', '平泉县中医院全高清内窥镜摄像系统设备采购项目公开招标公告河北\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161031_7507121.htm', '河北', ' 平泉县卫生局事业\n ', '2016-10-31 15:05:58', ' 河北恒基建设招标有限公司\n公开招标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('95', '中国特种设备检测研究院质量技术监督能力提升项目公开招标公告北京\n', 'http://www.ccgp.gov.cn/cggg/zygg/gkzb/201610/t20161031_7506895.htm', '北京', ' 中国特种设备检测研究院\n ', '2016-10-31 14:16:39', ' 中国仪器进出口(集团)公司\n公开招标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('96', '萍乡市公共资源交易中心关于萍乡市第二人民医院耳内窥镜影像系统及图文工作站（招标编号：TPX2016-116）成交结果公告江西\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161028_7501627.htm', '江西', ' 萍乡市二医院\n ', '2016-10-28 16:23:15', ' 萍乡市公共资源交易中心\n中标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('97', '浦东新区公利医院腹腔镜等项目国际招标评标结果公示上海\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161028_7499931.htm', '上海', ' 上海市浦东新区公利医院\n ', '2016-10-28 16:06:11', ' 上海社发项目管理服务有限公司\n中标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('98', '浦东新区中医医院鼻胃镜、钼靶项目- 评标结果公示公告上海\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161028_7499692.htm', '上海', ' 上海市浦东新区中医医院\n ', '2016-10-28 16:04:47', ' 上海社发项目管理服务有限公司\n中标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('99', '上海市儿童医院高清电子内窥镜系统等医疗设备的中标公告上海\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161028_7499303.htm', '上海', ' 上海市儿童医院\n ', '2016-10-28 15:59:27', ' 上海市政府采购中心\n中标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('100', '甘肃林业职业技术学院汽车类专业群实训基地建设项目公开招标公告甘肃\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161028_7499135.htm', '甘肃', ' 甘肃林业职业技术学院\n ', '2016-10-28 15:56:34', ' 甘肃鑫禾国际招标有限公司\n公开招标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('101', '上海东松医疗科技有限公司——华东医院内窥镜摄像系统等设备国际公开招标采购评审结果公告上海\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161028_7498712.htm', '上海', ' 华东医院\n ', '2016-10-28 15:51:52', ' 上海东松医疗科技有限公司\n中标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('102', '鼻窦内窥镜等设备的中标公告上海\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161028_7498491.htm', '上海', ' 复旦大学附属金山医院\n ', '2016-10-28 15:50:36', ' 上海市金山区政府采购中心\n中标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('103', '浦东新区公利医院血液分析仪等项目的中标公告上海\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161028_7497900.htm', '上海', ' 上海市浦东新区公利医院\n ', '2016-10-28 15:46:01', ' 上海社发项目管理服务有限公司\n中标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('104', '上海健康医学院医用内窥镜检测装置的延期公告上海\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gzgg/201610/t20161028_7497360.htm', '上海', ' 上海健康医学院\n ', '2016-10-28 15:36:22', ' 上海欣声招标服务中心有限公司\n更正公告\n ', '1');
INSERT INTO `tender_info` VALUES ('105', '上海健康医学院医用内窥镜检测装置的延期公告上海\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gzgg/201610/t20161028_7497359.htm', '上海', ' 上海健康医学院\n ', '2016-10-28 15:36:21', ' 上海欣声招标服务中心有限公司\n更正公告\n ', '1');
INSERT INTO `tender_info` VALUES ('106', '江西省锅炉压力容器检验检测研究院鹰潭分院逆变交叉旋转磁场探伤仪和工业视频内窥镜采购（采购编号：JXZYGX2016-09-26322）询价（自行）采购成交结果公告江西\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161028_7496001.htm', '江西', ' 江西省锅炉压力容器检验检测研究院鹰潭分院\n ', '2016-10-28 14:34:09', ' 江西省锅炉压力容器检验检测研究院鹰潭分院\n中标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('107', '福建医科大学附属第一医院医用内窥镜采购公开招标公告福建\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161028_7495111.htm', '福建', ' 福建医科大学附属第一医院\n ', '2016-10-28 10:59:23', ' 福建中实招标有限公司\n公开招标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('108', '江西省机电设备招标有限公司关于赣南医学院第一附属医院采购双定位体外碎石机等设备项目(招标编号：JTXC2016040097)电子化公开招标的中标公告江西\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161027_7493418.htm', '江西', ' 赣南医学院第一附属医院\n ', '2016-10-27 20:47:51', ' 江西省机电设备招标有限公司\n中标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('109', '关于榆阳区人民医院医疗设备采购项目变更公告陕西\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gzgg/201610/t20161027_7493810.htm', '陕西', ' 榆阳区人民医院\n ', '2016-10-27 17:49:04', ' 陕西省采购招标有限责任公司\n更正公告\n ', '1');
INSERT INTO `tender_info` VALUES ('110', '福建医科大学附属第一医院消化内镜采购项目公开招标公告福建\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161027_7493070.htm', '福建', ' 福建医科大学附属第一医院\n ', '2016-10-27 17:32:45', ' 福建省金丰招标代理有限公司\n公开招标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('111', '四川大学华西口腔医院口腔种植手术内窥镜系统等采购项目（第二次）公开招标公告四川\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161027_7492347.htm', '四川', ' 四川大学华西口腔医院\n ', '2016-10-27 16:32:40', ' 四川国际招标有限责任公司\n公开招标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('112', '兰州市西固区人民医院电子内窥镜系统采购项目中标公告甘肃\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161027_7491887.htm', '甘肃', ' 兰州市西固区人民医院\n ', '2016-10-27 16:26:40', ' 甘肃浩鑫工程建设监理有限责任公司\n中标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('113', '赤峰农牧学校医疗设备（二次）公开招标招标公告内蒙古\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161027_7491809.htm', '内蒙古', ' 赤峰农牧学校\n ', '2016-10-27 16:22:14', ' 赤峰市公共资源交易中心\n公开招标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('114', '辽源市中心医院眼底激光治疗仪、治疗型电子支气管镜及胸腔数字内窥镜显像系统采购项目中标公示吉林\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161027_7491323.htm', '吉林', ' 辽源市中心医院\n ', '2016-10-27 15:42:47', ' 中金招标有限责任公司\n中标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('115', '浙江国际招（投）标公司关于医疗设备的中标结果公示浙江\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161027_7493476.htm', '浙江', ' 玉环县人民医院\n ', '2016-10-27 14:22:05', ' 浙江国际招（投）标公司\n中标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('116', '广西建通工程咨询有限责任公司（GXJTHN-ZFGK2016065）中标公告海南\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161027_7489214.htm', '海南', ' 琼海市人民医院\n ', '2016-10-27 10:15:51', ' 广西建通工程咨询有限责任公司\n中标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('117', '东营市垦利区人民医院脊柱内窥镜手术系统项目政府采购中标公告山东\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161027_7488810.htm', '山东', ' 东营市垦利区人民医院\n ', '2016-10-27 09:25:30', ' 东营鑫城招标代理有限公司\n中标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('118', '晋中市第四人民医院医疗器械采购竞争性谈判公告山西\n', 'http://www.ccgp.gov.cn/cggg/dfgg/jzxtpgg/201610/t20161027_7488898.htm', '山西', ' 晋中市第四人民医院\n ', '2016-10-27 09:11:06', ' 山西汇鑫源工程招标代理有限公司\n竞争性谈判公告\n ', '1');
INSERT INTO `tender_info` VALUES ('119', '首都医科大学附属北京中医医院2016年第三批设备采购项目中标公告北京\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161026_7488061.htm', '北京', ' 首都医科大学附属北京中医医院\n ', '2016-10-26 20:27:40', ' 中机国际招标有限公司\n中标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('120', '乐山市犍为县罗城中心卫生院眼耳鼻喉科设备采购询价公告四川\n', 'http://www.ccgp.gov.cn/cggg/dfgg/xjgg/201610/t20161026_7487253.htm', '四川', ' 乐山市犍为县罗城中心卫生院\n ', '2016-10-26 16:47:38', ' 四川中创招标代理有限公司\n询价公告\n ', '1');
INSERT INTO `tender_info` VALUES ('121', '梧州市龙圩区妇幼保健院乳导管内窥镜系统采购竞争性谈判公告广西\n', 'http://www.ccgp.gov.cn/cggg/dfgg/jzxtpgg/201610/t20161026_7486056.htm', '广西', ' 梧州市龙圩区妇幼保健院\n ', '2016-10-26 15:54:12', ' 广西天柱建设管理有限公司\n竞争性谈判公告\n ', '1');
INSERT INTO `tender_info` VALUES ('122', '肃南县人民医院医疗设备高清腹腔镜系统采购项目公开招标公告甘肃\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161026_7485911.htm', '甘肃', ' 肃南县人民医院\n ', '2016-10-26 15:43:15', ' 甘肃远华国际招标有限公司\n公开招标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('123', '仙游县妇幼保健院关于脉动真空蒸汽灭菌器（双开门），全自动清洗消毒机，低温等离子体灭菌器，干燥柜，超声波清洗机，医用纯水机，器械柜，敷料柜等标前技术参数征集的公告它福建\n', 'http://www.ccgp.gov.cn/cggg/dfgg/qtgg/201610/t20161026_7485355.htm', '福建', ' 仙游县妇幼保健院\n ', '2016-10-26 14:52:09', ' 莆田龙兴招标代理有限公司\n其它公告\n ', '1');
INSERT INTO `tender_info` VALUES ('124', '武平县采购中心询价采购结果公示-WPXJCG2016-39福建\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161026_7484836.htm', '福建', ' 武平县人民法院\n ', '2016-10-26 00:00:00', ' 武平县采购中心\n中标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('125', '马鞍山市市立医疗集团电子内窥镜系统采购（第二次）安徽\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161025_7481479.htm', '安徽', ' 马鞍山市市立医疗集团\n ', '2016-10-25 17:16:38', ' 马鞍山市市立医疗集团\n公开招标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('126', '四川大学华西口腔医院口腔种植手术内窥镜系统等采购项目废标公告/流标公告四川\n', 'http://www.ccgp.gov.cn/cggg/dfgg/fblbgg/201610/t20161025_7479988.htm', '四川', ' 四川大学华西口腔医院\n ', '2016-10-25 15:11:49', ' 四川国际招标有限责任公司\n废标流标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('127', '吉林市中心医院购置内窥镜年保服务项目单一来源公告吉林\n', 'http://www.ccgp.gov.cn/cggg/dfgg/dylygg/201610/t20161025_7477386.htm', '吉林', ' 吉林市中心医院\n ', '2016-10-25 10:00:39', ' 吉林市政府采购中心\n单一来源公告\n ', '1');
INSERT INTO `tender_info` VALUES ('128', '关节镜摄像头、等离子刀、气动助力沙滩椅等采购项目招标公告福建\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161025_7476626.htm', '福建', ' 福建医科大学附属第一医院\n ', '2016-10-25 00:31:21', ' 厦门市公物采购招投标有限公司\n公开招标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('129', '广西新宇建设项目管理有限公司关于高清腹腔镜系统、手术器械等采购【XYZC2016(GL)A009】招标公告广西\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161024_7476122.htm', '广西', ' 桂林市人民医院\n ', '2016-10-24 18:26:23', ' 广西新宇建设项目管理有限公司\n公开招标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('130', '明光市中医院纤维支气管采购与安装招标公告安徽\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161024_7474481.htm', '安徽', ' 明光市中医院\n ', '2016-10-24 16:38:21', ' 明光市中医院\n公开招标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('131', '广州市增城区新塘镇中心卫生院采购医疗设备招标项目公开招标公告广东\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161024_7473959.htm', '广东', ' 广州市增城区新塘镇中心卫生院\n ', '2016-10-24 16:15:55', ' 国义招标股份有限公司\n公开招标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('132', '明光市中医院高清染色电子结肠镜采购与安装招标公告安徽\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161024_7473163.htm', '安徽', ' 明光市中医院\n ', '2016-10-24 15:24:54', ' 明光市中医院\n公开招标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('133', '兴义市人民医院虚似训练系统采购项目（二次）采购公告贵州\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161024_7470979.htm', '贵州', ' 兴义市人民医院\n ', '2016-10-24 10:45:50', ' 贵州建工监理咨询有限公司\n公开招标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('134', '青岛开发区第一人民医院医疗设备采购项目单一来源采购的公示单一来源公告山东\n', 'http://www.ccgp.gov.cn/cggg/dfgg/dylygg/201610/t20161024_7470662.htm', '山东', ' 青岛开发区第一人民医院\n ', '2016-10-24 10:23:52', ' 青岛信易和招标有限公司\n单一来源公告\n ', '1');
INSERT INTO `tender_info` VALUES ('135', '福建医科大学附属第一医院关节镜手术系统及手术特殊体位系统项目招标公告福建\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161021_7466627.htm', '福建', ' 福建医科大学附属第一医院\n ', '2016-10-21 16:31:48', ' 福建方兴招标代理有限公司\n公开招标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('136', '龙岩市第一医院医疗器械采购招标补充公告-FJLQ20162151福建\n', 'http://www.ccgp.gov.cn/cggg/dfgg/qtgg/201610/t20161021_7471362.htm', '福建', ' 福建省龙岩市第一医院\n ', '2016-10-21 16:03:50', ' 福建立勤招标代理有限公司\n其它公告\n ', '1');
INSERT INTO `tender_info` VALUES ('137', '福建立勤招标代理有限公司关于福建省龙岩市第一医院鼻内窥镜70°、鼻内窥镜30°、纤维鼻咽喉镜、生物刺激反馈仪（便携性）、肌电反馈超声及电疗治疗仪（双频超声波治疗仪）、血液滤过机、血透机、光学生物测量仪、眼表综合分析仪、智能下肢反馈康复训练系统、半导体激光治疗机采购项目采购补充公告FJLQ20162151福建\n', 'http://www.ccgp.gov.cn/cggg/dfgg/qtgg/201610/t20161021_7471446.htm', '福建', ' 福建省龙岩市第一医院\n ', '2016-10-21 15:55:00', ' 福建立勤招标代理有限公司\n其它公告\n ', '1');
INSERT INTO `tender_info` VALUES ('138', '福建经发-公开招标-2016-JF094胶囊式内窥镜等采购结果公告福建\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161021_7465627.htm', '福建', ' 厦门市第五医院\n ', '2016-10-21 14:58:56', ' 福建经发招标代理有限公司\n中标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('139', '上海市静安区政府采购中心——关于静安区中医医院电子内窥镜系统项目采购的公开招标公告上海\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161021_7465320.htm', '上海', ' 上海市闸北区中医医院\n ', '2016-10-21 14:55:03', ' 上海市静安区政府采购中心\n公开招标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('140', '北京市医疗器械检验所医疗器械专用检验仪器购置中标公告北京\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161021_7465524.htm', '北京', ' 北京市医疗器械检验所\n ', '2016-10-21 14:45:20', ' 北京国际招标有限公司\n中标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('141', '福建医科大学附属第一医院关节镜手术系统及手术特殊体位系统项目公开招标公告福建\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161021_7464952.htm', '福建', ' 福建医科大学附属第一医院\n ', '2016-10-21 13:46:37', ' 福建方兴招标代理有限公司\n公开招标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('142', '福建省智信招标有限公司关于宁德市医院医疗设备采购的中标公告福建\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161020_7462381.htm', '福建', ' 宁德市医院\n ', '2016-10-20 18:37:00', ' 福建省智信招标有限公司\n中标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('143', '浙江国际招（投）标公司关于医疗设备的中标结果公示浙江\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161020_7482470.htm', '浙江', ' 乐清市卫生和计划生育局\n ', '2016-10-20 17:24:50', ' 浙江国际招（投）标公司\n中标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('144', '宁夏医科大学总医院乳管内窥镜采购项目中标公告宁夏\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161020_7461587.htm', '宁夏', ' 宁夏医科大学总医院\n ', '2016-10-20 17:18:39', ' 宁夏黄河远东国际招标有限公司\n中标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('145', '湛江市妇幼保健院采购医疗设备项目（0724-1601D69N3785）公开招标公告广东\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161020_7461168.htm', '广东', ' 湛江市妇幼保健院\n ', '2016-10-20 16:46:52', ' 国义招标股份有限公司\n公开招标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('146', '湛江市妇幼保健院采购医疗设备项目（0724-1601D69N3785）公开招标公告广东\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161020_7461572.htm', '广东', ' 湛江市妇幼保健院\n ', '2016-10-20 16:46:22', ' 国义招标股份有限公司\n公开招标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('147', '江西国政招标咨询有限公司关于江西省江西中医药大学第二附属医院ICU进口设备等采购项目05包（采购编号：1313-154GZ1610001/05）国际公开招标第二次更正公告江西\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gzgg/201610/t20161020_7459627.htm', '江西', ' 江西中医药大学第二附属医院\n ', '2016-10-20 16:13:17', ' 江西中医药大学第二附属医院\n更正公告\n ', '1');
INSERT INTO `tender_info` VALUES ('148', '三原县医院医疗设备采购项目中标公告陕西\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161020_7459184.htm', '陕西', ' 三原县医院\n ', '2016-10-20 15:27:09', ' 中海建国际招标有限责任公司\n中标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('149', '西双版纳州公安消防支队检测设备采购项目中标公告云南\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161020_7460625.htm', '云南', ' 西双版纳州公安消防支队\n ', '2016-10-20 11:10:47', ' 云南谦和招标有限公司\n中标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('150', '江西国政招标咨询有限公司关于江西省江西中医药大学第二附属医院ICU进口设备等采购项目01～05包（采购编号：1313-154GZ1610001/01～05）国际公开招标更正公告江西\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gzgg/201610/t20161020_7456844.htm', '江西', ' 江西中医药大学第二附属医院\n ', '2016-10-20 08:14:27', ' 江西中医药大学第二附属医院\n更正公告\n ', '1');
INSERT INTO `tender_info` VALUES ('151', '楚雄彝族自治州人民医院购置医疗设备项目招标公告云南\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161019_7460413.htm', '云南', ' 楚雄彝族自治州人民医院\n ', '2016-10-19 18:10:59', ' 昆明德缘工程咨询有限公司\n公开招标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('152', '普洱市公安消防支队“两室一站”建设项目招标公告云南\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161019_7460144.htm', '云南', ' 普洱市公安消防支队\n ', '2016-10-19 16:10:30', ' 云南中咨海外咨询有限公司\n公开招标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('153', '广州医科大学附属肿瘤医院采购可视气管插管镜等医疗设备项目(0724-1601D80N3300)中标公告广东\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161019_7454684.htm', '广东', ' 广州医科大学附属肿瘤医院\n ', '2016-10-19 15:48:55', ' 国义招标股份有限公司\n中标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('154', '山东省立医院医疗设备采购公开招标公告山东\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161014_7432359.htm', '山东', ' 山东省立医院\n ', '2016-10-14 10:54:06', ' 山东新亚欧招投标有限公司\n公开招标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('155', '庆阳市农业科学研究院2016年省级财政农牧渔业新品种新技术引进推广与良种场设备采购项目成交公告甘肃\n', 'http://www.ccgp.gov.cn/cggg/dfgg/cjgg/201610/t20161014_7432204.htm', '甘肃', ' 庆阳市农业科学研究院\n ', '2016-10-14 10:32:59', ' 甘肃恒达建设项目管理咨询有限责任公司\n成交公告\n ', '1');
INSERT INTO `tender_info` VALUES ('156', '佛山市南海区人民医院蓝激光胃肠镜摄像系统单一来源公示广东\n', 'http://www.ccgp.gov.cn/cggg/dfgg/dylygg/201610/t20161014_7432004.htm', '广东', ' 佛山市南海区人民医院\n ', '2016-10-14 10:19:42', ' 广东省机电设备招标公司佛山分公司\n单一来源公告\n ', '1');
INSERT INTO `tender_info` VALUES ('157', '惠州市中心人民医院设备维护和保养采购项目的综合评分法中标公告广东\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161014_7431201.htm', '广东', ' 惠州市中心人民医院\n ', '2016-10-14 08:32:51', ' 惠州建安工程项目管理有限公司\n中标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('158', '珠海市金湾区红旗社区卫生服务中心直肠内窥镜、乙状结肠内窥镜系统医疗设备采购项目（项目编号：CLPSP16ZH03ZC20）中标公告广东\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161013_7429699.htm', '广东', ' 珠海市金湾区红旗社区卫生服务中心\n ', '2016-10-13 17:03:28', ' 广东采联采购招标有限公司(珠海分公司)\n中标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('159', '特种设备检测仪器设备安徽\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161013_7429003.htm', '安徽', ' 安徽省特种设备检测院\n ', '2016-10-13 16:04:07', ' 安徽合肥公共资源交易中心\n公开招标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('160', '特种设备检测仪器设备安徽\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161013_7429002.htm', '安徽', ' 安徽省特种设备检测院\n ', '2016-10-13 16:04:07', ' 安徽合肥公共资源交易中心\n公开招标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('161', '特种设备检测仪器设备安徽\n', 'http://www.ccgp.gov.cn/cggg/dfgg/jzxtpgg/201610/t20161013_7428825.htm', '安徽', ' 安徽省特种设备检测院\n ', '2016-10-13 16:04:02', ' 安徽合肥公共资源交易中心\n竞争性谈判公告\n ', '1');
INSERT INTO `tender_info` VALUES ('162', '北京医院2016年第三批医疗设备采购项目公开招标公告北京\n', 'http://www.ccgp.gov.cn/cggg/zygg/gkzb/201610/t20161012_7423958.htm', '北京', ' 北京医院\n ', '2016-10-12 17:02:21', ' 中国机械进出口(集团)有限公司\n公开招标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('163', '武警总医院医疗设备供应商征集公告北京\n', 'http://www.ccgp.gov.cn/cggg/dfgg/qtgg/201610/t20161012_7422890.htm', '北京', ' 武警总医院\n ', '2016-10-12 15:46:24', ' 武警总医院\n其它公告\n ', '1');
INSERT INTO `tender_info` VALUES ('164', '汕头大学医学院第二附属医院采购医疗设备招标项目中标公告广东\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161012_7421611.htm', '广东', ' 汕头大学医学院第二附属医院\n ', '2016-10-12 12:16:57', ' 国义招标股份有限公司\n中标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('165', '中国国际经济技术交流中心医疗物资项目公开招标公告北京\n', 'http://www.ccgp.gov.cn/cggg/zygg/gkzb/201610/t20161011_7419236.htm', '北京', ' 中国国际经济技术交流中心\n ', '2016-10-11 17:56:20', ' 中技国际招标有限公司\n公开招标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('166', '磁县妇幼保健院采购乳导管内窥镜系统项目中标公示河北\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161011_7418980.htm', '河北', ' 妇幼保健院\n ', '2016-10-11 17:32:40', ' 石家庄宇辰招标代理有限公司\n中标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('167', '酒泉市质监局特种设备检验所酒泉市质监局特检所新建敦煌检验站检验设备采购项目中标公告甘肃\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161011_7415726.htm', '甘肃', ' 酒泉市质监局特种设备检验所\n ', '2016-10-11 11:36:55', ' 甘肃中政招投标有限公司\n中标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('168', '上海市普陀区中心医院电子内窥镜系统、彩色多普勒超声诊断系统的公开招标公告上海\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161011_7415306.htm', '上海', ' 上海市普陀区中心医院\n ', '2016-10-11 10:55:13', ' 上海市普陀区政府采购中心\n公开招标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('169', '连南瑶族自治县人民医院胆道镜、宫腔镜采购项目的中标公告 （项目编号:HXCG2016-020）广东\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161010_7408984.htm', '广东', ' 连南瑶族自治县人民医院\n ', '2016-10-10 10:11:01', ' 清远市华信招标有限公司\n中标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('170', '漳州诚毅招标代理有限公司云霄县陈岱中心卫生院中标公告-ZZCY（2016）TP292福建\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161010_7411050.htm', '福建', ' 云霄县陈岱中心卫生院\n ', '2016-10-10 00:00:00', ' 漳州诚毅招标代理有限公司\n中标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('171', '辽宁省大连市人民检察院手机管控系统采购项目招标公告辽宁\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161009_7407814.htm', '辽宁', ' 辽宁省大连市人民检察院\n ', '2016-10-09 20:26:20', ' 大连卓肯项目管理有限公司\n公开招标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('172', '广州市荔湾区中医医院采购光子嫩肤机和耳鼻喉科检查治疗台及鼻内窥镜系统招标项目（项目编号：0724-1601D61N3451）公开招标公告广东\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161009_7404205.htm', '广东', ' 广州市荔湾区中医医院\n ', '2016-10-09 12:10:11', ' 国义招标股份有限公司\n公开招标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('173', '承德医学院附属医院采购医疗设备二次招标公告河北\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161009_7404150.htm', '河北', ' 承德医学院附属医院\n ', '2016-10-09 11:33:54', ' 河北省成套招标有限公司\n公开招标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('174', '浙江国际招（投）标公司关于海盐县卫生计生局常规医疗设备的公开招标公告浙江\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161008_7402094.htm', '浙江', ' 海盐县卫生计生局\n ', '2016-10-08 20:10:07', ' 浙江国际招（投）标公司\n公开招标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('175', '唐山市特种设备监督检验所特种设备安全管理技术改造提升项目及LNG气瓶检验设备公开招标公告河北\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161008_7401027.htm', '河北', ' 唐山市特种设备监督检验所\n ', '2016-10-08 16:49:40', ' 河北省国际招标有限公司\n公开招标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('176', '2016年省级财政农牧渔业新品种新技术引进推广与良种场设备采购项目询价公告甘肃\n', 'http://www.ccgp.gov.cn/cggg/dfgg/xjgg/201610/t20161008_7399951.htm', '甘肃', ' 庆阳市农业科学研究院\n ', '2016-10-08 16:03:55', ' 甘肃恒达建设项目管理咨询有限责任公司\n询价公告\n ', '1');
INSERT INTO `tender_info` VALUES ('177', '关于“阜阳市颍州区卫生和计划生育委员会基层医疗卫生机构设备采购项目”的补充通知安徽\n', 'http://www.ccgp.gov.cn/cggg/dfgg/qtgg/201610/t20161008_7399595.htm', '安徽', ' 采购中心名称\n ', '2016-10-08 15:23:10', ' 采购中心名称\n其它公告\n ', '1');
INSERT INTO `tender_info` VALUES ('178', '（佛山市南海区中医院）南海区中医院购脊柱内窥镜微创手术系统（后路）（NHZJ20160300G0229）的综合评分法中标公告广东\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161008_7399313.htm', '广东', ' 佛山市南海区中医院\n ', '2016-10-08 15:12:15', ' 国义招标股份有限公司佛山分公司\n中标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('179', '唐山市特种设备监督检验所特种设备安全管理技术改造提升项目及LNG气瓶检验设备X0620招标公告河北\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161008_7398217.htm', '河北', ' 唐山市特种设备监督检验所\n ', '2016-10-08 11:30:34', ' 河北省国际招标有限公司\n公开招标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('180', '惠州市第一人民医院医疗设备采购项目（HZBH2016ZC0300）的综合评分法中标公告广东\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161019_7453968.htm', '广东', ' 惠州市第一人民医院\n ', '2016-10-19 14:23:58', ' 惠州市柏亨咨询管理有限公司\n中标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('181', '武警总医院医疗设备供应商征集公告更正公告北京\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gzgg/201610/t20161019_7452802.htm', '北京', ' 武警总医院\n ', '2016-10-19 10:53:46', ' 武警总医院\n更正公告\n ', '1');
INSERT INTO `tender_info` VALUES ('182', '龙岩市第一医院医疗器械采购招标公告-FJLQ20162151福建\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161019_7459891.htm', '福建', ' 福建省龙岩市第一医院\n ', '2016-10-19 10:10:20', ' 福建立勤招标代理有限公司\n公开招标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('183', '上海健康医学院医用内窥镜检测装置中上海健康医学院医用内窥镜检测装置的失败公告上海\n', 'http://www.ccgp.gov.cn/cggg/dfgg/fblbgg/201610/t20161019_7451881.htm', '上海', ' 上海健康医学院\n ', '2016-10-19 09:25:01', ' 上海欣声招标服务中心有限公司\n废标流标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('184', '龙岩市第一医院医疗器械采购招标公告-FJLQ20162151福建\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161019_7452515.htm', '福建', ' 福建省龙岩市第一医院\n ', '2016-10-19 08:35:38', ' 福建立勤招标代理有限公司\n公开招标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('185', '江西国政招标咨询有限公司关于江西省江西中医药大学第二附属医院ICU进口设备等采购项目01~05包（采购编号：1313-154GZ1610001/01～05）国际公开招标公告江西\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161018_7448935.htm', '江西', ' 江西中医药大学第二附属医院\n ', '2016-10-18 15:45:46', ' 江西国政招标咨询有限公司\n公开招标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('186', '中国人民武装警察部队上海市总队军事装备采购项目公开招标公告上海\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161018_7448898.htm', '上海', ' 中国人民武装警察部队上海市总队\n ', '2016-10-18 15:18:16', ' 上海浦成机电设备招标有限公司\n公开招标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('187', '甘肃省人民医院医疗器械政府采购项目中标公告甘肃\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161017_7445557.htm', '甘肃', ' 甘肃省人民医院\n ', '2016-10-17 22:59:13', ' 甘肃省招标中心\n中标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('188', '广宁县人民医院进口电子内窥镜公开招标公告广东\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161017_7443951.htm', '广东', ' 广宁县人民医院\n ', '2016-10-17 17:12:36', ' 广东明盈招标代理有限公司\n公开招标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('189', '灵武市人民医院心电图机等医疗设备采购项目公开招标公告宁夏\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161017_7443255.htm', '宁夏', ' 灵武市人民医院\n ', '2016-10-17 16:31:47', ' 宁夏顺泰招标代理有限公司\n公开招标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('190', '大连医科大学附属第二医院电子激光内窥镜系统采购招标公告辽宁\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161017_7451436.htm', '辽宁', ' 无详细信息\n ', '2016-10-17 15:30:01', ' 大连市机电设备招标中心\n公开招标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('191', '广州市花都区第二人民医院2016年第二季度设备采购项目公开招标公告广东\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161017_7441937.htm', '广东', ' 广州市花都区第二人民医院\n ', '2016-10-17 15:03:55', ' 广东秤风采购招标有限公司\n公开招标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('192', '大理市公安局反恐防爆防护装备采购项目二次中标公示云南\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161017_7441750.htm', '云南', ' 大理市公安局\n ', '2016-10-17 14:10:26', ' 云南玮元工程咨询有限公司\n中标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('193', '萍乡市公共资源交易中心关于萍乡市第二人民医院耳内窥镜影像系统及图文工作站（招标编号：TPX2016-116）竞争性谈判采购公告江西\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161017_7441242.htm', '江西', ' 萍乡市二医院\n ', '2016-10-17 13:04:13', ' 萍乡市公共资源交易中心\n公开招标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('194', '徐闻县妇幼保健院医疗设备采购项目（项目编号：0835-1601E14N1681）的中标公告广东\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161014_7437272.htm', '广东', ' 徐闻县妇幼保健院\n ', '2016-10-14 17:47:11', ' 广东元正招标采购有限公司\n中标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('195', '深圳武警医院电子支气管镜采购项目中标公告广东\n', 'http://www.ccgp.gov.cn/cggg/dfgg/zbgg/201610/t20161014_7437094.htm', '广东', ' 深圳武警医院\n ', '2016-10-14 17:37:43', ' 深圳市国信招标有限公司\n中标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('196', '浙江国际招（投）标公司关于温州医科大学附属第一医院消化道内窥镜系统的公开招标公告浙江\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161014_7437961.htm', '浙江', ' 温州医科大学附属第一医院\n ', '2016-10-14 17:23:54', ' 浙江国际招（投）标公司\n公开招标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('197', '赤峰市家畜改良工作站其他货物(羊人工授精设备)公开招标招标公告内蒙古\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161014_7436618.htm', '内蒙古', ' 赤峰市家畜改良工作站\n ', '2016-10-14 17:22:28', ' 赤峰市公共资源交易中心\n公开招标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('198', '宁波市北仑区大碶街道卫生院(社区卫生服务中心)采购医疗设备项目的采购公告浙江\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161014_7433587.htm', '浙江', ' 宁波市北仑区大碶街道卫生院(社区卫生服务中心)\n ', '2016-10-14 14:21:40', ' 宁波市国际招标有限公司\n公开招标公告\n ', '1');
INSERT INTO `tender_info` VALUES ('199', '甘肃省武威肿瘤医院高清3D腹腔镜系统等医用设备采购项目公开招标公告甘肃\n', 'http://www.ccgp.gov.cn/cggg/dfgg/gkzb/201610/t20161014_7433222.htm', '甘肃', ' 甘肃省武威肿瘤医院\n ', '2016-10-14 13:02:17', ' 甘肃西北招标有限公司\n公开招标公告\n ', '1');
