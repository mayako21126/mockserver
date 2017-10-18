/*
Navicat MySQL Data Transfer

Source Server         : 是
Source Server Version : 50719
Source Host           : 192.168.2.204:3306
Source Database       : mockserver

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2017-10-11 17:13:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for mock_mockserver
-- ----------------------------
DROP TABLE IF EXISTS `mock_mockserver`;
CREATE TABLE `mock_mockserver` (
  `mockid` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '接口ID，自动生成',
  `project_id` varchar(20) NOT NULL DEFAULT '' COMMENT '关联的项目ID',
  `api_name` varchar(2000) NOT NULL DEFAULT '' COMMENT '接口名称',
  `api_url` varchar(2000) NOT NULL DEFAULT '' COMMENT '接口地址',
  `api_url_regexp` varchar(2000) DEFAULT NULL COMMENT '接口地址正则',
  `api_content` longtext NOT NULL COMMENT '接口响应数据',
  `api_content_desc` longtext COMMENT '接口响应数据的参数描述',
  `is_proxy` int(1) DEFAULT '0' COMMENT '是否开启二次代理，0为不开启，1为开启',
  `proxy_prefix` varchar(2000) DEFAULT NULL COMMENT '代理前缀',
  `api_header` longtext COMMENT '接口请求HEADER参数',
  `api_header_desc` longtext COMMENT '接口请求HEADER参数说明',
  `api_parms` longtext COMMENT '接口请求POST等表单请求参数',
  `api_parms_desc` longtext COMMENT '接口请求POST等表单请求参数说明',
  `api_type` varchar(11) DEFAULT 'get' COMMENT '接口请求类型，HTTP请求类型，GET,PUT,POST等',
  `api_state_code` int(11) DEFAULT '200' COMMENT '接口响应状态码，200，404等',
  `exact_match` int(1) DEFAULT '1' COMMENT '接口匹配类型，1为全局匹配，0为只匹配【?】前面部分',
  `is_mockjs` int(1) DEFAULT '0' COMMENT '接口响应数据是否使用mockjs',
  `api_lazy_time` int(10) DEFAULT '0' COMMENT '接口响应延迟时间，单位为毫秒，默认0',
  `api_querys_desc` longtext COMMENT '接口请求url中？后参数说明',
  `api_req_header` longtext COMMENT '接口响应HEADER参数',
  `api_req_header_desc` longtext COMMENT '接口响应HEADER参数说明',
  PRIMARY KEY (`mockid`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mock_mockserver
-- ----------------------------
INSERT INTO `mock_mockserver` VALUES ('85', '333', 'mockjs-demo-打开接口-刷新页面数据会随机变化', 'demo1', null, '{\r\n  \"array|1-10\": [\r\n    1,\r\n    2,\r\n    3\r\n  ],\r\n  \"boolean\": true,\r\n  \"null\": null,\r\n  \"number\": 123,\r\n  \"object\": {\r\n    \"a\": \"b\",\r\n    \"c\": \"d\",\r\n    \"e\": \"f\"\r\n  },\r\n  \"string\": \"Hello World\"\r\n}', '{\r\n  \"username\": \"参数值\",\r\n  \"password\": \"参数值\"\r\n}', '0', '', '{\r\n  \"headere1\": \"参数值\",\r\n  \"header2\": \"参数值\"\r\n}', '{\r\n  \"headere1\": \"参数说明\",\r\n  \"header2\": \"参数说明\"\r\n}', '{\r\n  \"username\": \"参数值\",\r\n  \"password\": \"参数值\"\r\n}', '{\r\n  \"username\": \"参数说明\",\r\n  \"password\": \"参数说明\"\r\n}', 'get', '200', '0', '1', '0', '{\r\n  \"query1\": \"参数说明\",\r\n  \"query2\": \"参数说明\"\r\n}', '{\r\n  \"header1\": \"参数值\",\r\n  \"header2\": \"参数值\"\r\n}', '{\r\n  \"headere1\": \"参数说明\",\r\n  \"header2\": \"参数说明\"\r\n}');
INSERT INTO `mock_mockserver` VALUES ('86', '333', '404-code-status-demo-请求返回状态为：404', 'demo2', null, '{\r\n  \"array|1-10\": [\r\n    1,\r\n    2,\r\n    3\r\n  ],\r\n  \"boolean\": true,\r\n  \"null\": null,\r\n  \"number\": 123,\r\n  \"object\": {\r\n    \"a\": \"b\",\r\n    \"c\": \"d\",\r\n    \"e\": \"f\"\r\n  },\r\n  \"string\": \"Hello World\"\r\n}', '{\r\n  \"username\": \"参数值\",\r\n  \"password\": \"参数值\"\r\n}', '0', '', '{\r\n  \"headere1\": \"参数值\",\r\n  \"header2\": \"参数值\"\r\n}', '{\r\n  \"headere1\": \"参数说明\",\r\n  \"header2\": \"参数说明\"\r\n}', '{\r\n  \"username\": \"参数值\",\r\n  \"password\": \"参数值\"\r\n}', '{\r\n  \"username\": \"参数说明\",\r\n  \"password\": \"参数说明\"\r\n}', 'get', '404', '0', '1', '0', '{\r\n  \"query1\": \"参数说明\",\r\n  \"query2\": \"参数说明\"\r\n}', '{\r\n  \"header1\": \"参数值\",\r\n  \"header2\": \"参数值\"\r\n}', '{\r\n  \"headere1\": \"参数说明\",\r\n  \"header2\": \"参数说明\"\r\n}');
INSERT INTO `mock_mockserver` VALUES ('88', '333', 'dealy-3-second-demo-延迟3秒返回数据', 'dealy-3-second-demo', null, '{\r\n  \"array|1-10\": [\r\n    1,\r\n    2,\r\n    3\r\n  ],\r\n  \"boolean\": true,\r\n  \"null\": null,\r\n  \"number\": 123,\r\n  \"object\": {\r\n    \"a\": \"b\",\r\n    \"c\": \"d\",\r\n    \"e\": \"f\"\r\n  },\r\n  \"string\": \"Hello World\"\r\n}', '{\r\n  \"username\": \"参数值\",\r\n  \"password\": \"参数值\"\r\n}', '0', '', '{\r\n  \"headere1\": \"参数值\",\r\n  \"header2\": \"参数值\"\r\n}', '{\r\n  \"headere1\": \"参数说明\",\r\n  \"header2\": \"参数说明\"\r\n}', '{\r\n  \"username\": \"参数值\",\r\n  \"password\": \"参数值\"\r\n}', '{\r\n  \"username\": \"参数说明\",\r\n  \"password\": \"参数说明\"\r\n}', 'get', '404', '0', '1', '3000', '{\r\n  \"query1\": \"参数说明\",\r\n  \"query2\": \"参数说明\"\r\n}', '{\r\n  \"header1\": \"参数值\",\r\n  \"header2\": \"参数值\"\r\n}', '{\r\n  \"headere1\": \"参数说明\",\r\n  \"header2\": \"参数说明\"\r\n}');
INSERT INTO `mock_mockserver` VALUES ('89', '333', 'switch-to-real-data-点击关闭二次代理，将访问模拟数据，开启二次代理-访问真实服务的数据', 'demo/switch-to-real-data', null, '{\r\n  \"array|1-10\": [\r\n    1,\r\n    2,\r\n    3\r\n  ],\r\n  \"boolean\": true,\r\n  \"null\": null,\r\n  \"number\": 123,\r\n  \"object\": {\r\n    \"a\": \"b\",\r\n    \"c\": \"d\",\r\n    \"e\": \"f\"\r\n  },\r\n  \"string\": \"Hello World\"\r\n}', '{\r\n  \"username\": \"参数值\",\r\n  \"password\": \"参数值\"\r\n}', '1', 'http://47.93.62.181:8034', '{\r\n  \"headere1\": \"参数值\",\r\n  \"header2\": \"参数值\"\r\n}', '{\r\n  \"headere1\": \"参数说明\",\r\n  \"header2\": \"参数说明\"\r\n}', '{\r\n  \"username\": \"参数值\",\r\n  \"password\": \"参数值\"\r\n}', '{\r\n  \"username\": \"参数说明\",\r\n  \"password\": \"参数说明\"\r\n}', 'get', '404', '0', '1', '0', '{\r\n  \"query1\": \"参数说明\",\r\n  \"query2\": \"参数说明\"\r\n}', '{\r\n  \"header1\": \"参数值\",\r\n  \"header2\": \"参数值\"\r\n}', '{\r\n  \"headere1\": \"参数说明\",\r\n  \"header2\": \"参数说明\"\r\n}');
INSERT INTO `mock_mockserver` VALUES ('98', '333', 'RESTful格式示例-修改 :id,:user试试，如 search/4/tom', 'search/:id/:name', '%5Esearch%5C/((?:%5B%5E%5C/%5D+?))%5C/((?:%5B%5E%5C/%5D+?))(?:%5C/(?=$))?$', '{\r\n  \"array\": [\r\n    1,\r\n    2,\r\n    3\r\n  ],\r\n  \"boolean\": true,\r\n  \"null\": null,\r\n  \"number\": 123,\r\n  \"object\": {\r\n    \"a\": \"b\",\r\n    \"c\": \"d\",\r\n    \"e\": \"f\"\r\n  },\r\n  \"string\": \"Hello World\"\r\n}', '{\r\n  \"username\": \"参数值\",\r\n  \"password\": \"参数值\"\r\n}', '0', '', '{\r\n  \"headere1\": \"参数值\",\r\n  \"header2\": \"参数值\"\r\n}', '{\r\n  \"headere1\": \"参数说明\",\r\n  \"header2\": \"参数说明\"\r\n}', '{\r\n  \"username\": \"参数值\",\r\n  \"password\": \"参数值\"\r\n}', '{\r\n  \"username\": \"参数说明\",\r\n  \"password\": \"参数说明\"\r\n}', 'get', '200', '0', '0', '0', '{\r\n  \"query1\": \"参数说明\",\r\n  \"query2\": \"参数说明\"\r\n}', '{\r\n  \"header1\": \"参数值\",\r\n  \"header2\": \"参数值\"\r\n}', '{\r\n  \"headere1\": \"参数说明\",\r\n  \"header2\": \"参数说明\"\r\n}');
INSERT INTO `mock_mockserver` VALUES ('104', '333', 'method为post RESTful格式示例-修改 :id,:user试试，如 search/4/tom', 'search/:id/:name', '%5Esearch%5C/((?:%5B%5E%5C/%5D+?))%5C/((?:%5B%5E%5C/%5D+?))(?:%5C/(?=$))?$', '{\r\n  \"array\": [\r\n    1,\r\n    2,\r\n    3\r\n  ],\r\n  \"boolean\": true,\r\n  \"null\": null,\r\n  \"number\": 123,\r\n  \"object\": {\r\n    \"a\": \"b\",\r\n    \"c\": \"d\",\r\n    \"e\": \"f\"\r\n  },\r\n  \"string\": \"POST\"\r\n}', '{\r\n  \"username\": \"参数值\",\r\n  \"password\": \"参数值\"\r\n}', '0', '', '{\r\n  \"headere1\": \"参数值\",\r\n  \"header2\": \"参数值\"\r\n}', '{\r\n  \"headere1\": \"参数说明\",\r\n  \"header2\": \"参数说明\"\r\n}', '{\r\n  \"username\": \"参数值\",\r\n  \"password\": \"参数值\"\r\n}', '{\r\n  \"username\": \"参数说明\",\r\n  \"password\": \"参数说明\"\r\n}', 'post', '200', '0', '0', '0', '{\r\n  \"query1\": \"参数说明\",\r\n  \"query2\": \"参数说明\"\r\n}', '{\r\n  \"header1\": \"参数值\",\r\n  \"header2\": \"参数值\"\r\n}', '{\r\n  \"headere1\": \"参数说明\",\r\n  \"header2\": \"参数说明\"\r\n}');
INSERT INTO `mock_mockserver` VALUES ('105', '333', 'method为 put :RESTful格式示例-修改 :id,:user试试，如 search/4/tom', 'search/:id/:name', '%5Esearch%5C/((?:%5B%5E%5C/%5D+?))%5C/((?:%5B%5E%5C/%5D+?))(?:%5C/(?=$))?$', '{\r\n  \"array\": [\r\n    1,\r\n    2,\r\n    3\r\n  ],\r\n  \"boolean\": true,\r\n  \"null\": null,\r\n  \"number\": 123,\r\n  \"object\": {\r\n    \"a\": \"b\",\r\n    \"c\": \"d\",\r\n    \"e\": \"f\"\r\n  },\r\n  \"string\": \"PUT\"\r\n}', '{\r\n  \"username\": \"参数值\",\r\n  \"password\": \"参数值\"\r\n}', '0', '', '{\r\n  \"headere1\": \"参数值\",\r\n  \"header2\": \"参数值\"\r\n}', '{\r\n  \"headere1\": \"参数说明\",\r\n  \"header2\": \"参数说明\"\r\n}', '{\r\n  \"username\": \"参数值\",\r\n  \"password\": \"参数值\"\r\n}', '{\r\n  \"username\": \"参数说明\",\r\n  \"password\": \"参数说明\"\r\n}', 'put', '200', '0', '0', '0', '{\r\n  \"query1\": \"参数说明\",\r\n  \"query2\": \"参数说明\"\r\n}', '{\r\n  \"header1\": \"参数值\",\r\n  \"header2\": \"参数值\"\r\n}', '{\r\n  \"headere1\": \"参数说明\",\r\n  \"header2\": \"参数说明\"\r\n}');
INSERT INTO `mock_mockserver` VALUES ('106', '8a15fbb94471050bb46f', 'method为 delete', 'search/:id/:name/ss', '%5Esearch%5C/((?:%5B%5E%5C/%5D+?))%5C/((?:%5B%5E%5C/%5D+?))%5C/ss(?:%5C/(?=$))?$', '{\r\n  \"array\": [\r\n    1,\r\n    2,\r\n    3\r\n  ],\r\n  \"boolean\": true,\r\n  \"null\": null,\r\n  \"number\": 123,\r\n  \"object\": {\r\n    \"a\": \"b\",\r\n    \"c\": \"d\",\r\n    \"e\": \"f\"\r\n  },\r\n  \"string\": \"PUT\"\r\n}', '{\r\n  \"username\": \"参数值\",\r\n  \"password\": \"参数值\"\r\n}', '0', '', '{\r\n  \"headere1\": \"参数值\",\r\n  \"header2\": \"参数值\"\r\n}', '{\r\n  \"headere1\": \"参数说明\",\r\n  \"header2\": \"参数说明\"\r\n}', '{\r\n  \"username\": \"参数值\",\r\n  \"password\": \"参数值\"\r\n}', '{\r\n  \"username\": \"参数说明\",\r\n  \"password\": \"参数说明\"\r\n}', 'delete', '200', '0', '1', '0', '{\r\n  \"query1\": \"参数说明\",\r\n  \"query2\": \"参数说明\"\r\n}', '{\r\n  \"header1\": \"参数值\",\r\n  \"header2\": \"参数值\"\r\n}', '{\r\n  \"headere1\": \"参数说明\",\r\n  \"header2\": \"参数说明\"\r\n}');
INSERT INTO `mock_mockserver` VALUES ('107', 'df174f2a1ebf76bdb6ad', '登录', 'api/exec?m=loginForMob', null, '{\r\n  \"returnCode\": 10,\r\n  \"returnMsg\": \"登录成功!\",\r\n  \"dataCount\": 0,\r\n  \"returnData\": {\r\n    \"id\": 4173,\r\n    \"vendorId\": 1912,\r\n    \"vendorName\": \"快店收银-便利店\",\r\n    \"userType\": 1,\r\n    \"userName\": \"bld\",\r\n    \"pwd\": \"5286E45A1EB6433B4C4BDA86A19F9619\",\r\n    \"realName\": \"王凯\",\r\n    \"cellPhone\": \"13070876871\",\r\n    \"email\": \"\",\r\n    \"userStatus\": 0,\r\n    \"df\": 0,\r\n    \"createDate\": \"Sep 13, 2017 9:26:08 AM\",\r\n    \"modifyDate\": \"Sep 21, 2017 12:07:52 PM\",\r\n    \"isTrial\": 0,\r\n    \"isOperater\": 0,\r\n    \"bindFlag\": 1,\r\n    \"remember\": 0,\r\n    \"flag\": 1,\r\n    \"vendorType\": 0\r\n  },\r\n  \"returnObject\": null\r\n}', '{\r\n  \"returnCode\": 10,\r\n  \"returnMsg\": \"登录成功!\",\r\n  \"dataCount\": 0,\r\n  \"returnData\": {\r\n    \"id\": 4173,\r\n    \"vendorId\": 1912,\r\n    \"vendorName\": \"快店收银-便利店\",\r\n    \"userType\": 1,\r\n    \"userName\": \"bld\",\r\n    \"pwd\": \"5286E45A1EB6433B4C4BDA86A19F9619\",\r\n    \"realName\": \"王凯\",\r\n    \"cellPhone\": \"13070876871\",\r\n    \"email\": \"\",\r\n    \"userStatus\": 0,\r\n    \"df\": 0,\r\n    \"createDate\": \"Sep 13, 2017 9:26:08 AM\",\r\n    \"modifyDate\": \"Sep 21, 2017 12:07:52 PM\",\r\n    \"isTrial\": 0,\r\n    \"isOperater\": 0,\r\n    \"bindFlag\": 1,\r\n    \"remember\": 0,\r\n    \"flag\": 1,\r\n    \"vendorType\": 0\r\n  },\r\n  \"returnObject\": null\r\n}', '1', 'http://vm.saaso2o.net/', '{\r\n  \"headere1\": \"参数值\",\r\n  \"header2\": \"参数值\"\r\n}', '{\r\n  \"headere1\": \"参数说明\",\r\n  \"header2\": \"参数说明\"\r\n}', '{\r\n  \"token\": \"H8DH9Snx9877SDER5667\",\r\n  \"reqJson\": {\r\n    \"userName\": \"13070876871\",\r\n    \"pwd\": \"bld\"\r\n  }\r\n}', '{\r\n  \"token\": \"H8DH9Snx9877SDER5667\",\r\n  \"reqJson\": {\r\n    \"userName\": \"13070876871\",\r\n    \"pwd\": \"bld\"\r\n  }\r\n}', 'post', '200', '0', '1', '0', '{\r\n  \"token\": \"H8DH9Snx9877SDER5667\",\r\n  \"reqJson\": {\r\n    \"userName\": \"13070876871\",\r\n    \"pwd\": \"bld\"\r\n  }\r\n}', '{\r\n  \"header1\": \"参数值\",\r\n  \"header2\": \"参数值\"\r\n}', '{\r\n  \"headere1\": \"参数说明\",\r\n  \"header2\": \"参数说明\"\r\n}');
INSERT INTO `mock_mockserver` VALUES ('108', 'df174f2a1ebf76bdb6ad', '11', 'api/exec?m=getAssetAccountInfo', null, '{\r\n  \"array\": [\r\n    1,\r\n    2,\r\n    3\r\n  ],\r\n  \"boolean\": true,\r\n  \"null\": null,\r\n  \"number\": 123,\r\n  \"object\": {\r\n    \"a\": \"b\",\r\n    \"c\": \"d\",\r\n    \"e\": \"f\"\r\n  },\r\n  \"string\": \"Hello World\"\r\n}', '{\r\n  \"username\": \"参数值\",\r\n  \"password\": \"参数值\"\r\n}', '1', 'http://tbwd.saaso2o.net/', '{\r\n  \"headere1\": \"参数值\",\r\n  \"header2\": \"参数值\"\r\n}', '{\r\n  \"headere1\": \"参数说明\",\r\n  \"header2\": \"参数说明\"\r\n}', '{\r\n  \"vendorId\": \"1719\",\r\n  \"payType \": \"204007AliPay\",\r\n  \"token\": \"H8DH9Snx9877SDER5667\"\r\n}', '{\r\n  \"vendorId\": \"参数说明\",\r\n  \"payType \": \"参数说明\",\r\n  \"token\": \"H8DH9Snx9877SDER5667\"\r\n}', 'post', '200', '0', '1', '0', '{\r\n  \"vendorId\": \"参数说明\",\r\n  \"payType \": \"参数说明\",\r\n  \"token\": \"H8DH9Snx9877SDER5667\"\r\n}', '{\r\n  \"header1\": \"参数值\",\r\n  \"header2\": \"参数值\"\r\n}', '{\r\n  \"headere1\": \"参数说明\",\r\n  \"header2\": \"参数说明\"\r\n}');
INSERT INTO `mock_mockserver` VALUES ('109', 'df174f2a1ebf76bdb6ad', 'getlist', 'api/exec?m=getBillList', null, '{\r\n  \"array\": [\r\n    1,\r\n    2,\r\n    3\r\n  ],\r\n  \"boolean\": true,\r\n  \"null\": null,\r\n  \"number\": 123,\r\n  \"object\": {\r\n    \"a\": \"b\",\r\n    \"c\": \"d\",\r\n    \"e\": \"f\"\r\n  },\r\n  \"string\": \"Hello World\"\r\n}', '{\r\n  \"username\": \"参数值\",\r\n  \"password\": \"参数值\"\r\n}', '1', 'http://vm.saaso2o.net/', '{\r\n  \"headere1\": \"参数值\",\r\n  \"header2\": \"参数值\"\r\n}', '{\r\n  \"headere1\": \"参数说明\",\r\n  \"header2\": \"参数说明\"\r\n}', '{\r\n  \"username\": \"参数值\",\r\n  \"password\": \"参数值\"\r\n}', '{\r\n  \"username\": \"参数说明\",\r\n  \"password\": \"参数说明\"\r\n}', 'post', '200', '0', '1', '0', '{\r\n  \"query1\": \"参数说明\",\r\n  \"query2\": \"参数说明\"\r\n}', '{\r\n  \"header1\": \"参数值\",\r\n  \"header2\": \"参数值\"\r\n}', '{\r\n  \"headere1\": \"参数说明\",\r\n  \"header2\": \"参数说明\"\r\n}');

-- ----------------------------
-- Table structure for mock_project
-- ----------------------------
DROP TABLE IF EXISTS `mock_project`;
CREATE TABLE `mock_project` (
  `project_id` varchar(20) NOT NULL DEFAULT '',
  `project_name` varchar(2000) NOT NULL DEFAULT '',
  `project_prefix` varchar(200) DEFAULT '/api/',
  `proxy_url` varchar(2000) DEFAULT '',
  `open_proxy` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mock_project
-- ----------------------------
INSERT INTO `mock_project` VALUES ('333', 'demo', '/api/', 'http://192.168.1.2', '1');
INSERT INTO `mock_project` VALUES ('bb1ddc9459253909d379', 'swift-demo', '/api/', '', '1');
INSERT INTO `mock_project` VALUES ('df174f2a1ebf76bdb6ad', 'vm', '/', '', '1');

-- ----------------------------
-- Table structure for mock_system
-- ----------------------------
DROP TABLE IF EXISTS `mock_system`;
CREATE TABLE `mock_system` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `proxy_url` varchar(200) DEFAULT '',
  `headers_white_list` varchar(2000) DEFAULT '',
  `headers_black_list` varchar(2000) DEFAULT 'host\r\naccept-encoding',
  `headers_proxy_state` tinyint(2) DEFAULT '0',
  `language_type` varchar(100) DEFAULT 'cn' COMMENT 'language type:cn|en',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mock_system
-- ----------------------------
INSERT INTO `mock_system` VALUES ('4', 'http://47.93.62.181:8034', 'cookie', 'accept-encoding\r\nhost', '0', 'cn');

-- ----------------------------
-- Table structure for mock_template
-- ----------------------------
DROP TABLE IF EXISTS `mock_template`;
CREATE TABLE `mock_template` (
  `template_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `template_name` varchar(2000) NOT NULL DEFAULT '',
  PRIMARY KEY (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mock_template
-- ----------------------------
