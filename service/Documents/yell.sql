/*
Navicat MariaDB Data Transfer

Source Server         : yell
Source Server Version : 100229
Source Host           : 38.27.102.78:3306
Source Database       : yell

Target Server Type    : MariaDB
Target Server Version : 100229
File Encoding         : 65001

Date: 2019-11-28 21:30:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ess_codecategory
-- ----------------------------
DROP TABLE IF EXISTS `ess_codecategory`;
CREATE TABLE `ess_codecategory` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `deleted` tinyint(4) DEFAULT 0 COMMENT '逻辑删除状态0未删除,1已删除',
  `raw_add_time` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '创建时间',
  `raw_creator` varchar(20) DEFAULT NULL COMMENT '创建人',
  `raw_modifier` varchar(20) DEFAULT NULL COMMENT '修改人',
  `raw_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `raw_version` smallint(6) unsigned NOT NULL DEFAULT 1 COMMENT '版本号',
  `category_cd` varchar(100) DEFAULT NULL COMMENT '所属大类编号',
  `category_nm` varchar(100) DEFAULT NULL COMMENT '所属大类名称',
  `description` varchar(100) DEFAULT NULL COMMENT '大类描述',
  `is_common` tinyint(4) DEFAULT 0 COMMENT '是否为公共的0是,1否',
  `is_enabled` tinyint(4) DEFAULT 0 COMMENT '是否可见 0可见,1不可见',
  `is_tree` tinyint(4) DEFAULT 1 COMMENT '是否为树形结构 0是,1不是',
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_cd` (`category_cd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='系统基本组件-下拉框值数据字典树';

-- ----------------------------
-- Records of ess_codecategory
-- ----------------------------

-- ----------------------------
-- Table structure for ess_email_log
-- ----------------------------
DROP TABLE IF EXISTS `ess_email_log`;
CREATE TABLE `ess_email_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `deleted` tinyint(4) DEFAULT 0 COMMENT '逻辑删除状态0未删除,1已删除',
  `raw_add_time` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '创建时间',
  `raw_creator` varchar(20) DEFAULT NULL COMMENT '创建人',
  `raw_modifier` varchar(20) DEFAULT NULL COMMENT '修改人',
  `raw_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `raw_version` smallint(6) unsigned NOT NULL DEFAULT 1 COMMENT '版本号',
  `email_components` varchar(100) DEFAULT NULL COMMENT '所属组件（有可能是 表名、功能名、等）名称',
  `email_components_id` varchar(100) DEFAULT NULL COMMENT '所属组件内ID',
  `email_content` varchar(500) DEFAULT NULL COMMENT '电子邮件内容',
  `email_expiry` int(11) DEFAULT NULL COMMENT '失效时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='系统基本组件-电子邮件日志表';

-- ----------------------------
-- Records of ess_email_log
-- ----------------------------

-- ----------------------------
-- Table structure for ess_simplecode
-- ----------------------------
DROP TABLE IF EXISTS `ess_simplecode`;
CREATE TABLE `ess_simplecode` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `deleted` tinyint(4) DEFAULT 0 COMMENT '逻辑删除状态0未删除,1已删除',
  `raw_add_time` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '创建时间',
  `raw_creator` varchar(20) DEFAULT NULL COMMENT '创建人',
  `raw_modifier` varchar(20) DEFAULT NULL COMMENT '修改人',
  `raw_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `raw_version` smallint(6) unsigned NOT NULL DEFAULT 1 COMMENT '版本号',
  `category_cd` varchar(100) DEFAULT NULL COMMENT '所属大类编号',
  `code` varchar(100) DEFAULT NULL COMMENT '选项编号',
  `description` varchar(100) DEFAULT NULL COMMENT '选项描述',
  `disp_order` int(10) DEFAULT NULL COMMENT '显示顺序',
  `full_code` varchar(100) DEFAULT NULL COMMENT '选项全编号',
  `is_default` tinyint(4) DEFAULT 1 COMMENT '是否为默认0是,1否',
  `is_fixed` tinyint(4) DEFAULT 1 COMMENT '是否为固定的 0是,1否',
  `is_tree` tinyint(4) DEFAULT 1 COMMENT '是否为树形结构 0是,1不是',
  `name` varchar(100) DEFAULT NULL COMMENT '选项名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  UNIQUE KEY `description` (`description`),
  UNIQUE KEY `full_code` (`full_code`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='系统基本组件-下拉框值数据字典';

-- ----------------------------
-- Records of ess_simplecode
-- ----------------------------

-- ----------------------------
-- Table structure for sampling_dept
-- ----------------------------
DROP TABLE IF EXISTS `sampling_dept`;
CREATE TABLE `sampling_dept` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `deleted` tinyint(4) DEFAULT 0 COMMENT '逻辑删除状态0未删除,1已删除',
  `raw_add_time` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '创建时间',
  `raw_creator` varchar(20) DEFAULT NULL COMMENT '创建人',
  `raw_modifier` varchar(20) DEFAULT NULL COMMENT '修改人',
  `raw_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `raw_version` smallint(6) unsigned NOT NULL DEFAULT 1 COMMENT '版本号',
  `code` varchar(20) DEFAULT NULL COMMENT '部门码',
  `name` varchar(20) DEFAULT NULL COMMENT '部门名称',
  `pid` int(11) DEFAULT NULL COMMENT '部门父id(如果0一级部门)',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='部门表，用于存储部门信息';

-- ----------------------------
-- Records of sampling_dept
-- ----------------------------

-- ----------------------------
-- Table structure for sampling_detection_item
-- ----------------------------
DROP TABLE IF EXISTS `sampling_detection_item`;
CREATE TABLE `sampling_detection_item` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `deleted` tinyint(4) DEFAULT 0 COMMENT '逻辑删除状态0未删除,1已删除',
  `raw_add_time` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '创建时间',
  `raw_creator` varchar(20) DEFAULT NULL COMMENT '创建人',
  `raw_modifier` varchar(20) DEFAULT NULL COMMENT '修改人',
  `raw_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `raw_version` smallint(6) unsigned NOT NULL DEFAULT 1 COMMENT '版本号',
  `item_code` varchar(36) DEFAULT NULL COMMENT '检测项唯一编码',
  `item_name` varchar(255) DEFAULT NULL COMMENT '检测项名称',
  `item_old` varchar(255) DEFAULT NULL COMMENT 'itemOld',
  `item_type` varchar(255) DEFAULT NULL COMMENT '检测项类型',
  `letter` varchar(255) DEFAULT NULL COMMENT '不知',
  `node` varchar(255) DEFAULT NULL COMMENT '不知',
  `old_code` varchar(255) DEFAULT NULL COMMENT 'oldCode',
  `parent_node` varchar(255) DEFAULT NULL COMMENT '父节点',
  `re_code` varchar(255) DEFAULT NULL COMMENT 're_code',
  `state` varchar(1) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_qqh3nu06k5gcq69de3kllqcpy` (`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='检测项数据字典';

-- ----------------------------
-- Records of sampling_detection_item
-- ----------------------------

-- ----------------------------
-- Table structure for sampling_detection_result
-- ----------------------------
DROP TABLE IF EXISTS `sampling_detection_result`;
CREATE TABLE `sampling_detection_result` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `deleted` tinyint(4) DEFAULT 0 COMMENT '逻辑删除状态0未删除,1已删除',
  `raw_add_time` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '创建时间',
  `raw_creator` varchar(20) DEFAULT NULL COMMENT '创建人',
  `raw_modifier` varchar(20) DEFAULT NULL COMMENT '修改人',
  `raw_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `raw_version` smallint(6) unsigned NOT NULL DEFAULT 1 COMMENT '版本号',
  `attribute_code` varchar(36) DEFAULT NULL COMMENT '属性编号',
  `attribute_name` varchar(100) DEFAULT NULL COMMENT '属性名称',
  `attribute_value` varchar(255) DEFAULT NULL COMMENT '属性名称',
  `business_code` varchar(36) DEFAULT NULL COMMENT '业务编号',
  `detective_code` varchar(36) DEFAULT NULL COMMENT '检测项编号',
  `sampling_code` varchar(36) DEFAULT NULL COMMENT '样品编号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKcdr0g5y8is968ustlnmn3ostq` (`business_code`,`detective_code`,`sampling_code`,`attribute_code`),
  KEY `business_code_index` (`business_code`),
  KEY `detective_code_index` (`detective_code`),
  KEY `sampling_code_index` (`sampling_code`),
  KEY `attribute_code_index` (`attribute_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='样品检测结果';

-- ----------------------------
-- Records of sampling_detection_result
-- ----------------------------

-- ----------------------------
-- Table structure for sampling_detective_item
-- ----------------------------
DROP TABLE IF EXISTS `sampling_detective_item`;
CREATE TABLE `sampling_detective_item` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `deleted` tinyint(4) DEFAULT 0 COMMENT '逻辑删除状态0未删除,1已删除',
  `raw_add_time` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '创建时间',
  `raw_creator` varchar(20) DEFAULT NULL COMMENT '创建人',
  `raw_modifier` varchar(20) DEFAULT NULL COMMENT '修改人',
  `raw_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `raw_version` smallint(6) unsigned NOT NULL DEFAULT 1 COMMENT '版本号',
  `actual_complete_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '实际完成时间',
  `business_code` varchar(36) DEFAULT NULL COMMENT '业务编号',
  `demand_complete_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '要求完成时间',
  `department_code` varchar(255) DEFAULT NULL COMMENT '科室编码',
  `department_name` varchar(255) DEFAULT NULL COMMENT '科室名称',
  `detective_item_code` varchar(36) DEFAULT NULL COMMENT '检测项编号',
  `detective_item_name` varchar(36) DEFAULT NULL COMMENT '检测项名称',
  `inspector_code` varchar(255) DEFAULT NULL COMMENT '检测人编码',
  `inspector_name` varchar(255) DEFAULT NULL COMMENT '检测人名称',
  `method_code` varchar(255) DEFAULT NULL COMMENT '方法编号',
  `method_name` varchar(255) DEFAULT NULL COMMENT '方法名称',
  `position_url` varchar(255) DEFAULT NULL COMMENT '点位图路径',
  PRIMARY KEY (`id`),
  KEY `business_code_index` (`business_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='样品';

-- ----------------------------
-- Records of sampling_detective_item
-- ----------------------------

-- ----------------------------
-- Table structure for sampling_equipment
-- ----------------------------
DROP TABLE IF EXISTS `sampling_equipment`;
CREATE TABLE `sampling_equipment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `deleted` tinyint(4) DEFAULT 0 COMMENT '逻辑删除状态0未删除,1已删除',
  `raw_add_time` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '创建时间',
  `raw_creator` varchar(20) DEFAULT NULL COMMENT '创建人',
  `raw_modifier` varchar(20) DEFAULT NULL COMMENT '修改人',
  `raw_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `raw_version` smallint(6) unsigned NOT NULL DEFAULT 1 COMMENT '版本号',
  `approved_unit` varchar(100) DEFAULT NULL COMMENT '核定单位',
  `assets_number` varchar(200) DEFAULT NULL COMMENT '固定资产编号',
  `dept_name` varchar(100) DEFAULT NULL COMMENT '部门名称',
  `imgs` varchar(255) DEFAULT NULL COMMENT '图片地址 多张以,隔开',
  `inspection_cycle` int(4) DEFAULT NULL COMMENT '检查周期',
  `inspection_date1` datetime DEFAULT NULL COMMENT '下次检查日期1',
  `inspection_date2` datetime DEFAULT NULL COMMENT '下次检查日期2',
  `last_inspection_date` datetime DEFAULT NULL COMMENT '上次核查日期',
  `level` int(2) DEFAULT NULL COMMENT '精度等级',
  `manufacturer` varchar(100) DEFAULT NULL COMMENT '生产厂家',
  `measuring_range` int(4) DEFAULT NULL COMMENT '测量范围',
  `modle` varchar(100) DEFAULT NULL COMMENT '型号',
  `name` varchar(100) DEFAULT NULL COMMENT '仪器名称',
  `next_verification_date` datetime DEFAULT NULL COMMENT '下次核查日期',
  `no` varchar(100) DEFAULT NULL COMMENT '编号',
  `number` varchar(100) DEFAULT NULL COMMENT '出厂编号',
  `purchase_date` datetime DEFAULT NULL COMMENT '购置日期',
  `remarks` varchar(200) DEFAULT NULL COMMENT '备注',
  `category_id` int(11) DEFAULT NULL COMMENT '分类id',
  `specifications` varchar(20) DEFAULT NULL COMMENT '规格',
  `status` varchar(255) DEFAULT '0' COMMENT '仪器状态',
  `supplier` varchar(100) DEFAULT NULL COMMENT '供应商',
  `verification_cycle` int(4) DEFAULT NULL COMMENT '核查周期',
  `warranty_period` int(2) DEFAULT NULL COMMENT '保修年限',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='仪器设备管理，仪器管理';

-- ----------------------------
-- Records of sampling_equipment
-- ----------------------------

-- ----------------------------
-- Table structure for sampling_equipment_category
-- ----------------------------
DROP TABLE IF EXISTS `sampling_equipment_category`;
CREATE TABLE `sampling_equipment_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `deleted` tinyint(4) DEFAULT 0 COMMENT '逻辑删除状态0未删除,1已删除',
  `raw_add_time` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '创建时间',
  `raw_creator` varchar(20) DEFAULT NULL COMMENT '创建人',
  `raw_modifier` varchar(20) DEFAULT NULL COMMENT '修改人',
  `raw_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `raw_version` smallint(6) unsigned NOT NULL DEFAULT 1 COMMENT '版本号',
  `code` varchar(255) DEFAULT NULL COMMENT '分类编码',
  `name` varchar(255) DEFAULT NULL COMMENT '分类名称',
  `pid` int(11) DEFAULT NULL COMMENT '父类id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='仪器设备管理，仪器分类';

-- ----------------------------
-- Records of sampling_equipment_category
-- ----------------------------

-- ----------------------------
-- Table structure for sampling_item
-- ----------------------------
DROP TABLE IF EXISTS `sampling_item`;
CREATE TABLE `sampling_item` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `deleted` tinyint(4) DEFAULT 0 COMMENT '逻辑删除状态0未删除,1已删除',
  `raw_add_time` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '创建时间',
  `raw_creator` varchar(20) DEFAULT NULL COMMENT '创建人',
  `raw_modifier` varchar(20) DEFAULT NULL COMMENT '修改人',
  `raw_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `raw_version` smallint(6) unsigned NOT NULL DEFAULT 1 COMMENT '版本号',
  `business_code` varchar(36) DEFAULT NULL COMMENT '业务编号',
  `data_unit` varchar(255) DEFAULT NULL COMMENT '样品计量单位',
  `detective_code` varchar(36) DEFAULT NULL COMMENT '检测项编号',
  `detective_name` varchar(50) DEFAULT NULL COMMENT '检查项目名称',
  `remark` varchar(255) DEFAULT NULL COMMENT '采样备注',
  `sampling_code` varchar(36) DEFAULT NULL COMMENT '样品编号',
  `sampling_name` varchar(36) DEFAULT NULL COMMENT '样品名称',
  `sampling_position_code` varchar(255) DEFAULT NULL COMMENT '采样点编号',
  `sampling_position_name` varchar(255) DEFAULT NULL COMMENT '采样点名称',
  `sampling_produce_type` varchar(255) DEFAULT NULL COMMENT '样品类别',
  `sampling_status` varchar(50) DEFAULT NULL COMMENT '采样状态',
  PRIMARY KEY (`id`),
  KEY `business_code_index` (`business_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='样品';

-- ----------------------------
-- Records of sampling_item
-- ----------------------------

-- ----------------------------
-- Table structure for sampling_lottery_conf
-- ----------------------------
DROP TABLE IF EXISTS `sampling_lottery_conf`;
CREATE TABLE `sampling_lottery_conf` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `deleted` tinyint(4) DEFAULT 0 COMMENT '逻辑删除状态0未删除,1已删除',
  `raw_add_time` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '创建时间',
  `raw_creator` varchar(20) DEFAULT NULL COMMENT '创建人',
  `raw_modifier` varchar(20) DEFAULT NULL COMMENT '修改人',
  `raw_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `raw_version` smallint(6) unsigned NOT NULL DEFAULT 1 COMMENT '版本号',
  `menu_state` int(1) DEFAULT NULL COMMENT '菜单状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='抽奖配置';

-- ----------------------------
-- Records of sampling_lottery_conf
-- ----------------------------

-- ----------------------------
-- Table structure for sampling_media
-- ----------------------------
DROP TABLE IF EXISTS `sampling_media`;
CREATE TABLE `sampling_media` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `deleted` tinyint(4) DEFAULT 0 COMMENT '逻辑删除状态0未删除,1已删除',
  `raw_add_time` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '创建时间',
  `raw_creator` varchar(20) DEFAULT NULL COMMENT '创建人',
  `raw_modifier` varchar(20) DEFAULT NULL COMMENT '修改人',
  `raw_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `raw_version` smallint(6) unsigned NOT NULL DEFAULT 1 COMMENT '版本号',
  `illustrate` text DEFAULT NULL COMMENT '视频说明',
  `img_url` varchar(255) DEFAULT NULL COMMENT '封面图片地址',
  `order_num` int(11) DEFAULT NULL COMMENT '顺序序号',
  `title` varchar(255) DEFAULT NULL COMMENT '视频标题',
  `type_code` varchar(200) DEFAULT NULL COMMENT '所属类型编号,可以多个,用逗号隔开',
  `url` varchar(255) DEFAULT NULL COMMENT '视频地址',
  `free` tinyint(4) DEFAULT 0 COMMENT '是否免费 0不免费,1免费',
  `original_url` varchar(255) DEFAULT NULL COMMENT '视频原地址',
  `changed` tinyint(4) DEFAULT 0 COMMENT '是否免费 0未转化,1已转化',
  PRIMARY KEY (`id`),
  KEY `media_type_index` (`type_code`)
) ENGINE=MyISAM AUTO_INCREMENT=110 DEFAULT CHARSET=utf8 COMMENT='多媒体文件';

-- ----------------------------
-- Records of sampling_media
-- ----------------------------
INSERT INTO `sampling_media` VALUES ('32', '0', '2019-11-05 16:21:00', '1', null, null, '2', '外表清纯美乳漂亮妹子看不出来内心如此放荡肉棒吃的津津有味J8边插自己还边揉阴蒂娇喘说好大好深不要', 'http://www.yellmedia.net/movies/20191105/9eKGa1DWCY20191105157294205311752173064.png', '0', '外表清纯美乳漂亮妹子看不出来内心如此放荡肉棒吃的津津有味J8边插自己还边揉阴蒂娇喘说好大好深不要', 'SgrHGQAg1571676685256', 'http://www.yellmedia.net/movies/20191105/ffhBI8U0CY20191105157294200863402736541/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191105/ffhBI8U0CY20191105157294200863402736541.mp4', '1');
INSERT INTO `sampling_media` VALUES ('14', '0', '2019-11-04 16:07:27', '1', null, null, '3', '高颜值甜美妹子道具自慰秀 逼逼非常粉嫩跳蛋震动瓶子摩擦淫语骚话呻吟 很是诱惑喜欢不要错过', 'http://www.yellmedia.net/movies/20191104/6sCT4sh0CY20191104157285483307845327610.jpg', '0', '高颜值甜美妹子道具自慰秀 逼逼非常粉嫩跳蛋震动瓶子摩擦淫语骚话呻吟 很是诱惑喜欢不要错过', 'dTTjNmBn1571676706336', 'http://www.yellmedia.net/movies/20191104/48x987KtCY20191104157285451264434562107/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191104/48x987KtCY20191104157285451264434562107.mp4', '1');
INSERT INTO `sampling_media` VALUES ('15', '0', '2019-11-04 18:10:38', '1', null, null, '2', '大叼 G到哭', 'http://www.yellmedia.net/movies/20191104/FHwp8qqlCY20191104157286221847751236704.png', '0', '欧美 深喉', 'cb755Iw41571676788269', 'http://www.yellmedia.net/movies/20191104/CLraUx2UCY20191104157286212202541650723/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191104/CLraUx2UCY20191104157286212202541650723.mp4', '1');
INSERT INTO `sampling_media` VALUES ('16', '0', '2019-11-04 18:19:11', '1', null, null, '2', '这样的妈妈真好啊为指导女儿性爱一起上啪啪搞穴作品 双飞母女花各有风情太性福了挡不住鸡动爽翻天720P高清', 'http://www.yellmedia.net/movies/20191104/hFCZ7JPpCY20191104157286274415215342607.png', '0', '这样的妈妈真好啊为指导女儿性爱一起上啪啪搞穴作品 双飞母女花各有风情太性福了挡不住鸡动爽翻天720P高清', 'sphg7EFF1571676781106', 'http://www.yellmedia.net/movies/20191104/UDA9wbszCY20191104157286270982376542301/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191104/UDA9wbszCY20191104157286270982376542301.mp4', '1');
INSERT INTO `sampling_media` VALUES ('12', '0', '2019-11-04 10:08:24', '1', null, null, '2', '首尔国立大学系花与男友激情私拍流出 扣穴潮喷 连操两次灌满嫩穴 高清1080P无水印完整版', 'http://www.yellmedia.net/movies/20191104/r0H95KCuCY20191104157283327520361357042.jpg', '0', '首尔国立大学系花与男友激情私拍流出 扣穴潮喷 连操两次灌满嫩穴 高清1080P无水印完整版', '85Qig58E1571676728975', 'http://www.yellmedia.net/movies/20191104/qZRS6oh4CY20191104157283318543876152034/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191104/qZRS6oh4CY20191104157283318543876152034.mp4', '1');
INSERT INTO `sampling_media` VALUES ('17', '0', '2019-11-04 18:40:53', '1', null, null, '2', '身材一级棒  ', 'http://www.yellmedia.net/movies/20191104/4KB4YhJ9CY20191104157286404909012406573.png', '0', '性感', 'cb755Iw41571676788269', 'http://www.yellmedia.net/movies/20191104/veAcfvkPCY20191104157286385910672546310/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191104/veAcfvkPCY20191104157286385910672546310.mp4', '1');
INSERT INTO `sampling_media` VALUES ('18', '0', '2019-11-04 18:47:32', '1', null, null, '2', '【剧情之王】妹妹失恋了 姐夫帮忙用大屌安慰一下 沙发上双飞极品黑丝美女姐妹花 多穴全开发 高清1080P原版', 'http://www.yellmedia.net/movies/20191104/Awl1qQAhCY20191104157286444933767520431.png', '0', '【剧情之王】妹妹失恋了 姐夫帮忙用大屌安慰一下 沙发上双飞极品黑丝美女姐妹花 多穴全开发 高清1080P原版', 'cb755Iw41571676788269', 'http://www.yellmedia.net/movies/20191104/XM59Lsj3CY20191104157286438777221503764/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191104/XM59Lsj3CY20191104157286438777221503764.mp4', '1');
INSERT INTO `sampling_media` VALUES ('19', '0', '2019-11-04 18:50:56', '1', null, null, '2', '三个很漂亮的高跟制服蕾丝肉丝西洋空姐和机长激情大战', 'http://www.yellmedia.net/movies/20191104/dUgSJRzYCY20191104157286465179567532410.png', '0', '三个很漂亮的高跟制服蕾丝肉丝西洋空姐和机长激情大战', 'cb755Iw41571676788269', 'http://www.yellmedia.net/movies/20191104/UOjElKQACY20191104157286463718304162753/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191104/UOjElKQACY20191104157286463718304162753.mp4', '1');
INSERT INTO `sampling_media` VALUES ('20', '0', '2019-11-04 18:55:25', '1', null, null, '2', '大奶蛮腰翘臀S级性感气质美女与私人健身教练搞在一起激情啪啪自拍各种肏美女叫声好听撸点很高', 'http://www.yellmedia.net/movies/20191104/t1s5NcurCY20191104157286491987525740361.png', '0', '大奶蛮腰翘臀S级性感气质美女与私人健身教练搞在一起激情啪啪自拍各种肏美女叫声好听撸点很高', 'dTTjNmBn1571676706336', 'http://www.yellmedia.net/movies/20191104/BuTqbLTpCY20191104157286490326372136045/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191104/BuTqbLTpCY20191104157286490326372136045.mp4', '1');
INSERT INTO `sampling_media` VALUES ('21', '0', '2019-11-04 19:02:12', '1', null, null, '2', '口活不错的白嫩美少妇宝宝心安吃完鸡巴被炮友后人式啪啪', 'http://www.yellmedia.net/movies/20191104/oENubR45CY20191104157286532462125104637.png', '0', '口活不错的白嫩美少妇宝宝心安吃完鸡巴被炮友后人式啪啪', 'dTTjNmBn1571676706336', 'http://www.yellmedia.net/movies/20191104/DMuoGw4tCY20191104157286531164146502137/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191104/DMuoGw4tCY20191104157286531164146502137.mp4', '1');
INSERT INTO `sampling_media` VALUES ('22', '0', '2019-11-04 19:52:01', '1', null, null, '2', '国产小青蛙自拍大作-红杏出墙性感人妻约小青蛙见面诉苦后被各种道具调教还被朋友偷操,发现后3P,无水印原版!', 'http://www.yellmedia.net/movies/20191104/yefVDqWJCY20191104157286831436904251367.png', '0', '国产小青蛙自拍大作-红杏出墙性感人妻约小青蛙见面诉苦后被各种道具调教还被朋友偷操,发现后3P,无水印原版!', 'SgrHGQAg1571676685256', 'http://www.yellmedia.net/movies/20191104/ADevo5dJCY20191104157286827330953602174/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191104/ADevo5dJCY20191104157286827330953602174.mp4', '1');
INSERT INTO `sampling_media` VALUES ('23', '0', '2019-11-04 20:02:26', '1', null, null, '2', '火爆网红鹿少女浴室性感情趣高跟被吊着闯红灯下面被干出血了呻吟给力', 'http://www.yellmedia.net/movies/20191104/bpe8tOPwCY20191104157286894255467143052.png', '0', '火爆网红鹿少女浴室性感情趣高跟被吊着闯红灯下面被干出血了呻吟给力', 'SgrHGQAg1571676685256,dTTjNmBn1571676706336', 'http://www.yellmedia.net/movies/20191104/lDksMH39CY20191104157286890860936174250/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191104/lDksMH39CY20191104157286890860936174250.mp4', '1');
INSERT INTO `sampling_media` VALUES ('24', '0', '2019-11-04 20:16:38', '1', null, null, '2', '最新众筹精品果哥大尺度白金版视频模特旦旦水晶棒插穴吃个快餐样子也那么淫骚1080P高清原版', 'http://www.yellmedia.net/movies/20191104/m6Q0deZGCY20191104157286979548047136205.png', '0', '最新众筹精品果哥大尺度白金版视频模特旦旦水晶棒插穴吃个快餐样子也那么淫骚1080P高清原版', 'SgrHGQAg1571676685256', 'http://www.yellmedia.net/movies/20191104/VgIMeYduCY20191104157286976516160314752/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191104/VgIMeYduCY20191104157286976516160314752.mp4', '1');
INSERT INTO `sampling_media` VALUES ('25', '0', '2019-11-04 20:23:01', '1', null, null, '2', '大J哥最新约炮暗拍美女模特系列第三部下集-公司签约的胸模美女第二弹 -1080P完整版', 'http://www.yellmedia.net/movies/20191104/MBe8yKhzCY20191104157287017523524105763.jpg', '0', '大J哥最新约炮暗拍美女模特系列第三部下集-公司签约的胸模美女第二弹 -1080P完整版', 'dTTjNmBn1571676706336', 'http://www.yellmedia.net/movies/20191104/soy447YtCY20191104157287007929737621405/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191104/soy447YtCY20191104157287007929737621405.mp4', '1');
INSERT INTO `sampling_media` VALUES ('33', '0', '2019-11-05 17:07:27', '1', null, null, '2', '高颜值甜美妹子道具自慰 逼逼非常粉嫩跳蛋震动淫语骚话呻吟娇喘诱人 很是诱惑喜欢不要错过', 'http://www.yellmedia.net/movies/20191105/mnhE3QryCY20191105157294484221123174605.jpg', '0', '高颜值甜美妹子道具自慰 逼逼非常粉嫩跳蛋震动淫语骚话呻吟娇喘诱人 很是诱惑喜欢不要错过', 'SgrHGQAg1571676685256,dTTjNmBn1571676706336', 'http://www.yellmedia.net/movies/20191105/3Nbeyf1GCY20191105157294432722604362571/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191105/3Nbeyf1GCY20191105157294432722604362571.mp4', '1');
INSERT INTO `sampling_media` VALUES ('28', '0', '2019-11-05 13:57:06', '1', null, null, '3', '小可爱平台_原卡哇伊_高颜值美女主播杏树纱奈奈收费自慰大秀 身材也好棒 激情自慰十分诱人', 'http://www.yellmedia.net/movies/20191105/qy6W0Ei7CY20191105157293380606625340167.jpg', '0', '小可爱平台_原卡哇伊_高颜值美女主播杏树纱奈奈收费自慰大秀 身材也好棒 激情自慰十分诱人', 'SgrHGQAg1571676685256', 'http://www.yellmedia.net/movies/20191105/7aKP3O4lCY20191105157293339162040571326/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191105/7aKP3O4lCY20191105157293339162040571326.mp4', '1');
INSERT INTO `sampling_media` VALUES ('29', '0', '2019-11-05 14:14:21', '1', null, null, '2', '高颜值甜美少妇露奶露逼诱惑 慢慢脱掉扭动身体掰开逼逼近距离特写 很是诱惑喜欢不要错过', 'http://www.yellmedia.net/movies/20191105/AZTlmqCHCY20191105157293446014964130275.jpg', '0', '高颜值甜美少妇露奶露逼诱惑 慢慢脱掉扭动身体掰开逼逼近距离特写 很是诱惑喜欢不要错过', 'SgrHGQAg1571676685256', 'http://www.yellmedia.net/movies/20191105/ZufQYOyiCY20191105157293439154850312746/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191105/ZufQYOyiCY20191105157293439154850312746.mp4', '1');
INSERT INTO `sampling_media` VALUES ('30', '0', '2019-11-05 15:21:55', '1', null, null, '2', '91新晋大神sweattt-编号03作品 车友的18岁性感女朋友 S型极品1080P高清无水印原版', 'http://www.yellmedia.net/movies/20191105/qOpb2e7dCY20191105157293850516675641032.png', '0', '91新晋大神sweattt-编号03作品 车友的18岁性感女朋友 S型极品1080P高清无水印原版', 'SgrHGQAg1571676685256', 'http://www.yellmedia.net/movies/20191105/CTRwaPTICY20191105157293848106904763125/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191105/CTRwaPTICY20191105157293848106904763125.mp4', '1');
INSERT INTO `sampling_media` VALUES ('31', '0', '2019-11-05 15:34:13', '1', null, null, '2', '恩爱情侣分手后流出 男子调教 教女友口交技术 女友颜值极高 大眼睛超诱人', 'http://www.yellmedia.net/movies/20191105/KQCZ4GvaCY20191105157293924911102371645.png', '0', '恩爱情侣分手后流出 男子调教 教女友口交技术 女友颜值极高 大眼睛超诱人', 'SgrHGQAg1571676685256', 'http://www.yellmedia.net/movies/20191105/EOMeZplvCY20191105157293916454651740263/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191105/EOMeZplvCY20191105157293916454651740263.mp4', '1');
INSERT INTO `sampling_media` VALUES ('34', '0', '2019-11-05 17:12:46', '1', null, null, '2', '人瘦屌大留学生小白脸傍上一位富姐风骚大奶美少妇男优的潜质太生猛了把少妇搞的欲仙欲死叫声刺激1080P原版~1', 'http://www.yellmedia.net/movies/20191105/8fDhibArCY20191105157294516333257130426.png', '0', '人瘦屌大留学生小白脸傍上一位富姐风骚大奶美少妇男优的潜质太生猛了把少妇搞的欲仙欲死叫声刺激1080P原版~1', 'SgrHGQAg1571676685256', 'http://www.yellmedia.net/movies/20191105/e60uANmnCY20191105157294514028620147653/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191105/e60uANmnCY20191105157294514028620147653.mp4', '1');
INSERT INTO `sampling_media` VALUES ('35', '0', '2019-11-05 17:42:39', '1', null, null, '2', '【Weagogo】亚麻小波浪肤白貌美小少妇，半遮半掩搔首弄姿真是及其诱人，无形勾引-最为致命！！~1', 'http://www.yellmedia.net/movies/20191105/OS3nY238CY20191105157294695657303542671.png', '0', '【Weagogo】亚麻小波浪肤白貌美小少妇，半遮半掩搔首弄姿真是及其诱人，无形勾引-最为致命！！~1', '85Qig58E1571676728975', 'http://www.yellmedia.net/movies/20191105/HuF5wsy4CY20191105157294658187310764325/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191105/HuF5wsy4CY20191105157294658187310764325.mp4', '1');
INSERT INTO `sampling_media` VALUES ('36', '0', '2019-11-05 18:07:11', '1', null, null, '4', '与蜜桃臀小仙女久别重逢在宾馆等外卖的时候啪啪，外卖小哥敲门也不开给他听~1', 'http://www.yellmedia.net/movies/20191105/JinpK6inCY20191105157295228982123601457.jpg', '0', '与蜜桃臀小仙女久别重逢在宾馆等外卖的时候啪啪，外卖小哥敲门也不开给他听~1', 'dTTjNmBn1571676706336', 'http://www.yellmedia.net/movies/20191105/w7Di8kQwCY20191105157294839995506435172/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191105/w7Di8kQwCY20191105157294839995506435172.mp4', '1');
INSERT INTO `sampling_media` VALUES ('37', '0', '2019-11-05 18:24:39', '1', null, null, '2', '081818_321~1', 'http://www.yellmedia.net/movies/20191105/KSBZpi3dCY20191105157294947595530152467.png', '0', '081818_321~1', '85Qig58E1571676728975', 'http://www.yellmedia.net/movies/20191105/re93kZVwCY20191105157294944566221540376/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191105/re93kZVwCY20191105157294944566221540376.mp4', '1');
INSERT INTO `sampling_media` VALUES ('38', '0', '2019-11-05 18:41:00', '1', null, null, '2', 'HEYZO-0986~1', 'http://www.yellmedia.net/movies/20191105/8WoB3DsgCY20191105157295045748512740356.png', '0', 'HEYZO-0986~1', '85Qig58E1571676728975', 'http://www.yellmedia.net/movies/20191105/dwLRbZf9CY20191105157295044241057461230/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191105/dwLRbZf9CY20191105157295044241057461230.mp4', '1');
INSERT INTO `sampling_media` VALUES ('39', '0', '2019-11-05 18:47:03', '1', null, null, '2', '骚气少妇翘着屁股被后入猛操 搞完还不够爽椅子按摩器震动高潮喷水 很是诱惑喜欢不要错过~1', 'http://www.yellmedia.net/movies/20191105/T7mw9Y9NCY20191105157295081868867051234.png', '0', '骚气少妇翘着屁股被后入猛操 搞完还不够爽椅子按摩器震动高潮喷水 很是诱惑喜欢不要错过~1', 'SgrHGQAg1571676685256', 'http://www.yellmedia.net/movies/20191105/6z1ywUt0CY20191105157295079120415063472/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191105/6z1ywUt0CY20191105157295079120415063472.mp4', '1');
INSERT INTO `sampling_media` VALUES ('40', '0', '2019-11-05 18:52:06', '1', null, null, '3', '學舞蹈的女神級性感美女被帥氣男友各種高難度動作玩', 'http://www.yellmedia.net/movies/20191105/TTXbAzllCY20191105157295130251812367054.jpg', '0', '學舞蹈的女神級性感美女被帥氣男友各種高難度動作玩', 'SgrHGQAg1571676685256,dTTjNmBn1571676706336', 'http://www.yellmedia.net/movies/20191105/x5PDlDiFCY20191105157295110515624605731/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191105/x5PDlDiFCY20191105157295110515624605731.mp4', '1');
INSERT INTO `sampling_media` VALUES ('41', '0', '2019-11-05 19:03:01', '1', null, null, '2', '高颜值甜美妹子道具自慰秀 逼逼非常粉嫩跳蛋震动瓶子摩擦淫语骚话呻吟 很是诱惑喜欢不要错过~1', 'http://www.yellmedia.net/movies/20191105/hWBwlHkKCY20191105157295177642061750342.png', '0', '高颜值甜美妹子道具自慰秀 逼逼非常粉嫩跳蛋震动瓶子摩擦淫语骚话呻吟 很是诱惑喜欢不要错过~1', 'dTTjNmBn1571676706336', 'http://www.yellmedia.net/movies/20191105/W3J4JqghCY20191105157295166716231472056/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191105/W3J4JqghCY20191105157295166716231472056.mp4', '1');
INSERT INTO `sampling_media` VALUES ('42', '0', '2019-11-05 21:03:34', '1', null, null, '2', '去年非常火的那个高颜值戏精妹，最近又复出了叫【小水仙er】和猥琐肚腩炮友啪啪骚得不要的~1', 'http://www.yellmedia.net/movies/20191105/spYe8orQCY20191105157295901094120653147.png', '0', '去年非常火的那个高颜值戏精妹，最近又复出了叫【小水仙er】和猥琐肚腩炮友啪啪骚得不要的~1', 'dTTjNmBn1571676706336', 'http://www.yellmedia.net/movies/20191105/Z19wrxnXCY20191105157295898106703246571/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191105/Z19wrxnXCY20191105157295898106703246571.mp4', '1');
INSERT INTO `sampling_media` VALUES ('43', '0', '2019-11-05 21:09:59', '1', null, null, '2', '最新流出WowGirls精品大作年轻漂亮性感姐妹花户外聊天看到一位猛男主动搭讪一起挑逗玩双飞画面唯美诱人撸点高~1', 'http://www.yellmedia.net/movies/20191105/pjarUmr7CY20191105157295939502262703541.png', '0', '最新流出WowGirls精品大作年轻漂亮性感姐妹花户外聊天看到一位猛男主动搭讪一起挑逗玩双飞画面唯美诱人撸点高~1', 'cb755Iw41571676788269', 'http://www.yellmedia.net/movies/20191105/WVSC4oQNCY20191105157295937347032057641/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191105/WVSC4oQNCY20191105157295937347032057641.mp4', '1');
INSERT INTO `sampling_media` VALUES ('44', '0', '2019-11-05 21:23:13', '1', null, null, '2', '最新流出WowGirls精品大作年轻漂亮性感姐妹花户外聊天看到一位猛男主动搭讪一起挑逗玩双飞画面唯美诱人撸点高~1', 'http://www.yellmedia.net/movies/20191105/dgHd57XdCY20191105157296019028943105627.png', '0', '最新流出WowGirls精品大作年轻漂亮性感姐妹花户外聊天看到一位猛男主动搭讪一起挑逗玩双飞画面唯美诱人撸点高~1', 'cb755Iw41571676788269', 'http://www.yellmedia.net/movies/20191105/pZe7vkmPCY20191105157296016655920346517/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191105/pZe7vkmPCY20191105157296016655920346517.mp4', '1');
INSERT INTO `sampling_media` VALUES ('45', '0', '2019-11-05 21:27:37', '1', null, null, '2', '91KK哥（富一代CaoB哥）中戏97年超美校花宝儿第二部,性感情趣丝袜操的淫语不止', 'http://www.yellmedia.net/movies/20191105/03qaGqD0CY20191105157296044127163152470.jpg', '0', '91KK哥（富一代CaoB哥）中戏97年超美校花宝儿第二部,性感情趣丝袜操的淫语不止', 'SgrHGQAg1571676685256,dTTjNmBn1571676706336', 'http://www.yellmedia.net/movies/20191105/UNnUTutLCY20191105157296026056556371204/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191105/UNnUTutLCY20191105157296026056556371204.mp4', '1');
INSERT INTO `sampling_media` VALUES ('46', '0', '2019-11-05 21:35:33', '1', null, null, '2', '170CM极品外围女美女被大屌哥撕破黑丝高难度姿势猛干,趴在性感翘臀上狠狠内射,干的淫叫：太大了,受不了了!', 'http://www.yellmedia.net/movies/20191105/b0uYHqhsCY20191105157296092880957213064.jpg', '0', '170CM极品外围女美女被大屌哥撕破黑丝高难度姿势猛干,趴在性感翘臀上狠狠内射,干的淫叫：太大了,受不了了!', 'SgrHGQAg1571676685256,dTTjNmBn1571676706336', 'http://www.yellmedia.net/movies/20191105/nYq5Z1ABCY20191105157296089513224176053/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191105/nYq5Z1ABCY20191105157296089513224176053.mp4', '1');
INSERT INTO `sampling_media` VALUES ('47', '0', '2019-11-05 21:36:09', '1', null, null, '3', '骚货主播 约啪粉丝夜晚车上做爱 没过瘾 回家在自己爽一次~1', 'http://www.yellmedia.net/movies/20191105/mB2TVJEKCY20191105157296205671305726143.jpg', '0', '骚货主播 约啪粉丝夜晚车上做爱 没过瘾 回家在自己爽一次~1', 'SgrHGQAg1571676685256', 'http://www.yellmedia.net/movies/20191105/KwxIhG2ZCY20191105157296088820821364057/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191105/KwxIhG2ZCY20191105157296088820821364057.mp4', '1');
INSERT INTO `sampling_media` VALUES ('48', '0', '2019-11-05 22:02:22', '1', null, null, '4', '媲美秦先生91新晋大神sweattt作品与极品车模偷情呻吟超刺激1080P高清原版~1', 'http://www.yellmedia.net/movies/20191105/yDAs6MrtCY20191105157296382080832605471.png', '0', '媲美秦先生91新晋大神sweattt作品与极品车模偷情呻吟超刺激1080P高清原版~1', 'SgrHGQAg1571676685256', 'http://www.yellmedia.net/movies/20191105/keAVjX6YCY20191105157296230437335602471/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191105/keAVjX6YCY20191105157296230437335602471.mp4', '1');
INSERT INTO `sampling_media` VALUES ('49', '0', '2019-11-05 22:22:32', '1', null, null, '3', '最新流出X-ART精品大作黑衣人看着极品姐妹花激情互慰兴奋难耐在加入战斗玩双飞画面唯美诱人1080P超清~1', 'http://www.yellmedia.net/movies/20191105/Rap5W5YzCY20191105157296390208941753620.png', '0', '最新流出X-ART精品大作黑衣人看着极品姐妹花激情互慰兴奋难耐在加入战斗玩双飞画面唯美诱人1080P超清~1', 'SgrHGQAg1571676685256', 'http://www.yellmedia.net/movies/20191105/SBPXgh9jCY20191105157296372363104125376/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191105/SBPXgh9jCY20191105157296372363104125376.mp4', '1');
INSERT INTO `sampling_media` VALUES ('50', '0', '2019-11-05 22:39:08', '1', null, null, '2', '清纯漂亮美少女氧气少女灬柠萌i一多自慰大秀 身材苗条自慰插穴很多淫水', 'http://www.yellmedia.net/movies/20191105/8wgCUkseCY20191105157296465197526413507.png', '0', '清纯漂亮美少女氧气少女灬柠萌i一多自慰大秀 身材苗条自慰插穴很多淫水', 'SgrHGQAg1571676685256,dTTjNmBn1571676706336', 'http://www.yellmedia.net/movies/20191105/ENOakNIFCY20191105157296461967875642031/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191105/ENOakNIFCY20191105157296461967875642031.mp4', '1');
INSERT INTO `sampling_media` VALUES ('51', '0', '2019-11-05 22:39:08', '1', null, null, '2', '超高颜值贵妇轻少妇端庄大美女 一身黑连衣裙3P啪啪 纤瘦的身材凹凸有致比网红脸耐看很多', 'http://www.yellmedia.net/movies/20191105/QvkjcBBaCY20191105157296468011774023165.gif', '0', '超高颜值贵妇轻少妇端庄大美女 一身黑连衣裙3P啪啪 纤瘦的身材凹凸有致比网红脸耐看很多', 'SgrHGQAg1571676685256,dTTjNmBn1571676706336', 'http://www.yellmedia.net/movies/20191105/t0ohexz9CY20191105157296464991113275406/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191105/t0ohexz9CY20191105157296464991113275406.mp4', '1');
INSERT INTO `sampling_media` VALUES ('52', '0', '2019-11-05 22:51:05', '1', null, null, '2', '最新流出素人投稿自拍清纯透明感19岁SS级美少女学生妹援交富二代无套内射中出无毛多水小B', 'http://www.yellmedia.net/movies/20191105/qdUULKLjCY20191105157296545884453401726.png', '0', '最新流出素人投稿自拍清纯透明感19岁SS级美少女学生妹援交富二代无套内射中出无毛多水小B', 'SgrHGQAg1571676685256', 'http://www.yellmedia.net/movies/20191105/TLiBVKolCY20191105157296541687376135240/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191105/TLiBVKolCY20191105157296541687376135240.mp4', '1');
INSERT INTO `sampling_media` VALUES ('53', '0', '2019-11-05 22:55:53', '1', null, null, '2', 'om054', 'http://www.yellmedia.net/movies/20191105/aiPKTy2kCY20191105157296574932205321674.png', '0', 'om054', 'cb755Iw41571676788269', 'http://www.yellmedia.net/movies/20191105/FIyWA9cRCY20191105157296551540957634102/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191105/FIyWA9cRCY20191105157296551540957634102.mp4', '1');
INSERT INTO `sampling_media` VALUES ('54', '0', '2019-11-05 23:30:02', '1', null, null, '4', '高颜值爆乳健身教练约炮健身房学生啪啪 口交道具JJ抽插换装兔女郎非常诱人 很是诱惑喜欢不要错过~1', 'http://www.yellmedia.net/movies/20191105/HVzsM0auCY20191105157296942876514253706.png', '0', '高颜值爆乳健身教练约炮健身房学生啪啪 口交道具JJ抽插换装兔女郎非常诱人 很是诱惑喜欢不要错过~1', 'SgrHGQAg1571676685256', 'http://www.yellmedia.net/movies/20191105/dllTpBQVCY20191105157296767948776524031/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191105/dllTpBQVCY20191105157296767948776524031.mp4', '1');
INSERT INTO `sampling_media` VALUES ('55', '0', '2019-11-05 23:43:55', '1', null, null, '3', '高质量眼镜妹子极品风情挡不住身材火爆一看就有操的冲动 美女大长腿白嫩软肉肉漂亮风骚搞穴尤物肾虚720P高清', 'http://www.yellmedia.net/movies/20191110/P85KuIqLCY20191110157337810579730561724.jpg', '0', '高质量眼镜妹子极品风情挡不住身材火爆一看就有操的冲动 美女大长腿白嫩软肉肉漂亮风骚搞穴尤物肾虚720P高清', 'cb755Iw41571676788269', 'http://www.yellmedia.net/movies/20191105/52e22EquCY20191105157296859281725741306/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191105/52e22EquCY20191105157296859281725741306.mp4', '1');
INSERT INTO `sampling_media` VALUES ('56', '0', '2019-11-05 23:46:02', '1', null, null, '2', '颜值不错苗条身材妹子道具自慰 全裸玻璃棒抽插毛毛挺多抬起脚尿尿非常诱人 很是诱惑喜欢不要错过', 'http://www.yellmedia.net/movies/20191105/T7ykqRx6CY20191105157296850391301427536.jpg', '0', '颜值不错苗条身材妹子道具自慰 全裸玻璃棒抽插毛毛挺多抬起脚尿尿非常诱人 很是诱惑喜欢不要错过', 'SgrHGQAg1571676685256,dTTjNmBn1571676706336', 'http://www.yellmedia.net/movies/20191105/qEUXFYfDCY20191105157296840815823640175/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191105/qEUXFYfDCY20191105157296840815823640175.mp4', '1');
INSERT INTO `sampling_media` VALUES ('57', '0', '2019-11-05 23:46:02', '1', null, null, '2', '非常粉嫩没怎么开发嫩妹子道具自慰 苗条身材全裸椅子上跳蛋震动逼逼非常诱人 很是诱惑喜欢不要错过', 'http://www.yellmedia.net/movies/20191105/zAQgjS09CY20191105157296867137525637410.jpg', '0', '非常粉嫩没怎么开发嫩妹子道具自慰 苗条身材全裸椅子上跳蛋震动逼逼非常诱人 很是诱惑喜欢不要错过', 'SgrHGQAg1571676685256,dTTjNmBn1571676706336', 'http://www.yellmedia.net/movies/20191105/Lra8RQdiCY20191105157296859976136201745/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191105/Lra8RQdiCY20191105157296859976136201745.mp4', '1');
INSERT INTO `sampling_media` VALUES ('58', '0', '2019-11-05 23:46:02', '1', null, null, '2', '91富二代KG重金约啪南京95年168CM高颜值极品外围女水蛇般骨感美宾馆啪啪干完一炮休息一会又干一炮', 'http://www.yellmedia.net/movies/20191105/Sf5Rwpv7CY20191105157296875831362573014.jpg', '0', '91富二代KG重金约啪南京95年168CM高颜值极品外围女水蛇般骨感美宾馆啪啪干完一炮休息一会又干一炮', 'SgrHGQAg1571676685256,dTTjNmBn1571676706336', 'http://www.yellmedia.net/movies/20191105/NP7UtZM7CY20191105157296872778945726130/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191105/NP7UtZM7CY20191105157296872778945726130.mp4', '1');
INSERT INTO `sampling_media` VALUES ('59', '0', '2019-11-06 05:21:01', '1', null, null, '2', '极品巨乳女优『黛蜜儿』酒店约炮闺蜜模特男友 不错体力操到腿软 连操两炮 真实记录约啪全程 高清完整版', 'http://www.yellmedia.net/movies/20191106/VqjGQNXMCY20191106157298885682652314670.png', '0', '极品巨乳女优『黛蜜儿』酒店约炮闺蜜模特男友 不错体力操到腿软 连操两炮 真实记录约啪全程 高清完整版', 'SgrHGQAg1571676685256', 'http://www.yellmedia.net/movies/20191106/jFWaRFn3CY20191106157298878083972635140/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191106/jFWaRFn3CY20191106157298878083972635140.mp4', '1');
INSERT INTO `sampling_media` VALUES ('60', '0', '2019-11-06 05:27:25', '1', null, null, '3', '最新极品身材网红美女『蓝贝儿』与土豪激情啪啪私拍流出 漂亮美乳 无套抽插 后入特写 内射口爆 高清完整版', 'http://www.yellmedia.net/movies/20191110/dYRDIi44CY20191110157337818998624376015.jpg', '0', '最新极品身材网红美女『蓝贝儿』与土豪激情啪啪私拍流出 漂亮美乳 无套抽插 后入特写 内射口爆 高清完整版', 'SgrHGQAg1571676685256,dTTjNmBn1571676706336,XO5JFnuW1571676714333', 'http://www.yellmedia.net/movies/20191106/cPBXKxOlCY20191106157298921732410263754/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191106/cPBXKxOlCY20191106157298921732410263754.mp4', '1');
INSERT INTO `sampling_media` VALUES ('61', '0', '2019-11-06 05:35:45', '1', null, null, '2', '最新极品粉穴网红福利姬『子绫酱』大尺度魅惑私拍流出 极致粉穴 漂亮美乳 高清私拍炮图100P 高清720P完整版', 'http://www.yellmedia.net/movies/20191106/4I6lkHghCY20191106157298974053365032147.png', '0', '最新极品粉穴网红福利姬『子绫酱』大尺度魅惑私拍流出 极致粉穴 漂亮美乳 高清私拍炮图100P 高清720P完整版', 'SgrHGQAg1571676685256', 'http://www.yellmedia.net/movies/20191106/InfK9hOLCY20191106157298971198336720541/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191106/InfK9hOLCY20191106157298971198336720541.mp4', '1');
INSERT INTO `sampling_media` VALUES ('62', '0', '2019-11-06 05:43:22', '1', null, null, '2', '最新流出大学生刘玥_角色扮演_老师与学生在房间学习自慰被家教老师发现往鸡鸡加番茄口爆啪啪', 'http://www.yellmedia.net/movies/20191106/oXoz3u5UCY20191106157299019482516074532.jpg', '0', '最新流出大学生刘玥_角色扮演_老师与学生在房间学习自慰被家教老师发现往鸡鸡加番茄口爆啪啪', 'SgrHGQAg1571676685256,dTTjNmBn1571676706336', 'http://www.yellmedia.net/movies/20191106/0RJBTGxRCY20191106157299017209524507136/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191106/0RJBTGxRCY20191106157299017209524507136.mp4', '1');
INSERT INTO `sampling_media` VALUES ('63', '0', '2019-11-06 06:13:08', '1', null, null, '2', '台湾Betty超靓嫩模E奶羽沫_张语欣_VIP情爱视频之性感女仆装台球案上模拟啪啪啪诱惑十足1080P原版', 'http://www.yellmedia.net/movies/20191106/EyuaMeFHCY20191106157299198390762734150.jpg', '0', '台湾Betty超靓嫩模E奶羽沫_张语欣_VIP情爱视频之性感女仆装台球案上模拟啪啪啪诱惑十足1080P原版', 'SgrHGQAg1571676685256,9eOb1hSJ1571676696710,dTTjNmBn1571676706336', 'http://www.yellmedia.net/movies/20191106/fJ8Iw3rZCY20191106157299191290142561730/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191106/fJ8Iw3rZCY20191106157299191290142561730.mp4', '1');
INSERT INTO `sampling_media` VALUES ('64', '0', '2019-11-07 17:31:01', '1', null, null, '2', '最新私人圈高颜值大二漂亮骚妹纸极限骚出天际新篇 淫乱校园 极美露出 披肩发好漂亮 高清私拍45P 高清720P版', 'http://www.yellmedia.net/movies/20191107/Ax5lNEmLCY20191107157311905667312735604.jpg', '0', '最新私人圈高颜值大二漂亮骚妹纸极限骚出天际新篇 淫乱校园 极美露出 披肩发好漂亮 高清私拍45P 高清720P版', 'dTTjNmBn1571676706336', 'http://www.yellmedia.net/movies/20191107/RU39sqPwCY20191107157311903057151627340/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191107/RU39sqPwCY20191107157311903057151627340.mp4', '1');
INSERT INTO `sampling_media` VALUES ('65', '0', '2019-11-07 17:59:10', '1', null, null, '3', '天然白虎粉穴美少妇013019 850carib白皙的身体不输18岁姑娘 韵味十足 长得很耐看 被双穴起开 酸爽', 'http://www.yellmedia.net/movies/20191110/LCGDHTjWCY20191110157337665508707614253.jpg', '0', '天然白虎粉穴美少妇013019 850carib白皙的身体不输18岁姑娘 韵味十足 长得很耐看 被双穴起开 酸爽', '85Qig58E1571676728975', 'http://www.yellmedia.net/movies/20191107/4ks5cGyFCY20191107157312073075347521036/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191107/4ks5cGyFCY20191107157312073075347521036.mp4', '1');
INSERT INTO `sampling_media` VALUES ('66', '0', '2019-11-07 18:09:54', '1', null, null, '2', '最新流出美足美臀恋物癖俱乐部白嫩抚媚成熟美少妇用肥臀嫩穴玉足不停摩擦肉棒到射精画面唯美诱人1080P超清', 'http://www.yellmedia.net/movies/20191107/x8PjJiV6CY20191107157312139195037125064.jpg', '0', '最新流出美足美臀恋物癖俱乐部白嫩抚媚成熟美少妇用肥臀嫩穴玉足不停摩擦肉棒到射精画面唯美诱人1080P超清', '85Qig58E1571676728975', 'http://www.yellmedia.net/movies/20191107/bK5yPuYHCY20191107157312137717025710643/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191107/bK5yPuYHCY20191107157312137717025710643.mp4', '1');
INSERT INTO `sampling_media` VALUES ('67', '0', '2019-11-07 18:24:06', '1', null, null, '2', 'om041', 'http://www.yellmedia.net/movies/20191107/GHbP2OwSCY20191107157312224351845126307.gif', '0', 'om041', 'dTTjNmBn1571676706336,cb755Iw41571676788269', 'http://www.yellmedia.net/movies/20191107/Kih2o6VRCY20191107157312221300160512473/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191107/Kih2o6VRCY20191107157312221300160512473.mp4', '1');
INSERT INTO `sampling_media` VALUES ('68', '0', '2019-11-07 18:25:58', '1', null, null, '3', '在广州做服装生意混得不错的肯亚小哥寓所搞少妇温柔的慢插搞得骚妇好爽啊啊叫', 'http://www.yellmedia.net/movies/20191110/HR4URqv8CY20191110157337676275042516307.jpg', '0', '在广州做服装生意混得不错的肯亚小哥寓所搞少妇温柔的慢插搞得骚妇好爽啊啊叫', 'SgrHGQAg1571676685256,cb755Iw41571676788269', 'http://www.yellmedia.net/movies/20191107/dtiL5iSKCY20191107157312233067516734052/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191107/dtiL5iSKCY20191107157312233067516734052.mp4', '1');
INSERT INTO `sampling_media` VALUES ('69', '0', '2019-11-07 18:44:48', '1', null, null, '2', '每月5位数包养的腰细臀美的女神级性感美女酒店被土豪疯狂抽插调教,屁股上写的都是淫话,各种体位狠狠干逼!', 'http://www.yellmedia.net/movies/20191107/1stRbdcgCY20191107157312348518065740321.jpg', '0', '每月5位数包养的腰细臀美的女神级性感美女酒店被土豪疯狂抽插调教,屁股上写的都是淫话,各种体位狠狠干逼!', 'SgrHGQAg1571676685256,dTTjNmBn1571676706336', 'http://www.yellmedia.net/movies/20191107/ulPUroK2CY20191107157312347204761752043/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191107/ulPUroK2CY20191107157312347204761752043.mp4', '1');
INSERT INTO `sampling_media` VALUES ('70', '0', '2019-11-08 17:09:04', '1', null, null, '2', '高清精品小水滴盜攝身材超棒皮肤白皙的美女被大叔乱插', 'http://www.yellmedia.net/movies/20191108/mtIndcnFCY20191108157320413879021047635.jpg', '0', '高清精品小水滴盜攝身材超棒皮肤白皙的美女被大叔乱插', 'SgrHGQAg1571676685256', 'http://www.yellmedia.net/movies/20191108/pmIJFU6tCY20191108157320411659770351642/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191108/pmIJFU6tCY20191108157320411659770351642.mp4', '1');
INSERT INTO `sampling_media` VALUES ('71', '0', '2019-11-08 17:29:19', '1', null, null, '4', '網路瘋傳的極品E奶淫蕩少婦戶外露出 與小鮮肉深喉口爆拳交顏射', 'http://www.yellmedia.net/movies/20191108/WZFtrj8SCY20191108157320535504230647512.jpg', '0', '網路瘋傳的極品E奶淫蕩少婦戶外露出 與小鮮肉深喉口爆拳交顏射', 'SgrHGQAg1571676685256,9eOb1hSJ1571676696710,dTTjNmBn1571676706336', 'http://www.yellmedia.net/movies/20191108/VDBxWIy4CY20191108157320487631835674021/index.m3u8', '1', 'http://www.yellmedia.net/movies/20191108/VDBxWIy4CY20191108157320487631835674021.mp4', '1');
INSERT INTO `sampling_media` VALUES ('80', '0', '2019-11-10 14:10:48', '1', null, null, '3', '猛男办公室大战风骚欲女疯狂4P轮操 办公桌上扛腿就开操 自拍猛男受不了亲自出屌操 完美露脸 高清加长版', 'http://www.yellmedia.net/movies/20191110/aJuGKxcrCY20191110157337699022802357614.jpg', '0', '猛男办公室大战风骚欲女疯狂4P轮操 办公桌上扛腿就开操 自拍猛男受不了亲自出屌操 完美露脸 高清加长版', 'SgrHGQAg1571676685256,cb755Iw41571676788269', 'http://www.yellmedia.net/movies/20191110/wq0eqbwWCY20191110157336614976565132704/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191110/wq0eqbwWCY20191110157336614976565132704.mp4', '1');
INSERT INTO `sampling_media` VALUES ('73', '0', '2019-11-09 13:33:05', '1', null, null, '2', '最新流出留学生『苏琪』与外国男友日常啪啪私拍 沙发上无套爆操 爆精颜射之后插入接着操真猛啊 高清1080P版', 'http://www.yellmedia.net/movies/20191109/OIZwt5hICY20191109157327757528565721043.jpg', '0', '最新流出留学生『苏琪』与外国男友日常啪啪私拍 沙发上无套爆操 爆精颜射之后插入接着操真猛啊 高清1080P版', 'SgrHGQAg1571676685256', 'http://www.yellmedia.net/movies/20191109/eZA6f0agCY20191109157327752851372465130/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191109/eZA6f0agCY20191109157327752851372465130.mp4', '1');
INSERT INTO `sampling_media` VALUES ('74', '0', '2019-11-09 13:57:47', '1', null, null, '2', 'ipz-390 Rio JP無碼破解_ pra2', 'http://www.yellmedia.net/movies/20191109/cxpYRYMWCY20191109157327895119557210643.jpg', '0', 'ipz-390 Rio JP無碼破解_ pra2', 'XO5JFnuW1571676714333,85Qig58E1571676728975', 'http://www.yellmedia.net/movies/20191109/fDuarK1SCY20191109157327852283002157346/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191109/fDuarK1SCY20191109157327852283002157346.mp4', '1');
INSERT INTO `sampling_media` VALUES ('75', '0', '2019-11-09 15:23:12', '1', null, null, '3', '最新尤果网女神『乔依琳』大尺度私拍流出 女神全裸色影师掰穴肆意玩弄 美鲍特写 高清1080P版1', 'http://www.yellmedia.net/movies/20191109/lkbGfOxCCY20191109157328418595416740352.png', '0', '最新尤果网女神『乔依琳』大尺度私拍流出 女神全裸色影师掰穴肆意玩弄 美鲍特写 高清1080P版1', 'SgrHGQAg1571676685256', 'http://www.yellmedia.net/movies/20191109/AzXUCIvZCY20191109157328411726273140526/index.m3u8', '1', 'http://www.yellmedia.net/movies/20191109/AzXUCIvZCY20191109157328411726273140526.mp4', '1');
INSERT INTO `sampling_media` VALUES ('76', '0', '2019-11-09 15:34:19', '1', null, null, '3', '颜值不错白皙大奶妹子自慰秀 沙发上跳蛋塞逼逼自摸看着非常诱人 很是诱惑喜欢不要错过', 'http://www.yellmedia.net/movies/20191109/8vlWUCazCY20191109157328480455352647103.jpg', '0', '颜值不错白皙大奶妹子自慰秀 沙发上跳蛋塞逼逼自摸看着非常诱人 很是诱惑喜欢不要错过', 'SgrHGQAg1571676685256,9eOb1hSJ1571676696710', 'http://www.yellmedia.net/movies/20191109/BCdXx7ALCY20191109157328476235206752413/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191109/BCdXx7ALCY20191109157328476235206752413.mp4', '1');
INSERT INTO `sampling_media` VALUES ('77', '0', '2019-11-09 16:04:06', '1', null, null, '3', '小可爱平台_原卡哇伊_高颜值美女主播吸舔取精收费大秀 洗澡掰逼 脸蛋身材都美 十分诱人', 'http://www.yellmedia.net/movies/20191109/n5fB9AgfCY20191109157328664357021546307.jpg', '0', '小可爱平台_原卡哇伊_高颜值美女主播吸舔取精收费大秀 洗澡掰逼 脸蛋身材都美 十分诱人', 'SgrHGQAg1571676685256', 'http://www.yellmedia.net/movies/20191109/iiSRsWgUCY20191109157328658163243056127/index.m3u8', '1', 'http://www.yellmedia.net/movies/20191109/iiSRsWgUCY20191109157328658163243056127.mp4', '1');
INSERT INTO `sampling_media` VALUES ('78', '0', '2019-11-09 16:14:19', '1', null, null, '3', '11月最新女神lena', 'http://www.yellmedia.net/movies/20191109/TOPHHWuPCY20191109157328725276307632154.jpg', '0', '11月最新女神lena', 'cb755Iw41571676788269', 'http://www.yellmedia.net/movies/20191109/9jxq8QZOCY20191109157328723125057623410/index.m3u8', '1', 'http://www.yellmedia.net/movies/20191109/9jxq8QZOCY20191109157328723125057623410.mp4', '1');
INSERT INTO `sampling_media` VALUES ('79', '0', '2019-11-10 14:10:48', '1', null, null, '3', '精致小美女被家教老师搞了啪啪刺激肉欲作品 妹子很嫩仙气飘飘颜值高看了忍不住鸡儿硬太冲动想插进去720P高清', 'http://www.yellmedia.net/movies/20191110/15n5hVdoCY20191110157337703310151264703.jpg', '0', '精致小美女被家教老师搞了啪啪刺激肉欲作品 妹子很嫩仙气飘飘颜值高看了忍不住鸡儿硬太冲动想插进去720P高清', 'SgrHGQAg1571676685256', 'http://www.yellmedia.net/movies/20191110/CPtk9v8fCY20191110157336350481245013627/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191110/CPtk9v8fCY20191110157336350481245013627.mp4', '1');
INSERT INTO `sampling_media` VALUES ('81', '0', '2019-11-10 14:46:37', '1', null, null, '3', '高冷美女吃饭时被朋友偷偷往酒里放了点东西后迷迷糊糊被带到酒店啪啪', 'http://www.yellmedia.net/movies/20191110/AsxdF8AmCY20191110157337695117836051247.png', '0', '高冷美女吃饭时被朋友偷偷往酒里放了点东西后迷迷糊糊被带到酒店啪啪', 'SgrHGQAg1571676685256', 'http://www.yellmedia.net/movies/20191110/RVYIv3zYCY20191110157336653271920764315/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191110/RVYIv3zYCY20191110157336653271920764315.mp4', '1');
INSERT INTO `sampling_media` VALUES ('83', '0', '2019-11-10 17:01:33', '1', null, null, '2', '私人定制空姐兼职外围女黄某然酒店给富二代提供特殊服务', 'http://www.yellmedia.net/movies/20191110/WTA9UnpICY20191110157337648480947513062.jpg', '0', '私人定制空姐兼职外围女黄某然酒店给富二代提供特殊服务', 'SgrHGQAg1571676685256', 'http://www.yellmedia.net/movies/20191110/Wc1KmPoQCY20191110157337641153373456102/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191110/Wc1KmPoQCY20191110157337641153373456102.mp4', '1');
INSERT INTO `sampling_media` VALUES ('86', '0', '2019-11-10 18:07:26', '1', null, null, '2', '猛男炮友和喜欢户外野战的漂亮可爱小姐姐午夜车震 无套爆操快把骚货操哭了 连续两次高潮 直接内射 表情销魂', 'http://www.yellmedia.net/movies/20191110/ggCiBFzUCY20191110157338044238005763412.jpg', '0', '猛男炮友和喜欢户外野战的漂亮可爱小姐姐午夜车震 无套爆操快把骚货操哭了 连续两次高潮 直接内射 表情销魂', 'SgrHGQAg1571676685256', 'http://www.yellmedia.net/movies/20191110/jgXVoUZ6CY20191110157338039796463501247/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191110/jgXVoUZ6CY20191110157338039796463501247.mp4', '1');
INSERT INTO `sampling_media` VALUES ('87', '0', '2019-11-10 18:14:43', '1', null, null, '2', 'A4U美乳靓模性感内衣撩骚脱衣舞脱光光坐在床边自慰很有撸点', 'http://www.yellmedia.net/movies/20191110/lvDEq73ACY20191110157338087529724751360.jpg', '0', 'A4U美乳靓模性感内衣撩骚脱衣舞脱光光坐在床边自慰很有撸点', 'SgrHGQAg1571676685256', 'http://www.yellmedia.net/movies/20191110/3OxlxdQxCY20191110157338078981312536047/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191110/3OxlxdQxCY20191110157338078981312536047.mp4', '1');
INSERT INTO `sampling_media` VALUES ('88', '0', '2019-11-10 19:06:25', '1', null, null, '2', '明星脸蛋网红美女骚大宝和帅哥男友小圆凳子上啪啪呻吟给力', 'http://www.yellmedia.net/movies/20191110/0cagQcMzCY20191110157338398112806245137.jpg', '0', '明星脸蛋网红美女骚大宝和帅哥男友小圆凳子上啪啪呻吟给力', 'SgrHGQAg1571676685256', 'http://www.yellmedia.net/movies/20191110/JgH59LTsCY20191110157338337769674620153/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191110/JgH59LTsCY20191110157338337769674620153.mp4', '1');
INSERT INTO `sampling_media` VALUES ('89', '0', '2019-11-10 19:27:15', '1', null, null, '2', '高颜值极品身材女优刮毛后拍片，虽说拍片多但逼还是粉嫩的', 'http://www.yellmedia.net/movies/20191110/60nzqxrrCY20191110157338522974976120354.jpg', '0', '高颜值极品身材女优刮毛后拍片，虽说拍片多但逼还是粉嫩的', 'SgrHGQAg1571676685256', 'http://www.yellmedia.net/movies/20191110/CmRkt5oQCY20191110157338518155032106754/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191110/CmRkt5oQCY20191110157338518155032106754.mp4', '1');
INSERT INTO `sampling_media` VALUES ('90', '0', '2019-11-10 19:39:27', '1', null, null, '2', '极品美少女浅浅脱光掰穴生理课程开课 怎么抓奶舒服 穴位按摩 老湿机 附4P', 'http://www.yellmedia.net/movies/20191110/c3P30lNeCY20191110157338596326426741035.jpg', '0', '极品美少女浅浅脱光掰穴生理课程开课 怎么抓奶舒服 穴位按摩 老湿机 附4P', 'SgrHGQAg1571676685256', 'http://www.yellmedia.net/movies/20191110/TYLLgjBgCY20191110157338552996275201364/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191110/TYLLgjBgCY20191110157338552996275201364.mp4', '1');
INSERT INTO `sampling_media` VALUES ('91', '0', '2019-11-10 20:08:10', '1', null, null, '2', '年龄不大短发清纯妹子和男友啪啪 逼逼粉嫩上位后入抽插搞完再自摸 很是诱惑喜欢不要错过', 'http://www.yellmedia.net/movies/20191110/9bvoitamCY20191110157338768149804527316.jpg', '0', '年龄不大短发清纯妹子和男友啪啪 逼逼粉嫩上位后入抽插搞完再自摸 很是诱惑喜欢不要错过', 'SgrHGQAg1571676685256', 'http://www.yellmedia.net/movies/20191110/y7TnTaD0CY20191110157338734646201736425/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191110/y7TnTaD0CY20191110157338734646201736425.mp4', '1');
INSERT INTO `sampling_media` VALUES ('92', '0', '2019-11-10 20:26:31', '1', null, null, '2', '土豪私人订制-白皙性感的美女护士出诊看望病人时被强行弄晕扒掉衣服玩弄嫩穴啪啪,身材好,奶子大颜值高!', 'http://www.yellmedia.net/movies/20191110/ouklYpS9CY20191110157338878060061075243.jpg', '0', '土豪私人订制-白皙性感的美女护士出诊看望病人时被强行弄晕扒掉衣服玩弄嫩穴啪啪,身材好,奶子大颜值高!', 'SgrHGQAg1571676685256', 'http://www.yellmedia.net/movies/20191110/hG0RFh3uCY20191110157338848130045307216/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191110/hG0RFh3uCY20191110157338848130045307216.mp4', '1');
INSERT INTO `sampling_media` VALUES ('93', '0', '2019-11-10 20:34:41', '1', null, null, '2', '上海魔鬼身材美女研究生和外籍男友居家私拍性爱啪啪视频外泄,外表女神床上淫荡,逼逼看上去相当紧致,阴唇真长!', 'http://www.yellmedia.net/movies/20191110/3IHCgsM4CY20191110157338927795535647120.jpg', '0', '上海魔鬼身材美女研究生和外籍男友居家私拍性爱啪啪视频外泄,外表女神床上淫荡,逼逼看上去相当紧致,阴唇真长!', 'SgrHGQAg1571676685256', 'http://www.yellmedia.net/movies/20191110/k5EZOm0HCY20191110157338897866035174602/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191110/k5EZOm0HCY20191110157338897866035174602.mp4', '1');
INSERT INTO `sampling_media` VALUES ('94', '0', '2019-11-10 20:50:29', '1', null, null, '2', '酒店强行推倒女友性感漂亮的美女闺蜜,在一起吃过几次饭聊了一段时间约到酒店后磨磨唧唧,半推半就干了她!', 'http://www.yellmedia.net/movies/20191110/SngCGxG2CY20191110157339022068013704265.jpg', '0', '酒店强行推倒女友性感漂亮的美女闺蜜,在一起吃过几次饭聊了一段时间约到酒店后磨磨唧唧,半推半就干了她!', 'SgrHGQAg1571676685256', 'http://www.yellmedia.net/movies/20191110/sqvY4ko1CY20191110157339005436021635407/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191110/sqvY4ko1CY20191110157339005436021635407.mp4', '1');
INSERT INTO `sampling_media` VALUES ('95', '0', '2019-11-10 21:03:13', '1', null, null, '2', '『热辣宝贝疯狂夜』极品黑丝少妇与健身猛男沙发激情做爱 无套暴力抽插 喷血震荡臀浪 后入控福利 高清720P版', 'http://www.yellmedia.net/movies/20191110/VsLGkWcYCY20191110157339096571262473015.gif', '0', '『热辣宝贝疯狂夜』极品黑丝少妇与健身猛男沙发激情做爱 无套暴力抽插 喷血震荡臀浪 后入控福利 高清720P版', 'SgrHGQAg1571676685256', 'http://www.yellmedia.net/movies/20191110/P0JQpXVzCY20191110157339063107202741635/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191110/P0JQpXVzCY20191110157339063107202741635.mp4', '1');
INSERT INTO `sampling_media` VALUES ('96', '0', '2019-11-11 14:19:26', '1', null, null, '2', '高颜值气质不错妹子露逼诱惑秀 逼逼非常粉嫩诱人脱光光自摸跳蛋震动 很是诱惑喜欢不要错过', 'http://www.yellmedia.net/movies/20191111/tOjuTuNXCY20191111157345316199321653074.jpg', '0', '高颜值气质不错妹子露逼诱惑秀 逼逼非常粉嫩诱人脱光光自摸跳蛋震动 很是诱惑喜欢不要错过', 'SgrHGQAg1571676685256,dTTjNmBn1571676706336', 'http://www.yellmedia.net/movies/20191111/tYOdHoEXCY20191111157345313721143016572/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191111/tYOdHoEXCY20191111157345313721143016572.mp4', '1');
INSERT INTO `sampling_media` VALUES ('97', '0', '2019-11-11 14:25:10', '1', null, null, '2', '大佬流出 疑似演员李沐宸 网剧全职高手女配 早年与人裸聊视频 附69P', 'http://www.yellmedia.net/movies/20191111/Fpllyy5eCY20191111157345350644424675103.png', '0', '大佬流出 疑似演员李沐宸 网剧全职高手女配 早年与人裸聊视频 附69P', 'SgrHGQAg1571676685256', 'http://www.yellmedia.net/movies/20191111/bmKWuyhcCY20191111157345344547271540236/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191111/bmKWuyhcCY20191111157345344547271540236.mp4', '1');
INSERT INTO `sampling_media` VALUES ('98', '0', '2019-11-11 14:30:52', '1', null, null, '2', '女神级性感外围美女高级酒店援交土豪,先干嘴巴后肏逼,36E美乳大胸,冲刺时后插式干的淫叫不止!', 'http://www.yellmedia.net/movies/20191111/3O58rEBECY20191111157345384960254106372.jpg', '0', '女神级性感外围美女高级酒店援交土豪,先干嘴巴后肏逼,36E美乳大胸,冲刺时后插式干的淫叫不止!', 'SgrHGQAg1571676685256,dTTjNmBn1571676706336', 'http://www.yellmedia.net/movies/20191111/qZi6GL74CY20191111157345380600524713065/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191111/qZi6GL74CY20191111157345380600524713065.mp4', '1');
INSERT INTO `sampling_media` VALUES ('99', '0', '2019-11-11 14:47:39', '1', null, null, '2', '36E肤白貌美性感的平面美女嫩模高级公寓拍摄大尺度资源时被现场2人看见超粉嫩干净的小穴趁机潜规则啪啪!', 'http://www.yellmedia.net/movies/20191111/8FvsLWGBCY20191111157345485063063124507.jpg', '0', '36E肤白貌美性感的平面美女嫩模高级公寓拍摄大尺度资源时被现场2人看见超粉嫩干净的小穴趁机潜规则啪啪!', 'SgrHGQAg1571676685256,dTTjNmBn1571676706336', 'http://www.yellmedia.net/movies/20191111/3kK2XKPGCY20191111157345483338320167543/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191111/3kK2XKPGCY20191111157345483338320167543.mp4', '1');
INSERT INTO `sampling_media` VALUES ('100', '0', '2019-11-11 15:02:24', '1', null, null, '2', '红唇大奶少妇双人啪啪大秀 情趣装舔奶口交上位骑坐后入性感大屁股 很是诱惑喜欢不要错过', 'http://www.yellmedia.net/movies/20191111/1syJqdiBCY20191111157345573826756034172.jpg', '0', '红唇大奶少妇双人啪啪大秀 情趣装舔奶口交上位骑坐后入性感大屁股 很是诱惑喜欢不要错过', 'SgrHGQAg1571676685256', 'http://www.yellmedia.net/movies/20191111/5DITCsOVCY20191111157345571045604153267/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191111/5DITCsOVCY20191111157345571045604153267.mp4', '1');
INSERT INTO `sampling_media` VALUES ('101', '0', '2019-11-11 15:12:41', '1', null, null, '2', '【泄密视频铂金版】精选男女主角-美女多多-（第二十三集）', 'http://www.yellmedia.net/movies/20191111/p6jlltL6CY20191111157345635673262517034.jpg', '0', '【泄密视频铂金版】精选男女主角-美女多多-（第二十三集）', 'SgrHGQAg1571676685256', 'http://www.yellmedia.net/movies/20191111/r2pGgAQgCY20191111157345610964923165740/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191111/r2pGgAQgCY20191111157345610964923165740.mp4', '1');
INSERT INTO `sampling_media` VALUES ('102', '0', '2019-11-11 15:36:39', '1', null, null, '2', '小可爱平台_原卡哇伊_清纯漂亮小美女懒洋洋直播大秀 跳蛋插穴自慰 十分诱人', 'http://www.yellmedia.net/movies/20191111/LPbvVoYCCY20191111157345779616856210374.jpg', '0', '小可爱平台_原卡哇伊_清纯漂亮小美女懒洋洋直播大秀 跳蛋插穴自慰 十分诱人', 'SgrHGQAg1571676685256', 'http://www.yellmedia.net/movies/20191111/XMgQjWblCY20191111157345715112560215743/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191111/XMgQjWblCY20191111157345715112560215743.mp4', '1');
INSERT INTO `sampling_media` VALUES ('103', '0', '2019-11-11 16:32:28', '1', null, null, '2', '金屋藏娇阁漂亮主播媛媛酱激情自慰大秀 颜值不错身材好 激情自慰 十分诱人', 'http://www.yellmedia.net/movies/20191111/p4mJMIm8CY20191111157346112708870463512.jpg', '0', '金屋藏娇阁漂亮主播媛媛酱激情自慰大秀 颜值不错身材好 激情自慰 十分诱人', 'SgrHGQAg1571676685256', 'http://www.yellmedia.net/movies/20191111/xspucOecCY20191111157345904165451206734/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191111/xspucOecCY20191111157345904165451206734.mp4', '1');
INSERT INTO `sampling_media` VALUES ('105', '0', '2019-11-11 17:27:43', '1', null, null, '2', '豪华精品佳作-酒店约操刚上大学超强发育的34D美乳粉穴大一性感美女,极品粉穴特写,前面干完又后入抽插', 'http://www.yellmedia.net/movies/20191111/DRXeYYmtCY20191111157346446028450341276.jpg', '0', '豪华精品佳作-酒店约操刚上大学超强发育的34D美乳粉穴大一性感美女,极品粉穴特写,前面干完又后入抽插', 'SgrHGQAg1571676685256', 'http://www.yellmedia.net/movies/20191111/8PaTM71xCY20191111157346444241453276401/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191111/8PaTM71xCY20191111157346444241453276401.mp4', '1');
INSERT INTO `sampling_media` VALUES ('106', '0', '2019-11-11 17:36:54', '1', null, null, '2', '最新流出美臀美足美腿俱乐部极品白嫩漂亮姐妹花销魂互慰无毛嫩穴诱人呻吟声受不了画面唯美撸点很高1080P超清', 'http://www.yellmedia.net/movies/20191111/0RlAEzugCY20191111157346501099145237016.jpg', '0', '最新流出美臀美足美腿俱乐部极品白嫩漂亮姐妹花销魂互慰无毛嫩穴诱人呻吟声受不了画面唯美撸点很高1080P超清', '85Qig58E1571676728975', 'http://www.yellmedia.net/movies/20191111/Eh7YXxKbCY20191111157346493776563504271/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191111/Eh7YXxKbCY20191111157346493776563504271.mp4', '1');
INSERT INTO `sampling_media` VALUES ('107', '0', '2019-11-11 18:29:52', '1', null, null, '2', '最新流出素人投稿自拍小蛮腰翘臀美乳大学生漂亮援交妹与富二代啪啪啪还没干爱液就湿透内裤撸点很高', 'http://www.yellmedia.net/movies/20191111/5gNllejACY20191111157346818831632476150.jpg', '0', '最新流出素人投稿自拍小蛮腰翘臀美乳大学生漂亮援交妹与富二代啪啪啪还没干爱液就湿透内裤撸点很高', 'SgrHGQAg1571676685256', 'http://www.yellmedia.net/movies/20191111/ObK6lCFeCY20191111157346575358103147526/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191111/ObK6lCFeCY20191111157346575358103147526.mp4', '1');
INSERT INTO `sampling_media` VALUES ('108', '0', '2019-11-11 18:45:17', '1', null, null, '2', '骚气大奶妹和炮友双人啪啪大秀 深喉口交拨开内裤后入抽插性感大屁股非常诱人 很是诱惑喜欢不要错过', 'http://www.yellmedia.net/movies/20191111/qWnYzQ50CY20191111157346911341315043672.jpg', '0', '骚气大奶妹和炮友双人啪啪大秀 深喉口交拨开内裤后入抽插性感大屁股非常诱人 很是诱惑喜欢不要错过', 'SgrHGQAg1571676685256', 'http://www.yellmedia.net/movies/20191111/s10uL5xSCY20191111157346906252417304265/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191111/s10uL5xSCY20191111157346906252417304265.mp4', '1');
INSERT INTO `sampling_media` VALUES ('109', '0', '2019-11-11 19:25:06', '1', null, null, '2', '高颜值美女完美乳房浑圆饱满挡不住一看就想舔吸冲动要硬作品 妹子绝对是尤物这身材高挑白嫩插入射啊720P高清', 'http://www.yellmedia.net/movies/20191111/gomNnqOKCY20191111157347150363745213607.jpg', '0', '高颜值美女完美乳房浑圆饱满挡不住一看就想舔吸冲动要硬作品 妹子绝对是尤物这身材高挑白嫩插入射啊720P高清', 'SgrHGQAg1571676685256', 'http://www.yellmedia.net/movies/20191111/fnZv1AtkCY20191111157346968610437016254/index.m3u8', '0', 'http://www.yellmedia.net/movies/20191111/fnZv1AtkCY20191111157346968610437016254.mp4', '1');

-- ----------------------------
-- Table structure for sampling_media_order
-- ----------------------------
DROP TABLE IF EXISTS `sampling_media_order`;
CREATE TABLE `sampling_media_order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `deleted` tinyint(4) DEFAULT 0 COMMENT '逻辑删除状态0未删除,1已删除',
  `raw_add_time` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '创建时间',
  `raw_creator` varchar(20) DEFAULT NULL COMMENT '创建人',
  `raw_modifier` varchar(20) DEFAULT NULL COMMENT '修改人',
  `raw_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `raw_version` smallint(6) unsigned NOT NULL DEFAULT 1 COMMENT '版本号',
  `order_id` varchar(200) DEFAULT NULL COMMENT '系统商订单ID',
  `user_id` varchar(255) DEFAULT NULL COMMENT '用户ID',
  `video_id` varchar(255) DEFAULT NULL COMMENT '视频ID',
  `order_amount` varchar(8) DEFAULT NULL COMMENT '订单金额',
  PRIMARY KEY (`id`),
  KEY `media_type_index_order` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4202 DEFAULT CHARSET=utf8 COMMENT='订单表';

-- ----------------------------
-- Records of sampling_media_order
-- ----------------------------
INSERT INTO `sampling_media_order` VALUES ('1', '0', '2019-10-22 01:48:50', null, '1', null, '1', '170399962604', '843195982d7001492b874766994cb249c607ef071571673376274', '1', null);
INSERT INTO `sampling_media_order` VALUES ('2', '0', '2019-10-22 02:03:01', null, '1', null, '1', '170399348817', '843195982d7001492b874766994cb249c607ef071571673376274', '1', null);
INSERT INTO `sampling_media_order` VALUES ('3', '0', '2019-10-22 02:03:08', null, '1', null, '1', '170399358815', '843195982d7001492b874766994cb249c607ef071571673376274', '1', null);
INSERT INTO `sampling_media_order` VALUES ('4', '0', '2019-10-22 02:05:48', null, '1', null, '1', '170399338515', '843195982d7001492b874766994cb249c607ef071571673376274', '1', null);
INSERT INTO `sampling_media_order` VALUES ('5', '0', '2019-10-22 02:10:47', null, '1', null, '1', '170399388116', '843195982d7001492b874766994cb249c607ef071571673376274', '1', null);
INSERT INTO `sampling_media_order` VALUES ('6', '0', '2019-10-22 02:13:02', null, '1', null, '1', '170399358515', '843195982d7001492b874766994cb249c607ef071571673376274', '1', null);
INSERT INTO `sampling_media_order` VALUES ('7', '0', '2019-10-22 02:19:35', null, '1', null, '1', '170398069404', '843195982d7001492b874766994cb249c607ef071571673376274', '1', null);
INSERT INTO `sampling_media_order` VALUES ('8', '0', '2019-10-22 02:20:32', null, '1', null, '1', '170398059102', '843195982d7001492b874766994cb249c607ef071571673376274', '1', null);
INSERT INTO `sampling_media_order` VALUES ('9', '0', '2019-10-22 02:24:08', null, '1', null, '1', '170398039603', '843195982d7001492b874766994cb249c607ef071571673376274', '1', null);
INSERT INTO `sampling_media_order` VALUES ('10', '0', '2019-10-22 02:29:46', null, '1', null, '1', '170398069501', '843195982d7001492b874766994cb249c607ef071571673376274', '1', null);
INSERT INTO `sampling_media_order` VALUES ('11', '0', '2019-10-22 02:55:21', null, '1', null, '1', '170390274337', '843195982d7001492b874766994cb249c607ef071571673376274', '1', null);
INSERT INTO `sampling_media_order` VALUES ('12', '0', '2019-10-22 03:08:57', null, '1', null, '1', '170392513379', '843195982d7001492b874766994cb249c607ef071571673376274', '1', null);
INSERT INTO `sampling_media_order` VALUES ('13', '0', '2019-10-22 03:10:02', null, '1', null, '1', '170392513673', '843195982d7001492b874766994cb249c607ef071571673376274', '1', null);
INSERT INTO `sampling_media_order` VALUES ('14', '0', '2019-10-22 03:12:11', null, '1', null, '1', '170392573875', '843195982d7001492b874766994cb249c607ef071571673376274', '1', null);
INSERT INTO `sampling_media_order` VALUES ('15', '0', '2019-10-22 03:14:49', null, '1', null, '1', '170392523673', '843195982d7001492b874766994cb249c607ef071571673376274', '1', null);
INSERT INTO `sampling_media_order` VALUES ('16', '0', '2019-10-22 03:26:10', null, '1', null, '1', '170392858675', '843195982d7001492b874766994cb249c607ef071571673376274', '1', null);
INSERT INTO `sampling_media_order` VALUES ('17', '0', '2019-10-22 03:27:25', null, '1', null, '1', '170392888371', '843195982d7001492b874766994cb249c607ef071571673376274', '1', null);
INSERT INTO `sampling_media_order` VALUES ('18', '0', '2019-10-22 03:28:20', null, '1', null, '1', '170392848774', '843195982d7001492b874766994cb249c607ef071571673376274', '1', null);
INSERT INTO `sampling_media_order` VALUES ('19', '0', '2019-10-22 03:30:04', null, '1', null, '1', '170392858278', '843195982d7001492b874766994cb249c607ef071571673376274', '1', null);
INSERT INTO `sampling_media_order` VALUES ('20', '0', '2019-10-22 03:30:49', null, '1', null, '1', '170392818176', '843195982d7001492b874766994cb249c607ef071571673376274', '1', null);
INSERT INTO `sampling_media_order` VALUES ('21', '0', '2019-10-22 03:31:56', null, '1', null, '1', '170392868375', '843195982d7001492b874766994cb249c607ef071571673376274', '1', null);
INSERT INTO `sampling_media_order` VALUES ('22', '0', '2019-10-22 03:32:41', null, '1', null, '1', '170392858473', '843195982d7001492b874766994cb249c607ef071571673376274', '1', null);
INSERT INTO `sampling_media_order` VALUES ('23', '0', '2019-10-22 03:36:04', null, '1', null, '1', '170392828373', '843195982d7001492b874766994cb249c607ef071571673376274', '1', null);
INSERT INTO `sampling_media_order` VALUES ('24', '0', '2019-10-22 03:38:01', null, '1', null, '1', '170392838473', '843195982d7001492b874766994cb249c607ef071571673376274', '1', null);
INSERT INTO `sampling_media_order` VALUES ('25', '0', '2019-10-22 03:51:13', null, '1', null, '1', '170392342797', '843195982d7001492b874766994cb249c607ef071571673376274', '1', null);
INSERT INTO `sampling_media_order` VALUES ('26', '0', '2019-10-22 03:52:39', null, '1', null, '1', '170392374437', '843195982d7001492b874766994cb249c607ef071571673376274', '3', null);
INSERT INTO `sampling_media_order` VALUES ('27', '0', '2019-10-22 03:54:25', null, '1', null, '1', '170392364232', '843195982d7001492b874766994cb249c607ef071571673376274', '3', null);
INSERT INTO `sampling_media_order` VALUES ('28', '0', '2019-10-22 03:55:43', null, '1', null, '1', '170392364533', '843195982d7001492b874766994cb249c607ef071571673376274', '1', null);
INSERT INTO `sampling_media_order` VALUES ('29', '0', '2019-10-22 03:56:38', null, '1', null, '1', '170391777614', '843195982d7001492b874766994cb249c607ef071571673376274', '3', null);
INSERT INTO `sampling_media_order` VALUES ('30', '0', '2019-10-22 03:57:07', null, '1', null, '1', '170391737413', '843195982d7001492b874766994cb249c607ef071571673376274', '1', null);
INSERT INTO `sampling_media_order` VALUES ('31', '0', '2019-10-22 03:59:28', null, '1', null, '1', '170391731232', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '2', null);
INSERT INTO `sampling_media_order` VALUES ('32', '0', '2019-10-22 04:00:21', null, '1', null, '1', '170391655636', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '1', null);
INSERT INTO `sampling_media_order` VALUES ('33', '0', '2019-10-22 04:03:50', null, '1', null, '1', '170391976914', '380806836f4a5f34612b4bd3b4557f9b624099e41571688199660', '3', null);
INSERT INTO `sampling_media_order` VALUES ('34', '0', '2019-10-22 04:05:28', null, '1', null, '1', '170391966618', '380806836f4a5f34612b4bd3b4557f9b624099e41571688199660', '3', null);
INSERT INTO `sampling_media_order` VALUES ('35', '0', '2019-10-22 04:08:13', null, '1', null, '1', '170391869916', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '3', null);
INSERT INTO `sampling_media_order` VALUES ('36', '0', '2019-10-22 04:24:59', null, '1', null, '1', '170391121712', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '1', null);
INSERT INTO `sampling_media_order` VALUES ('37', '0', '2019-10-22 04:25:08', null, '1', null, '1', '170391121217', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '1', null);
INSERT INTO `sampling_media_order` VALUES ('38', '0', '2019-10-22 04:28:23', null, '1', null, '1', '170391481539', '4664726943468837b3e54e0b8fab9315c10a428c1571689693774', '1', null);
INSERT INTO `sampling_media_order` VALUES ('39', '0', '2019-10-22 04:28:44', null, '1', null, '1', '170391421336', '4664726943468837b3e54e0b8fab9315c10a428c1571689693774', '1', null);
INSERT INTO `sampling_media_order` VALUES ('40', '0', '2019-10-22 04:28:51', null, '1', null, '1', '170391451938', '4664726943468837b3e54e0b8fab9315c10a428c1571689693774', '1', null);
INSERT INTO `sampling_media_order` VALUES ('41', '0', '2019-10-22 04:46:06', null, '1', null, '1', '170394741377', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '5', null);
INSERT INTO `sampling_media_order` VALUES ('42', '0', '2019-10-22 04:49:57', null, '1', null, '1', '170394628916', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '4', null);
INSERT INTO `sampling_media_order` VALUES ('43', '0', '2019-10-22 04:50:09', null, '1', null, '1', '170394628815', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '4', null);
INSERT INTO `sampling_media_order` VALUES ('44', '0', '2019-10-22 04:53:10', null, '1', null, '1', '170394958478', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '2', null);
INSERT INTO `sampling_media_order` VALUES ('45', '0', '2019-10-22 04:53:19', null, '1', null, '1', '170394938973', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '3', null);
INSERT INTO `sampling_media_order` VALUES ('46', '0', '2019-10-22 04:53:34', null, '1', null, '1', '170394978671', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '3', null);
INSERT INTO `sampling_media_order` VALUES ('47', '0', '2019-10-22 04:53:38', null, '1', null, '1', '170394978473', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '2', null);
INSERT INTO `sampling_media_order` VALUES ('48', '0', '2019-10-22 09:04:50', null, '1', null, '1', '170381849476', '96969209c4410e8f6e7e4e079c6fd16386d326bb1571706278371', '2', null);
INSERT INTO `sampling_media_order` VALUES ('49', '0', '2019-10-22 09:05:14', null, '1', null, '1', '170381829774', '96969209c4410e8f6e7e4e079c6fd16386d326bb1571706278371', '5', null);
INSERT INTO `sampling_media_order` VALUES ('50', '0', '2019-10-22 13:09:21', null, '1', null, '1', '170316338435', '380806836f4a5f34612b4bd3b4557f9b624099e41571688199660', '2', null);
INSERT INTO `sampling_media_order` VALUES ('51', '0', '2019-10-22 14:28:14', null, '1', null, '1', '170346273292', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '3', null);
INSERT INTO `sampling_media_order` VALUES ('52', '0', '2019-10-22 15:16:34', null, '1', null, '1', '170344185704', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '2', null);
INSERT INTO `sampling_media_order` VALUES ('53', '0', '2019-10-22 15:29:17', null, '1', null, '1', '170335934313', '444489248727b00310034e2e82644e8963c4354c1571729332253', '3', null);
INSERT INTO `sampling_media_order` VALUES ('54', '0', '2019-10-25 00:01:39', null, '1', null, '1', '172976965696', '96969209c4410e8f6e7e4e079c6fd16386d326bb1571706278371', '5', null);
INSERT INTO `sampling_media_order` VALUES ('55', '0', '2019-10-27 00:56:24', null, '1', null, '1', '20191027005623810100', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '5', null);
INSERT INTO `sampling_media_order` VALUES ('56', '0', '2019-10-27 00:59:38', null, '1', null, '1', '20191027005938496100', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '2', null);
INSERT INTO `sampling_media_order` VALUES ('57', '0', '2019-10-27 00:59:55', null, '1', null, '1', '20191027005955705100', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '1', null);
INSERT INTO `sampling_media_order` VALUES ('58', '0', '2019-10-27 01:00:01', null, '1', null, '1', '20191027010001561100', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '1', null);
INSERT INTO `sampling_media_order` VALUES ('59', '0', '2019-10-27 01:00:05', null, '1', null, '1', '20191027010005855100', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '4', null);
INSERT INTO `sampling_media_order` VALUES ('60', '0', '2019-10-27 01:00:09', null, '1', null, '1', '20191027010009192100', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '3', null);
INSERT INTO `sampling_media_order` VALUES ('61', '0', '2019-10-27 01:00:32', null, '1', null, '1', '20191027010032291100', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '1', null);
INSERT INTO `sampling_media_order` VALUES ('62', '0', '2019-10-27 01:00:34', null, '1', null, '1', '20191027010034435100', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '2', null);
INSERT INTO `sampling_media_order` VALUES ('63', '0', '2019-10-27 01:02:40', null, '1', null, '1', '20191027010240306100', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '5', null);
INSERT INTO `sampling_media_order` VALUES ('64', '0', '2019-10-27 01:02:52', null, '1', null, '1', '20191027010252294100', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '3', null);
INSERT INTO `sampling_media_order` VALUES ('65', '0', '2019-10-27 01:02:58', null, '1', null, '1', '20191027010258593100', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '3', null);
INSERT INTO `sampling_media_order` VALUES ('66', '0', '2019-10-27 01:03:08', null, '1', null, '1', '20191027010308102100', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '3', null);
INSERT INTO `sampling_media_order` VALUES ('67', '0', '2019-10-27 01:10:55', null, '1', null, '1', '20191027011055210100', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '1', null);
INSERT INTO `sampling_media_order` VALUES ('68', '0', '2019-10-27 01:11:14', null, '1', null, '1', '20191027011114688100', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '1', null);
INSERT INTO `sampling_media_order` VALUES ('69', '0', '2019-10-27 12:55:03', null, '1', null, '1', '20191027125503127100', '96969209c4410e8f6e7e4e079c6fd16386d326bb1571706278371', '3', null);
INSERT INTO `sampling_media_order` VALUES ('70', '0', '2019-10-27 12:57:17', null, '1', null, '1', '20191027125717778100', '96969209c4410e8f6e7e4e079c6fd16386d326bb1571706278371', '3', null);
INSERT INTO `sampling_media_order` VALUES ('71', '0', '2019-10-27 12:58:00', null, '1', null, '1', '20191027125800385100', '96969209c4410e8f6e7e4e079c6fd16386d326bb1571706278371', '2', null);
INSERT INTO `sampling_media_order` VALUES ('72', '0', '2019-10-27 14:07:23', null, '1', null, '1', '20191027140723418100', '380806836f4a5f34612b4bd3b4557f9b624099e41571688199660', '3', null);
INSERT INTO `sampling_media_order` VALUES ('73', '0', '2019-10-27 14:08:25', null, '1', null, '1', '20191027140825158100', '380806836f4a5f34612b4bd3b4557f9b624099e41571688199660', '3', null);
INSERT INTO `sampling_media_order` VALUES ('74', '0', '2019-10-27 15:18:46', null, '1', null, '1', '20191027151846739', '380806836f4a5f34612b4bd3b4557f9b624099e41571688199660', '4', null);
INSERT INTO `sampling_media_order` VALUES ('75', '0', '2019-10-27 15:19:31', null, '1', null, '1', '20191027151931674', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '4', null);
INSERT INTO `sampling_media_order` VALUES ('76', '0', '2019-10-27 15:21:06', null, '1', null, '1', '20191027152106681', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '1', null);
INSERT INTO `sampling_media_order` VALUES ('77', '0', '2019-10-27 15:21:12', null, '1', null, '1', '20191027152112643', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '2', null);
INSERT INTO `sampling_media_order` VALUES ('78', '0', '2019-10-27 15:21:16', null, '1', null, '1', '20191027152116636', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '3', null);
INSERT INTO `sampling_media_order` VALUES ('79', '0', '2019-10-27 15:21:26', null, '1', null, '1', '20191027152126837', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '5', null);
INSERT INTO `sampling_media_order` VALUES ('80', '0', '2019-10-27 15:22:36', null, '1', null, '1', '20191027152236398', '24019547a0e5499d1a0447aea0ab641e610b846a1572160951125', '2', null);
INSERT INTO `sampling_media_order` VALUES ('81', '0', '2019-10-27 15:45:46', null, '1', null, '1', '20191027154546957', '380806836f4a5f34612b4bd3b4557f9b624099e41571688199660', '3', null);
INSERT INTO `sampling_media_order` VALUES ('82', '0', '2019-10-27 15:46:01', null, '1', null, '1', '20191027154601194', '380806836f4a5f34612b4bd3b4557f9b624099e41571688199660', '5', null);
INSERT INTO `sampling_media_order` VALUES ('83', '0', '2019-10-27 17:16:29', null, '1', null, '1', '20191027171629442', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '2', null);
INSERT INTO `sampling_media_order` VALUES ('84', '0', '2019-10-27 17:16:42', null, '1', null, '1', '20191027171642458', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '5', null);
INSERT INTO `sampling_media_order` VALUES ('85', '0', '2019-10-27 17:17:03', null, '1', null, '1', '20191027171703824', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '5', null);
INSERT INTO `sampling_media_order` VALUES ('86', '0', '2019-10-27 18:49:31', null, '1', null, '1', '20191027184931383', '380806836f4a5f34612b4bd3b4557f9b624099e41571688199660', '2', null);
INSERT INTO `sampling_media_order` VALUES ('87', '0', '2019-10-27 19:20:12', null, '1', null, '1', '20191027192012189', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '3', null);
INSERT INTO `sampling_media_order` VALUES ('88', '0', '2019-10-27 19:21:01', null, '1', null, '1', '20191027192101499', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '1', null);
INSERT INTO `sampling_media_order` VALUES ('89', '0', '2019-10-27 22:40:42', null, '1', null, '1', '20191027224042411', '843195982d7001492b874766994cb249c607ef071571673376274', '3', null);
INSERT INTO `sampling_media_order` VALUES ('90', '0', '2019-10-27 23:00:44', null, '1', null, '1', '20191027230044968', '843195982d7001492b874766994cb249c607ef071571673376274', '1', null);
INSERT INTO `sampling_media_order` VALUES ('91', '0', '2019-10-28 00:14:44', null, '1', null, '1', '20191028001444569', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '7', null);
INSERT INTO `sampling_media_order` VALUES ('92', '0', '2019-10-28 00:15:40', null, '1', null, '1', '20191028001540319', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '7', null);
INSERT INTO `sampling_media_order` VALUES ('93', '0', '2019-10-28 00:15:45', null, '1', null, '1', '20191028001545831', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '7', null);
INSERT INTO `sampling_media_order` VALUES ('94', '0', '2019-10-28 00:16:51', null, '1', null, '1', '20191028001651147', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '7', null);
INSERT INTO `sampling_media_order` VALUES ('95', '0', '2019-10-28 00:17:11', null, '1', null, '1', '20191028001711879', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '7', null);
INSERT INTO `sampling_media_order` VALUES ('96', '0', '2019-10-28 00:18:43', null, '1', null, '1', '20191028001843663', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '7', null);
INSERT INTO `sampling_media_order` VALUES ('97', '0', '2019-10-28 00:19:03', null, '1', null, '1', '20191028001903369', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '7', null);
INSERT INTO `sampling_media_order` VALUES ('98', '0', '2019-10-28 00:20:03', null, '1', null, '1', '20191028002003886', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '7', null);
INSERT INTO `sampling_media_order` VALUES ('99', '0', '2019-10-28 00:22:58', null, '1', null, '1', '20191028002258914', '863590620f9767c6-6bb6-45a2-9420-2ed996f6ab9b1571464207636', '7', null);
INSERT INTO `sampling_media_order` VALUES ('100', '0', '2019-10-28 00:42:17', null, '1', null, '1', '20191028004217204', '4664726943468837b3e54e0b8fab9315c10a428c1571689693774', '7', null);
INSERT INTO `sampling_media_order` VALUES ('101', '0', '2019-10-28 01:18:46', null, '1', null, '1', '20191028011846640', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '9', null);
INSERT INTO `sampling_media_order` VALUES ('102', '0', '2019-10-28 01:51:50', null, '1', null, '1', '20191028015150132', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '10', null);
INSERT INTO `sampling_media_order` VALUES ('103', '0', '2019-10-28 01:52:19', null, '1', null, '1', '20191028015219761', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '10', null);
INSERT INTO `sampling_media_order` VALUES ('104', '0', '2019-10-28 01:52:23', null, '1', null, '1', '20191028015223445', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '10', null);
INSERT INTO `sampling_media_order` VALUES ('105', '0', '2019-10-28 08:35:24', null, '1', null, '1', '20191028083524343', '380806836f4a5f34612b4bd3b4557f9b624099e41571688199660', '11', null);
INSERT INTO `sampling_media_order` VALUES ('106', '0', '2019-10-28 11:38:08', null, '1', null, '1', '20191028113808902', '96969209c4410e8f6e7e4e079c6fd16386d326bb1571706278371', '11', null);
INSERT INTO `sampling_media_order` VALUES ('107', '0', '2019-10-28 11:39:36', null, '1', null, '1', '20191028113936832', '96969209c4410e8f6e7e4e079c6fd16386d326bb1571706278371', '10', null);
INSERT INTO `sampling_media_order` VALUES ('108', '0', '2019-10-28 11:39:48', null, '1', null, '1', '20191028113948695', '96969209c4410e8f6e7e4e079c6fd16386d326bb1571706278371', '10', null);
INSERT INTO `sampling_media_order` VALUES ('109', '0', '2019-11-01 16:03:10', null, '1', null, '1', '20191101160310570', '402838499b35ca8e85b645a8888f43cc191dce321572595328340', '10', null);
INSERT INTO `sampling_media_order` VALUES ('110', '0', '2019-11-01 16:04:09', null, '1', null, '1', '20191101160409203', '402838499b35ca8e85b645a8888f43cc191dce321572595328340', '9', null);
INSERT INTO `sampling_media_order` VALUES ('111', '0', '2019-11-01 16:10:23', null, '1', null, '1', '20191101161023706', '77757762e4bfad15b96f4091b07a06cfd8a91c641572595805803', '10', null);
INSERT INTO `sampling_media_order` VALUES ('112', '0', '2019-11-03 18:48:51', null, '1', null, '1', '20191103184851513', '96969209c4410e8f6e7e4e079c6fd16386d326bb1571706278371', '7', null);
INSERT INTO `sampling_media_order` VALUES ('113', '0', '2019-11-03 18:48:58', null, '1', null, '1', '20191103184858657', '96969209c4410e8f6e7e4e079c6fd16386d326bb1571706278371', '10', null);
INSERT INTO `sampling_media_order` VALUES ('114', '0', '2019-11-03 18:49:22', null, '1', null, '1', '20191103184922823', '96969209c4410e8f6e7e4e079c6fd16386d326bb1571706278371', '9', null);
INSERT INTO `sampling_media_order` VALUES ('115', '0', '2019-11-03 18:49:31', null, '1', null, '1', '20191103184931206', '90880145ff35bec393c04a8eb4c84117c85d1a1c1572778139779', '11', null);
INSERT INTO `sampling_media_order` VALUES ('116', '0', '2019-11-03 18:49:36', null, '1', null, '1', '20191103184936367', '96969209c4410e8f6e7e4e079c6fd16386d326bb1571706278371', '10', null);
INSERT INTO `sampling_media_order` VALUES ('117', '0', '2019-11-03 18:49:54', null, '1', null, '1', '20191103184954135', '90880145ff35bec393c04a8eb4c84117c85d1a1c1572778139779', '7', null);
INSERT INTO `sampling_media_order` VALUES ('118', '0', '2019-11-03 23:40:43', null, '1', null, '1', '20191103234043906', '96969209c4410e8f6e7e4e079c6fd16386d326bb1571706278371', '10', null);
INSERT INTO `sampling_media_order` VALUES ('119', '0', '2019-11-04 10:08:58', null, '1', null, '1', '20191104100858765', '96969209c4410e8f6e7e4e079c6fd16386d326bb1571706278371', '12', null);
INSERT INTO `sampling_media_order` VALUES ('120', '0', '2019-11-04 15:00:16', null, '1', null, '1', '20191104150016259', '96969209c4410e8f6e7e4e079c6fd16386d326bb1571706278371', '12', null);
INSERT INTO `sampling_media_order` VALUES ('121', '0', '2019-11-04 17:24:14', null, '1', null, '1', '20191104172414747', '96969209c4410e8f6e7e4e079c6fd16386d326bb1571706278371', '14', null);
INSERT INTO `sampling_media_order` VALUES ('122', '0', '2019-11-04 21:30:31', null, '1', null, '1', '20191104213031563', '9687139024dafbfa1ab3488a911f97120d359ce61572874202486', '21', null);
INSERT INTO `sampling_media_order` VALUES ('123', '0', '2019-11-05 13:42:52', null, '1', null, '1', '20191105134252286', '9687139024dafbfa1ab3488a911f97120d359ce61572874202486', '24', null);
INSERT INTO `sampling_media_order` VALUES ('124', '0', '2019-11-05 13:50:00', null, '1', null, '1', '20191105135000559', '87715421fa71fed11f684fd9b1ea320202d35f3a1572932510290', '21', null);
INSERT INTO `sampling_media_order` VALUES ('125', '0', '2019-11-05 13:50:11', null, '1', null, '1', '20191105135011100', '87715421fa71fed11f684fd9b1ea320202d35f3a1572932510290', '21', null);
INSERT INTO `sampling_media_order` VALUES ('126', '0', '2019-11-05 14:13:54', null, '1', null, '1', '20191105141354898', '60536076fc8537038b4a494bbe3ae1e09eef488e1572934423730', '14', null);
INSERT INTO `sampling_media_order` VALUES ('127', '0', '2019-11-05 14:55:01', null, '1', null, '1', '20191105145501385', '60536076fc8537038b4a494bbe3ae1e09eef488e1572934423730', '26', null);
INSERT INTO `sampling_media_order` VALUES ('128', '0', '2019-11-05 14:55:27', null, '1', null, '1', '20191105145527231', '60536076fc8537038b4a494bbe3ae1e09eef488e1572934423730', '26', null);
INSERT INTO `sampling_media_order` VALUES ('129', '0', '2019-11-05 14:58:32', null, '1', null, '1', '20191105145832373', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '21', null);
INSERT INTO `sampling_media_order` VALUES ('130', '0', '2019-11-05 14:59:15', null, '1', null, '1', '20191105145915342', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '26', null);
INSERT INTO `sampling_media_order` VALUES ('131', '0', '2019-11-05 15:00:07', null, '1', null, '1', '20191105150007420', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '22', null);
INSERT INTO `sampling_media_order` VALUES ('132', '0', '2019-11-05 15:00:31', null, '1', null, '1', '20191105150031189', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '25', null);
INSERT INTO `sampling_media_order` VALUES ('133', '0', '2019-11-05 15:03:48', null, '1', null, '1', '20191105150348876', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '19', null);
INSERT INTO `sampling_media_order` VALUES ('134', '0', '2019-11-05 15:03:57', 'admin', '1', null, '1', '20191105150357508', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '29', null);
INSERT INTO `sampling_media_order` VALUES ('135', '0', '2019-11-05 15:04:39', null, '1', null, '1', '20191105150439738', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '24', null);
INSERT INTO `sampling_media_order` VALUES ('136', '0', '2019-11-05 15:04:56', null, '1', null, '1', '20191105150456472', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '28', null);
INSERT INTO `sampling_media_order` VALUES ('137', '0', '2019-11-05 15:05:00', null, '1', null, '1', '20191105150500724', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '28', null);
INSERT INTO `sampling_media_order` VALUES ('138', '0', '2019-11-05 15:07:11', null, '1', null, '1', '20191105150711918', '60536076fc8537038b4a494bbe3ae1e09eef488e1572934423730', '28', null);
INSERT INTO `sampling_media_order` VALUES ('139', '0', '2019-11-05 15:07:17', null, '1', null, '1', '20191105150717732', '60536076fc8537038b4a494bbe3ae1e09eef488e1572934423730', '24', null);
INSERT INTO `sampling_media_order` VALUES ('140', '0', '2019-11-05 15:07:20', null, '1', null, '1', '20191105150720448', '60536076fc8537038b4a494bbe3ae1e09eef488e1572934423730', '23', null);
INSERT INTO `sampling_media_order` VALUES ('141', '0', '2019-11-05 15:07:24', null, '1', null, '1', '20191105150724502', '60536076fc8537038b4a494bbe3ae1e09eef488e1572934423730', '24', null);
INSERT INTO `sampling_media_order` VALUES ('142', '0', '2019-11-05 15:24:02', null, '1', null, '1', '20191105152402366', '4763026867da2e683c3240e689e0eb872ecb91d61572932553540', '26', null);
INSERT INTO `sampling_media_order` VALUES ('143', '0', '2019-11-05 15:24:46', null, '1', null, '1', '20191105152446459', '4763026867da2e683c3240e689e0eb872ecb91d61572932553540', '26', null);
INSERT INTO `sampling_media_order` VALUES ('144', '0', '2019-11-05 15:25:13', null, '1', null, '1', '20191105152513134', '9687139024dafbfa1ab3488a911f97120d359ce61572874202486', '26', null);
INSERT INTO `sampling_media_order` VALUES ('145', '0', '2019-11-05 15:30:28', null, '1', null, '1', '20191105153028961', '380806836f4a5f34612b4bd3b4557f9b624099e41571688199660', '27', null);
INSERT INTO `sampling_media_order` VALUES ('146', '0', '2019-11-05 15:32:09', null, '1', null, '1', '20191105153209709', '380806836f4a5f34612b4bd3b4557f9b624099e41571688199660', '13', null);
INSERT INTO `sampling_media_order` VALUES ('147', '0', '2019-11-05 15:32:43', null, '1', null, '1', '20191105153243420', '380806836f4a5f34612b4bd3b4557f9b624099e41571688199660', '25', null);
INSERT INTO `sampling_media_order` VALUES ('148', '0', '2019-11-05 15:33:40', null, '1', null, '1', '20191105153340717', '380806836f4a5f34612b4bd3b4557f9b624099e41571688199660', '27', null);
INSERT INTO `sampling_media_order` VALUES ('149', '0', '2019-11-05 15:40:17', null, '1', null, '1', '20191105154017265', '24784654fc874e1d677e4734872acd26fdb89e3b1572939598793', '27', null);
INSERT INTO `sampling_media_order` VALUES ('150', '0', '2019-11-05 15:42:05', null, '1', null, '1', '20191105154205287', '24784654fc874e1d677e4734872acd26fdb89e3b1572939598793', '28', null);
INSERT INTO `sampling_media_order` VALUES ('151', '0', '2019-11-05 15:47:22', null, '1', null, '1', '20191105154722182', '4763026867da2e683c3240e689e0eb872ecb91d61572932553540', '18', null);
INSERT INTO `sampling_media_order` VALUES ('152', '0', '2019-11-05 15:50:06', null, '1', null, '1', '20191105155006400', '24784654fc874e1d677e4734872acd26fdb89e3b1572939598793', '23', null);
INSERT INTO `sampling_media_order` VALUES ('153', '0', '2019-11-05 15:50:38', null, '1', null, '1', '20191105155038540', '380806836f4a5f34612b4bd3b4557f9b624099e41571688199660', '27', null);
INSERT INTO `sampling_media_order` VALUES ('154', '0', '2019-11-05 15:51:10', null, '1', null, '1', '20191105155110829', '24784654fc874e1d677e4734872acd26fdb89e3b1572939598793', '14', null);
INSERT INTO `sampling_media_order` VALUES ('155', '0', '2019-11-05 15:52:36', null, '1', null, '1', '20191105155236175', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '19', null);
INSERT INTO `sampling_media_order` VALUES ('156', '0', '2019-11-05 15:53:15', null, '1', null, '1', '20191105155315596', '24784654fc874e1d677e4734872acd26fdb89e3b1572939598793', '28', null);
INSERT INTO `sampling_media_order` VALUES ('157', '0', '2019-11-05 15:56:23', null, '1', null, '1', '20191105155623578', '24784654fc874e1d677e4734872acd26fdb89e3b1572939598793', '28', null);
INSERT INTO `sampling_media_order` VALUES ('158', '0', '2019-11-05 15:56:44', null, '1', null, '1', '20191105155644630', '24784654fc874e1d677e4734872acd26fdb89e3b1572939598793', '25', null);
INSERT INTO `sampling_media_order` VALUES ('159', '0', '2019-11-05 15:56:59', null, '1', null, '1', '20191105155659998', '380806836f4a5f34612b4bd3b4557f9b624099e41571688199660', '29', null);
INSERT INTO `sampling_media_order` VALUES ('160', '0', '2019-11-05 16:00:14', null, '1', null, '1', '20191105160014762', '24784654fc874e1d677e4734872acd26fdb89e3b1572939598793', '29', null);
INSERT INTO `sampling_media_order` VALUES ('161', '0', '2019-11-05 16:02:01', null, '1', null, '1', '20191105160201519', '4763026867da2e683c3240e689e0eb872ecb91d61572932553540', '27', null);
INSERT INTO `sampling_media_order` VALUES ('162', '0', '2019-11-05 16:02:49', null, '1', null, '1', '20191105160249862', '4763026867da2e683c3240e689e0eb872ecb91d61572932553540', '21', null);
INSERT INTO `sampling_media_order` VALUES ('163', '0', '2019-11-05 16:03:27', null, '1', null, '1', '20191105160327105', '24784654fc874e1d677e4734872acd26fdb89e3b1572939598793', '12', null);
INSERT INTO `sampling_media_order` VALUES ('164', '0', '2019-11-05 16:04:37', null, '1', null, '1', '20191105160437400', '4763026867da2e683c3240e689e0eb872ecb91d61572932553540', '12', null);
INSERT INTO `sampling_media_order` VALUES ('165', '0', '2019-11-05 16:04:59', null, '1', null, '1', '20191105160459952', '9687139024dafbfa1ab3488a911f97120d359ce61572874202486', '25', null);
INSERT INTO `sampling_media_order` VALUES ('166', '0', '2019-11-05 16:18:43', null, '1', null, '1', '20191105161843595', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '20', null);
INSERT INTO `sampling_media_order` VALUES ('167', '0', '2019-11-05 16:20:21', null, '1', null, '1', '20191105162021563', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '12', null);
INSERT INTO `sampling_media_order` VALUES ('168', '0', '2019-11-05 16:20:41', null, '1', null, '1', '20191105162041401', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '29', null);
INSERT INTO `sampling_media_order` VALUES ('169', '0', '2019-11-05 16:20:51', null, '1', null, '1', '20191105162051966', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '30', null);
INSERT INTO `sampling_media_order` VALUES ('170', '0', '2019-11-05 16:20:57', null, '1', null, '1', '20191105162057344', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '28', null);
INSERT INTO `sampling_media_order` VALUES ('171', '0', '2019-11-05 17:09:22', null, '1', null, '1', '20191105170922327', '24784654fc874e1d677e4734872acd26fdb89e3b1572939598793', '33', null);
INSERT INTO `sampling_media_order` VALUES ('172', '0', '2019-11-05 17:10:18', null, '1', null, '1', '20191105171018409', '4763026867da2e683c3240e689e0eb872ecb91d61572932553540', '33', null);
INSERT INTO `sampling_media_order` VALUES ('173', '0', '2019-11-05 18:24:27', null, '1', null, '1', '20191105182427233', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '33', null);
INSERT INTO `sampling_media_order` VALUES ('174', '0', '2019-11-05 18:24:30', null, '1', null, '1', '20191105182430195', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '35', null);
INSERT INTO `sampling_media_order` VALUES ('175', '0', '2019-11-05 18:24:32', null, '1', null, '1', '20191105182432537', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '24', null);
INSERT INTO `sampling_media_order` VALUES ('176', '0', '2019-11-05 18:24:34', null, '1', null, '1', '20191105182434587', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '29', null);
INSERT INTO `sampling_media_order` VALUES ('177', '0', '2019-11-05 18:24:37', null, '1', null, '1', '20191105182437325', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '29', null);
INSERT INTO `sampling_media_order` VALUES ('178', '0', '2019-11-05 18:24:40', null, '1', null, '1', '20191105182440837', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '14', null);
INSERT INTO `sampling_media_order` VALUES ('179', '0', '2019-11-05 18:25:03', null, '1', null, '1', '20191105182503580', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '29', null);
INSERT INTO `sampling_media_order` VALUES ('180', '0', '2019-11-05 18:25:06', null, '1', null, '1', '20191105182506946', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '36', null);
INSERT INTO `sampling_media_order` VALUES ('181', '0', '2019-11-05 18:25:09', null, '1', null, '1', '20191105182509376', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '17', null);
INSERT INTO `sampling_media_order` VALUES ('182', '0', '2019-11-05 18:25:11', null, '1', null, '1', '20191105182511932', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '15', null);
INSERT INTO `sampling_media_order` VALUES ('183', '0', '2019-11-05 18:25:18', null, '1', null, '1', '20191105182518893', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '28', null);
INSERT INTO `sampling_media_order` VALUES ('184', '0', '2019-11-05 18:29:43', null, '1', null, '1', '20191105182943202', '4763026867da2e683c3240e689e0eb872ecb91d61572932553540', '24', null);
INSERT INTO `sampling_media_order` VALUES ('185', '0', '2019-11-05 18:30:11', null, '1', null, '1', '20191105183011767', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '33', null);
INSERT INTO `sampling_media_order` VALUES ('186', '0', '2019-11-05 18:49:29', null, '1', null, '1', '20191105184929174', '24784654fc874e1d677e4734872acd26fdb89e3b1572939598793', '36', null);
INSERT INTO `sampling_media_order` VALUES ('187', '0', '2019-11-05 18:49:33', null, '1', null, '1', '20191105184933553', '3503421592732603ef3b4ae8b72ab603ca4c6e221572950964606', '22', null);
INSERT INTO `sampling_media_order` VALUES ('188', '0', '2019-11-05 18:49:57', null, '1', null, '1', '20191105184957854', '3503421592732603ef3b4ae8b72ab603ca4c6e221572950964606', '16', null);
INSERT INTO `sampling_media_order` VALUES ('189', '0', '2019-11-05 18:50:31', null, '1', null, '1', '20191105185031949', '3503421592732603ef3b4ae8b72ab603ca4c6e221572950964606', '35', null);
INSERT INTO `sampling_media_order` VALUES ('190', '0', '2019-11-05 18:50:43', null, '1', null, '1', '20191105185043753', '24784654fc874e1d677e4734872acd26fdb89e3b1572939598793', '22', null);
INSERT INTO `sampling_media_order` VALUES ('191', '0', '2019-11-05 18:53:20', null, '1', null, '1', '20191105185320910', '3503421592732603ef3b4ae8b72ab603ca4c6e221572950964606', '36', null);
INSERT INTO `sampling_media_order` VALUES ('192', '0', '2019-11-05 18:53:28', null, '1', null, '1', '20191105185328134', '3503421592732603ef3b4ae8b72ab603ca4c6e221572950964606', '40', null);
INSERT INTO `sampling_media_order` VALUES ('193', '0', '2019-11-05 18:54:02', null, '1', null, '1', '20191105185402982', '3503421592732603ef3b4ae8b72ab603ca4c6e221572950964606', '20', null);
INSERT INTO `sampling_media_order` VALUES ('194', '0', '2019-11-05 18:54:38', null, '1', null, '1', '20191105185438489', '3503421592732603ef3b4ae8b72ab603ca4c6e221572950964606', '21', null);
INSERT INTO `sampling_media_order` VALUES ('195', '0', '2019-11-05 18:54:47', null, '1', null, '1', '20191105185447175', '3503421592732603ef3b4ae8b72ab603ca4c6e221572950964606', '25', null);
INSERT INTO `sampling_media_order` VALUES ('196', '0', '2019-11-05 18:55:44', null, '1', null, '1', '20191105185544416', '3503421592732603ef3b4ae8b72ab603ca4c6e221572950964606', '40', null);
INSERT INTO `sampling_media_order` VALUES ('197', '0', '2019-11-05 18:56:05', null, '1', null, '1', '20191105185605766', '3503421592732603ef3b4ae8b72ab603ca4c6e221572950964606', '30', null);
INSERT INTO `sampling_media_order` VALUES ('198', '0', '2019-11-05 18:56:25', null, '1', null, '1', '20191105185625322', '9687139024dafbfa1ab3488a911f97120d359ce61572874202486', '35', null);
INSERT INTO `sampling_media_order` VALUES ('199', '0', '2019-11-05 18:59:31', null, '1', null, '1', '20191105185931822', '9687139024dafbfa1ab3488a911f97120d359ce61572874202486', '29', null);
INSERT INTO `sampling_media_order` VALUES ('200', '0', '2019-11-05 18:59:54', null, '1', null, '1', '20191105185954224', '3503421592732603ef3b4ae8b72ab603ca4c6e221572950964606', '39', null);
INSERT INTO `sampling_media_order` VALUES ('201', '0', '2019-11-05 18:59:57', null, '1', null, '1', '20191105185957655', '3503421592732603ef3b4ae8b72ab603ca4c6e221572950964606', '24', null);
INSERT INTO `sampling_media_order` VALUES ('202', '0', '2019-11-05 18:59:59', null, '1', null, '1', '20191105185959901', '3503421592732603ef3b4ae8b72ab603ca4c6e221572950964606', '22', null);
INSERT INTO `sampling_media_order` VALUES ('203', '0', '2019-11-05 19:00:11', null, '1', null, '1', '20191105190011179', '3503421592732603ef3b4ae8b72ab603ca4c6e221572950964606', '30', null);
INSERT INTO `sampling_media_order` VALUES ('204', '0', '2019-11-05 19:01:59', null, '1', null, '1', '20191105190159215', '3503421592732603ef3b4ae8b72ab603ca4c6e221572950964606', '40', null);
INSERT INTO `sampling_media_order` VALUES ('205', '0', '2019-11-05 19:02:59', null, '1', null, '1', '20191105190259219', '3503421592732603ef3b4ae8b72ab603ca4c6e221572950964606', '39', null);
INSERT INTO `sampling_media_order` VALUES ('206', '0', '2019-11-05 19:03:10', null, '1', null, '1', '20191105190310855', '3503421592732603ef3b4ae8b72ab603ca4c6e221572950964606', '40', null);
INSERT INTO `sampling_media_order` VALUES ('207', '0', '2019-11-05 19:03:34', null, '1', null, '1', '20191105190334546', '3503421592732603ef3b4ae8b72ab603ca4c6e221572950964606', '40', null);
INSERT INTO `sampling_media_order` VALUES ('208', '0', '2019-11-05 19:04:04', null, '1', null, '1', '20191105190404374', '3503421592732603ef3b4ae8b72ab603ca4c6e221572950964606', '40', null);
INSERT INTO `sampling_media_order` VALUES ('209', '0', '2019-11-05 19:07:34', null, '1', null, '1', '20191105190734278', '3503421592732603ef3b4ae8b72ab603ca4c6e221572950964606', '19', null);
INSERT INTO `sampling_media_order` VALUES ('210', '0', '2019-11-05 19:07:46', null, '1', null, '1', '20191105190746147', '3503421592732603ef3b4ae8b72ab603ca4c6e221572950964606', '29', null);
INSERT INTO `sampling_media_order` VALUES ('211', '0', '2019-11-05 19:07:56', null, '1', null, '1', '20191105190756448', '3503421592732603ef3b4ae8b72ab603ca4c6e221572950964606', '22', null);
INSERT INTO `sampling_media_order` VALUES ('212', '0', '2019-11-05 19:08:13', null, '1', null, '1', '20191105190813527', '3503421592732603ef3b4ae8b72ab603ca4c6e221572950964606', '12', null);
INSERT INTO `sampling_media_order` VALUES ('213', '0', '2019-11-05 19:08:30', null, '1', null, '1', '20191105190830963', '3503421592732603ef3b4ae8b72ab603ca4c6e221572950964606', '41', null);
INSERT INTO `sampling_media_order` VALUES ('214', '0', '2019-11-05 19:08:50', null, '1', null, '1', '20191105190850376', '3503421592732603ef3b4ae8b72ab603ca4c6e221572950964606', '15', null);
INSERT INTO `sampling_media_order` VALUES ('215', '0', '2019-11-05 19:09:02', null, '1', null, '1', '20191105190902957', '3503421592732603ef3b4ae8b72ab603ca4c6e221572950964606', '37', null);
INSERT INTO `sampling_media_order` VALUES ('216', '0', '2019-11-05 21:33:48', null, '1', null, '1', '20191105213348467', '9687139024dafbfa1ab3488a911f97120d359ce61572874202486', '31', null);
INSERT INTO `sampling_media_order` VALUES ('217', '0', '2019-11-05 21:35:26', null, '1', null, '1', '20191105213526997', '4763026867da2e683c3240e689e0eb872ecb91d61572932553540', '14', null);
INSERT INTO `sampling_media_order` VALUES ('218', '0', '2019-11-05 21:36:50', null, '1', null, '1', '20191105213650288', '24784654fc874e1d677e4734872acd26fdb89e3b1572939598793', '27', null);
INSERT INTO `sampling_media_order` VALUES ('219', '0', '2019-11-05 21:47:40', null, '1', null, '1', '20191105214740121', '4763026867da2e683c3240e689e0eb872ecb91d61572932553540', '39', null);
INSERT INTO `sampling_media_order` VALUES ('220', '0', '2019-11-06 04:12:03', null, '1', null, '1', '20191106041203742', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '34', null);
INSERT INTO `sampling_media_order` VALUES ('221', '0', '2019-11-06 04:12:23', null, '1', null, '1', '20191106041223568', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '34', null);
INSERT INTO `sampling_media_order` VALUES ('222', '0', '2019-11-06 04:12:25', null, '1', null, '1', '20191106041225510', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '25', null);
INSERT INTO `sampling_media_order` VALUES ('223', '0', '2019-11-06 04:13:46', null, '1', null, '1', '20191106041346369', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '25', null);
INSERT INTO `sampling_media_order` VALUES ('224', '0', '2019-11-06 04:13:52', null, '1', null, '1', '20191106041352997', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '25', null);
INSERT INTO `sampling_media_order` VALUES ('225', '0', '2019-11-06 04:13:56', null, '1', null, '1', '20191106041356842', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '25', null);
INSERT INTO `sampling_media_order` VALUES ('226', '0', '2019-11-06 04:14:01', null, '1', null, '1', '20191106041401835', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '25', null);
INSERT INTO `sampling_media_order` VALUES ('227', '0', '2019-11-06 04:14:03', null, '1', null, '1', '20191106041403912', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '33', null);
INSERT INTO `sampling_media_order` VALUES ('228', '0', '2019-11-06 04:14:05', null, '1', null, '1', '20191106041405388', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '51', null);
INSERT INTO `sampling_media_order` VALUES ('229', '0', '2019-11-06 04:14:07', null, '1', null, '1', '20191106041407499', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '25', null);
INSERT INTO `sampling_media_order` VALUES ('230', '0', '2019-11-06 04:17:48', null, '1', null, '1', '20191106041748665', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '14', null);
INSERT INTO `sampling_media_order` VALUES ('231', '0', '2019-11-06 04:19:53', null, '1', null, '1', '20191106041953889', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '46', null);
INSERT INTO `sampling_media_order` VALUES ('232', '0', '2019-11-06 10:34:11', null, '1', null, '1', '20191106103411281', '61231031308ab5a88c8e4497b225b9e1609abbbd1573007613666', '49', null);
INSERT INTO `sampling_media_order` VALUES ('233', '0', '2019-11-06 13:46:04', null, '1', null, '1', '20191106134604953', '56979419212bdd67c94445b29ac28c4c6d81738a1573019158147', '39', null);
INSERT INTO `sampling_media_order` VALUES ('234', '0', '2019-11-06 13:46:21', null, '1', null, '1', '20191106134621164', '4763026867da2e683c3240e689e0eb872ecb91d61572932553540', '28', null);
INSERT INTO `sampling_media_order` VALUES ('235', '0', '2019-11-06 13:46:42', null, '1', null, '1', '20191106134642184', '56979419212bdd67c94445b29ac28c4c6d81738a1573019158147', '54', null);
INSERT INTO `sampling_media_order` VALUES ('236', '0', '2019-11-06 13:47:04', null, '1', null, '1', '20191106134704361', '4763026867da2e683c3240e689e0eb872ecb91d61572932553540', '57', null);
INSERT INTO `sampling_media_order` VALUES ('237', '0', '2019-11-06 14:56:31', null, '1', null, '1', '20191106145631341', '700059025605947ebdab4ea2bb0dd3d54e28a7201573023385041', '59', null);
INSERT INTO `sampling_media_order` VALUES ('238', '0', '2019-11-06 14:56:42', null, '1', null, '1', '20191106145642573', '700059025605947ebdab4ea2bb0dd3d54e28a7201573023385041', '63', null);
INSERT INTO `sampling_media_order` VALUES ('239', '0', '2019-11-06 14:57:02', null, '1', null, '1', '20191106145702552', '700059025605947ebdab4ea2bb0dd3d54e28a7201573023385041', '12', null);
INSERT INTO `sampling_media_order` VALUES ('240', '0', '2019-11-06 14:57:22', null, '1', null, '1', '20191106145722565', '98353607d2de380ce4804a19b42ae648f7fafbdd1573023436458', '24', null);
INSERT INTO `sampling_media_order` VALUES ('241', '0', '2019-11-06 15:48:07', null, '1', null, '1', '20191106154807287', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '15', null);
INSERT INTO `sampling_media_order` VALUES ('242', '0', '2019-11-06 19:53:18', null, '1', null, '1', '20191106195318976', '9687139024dafbfa1ab3488a911f97120d359ce61572874202486', '56', null);
INSERT INTO `sampling_media_order` VALUES ('243', '0', '2019-11-06 21:08:31', null, '1', null, '1', '20191106210831592', '647885754e8faf7c595a46cc8b0d79bdec2ba4221572984161970', '60', null);
INSERT INTO `sampling_media_order` VALUES ('244', '0', '2019-11-06 21:23:44', null, '1', null, '1', '20191106212344857', '1855432711a26ab8654848e49aa10ca6341f81bf1573046613106', '38', null);
INSERT INTO `sampling_media_order` VALUES ('245', '0', '2019-11-06 21:24:23', null, '1', null, '1', '20191106212423975', '93373865e758debc2dfd4e869b7bb91b8e2dcbb41573046649636', '44', null);
INSERT INTO `sampling_media_order` VALUES ('246', '0', '2019-11-06 21:25:20', null, '1', null, '1', '20191106212520611', '93373865e758debc2dfd4e869b7bb91b8e2dcbb41573046649636', '30', null);
INSERT INTO `sampling_media_order` VALUES ('247', '0', '2019-11-06 21:29:49', null, '1', null, '1', '20191106212949136', '70736639f32c8e1366094615b15c888ecfd7e98a1573046952716', '40', null);
INSERT INTO `sampling_media_order` VALUES ('248', '0', '2019-11-06 21:33:38', null, '1', null, '1', '20191106213338564', '1855432711a26ab8654848e49aa10ca6341f81bf1573046613106', '24', null);
INSERT INTO `sampling_media_order` VALUES ('249', '0', '2019-11-06 21:33:42', null, '1', null, '1', '20191106213342178', '1030854182101195c80c4c3d90f1e5917e14f3cd1573047197698', '34', null);
INSERT INTO `sampling_media_order` VALUES ('250', '0', '2019-11-06 21:34:21', null, '1', null, '1', '20191106213421889', '1855432711a26ab8654848e49aa10ca6341f81bf1573046613106', '28', null);
INSERT INTO `sampling_media_order` VALUES ('251', '0', '2019-11-06 21:34:57', null, '1', null, '1', '20191106213457421', '24216688fa83ab39d6bf4e8c8b6879bece67fafe1573047282273', '25', null);
INSERT INTO `sampling_media_order` VALUES ('252', '0', '2019-11-06 21:35:04', null, '1', null, '1', '20191106213504406', '24216688fa83ab39d6bf4e8c8b6879bece67fafe1573047282273', '32', null);
INSERT INTO `sampling_media_order` VALUES ('253', '0', '2019-11-06 21:36:33', null, '1', null, '1', '20191106213633836', '94730136f148a522a19f4d49b59a8b44a243af341573047377896', '53', null);
INSERT INTO `sampling_media_order` VALUES ('254', '0', '2019-11-06 21:38:02', null, '1', null, '1', '20191106213802234', '1855432711a26ab8654848e49aa10ca6341f81bf1573046613106', '31', null);
INSERT INTO `sampling_media_order` VALUES ('255', '0', '2019-11-06 21:38:28', null, '1', null, '1', '20191106213828163', '1855432711a26ab8654848e49aa10ca6341f81bf1573046613106', '30', null);
INSERT INTO `sampling_media_order` VALUES ('256', '0', '2019-11-06 21:39:15', null, '1', null, '1', '20191106213915209', '37738978664361a4180f4f8fa2bb0d25fe73d69c1573047544533', '62', null);
INSERT INTO `sampling_media_order` VALUES ('257', '0', '2019-11-06 21:39:25', null, '1', null, '1', '20191106213925650', '37738978664361a4180f4f8fa2bb0d25fe73d69c1573047544533', '38', null);
INSERT INTO `sampling_media_order` VALUES ('258', '0', '2019-11-06 21:39:39', null, '1', null, '1', '20191106213939313', '37738978664361a4180f4f8fa2bb0d25fe73d69c1573047544533', '38', null);
INSERT INTO `sampling_media_order` VALUES ('259', '0', '2019-11-06 21:39:58', null, '1', null, '1', '20191106213958646', '10489095ef249c26c814408e95597f8ad02e64d51573047590220', '31', null);
INSERT INTO `sampling_media_order` VALUES ('260', '0', '2019-11-06 21:40:02', null, '1', null, '1', '20191106214002501', '10489095ef249c26c814408e95597f8ad02e64d51573047590220', '23', null);
INSERT INTO `sampling_media_order` VALUES ('261', '0', '2019-11-06 21:43:44', null, '1', null, '1', '20191106214344108', '973994245a890f1b3c074b56b4c4182c353061f01573047813038', '29', null);
INSERT INTO `sampling_media_order` VALUES ('262', '0', '2019-11-06 21:44:02', null, '1', null, '1', '20191106214402725', '973994245a890f1b3c074b56b4c4182c353061f01573047813038', '48', null);
INSERT INTO `sampling_media_order` VALUES ('263', '0', '2019-11-06 21:44:05', null, '1', null, '1', '20191106214405504', '973994245a890f1b3c074b56b4c4182c353061f01573047813038', '16', null);
INSERT INTO `sampling_media_order` VALUES ('264', '0', '2019-11-06 21:44:49', null, '1', null, '1', '20191106214449676', '24216688fa83ab39d6bf4e8c8b6879bece67fafe1573047282273', '31', null);
INSERT INTO `sampling_media_order` VALUES ('265', '0', '2019-11-06 21:58:27', null, '1', null, '1', '20191106215827575', '345624421faedfef95f841dcb7213846cb58dfc91573048669151', '30', null);
INSERT INTO `sampling_media_order` VALUES ('266', '0', '2019-11-06 22:15:42', null, '1', null, '1', '20191106221542399', '834839856eb3d38ee50e430fbb0012b07dc721e71573049724928', '46', null);
INSERT INTO `sampling_media_order` VALUES ('267', '0', '2019-11-06 22:15:48', null, '1', null, '1', '20191106221548661', '834839856eb3d38ee50e430fbb0012b07dc721e71573049724928', '22', null);
INSERT INTO `sampling_media_order` VALUES ('268', '0', '2019-11-06 22:16:19', null, '1', null, '1', '20191106221619120', '834839856eb3d38ee50e430fbb0012b07dc721e71573049724928', '63', null);
INSERT INTO `sampling_media_order` VALUES ('269', '0', '2019-11-06 22:16:28', null, '1', null, '1', '20191106221628913', '834839856eb3d38ee50e430fbb0012b07dc721e71573049724928', '63', null);
INSERT INTO `sampling_media_order` VALUES ('270', '0', '2019-11-06 22:16:49', null, '1', null, '1', '20191106221649789', '88525516cfe23e54c4934982805f91d8c472a0c41573049796543', '30', null);
INSERT INTO `sampling_media_order` VALUES ('271', '0', '2019-11-06 22:17:00', null, '1', null, '1', '20191106221700550', '834839856eb3d38ee50e430fbb0012b07dc721e71573049724928', '52', null);
INSERT INTO `sampling_media_order` VALUES ('272', '0', '2019-11-06 22:17:51', null, '1', null, '1', '20191106221751621', '834839856eb3d38ee50e430fbb0012b07dc721e71573049724928', '37', null);
INSERT INTO `sampling_media_order` VALUES ('273', '0', '2019-11-06 22:18:08', null, '1', null, '1', '20191106221808761', '88525516cfe23e54c4934982805f91d8c472a0c41573049796543', '61', null);
INSERT INTO `sampling_media_order` VALUES ('274', '0', '2019-11-06 22:36:51', null, '1', null, '1', '20191106223651154', '85044879a7d39482d633435f949baf91f5c554011573050984935', '48', null);
INSERT INTO `sampling_media_order` VALUES ('275', '0', '2019-11-06 22:50:00', null, '1', null, '1', '20191106225000821', '9190002362cd021fd5854f98ad7077c164ad88601573051789005', '54', null);
INSERT INTO `sampling_media_order` VALUES ('276', '0', '2019-11-06 23:19:54', null, '1', null, '1', '20191106231954324', '143700852babd72fa0cc43bcabf459360cc309a91573053487685', '54', null);
INSERT INTO `sampling_media_order` VALUES ('277', '0', '2019-11-06 23:20:08', null, '1', null, '1', '20191106232008156', '143700852babd72fa0cc43bcabf459360cc309a91573053487685', '44', null);
INSERT INTO `sampling_media_order` VALUES ('278', '0', '2019-11-06 23:22:58', null, '1', null, '1', '20191106232258436', '741231156676ecf5bae94d97b380297cb38cc0c01573053752703', '62', null);
INSERT INTO `sampling_media_order` VALUES ('279', '0', '2019-11-06 23:37:19', null, '1', null, '1', '20191106233719717', '80290395686ed6a835584a88a78aef6b931540cd1573054608018', '62', null);
INSERT INTO `sampling_media_order` VALUES ('280', '0', '2019-11-07 00:04:24', null, '1', null, '1', '20191107000424582', '62800553bea7afc829a74189a1082d9c6cdff4391573056242894', '62', null);
INSERT INTO `sampling_media_order` VALUES ('281', '0', '2019-11-07 00:04:46', null, '1', null, '1', '20191107000446257', '62800553bea7afc829a74189a1082d9c6cdff4391573056242894', '62', null);
INSERT INTO `sampling_media_order` VALUES ('282', '0', '2019-11-07 00:05:05', null, '1', null, '1', '20191107000505146', '62800553bea7afc829a74189a1082d9c6cdff4391573056242894', '41', null);
INSERT INTO `sampling_media_order` VALUES ('283', '0', '2019-11-07 00:05:21', null, '1', null, '1', '20191107000521164', '582060963913f5008112466f984e3a5070766f741573056193704', '35', null);
INSERT INTO `sampling_media_order` VALUES ('284', '0', '2019-11-07 00:11:08', null, '1', null, '1', '20191107001108644', '46104489d468093098ba4a9aae9f0c2193b680ce1573056640378', '51', null);
INSERT INTO `sampling_media_order` VALUES ('285', '0', '2019-11-07 00:11:19', null, '1', null, '1', '20191107001119761', '46104489d468093098ba4a9aae9f0c2193b680ce1573056640378', '54', null);
INSERT INTO `sampling_media_order` VALUES ('286', '0', '2019-11-07 00:11:39', null, '1', null, '1', '20191107001139780', '46104489d468093098ba4a9aae9f0c2193b680ce1573056640378', '54', null);
INSERT INTO `sampling_media_order` VALUES ('287', '0', '2019-11-07 00:11:45', null, '1', null, '1', '20191107001145821', '46104489d468093098ba4a9aae9f0c2193b680ce1573056640378', '53', null);
INSERT INTO `sampling_media_order` VALUES ('288', '0', '2019-11-07 00:11:57', null, '1', null, '1', '20191107001157806', '46104489d468093098ba4a9aae9f0c2193b680ce1573056640378', '53', null);
INSERT INTO `sampling_media_order` VALUES ('289', '0', '2019-11-07 00:33:41', null, '1', null, '1', '20191107003341129', '4954071738225bb9f5f34f63a48315feeea30ffc1573057934553', '31', null);
INSERT INTO `sampling_media_order` VALUES ('290', '0', '2019-11-07 00:34:10', null, '1', null, '1', '20191107003410734', '4954071738225bb9f5f34f63a48315feeea30ffc1573057934553', '31', null);
INSERT INTO `sampling_media_order` VALUES ('291', '0', '2019-11-07 00:34:28', null, '1', null, '1', '20191107003428905', '23571683ed3955f89487472bb2719b34c039d6e81573058026130', '50', null);
INSERT INTO `sampling_media_order` VALUES ('292', '0', '2019-11-07 00:34:39', null, '1', null, '1', '20191107003439655', '3498330524791d8cd95343898b90f74ca0cd1e801573058073018', '35', null);
INSERT INTO `sampling_media_order` VALUES ('293', '0', '2019-11-07 00:34:51', null, '1', null, '1', '20191107003451722', '23571683ed3955f89487472bb2719b34c039d6e81573058026130', '28', null);
INSERT INTO `sampling_media_order` VALUES ('294', '0', '2019-11-07 00:35:43', null, '1', null, '1', '20191107003543253', '27874298c396e16dc0c542ddbe02afbcfb93f2021573058130551', '58', null);
INSERT INTO `sampling_media_order` VALUES ('295', '0', '2019-11-07 00:35:46', null, '1', null, '1', '20191107003546460', '27874298c396e16dc0c542ddbe02afbcfb93f2021573058130551', '27', null);
INSERT INTO `sampling_media_order` VALUES ('296', '0', '2019-11-07 01:12:51', null, '1', null, '1', '20191107011251469', '1855432711a26ab8654848e49aa10ca6341f81bf1573046613106', '32', null);
INSERT INTO `sampling_media_order` VALUES ('297', '0', '2019-11-07 01:15:13', null, '1', null, '1', '20191107011513259', '65108108c10bb9a08f604da0900068b0f5b5d47a1573048985907', '41', null);
INSERT INTO `sampling_media_order` VALUES ('298', '0', '2019-11-07 01:42:00', null, '1', null, '1', '20191107014200133', '37738978664361a4180f4f8fa2bb0d25fe73d69c1573047544533', '30', null);
INSERT INTO `sampling_media_order` VALUES ('299', '0', '2019-11-07 01:46:50', null, '1', null, '1', '20191107014650740', '1855432711a26ab8654848e49aa10ca6341f81bf1573046613106', '20', null);
INSERT INTO `sampling_media_order` VALUES ('300', '0', '2019-11-07 03:51:52', null, '1', null, '1', '20191107035152627', '30143798395d2d8be70e41419378fc29a45ce8da1573047178341', '45', null);
INSERT INTO `sampling_media_order` VALUES ('301', '0', '2019-11-07 05:10:53', null, '1', null, '1', '20191107051053740', '60007096c142755239094409a4651c91ecc5e3f41573074622914', '17', null);
INSERT INTO `sampling_media_order` VALUES ('302', '0', '2019-11-07 05:37:35', null, '1', null, '1', '20191107053735220', '985067073df7ceec8efa447bbe2713c196f38adf1573076239149', '36', null);
INSERT INTO `sampling_media_order` VALUES ('303', '0', '2019-11-07 05:44:10', null, '1', null, '1', '20191107054410481', '985067073df7ceec8efa447bbe2713c196f38adf1573076239149', '24', null);
INSERT INTO `sampling_media_order` VALUES ('304', '0', '2019-11-07 07:44:20', null, '1', null, '1', '20191107074420850', '582060963913f5008112466f984e3a5070766f741573056193704', '62', null);
INSERT INTO `sampling_media_order` VALUES ('305', '0', '2019-11-07 07:45:18', null, '1', null, '1', '20191107074518316', '582060963913f5008112466f984e3a5070766f741573056193704', '27', null);
INSERT INTO `sampling_media_order` VALUES ('306', '0', '2019-11-07 07:45:37', null, '1', null, '1', '20191107074537650', '62800553bea7afc829a74189a1082d9c6cdff4391573056242894', '53', null);
INSERT INTO `sampling_media_order` VALUES ('307', '0', '2019-11-07 07:46:14', null, '1', null, '1', '20191107074614850', '62800553bea7afc829a74189a1082d9c6cdff4391573056242894', '53', null);
INSERT INTO `sampling_media_order` VALUES ('308', '0', '2019-11-07 08:44:43', null, '1', null, '1', '20191107084443352', '608139915ea062ea7f4b41b197c89022ac73cc9c1573087452136', '34', null);
INSERT INTO `sampling_media_order` VALUES ('309', '0', '2019-11-07 08:47:46', null, '1', null, '1', '20191107084746877', '297635588a41600e7e9a4f26b31e7ca3bd10d32f1573087653906', '63', null);
INSERT INTO `sampling_media_order` VALUES ('310', '0', '2019-11-07 08:48:45', null, '1', null, '1', '20191107084845615', '7216106129a46f47d5454863b0b724afa9f5dba91573087694210', '45', null);
INSERT INTO `sampling_media_order` VALUES ('311', '0', '2019-11-07 11:07:09', null, '1', null, '1', '20191107110709936', '436845554fe0c9d8153b4cc5a24c5c227bb77e421573096017520', '60', null);
INSERT INTO `sampling_media_order` VALUES ('312', '0', '2019-11-07 11:07:16', null, '1', null, '1', '20191107110716770', '436845554fe0c9d8153b4cc5a24c5c227bb77e421573096017520', '58', null);
INSERT INTO `sampling_media_order` VALUES ('313', '0', '2019-11-07 11:07:27', null, '1', null, '1', '20191107110727903', '436845554fe0c9d8153b4cc5a24c5c227bb77e421573096017520', '58', null);
INSERT INTO `sampling_media_order` VALUES ('314', '0', '2019-11-07 11:45:13', null, '1', null, '1', '20191107114513208', '9171992716cdb5fc17b94c20af5127cc00ca5bde1573098305763', '48', null);
INSERT INTO `sampling_media_order` VALUES ('315', '0', '2019-11-07 11:45:38', null, '1', null, '1', '20191107114538724', '568987704d3a840d193948089265d5e710c3a2661573098319431', '58', null);
INSERT INTO `sampling_media_order` VALUES ('316', '0', '2019-11-07 12:17:04', null, '1', null, '1', '20191107121704901', '630334469c75223e28114741a297e8fb3dd9e45a1573100218344', '58', null);
INSERT INTO `sampling_media_order` VALUES ('317', '0', '2019-11-07 12:20:49', null, '1', null, '1', '20191107122049519', '82745969f50bb4ffa2334052883bd5d8ae16fbe41573100426935', '14', null);
INSERT INTO `sampling_media_order` VALUES ('318', '0', '2019-11-07 12:59:04', null, '1', null, '1', '20191107125904220', '57263877fd4774abdedf44a29d409cc5d3dda0bd1573102714946', '62', null);
INSERT INTO `sampling_media_order` VALUES ('319', '0', '2019-11-07 12:59:48', null, '1', null, '1', '20191107125948571', '95424584cbdd9e900c4f44eebccbd087d6dd31f21573102779542', '46', null);
INSERT INTO `sampling_media_order` VALUES ('320', '0', '2019-11-07 15:40:53', null, '1', null, '1', '20191107154053230', '89174248178e89b9e91d49378d360449de7642821572985035878', '39', null);
INSERT INTO `sampling_media_order` VALUES ('321', '0', '2019-11-07 15:42:06', null, '1', null, '1', '20191107154206450', '647885754e8faf7c595a46cc8b0d79bdec2ba4221572984161970', '35', null);
INSERT INTO `sampling_media_order` VALUES ('322', '0', '2019-11-07 16:07:20', null, '1', null, '1', '20191107160720703', '4763026867da2e683c3240e689e0eb872ecb91d61572932553540', '39', null);
INSERT INTO `sampling_media_order` VALUES ('323', '0', '2019-11-07 16:15:06', null, '1', null, '1', '20191107161506792', '100342950abf48d71cd14d0398ad08269fc030ee1573114484656', '45', null);
INSERT INTO `sampling_media_order` VALUES ('324', '0', '2019-11-07 16:16:01', null, '1', null, '1', '20191107161601106', '90263931371db00f7bf244569e56a86d9a2469f81573114554270', '51', null);
INSERT INTO `sampling_media_order` VALUES ('325', '0', '2019-11-07 16:16:15', null, '1', null, '1', '20191107161615850', '40398556536fb5615511415b8e9be2ead60da61f1573114568887', '27', null);
INSERT INTO `sampling_media_order` VALUES ('326', '0', '2019-11-07 16:16:23', null, '1', null, '1', '20191107161623328', '40398556536fb5615511415b8e9be2ead60da61f1573114568887', '52', null);
INSERT INTO `sampling_media_order` VALUES ('327', '0', '2019-11-07 16:17:33', null, '1', null, '1', '20191107161733919', '71161872b7f1aec48fda424293ba75ba68ec18be1573114629511', '30', null);
INSERT INTO `sampling_media_order` VALUES ('328', '0', '2019-11-07 16:18:03', null, '1', null, '1', '20191107161803197', '70659651472326b3fe6e47e1a107517893c005711573114662840', '27', null);
INSERT INTO `sampling_media_order` VALUES ('329', '0', '2019-11-07 16:18:03', null, '1', null, '1', '20191107161803233', '71161872b7f1aec48fda424293ba75ba68ec18be1573114629511', '42', null);
INSERT INTO `sampling_media_order` VALUES ('330', '0', '2019-11-07 16:18:12', null, '1', null, '1', '20191107161812720', '71161872b7f1aec48fda424293ba75ba68ec18be1573114629511', '22', null);
INSERT INTO `sampling_media_order` VALUES ('331', '0', '2019-11-07 16:19:32', null, '1', null, '1', '20191107161932508', '4364343860407afaa8984700a6d5a76bd8893d301573114761815', '40', null);
INSERT INTO `sampling_media_order` VALUES ('332', '0', '2019-11-07 16:20:45', null, '1', null, '1', '20191107162045468', '67571557775e2f5a2b03483c9776cdc39d56f5841573114817287', '41', null);
INSERT INTO `sampling_media_order` VALUES ('333', '0', '2019-11-07 16:21:08', null, '1', null, '1', '20191107162108559', '67571557775e2f5a2b03483c9776cdc39d56f5841573114817287', '27', null);
INSERT INTO `sampling_media_order` VALUES ('334', '0', '2019-11-07 16:28:01', null, '1', null, '1', '20191107162801571', '6352515116a3810dbf6b4e85badb5929cac8d20f1573115266164', '54', null);
INSERT INTO `sampling_media_order` VALUES ('335', '0', '2019-11-07 16:28:52', null, '1', null, '1', '20191107162852855', '1053474803d0f9e5ad1e4e14a36304bc8053b29b1573115304390', '14', null);
INSERT INTO `sampling_media_order` VALUES ('336', '0', '2019-11-07 16:29:53', null, '1', null, '1', '20191107162953604', '23375010c1cbe698677c479899f453dc294aa7791573115379855', '59', null);
INSERT INTO `sampling_media_order` VALUES ('337', '0', '2019-11-07 16:30:48', null, '1', null, '1', '20191107163048779', '179790185577bc2f93854b2392481720011c42671573115431620', '43', null);
INSERT INTO `sampling_media_order` VALUES ('338', '0', '2019-11-07 16:40:18', null, '1', null, '1', '20191107164018554', '983377124902d35c729d42dca74e37eb01fb30721573115980903', '42', null);
INSERT INTO `sampling_media_order` VALUES ('339', '0', '2019-11-07 16:40:34', null, '1', null, '1', '20191107164034822', '497366950330493b9ef340efb515e88c194b6ab91573116022274', '39', null);
INSERT INTO `sampling_media_order` VALUES ('340', '0', '2019-11-07 16:40:38', null, '1', null, '1', '20191107164038145', '497366950330493b9ef340efb515e88c194b6ab91573116022274', '20', null);
INSERT INTO `sampling_media_order` VALUES ('341', '0', '2019-11-07 16:40:44', null, '1', null, '1', '20191107164044554', '39983998b0b78359179f4d7dbb830cf7b41c8ef21573116037283', '48', null);
INSERT INTO `sampling_media_order` VALUES ('342', '0', '2019-11-07 16:41:23', null, '1', null, '1', '20191107164123494', '29147381536f105ece2c4f788f03c8f1437beb121573116075177', '41', null);
INSERT INTO `sampling_media_order` VALUES ('343', '0', '2019-11-07 16:46:19', null, '1', null, '1', '20191107164619345', '747350077c2e7849b0d847aaa3d5ade6128556c51573116373268', '62', null);
INSERT INTO `sampling_media_order` VALUES ('344', '0', '2019-11-07 16:46:37', null, '1', null, '1', '20191107164637801', '8335725976c88281bdd049fe87cbbcf6ac9001d01573115984382', '36', null);
INSERT INTO `sampling_media_order` VALUES ('345', '0', '2019-11-07 16:46:50', null, '1', null, '1', '20191107164650883', '747350077c2e7849b0d847aaa3d5ade6128556c51573116373268', '41', null);
INSERT INTO `sampling_media_order` VALUES ('346', '0', '2019-11-07 16:51:53', null, '1', null, '1', '20191107165153422', '747350077c2e7849b0d847aaa3d5ade6128556c51573116373268', '23', null);
INSERT INTO `sampling_media_order` VALUES ('347', '0', '2019-11-07 16:52:05', null, '1', null, '1', '20191107165205643', '747350077c2e7849b0d847aaa3d5ade6128556c51573116373268', '39', null);
INSERT INTO `sampling_media_order` VALUES ('348', '0', '2019-11-07 16:52:18', null, '1', null, '1', '20191107165218339', '747350077c2e7849b0d847aaa3d5ade6128556c51573116373268', '57', null);
INSERT INTO `sampling_media_order` VALUES ('349', '0', '2019-11-07 16:55:27', null, '1', null, '1', '20191107165527274', '14378127c16e11263bfc43beb516442e3db4af701573115516663', '19', null);
INSERT INTO `sampling_media_order` VALUES ('350', '0', '2019-11-07 16:55:32', null, '1', null, '1', '20191107165532179', '14378127c16e11263bfc43beb516442e3db4af701573115516663', '53', null);
INSERT INTO `sampling_media_order` VALUES ('351', '0', '2019-11-07 16:55:38', null, '1', null, '1', '20191107165538310', '14378127c16e11263bfc43beb516442e3db4af701573115516663', '57', null);
INSERT INTO `sampling_media_order` VALUES ('352', '0', '2019-11-07 17:07:28', null, '1', null, '1', '20191107170728431', '100070948ad1a6a0bf474fd3ac341932da09402e1573117624340', '54', null);
INSERT INTO `sampling_media_order` VALUES ('353', '0', '2019-11-07 17:07:40', null, '1', null, '1', '20191107170740886', '100070948ad1a6a0bf474fd3ac341932da09402e1573117624340', '12', null);
INSERT INTO `sampling_media_order` VALUES ('354', '0', '2019-11-07 17:08:01', null, '1', null, '1', '20191107170801192', '277283969a15c72fe72242b0a3cf46c98a3633621573117674600', '38', null);
INSERT INTO `sampling_media_order` VALUES ('355', '0', '2019-11-07 17:11:22', null, '1', null, '1', '20191107171122141', '68381826bb29fbd904254cca97c12ee98f5481031573117842826', '56', null);
INSERT INTO `sampling_media_order` VALUES ('356', '0', '2019-11-07 17:11:40', null, '1', null, '1', '20191107171140255', '50014324e048d023df3b42e987110534957aedfb1573117878492', '52', null);
INSERT INTO `sampling_media_order` VALUES ('357', '0', '2019-11-07 17:20:23', null, '1', null, '1', '20191107172023361', '94730136f148a522a19f4d49b59a8b44a243af341573047377896', '16', null);
INSERT INTO `sampling_media_order` VALUES ('358', '0', '2019-11-07 17:20:31', null, '1', null, '1', '20191107172031541', '94730136f148a522a19f4d49b59a8b44a243af341573047377896', '63', null);
INSERT INTO `sampling_media_order` VALUES ('359', '0', '2019-11-07 17:21:17', null, '1', null, '1', '20191107172117597', '68788865eb00ac9b188849a7a406dc0e7f0337a01573118446227', '41', null);
INSERT INTO `sampling_media_order` VALUES ('360', '0', '2019-11-07 17:31:16', null, '1', null, '1', '20191107173116413', '7534700388199d2e5f4e412a95c09f78070aa7d71573119050750', '59', null);
INSERT INTO `sampling_media_order` VALUES ('361', '0', '2019-11-07 17:31:28', null, '1', null, '1', '20191107173128366', '7534700388199d2e5f4e412a95c09f78070aa7d71573119050750', '16', null);
INSERT INTO `sampling_media_order` VALUES ('362', '0', '2019-11-07 17:32:52', null, '1', null, '1', '20191107173252405', '647885754e8faf7c595a46cc8b0d79bdec2ba4221572984161970', '57', null);
INSERT INTO `sampling_media_order` VALUES ('363', '0', '2019-11-07 17:39:33', null, '1', null, '1', '20191107173933527', '64466370be1647f5d1224ec78b5e08879f3d06c81573119555486', '59', null);
INSERT INTO `sampling_media_order` VALUES ('364', '0', '2019-11-07 17:53:57', null, '1', null, '1', '20191107175357799', '8790342357a1208481914138bc0ccf97caed08641573114566725', '57', null);
INSERT INTO `sampling_media_order` VALUES ('365', '0', '2019-11-07 17:54:04', null, '1', null, '1', '20191107175404407', '8790342357a1208481914138bc0ccf97caed08641573114566725', '34', null);
INSERT INTO `sampling_media_order` VALUES ('366', '0', '2019-11-07 18:11:46', null, '1', null, '1', '20191107181146604', '8824874123de94caff2b4599b7e42a40041e50da1573121471824', '62', null);
INSERT INTO `sampling_media_order` VALUES ('367', '0', '2019-11-07 18:11:57', null, '1', null, '1', '20191107181157910', '8824874123de94caff2b4599b7e42a40041e50da1573121471824', '54', null);
INSERT INTO `sampling_media_order` VALUES ('368', '0', '2019-11-07 18:12:05', null, '1', null, '1', '20191107181205364', '8824874123de94caff2b4599b7e42a40041e50da1573121471824', '46', null);
INSERT INTO `sampling_media_order` VALUES ('369', '0', '2019-11-07 18:12:14', null, '1', null, '1', '20191107181214129', '8824874123de94caff2b4599b7e42a40041e50da1573121471824', '46', null);
INSERT INTO `sampling_media_order` VALUES ('370', '0', '2019-11-07 18:37:50', null, '1', null, '1', '20191107183750755', '151810595af9acf4362f48e2943ab1fe4d1ee48b1573123058841', '34', null);
INSERT INTO `sampling_media_order` VALUES ('371', '0', '2019-11-07 18:39:48', null, '1', null, '1', '20191107183948205', '718635653fb4fcc29b1c48f4a0f7eba3cdc2d81f1573123178741', '40', null);
INSERT INTO `sampling_media_order` VALUES ('372', '0', '2019-11-07 18:40:00', null, '1', null, '1', '20191107184000287', '718635653fb4fcc29b1c48f4a0f7eba3cdc2d81f1573123178741', '32', null);
INSERT INTO `sampling_media_order` VALUES ('373', '0', '2019-11-07 19:00:19', null, '1', null, '1', '20191107190019458', '29988762526ec2dded194e94b053de931da89b8a1573124395864', '16', null);
INSERT INTO `sampling_media_order` VALUES ('374', '0', '2019-11-07 19:03:24', null, '1', null, '1', '20191107190324917', '2579225971a13af0a2484391a3ccd9bcfa2b53551573124558852', '66', null);
INSERT INTO `sampling_media_order` VALUES ('375', '0', '2019-11-07 19:05:09', null, '1', null, '1', '20191107190509970', '57923617b15fb0138d6149df8d9c702cdc3ae8bd1573124682961', '31', null);
INSERT INTO `sampling_media_order` VALUES ('376', '0', '2019-11-07 19:05:44', null, '1', null, '1', '20191107190544781', '57923617b15fb0138d6149df8d9c702cdc3ae8bd1573124682961', '62', null);
INSERT INTO `sampling_media_order` VALUES ('377', '0', '2019-11-07 19:26:41', null, '1', null, '1', '20191107192641642', '445141131db5941e5c9441508e8a76bed3196f571573125971902', '38', null);
INSERT INTO `sampling_media_order` VALUES ('378', '0', '2019-11-07 19:26:54', null, '1', null, '1', '20191107192654976', '445141131db5941e5c9441508e8a76bed3196f571573125971902', '66', null);
INSERT INTO `sampling_media_order` VALUES ('379', '0', '2019-11-07 20:08:11', null, '1', null, '1', '20191107200811323', '5600971230f51ab51bf34de2b0dd42f7ac4b3ec51573128466968', '16', null);
INSERT INTO `sampling_media_order` VALUES ('380', '0', '2019-11-07 20:12:43', null, '1', null, '1', '20191107201243118', '8335725976c88281bdd049fe87cbbcf6ac9001d01573115984382', '51', null);
INSERT INTO `sampling_media_order` VALUES ('381', '0', '2019-11-07 20:14:12', null, '1', null, '1', '20191107201412461', '11213377e490f03d652e49fb89865e1a079b1c7d1573128828340', '29', null);
INSERT INTO `sampling_media_order` VALUES ('382', '0', '2019-11-07 20:16:40', null, '1', null, '1', '20191107201640901', '67995584cd4f4d8e9c184f608decd9d887d3af6c1573128930872', '67', null);
INSERT INTO `sampling_media_order` VALUES ('383', '0', '2019-11-07 20:17:50', null, '1', null, '1', '20191107201750760', '11213377e490f03d652e49fb89865e1a079b1c7d1573128828340', '24', null);
INSERT INTO `sampling_media_order` VALUES ('384', '0', '2019-11-07 20:18:09', null, '1', null, '1', '20191107201809629', '747350077c2e7849b0d847aaa3d5ade6128556c51573116373268', '47', null);
INSERT INTO `sampling_media_order` VALUES ('385', '0', '2019-11-07 20:37:37', null, '1', null, '1', '20191107203737934', '5600971230f51ab51bf34de2b0dd42f7ac4b3ec51573128466968', '63', null);
INSERT INTO `sampling_media_order` VALUES ('386', '0', '2019-11-07 20:40:59', null, '1', null, '1', '20191107204059487', '5600971230f51ab51bf34de2b0dd42f7ac4b3ec51573128466968', '51', null);
INSERT INTO `sampling_media_order` VALUES ('387', '0', '2019-11-07 20:50:43', null, '1', null, '1', '20191107205043629', '238518451e2e8557205847d69fa5fd1574772b151573130922380', '35', null);
INSERT INTO `sampling_media_order` VALUES ('388', '0', '2019-11-07 20:50:54', null, '1', null, '1', '20191107205054230', '238518451e2e8557205847d69fa5fd1574772b151573130922380', '64', null);
INSERT INTO `sampling_media_order` VALUES ('389', '0', '2019-11-07 20:52:34', null, '1', null, '1', '20191107205234912', '62923615ca791cc00a2d4bb29cd289f9025081211573130938975', '64', null);
INSERT INTO `sampling_media_order` VALUES ('390', '0', '2019-11-07 20:53:00', null, '1', null, '1', '20191107205300602', '62923615ca791cc00a2d4bb29cd289f9025081211573130938975', '51', null);
INSERT INTO `sampling_media_order` VALUES ('391', '0', '2019-11-07 21:03:18', null, '1', null, '1', '20191107210318234', '85700381d85f5a4c6388459daa5ff1e80cef3dde1573131713684', '63', null);
INSERT INTO `sampling_media_order` VALUES ('392', '0', '2019-11-07 21:10:46', null, '1', null, '1', '20191107211046137', '647885754e8faf7c595a46cc8b0d79bdec2ba4221572984161970', '64', null);
INSERT INTO `sampling_media_order` VALUES ('393', '0', '2019-11-07 21:11:24', null, '1', null, '1', '20191107211124484', '647885754e8faf7c595a46cc8b0d79bdec2ba4221572984161970', '64', null);
INSERT INTO `sampling_media_order` VALUES ('394', '0', '2019-11-07 21:15:38', null, '1', null, '1', '20191107211538344', '51486470c73ec6cf12244207878413fa646f6e431573132316137', '62', null);
INSERT INTO `sampling_media_order` VALUES ('395', '0', '2019-11-07 21:26:04', null, '1', null, '1', '20191107212604432', '37733358c7ea937a338b4a09b96ecb030926b6c31573133154834', '60', null);
INSERT INTO `sampling_media_order` VALUES ('396', '0', '2019-11-07 21:26:15', null, '1', null, '1', '20191107212615134', '37733358c7ea937a338b4a09b96ecb030926b6c31573133154834', '60', null);
INSERT INTO `sampling_media_order` VALUES ('397', '0', '2019-11-07 21:26:59', null, '1', null, '1', '20191107212659136', '37733358c7ea937a338b4a09b96ecb030926b6c31573133154834', '12', null);
INSERT INTO `sampling_media_order` VALUES ('398', '0', '2019-11-07 21:27:45', null, '1', null, '1', '20191107212745244', '37733358c7ea937a338b4a09b96ecb030926b6c31573133154834', '54', null);
INSERT INTO `sampling_media_order` VALUES ('399', '0', '2019-11-07 21:29:19', null, '1', null, '1', '20191107212919502', '37733358c7ea937a338b4a09b96ecb030926b6c31573133154834', '19', null);
INSERT INTO `sampling_media_order` VALUES ('400', '0', '2019-11-07 21:56:56', null, '1', null, '1', '20191107215656832', '', '63', null);
INSERT INTO `sampling_media_order` VALUES ('401', '0', '2019-11-07 21:57:05', null, '1', null, '1', '20191107215705806', '4220958946abe489da9f43b9911ec6cb37faf61c1573134995706', '63', null);
INSERT INTO `sampling_media_order` VALUES ('402', '0', '2019-11-07 21:57:47', null, '1', null, '1', '20191107215747765', '39632722ffba549ac26846faa12fc94cb101bfb31573135053299', '57', null);
INSERT INTO `sampling_media_order` VALUES ('403', '0', '2019-11-07 21:58:02', null, '1', null, '1', '20191107215802866', '39632722ffba549ac26846faa12fc94cb101bfb31573135053299', '25', null);
INSERT INTO `sampling_media_order` VALUES ('404', '0', '2019-11-07 22:06:29', null, '1', null, '1', '20191107220629580', '90713010472a97e855374258aed49d306548259b1573135581069', '54', null);
INSERT INTO `sampling_media_order` VALUES ('405', '0', '2019-11-07 22:07:26', null, '1', null, '1', '20191107220726941', '100070948ad1a6a0bf474fd3ac341932da09402e1573117624340', '16', null);
INSERT INTO `sampling_media_order` VALUES ('406', '0', '2019-11-07 22:07:33', null, '1', null, '1', '20191107220733122', '100070948ad1a6a0bf474fd3ac341932da09402e1573117624340', '67', null);
INSERT INTO `sampling_media_order` VALUES ('407', '0', '2019-11-07 22:24:50', null, '1', null, '1', '20191107222450215', '893966336ff1660cc4dd44809dff4ecada2795e31573117219816', '16', null);
INSERT INTO `sampling_media_order` VALUES ('408', '0', '2019-11-07 22:30:31', null, '1', null, '1', '20191107223031403', '82841465882f20e30bef41aa871d7c14a8f4b0b91573137013470', '38', null);
INSERT INTO `sampling_media_order` VALUES ('409', '0', '2019-11-07 22:50:16', null, '1', null, '1', '20191107225016380', '28961863279a40cc949d4f9d9c01e71c1e7bd4291573138202859', '31', null);
INSERT INTO `sampling_media_order` VALUES ('410', '0', '2019-11-07 22:52:49', null, '1', null, '1', '20191107225249450', '16876882ed9cb6e7c8774c93a25d7abea96824ad1573138341384', '17', null);
INSERT INTO `sampling_media_order` VALUES ('411', '0', '2019-11-07 22:53:05', null, '1', null, '1', '20191107225305786', '16876882ed9cb6e7c8774c93a25d7abea96824ad1573138341384', '51', null);
INSERT INTO `sampling_media_order` VALUES ('412', '0', '2019-11-07 22:53:22', null, '1', null, '1', '20191107225322393', '16876882ed9cb6e7c8774c93a25d7abea96824ad1573138341384', '39', null);
INSERT INTO `sampling_media_order` VALUES ('413', '0', '2019-11-07 22:54:13', null, '1', null, '1', '20191107225413486', '8335725976c88281bdd049fe87cbbcf6ac9001d01573115984382', '42', null);
INSERT INTO `sampling_media_order` VALUES ('414', '0', '2019-11-07 22:59:23', null, '1', null, '1', '20191107225923115', '73437955276adc1738254bf788aa7344e0aa1fee1573138694167', '69', null);
INSERT INTO `sampling_media_order` VALUES ('415', '0', '2019-11-07 23:13:34', null, '1', null, '1', '20191107231334234', '85700381d85f5a4c6388459daa5ff1e80cef3dde1573131713684', '27', null);
INSERT INTO `sampling_media_order` VALUES ('416', '0', '2019-11-07 23:14:33', null, '1', null, '1', '20191107231433531', '997606300417d980cbb94e3ba6d3d277d72fe1b51573139659047', '22', null);
INSERT INTO `sampling_media_order` VALUES ('417', '0', '2019-11-07 23:15:12', null, '1', null, '1', '20191107231512797', '85700381d85f5a4c6388459daa5ff1e80cef3dde1573131713684', '51', null);
INSERT INTO `sampling_media_order` VALUES ('418', '0', '2019-11-07 23:17:46', null, '1', null, '1', '20191107231746735', '143700852babd72fa0cc43bcabf459360cc309a91573053487685', '53', null);
INSERT INTO `sampling_media_order` VALUES ('419', '0', '2019-11-07 23:23:34', null, '1', null, '1', '20191107232334133', '75108477302c7825fb0c471e93162d59f9100c151573140199050', '64', null);
INSERT INTO `sampling_media_order` VALUES ('420', '0', '2019-11-07 23:40:01', null, '1', null, '1', '20191107234001367', '75849151195eb54492674d6f9d8b3e66fe544df61573141177656', '22', null);
INSERT INTO `sampling_media_order` VALUES ('421', '0', '2019-11-07 23:53:52', null, '1', null, '1', '20191107235352646', '130100523e7c50b2ec0b43fc843ababd6da2c16f1573142005583', '25', null);
INSERT INTO `sampling_media_order` VALUES ('422', '0', '2019-11-07 23:54:13', null, '1', null, '1', '20191107235413839', '130100523e7c50b2ec0b43fc843ababd6da2c16f1573142005583', '40', null);
INSERT INTO `sampling_media_order` VALUES ('423', '0', '2019-11-07 23:54:31', null, '1', null, '1', '20191107235431803', '130100523e7c50b2ec0b43fc843ababd6da2c16f1573142005583', '60', null);
INSERT INTO `sampling_media_order` VALUES ('424', '0', '2019-11-08 00:03:54', null, '1', null, '1', '20191108000354239', '2377204054cc26eb4c2342f7b354c36d668990271573098913288', '29', null);
INSERT INTO `sampling_media_order` VALUES ('425', '0', '2019-11-08 00:22:46', null, '1', null, '1', '20191108002246211', '9255333429adf8fdcfe24191b07276e7af8a94fe1573143752487', '42', null);
INSERT INTO `sampling_media_order` VALUES ('426', '0', '2019-11-08 00:22:57', null, '1', null, '1', '20191108002257299', '9255333429adf8fdcfe24191b07276e7af8a94fe1573143752487', '35', null);
INSERT INTO `sampling_media_order` VALUES ('427', '0', '2019-11-08 00:23:09', null, '1', null, '1', '20191108002309157', '9255333429adf8fdcfe24191b07276e7af8a94fe1573143752487', '35', null);
INSERT INTO `sampling_media_order` VALUES ('428', '0', '2019-11-08 00:23:17', null, '1', null, '1', '20191108002317631', '9255333429adf8fdcfe24191b07276e7af8a94fe1573143752487', '64', null);
INSERT INTO `sampling_media_order` VALUES ('429', '0', '2019-11-08 00:23:29', null, '1', null, '1', '20191108002329770', '9255333429adf8fdcfe24191b07276e7af8a94fe1573143752487', '64', null);
INSERT INTO `sampling_media_order` VALUES ('430', '0', '2019-11-08 00:23:54', null, '1', null, '1', '20191108002354302', '82408721e5c8ce197796480390e389608e797acb1573143819074', '49', null);
INSERT INTO `sampling_media_order` VALUES ('431', '0', '2019-11-08 00:26:20', null, '1', null, '1', '20191108002620435', '8790342357a1208481914138bc0ccf97caed08641573114566725', '59', null);
INSERT INTO `sampling_media_order` VALUES ('432', '0', '2019-11-08 00:26:45', null, '1', null, '1', '20191108002645113', '8790342357a1208481914138bc0ccf97caed08641573114566725', '16', null);
INSERT INTO `sampling_media_order` VALUES ('433', '0', '2019-11-08 00:51:40', null, '1', null, '1', '20191108005140656', '24075383acd9761e71a849dba0bf961a5227713d1573145483443', '66', null);
INSERT INTO `sampling_media_order` VALUES ('434', '0', '2019-11-08 03:05:27', null, '1', null, '1', '20191108030527159', '24784654fc874e1d677e4734872acd26fdb89e3b1572939598793', '56', null);
INSERT INTO `sampling_media_order` VALUES ('435', '0', '2019-11-08 03:05:51', null, '1', null, '1', '20191108030551116', '647885754e8faf7c595a46cc8b0d79bdec2ba4221572984161970', '27', null);
INSERT INTO `sampling_media_order` VALUES ('436', '0', '2019-11-08 03:06:03', null, '1', null, '1', '20191108030603115', '4763026867da2e683c3240e689e0eb872ecb91d61572932553540', '39', null);
INSERT INTO `sampling_media_order` VALUES ('437', '0', '2019-11-08 03:51:01', null, '1', null, '1', '20191108035101515', '54191599129523cb875c47b194ee7606fd89c0d61573156236383', '15', null);
INSERT INTO `sampling_media_order` VALUES ('438', '0', '2019-11-08 03:51:45', null, '1', null, '1', '20191108035145610', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '48', null);
INSERT INTO `sampling_media_order` VALUES ('439', '0', '2019-11-08 03:53:14', null, '1', null, '1', '20191108035314776', '262712287d8a8bead2f44c7195edd76b59464bd51573156377065', '34', null);
INSERT INTO `sampling_media_order` VALUES ('440', '0', '2019-11-08 03:53:20', null, '1', null, '1', '20191108035320902', '262712287d8a8bead2f44c7195edd76b59464bd51573156377065', '62', null);
INSERT INTO `sampling_media_order` VALUES ('441', '0', '2019-11-08 03:56:48', null, '1', null, '1', '20191108035648174', '823411477861474dff184bba9b416576c820b2ce1573156596130', '34', null);
INSERT INTO `sampling_media_order` VALUES ('442', '0', '2019-11-08 03:57:01', null, '1', null, '1', '20191108035701614', '823411477861474dff184bba9b416576c820b2ce1573156596130', '35', null);
INSERT INTO `sampling_media_order` VALUES ('443', '0', '2019-11-08 03:57:09', null, '1', null, '1', '20191108035709787', '823411477861474dff184bba9b416576c820b2ce1573156596130', '64', null);
INSERT INTO `sampling_media_order` VALUES ('444', '0', '2019-11-08 03:57:18', null, '1', null, '1', '20191108035718129', '823411477861474dff184bba9b416576c820b2ce1573156596130', '38', null);
INSERT INTO `sampling_media_order` VALUES ('445', '0', '2019-11-08 03:58:23', null, '1', null, '1', '20191108035823836', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '66', null);
INSERT INTO `sampling_media_order` VALUES ('446', '0', '2019-11-08 04:13:54', null, '1', null, '1', '20191108041354221', '54191599129523cb875c47b194ee7606fd89c0d61573156236383', '67', null);
INSERT INTO `sampling_media_order` VALUES ('447', '0', '2019-11-08 04:14:06', null, '1', null, '1', '20191108041406106', '54191599129523cb875c47b194ee7606fd89c0d61573156236383', '30', null);
INSERT INTO `sampling_media_order` VALUES ('448', '0', '2019-11-08 05:40:11', null, '1', null, '1', '20191108054011482', '985067073df7ceec8efa447bbe2713c196f38adf1573076239149', '43', null);
INSERT INTO `sampling_media_order` VALUES ('449', '0', '2019-11-08 05:40:47', null, '1', null, '1', '20191108054047493', '985067073df7ceec8efa447bbe2713c196f38adf1573076239149', '41', null);
INSERT INTO `sampling_media_order` VALUES ('450', '0', '2019-11-08 05:40:54', null, '1', null, '1', '20191108054054701', '985067073df7ceec8efa447bbe2713c196f38adf1573076239149', '41', null);
INSERT INTO `sampling_media_order` VALUES ('451', '0', '2019-11-08 06:00:29', null, '1', null, '1', '20191108060029314', '8627600977f5f45039c54cf68e33cd26db6de9ea1573164023560', '19', null);
INSERT INTO `sampling_media_order` VALUES ('452', '0', '2019-11-08 06:06:17', null, '1', null, '1', '20191108060617682', '609211084d524be1d3de4cad9e0308ab00268d891573164366503', '47', null);
INSERT INTO `sampling_media_order` VALUES ('453', '0', '2019-11-08 06:17:58', null, '1', null, '1', '20191108061758672', '49413908ead4f7b7def34d88b1abb0505d84d6991573165030756', '16', null);
INSERT INTO `sampling_media_order` VALUES ('454', '0', '2019-11-08 07:14:45', null, '1', null, '1', '20191108071445557', '86591490dbd008f83509466897e9b189639e7e761573168474563', '30', null);
INSERT INTO `sampling_media_order` VALUES ('455', '0', '2019-11-08 07:27:13', null, '1', null, '1', '20191108072713938', '572404555b103b92a85f4d53a8b3f7efda1fe4731573169178872', '16', null);
INSERT INTO `sampling_media_order` VALUES ('456', '0', '2019-11-08 07:55:47', null, '1', null, '1', '20191108075547571', '81307278de17086180794b72803a29d4d322440c1573170886793', '16', null);
INSERT INTO `sampling_media_order` VALUES ('457', '0', '2019-11-08 07:56:23', null, '1', null, '1', '20191108075623221', '951047358987276271e9495eb952823f019560df1573170963427', '52', null);
INSERT INTO `sampling_media_order` VALUES ('458', '0', '2019-11-08 10:40:55', null, '1', null, '1', '20191108104055601', '17014154b774d0a40c4243389c11d08bd9d0a0391573180841735', '57', null);
INSERT INTO `sampling_media_order` VALUES ('459', '0', '2019-11-08 10:41:01', null, '1', null, '1', '20191108104101629', '51978086853ae4a1cf2f40ffa69639ee0a6b8c701573180848615', '14', null);
INSERT INTO `sampling_media_order` VALUES ('460', '0', '2019-11-08 10:41:12', null, '1', null, '1', '20191108104112382', '51978086853ae4a1cf2f40ffa69639ee0a6b8c701573180848615', '41', null);
INSERT INTO `sampling_media_order` VALUES ('461', '0', '2019-11-08 10:41:17', null, '1', null, '1', '20191108104117671', '51978086853ae4a1cf2f40ffa69639ee0a6b8c701573180848615', '51', null);
INSERT INTO `sampling_media_order` VALUES ('462', '0', '2019-11-08 10:45:08', null, '1', null, '1', '20191108104508239', '70307497ec084b39c0164c92b4d1fd514bf5a17d1573181097600', '51', null);
INSERT INTO `sampling_media_order` VALUES ('463', '0', '2019-11-08 10:45:50', null, '1', null, '1', '20191108104550519', '74039278332287deec47416e839ce1b8176d6bb71573181130752', '40', null);
INSERT INTO `sampling_media_order` VALUES ('464', '0', '2019-11-08 10:47:03', null, '1', null, '1', '20191108104703565', '180515931d02e350631d41408419d6dc590a5da91573181210683', '40', null);
INSERT INTO `sampling_media_order` VALUES ('465', '0', '2019-11-08 10:48:48', null, '1', null, '1', '20191108104848872', '785612423fa62c61c5c44054adc9db8772396b351573181314671', '50', null);
INSERT INTO `sampling_media_order` VALUES ('466', '0', '2019-11-08 10:50:57', null, '1', null, '1', '20191108105057764', '69042772c4181903ca4a41db9a963ddb7cd8e3221573181449102', '52', null);
INSERT INTO `sampling_media_order` VALUES ('467', '0', '2019-11-08 11:12:04', null, '1', null, '1', '20191108111204552', '89889868ec2e4e5e96a34633858f78ddada5e9821573182656295', '39', null);
INSERT INTO `sampling_media_order` VALUES ('468', '0', '2019-11-08 11:14:14', null, '1', null, '1', '20191108111414519', '8405365780cc6d07fbaa4a03803f450e404807261573182818699', '52', null);
INSERT INTO `sampling_media_order` VALUES ('469', '0', '2019-11-08 11:14:23', null, '1', null, '1', '20191108111423333', '8405365780cc6d07fbaa4a03803f450e404807261573182818699', '59', null);
INSERT INTO `sampling_media_order` VALUES ('470', '0', '2019-11-08 11:15:28', null, '1', null, '1', '20191108111528163', '8405365780cc6d07fbaa4a03803f450e404807261573182818699', '35', null);
INSERT INTO `sampling_media_order` VALUES ('471', '0', '2019-11-08 11:15:54', null, '1', null, '1', '20191108111554640', '8405365780cc6d07fbaa4a03803f450e404807261573182818699', '50', null);
INSERT INTO `sampling_media_order` VALUES ('472', '0', '2019-11-08 11:16:37', null, '1', null, '1', '20191108111637877', '70758381e0172449ef3648cd8fb5ab4084ec8a561573182977465', '34', null);
INSERT INTO `sampling_media_order` VALUES ('473', '0', '2019-11-08 11:25:48', null, '1', null, '1', '20191108112548977', '614675178e80a457712f47a6bf0cd91cd15e5b631573183532526', '43', null);
INSERT INTO `sampling_media_order` VALUES ('474', '0', '2019-11-08 11:28:19', null, '1', null, '1', '20191108112819771', '95453391efbb002f35984731898888ac73e6c2511573183690277', '37', null);
INSERT INTO `sampling_media_order` VALUES ('475', '0', '2019-11-08 11:28:51', null, '1', null, '1', '20191108112851859', '95453391efbb002f35984731898888ac73e6c2511573183690277', '40', null);
INSERT INTO `sampling_media_order` VALUES ('476', '0', '2019-11-08 11:28:57', null, '1', null, '1', '20191108112857879', '913927729646932b0b91463294c22804a90d155e1573183728069', '66', null);
INSERT INTO `sampling_media_order` VALUES ('477', '0', '2019-11-08 11:57:14', null, '1', null, '1', '20191108115714906', '65856804d9e4001e0aed41d58e446c88581579211573139049568', '30', null);
INSERT INTO `sampling_media_order` VALUES ('478', '0', '2019-11-08 11:57:18', null, '1', null, '1', '20191108115718799', '65856804d9e4001e0aed41d58e446c88581579211573139049568', '30', null);
INSERT INTO `sampling_media_order` VALUES ('479', '0', '2019-11-08 12:19:32', null, '1', null, '1', '20191108121932264', '94730136f148a522a19f4d49b59a8b44a243af341573047377896', '16', null);
INSERT INTO `sampling_media_order` VALUES ('480', '0', '2019-11-08 12:25:31', null, '1', null, '1', '20191108122531192', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '16', null);
INSERT INTO `sampling_media_order` VALUES ('481', '0', '2019-11-08 12:26:06', null, '1', null, '1', '20191108122606607', '54191599129523cb875c47b194ee7606fd89c0d61573156236383', '15', null);
INSERT INTO `sampling_media_order` VALUES ('482', '0', '2019-11-08 12:26:14', null, '1', null, '1', '20191108122614558', '54191599129523cb875c47b194ee7606fd89c0d61573156236383', '31', null);
INSERT INTO `sampling_media_order` VALUES ('483', '0', '2019-11-08 12:26:51', null, '1', null, '1', '20191108122651228', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '12', null);
INSERT INTO `sampling_media_order` VALUES ('484', '0', '2019-11-08 12:27:05', null, '1', null, '1', '20191108122705635', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '12', null);
INSERT INTO `sampling_media_order` VALUES ('485', '0', '2019-11-08 12:27:15', null, '1', null, '1', '20191108122715642', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '12', null);
INSERT INTO `sampling_media_order` VALUES ('486', '0', '2019-11-08 12:27:40', null, '1', null, '1', '20191108122740339', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '67', null);
INSERT INTO `sampling_media_order` VALUES ('487', '0', '2019-11-08 12:28:26', null, '1', null, '1', '20191108122826779', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '67', null);
INSERT INTO `sampling_media_order` VALUES ('488', '0', '2019-11-08 12:28:42', null, '1', null, '1', '20191108122842711', '74385185ed82a1ef725240e4b436137f20c33b971573187319846', '61', null);
INSERT INTO `sampling_media_order` VALUES ('489', '0', '2019-11-08 12:28:46', null, '1', null, '1', '20191108122846223', '74385185ed82a1ef725240e4b436137f20c33b971573187319846', '45', null);
INSERT INTO `sampling_media_order` VALUES ('490', '0', '2019-11-08 12:28:53', null, '1', null, '1', '20191108122853657', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '67', null);
INSERT INTO `sampling_media_order` VALUES ('491', '0', '2019-11-08 12:29:01', null, '1', null, '1', '20191108122901422', '52168076c4c33878ca674801bc5a64ff752d09bc1573181162754', '41', null);
INSERT INTO `sampling_media_order` VALUES ('492', '0', '2019-11-08 12:30:33', null, '1', null, '1', '20191108123033348', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '59', null);
INSERT INTO `sampling_media_order` VALUES ('493', '0', '2019-11-08 12:30:42', null, '1', null, '1', '20191108123042599', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '59', null);
INSERT INTO `sampling_media_order` VALUES ('494', '0', '2019-11-08 12:35:36', null, '1', null, '1', '20191108123536192', '64452282c8eda5dd931c43b985fd228abf3d33dc1573114630856', '30', null);
INSERT INTO `sampling_media_order` VALUES ('495', '0', '2019-11-08 12:35:41', null, '1', null, '1', '20191108123541620', '64452282c8eda5dd931c43b985fd228abf3d33dc1573114630856', '46', null);
INSERT INTO `sampling_media_order` VALUES ('496', '0', '2019-11-08 12:35:46', null, '1', null, '1', '20191108123546883', '64452282c8eda5dd931c43b985fd228abf3d33dc1573114630856', '46', null);
INSERT INTO `sampling_media_order` VALUES ('497', '0', '2019-11-08 12:35:53', null, '1', null, '1', '20191108123553752', '64452282c8eda5dd931c43b985fd228abf3d33dc1573114630856', '48', null);
INSERT INTO `sampling_media_order` VALUES ('498', '0', '2019-11-08 12:45:15', null, '1', null, '1', '20191108124515527', '93633572705a490833cf46349d6dc427feb660041573109893670', '54', null);
INSERT INTO `sampling_media_order` VALUES ('499', '0', '2019-11-08 12:45:34', null, '1', null, '1', '20191108124534632', '93633572705a490833cf46349d6dc427feb660041573109893670', '58', null);
INSERT INTO `sampling_media_order` VALUES ('500', '0', '2019-11-08 12:47:34', null, '1', null, '1', '20191108124734504', '46929406559d61b6e58e408a8e9c848945f6e1ad1573056293838', '16', null);
INSERT INTO `sampling_media_order` VALUES ('501', '0', '2019-11-08 12:48:16', null, '1', null, '1', '20191108124816807', '647885754e8faf7c595a46cc8b0d79bdec2ba4221572984161970', '33', null);
INSERT INTO `sampling_media_order` VALUES ('502', '0', '2019-11-08 13:02:28', null, '1', null, '1', '20191108130228386', '10816717245b266adc014918998e6d23f7d530ef1573189306903', '15', null);
INSERT INTO `sampling_media_order` VALUES ('503', '0', '2019-11-08 13:04:29', null, '1', null, '1', '20191108130429307', '83869881b2277dd043874de0ab904faea2d22be81573181498608', '34', null);
INSERT INTO `sampling_media_order` VALUES ('504', '0', '2019-11-08 13:04:56', null, '1', null, '1', '20191108130456122', '33079060d68f43d62bf14c59aab524e061bbe8a71573189463244', '69', null);
INSERT INTO `sampling_media_order` VALUES ('505', '0', '2019-11-08 13:04:59', null, '1', null, '1', '20191108130459925', '83869881b2277dd043874de0ab904faea2d22be81573181498608', '32', null);
INSERT INTO `sampling_media_order` VALUES ('506', '0', '2019-11-08 13:05:07', null, '1', null, '1', '20191108130507272', '83869881b2277dd043874de0ab904faea2d22be81573181498608', '54', null);
INSERT INTO `sampling_media_order` VALUES ('507', '0', '2019-11-08 13:24:01', null, '1', null, '1', '20191108132401554', '2999989201e9717c55f04bf79db6346e9a98297d1573148261806', '46', null);
INSERT INTO `sampling_media_order` VALUES ('508', '0', '2019-11-08 13:24:39', null, '1', null, '1', '20191108132439833', '474930559049920b904640e0ba423c74cfb1237b1573190669986', '12', null);
INSERT INTO `sampling_media_order` VALUES ('509', '0', '2019-11-08 13:27:17', null, '1', null, '1', '20191108132717827', '34649363653777f5dbb04c17aaf06bd4ff441ed31573190741111', '32', null);
INSERT INTO `sampling_media_order` VALUES ('510', '0', '2019-11-08 13:28:21', null, '1', null, '1', '20191108132821135', '8523291389635cbe1d154f1aad76ea07b731479d1573190866652', '41', null);
INSERT INTO `sampling_media_order` VALUES ('511', '0', '2019-11-08 13:29:18', null, '1', null, '1', '20191108132918207', '8523291389635cbe1d154f1aad76ea07b731479d1573190866652', '37', null);
INSERT INTO `sampling_media_order` VALUES ('512', '0', '2019-11-08 13:29:27', null, '1', null, '1', '20191108132927232', '100342950abf48d71cd14d0398ad08269fc030ee1573114484656', '36', null);
INSERT INTO `sampling_media_order` VALUES ('513', '0', '2019-11-08 13:29:32', null, '1', null, '1', '20191108132932555', '100342950abf48d71cd14d0398ad08269fc030ee1573114484656', '63', null);
INSERT INTO `sampling_media_order` VALUES ('514', '0', '2019-11-08 13:37:13', null, '1', null, '1', '20191108133713258', '8523291389635cbe1d154f1aad76ea07b731479d1573190866652', '35', null);
INSERT INTO `sampling_media_order` VALUES ('515', '0', '2019-11-08 13:47:45', null, '1', null, '1', '20191108134745396', '639635277f2c00f2697c442ab735576a1897aa541573192054856', '49', null);
INSERT INTO `sampling_media_order` VALUES ('516', '0', '2019-11-08 13:47:54', null, '1', null, '1', '20191108134754244', '639635277f2c00f2697c442ab735576a1897aa541573192054856', '34', null);
INSERT INTO `sampling_media_order` VALUES ('517', '0', '2019-11-08 13:48:06', null, '1', null, '1', '20191108134806146', '639635277f2c00f2697c442ab735576a1897aa541573192054856', '67', null);
INSERT INTO `sampling_media_order` VALUES ('518', '0', '2019-11-08 13:48:12', null, '1', null, '1', '20191108134812498', '639635277f2c00f2697c442ab735576a1897aa541573192054856', '36', null);
INSERT INTO `sampling_media_order` VALUES ('519', '0', '2019-11-08 13:48:18', null, '1', null, '1', '20191108134818507', '639635277f2c00f2697c442ab735576a1897aa541573192054856', '41', null);
INSERT INTO `sampling_media_order` VALUES ('520', '0', '2019-11-08 13:48:22', null, '1', null, '1', '20191108134822622', '639635277f2c00f2697c442ab735576a1897aa541573192054856', '31', null);
INSERT INTO `sampling_media_order` VALUES ('521', '0', '2019-11-08 13:48:29', null, '1', null, '1', '20191108134829487', '639635277f2c00f2697c442ab735576a1897aa541573192054856', '44', null);
INSERT INTO `sampling_media_order` VALUES ('522', '0', '2019-11-08 13:56:40', null, '1', null, '1', '20191108135640100', '4659247293376a97e2a945abb626f8553561ced61573192590568', '38', null);
INSERT INTO `sampling_media_order` VALUES ('523', '0', '2019-11-08 13:56:46', null, '1', null, '1', '20191108135646783', '4659247293376a97e2a945abb626f8553561ced61573192590568', '64', null);
INSERT INTO `sampling_media_order` VALUES ('524', '0', '2019-11-08 13:56:58', null, '1', null, '1', '20191108135658371', '4659247293376a97e2a945abb626f8553561ced61573192590568', '34', null);
INSERT INTO `sampling_media_order` VALUES ('525', '0', '2019-11-08 13:58:58', null, '1', null, '1', '20191108135858739', '9961622404b0ded81d974aaab786749981792f441573192583389', '48', null);
INSERT INTO `sampling_media_order` VALUES ('526', '0', '2019-11-08 14:01:17', null, '1', null, '1', '20191108140117802', '553676111d546ce5afb64dd98df2276ce963f9641573192842384', '40', null);
INSERT INTO `sampling_media_order` VALUES ('527', '0', '2019-11-08 14:07:32', null, '1', null, '1', '20191108140732764', '4763026867da2e683c3240e689e0eb872ecb91d61572932553540', '22', null);
INSERT INTO `sampling_media_order` VALUES ('528', '0', '2019-11-08 14:14:31', null, '1', null, '1', '20191108141431694', '906244708b3a5ae21dc2485fbbaa7866f473d63c1573193621525', '54', null);
INSERT INTO `sampling_media_order` VALUES ('529', '0', '2019-11-08 14:15:09', null, '1', null, '1', '20191108141509781', '34001466e1fc2468c3f3472a9dd9163b49fccfb71573193686296', '43', null);
INSERT INTO `sampling_media_order` VALUES ('530', '0', '2019-11-08 14:35:20', null, '1', null, '1', '20191108143520903', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '66', null);
INSERT INTO `sampling_media_order` VALUES ('531', '0', '2019-11-08 14:40:23', null, '1', null, '1', '20191108144023349', '5134723122f2e8721c2249718485b84b38e11c7b1573195207082', '27', null);
INSERT INTO `sampling_media_order` VALUES ('532', '0', '2019-11-08 14:56:38', null, '1', null, '1', '20191108145638616', '51406469949d4b88b0ba487cb5cfc3b7221f00771573196180907', '35', null);
INSERT INTO `sampling_media_order` VALUES ('533', '0', '2019-11-08 14:58:59', null, '1', null, '1', '20191108145859134', '89174248178e89b9e91d49378d360449de7642821572985035878', '29', null);
INSERT INTO `sampling_media_order` VALUES ('534', '0', '2019-11-08 15:01:09', null, '1', null, '1', '20191108150109626', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '59', null);
INSERT INTO `sampling_media_order` VALUES ('535', '0', '2019-11-08 15:01:16', null, '1', null, '1', '20191108150116919', '2999989201e9717c55f04bf79db6346e9a98297d1573148261806', '63', null);
INSERT INTO `sampling_media_order` VALUES ('536', '0', '2019-11-08 15:01:24', null, '1', null, '1', '20191108150124375', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '59', null);
INSERT INTO `sampling_media_order` VALUES ('537', '0', '2019-11-08 15:01:41', null, '1', null, '1', '20191108150141243', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '59', null);
INSERT INTO `sampling_media_order` VALUES ('538', '0', '2019-11-08 15:02:29', null, '1', null, '1', '20191108150229176', '54191599129523cb875c47b194ee7606fd89c0d61573156236383', '51', null);
INSERT INTO `sampling_media_order` VALUES ('539', '0', '2019-11-08 15:03:45', null, '1', null, '1', '20191108150345327', '97306856ad8364642b654fa4afc8b6b2fbb4b8e01573196605877', '46', null);
INSERT INTO `sampling_media_order` VALUES ('540', '0', '2019-11-08 15:03:53', null, '1', null, '1', '20191108150353310', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '56', null);
INSERT INTO `sampling_media_order` VALUES ('541', '0', '2019-11-08 15:05:19', null, '1', null, '1', '20191108150519495', '100342950abf48d71cd14d0398ad08269fc030ee1573114484656', '19', null);
INSERT INTO `sampling_media_order` VALUES ('542', '0', '2019-11-08 15:05:22', null, '1', null, '1', '20191108150522706', '2579225971a13af0a2484391a3ccd9bcfa2b53551573124558852', '45', null);
INSERT INTO `sampling_media_order` VALUES ('543', '0', '2019-11-08 15:05:25', null, '1', null, '1', '20191108150525721', '100342950abf48d71cd14d0398ad08269fc030ee1573114484656', '22', null);
INSERT INTO `sampling_media_order` VALUES ('544', '0', '2019-11-08 15:07:38', null, '1', null, '1', '20191108150738567', '8335725976c88281bdd049fe87cbbcf6ac9001d01573115984382', '41', null);
INSERT INTO `sampling_media_order` VALUES ('545', '0', '2019-11-08 15:14:22', null, '1', null, '1', '20191108151422266', '647885754e8faf7c595a46cc8b0d79bdec2ba4221572984161970', '40', null);
INSERT INTO `sampling_media_order` VALUES ('546', '0', '2019-11-08 15:15:57', null, '1', null, '1', '20191108151557571', '474930559049920b904640e0ba423c74cfb1237b1573190669986', '45', null);
INSERT INTO `sampling_media_order` VALUES ('547', '0', '2019-11-08 15:16:03', null, '1', null, '1', '20191108151603818', '474930559049920b904640e0ba423c74cfb1237b1573190669986', '34', null);
INSERT INTO `sampling_media_order` VALUES ('548', '0', '2019-11-08 15:58:11', null, '1', null, '1', '20191108155811687', '94544310c1b6affb11f7418894a63b90007e042c1573199876824', '49', null);
INSERT INTO `sampling_media_order` VALUES ('549', '0', '2019-11-08 15:59:40', null, '1', null, '1', '20191108155940558', '8790342357a1208481914138bc0ccf97caed08641573114566725', '33', null);
INSERT INTO `sampling_media_order` VALUES ('550', '0', '2019-11-08 16:33:55', null, '1', null, '1', '20191108163355155', '724655524aa41b5376a44f8997bf4cd84d36bf561573201996295', '16', null);
INSERT INTO `sampling_media_order` VALUES ('551', '0', '2019-11-08 16:39:58', null, '1', null, '1', '20191108163958301', '8333271210e571c3c6944302afe8b2763bdc6e211573202339530', '20', null);
INSERT INTO `sampling_media_order` VALUES ('552', '0', '2019-11-08 17:02:05', null, '1', null, '1', '20191108170205129', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '40', null);
INSERT INTO `sampling_media_order` VALUES ('553', '0', '2019-11-08 17:37:23', null, '1', null, '1', '20191108173723785', '997606300417d980cbb94e3ba6d3d277d72fe1b51573139659047', '17', null);
INSERT INTO `sampling_media_order` VALUES ('554', '0', '2019-11-08 17:46:49', null, '1', null, '1', '20191108174649344', '85700381d85f5a4c6388459daa5ff1e80cef3dde1573131713684', '61', null);
INSERT INTO `sampling_media_order` VALUES ('555', '0', '2019-11-08 18:45:53', null, '1', null, '1', '20191108184553211', '997606300417d980cbb94e3ba6d3d277d72fe1b51573139659047', '17', null);
INSERT INTO `sampling_media_order` VALUES ('556', '0', '2019-11-08 18:46:18', null, '1', null, '1', '20191108184618308', '997606300417d980cbb94e3ba6d3d277d72fe1b51573139659047', '59', null);
INSERT INTO `sampling_media_order` VALUES ('557', '0', '2019-11-08 18:54:53', null, '1', null, '1', '20191108185453735', '997606300417d980cbb94e3ba6d3d277d72fe1b51573139659047', '42', null);
INSERT INTO `sampling_media_order` VALUES ('558', '0', '2019-11-08 18:55:28', null, '1', null, '1', '20191108185528124', '85700381d85f5a4c6388459daa5ff1e80cef3dde1573131713684', '15', null);
INSERT INTO `sampling_media_order` VALUES ('559', '0', '2019-11-08 18:56:10', null, '1', null, '1', '20191108185610578', '997606300417d980cbb94e3ba6d3d277d72fe1b51573139659047', '66', null);
INSERT INTO `sampling_media_order` VALUES ('560', '0', '2019-11-08 19:53:43', null, '1', null, '1', '20191108195343697', '92420252d7438b7b19ed4637889f2b0760e5fea51573214013295', '34', null);
INSERT INTO `sampling_media_order` VALUES ('561', '0', '2019-11-08 20:10:15', null, '1', null, '1', '20191108201015106', '4763026867da2e683c3240e689e0eb872ecb91d61572932553540', '19', null);
INSERT INTO `sampling_media_order` VALUES ('562', '0', '2019-11-08 20:16:07', null, '1', null, '1', '20191108201607927', '6140043685c3c9d3b8de48c18771b9ebcca679c21573114894342', '16', null);
INSERT INTO `sampling_media_order` VALUES ('563', '0', '2019-11-08 20:16:13', null, '1', null, '1', '20191108201613983', '6140043685c3c9d3b8de48c18771b9ebcca679c21573114894342', '46', null);
INSERT INTO `sampling_media_order` VALUES ('564', '0', '2019-11-08 20:19:10', null, '1', null, '1', '20191108201910354', '8449619009210d6501194eeb976bd05f6cb8d23f1573215530968', '66', null);
INSERT INTO `sampling_media_order` VALUES ('565', '0', '2019-11-08 20:19:19', null, '1', null, '1', '20191108201919465', '2938085959ca3fa3bb044e6d9f52d80f10ff6ff61573215539314', '48', null);
INSERT INTO `sampling_media_order` VALUES ('566', '0', '2019-11-08 20:19:30', null, '1', null, '1', '20191108201930905', '2938085959ca3fa3bb044e6d9f52d80f10ff6ff61573215539314', '20', null);
INSERT INTO `sampling_media_order` VALUES ('567', '0', '2019-11-08 20:20:16', null, '1', null, '1', '20191108202016237', '699083920af30666d7cb4ef99b7ec01421ec9c5a1573215603436', '59', null);
INSERT INTO `sampling_media_order` VALUES ('568', '0', '2019-11-08 20:22:37', null, '1', null, '1', '20191108202237402', '12358030170ad487ada347a19f2ae9316493f1241573215746092', '41', null);
INSERT INTO `sampling_media_order` VALUES ('569', '0', '2019-11-08 20:24:42', null, '1', null, '1', '20191108202442413', '285815182bb852d5b3e144c89345196809bb04011573215849537', '22', null);
INSERT INTO `sampling_media_order` VALUES ('570', '0', '2019-11-08 20:24:55', null, '1', null, '1', '20191108202455426', '285815182bb852d5b3e144c89345196809bb04011573215849537', '54', null);
INSERT INTO `sampling_media_order` VALUES ('571', '0', '2019-11-08 20:24:57', null, '1', null, '1', '20191108202457609', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '48', null);
INSERT INTO `sampling_media_order` VALUES ('572', '0', '2019-11-08 20:25:34', null, '1', null, '1', '20191108202534732', '2938085959ca3fa3bb044e6d9f52d80f10ff6ff61573215539314', '48', null);
INSERT INTO `sampling_media_order` VALUES ('573', '0', '2019-11-08 20:26:17', null, '1', null, '1', '20191108202617700', '2938085959ca3fa3bb044e6d9f52d80f10ff6ff61573215539314', '47', null);
INSERT INTO `sampling_media_order` VALUES ('574', '0', '2019-11-08 20:26:20', null, '1', null, '1', '20191108202620303', '2938085959ca3fa3bb044e6d9f52d80f10ff6ff61573215539314', '34', null);
INSERT INTO `sampling_media_order` VALUES ('575', '0', '2019-11-08 20:26:49', null, '1', null, '1', '20191108202649954', '2938085959ca3fa3bb044e6d9f52d80f10ff6ff61573215539314', '12', null);
INSERT INTO `sampling_media_order` VALUES ('576', '0', '2019-11-08 20:26:58', null, '1', null, '1', '20191108202658388', '2938085959ca3fa3bb044e6d9f52d80f10ff6ff61573215539314', '27', null);
INSERT INTO `sampling_media_order` VALUES ('577', '0', '2019-11-08 20:30:25', null, '1', null, '1', '20191108203025553', '7942132624828c2275504a46bf4e82da89398dfd1573216209676', '43', null);
INSERT INTO `sampling_media_order` VALUES ('578', '0', '2019-11-08 20:31:23', null, '1', null, '1', '20191108203123934', '7827389670086163905a4bcaa28e71bcac6636161573216265029', '52', null);
INSERT INTO `sampling_media_order` VALUES ('579', '0', '2019-11-08 20:34:58', null, '1', null, '1', '20191108203458593', '80335993553d9e2e2ce64ac58398d58ad0a5709c1573215600107', '30', null);
INSERT INTO `sampling_media_order` VALUES ('580', '0', '2019-11-08 20:39:43', null, '1', null, '1', '20191108203943460', '108155473e45e1d89af341b39873ce6c39ff89611573216657609', '25', null);
INSERT INTO `sampling_media_order` VALUES ('581', '0', '2019-11-08 20:44:12', null, '1', null, '1', '20191108204412963', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '64', null);
INSERT INTO `sampling_media_order` VALUES ('582', '0', '2019-11-08 20:44:29', null, '1', null, '1', '20191108204429647', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '64', null);
INSERT INTO `sampling_media_order` VALUES ('583', '0', '2019-11-08 20:46:33', null, '1', null, '1', '20191108204633903', '2938085959ca3fa3bb044e6d9f52d80f10ff6ff61573215539314', '16', null);
INSERT INTO `sampling_media_order` VALUES ('584', '0', '2019-11-08 20:48:21', null, '1', null, '1', '20191108204821567', '80335993553d9e2e2ce64ac58398d58ad0a5709c1573215600107', '63', null);
INSERT INTO `sampling_media_order` VALUES ('585', '0', '2019-11-08 20:50:50', null, '1', null, '1', '20191108205050528', '80335993553d9e2e2ce64ac58398d58ad0a5709c1573215600107', '56', null);
INSERT INTO `sampling_media_order` VALUES ('586', '0', '2019-11-08 20:51:56', null, '1', null, '1', '20191108205156297', '80335993553d9e2e2ce64ac58398d58ad0a5709c1573215600107', '19', null);
INSERT INTO `sampling_media_order` VALUES ('587', '0', '2019-11-08 21:06:32', null, '1', null, '1', '20191108210632180', '19198228f30ed632e4bf421abcb5ea2261528fae1573215625090', '67', null);
INSERT INTO `sampling_media_order` VALUES ('588', '0', '2019-11-08 21:06:39', null, '1', null, '1', '20191108210639533', '19198228f30ed632e4bf421abcb5ea2261528fae1573215625090', '57', null);
INSERT INTO `sampling_media_order` VALUES ('589', '0', '2019-11-08 21:06:53', null, '1', null, '1', '20191108210653483', '247876990e5fa376f2c04359893b98c7af172e931573218403079', '36', null);
INSERT INTO `sampling_media_order` VALUES ('590', '0', '2019-11-08 21:18:19', null, '1', null, '1', '20191108211819400', '83189897037f9f8ee10f490ca7182c3602a0be391573132956982', '14', null);
INSERT INTO `sampling_media_order` VALUES ('591', '0', '2019-11-08 21:18:39', null, '1', null, '1', '20191108211839366', '83189897037f9f8ee10f490ca7182c3602a0be391573132956982', '24', null);
INSERT INTO `sampling_media_order` VALUES ('592', '0', '2019-11-08 21:18:50', null, '1', null, '1', '20191108211850259', '83189897037f9f8ee10f490ca7182c3602a0be391573132956982', '12', null);
INSERT INTO `sampling_media_order` VALUES ('593', '0', '2019-11-08 21:19:01', null, '1', null, '1', '20191108211901861', '83189897037f9f8ee10f490ca7182c3602a0be391573132956982', '64', null);
INSERT INTO `sampling_media_order` VALUES ('594', '0', '2019-11-08 21:19:08', null, '1', null, '1', '20191108211908991', '83189897037f9f8ee10f490ca7182c3602a0be391573132956982', '47', null);
INSERT INTO `sampling_media_order` VALUES ('595', '0', '2019-11-08 21:19:28', null, '1', null, '1', '20191108211928973', '7942132624828c2275504a46bf4e82da89398dfd1573216209676', '12', null);
INSERT INTO `sampling_media_order` VALUES ('596', '0', '2019-11-08 21:19:37', null, '1', null, '1', '20191108211937838', '7942132624828c2275504a46bf4e82da89398dfd1573216209676', '51', null);
INSERT INTO `sampling_media_order` VALUES ('597', '0', '2019-11-08 21:20:00', null, '1', null, '1', '20191108212000504', '7827389670086163905a4bcaa28e71bcac6636161573216265029', '47', null);
INSERT INTO `sampling_media_order` VALUES ('598', '0', '2019-11-08 21:28:08', null, '1', null, '1', '20191108212808833', '85044879a7d39482d633435f949baf91f5c554011573050984935', '46', null);
INSERT INTO `sampling_media_order` VALUES ('599', '0', '2019-11-08 21:28:22', null, '1', null, '1', '20191108212822211', '85044879a7d39482d633435f949baf91f5c554011573050984935', '56', null);
INSERT INTO `sampling_media_order` VALUES ('600', '0', '2019-11-08 21:46:48', null, '1', null, '1', '20191108214648407', '8356044963559580d4a24eec8eef247e298bf3b21573216097275', '37', null);
INSERT INTO `sampling_media_order` VALUES ('601', '0', '2019-11-08 22:01:33', null, '1', null, '1', '20191108220133521', '73000226accd1b58a4d848b39cee9d8a1afbffba1573221184813', '37', null);
INSERT INTO `sampling_media_order` VALUES ('602', '0', '2019-11-08 22:03:04', null, '1', null, '1', '20191108220304253', '20409667ec93b8d7e3b44c4eb50b7163c145baa21573221597250', '16', null);
INSERT INTO `sampling_media_order` VALUES ('603', '0', '2019-11-08 22:17:40', null, '1', null, '1', '20191108221740571', '107042090c8172c0e50747069ea725f06265390e1573222654656', '28', null);
INSERT INTO `sampling_media_order` VALUES ('604', '0', '2019-11-08 22:17:48', null, '1', null, '1', '20191108221748967', '107042090c8172c0e50747069ea725f06265390e1573222654656', '22', null);
INSERT INTO `sampling_media_order` VALUES ('605', '0', '2019-11-08 22:17:58', null, '1', null, '1', '20191108221758169', '107042090c8172c0e50747069ea725f06265390e1573222654656', '22', null);
INSERT INTO `sampling_media_order` VALUES ('606', '0', '2019-11-08 22:20:32', null, '1', null, '1', '20191108222032376', '18761938747d2f5b0d3e440690b73686cb0e880b1573222826570', '71', null);
INSERT INTO `sampling_media_order` VALUES ('607', '0', '2019-11-08 22:20:43', null, '1', null, '1', '20191108222043301', '18761938747d2f5b0d3e440690b73686cb0e880b1573222826570', '52', null);
INSERT INTO `sampling_media_order` VALUES ('608', '0', '2019-11-08 22:22:45', null, '1', null, '1', '20191108222245515', '107042090c8172c0e50747069ea725f06265390e1573222654656', '49', null);
INSERT INTO `sampling_media_order` VALUES ('609', '0', '2019-11-08 22:22:56', null, '1', null, '1', '20191108222256640', '107042090c8172c0e50747069ea725f06265390e1573222654656', '52', null);
INSERT INTO `sampling_media_order` VALUES ('610', '0', '2019-11-08 22:44:48', null, '1', null, '1', '20191108224448740', '46839722bb51d988061d46ed8fbad9f828876d181573215639555', '69', null);
INSERT INTO `sampling_media_order` VALUES ('611', '0', '2019-11-08 23:00:27', null, '1', null, '1', '20191108230027601', '57531347d7332702b0984b628355b49c695a2b471573225204972', '47', null);
INSERT INTO `sampling_media_order` VALUES ('612', '0', '2019-11-08 23:00:33', null, '1', null, '1', '20191108230033654', '57531347d7332702b0984b628355b49c695a2b471573225204972', '70', null);
INSERT INTO `sampling_media_order` VALUES ('613', '0', '2019-11-08 23:00:44', null, '1', null, '1', '20191108230044231', '57531347d7332702b0984b628355b49c695a2b471573225204972', '70', null);
INSERT INTO `sampling_media_order` VALUES ('614', '0', '2019-11-08 23:12:50', null, '1', null, '1', '20191108231250311', '988044307c42665797844666844db33d61fb96531573225957577', '34', null);
INSERT INTO `sampling_media_order` VALUES ('615', '0', '2019-11-08 23:13:06', null, '1', null, '1', '20191108231306839', '988044307c42665797844666844db33d61fb96531573225957577', '34', null);
INSERT INTO `sampling_media_order` VALUES ('616', '0', '2019-11-08 23:23:47', null, '1', null, '1', '20191108232347807', '43809400504d51244a814f62aaa429b40d9470161573226519690', '52', null);
INSERT INTO `sampling_media_order` VALUES ('617', '0', '2019-11-08 23:24:57', null, '1', null, '1', '20191108232457583', '568987704d3a840d193948089265d5e710c3a2661573098319431', '62', null);
INSERT INTO `sampling_media_order` VALUES ('618', '0', '2019-11-08 23:33:01', null, '1', null, '1', '20191108233301402', '6943668934e4d06abba5490496c26dfab6eefb161573227163676', '67', null);
INSERT INTO `sampling_media_order` VALUES ('619', '0', '2019-11-09 00:32:36', null, '1', null, '1', '20191109003236589', '107042090c8172c0e50747069ea725f06265390e1573222654656', '42', null);
INSERT INTO `sampling_media_order` VALUES ('620', '0', '2019-11-09 00:32:59', null, '1', null, '1', '20191109003259518', '107042090c8172c0e50747069ea725f06265390e1573222654656', '41', null);
INSERT INTO `sampling_media_order` VALUES ('621', '0', '2019-11-09 01:02:25', null, '1', null, '1', '20191109010225633', '21956864b58f56e26d6746a79781bae35739d0801573232341109', '41', null);
INSERT INTO `sampling_media_order` VALUES ('622', '0', '2019-11-09 01:03:19', null, '1', null, '1', '20191109010319142', '21956864b58f56e26d6746a79781bae35739d0801573232341109', '47', null);
INSERT INTO `sampling_media_order` VALUES ('623', '0', '2019-11-09 03:22:38', null, '1', null, '1', '20191109032238873', '262712287d8a8bead2f44c7195edd76b59464bd51573156377065', '34', null);
INSERT INTO `sampling_media_order` VALUES ('624', '0', '2019-11-09 03:29:44', null, '1', null, '1', '20191109032944393', '262712287d8a8bead2f44c7195edd76b59464bd51573156377065', '29', null);
INSERT INTO `sampling_media_order` VALUES ('625', '0', '2019-11-09 03:30:27', null, '1', null, '1', '20191109033027115', '262712287d8a8bead2f44c7195edd76b59464bd51573156377065', '40', null);
INSERT INTO `sampling_media_order` VALUES ('626', '0', '2019-11-09 03:30:38', null, '1', null, '1', '20191109033038333', '262712287d8a8bead2f44c7195edd76b59464bd51573156377065', '54', null);
INSERT INTO `sampling_media_order` VALUES ('627', '0', '2019-11-09 03:30:47', null, '1', null, '1', '20191109033047962', '262712287d8a8bead2f44c7195edd76b59464bd51573156377065', '64', null);
INSERT INTO `sampling_media_order` VALUES ('628', '0', '2019-11-09 03:31:40', null, '1', null, '1', '20191109033140350', '823411477861474dff184bba9b416576c820b2ce1573156596130', '16', null);
INSERT INTO `sampling_media_order` VALUES ('629', '0', '2019-11-09 03:32:22', null, '1', null, '1', '20191109033222943', '262712287d8a8bead2f44c7195edd76b59464bd51573156377065', '62', null);
INSERT INTO `sampling_media_order` VALUES ('630', '0', '2019-11-09 03:32:35', null, '1', null, '1', '20191109033235880', '262712287d8a8bead2f44c7195edd76b59464bd51573156377065', '62', null);
INSERT INTO `sampling_media_order` VALUES ('631', '0', '2019-11-09 03:33:38', null, '1', null, '1', '20191109033338530', '262712287d8a8bead2f44c7195edd76b59464bd51573156377065', '58', null);
INSERT INTO `sampling_media_order` VALUES ('632', '0', '2019-11-09 03:33:47', null, '1', null, '1', '20191109033347848', '262712287d8a8bead2f44c7195edd76b59464bd51573156377065', '58', null);
INSERT INTO `sampling_media_order` VALUES ('633', '0', '2019-11-09 03:33:56', null, '1', null, '1', '20191109033356602', '262712287d8a8bead2f44c7195edd76b59464bd51573156377065', '64', null);
INSERT INTO `sampling_media_order` VALUES ('634', '0', '2019-11-09 03:34:16', null, '1', null, '1', '20191109033416422', '262712287d8a8bead2f44c7195edd76b59464bd51573156377065', '31', null);
INSERT INTO `sampling_media_order` VALUES ('635', '0', '2019-11-09 05:53:18', null, '1', null, '1', '20191109055318714', '1496738914f70feb140446a998ec2166a12b59041573249968170', '14', null);
INSERT INTO `sampling_media_order` VALUES ('636', '0', '2019-11-09 07:47:04', null, '1', null, '1', '20191109074704401', '5710609338286147b63b4e8480fc8caa2e3591b31573256664343', '46', null);
INSERT INTO `sampling_media_order` VALUES ('637', '0', '2019-11-09 08:12:17', null, '1', null, '1', '20191109081217510', '56703255dbc1a0f00a9a4c4f88cc1508e8faad6b1573258304499', '64', null);
INSERT INTO `sampling_media_order` VALUES ('638', '0', '2019-11-09 08:39:02', null, '1', null, '1', '20191109083902579', '45492768c7c231b12d324fadbf00a9299766a6251573259925917', '51', null);
INSERT INTO `sampling_media_order` VALUES ('639', '0', '2019-11-09 09:41:07', null, '1', null, '1', '20191109094107396', '5930998916eb943006674762be0030dc4b9e8a461573263265939', '67', null);
INSERT INTO `sampling_media_order` VALUES ('640', '0', '2019-11-09 09:41:25', null, '1', null, '1', '20191109094125261', '5930998916eb943006674762be0030dc4b9e8a461573263265939', '12', null);
INSERT INTO `sampling_media_order` VALUES ('641', '0', '2019-11-09 10:36:31', null, '1', null, '1', '20191109103631312', '262712287d8a8bead2f44c7195edd76b59464bd51573156377065', '54', null);
INSERT INTO `sampling_media_order` VALUES ('642', '0', '2019-11-09 10:41:35', null, '1', null, '1', '20191109104135317', '262712287d8a8bead2f44c7195edd76b59464bd51573156377065', '16', null);
INSERT INTO `sampling_media_order` VALUES ('643', '0', '2019-11-09 10:42:14', null, '1', null, '1', '20191109104214279', '262712287d8a8bead2f44c7195edd76b59464bd51573156377065', '64', null);
INSERT INTO `sampling_media_order` VALUES ('644', '0', '2019-11-09 10:42:23', null, '1', null, '1', '20191109104223109', '262712287d8a8bead2f44c7195edd76b59464bd51573156377065', '64', null);
INSERT INTO `sampling_media_order` VALUES ('645', '0', '2019-11-09 10:54:27', null, '1', null, '1', '20191109105427775', '988926924ca7c151251344d5b34783428b1cddb61573268037738', '55', null);
INSERT INTO `sampling_media_order` VALUES ('646', '0', '2019-11-09 10:54:35', null, '1', null, '1', '20191109105435210', '988926924ca7c151251344d5b34783428b1cddb61573268037738', '54', null);
INSERT INTO `sampling_media_order` VALUES ('647', '0', '2019-11-09 10:54:48', null, '1', null, '1', '20191109105448618', '988926924ca7c151251344d5b34783428b1cddb61573268037738', '54', null);
INSERT INTO `sampling_media_order` VALUES ('648', '0', '2019-11-09 14:34:14', null, '1', null, '1', '20191109143414698', '620277289b21b91764614cd29e88e02240fa3fcb1573280596602', '51', null);
INSERT INTO `sampling_media_order` VALUES ('649', '0', '2019-11-09 14:34:27', null, '1', null, '1', '20191109143427597', '620277289b21b91764614cd29e88e02240fa3fcb1573280596602', '14', null);
INSERT INTO `sampling_media_order` VALUES ('650', '0', '2019-11-09 14:34:37', null, '1', null, '1', '20191109143437997', '620277289b21b91764614cd29e88e02240fa3fcb1573280596602', '14', null);
INSERT INTO `sampling_media_order` VALUES ('651', '0', '2019-11-09 14:34:45', null, '1', null, '1', '20191109143445630', '620277289b21b91764614cd29e88e02240fa3fcb1573280596602', '38', null);
INSERT INTO `sampling_media_order` VALUES ('652', '0', '2019-11-09 16:12:14', null, '1', null, '1', '20191109161214580', '92529770ab9b9730d7e0477ebe4fb374637c70ec1573285986809', '46', null);
INSERT INTO `sampling_media_order` VALUES ('653', '0', '2019-11-09 16:20:01', null, '1', null, '1', '20191109162001859', '50202504c624d54726a04c25a56372740d6f53fc1573287589560', '74', null);
INSERT INTO `sampling_media_order` VALUES ('654', '0', '2019-11-09 16:20:52', null, '1', null, '1', '20191109162052395', '167928267505c9709fc74bc2ac041dc6ed0254d61573287433119', '14', null);
INSERT INTO `sampling_media_order` VALUES ('655', '0', '2019-11-09 16:21:47', null, '1', null, '1', '20191109162147222', '167928267505c9709fc74bc2ac041dc6ed0254d61573287433119', '74', null);
INSERT INTO `sampling_media_order` VALUES ('656', '0', '2019-11-09 16:22:56', null, '1', null, '1', '20191109162256853', '167928267505c9709fc74bc2ac041dc6ed0254d61573287433119', '19', null);
INSERT INTO `sampling_media_order` VALUES ('657', '0', '2019-11-09 16:25:41', null, '1', null, '1', '20191109162541287', '167928267505c9709fc74bc2ac041dc6ed0254d61573287433119', '70', null);
INSERT INTO `sampling_media_order` VALUES ('658', '0', '2019-11-09 16:26:57', null, '1', null, '1', '20191109162657987', '50202504c624d54726a04c25a56372740d6f53fc1573287589560', '74', null);
INSERT INTO `sampling_media_order` VALUES ('659', '0', '2019-11-09 16:39:16', null, '1', null, '1', '20191109163916890', '1604383479af31b2f7814acebc4b8801410e5cfe1573288613619', '57', null);
INSERT INTO `sampling_media_order` VALUES ('660', '0', '2019-11-09 16:40:03', null, '1', null, '1', '20191109164003680', '89174248178e89b9e91d49378d360449de7642821572985035878', '68', null);
INSERT INTO `sampling_media_order` VALUES ('661', '0', '2019-11-09 16:40:28', null, '1', null, '1', '20191109164028181', '1604383479af31b2f7814acebc4b8801410e5cfe1573288613619', '32', null);
INSERT INTO `sampling_media_order` VALUES ('662', '0', '2019-11-09 16:41:25', null, '1', null, '1', '20191109164125117', '108155473e45e1d89af341b39873ce6c39ff89611573216657609', '67', null);
INSERT INTO `sampling_media_order` VALUES ('663', '0', '2019-11-09 17:04:09', null, '1', null, '1', '20191109170409513', '20409667ec93b8d7e3b44c4eb50b7163c145baa21573221597250', '42', null);
INSERT INTO `sampling_media_order` VALUES ('664', '0', '2019-11-09 17:11:01', null, '1', null, '1', '20191109171101728', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '52', null);
INSERT INTO `sampling_media_order` VALUES ('665', '0', '2019-11-09 17:12:08', null, '1', null, '1', '20191109171208963', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '12', null);
INSERT INTO `sampling_media_order` VALUES ('666', '0', '2019-11-09 17:14:53', null, '1', null, '1', '20191109171453829', '66008527a0818eb26160477ea9515b691475f87e1573290883384', '38', null);
INSERT INTO `sampling_media_order` VALUES ('667', '0', '2019-11-09 17:26:32', null, '1', null, '1', '20191109172632572', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '19', null);
INSERT INTO `sampling_media_order` VALUES ('668', '0', '2019-11-09 19:02:33', null, '1', null, '1', '20191109190233832', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '66', null);
INSERT INTO `sampling_media_order` VALUES ('669', '0', '2019-11-09 19:33:50', null, '1', null, '1', '20191109193350504', '40525675eec22494b32144658b7cd1c066130bfc1573252361950', '58', null);
INSERT INTO `sampling_media_order` VALUES ('670', '0', '2019-11-09 19:34:02', null, '1', null, '1', '20191109193402790', '40525675eec22494b32144658b7cd1c066130bfc1573252361950', '66', null);
INSERT INTO `sampling_media_order` VALUES ('671', '0', '2019-11-09 19:37:02', null, '1', null, '1', '20191109193702486', '40525675eec22494b32144658b7cd1c066130bfc1573252361950', '63', null);
INSERT INTO `sampling_media_order` VALUES ('672', '0', '2019-11-09 19:38:04', null, '1', null, '1', '20191109193804399', '57221083580f2f4366d547f3a1b160573ec089c71573299478947', '64', null);
INSERT INTO `sampling_media_order` VALUES ('673', '0', '2019-11-09 21:21:55', null, '1', null, '1', '20191109212155306', '63829464a6b38c719d9f4c58b99e23a5ad3481ca1573305248973', '70', null);
INSERT INTO `sampling_media_order` VALUES ('674', '0', '2019-11-09 21:30:00', null, '1', null, '1', '20191109213000772', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '59', null);
INSERT INTO `sampling_media_order` VALUES ('675', '0', '2019-11-09 21:32:22', null, '1', null, '1', '20191109213222237', '40525675eec22494b32144658b7cd1c066130bfc1573252361950', '52', null);
INSERT INTO `sampling_media_order` VALUES ('676', '0', '2019-11-09 21:44:20', null, '1', null, '1', '20191109214420577', '40525675eec22494b32144658b7cd1c066130bfc1573252361950', '51', null);
INSERT INTO `sampling_media_order` VALUES ('677', '0', '2019-11-09 21:45:01', null, '1', null, '1', '20191109214501864', '57221083580f2f4366d547f3a1b160573ec089c71573299478947', '43', null);
INSERT INTO `sampling_media_order` VALUES ('678', '0', '2019-11-09 22:15:21', null, '1', null, '1', '20191109221521455', '985067073df7ceec8efa447bbe2713c196f38adf1573076239149', '54', null);
INSERT INTO `sampling_media_order` VALUES ('679', '0', '2019-11-09 23:20:15', null, '1', null, '1', '20191109232015883', '2938085959ca3fa3bb044e6d9f52d80f10ff6ff61573215539314', '27', null);
INSERT INTO `sampling_media_order` VALUES ('680', '0', '2019-11-09 23:22:36', null, '1', null, '1', '20191109232236929', '2938085959ca3fa3bb044e6d9f52d80f10ff6ff61573215539314', '12', null);
INSERT INTO `sampling_media_order` VALUES ('681', '0', '2019-11-09 23:23:08', null, '1', null, '1', '20191109232308957', '80335993553d9e2e2ce64ac58398d58ad0a5709c1573215600107', '38', null);
INSERT INTO `sampling_media_order` VALUES ('682', '0', '2019-11-09 23:24:24', null, '1', null, '1', '20191109232424581', '80335993553d9e2e2ce64ac58398d58ad0a5709c1573215600107', '16', null);
INSERT INTO `sampling_media_order` VALUES ('683', '0', '2019-11-09 23:25:39', null, '1', null, '1', '20191109232539817', '80335993553d9e2e2ce64ac58398d58ad0a5709c1573215600107', '23', null);
INSERT INTO `sampling_media_order` VALUES ('684', '0', '2019-11-09 23:36:57', null, '1', null, '1', '20191109233657590', '80335993553d9e2e2ce64ac58398d58ad0a5709c1573215600107', '69', null);
INSERT INTO `sampling_media_order` VALUES ('685', '0', '2019-11-09 23:37:09', null, '1', null, '1', '20191109233709134', '92974717b96feb1283ab4f0990867f7152f2ea771573297564669', '53', null);
INSERT INTO `sampling_media_order` VALUES ('686', '0', '2019-11-09 23:37:31', null, '1', null, '1', '20191109233731716', '92974717b96feb1283ab4f0990867f7152f2ea771573297564669', '41', null);
INSERT INTO `sampling_media_order` VALUES ('687', '0', '2019-11-10 00:59:36', null, '1', null, '1', '20191110005936856', '89174248178e89b9e91d49378d360449de7642821572985035878', '22', null);
INSERT INTO `sampling_media_order` VALUES ('688', '0', '2019-11-10 00:59:51', null, '1', null, '1', '20191110005951402', '89174248178e89b9e91d49378d360449de7642821572985035878', '42', null);
INSERT INTO `sampling_media_order` VALUES ('689', '0', '2019-11-10 01:02:19', null, '1', null, '1', '20191110010219353', '454600496510b423cb3f451fb9b4083bce8cb35c1573275820171', '64', null);
INSERT INTO `sampling_media_order` VALUES ('690', '0', '2019-11-10 01:02:28', null, '1', null, '1', '20191110010228138', '454600496510b423cb3f451fb9b4083bce8cb35c1573275820171', '57', null);
INSERT INTO `sampling_media_order` VALUES ('691', '0', '2019-11-10 01:03:20', null, '1', null, '1', '20191110010320417', '454600496510b423cb3f451fb9b4083bce8cb35c1573275820171', '36', null);
INSERT INTO `sampling_media_order` VALUES ('692', '0', '2019-11-10 01:03:23', null, '1', null, '1', '20191110010323251', '454600496510b423cb3f451fb9b4083bce8cb35c1573275820171', '39', null);
INSERT INTO `sampling_media_order` VALUES ('693', '0', '2019-11-10 01:03:26', null, '1', null, '1', '20191110010326929', '454600496510b423cb3f451fb9b4083bce8cb35c1573275820171', '49', null);
INSERT INTO `sampling_media_order` VALUES ('694', '0', '2019-11-10 01:05:55', null, '1', null, '1', '20191110010555636', '454600496510b423cb3f451fb9b4083bce8cb35c1573275820171', '14', null);
INSERT INTO `sampling_media_order` VALUES ('695', '0', '2019-11-10 01:05:59', null, '1', null, '1', '20191110010559592', '454600496510b423cb3f451fb9b4083bce8cb35c1573275820171', '57', null);
INSERT INTO `sampling_media_order` VALUES ('696', '0', '2019-11-10 01:07:26', null, '1', null, '1', '20191110010726416', '454600496510b423cb3f451fb9b4083bce8cb35c1573275820171', '31', null);
INSERT INTO `sampling_media_order` VALUES ('697', '0', '2019-11-10 01:08:21', null, '1', null, '1', '20191110010821736', '454600496510b423cb3f451fb9b4083bce8cb35c1573275820171', '33', null);
INSERT INTO `sampling_media_order` VALUES ('698', '0', '2019-11-10 01:08:24', null, '1', null, '1', '20191110010824133', '454600496510b423cb3f451fb9b4083bce8cb35c1573275820171', '19', null);
INSERT INTO `sampling_media_order` VALUES ('699', '0', '2019-11-10 01:08:30', null, '1', null, '1', '20191110010830531', '454600496510b423cb3f451fb9b4083bce8cb35c1573275820171', '53', null);
INSERT INTO `sampling_media_order` VALUES ('700', '0', '2019-11-10 03:10:22', null, '1', null, '1', '20191110031022459', '957827838a1cf7fbab634004a22c3f432ef0fca71573323048619', '23', null);
INSERT INTO `sampling_media_order` VALUES ('701', '0', '2019-11-10 03:19:07', null, '1', null, '1', '20191110031907447', '181038863aa495866ca14cb6a4d3ae8bfecfc15c1573327108183', '50', null);
INSERT INTO `sampling_media_order` VALUES ('702', '0', '2019-11-10 03:20:35', null, '1', null, '1', '20191110032035225', '181038863aa495866ca14cb6a4d3ae8bfecfc15c1573327108183', '48', null);
INSERT INTO `sampling_media_order` VALUES ('703', '0', '2019-11-10 03:24:31', null, '1', null, '1', '20191110032431182', '454600496510b423cb3f451fb9b4083bce8cb35c1573275820171', '57', null);
INSERT INTO `sampling_media_order` VALUES ('704', '0', '2019-11-10 03:24:34', null, '1', null, '1', '20191110032434984', '454600496510b423cb3f451fb9b4083bce8cb35c1573275820171', '68', null);
INSERT INTO `sampling_media_order` VALUES ('705', '0', '2019-11-10 03:24:36', null, '1', null, '1', '20191110032436711', '454600496510b423cb3f451fb9b4083bce8cb35c1573275820171', '14', null);
INSERT INTO `sampling_media_order` VALUES ('706', '0', '2019-11-10 03:24:39', null, '1', null, '1', '20191110032439259', '454600496510b423cb3f451fb9b4083bce8cb35c1573275820171', '48', null);
INSERT INTO `sampling_media_order` VALUES ('707', '0', '2019-11-10 03:31:18', null, '1', null, '1', '20191110033118717', '89174248178e89b9e91d49378d360449de7642821572985035878', '43', null);
INSERT INTO `sampling_media_order` VALUES ('708', '0', '2019-11-10 03:32:56', null, '1', null, '1', '20191110033256647', '42464729ae87d9ddb7ae407cb539da2e957e62891573327959610', '29', null);
INSERT INTO `sampling_media_order` VALUES ('709', '0', '2019-11-10 05:21:02', null, '1', null, '1', '20191110052102254', '42464729ae87d9ddb7ae407cb539da2e957e62891573327959610', '14', null);
INSERT INTO `sampling_media_order` VALUES ('710', '0', '2019-11-10 05:25:41', null, '1', null, '1', '20191110052541985', '985067073df7ceec8efa447bbe2713c196f38adf1573076239149', '27', null);
INSERT INTO `sampling_media_order` VALUES ('711', '0', '2019-11-10 05:27:29', null, '1', null, '1', '20191110052729407', '985067073df7ceec8efa447bbe2713c196f38adf1573076239149', '19', null);
INSERT INTO `sampling_media_order` VALUES ('712', '0', '2019-11-10 05:45:20', null, '1', null, '1', '20191110054520594', '19943550a3101d79d62548199dc68091728bccef1573334667465', '57', null);
INSERT INTO `sampling_media_order` VALUES ('713', '0', '2019-11-10 05:48:28', null, '1', null, '1', '20191110054828971', '985067073df7ceec8efa447bbe2713c196f38adf1573076239149', '64', null);
INSERT INTO `sampling_media_order` VALUES ('714', '0', '2019-11-10 05:55:34', null, '1', null, '1', '20191110055534811', '985067073df7ceec8efa447bbe2713c196f38adf1573076239149', '18', null);
INSERT INTO `sampling_media_order` VALUES ('715', '0', '2019-11-10 05:57:05', null, '1', null, '1', '20191110055705585', '568987704d3a840d193948089265d5e710c3a2661573098319431', '16', null);
INSERT INTO `sampling_media_order` VALUES ('716', '0', '2019-11-10 05:58:52', null, '1', null, '1', '20191110055852163', '568987704d3a840d193948089265d5e710c3a2661573098319431', '61', null);
INSERT INTO `sampling_media_order` VALUES ('717', '0', '2019-11-10 06:06:53', null, '1', null, '1', '20191110060653836', '1855432711a26ab8654848e49aa10ca6341f81bf1573046613106', '43', null);
INSERT INTO `sampling_media_order` VALUES ('718', '0', '2019-11-10 06:09:11', null, '1', null, '1', '20191110060911175', '1855432711a26ab8654848e49aa10ca6341f81bf1573046613106', '19', null);
INSERT INTO `sampling_media_order` VALUES ('719', '0', '2019-11-10 06:10:59', null, '1', null, '1', '20191110061059686', '1855432711a26ab8654848e49aa10ca6341f81bf1573046613106', '73', null);
INSERT INTO `sampling_media_order` VALUES ('720', '0', '2019-11-10 06:22:59', null, '1', null, '1', '20191110062259603', '94730136f148a522a19f4d49b59a8b44a243af341573047377896', '23', null);
INSERT INTO `sampling_media_order` VALUES ('721', '0', '2019-11-10 06:25:31', null, '1', null, '1', '20191110062531386', '1855432711a26ab8654848e49aa10ca6341f81bf1573046613106', '74', null);
INSERT INTO `sampling_media_order` VALUES ('722', '0', '2019-11-10 06:35:42', null, '1', null, '1', '20191110063542376', '60007096c142755239094409a4651c91ecc5e3f41573074622914', '43', null);
INSERT INTO `sampling_media_order` VALUES ('723', '0', '2019-11-10 06:37:26', null, '1', null, '1', '20191110063726137', '73000226accd1b58a4d848b39cee9d8a1afbffba1573221184813', '50', null);
INSERT INTO `sampling_media_order` VALUES ('724', '0', '2019-11-10 06:37:51', null, '1', null, '1', '20191110063751312', '73000226accd1b58a4d848b39cee9d8a1afbffba1573221184813', '42', null);
INSERT INTO `sampling_media_order` VALUES ('725', '0', '2019-11-10 06:39:31', null, '1', null, '1', '20191110063931697', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '30', null);
INSERT INTO `sampling_media_order` VALUES ('726', '0', '2019-11-10 06:40:49', null, '1', null, '1', '20191110064049221', '73000226accd1b58a4d848b39cee9d8a1afbffba1573221184813', '66', null);
INSERT INTO `sampling_media_order` VALUES ('727', '0', '2019-11-10 07:24:07', null, '1', null, '1', '20191110072407470', '4954071738225bb9f5f34f63a48315feeea30ffc1573057934553', '32', null);
INSERT INTO `sampling_media_order` VALUES ('728', '0', '2019-11-10 08:46:05', null, '1', null, '1', '20191110084605771', '27917509f063b1ee351e4e12bf1216a92a283ba41573294351579', '35', null);
INSERT INTO `sampling_media_order` VALUES ('729', '0', '2019-11-10 08:46:17', null, '1', null, '1', '20191110084617400', '27917509f063b1ee351e4e12bf1216a92a283ba41573294351579', '58', null);
INSERT INTO `sampling_media_order` VALUES ('730', '0', '2019-11-10 08:46:31', null, '1', null, '1', '20191110084631475', '27917509f063b1ee351e4e12bf1216a92a283ba41573294351579', '46', null);
INSERT INTO `sampling_media_order` VALUES ('731', '0', '2019-11-10 09:51:21', null, '1', null, '1', '20191110095121215', '4954071738225bb9f5f34f63a48315feeea30ffc1573057934553', '58', null);
INSERT INTO `sampling_media_order` VALUES ('732', '0', '2019-11-10 09:58:04', null, '1', null, '1', '20191110095804240', '33518097aafa252e6cc64cecb1d66e1e78db980f1573347122889', '41', null);
INSERT INTO `sampling_media_order` VALUES ('733', '0', '2019-11-10 09:59:15', null, '1', null, '1', '20191110095915233', '4954071738225bb9f5f34f63a48315feeea30ffc1573057934553', '40', null);
INSERT INTO `sampling_media_order` VALUES ('734', '0', '2019-11-10 09:59:40', null, '1', null, '1', '20191110095940964', '4954071738225bb9f5f34f63a48315feeea30ffc1573057934553', '51', null);
INSERT INTO `sampling_media_order` VALUES ('735', '0', '2019-11-10 10:02:14', null, '1', null, '1', '20191110100214899', '33518097aafa252e6cc64cecb1d66e1e78db980f1573347122889', '21', null);
INSERT INTO `sampling_media_order` VALUES ('736', '0', '2019-11-10 10:04:23', null, '1', null, '1', '20191110100423553', '33518097aafa252e6cc64cecb1d66e1e78db980f1573347122889', '42', null);
INSERT INTO `sampling_media_order` VALUES ('737', '0', '2019-11-10 10:04:48', null, '1', null, '1', '20191110100448729', '33518097aafa252e6cc64cecb1d66e1e78db980f1573347122889', '50', null);
INSERT INTO `sampling_media_order` VALUES ('738', '0', '2019-11-10 11:01:53', null, '1', null, '1', '20191110110153429', '285815182bb852d5b3e144c89345196809bb04011573215849537', '34', null);
INSERT INTO `sampling_media_order` VALUES ('739', '0', '2019-11-10 11:02:26', null, '1', null, '1', '20191110110226115', '285815182bb852d5b3e144c89345196809bb04011573215849537', '50', null);
INSERT INTO `sampling_media_order` VALUES ('740', '0', '2019-11-10 11:02:32', null, '1', null, '1', '20191110110232478', '285815182bb852d5b3e144c89345196809bb04011573215849537', '22', null);
INSERT INTO `sampling_media_order` VALUES ('741', '0', '2019-11-10 11:12:38', null, '1', null, '1', '20191110111238851', '40107923c27c82f7b2f840a3956f198ca5697de71573355525360', '16', null);
INSERT INTO `sampling_media_order` VALUES ('742', '0', '2019-11-10 11:15:54', null, '1', null, '1', '20191110111554187', '38287931f68e129c46e543aba1474d7a2ea3f5ad1573355718993', '41', null);
INSERT INTO `sampling_media_order` VALUES ('743', '0', '2019-11-10 11:19:30', null, '1', null, '1', '20191110111930400', '65108108c10bb9a08f604da0900068b0f5b5d47a1573048985907', '16', null);
INSERT INTO `sampling_media_order` VALUES ('744', '0', '2019-11-10 12:51:19', null, '1', null, '1', '20191110125119128', '80532023c307036c9f0640c38c5c25853194d6e01573361449949', '14', null);
INSERT INTO `sampling_media_order` VALUES ('745', '0', '2019-11-10 12:51:36', null, '1', null, '1', '20191110125136865', '80532023c307036c9f0640c38c5c25853194d6e01573361449949', '74', null);
INSERT INTO `sampling_media_order` VALUES ('746', '0', '2019-11-10 13:10:30', null, '1', null, '1', '20191110131030176', '89174248178e89b9e91d49378d360449de7642821572985035878', '43', null);
INSERT INTO `sampling_media_order` VALUES ('747', '0', '2019-11-10 13:10:51', null, '1', null, '1', '20191110131051130', '89174248178e89b9e91d49378d360449de7642821572985035878', '27', null);
INSERT INTO `sampling_media_order` VALUES ('748', '0', '2019-11-10 13:12:26', null, '1', null, '1', '20191110131226125', '70266973cef205e71f35454ab3f674e8c8ba90ed1573362451519', '42', null);
INSERT INTO `sampling_media_order` VALUES ('749', '0', '2019-11-10 13:12:36', null, '1', null, '1', '20191110131236967', '70266973cef205e71f35454ab3f674e8c8ba90ed1573362451519', '64', null);
INSERT INTO `sampling_media_order` VALUES ('750', '0', '2019-11-10 13:13:13', null, '1', null, '1', '20191110131313525', '70266973cef205e71f35454ab3f674e8c8ba90ed1573362451519', '28', null);
INSERT INTO `sampling_media_order` VALUES ('751', '0', '2019-11-10 13:50:20', null, '1', null, '1', '20191110135020363', '622227569a14de1e02d2401896b91e037b02d0f21573215543180', '25', null);
INSERT INTO `sampling_media_order` VALUES ('752', '0', '2019-11-10 15:45:13', null, '1', null, '1', '20191110154513176', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '19', null);
INSERT INTO `sampling_media_order` VALUES ('753', '0', '2019-11-10 16:50:18', null, '1', null, '1', '20191110165018381', '89174248178e89b9e91d49378d360449de7642821572985035878', '42', null);
INSERT INTO `sampling_media_order` VALUES ('754', '0', '2019-11-10 18:21:20', null, '1', null, '1', '20191110182120700', '70266973cef205e71f35454ab3f674e8c8ba90ed1573362451519', '33', null);
INSERT INTO `sampling_media_order` VALUES ('755', '0', '2019-11-10 18:38:59', null, '1', null, '1', '20191110183859464', '89174248178e89b9e91d49378d360449de7642821572985035878', '29', null);
INSERT INTO `sampling_media_order` VALUES ('756', '0', '2019-11-10 18:52:10', null, '1', null, '1', '20191110185210622', '3804091200781fb4c779492385b081d4620d069e1573382994345', '68', null);
INSERT INTO `sampling_media_order` VALUES ('757', '0', '2019-11-10 18:53:26', null, '1', null, '1', '20191110185326217', '96406527795565d0a9064c96b5059ce1cafdb3921573383162359', '52', null);
INSERT INTO `sampling_media_order` VALUES ('758', '0', '2019-11-10 18:53:47', null, '1', null, '1', '20191110185347811', '3804091200781fb4c779492385b081d4620d069e1573382994345', '73', null);
INSERT INTO `sampling_media_order` VALUES ('759', '0', '2019-11-10 18:54:01', null, '1', null, '1', '20191110185401492', '3804091200781fb4c779492385b081d4620d069e1573382994345', '65', null);
INSERT INTO `sampling_media_order` VALUES ('760', '0', '2019-11-10 18:54:15', null, '1', null, '1', '20191110185415885', '3804091200781fb4c779492385b081d4620d069e1573382994345', '16', null);
INSERT INTO `sampling_media_order` VALUES ('761', '0', '2019-11-10 19:10:53', null, '1', null, '1', '20191110191053268', '94730136f148a522a19f4d49b59a8b44a243af341573047377896', '65', null);
INSERT INTO `sampling_media_order` VALUES ('762', '0', '2019-11-10 19:14:42', null, '1', null, '1', '20191110191442370', '96406527795565d0a9064c96b5059ce1cafdb3921573383162359', '40', null);
INSERT INTO `sampling_media_order` VALUES ('763', '0', '2019-11-10 19:16:20', null, '1', null, '1', '20191110191620334', '96406527795565d0a9064c96b5059ce1cafdb3921573383162359', '25', null);
INSERT INTO `sampling_media_order` VALUES ('764', '0', '2019-11-10 19:22:43', null, '1', null, '1', '20191110192243474', '89174248178e89b9e91d49378d360449de7642821572985035878', '50', null);
INSERT INTO `sampling_media_order` VALUES ('765', '0', '2019-11-10 19:51:13', null, '1', null, '1', '20191110195113115', '5000214061b0bdcc0f11472db1e9eb4d727b39391573386600362', '73', null);
INSERT INTO `sampling_media_order` VALUES ('766', '0', '2019-11-10 19:51:54', null, '1', null, '1', '20191110195154364', '5000214061b0bdcc0f11472db1e9eb4d727b39391573386600362', '39', null);
INSERT INTO `sampling_media_order` VALUES ('767', '0', '2019-11-10 19:52:05', null, '1', null, '1', '20191110195205568', '5000214061b0bdcc0f11472db1e9eb4d727b39391573386600362', '50', null);
INSERT INTO `sampling_media_order` VALUES ('768', '0', '2019-11-10 19:52:19', null, '1', null, '1', '20191110195219510', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '74', null);
INSERT INTO `sampling_media_order` VALUES ('769', '0', '2019-11-10 19:52:57', null, '1', null, '1', '20191110195257249', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '38', null);
INSERT INTO `sampling_media_order` VALUES ('770', '0', '2019-11-10 19:55:01', null, '1', null, '1', '20191110195501874', '5000214061b0bdcc0f11472db1e9eb4d727b39391573386600362', '64', null);
INSERT INTO `sampling_media_order` VALUES ('771', '0', '2019-11-10 19:59:49', null, '1', null, '1', '20191110195949923', '285815182bb852d5b3e144c89345196809bb04011573215849537', '65', null);
INSERT INTO `sampling_media_order` VALUES ('772', '0', '2019-11-10 20:23:17', null, '1', null, '1', '20191110202317324', '1855432711a26ab8654848e49aa10ca6341f81bf1573046613106', '20', null);
INSERT INTO `sampling_media_order` VALUES ('773', '0', '2019-11-10 20:23:25', null, '1', null, '1', '20191110202325237', '33518097aafa252e6cc64cecb1d66e1e78db980f1573347122889', '55', null);
INSERT INTO `sampling_media_order` VALUES ('774', '0', '2019-11-10 20:23:52', null, '1', null, '1', '20191110202352357', '33518097aafa252e6cc64cecb1d66e1e78db980f1573347122889', '81', null);
INSERT INTO `sampling_media_order` VALUES ('775', '0', '2019-11-10 20:24:07', null, '1', null, '1', '20191110202407971', '33518097aafa252e6cc64cecb1d66e1e78db980f1573347122889', '36', null);
INSERT INTO `sampling_media_order` VALUES ('776', '0', '2019-11-10 20:24:27', null, '1', null, '1', '20191110202427214', '33518097aafa252e6cc64cecb1d66e1e78db980f1573347122889', '12', null);
INSERT INTO `sampling_media_order` VALUES ('777', '0', '2019-11-10 20:25:03', null, '1', null, '1', '20191110202503874', '33518097aafa252e6cc64cecb1d66e1e78db980f1573347122889', '19', null);
INSERT INTO `sampling_media_order` VALUES ('778', '0', '2019-11-10 20:25:27', null, '1', null, '1', '20191110202527899', '2036668168c30f0a1bef43f0bd8cb09efdec8bbf1573388713416', '55', null);
INSERT INTO `sampling_media_order` VALUES ('779', '0', '2019-11-10 20:25:42', null, '1', null, '1', '20191110202542376', '2036668168c30f0a1bef43f0bd8cb09efdec8bbf1573388713416', '76', null);
INSERT INTO `sampling_media_order` VALUES ('780', '0', '2019-11-10 20:26:23', null, '1', null, '1', '20191110202623261', '2036668168c30f0a1bef43f0bd8cb09efdec8bbf1573388713416', '15', null);
INSERT INTO `sampling_media_order` VALUES ('781', '0', '2019-11-10 21:10:17', null, '1', null, '1', '20191110211017317', '89174248178e89b9e91d49378d360449de7642821572985035878', '74', null);
INSERT INTO `sampling_media_order` VALUES ('782', '0', '2019-11-10 21:28:39', null, '1', null, '1', '20191110212839127', '2938085959ca3fa3bb044e6d9f52d80f10ff6ff61573215539314', '85', null);
INSERT INTO `sampling_media_order` VALUES ('783', '0', '2019-11-10 22:20:14', null, '1', null, '1', '20191110222014162', '70736639f32c8e1366094615b15c888ecfd7e98a1573046952716', '27', null);
INSERT INTO `sampling_media_order` VALUES ('784', '0', '2019-11-10 22:24:36', null, '1', null, '1', '20191110222436360', '70736639f32c8e1366094615b15c888ecfd7e98a1573046952716', '30', null);
INSERT INTO `sampling_media_order` VALUES ('785', '0', '2019-11-10 22:24:51', null, '1', null, '1', '20191110222451226', '70736639f32c8e1366094615b15c888ecfd7e98a1573046952716', '76', null);
INSERT INTO `sampling_media_order` VALUES ('786', '0', '2019-11-10 22:41:16', null, '1', null, '1', '20191110224116653', '73000226accd1b58a4d848b39cee9d8a1afbffba1573221184813', '79', null);
INSERT INTO `sampling_media_order` VALUES ('787', '0', '2019-11-10 22:41:31', null, '1', null, '1', '20191110224131297', '73000226accd1b58a4d848b39cee9d8a1afbffba1573221184813', '79', null);
INSERT INTO `sampling_media_order` VALUES ('788', '0', '2019-11-10 23:08:10', null, '1', null, '1', '20191110230810185', '9616385605623ceed5bd4c1c94cd4ebd139658db1573266502882', '81', null);
INSERT INTO `sampling_media_order` VALUES ('789', '0', '2019-11-11 00:25:58', null, '1', null, '1', '20191111002558478', '85044879a7d39482d633435f949baf91f5c554011573050984935', '20', null);
INSERT INTO `sampling_media_order` VALUES ('790', '0', '2019-11-11 03:35:35', null, '1', null, '1', '20191111033535541', '262712287d8a8bead2f44c7195edd76b59464bd51573156377065', '62', null);
INSERT INTO `sampling_media_order` VALUES ('791', '0', '2019-11-11 03:35:56', null, '1', null, '1', '20191111033556292', '262712287d8a8bead2f44c7195edd76b59464bd51573156377065', '92', null);
INSERT INTO `sampling_media_order` VALUES ('792', '0', '2019-11-11 03:38:21', null, '1', null, '1', '20191111033821837', '262712287d8a8bead2f44c7195edd76b59464bd51573156377065', '35', null);
INSERT INTO `sampling_media_order` VALUES ('793', '0', '2019-11-11 06:55:44', null, '1', null, '1', '20191111065544111', '4954071738225bb9f5f34f63a48315feeea30ffc1573057934553', '70', null);
INSERT INTO `sampling_media_order` VALUES ('794', '0', '2019-11-11 07:06:31', null, '1', null, '1', '20191111070631318', '60007096c142755239094409a4651c91ecc5e3f41573074622914', '70', null);
INSERT INTO `sampling_media_order` VALUES ('795', '0', '2019-11-11 10:26:26', null, '1', null, '1', '20191111102626773', '33518097aafa252e6cc64cecb1d66e1e78db980f1573347122889', '18', null);
INSERT INTO `sampling_media_order` VALUES ('796', '0', '2019-11-11 10:27:32', null, '1', null, '1', '20191111102732110', '33518097aafa252e6cc64cecb1d66e1e78db980f1573347122889', '81', null);
INSERT INTO `sampling_media_order` VALUES ('797', '0', '2019-11-11 10:35:17', null, '1', null, '1', '20191111103517182', '51406469949d4b88b0ba487cb5cfc3b7221f00771573196180907', '52', null);
INSERT INTO `sampling_media_order` VALUES ('798', '0', '2019-11-11 10:39:23', null, '1', null, '1', '20191111103923856', '51406469949d4b88b0ba487cb5cfc3b7221f00771573196180907', '91', null);
INSERT INTO `sampling_media_order` VALUES ('799', '0', '2019-11-11 10:43:20', null, '1', null, '1', '20191111104320377', '51406469949d4b88b0ba487cb5cfc3b7221f00771573196180907', '76', null);
INSERT INTO `sampling_media_order` VALUES ('800', '0', '2019-11-11 12:01:25', null, '1', null, '1', '20191111120125272', '40769122d089a5bc174c4553941f2fbe736b81dd1573442971852', '85', null);
INSERT INTO `sampling_media_order` VALUES ('801', '0', '2019-11-11 12:01:42', null, '1', null, '1', '20191111120142622', '40769122d089a5bc174c4553941f2fbe736b81dd1573442971852', '90', null);
INSERT INTO `sampling_media_order` VALUES ('802', '0', '2019-11-11 12:11:54', null, '1', null, '1', '20191111121154811', '40769122d089a5bc174c4553941f2fbe736b81dd1573442971852', '38', null);
INSERT INTO `sampling_media_order` VALUES ('803', '0', '2019-11-11 17:13:01', null, '1', null, '1', '20191111171301165', '14739099e893600ffaaa43f8af5159baaca9d0a91573201268359', '62', null);
INSERT INTO `sampling_media_order` VALUES ('804', '0', '2019-11-11 17:13:31', null, '1', null, '1', '20191111171331477', '14739099e893600ffaaa43f8af5159baaca9d0a91573201268359', '61', null);
INSERT INTO `sampling_media_order` VALUES ('805', '0', '2019-11-11 17:14:46', null, '1', null, '1', '20191111171446531', '14739099e893600ffaaa43f8af5159baaca9d0a91573201268359', '22', null);
INSERT INTO `sampling_media_order` VALUES ('806', '0', '2019-11-11 17:48:04', null, '1', null, '1', '20191111174804718', '70266973cef205e71f35454ab3f674e8c8ba90ed1573362451519', '16', null);
INSERT INTO `sampling_media_order` VALUES ('807', '0', '2019-11-11 22:04:48', null, '1', null, '1', '20191111220448832', '18761938747d2f5b0d3e440690b73686cb0e880b1573222826570', '41', null);
INSERT INTO `sampling_media_order` VALUES ('808', '0', '2019-11-11 22:12:29', null, '1', null, '1', '20191111221229700', '1855432711a26ab8654848e49aa10ca6341f81bf1573046613106', '94', null);
INSERT INTO `sampling_media_order` VALUES ('809', '0', '2019-11-11 22:34:08', null, '1', null, '1', '20191111223408285', '295232591751e413026742a0b10f62b1786a30ed1573481520448', '94', null);
INSERT INTO `sampling_media_order` VALUES ('810', '0', '2019-11-11 22:53:15', null, '1', null, '1', '20191111225315139', '43810884d5a34515eb69415d8be022cafb4be73d1573483928242', '30', null);
INSERT INTO `sampling_media_order` VALUES ('811', '0', '2019-11-11 23:02:02', null, '1', null, '1', '20191111230202198', '43810884d5a34515eb69415d8be022cafb4be73d1573483928242', '65', null);
INSERT INTO `sampling_media_order` VALUES ('812', '0', '2019-11-11 23:03:58', null, '1', null, '1', '20191111230358485', '16033397fc2b2f2458564cd1bcaf647fb25648a81573484621521', '85', null);
INSERT INTO `sampling_media_order` VALUES ('813', '0', '2019-11-11 23:04:16', null, '1', null, '1', '20191111230416750', '16033397fc2b2f2458564cd1bcaf647fb25648a81573484621521', '40', null);
INSERT INTO `sampling_media_order` VALUES ('814', '0', '2019-11-11 23:04:20', null, '1', null, '1', '20191111230420849', '16033397fc2b2f2458564cd1bcaf647fb25648a81573484621521', '48', null);
INSERT INTO `sampling_media_order` VALUES ('815', '0', '2019-11-12 00:29:39', null, '1', null, '1', '20191112002939736', '89361003da78be21e3c14e288741f6a940c1d1ee1573489763993', '63', null);
INSERT INTO `sampling_media_order` VALUES ('816', '0', '2019-11-12 01:15:16', null, '1', null, '1', '20191112011516737', '85044879a7d39482d633435f949baf91f5c554011573050984935', '90', null);
INSERT INTO `sampling_media_order` VALUES ('817', '0', '2019-11-12 03:02:21', null, '1', null, '1', '20191112030221655', '18761938747d2f5b0d3e440690b73686cb0e880b1573222826570', '68', null);
INSERT INTO `sampling_media_order` VALUES ('818', '0', '2019-11-12 07:51:18', null, '1', null, '1', '20191112075118253', '92974717b96feb1283ab4f0990867f7152f2ea771573297564669', '55', null);
INSERT INTO `sampling_media_order` VALUES ('819', '0', '2019-11-12 10:02:17', null, '1', null, '1', '20191112100217103', '262712287d8a8bead2f44c7195edd76b59464bd51573156377065', '38', null);
INSERT INTO `sampling_media_order` VALUES ('820', '0', '2019-11-12 10:13:24', null, '1', null, '1', '20191112101324457', '262712287d8a8bead2f44c7195edd76b59464bd51573156377065', '94', null);
INSERT INTO `sampling_media_order` VALUES ('821', '0', '2019-11-12 11:13:35', null, '1', null, '1', '20191112111335784', '92529770ab9b9730d7e0477ebe4fb374637c70ec1573285986809', '95', null);
INSERT INTO `sampling_media_order` VALUES ('822', '0', '2019-11-12 11:13:39', null, '1', null, '1', '20191112111339603', '92529770ab9b9730d7e0477ebe4fb374637c70ec1573285986809', '68', null);
INSERT INTO `sampling_media_order` VALUES ('823', '0', '2019-11-12 21:55:59', null, '1', null, '1', '20191112215559638', '297635588a41600e7e9a4f26b31e7ca3bd10d32f1573087653906', '96', null);
INSERT INTO `sampling_media_order` VALUES ('824', '0', '2019-11-13 08:55:19', null, '1', null, '1', '20191113085519127', '73000226accd1b58a4d848b39cee9d8a1afbffba1573221184813', '42', null);
INSERT INTO `sampling_media_order` VALUES ('825', '0', '2019-11-13 13:36:30', null, '1', null, '1', '20191113133630189', '8068147782dc55b446e743e0bf8364d9dedf83861573572992911', '19', null);
INSERT INTO `sampling_media_order` VALUES ('826', '0', '2019-11-13 13:38:24', null, '1', null, '1', '20191113133824179', '8068147782dc55b446e743e0bf8364d9dedf83861573572992911', '105', null);
INSERT INTO `sampling_media_order` VALUES ('827', '0', '2019-11-13 13:43:31', null, '1', null, '1', '20191113134331778', '8068147782dc55b446e743e0bf8364d9dedf83861573572992911', '79', null);
INSERT INTO `sampling_media_order` VALUES ('828', '0', '2019-11-13 18:34:21', null, '1', null, '1', '20191113183421877', '53051375bdecfb1d0f8043d8bf03a559e89b6c861573641248682', '88', null);
INSERT INTO `sampling_media_order` VALUES ('829', '0', '2019-11-13 23:47:55', null, '1', null, '1', '20191113234755467', '18761938747d2f5b0d3e440690b73686cb0e880b1573222826570', '94', null);
INSERT INTO `sampling_media_order` VALUES ('830', '0', '2019-11-13 23:48:03', null, '1', null, '1', '20191113234803275', '18761938747d2f5b0d3e440690b73686cb0e880b1573222826570', '94', null);
INSERT INTO `sampling_media_order` VALUES ('831', '0', '2019-11-13 23:48:33', null, '1', null, '1', '20191113234833586', '18761938747d2f5b0d3e440690b73686cb0e880b1573222826570', '52', null);
INSERT INTO `sampling_media_order` VALUES ('832', '0', '2019-11-14 02:15:12', null, '1', null, '1', '20191114021512516', '108155473e45e1d89af341b39873ce6c39ff89611573216657609', '91', null);
INSERT INTO `sampling_media_order` VALUES ('833', '0', '2019-11-14 02:15:34', null, '1', null, '1', '20191114021534219', '108155473e45e1d89af341b39873ce6c39ff89611573216657609', '67', null);
INSERT INTO `sampling_media_order` VALUES ('834', '0', '2019-11-14 02:16:19', null, '1', null, '1', '20191114021619887', '108155473e45e1d89af341b39873ce6c39ff89611573216657609', '18', null);
INSERT INTO `sampling_media_order` VALUES ('835', '0', '2019-11-14 02:16:33', null, '1', null, '1', '20191114021633315', '108155473e45e1d89af341b39873ce6c39ff89611573216657609', '42', null);
INSERT INTO `sampling_media_order` VALUES ('836', '0', '2019-11-14 02:18:49', null, '1', null, '1', '20191114021849438', '108155473e45e1d89af341b39873ce6c39ff89611573216657609', '102', null);
INSERT INTO `sampling_media_order` VALUES ('837', '0', '2019-11-14 02:19:16', null, '1', null, '1', '20191114021916410', '108155473e45e1d89af341b39873ce6c39ff89611573216657609', '90', null);
INSERT INTO `sampling_media_order` VALUES ('838', '0', '2019-11-14 05:57:56', null, '1', null, '1', '20191114055756254', '85044879a7d39482d633435f949baf91f5c554011573050984935', '30', null);
INSERT INTO `sampling_media_order` VALUES ('839', '0', '2019-11-14 06:33:11', null, '1', null, '1', '20191114063311137', '1855432711a26ab8654848e49aa10ca6341f81bf1573046613106', '97', null);
INSERT INTO `sampling_media_order` VALUES ('840', '0', '2019-11-14 07:56:53', null, '1', null, '1', '20191114075653848', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '93', null);
INSERT INTO `sampling_media_order` VALUES ('841', '0', '2019-11-14 07:58:28', null, '1', null, '1', '20191114075828222', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '57', null);
INSERT INTO `sampling_media_order` VALUES ('842', '0', '2019-11-14 07:59:26', null, '1', null, '1', '20191114075926791', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '57', null);
INSERT INTO `sampling_media_order` VALUES ('843', '0', '2019-11-14 07:59:43', null, '1', null, '1', '20191114075943166', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '86', null);
INSERT INTO `sampling_media_order` VALUES ('844', '0', '2019-11-14 08:01:33', null, '1', null, '1', '20191114080133696', '4494547066a59f5aca2c40c9acc3038cdf954aca1573689679433', '101', null);
INSERT INTO `sampling_media_order` VALUES ('845', '0', '2019-11-14 08:05:49', null, '1', null, '1', '20191114080549226', '4498690384ff560d32ed4968934bba67eb39ec6e1573689919075', '73', null);
INSERT INTO `sampling_media_order` VALUES ('846', '0', '2019-11-14 12:35:50', null, '1', null, '1', '20191114123550153', '35634445d0627f0b9ae0444497aad067a6ddc08b1573706119265', '69', null);
INSERT INTO `sampling_media_order` VALUES ('847', '0', '2019-11-14 12:46:01', null, '1', null, '1', '20191114124601935', '73000226accd1b58a4d848b39cee9d8a1afbffba1573221184813', '50', null);
INSERT INTO `sampling_media_order` VALUES ('848', '0', '2019-11-14 12:47:42', null, '1', null, '1', '20191114124742311', '2938085959ca3fa3bb044e6d9f52d80f10ff6ff61573215539314', '86', null);
INSERT INTO `sampling_media_order` VALUES ('849', '0', '2019-11-14 12:51:44', null, '1', null, '1', '20191114125144120', '2938085959ca3fa3bb044e6d9f52d80f10ff6ff61573215539314', '74', null);
INSERT INTO `sampling_media_order` VALUES ('850', '0', '2019-11-14 13:09:40', null, '1', null, '1', '20191114130940610', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '61', null);
INSERT INTO `sampling_media_order` VALUES ('851', '0', '2019-11-14 13:10:18', null, '1', null, '1', '20191114131018575', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '87', null);
INSERT INTO `sampling_media_order` VALUES ('852', '0', '2019-11-14 13:10:32', null, '1', null, '1', '20191114131032830', '60536076fc8537038b4a494bbe3ae1e09eef488e1572934423730', '89', null);
INSERT INTO `sampling_media_order` VALUES ('853', '0', '2019-11-14 13:18:08', null, '1', null, '1', '20191114131808731', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '65', null);
INSERT INTO `sampling_media_order` VALUES ('854', '0', '2019-11-14 13:18:36', null, '1', null, '1', '20191114131836474', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '65', null);
INSERT INTO `sampling_media_order` VALUES ('855', '0', '2019-11-14 13:20:41', null, '1', null, '1', '20191114132041887', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '15', null);
INSERT INTO `sampling_media_order` VALUES ('856', '0', '2019-11-14 13:25:11', null, '1', null, '1', '20191114132511106', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '16', null);
INSERT INTO `sampling_media_order` VALUES ('857', '0', '2019-11-14 13:27:43', null, '1', null, '1', '20191114132743704', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '104', null);
INSERT INTO `sampling_media_order` VALUES ('858', '0', '2019-11-14 13:33:59', null, '1', null, '1', '20191114133359851', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '57', null);
INSERT INTO `sampling_media_order` VALUES ('859', '0', '2019-11-14 13:57:40', null, '1', null, '1', '20191114135740993', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '96', null);
INSERT INTO `sampling_media_order` VALUES ('860', '0', '2019-11-14 14:01:01', null, '1', null, '1', '20191114140101214', '30849589e382cec4ae694feb8726be4450dcd4e91573711153431', '94', null);
INSERT INTO `sampling_media_order` VALUES ('861', '0', '2019-11-14 14:04:58', null, '1', null, '1', '20191114140458975', '822769512737f6e506c14dd49e8cab0d309d0b6b1573706434730', '102', null);
INSERT INTO `sampling_media_order` VALUES ('862', '0', '2019-11-14 15:04:57', null, '1', null, '1', '20191114150457360', '822769512737f6e506c14dd49e8cab0d309d0b6b1573706434730', '17', null);
INSERT INTO `sampling_media_order` VALUES ('863', '0', '2019-11-14 15:09:59', null, '1', null, '1', '20191114150959333', '85044879a7d39482d633435f949baf91f5c554011573050984935', '66', null);
INSERT INTO `sampling_media_order` VALUES ('864', '0', '2019-11-14 16:38:22', null, '1', null, '1', '20191114163822569', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '80', null);
INSERT INTO `sampling_media_order` VALUES ('865', '0', '2019-11-14 17:34:40', null, '1', null, '1', '20191114173440197', '822769512737f6e506c14dd49e8cab0d309d0b6b1573706434730', '76', null);
INSERT INTO `sampling_media_order` VALUES ('866', '0', '2019-11-14 17:35:40', null, '1', null, '1', '20191114173540192', '822769512737f6e506c14dd49e8cab0d309d0b6b1573706434730', '20', null);
INSERT INTO `sampling_media_order` VALUES ('867', '0', '2019-11-15 00:59:51', null, '1', null, '1', '20191115005951323', '165961225a341d1ba78f48f2ab548b9e8ef781071573394550331', '94', null);
INSERT INTO `sampling_media_order` VALUES ('868', '0', '2019-11-15 01:00:10', null, '1', null, '1', '20191115010010558', '165961225a341d1ba78f48f2ab548b9e8ef781071573394550331', '41', null);
INSERT INTO `sampling_media_order` VALUES ('869', '0', '2019-11-15 01:48:55', null, '1', null, '1', '20191115014855245', '1855432711a26ab8654848e49aa10ca6341f81bf1573046613106', '104', null);
INSERT INTO `sampling_media_order` VALUES ('870', '0', '2019-11-15 03:05:06', null, '1', null, '1', '20191115030506760', '262712287d8a8bead2f44c7195edd76b59464bd51573156377065', '16', null);
INSERT INTO `sampling_media_order` VALUES ('871', '0', '2019-11-15 03:07:33', null, '1', null, '1', '20191115030733105', '262712287d8a8bead2f44c7195edd76b59464bd51573156377065', '49', null);
INSERT INTO `sampling_media_order` VALUES ('872', '0', '2019-11-15 05:12:27', null, '1', null, '1', '20191115051227255', '165961225a341d1ba78f48f2ab548b9e8ef781071573394550331', '81', null);
INSERT INTO `sampling_media_order` VALUES ('873', '0', '2019-11-15 05:12:54', null, '1', null, '1', '20191115051254777', '165961225a341d1ba78f48f2ab548b9e8ef781071573394550331', '101', null);
INSERT INTO `sampling_media_order` VALUES ('874', '0', '2019-11-15 07:16:06', null, '1', null, '1', '20191115071606296', '4954071738225bb9f5f34f63a48315feeea30ffc1573057934553', '51', null);
INSERT INTO `sampling_media_order` VALUES ('875', '0', '2019-11-15 07:52:08', null, '1', null, '1', '20191115075208325', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '53', null);
INSERT INTO `sampling_media_order` VALUES ('876', '0', '2019-11-15 12:25:59', null, '1', null, '1', '20191115122559948', '1855432711a26ab8654848e49aa10ca6341f81bf1573046613106', '104', null);
INSERT INTO `sampling_media_order` VALUES ('877', '0', '2019-11-15 12:26:38', null, '1', null, '1', '20191115122638846', '51406469949d4b88b0ba487cb5cfc3b7221f00771573196180907', '37', null);
INSERT INTO `sampling_media_order` VALUES ('878', '0', '2019-11-15 18:04:26', null, '1', null, '1', '20191115180426174', '73000226accd1b58a4d848b39cee9d8a1afbffba1573221184813', '16', null);
INSERT INTO `sampling_media_order` VALUES ('879', '0', '2019-11-15 18:04:52', null, '1', null, '1', '20191115180452842', '73000226accd1b58a4d848b39cee9d8a1afbffba1573221184813', '61', null);
INSERT INTO `sampling_media_order` VALUES ('880', '0', '2019-11-15 19:23:10', null, '1', null, '1', '20191115192310913', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '40', null);
INSERT INTO `sampling_media_order` VALUES ('881', '0', '2019-11-15 19:23:25', null, '1', null, '1', '20191115192325746', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '40', null);
INSERT INTO `sampling_media_order` VALUES ('882', '0', '2019-11-15 19:23:44', null, '1', null, '1', '20191115192344144', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '88', null);
INSERT INTO `sampling_media_order` VALUES ('883', '0', '2019-11-15 20:11:40', null, '1', null, '1', '20191115201140659', '89174248178e89b9e91d49378d360449de7642821572985035878', '40', null);
INSERT INTO `sampling_media_order` VALUES ('884', '0', '2019-11-15 20:12:08', null, '1', null, '1', '20191115201208975', '89174248178e89b9e91d49378d360449de7642821572985035878', '57', null);
INSERT INTO `sampling_media_order` VALUES ('885', '0', '2019-11-15 20:35:30', null, '1', null, '1', '20191115203530618', '42464729ae87d9ddb7ae407cb539da2e957e62891573327959610', '47', null);
INSERT INTO `sampling_media_order` VALUES ('886', '0', '2019-11-15 23:10:45', null, '1', null, '1', '20191115231045958', '985067073df7ceec8efa447bbe2713c196f38adf1573076239149', '68', null);
INSERT INTO `sampling_media_order` VALUES ('887', '0', '2019-11-16 07:55:05', null, '1', null, '1', '20191116075505743', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '85', null);
INSERT INTO `sampling_media_order` VALUES ('888', '0', '2019-11-16 11:07:23', null, '1', null, '1', '20191116110723570', '4462979408e8e0a6720d4f4986f4b243a77e265d1573873382687', '56', null);
INSERT INTO `sampling_media_order` VALUES ('889', '0', '2019-11-16 11:07:47', null, '1', null, '1', '20191116110747203', '4462979408e8e0a6720d4f4986f4b243a77e265d1573873382687', '41', null);
INSERT INTO `sampling_media_order` VALUES ('890', '0', '2019-11-16 12:04:54', null, '1', null, '1', '20191116120454855', '48857781076c63d2260140bbae44455849a3bf931573876971813', '15', null);
INSERT INTO `sampling_media_order` VALUES ('891', '0', '2019-11-16 12:10:28', null, '1', null, '1', '20191116121028249', '48857781076c63d2260140bbae44455849a3bf931573876971813', '74', null);
INSERT INTO `sampling_media_order` VALUES ('892', '0', '2019-11-16 19:46:26', null, '1', null, '1', '20191116194626549', '295232591751e413026742a0b10f62b1786a30ed1573481520448', '97', null);
INSERT INTO `sampling_media_order` VALUES ('893', '0', '2019-11-16 20:17:31', null, '1', null, '1', '20191116201731622', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '90', null);
INSERT INTO `sampling_media_order` VALUES ('894', '0', '2019-11-16 20:18:31', null, '1', null, '1', '20191116201831972', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '57', null);
INSERT INTO `sampling_media_order` VALUES ('895', '0', '2019-11-16 20:36:01', null, '1', null, '1', '20191116203601512', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '37', null);
INSERT INTO `sampling_media_order` VALUES ('896', '0', '2019-11-16 21:19:42', null, '1', null, '1', '20191116211942634', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '99', null);
INSERT INTO `sampling_media_order` VALUES ('897', '0', '2019-11-16 21:21:27', null, '1', null, '1', '20191116212127886', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '105', null);
INSERT INTO `sampling_media_order` VALUES ('898', '0', '2019-11-16 21:28:34', null, '1', null, '1', '20191116212834122', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '51', null);
INSERT INTO `sampling_media_order` VALUES ('899', '0', '2019-11-16 21:31:29', null, '1', null, '1', '20191116213129166', '60536076fc8537038b4a494bbe3ae1e09eef488e1572934423730', '107', null);
INSERT INTO `sampling_media_order` VALUES ('900', '0', '2019-11-16 21:34:13', null, '1', null, '1', '20191116213413170', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '51', null);
INSERT INTO `sampling_media_order` VALUES ('901', '0', '2019-11-16 21:36:43', null, '1', null, '1', '20191116213643668', '18761938747d2f5b0d3e440690b73686cb0e880b1573222826570', '38', null);
INSERT INTO `sampling_media_order` VALUES ('902', '0', '2019-11-16 21:37:36', null, '1', null, '1', '20191116213736532', '18761938747d2f5b0d3e440690b73686cb0e880b1573222826570', '106', null);
INSERT INTO `sampling_media_order` VALUES ('903', '0', '2019-11-16 21:38:03', null, '1', null, '1', '20191116213803282', '18761938747d2f5b0d3e440690b73686cb0e880b1573222826570', '22', null);
INSERT INTO `sampling_media_order` VALUES ('904', '0', '2019-11-16 21:41:10', null, '1', null, '1', '20191116214110125', '89174248178e89b9e91d49378d360449de7642821572985035878', '66', null);
INSERT INTO `sampling_media_order` VALUES ('905', '0', '2019-11-16 21:44:20', null, '1', null, '1', '20191116214420427', '18761938747d2f5b0d3e440690b73686cb0e880b1573222826570', '87', null);
INSERT INTO `sampling_media_order` VALUES ('906', '0', '2019-11-16 21:48:48', null, '1', null, '1', '20191116214848744', '18761938747d2f5b0d3e440690b73686cb0e880b1573222826570', '12', null);
INSERT INTO `sampling_media_order` VALUES ('907', '0', '2019-11-16 21:51:13', null, '1', null, '1', '20191116215113559', '18761938747d2f5b0d3e440690b73686cb0e880b1573222826570', '85', null);
INSERT INTO `sampling_media_order` VALUES ('908', '0', '2019-11-16 21:51:47', null, '1', null, '1', '20191116215147396', '18761938747d2f5b0d3e440690b73686cb0e880b1573222826570', '12', null);
INSERT INTO `sampling_media_order` VALUES ('909', '0', '2019-11-16 21:52:06', null, '1', null, '1', '20191116215206252', '18761938747d2f5b0d3e440690b73686cb0e880b1573222826570', '41', null);
INSERT INTO `sampling_media_order` VALUES ('910', '0', '2019-11-16 21:52:23', null, '1', null, '1', '20191116215223237', '18761938747d2f5b0d3e440690b73686cb0e880b1573222826570', '106', null);
INSERT INTO `sampling_media_order` VALUES ('911', '0', '2019-11-16 21:52:41', null, '1', null, '1', '20191116215241322', '18761938747d2f5b0d3e440690b73686cb0e880b1573222826570', '106', null);
INSERT INTO `sampling_media_order` VALUES ('912', '0', '2019-11-16 21:54:53', null, '1', null, '1', '20191116215453645', '18761938747d2f5b0d3e440690b73686cb0e880b1573222826570', '85', null);
INSERT INTO `sampling_media_order` VALUES ('913', '0', '2019-11-16 21:55:35', null, '1', null, '1', '20191116215535347', '18761938747d2f5b0d3e440690b73686cb0e880b1573222826570', '96', null);
INSERT INTO `sampling_media_order` VALUES ('914', '0', '2019-11-17 00:24:31', null, '1', null, '1', '20191117002431846', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '88', null);
INSERT INTO `sampling_media_order` VALUES ('915', '0', '2019-11-17 03:24:43', null, '1', null, '1', '20191117032443817', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '57', null);
INSERT INTO `sampling_media_order` VALUES ('916', '0', '2019-11-17 20:42:02', null, '1', null, '1', '20191117204202482', '91273354dc35aa99a846483e84fd65496317e8e31573994493667', '64', null);
INSERT INTO `sampling_media_order` VALUES ('917', '0', '2019-11-17 20:48:42', null, '1', null, '1', '20191117204842671', '91273354dc35aa99a846483e84fd65496317e8e31573994493667', '58', null);
INSERT INTO `sampling_media_order` VALUES ('918', '0', '2019-11-17 20:49:04', null, '1', null, '1', '20191117204904359', '91273354dc35aa99a846483e84fd65496317e8e31573994493667', '98', null);
INSERT INTO `sampling_media_order` VALUES ('919', '0', '2019-11-18 07:10:18', null, '1', null, '1', '20191118071018478', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '51', null);
INSERT INTO `sampling_media_order` VALUES ('920', '0', '2019-11-18 07:10:39', null, '1', null, '1', '20191118071039293', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '51', null);
INSERT INTO `sampling_media_order` VALUES ('921', '0', '2019-11-18 17:09:03', null, '1', null, '1', '20191118170903437', '4494547066a59f5aca2c40c9acc3038cdf954aca1573689679433', '90', null);
INSERT INTO `sampling_media_order` VALUES ('922', '0', '2019-11-19 01:46:53', null, '1', null, '1', '20191119014653665', '18761938747d2f5b0d3e440690b73686cb0e880b1573222826570', '66', null);
INSERT INTO `sampling_media_order` VALUES ('923', '0', '2019-11-19 04:08:19', null, '1', null, '1', '20191119040819299', '8951032876266646b1be472faff21cd418414f861574107672716', '83', null);
INSERT INTO `sampling_media_order` VALUES ('924', '0', '2019-11-19 05:47:42', null, '1', null, '1', '20191119054742128', '548158964f300e04ed72419c9fd647b3976dde371574113636392', '105', null);
INSERT INTO `sampling_media_order` VALUES ('925', '0', '2019-11-19 10:32:40', null, '1', null, '1', '20191119103240100', '', '42', null);
INSERT INTO `sampling_media_order` VALUES ('926', '0', '2019-11-19 10:33:17', null, '1', null, '1', '20191119103317549', '', '52', null);
INSERT INTO `sampling_media_order` VALUES ('927', '0', '2019-11-19 20:25:19', null, '1', null, '1', '20191119202519486', '89174248178e89b9e91d49378d360449de7642821572985035878', '33', null);
INSERT INTO `sampling_media_order` VALUES ('928', '0', '2019-11-20 03:10:17', null, '1', null, '1', '20191120031017728', '654215755f21d5822d634c628e34eb716144ea4b1573319235125', '79', null);
INSERT INTO `sampling_media_order` VALUES ('929', '0', '2019-11-20 07:40:10', null, '1', null, '1', '20191120074010851', '911899543e4f9702e6ff4f3ebd11f6fdf1c8c1781573877127292', '60', null);
INSERT INTO `sampling_media_order` VALUES ('930', '0', '2019-11-20 15:43:02', null, '1', null, '1', '20191120154302826', '1537133870fe679fdd124437a5046d238fcceda21574235016311', '80', null);
INSERT INTO `sampling_media_order` VALUES ('931', '0', '2019-11-20 16:59:42', null, '1', null, '1', '20191120165942937', '1537133870fe679fdd124437a5046d238fcceda21574235016311', '63', null);
INSERT INTO `sampling_media_order` VALUES ('932', '0', '2019-11-20 17:00:38', null, '1', null, '1', '20191120170038558', '1537133870fe679fdd124437a5046d238fcceda21574235016311', '63', null);
INSERT INTO `sampling_media_order` VALUES ('933', '0', '2019-11-20 17:01:30', null, '1', null, '1', '20191120170130703', '1537133870fe679fdd124437a5046d238fcceda21574235016311', '51', null);
INSERT INTO `sampling_media_order` VALUES ('934', '0', '2019-11-20 17:03:14', null, '1', null, '1', '20191120170314171', '76676292edaf9ab3ab1b4622bd02493c8ace861c1574240569804', '79', null);
INSERT INTO `sampling_media_order` VALUES ('935', '0', '2019-11-20 17:35:17', null, '1', null, '1', '20191120173517557', '557852109d224fad0512492d9a3df5dd5737a9101574097929356', '19', null);
INSERT INTO `sampling_media_order` VALUES ('936', '0', '2019-11-20 17:35:28', null, '1', null, '1', '20191120173528758', '557852109d224fad0512492d9a3df5dd5737a9101574097929356', '61', null);
INSERT INTO `sampling_media_order` VALUES ('937', '0', '2019-11-20 17:36:14', null, '1', null, '1', '20191120173614337', '557852109d224fad0512492d9a3df5dd5737a9101574097929356', '106', null);
INSERT INTO `sampling_media_order` VALUES ('938', '0', '2019-11-20 17:36:23', null, '1', null, '1', '20191120173623689', '557852109d224fad0512492d9a3df5dd5737a9101574097929356', '85', null);
INSERT INTO `sampling_media_order` VALUES ('939', '0', '2019-11-20 17:37:07', null, '1', null, '1', '20191120173707782', '557852109d224fad0512492d9a3df5dd5737a9101574097929356', '49', null);
INSERT INTO `sampling_media_order` VALUES ('940', '0', '2019-11-20 17:43:16', null, '1', null, '1', '20191120174316501', '557852109d224fad0512492d9a3df5dd5737a9101574097929356', '79', null);
INSERT INTO `sampling_media_order` VALUES ('941', '0', '2019-11-20 18:11:17', null, '1', null, '1', '20191120181117415', '557852109d224fad0512492d9a3df5dd5737a9101574097929356', '104', null);
INSERT INTO `sampling_media_order` VALUES ('942', '0', '2019-11-20 18:12:13', null, '1', null, '1', '20191120181213583', '557852109d224fad0512492d9a3df5dd5737a9101574097929356', '57', null);
INSERT INTO `sampling_media_order` VALUES ('943', '0', '2019-11-20 19:05:24', null, '1', null, '1', '20191120190524334', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '102', null);
INSERT INTO `sampling_media_order` VALUES ('944', '0', '2019-11-20 19:06:00', null, '1', null, '1', '20191120190600956', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '79', null);
INSERT INTO `sampling_media_order` VALUES ('945', '0', '2019-11-20 22:09:48', null, '1', null, '1', '20191120220948530', '1855432711a26ab8654848e49aa10ca6341f81bf1573046613106', '25', null);
INSERT INTO `sampling_media_order` VALUES ('946', '0', '2019-11-20 22:10:14', null, '1', null, '1', '20191120221014711', '1855432711a26ab8654848e49aa10ca6341f81bf1573046613106', '92', null);
INSERT INTO `sampling_media_order` VALUES ('947', '0', '2019-11-20 22:12:27', null, '1', null, '1', '20191120221227592', '297635588a41600e7e9a4f26b31e7ca3bd10d32f1573087653906', '38', null);
INSERT INTO `sampling_media_order` VALUES ('948', '0', '2019-11-20 22:39:23', null, '1', null, '1', '20191120223923500', '92974717b96feb1283ab4f0990867f7152f2ea771573297564669', '79', null);
INSERT INTO `sampling_media_order` VALUES ('949', '0', '2019-11-20 23:07:42', null, '1', null, '1', '20191120230742135', '295232591751e413026742a0b10f62b1786a30ed1573481520448', '35', null);
INSERT INTO `sampling_media_order` VALUES ('950', '0', '2019-11-20 23:08:17', null, '1', null, '1', '20191120230817789', '295232591751e413026742a0b10f62b1786a30ed1573481520448', '35', null);
INSERT INTO `sampling_media_order` VALUES ('951', '0', '2019-11-21 02:46:39', null, '1', null, '1', '20191121024639372', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '55', '2.32');
INSERT INTO `sampling_media_order` VALUES ('952', '0', '2019-11-21 02:51:55', null, '1', null, '1', '20191121025155804', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '45', '2.39');
INSERT INTO `sampling_media_order` VALUES ('953', '0', '2019-11-21 02:52:59', null, '1', null, '1', '20191121025259366', '514841782efa7cf0de1a45d2b4649940db30c7321574274134010', '58', '2.76');
INSERT INTO `sampling_media_order` VALUES ('954', '0', '2019-11-21 03:58:41', null, '1', null, '1', '20191121035841713', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '94', '2.31');
INSERT INTO `sampling_media_order` VALUES ('955', '0', '2019-11-21 03:59:30', null, '1', null, '1', '20191121035930180', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '67', '2.25');
INSERT INTO `sampling_media_order` VALUES ('956', '0', '2019-11-21 04:00:28', null, '1', null, '1', '20191121040028266', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '73', '2.39');
INSERT INTO `sampling_media_order` VALUES ('957', '0', '2019-11-21 04:00:57', null, '1', null, '1', '20191121040057380', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '94', '2.96');
INSERT INTO `sampling_media_order` VALUES ('958', '0', '2019-11-21 04:01:12', null, '1', null, '1', '20191121040112553', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '80', '2.28');
INSERT INTO `sampling_media_order` VALUES ('959', '0', '2019-11-21 04:02:17', null, '1', null, '1', '20191121040217422', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '95', '2.02');
INSERT INTO `sampling_media_order` VALUES ('960', '0', '2019-11-21 04:02:39', null, '1', null, '1', '20191121040239755', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '19', '2.94');
INSERT INTO `sampling_media_order` VALUES ('961', '0', '2019-11-21 04:03:36', null, '1', null, '1', '20191121040336360', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '52', '2.21');
INSERT INTO `sampling_media_order` VALUES ('962', '0', '2019-11-21 04:08:19', null, '1', null, '1', '20191121040819404', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '80', '2.94');
INSERT INTO `sampling_media_order` VALUES ('963', '0', '2019-11-21 04:08:35', null, '1', null, '1', '20191121040835625', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '69', '2.10');
INSERT INTO `sampling_media_order` VALUES ('964', '0', '2019-11-21 04:09:18', null, '1', null, '1', '20191121040918658', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '56', '2.50');
INSERT INTO `sampling_media_order` VALUES ('965', '0', '2019-11-21 04:10:39', null, '1', null, '1', '20191121041039227', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '64', '2.59');
INSERT INTO `sampling_media_order` VALUES ('966', '0', '2019-11-21 04:11:50', null, '1', null, '1', '20191121041150342', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '100', '2.78');
INSERT INTO `sampling_media_order` VALUES ('967', '0', '2019-11-21 04:12:24', null, '1', null, '1', '20191121041224436', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '25', '2.48');
INSERT INTO `sampling_media_order` VALUES ('968', '0', '2019-11-21 04:13:59', null, '1', null, '1', '20191121041359984', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '86', '2.92');
INSERT INTO `sampling_media_order` VALUES ('969', '0', '2019-11-21 05:37:22', null, '1', null, '1', '20191121053722820', '89174248178e89b9e91d49378d360449de7642821572985035878', '39', '2.02');
INSERT INTO `sampling_media_order` VALUES ('970', '0', '2019-11-21 05:39:26', null, '1', null, '1', '20191121053926263', '89174248178e89b9e91d49378d360449de7642821572985035878', '61', '2.35');
INSERT INTO `sampling_media_order` VALUES ('971', '0', '2019-11-21 05:49:30', null, '1', null, '1', '20191121054930345', '60007096c142755239094409a4651c91ecc5e3f41573074622914', '45', '2.72');
INSERT INTO `sampling_media_order` VALUES ('972', '0', '2019-11-21 06:03:19', null, '1', null, '1', '20191121060319575', '60007096c142755239094409a4651c91ecc5e3f41573074622914', '45', '2.70');
INSERT INTO `sampling_media_order` VALUES ('973', '0', '2019-11-21 07:05:16', null, '1', null, '1', '20191121070516994', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '48', '2.46');
INSERT INTO `sampling_media_order` VALUES ('974', '0', '2019-11-21 07:05:58', null, '1', null, '1', '20191121070558809', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '48', '2.70');
INSERT INTO `sampling_media_order` VALUES ('975', '0', '2019-11-21 07:06:33', null, '1', null, '1', '20191121070633707', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '51', '2.81');
INSERT INTO `sampling_media_order` VALUES ('976', '0', '2019-11-21 07:07:35', null, '1', null, '1', '20191121070735485', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '68', '2.89');
INSERT INTO `sampling_media_order` VALUES ('977', '0', '2019-11-21 07:08:03', null, '1', null, '1', '20191121070803786', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '55', '2.66');
INSERT INTO `sampling_media_order` VALUES ('978', '0', '2019-11-21 07:09:00', null, '1', null, '1', '20191121070900335', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '67', '2.48');
INSERT INTO `sampling_media_order` VALUES ('979', '0', '2019-11-21 08:43:57', null, '1', null, '1', '20191121084357363', '', '76', '2.66');
INSERT INTO `sampling_media_order` VALUES ('980', '0', '2019-11-21 11:33:37', null, '1', null, '1', '20191121113337470', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '109', '2.41');
INSERT INTO `sampling_media_order` VALUES ('981', '0', '2019-11-21 13:12:44', null, '1', null, '1', '20191121131244204', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '28', '2.23');
INSERT INTO `sampling_media_order` VALUES ('982', '0', '2019-11-21 13:13:05', null, '1', null, '1', '20191121131305371', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '98', '2.40');
INSERT INTO `sampling_media_order` VALUES ('983', '0', '2019-11-21 13:13:32', null, '1', null, '1', '20191121131332492', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '58', '2.65');
INSERT INTO `sampling_media_order` VALUES ('984', '0', '2019-11-21 13:13:50', null, '1', null, '1', '20191121131350968', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '87', '2.62');
INSERT INTO `sampling_media_order` VALUES ('985', '0', '2019-11-21 14:04:00', null, '1', null, '1', '20191121140400616', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '67', '2.82');
INSERT INTO `sampling_media_order` VALUES ('986', '0', '2019-11-21 14:13:57', null, '1', null, '1', '20191121141357167', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '93', '2.74');
INSERT INTO `sampling_media_order` VALUES ('987', '0', '2019-11-21 16:48:29', null, '1', null, '1', '20191121164829713', '165961225a341d1ba78f48f2ab548b9e8ef781071573394550331', '104', '2.13');
INSERT INTO `sampling_media_order` VALUES ('988', '0', '2019-11-21 17:24:40', null, '1', null, '1', '20191121172440265', '89174248178e89b9e91d49378d360449de7642821572985035878', '37', '2.52');
INSERT INTO `sampling_media_order` VALUES ('989', '0', '2019-11-21 17:24:57', null, '1', null, '1', '20191121172457540', '89174248178e89b9e91d49378d360449de7642821572985035878', '20', '2.93');
INSERT INTO `sampling_media_order` VALUES ('990', '0', '2019-11-21 17:36:19', null, '1', null, '1', '20191121173619384', '178277651a50a4dfb45745b2bf198c445c0bcfbd1574328963401', '74', '2.09');
INSERT INTO `sampling_media_order` VALUES ('991', '0', '2019-11-21 17:36:21', null, '1', null, '1', '20191121173621785', '85566525b16e5afd3b8d432b8ebd3cb2f498fac31574328967530', '38', '2.27');
INSERT INTO `sampling_media_order` VALUES ('992', '0', '2019-11-21 17:36:27', null, '1', null, '1', '20191121173627552', '462890446b39b607347943b38a025ad51d4810321574328861715', '34', '2.24');
INSERT INTO `sampling_media_order` VALUES ('993', '0', '2019-11-21 17:36:43', null, '1', null, '1', '20191121173643630', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '92', '2.42');
INSERT INTO `sampling_media_order` VALUES ('994', '0', '2019-11-21 17:37:06', null, '1', null, '1', '20191121173706868', '36059998035a1d79420e4625aa2df98f58889bc61574328995842', '87', '2.35');
INSERT INTO `sampling_media_order` VALUES ('995', '0', '2019-11-21 17:37:12', null, '1', null, '1', '20191121173712788', '9453945897016e54e5ce4e6ca631e712e8aaf4651574328990491', '59', '2.28');
INSERT INTO `sampling_media_order` VALUES ('996', '0', '2019-11-21 17:37:14', null, '1', null, '1', '20191121173714114', '84305935e5ea08bf99aa45b19ea096136a02f17a1574329017011', '37', '2.66');
INSERT INTO `sampling_media_order` VALUES ('997', '0', '2019-11-21 17:37:17', null, '1', null, '1', '20191121173717326', '23564061272e8314d1974d29a72c6ecc005c00191574328988661', '66', '2.70');
INSERT INTO `sampling_media_order` VALUES ('998', '0', '2019-11-21 17:37:24', null, '1', null, '1', '20191121173724966', '52544426fd8e5d74946a4488915787ec96227a401574328957675', '74', '2.28');
INSERT INTO `sampling_media_order` VALUES ('999', '0', '2019-11-21 17:37:24', null, '1', null, '1', '20191121173724404', '529319031475fc2d800b4e45bebfad0581ecee8a1574329031670', '61', '2.02');
INSERT INTO `sampling_media_order` VALUES ('1000', '0', '2019-11-21 17:37:33', null, '1', null, '1', '20191121173733708', '63918042a581ebecf0a04b42bb247f4c0855ca861574329023393', '96', '2.22');
INSERT INTO `sampling_media_order` VALUES ('1001', '0', '2019-11-21 17:37:36', null, '1', null, '1', '20191121173736865', '85566525b16e5afd3b8d432b8ebd3cb2f498fac31574328967530', '17', '2.16');
INSERT INTO `sampling_media_order` VALUES ('1002', '0', '2019-11-21 17:37:40', null, '1', null, '1', '20191121173740966', '78804311b6ed8f42c28c43e9b9addd085ace08121574329042138', '70', '2.78');
INSERT INTO `sampling_media_order` VALUES ('1003', '0', '2019-11-21 17:37:41', null, '1', null, '1', '20191121173741773', '7993584445f59bef84134834b1192710f00c45031574329047870', '62', '2.67');
INSERT INTO `sampling_media_order` VALUES ('1004', '0', '2019-11-21 17:37:44', null, '1', null, '1', '20191121173744475', '52544426fd8e5d74946a4488915787ec96227a401574328957675', '108', '2.04');
INSERT INTO `sampling_media_order` VALUES ('1005', '0', '2019-11-21 17:37:52', null, '1', null, '1', '20191121173752581', '22307378733d0f5228c24aa0a7782e4865fae5ea1574329059710', '76', '2.06');
INSERT INTO `sampling_media_order` VALUES ('1006', '0', '2019-11-21 17:37:58', null, '1', null, '1', '20191121173758989', '63918042a581ebecf0a04b42bb247f4c0855ca861574329023393', '29', '2.48');
INSERT INTO `sampling_media_order` VALUES ('1007', '0', '2019-11-21 17:37:58', null, '1', null, '1', '20191121173758567', '89799054764cd6df225b4a64baae823a1bbdd7561574329046076', '86', '2.37');
INSERT INTO `sampling_media_order` VALUES ('1008', '0', '2019-11-21 17:38:01', null, '1', null, '1', '20191121173801228', '462890446b39b607347943b38a025ad51d4810321574328861715', '57', '2.26');
INSERT INTO `sampling_media_order` VALUES ('1009', '0', '2019-11-21 17:38:05', null, '1', null, '1', '20191121173805356', '109494854ff90db3962c4520a408706f07f6f01d1574329068086', '55', '2.53');
INSERT INTO `sampling_media_order` VALUES ('1010', '0', '2019-11-21 17:38:07', null, '1', null, '1', '20191121173807144', '21309425cac32bf1c2da4c67b1a4fbf92ad466921574329058259', '24', '2.01');
INSERT INTO `sampling_media_order` VALUES ('1011', '0', '2019-11-21 17:38:20', null, '1', null, '1', '20191121173820683', '8332411243c44e6bd10b45438ca83dbbf95bbe501574329085846', '73', '2.72');
INSERT INTO `sampling_media_order` VALUES ('1012', '0', '2019-11-21 17:38:24', null, '1', null, '1', '20191121173824177', '22307378733d0f5228c24aa0a7782e4865fae5ea1574329059710', '70', '2.71');
INSERT INTO `sampling_media_order` VALUES ('1013', '0', '2019-11-21 17:38:31', null, '1', null, '1', '20191121173831796', '462890446b39b607347943b38a025ad51d4810321574328861715', '108', '2.07');
INSERT INTO `sampling_media_order` VALUES ('1014', '0', '2019-11-21 17:38:42', null, '1', null, '1', '20191121173842850', '23440809f720a50f87d94a0dba3dceeb62a11ec01574329083294', '40', '2.92');
INSERT INTO `sampling_media_order` VALUES ('1015', '0', '2019-11-21 17:38:51', null, '1', null, '1', '20191121173851699', '61737214d37ea16ae19846699f4e34ddc0cb4b4a1574329116262', '20', '2.23');
INSERT INTO `sampling_media_order` VALUES ('1016', '0', '2019-11-21 17:39:09', null, '1', null, '1', '20191121173909193', '22307378733d0f5228c24aa0a7782e4865fae5ea1574329059710', '86', '2.93');
INSERT INTO `sampling_media_order` VALUES ('1017', '0', '2019-11-21 17:39:12', null, '1', null, '1', '20191121173912726', '89799054764cd6df225b4a64baae823a1bbdd7561574329046076', '41', '2.62');
INSERT INTO `sampling_media_order` VALUES ('1018', '0', '2019-11-21 17:39:20', null, '1', null, '1', '20191121173920429', '3951692519def813a33b4029a45012ff662d12ef1574328996808', '51', '2.76');
INSERT INTO `sampling_media_order` VALUES ('1019', '0', '2019-11-21 17:39:21', null, '1', null, '1', '20191121173921507', '61737214d37ea16ae19846699f4e34ddc0cb4b4a1574329116262', '76', '2.96');
INSERT INTO `sampling_media_order` VALUES ('1020', '0', '2019-11-21 17:39:28', null, '1', null, '1', '20191121173928900', '109494854ff90db3962c4520a408706f07f6f01d1574329068086', '55', '2.67');
INSERT INTO `sampling_media_order` VALUES ('1021', '0', '2019-11-21 17:39:35', null, '1', null, '1', '20191121173935837', '23564061272e8314d1974d29a72c6ecc005c00191574328988661', '96', '2.35');
INSERT INTO `sampling_media_order` VALUES ('1022', '0', '2019-11-21 17:39:37', null, '1', null, '1', '20191121173937861', '5213907858611c95aa22405eaff431bf03568e721574329160271', '64', '2.30');
INSERT INTO `sampling_media_order` VALUES ('1023', '0', '2019-11-21 17:39:41', null, '1', null, '1', '20191121173941140', '89799054764cd6df225b4a64baae823a1bbdd7561574329046076', '96', '2.08');
INSERT INTO `sampling_media_order` VALUES ('1024', '0', '2019-11-21 17:39:42', null, '1', null, '1', '20191121173942919', '248849160ba647e27a1f454ba4a4cf406e61f84e1574329136502', '31', '2.65');
INSERT INTO `sampling_media_order` VALUES ('1025', '0', '2019-11-21 17:39:43', null, '1', null, '1', '20191121173943835', '462890446b39b607347943b38a025ad51d4810321574328861715', '95', '2.45');
INSERT INTO `sampling_media_order` VALUES ('1026', '0', '2019-11-21 17:39:49', null, '1', null, '1', '20191121173949325', '3813455029bb67a53fc6479889439b947199bf281574329136897', '107', '2.69');
INSERT INTO `sampling_media_order` VALUES ('1027', '0', '2019-11-21 17:39:59', null, '1', null, '1', '20191121173959415', '5213907858611c95aa22405eaff431bf03568e721574329160271', '76', '2.94');
INSERT INTO `sampling_media_order` VALUES ('1028', '0', '2019-11-21 17:40:04', null, '1', null, '1', '20191121174004290', '89799054764cd6df225b4a64baae823a1bbdd7561574329046076', '65', '2.07');
INSERT INTO `sampling_media_order` VALUES ('1029', '0', '2019-11-21 17:40:08', null, '1', null, '1', '20191121174008294', '85566525b16e5afd3b8d432b8ebd3cb2f498fac31574328967530', '89', '2.91');
INSERT INTO `sampling_media_order` VALUES ('1030', '0', '2019-11-21 17:40:20', null, '1', null, '1', '20191121174020436', '462890446b39b607347943b38a025ad51d4810321574328861715', '87', '2.91');
INSERT INTO `sampling_media_order` VALUES ('1031', '0', '2019-11-21 17:40:22', null, '1', null, '1', '20191121174022423', '23564061272e8314d1974d29a72c6ecc005c00191574328988661', '61', '2.30');
INSERT INTO `sampling_media_order` VALUES ('1032', '0', '2019-11-21 17:40:30', null, '1', null, '1', '20191121174030145', '5213907858611c95aa22405eaff431bf03568e721574329160271', '47', '2.67');
INSERT INTO `sampling_media_order` VALUES ('1033', '0', '2019-11-21 17:40:33', null, '1', null, '1', '20191121174033960', '3813455029bb67a53fc6479889439b947199bf281574329136897', '67', '2.07');
INSERT INTO `sampling_media_order` VALUES ('1034', '0', '2019-11-21 17:40:58', null, '1', null, '1', '20191121174058938', '5213907858611c95aa22405eaff431bf03568e721574329160271', '76', '2.34');
INSERT INTO `sampling_media_order` VALUES ('1035', '0', '2019-11-21 17:41:06', null, '1', null, '1', '20191121174106497', '462890446b39b607347943b38a025ad51d4810321574328861715', '76', '2.65');
INSERT INTO `sampling_media_order` VALUES ('1036', '0', '2019-11-21 17:41:09', null, '1', null, '1', '20191121174109975', '9752940475a729359f604772afbe0699af324ada1574329246245', '94', '2.15');
INSERT INTO `sampling_media_order` VALUES ('1037', '0', '2019-11-21 17:41:27', null, '1', null, '1', '20191121174127449', '89799054764cd6df225b4a64baae823a1bbdd7561574329046076', '52', '2.06');
INSERT INTO `sampling_media_order` VALUES ('1038', '0', '2019-11-21 17:41:29', null, '1', null, '1', '20191121174129230', '5213907858611c95aa22405eaff431bf03568e721574329160271', '103', '2.45');
INSERT INTO `sampling_media_order` VALUES ('1039', '0', '2019-11-21 17:41:37', null, '1', null, '1', '20191121174137992', '9752940475a729359f604772afbe0699af324ada1574329246245', '42', '2.10');
INSERT INTO `sampling_media_order` VALUES ('1040', '0', '2019-11-21 17:41:47', null, '1', null, '1', '20191121174147590', '21309425cac32bf1c2da4c67b1a4fbf92ad466921574329058259', '96', '2.46');
INSERT INTO `sampling_media_order` VALUES ('1041', '0', '2019-11-21 17:41:48', null, '1', null, '1', '20191121174148572', '61737214d37ea16ae19846699f4e34ddc0cb4b4a1574329116262', '57', '2.52');
INSERT INTO `sampling_media_order` VALUES ('1042', '0', '2019-11-21 17:41:49', null, '1', null, '1', '20191121174149688', '248849160ba647e27a1f454ba4a4cf406e61f84e1574329136502', '80', '2.48');
INSERT INTO `sampling_media_order` VALUES ('1043', '0', '2019-11-21 17:41:50', null, '1', null, '1', '20191121174150550', '462890446b39b607347943b38a025ad51d4810321574328861715', '67', '2.27');
INSERT INTO `sampling_media_order` VALUES ('1044', '0', '2019-11-21 17:41:54', null, '1', null, '1', '20191121174154726', '85566525b16e5afd3b8d432b8ebd3cb2f498fac31574328967530', '67', '2.84');
INSERT INTO `sampling_media_order` VALUES ('1045', '0', '2019-11-21 17:42:01', null, '1', null, '1', '20191121174201885', '764399764ff5d448abd749e3ada52eb96de8aaa81574329306142', '57', '2.41');
INSERT INTO `sampling_media_order` VALUES ('1046', '0', '2019-11-21 17:42:19', null, '1', null, '1', '20191121174219744', '5213907858611c95aa22405eaff431bf03568e721574329160271', '96', '2.57');
INSERT INTO `sampling_media_order` VALUES ('1047', '0', '2019-11-21 17:42:37', null, '1', null, '1', '20191121174237328', '61737214d37ea16ae19846699f4e34ddc0cb4b4a1574329116262', '57', '2.50');
INSERT INTO `sampling_media_order` VALUES ('1048', '0', '2019-11-21 17:42:44', null, '1', null, '1', '20191121174244116', '85566525b16e5afd3b8d432b8ebd3cb2f498fac31574328967530', '32', '2.63');
INSERT INTO `sampling_media_order` VALUES ('1049', '0', '2019-11-21 17:42:52', null, '1', null, '1', '20191121174252319', '5213907858611c95aa22405eaff431bf03568e721574329160271', '106', '2.54');
INSERT INTO `sampling_media_order` VALUES ('1050', '0', '2019-11-21 17:42:52', null, '1', null, '1', '20191121174252555', '323526218f5ca4fbfab9495bb5d2ea8259dc65221574329356942', '17', '2.40');
INSERT INTO `sampling_media_order` VALUES ('1051', '0', '2019-11-21 17:42:55', null, '1', null, '1', '20191121174255227', '52908930b3176daf96dc43ae9dd8acd41d54bfb01574329320756', '50', '2.88');
INSERT INTO `sampling_media_order` VALUES ('1052', '0', '2019-11-21 17:43:00', null, '1', null, '1', '20191121174300159', '21309425cac32bf1c2da4c67b1a4fbf92ad466921574329058259', '86', '2.91');
INSERT INTO `sampling_media_order` VALUES ('1053', '0', '2019-11-21 17:43:04', null, '1', null, '1', '20191121174304534', '248849160ba647e27a1f454ba4a4cf406e61f84e1574329136502', '51', '2.82');
INSERT INTO `sampling_media_order` VALUES ('1054', '0', '2019-11-21 17:43:16', null, '1', null, '1', '20191121174316578', '5213907858611c95aa22405eaff431bf03568e721574329160271', '54', '2.46');
INSERT INTO `sampling_media_order` VALUES ('1055', '0', '2019-11-21 17:43:51', null, '1', null, '1', '20191121174351993', '323526218f5ca4fbfab9495bb5d2ea8259dc65221574329356942', '92', '2.80');
INSERT INTO `sampling_media_order` VALUES ('1056', '0', '2019-11-21 17:43:57', null, '1', null, '1', '20191121174357958', '85566525b16e5afd3b8d432b8ebd3cb2f498fac31574328967530', '94', '2.26');
INSERT INTO `sampling_media_order` VALUES ('1057', '0', '2019-11-21 17:43:57', null, '1', null, '1', '20191121174357931', '248849160ba647e27a1f454ba4a4cf406e61f84e1574329136502', '86', '2.54');
INSERT INTO `sampling_media_order` VALUES ('1058', '0', '2019-11-21 17:44:09', null, '1', null, '1', '20191121174409750', '21309425cac32bf1c2da4c67b1a4fbf92ad466921574329058259', '37', '2.06');
INSERT INTO `sampling_media_order` VALUES ('1059', '0', '2019-11-21 17:44:34', null, '1', null, '1', '20191121174434743', '5213907858611c95aa22405eaff431bf03568e721574329160271', '65', '2.52');
INSERT INTO `sampling_media_order` VALUES ('1060', '0', '2019-11-21 17:44:38', null, '1', null, '1', '20191121174438520', '61678822a6d8298b648d473f9679f0a9a7a2fcfa1574329414886', '67', '2.94');
INSERT INTO `sampling_media_order` VALUES ('1061', '0', '2019-11-21 17:44:50', null, '1', null, '1', '20191121174450814', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '35', '2.07');
INSERT INTO `sampling_media_order` VALUES ('1062', '0', '2019-11-21 17:45:56', null, '1', null, '1', '20191121174556120', '5213907858611c95aa22405eaff431bf03568e721574329160271', '103', '2.53');
INSERT INTO `sampling_media_order` VALUES ('1063', '0', '2019-11-21 17:46:44', null, '1', null, '1', '20191121174644333', '3137287678e0c4de4767481d9c2191489ea21c041574329593128', '103', '2.54');
INSERT INTO `sampling_media_order` VALUES ('1064', '0', '2019-11-21 17:47:26', null, '1', null, '1', '20191121174726480', '3137287678e0c4de4767481d9c2191489ea21c041574329593128', '14', '2.50');
INSERT INTO `sampling_media_order` VALUES ('1065', '0', '2019-11-21 17:47:30', null, '1', null, '1', '20191121174730412', '523021265bf253e5d294423fa04f06132b7d74b51574328963026', '102', '2.52');
INSERT INTO `sampling_media_order` VALUES ('1066', '0', '2019-11-21 17:48:04', null, '1', null, '1', '20191121174804271', '31117455068035637f74459291d61b7a300ccffc1574329670664', '76', '2.50');
INSERT INTO `sampling_media_order` VALUES ('1067', '0', '2019-11-21 17:48:05', null, '1', null, '1', '20191121174805939', '9453945897016e54e5ce4e6ca631e712e8aaf4651574328990491', '93', '2.23');
INSERT INTO `sampling_media_order` VALUES ('1068', '0', '2019-11-21 17:48:21', null, '1', null, '1', '20191121174821878', '31117455068035637f74459291d61b7a300ccffc1574329670664', '66', '2.91');
INSERT INTO `sampling_media_order` VALUES ('1069', '0', '2019-11-21 17:48:24', null, '1', null, '1', '20191121174824994', '3137287678e0c4de4767481d9c2191489ea21c041574329593128', '56', '2.14');
INSERT INTO `sampling_media_order` VALUES ('1070', '0', '2019-11-21 17:48:32', null, '1', null, '1', '20191121174832743', '3137287678e0c4de4767481d9c2191489ea21c041574329593128', '87', '2.89');
INSERT INTO `sampling_media_order` VALUES ('1071', '0', '2019-11-21 17:48:44', null, '1', null, '1', '20191121174844228', '9453945897016e54e5ce4e6ca631e712e8aaf4651574328990491', '64', '2.72');
INSERT INTO `sampling_media_order` VALUES ('1072', '0', '2019-11-21 17:48:58', null, '1', null, '1', '20191121174858403', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '108', '2.86');
INSERT INTO `sampling_media_order` VALUES ('1073', '0', '2019-11-21 17:49:17', null, '1', null, '1', '20191121174917954', '610672211459fc6e66274042a05d1a7bb40ade351574329706281', '96', '2.65');
INSERT INTO `sampling_media_order` VALUES ('1074', '0', '2019-11-21 17:49:28', null, '1', null, '1', '20191121174928576', '3137287678e0c4de4767481d9c2191489ea21c041574329593128', '73', '2.90');
INSERT INTO `sampling_media_order` VALUES ('1075', '0', '2019-11-21 17:50:11', null, '1', null, '1', '20191121175011779', '72489675124ffdf1d8ce453e992e04eb087781821574329794965', '41', '2.09');
INSERT INTO `sampling_media_order` VALUES ('1076', '0', '2019-11-21 17:50:30', null, '1', null, '1', '20191121175030107', '3137287678e0c4de4767481d9c2191489ea21c041574329593128', '69', '2.75');
INSERT INTO `sampling_media_order` VALUES ('1077', '0', '2019-11-21 17:53:05', null, '1', null, '1', '20191121175305390', '3137287678e0c4de4767481d9c2191489ea21c041574329593128', '83', '2.84');
INSERT INTO `sampling_media_order` VALUES ('1078', '0', '2019-11-21 17:53:15', null, '1', null, '1', '20191121175315262', '6267848877f9c5d322ca43778951906ae167c9de1574329553758', '92', '2.42');
INSERT INTO `sampling_media_order` VALUES ('1079', '0', '2019-11-21 17:53:27', null, '1', null, '1', '20191121175327512', '6267848877f9c5d322ca43778951906ae167c9de1574329553758', '84', '2.15');
INSERT INTO `sampling_media_order` VALUES ('1080', '0', '2019-11-21 17:53:35', null, '1', null, '1', '20191121175335674', '6267848877f9c5d322ca43778951906ae167c9de1574329553758', '65', '2.47');
INSERT INTO `sampling_media_order` VALUES ('1081', '0', '2019-11-21 17:53:42', null, '1', null, '1', '20191121175342761', '6267848877f9c5d322ca43778951906ae167c9de1574329553758', '64', '2.93');
INSERT INTO `sampling_media_order` VALUES ('1082', '0', '2019-11-21 17:53:47', null, '1', null, '1', '20191121175347499', '3137287678e0c4de4767481d9c2191489ea21c041574329593128', '40', '2.71');
INSERT INTO `sampling_media_order` VALUES ('1083', '0', '2019-11-21 17:53:53', null, '1', null, '1', '20191121175353676', '6267848877f9c5d322ca43778951906ae167c9de1574329553758', '69', '2.24');
INSERT INTO `sampling_media_order` VALUES ('1084', '0', '2019-11-21 17:54:03', null, '1', null, '1', '20191121175403740', '6267848877f9c5d322ca43778951906ae167c9de1574329553758', '54', '2.29');
INSERT INTO `sampling_media_order` VALUES ('1085', '0', '2019-11-21 17:54:20', null, '1', null, '1', '20191121175420877', '6267848877f9c5d322ca43778951906ae167c9de1574329553758', '105', '2.71');
INSERT INTO `sampling_media_order` VALUES ('1086', '0', '2019-11-21 17:54:27', null, '1', null, '1', '20191121175427499', '6267848877f9c5d322ca43778951906ae167c9de1574329553758', '25', '2.60');
INSERT INTO `sampling_media_order` VALUES ('1087', '0', '2019-11-21 17:54:35', null, '1', null, '1', '20191121175435603', '6267848877f9c5d322ca43778951906ae167c9de1574329553758', '46', '2.41');
INSERT INTO `sampling_media_order` VALUES ('1088', '0', '2019-11-21 17:54:42', null, '1', null, '1', '20191121175442950', '3137287678e0c4de4767481d9c2191489ea21c041574329593128', '93', '2.79');
INSERT INTO `sampling_media_order` VALUES ('1089', '0', '2019-11-21 17:54:53', null, '1', null, '1', '20191121175453254', '6267848877f9c5d322ca43778951906ae167c9de1574329553758', '52', '2.20');
INSERT INTO `sampling_media_order` VALUES ('1090', '0', '2019-11-21 17:55:09', null, '1', null, '1', '20191121175509792', '135160589e6bec79d38a4d069a8063851496f7571574330096527', '23', '2.04');
INSERT INTO `sampling_media_order` VALUES ('1091', '0', '2019-11-21 17:55:22', null, '1', null, '1', '20191121175522534', '3137287678e0c4de4767481d9c2191489ea21c041574329593128', '62', '2.65');
INSERT INTO `sampling_media_order` VALUES ('1092', '0', '2019-11-21 17:55:38', null, '1', null, '1', '20191121175538490', '80290395686ed6a835584a88a78aef6b931540cd1573054608018', '87', '2.03');
INSERT INTO `sampling_media_order` VALUES ('1093', '0', '2019-11-21 17:55:46', null, '1', null, '1', '20191121175546412', '6267848877f9c5d322ca43778951906ae167c9de1574329553758', '48', '2.81');
INSERT INTO `sampling_media_order` VALUES ('1094', '0', '2019-11-21 17:55:50', null, '1', null, '1', '20191121175550275', '135160589e6bec79d38a4d069a8063851496f7571574330096527', '61', '2.39');
INSERT INTO `sampling_media_order` VALUES ('1095', '0', '2019-11-21 17:56:02', null, '1', null, '1', '20191121175602355', '6267848877f9c5d322ca43778951906ae167c9de1574329553758', '98', '2.81');
INSERT INTO `sampling_media_order` VALUES ('1096', '0', '2019-11-21 17:56:08', null, '1', null, '1', '20191121175608469', '80290395686ed6a835584a88a78aef6b931540cd1573054608018', '40', '2.85');
INSERT INTO `sampling_media_order` VALUES ('1097', '0', '2019-11-21 17:56:09', null, '1', null, '1', '20191121175609494', '6204629534c0790c390349b88e1fb48be212662d1574330114936', '96', '2.22');
INSERT INTO `sampling_media_order` VALUES ('1098', '0', '2019-11-21 17:56:56', null, '1', null, '1', '20191121175656360', '3951692519def813a33b4029a45012ff662d12ef1574328996808', '67', '2.34');
INSERT INTO `sampling_media_order` VALUES ('1099', '0', '2019-11-21 17:57:09', null, '1', null, '1', '20191121175709850', '6267848877f9c5d322ca43778951906ae167c9de1574329553758', '104', '2.62');
INSERT INTO `sampling_media_order` VALUES ('1100', '0', '2019-11-21 17:57:55', null, '1', null, '1', '20191121175755386', '96405917646ba0f2de2742e8a5f124bb0f4240461574330238487', '51', '2.58');
INSERT INTO `sampling_media_order` VALUES ('1101', '0', '2019-11-21 17:58:21', null, '1', null, '1', '20191121175821551', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '51', '2.57');
INSERT INTO `sampling_media_order` VALUES ('1102', '0', '2019-11-21 17:58:56', null, '1', null, '1', '20191121175856344', '96405917646ba0f2de2742e8a5f124bb0f4240461574330238487', '52', '2.49');
INSERT INTO `sampling_media_order` VALUES ('1103', '0', '2019-11-21 17:59:50', null, '1', null, '1', '20191121175950298', '369942307d5b393da1c94baebdbb29b3ca418ce91574330287016', '37', '2.43');
INSERT INTO `sampling_media_order` VALUES ('1104', '0', '2019-11-21 18:00:45', null, '1', null, '1', '20191121180045473', '369942307d5b393da1c94baebdbb29b3ca418ce91574330287016', '51', '2.21');
INSERT INTO `sampling_media_order` VALUES ('1105', '0', '2019-11-21 18:01:11', null, '1', null, '1', '20191121180111974', '35411762db84bd4dccda4aa78e5949554fe9c7b11574329553453', '69', '2.43');
INSERT INTO `sampling_media_order` VALUES ('1106', '0', '2019-11-21 18:02:07', null, '1', null, '1', '20191121180207191', '35411762db84bd4dccda4aa78e5949554fe9c7b11574329553453', '36', '2.60');
INSERT INTO `sampling_media_order` VALUES ('1107', '0', '2019-11-21 18:03:02', null, '1', null, '1', '20191121180302950', '90739389dc50adacc8b2468a8fa4444e59c966a21574330550779', '50', '2.35');
INSERT INTO `sampling_media_order` VALUES ('1108', '0', '2019-11-21 18:03:18', null, '1', null, '1', '20191121180318204', '90739389dc50adacc8b2468a8fa4444e59c966a21574330550779', '108', '2.20');
INSERT INTO `sampling_media_order` VALUES ('1109', '0', '2019-11-21 18:04:58', null, '1', null, '1', '20191121180458347', '90739389dc50adacc8b2468a8fa4444e59c966a21574330550779', '99', '2.13');
INSERT INTO `sampling_media_order` VALUES ('1110', '0', '2019-11-21 18:05:51', null, '1', null, '1', '20191121180551289', '90739389dc50adacc8b2468a8fa4444e59c966a21574330550779', '90', '2.60');
INSERT INTO `sampling_media_order` VALUES ('1111', '0', '2019-11-21 18:06:31', null, '1', null, '1', '20191121180631222', '90739389dc50adacc8b2468a8fa4444e59c966a21574330550779', '16', '2.80');
INSERT INTO `sampling_media_order` VALUES ('1112', '0', '2019-11-21 18:07:37', null, '1', null, '1', '20191121180737797', '90739389dc50adacc8b2468a8fa4444e59c966a21574330550779', '98', '2.31');
INSERT INTO `sampling_media_order` VALUES ('1113', '0', '2019-11-21 18:08:09', null, '1', null, '1', '20191121180809240', '647979347a2fd22468d24933bb3d43ac5f5d5df21574330866571', '109', '2.09');
INSERT INTO `sampling_media_order` VALUES ('1114', '0', '2019-11-21 18:08:43', null, '1', null, '1', '20191121180843485', '647979347a2fd22468d24933bb3d43ac5f5d5df21574330866571', '79', '2.61');
INSERT INTO `sampling_media_order` VALUES ('1115', '0', '2019-11-21 18:09:21', null, '1', null, '1', '20191121180921101', '647979347a2fd22468d24933bb3d43ac5f5d5df21574330866571', '30', '2.36');
INSERT INTO `sampling_media_order` VALUES ('1116', '0', '2019-11-21 18:09:38', null, '1', null, '1', '20191121180938257', '90739389dc50adacc8b2468a8fa4444e59c966a21574330550779', '60', '2.17');
INSERT INTO `sampling_media_order` VALUES ('1117', '0', '2019-11-21 18:10:29', null, '1', null, '1', '20191121181029906', '90739389dc50adacc8b2468a8fa4444e59c966a21574330550779', '69', '2.31');
INSERT INTO `sampling_media_order` VALUES ('1118', '0', '2019-11-21 18:11:23', null, '1', null, '1', '20191121181123910', '90739389dc50adacc8b2468a8fa4444e59c966a21574330550779', '91', '2.58');
INSERT INTO `sampling_media_order` VALUES ('1119', '0', '2019-11-21 18:11:42', null, '1', null, '1', '20191121181142978', '529319031475fc2d800b4e45bebfad0581ecee8a1574329031670', '74', '2.12');
INSERT INTO `sampling_media_order` VALUES ('1120', '0', '2019-11-21 18:12:37', null, '1', null, '1', '20191121181237712', '90739389dc50adacc8b2468a8fa4444e59c966a21574330550779', '106', '2.33');
INSERT INTO `sampling_media_order` VALUES ('1121', '0', '2019-11-21 18:13:11', null, '1', null, '1', '20191121181311816', '32914635413f8c19d4d34142b31b06666ef41df61574331172823', '108', '2.14');
INSERT INTO `sampling_media_order` VALUES ('1122', '0', '2019-11-21 18:13:25', null, '1', null, '1', '20191121181325799', '90739389dc50adacc8b2468a8fa4444e59c966a21574330550779', '53', '2.69');
INSERT INTO `sampling_media_order` VALUES ('1123', '0', '2019-11-21 18:15:50', null, '1', null, '1', '20191121181550862', '7024631245b010c5108c4356af0a0051077c8f031574331316461', '50', '2.75');
INSERT INTO `sampling_media_order` VALUES ('1124', '0', '2019-11-21 18:15:54', null, '1', null, '1', '20191121181554602', '28831030754f47b93b8046b294188fab6f63353f1574329847075', '90', '2.19');
INSERT INTO `sampling_media_order` VALUES ('1125', '0', '2019-11-21 18:16:16', null, '1', null, '1', '20191121181616851', '28831030754f47b93b8046b294188fab6f63353f1574329847075', '83', '2.39');
INSERT INTO `sampling_media_order` VALUES ('1126', '0', '2019-11-21 18:16:20', null, '1', null, '1', '20191121181620591', '20839027d0d15b296ee94b27a38dbfb27d06e23d1574328952714', '60', '2.42');
INSERT INTO `sampling_media_order` VALUES ('1127', '0', '2019-11-21 18:16:35', null, '1', null, '1', '20191121181635234', '7024631245b010c5108c4356af0a0051077c8f031574331316461', '81', '2.84');
INSERT INTO `sampling_media_order` VALUES ('1128', '0', '2019-11-21 18:17:14', null, '1', null, '1', '20191121181714592', '90739389dc50adacc8b2468a8fa4444e59c966a21574330550779', '30', '2.88');
INSERT INTO `sampling_media_order` VALUES ('1129', '0', '2019-11-21 18:17:43', null, '1', null, '1', '20191121181743777', '369942307d5b393da1c94baebdbb29b3ca418ce91574330287016', '38', '2.92');
INSERT INTO `sampling_media_order` VALUES ('1130', '0', '2019-11-21 18:17:46', null, '1', null, '1', '20191121181746145', '7024631245b010c5108c4356af0a0051077c8f031574331316461', '34', '2.75');
INSERT INTO `sampling_media_order` VALUES ('1131', '0', '2019-11-21 18:18:03', null, '1', null, '1', '20191121181803944', '90739389dc50adacc8b2468a8fa4444e59c966a21574330550779', '37', '2.69');
INSERT INTO `sampling_media_order` VALUES ('1132', '0', '2019-11-21 18:18:28', null, '1', null, '1', '20191121181828516', '7024631245b010c5108c4356af0a0051077c8f031574331316461', '40', '2.61');
INSERT INTO `sampling_media_order` VALUES ('1133', '0', '2019-11-21 18:18:36', null, '1', null, '1', '20191121181836425', '90739389dc50adacc8b2468a8fa4444e59c966a21574330550779', '90', '2.12');
INSERT INTO `sampling_media_order` VALUES ('1134', '0', '2019-11-21 18:18:46', null, '1', null, '1', '20191121181846454', '90739389dc50adacc8b2468a8fa4444e59c966a21574330550779', '102', '2.89');
INSERT INTO `sampling_media_order` VALUES ('1135', '0', '2019-11-21 18:19:08', null, '1', null, '1', '20191121181908931', '369942307d5b393da1c94baebdbb29b3ca418ce91574330287016', '35', '2.14');
INSERT INTO `sampling_media_order` VALUES ('1136', '0', '2019-11-21 18:19:13', null, '1', null, '1', '20191121181913889', '7024631245b010c5108c4356af0a0051077c8f031574331316461', '59', '2.07');
INSERT INTO `sampling_media_order` VALUES ('1137', '0', '2019-11-21 18:19:28', null, '1', null, '1', '20191121181928854', '90739389dc50adacc8b2468a8fa4444e59c966a21574330550779', '41', '2.65');
INSERT INTO `sampling_media_order` VALUES ('1138', '0', '2019-11-21 18:19:36', null, '1', null, '1', '20191121181936849', '7024631245b010c5108c4356af0a0051077c8f031574331316461', '80', '2.61');
INSERT INTO `sampling_media_order` VALUES ('1139', '0', '2019-11-21 18:20:14', null, '1', null, '1', '20191121182014803', '369942307d5b393da1c94baebdbb29b3ca418ce91574330287016', '19', '2.30');
INSERT INTO `sampling_media_order` VALUES ('1140', '0', '2019-11-21 18:20:23', null, '1', null, '1', '20191121182023128', '66120857601f621fdd064669ab545b9a20ef13b81574331611767', '89', '2.69');
INSERT INTO `sampling_media_order` VALUES ('1141', '0', '2019-11-21 18:21:01', null, '1', null, '1', '20191121182101688', '66120857601f621fdd064669ab545b9a20ef13b81574331611767', '45', '2.85');
INSERT INTO `sampling_media_order` VALUES ('1142', '0', '2019-11-21 18:22:44', null, '1', null, '1', '20191121182244703', '630334469c75223e28114741a297e8fb3dd9e45a1573100218344', '49', '2.25');
INSERT INTO `sampling_media_order` VALUES ('1143', '0', '2019-11-21 18:23:29', null, '1', null, '1', '20191121182329376', '770391713cfc3def23334c62992b91ef2919e2891574331736058', '98', '2.45');
INSERT INTO `sampling_media_order` VALUES ('1144', '0', '2019-11-21 18:25:46', null, '1', null, '1', '20191121182546836', '722811884b490abe5d0041ef892a1551ec1263021574330829939', '94', '2.49');
INSERT INTO `sampling_media_order` VALUES ('1145', '0', '2019-11-21 18:26:27', null, '1', null, '1', '20191121182627262', '252270404b65a2957dd3465abb0e77252e12c6af1574331967694', '33', '2.70');
INSERT INTO `sampling_media_order` VALUES ('1146', '0', '2019-11-21 18:26:58', null, '1', null, '1', '20191121182658566', '252270404b65a2957dd3465abb0e77252e12c6af1574331967694', '70', '2.44');
INSERT INTO `sampling_media_order` VALUES ('1147', '0', '2019-11-21 18:27:27', null, '1', null, '1', '20191121182727879', '252270404b65a2957dd3465abb0e77252e12c6af1574331967694', '66', '2.24');
INSERT INTO `sampling_media_order` VALUES ('1148', '0', '2019-11-21 18:27:41', null, '1', null, '1', '20191121182741831', '252270404b65a2957dd3465abb0e77252e12c6af1574331967694', '80', '2.70');
INSERT INTO `sampling_media_order` VALUES ('1149', '0', '2019-11-21 18:27:45', null, '1', null, '1', '20191121182745251', '981137638e5b17aca59a46b3ab599f04a091bad51574332032930', '59', '2.08');
INSERT INTO `sampling_media_order` VALUES ('1150', '0', '2019-11-21 18:28:08', null, '1', null, '1', '20191121182808450', '969133149bdaf0cc943640ccb5befe3de0086a491574332071696', '40', '2.46');
INSERT INTO `sampling_media_order` VALUES ('1151', '0', '2019-11-21 18:28:09', null, '1', null, '1', '20191121182809251', '49302028e0b4b8c6d0fc4fe398f5bf2c603dfd891574332073987', '50', '2.29');
INSERT INTO `sampling_media_order` VALUES ('1152', '0', '2019-11-21 18:28:13', null, '1', null, '1', '20191121182813651', '4184391217d6a39869cc486c94706921e3f49e5b1574332085589', '87', '2.63');
INSERT INTO `sampling_media_order` VALUES ('1153', '0', '2019-11-21 18:28:32', null, '1', null, '1', '20191121182832137', '4184391217d6a39869cc486c94706921e3f49e5b1574332085589', '70', '2.29');
INSERT INTO `sampling_media_order` VALUES ('1154', '0', '2019-11-21 18:28:40', null, '1', null, '1', '20191121182840830', '969133149bdaf0cc943640ccb5befe3de0086a491574332071696', '105', '2.26');
INSERT INTO `sampling_media_order` VALUES ('1155', '0', '2019-11-21 18:32:18', null, '1', null, '1', '20191121183218292', '19815876f20a45c29f734f1ab4e39b4994203bd71574332315211', '90', '2.65');
INSERT INTO `sampling_media_order` VALUES ('1156', '0', '2019-11-21 18:34:44', null, '1', null, '1', '20191121183444424', '19815876f20a45c29f734f1ab4e39b4994203bd71574332315211', '60', '2.37');
INSERT INTO `sampling_media_order` VALUES ('1157', '0', '2019-11-21 18:38:05', null, '1', null, '1', '20191121183805818', '30746292fb26b86c189c484e8e9c1eca044700ad1574328988839', '66', '2.57');
INSERT INTO `sampling_media_order` VALUES ('1158', '0', '2019-11-21 18:38:45', null, '1', null, '1', '20191121183845678', '30746292fb26b86c189c484e8e9c1eca044700ad1574328988839', '35', '2.35');
INSERT INTO `sampling_media_order` VALUES ('1159', '0', '2019-11-21 18:39:33', null, '1', null, '1', '20191121183933823', '30746292fb26b86c189c484e8e9c1eca044700ad1574328988839', '96', '2.09');
INSERT INTO `sampling_media_order` VALUES ('1160', '0', '2019-11-21 18:49:39', null, '1', null, '1', '20191121184939790', '21475967fbb8dac5761e4d6fbc0118bd7f43656d1574328961245', '40', '2.47');
INSERT INTO `sampling_media_order` VALUES ('1161', '0', '2019-11-21 18:53:21', null, '1', null, '1', '20191121185321274', '10837036b66d5ae32a804148836eb33761762e231574333476136', '81', '2.06');
INSERT INTO `sampling_media_order` VALUES ('1162', '0', '2019-11-21 18:54:14', null, '1', null, '1', '20191121185414240', '10837036b66d5ae32a804148836eb33761762e231574333476136', '92', '2.38');
INSERT INTO `sampling_media_order` VALUES ('1163', '0', '2019-11-21 18:55:15', null, '1', null, '1', '20191121185515825', '781678021d128c149df64c7abeb5d683ce2c514f1574331409847', '31', '2.80');
INSERT INTO `sampling_media_order` VALUES ('1164', '0', '2019-11-21 18:55:16', null, '1', null, '1', '20191121185516831', '8773608676069457511848aba6fcfd352edf290a1574333664357', '59', '2.01');
INSERT INTO `sampling_media_order` VALUES ('1165', '0', '2019-11-21 18:55:29', null, '1', null, '1', '20191121185529272', '8773608676069457511848aba6fcfd352edf290a1574333664357', '104', '2.50');
INSERT INTO `sampling_media_order` VALUES ('1166', '0', '2019-11-21 18:55:36', null, '1', null, '1', '20191121185536566', '781678021d128c149df64c7abeb5d683ce2c514f1574331409847', '81', '2.53');
INSERT INTO `sampling_media_order` VALUES ('1167', '0', '2019-11-21 18:57:00', null, '1', null, '1', '20191121185700374', '64520789c7e4e1a1e348450ca16d93f04a02c1181574333801103', '67', '2.90');
INSERT INTO `sampling_media_order` VALUES ('1168', '0', '2019-11-21 18:58:13', null, '1', null, '1', '20191121185813816', '64520789c7e4e1a1e348450ca16d93f04a02c1181574333801103', '17', '2.25');
INSERT INTO `sampling_media_order` VALUES ('1169', '0', '2019-11-21 18:58:29', null, '1', null, '1', '20191121185829102', '64520789c7e4e1a1e348450ca16d93f04a02c1181574333801103', '97', '2.35');
INSERT INTO `sampling_media_order` VALUES ('1170', '0', '2019-11-21 18:59:42', null, '1', null, '1', '20191121185942239', '35411762db84bd4dccda4aa78e5949554fe9c7b11574329553453', '42', '2.12');
INSERT INTO `sampling_media_order` VALUES ('1171', '0', '2019-11-21 18:59:53', null, '1', null, '1', '20191121185953410', '64520789c7e4e1a1e348450ca16d93f04a02c1181574333801103', '16', '2.14');
INSERT INTO `sampling_media_order` VALUES ('1172', '0', '2019-11-21 19:00:35', null, '1', null, '1', '20191121190035739', '64520789c7e4e1a1e348450ca16d93f04a02c1181574333801103', '56', '2.51');
INSERT INTO `sampling_media_order` VALUES ('1173', '0', '2019-11-21 19:00:39', null, '1', null, '1', '20191121190039799', '35411762db84bd4dccda4aa78e5949554fe9c7b11574329553453', '95', '2.31');
INSERT INTO `sampling_media_order` VALUES ('1174', '0', '2019-11-21 19:01:24', null, '1', null, '1', '20191121190124233', '35411762db84bd4dccda4aa78e5949554fe9c7b11574329553453', '66', '2.14');
INSERT INTO `sampling_media_order` VALUES ('1175', '0', '2019-11-21 19:02:11', null, '1', null, '1', '20191121190211249', '35411762db84bd4dccda4aa78e5949554fe9c7b11574329553453', '69', '2.55');
INSERT INTO `sampling_media_order` VALUES ('1176', '0', '2019-11-21 19:02:56', null, '1', null, '1', '20191121190256429', '35411762db84bd4dccda4aa78e5949554fe9c7b11574329553453', '54', '2.69');
INSERT INTO `sampling_media_order` VALUES ('1177', '0', '2019-11-21 19:08:22', null, '1', null, '1', '20191121190822994', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '37', '2.68');
INSERT INTO `sampling_media_order` VALUES ('1178', '0', '2019-11-21 19:11:01', null, '1', null, '1', '20191121191101210', '32914635413f8c19d4d34142b31b06666ef41df61574331172823', '108', '2.06');
INSERT INTO `sampling_media_order` VALUES ('1179', '0', '2019-11-21 19:12:57', null, '1', null, '1', '20191121191257178', '681724297d6a6630c82d4dbbb8161522509528771574334761863', '66', '2.31');
INSERT INTO `sampling_media_order` VALUES ('1180', '0', '2019-11-21 19:13:25', null, '1', null, '1', '20191121191325679', '32914635413f8c19d4d34142b31b06666ef41df61574331172823', '62', '2.07');
INSERT INTO `sampling_media_order` VALUES ('1181', '0', '2019-11-21 19:13:28', null, '1', null, '1', '20191121191328992', '681724297d6a6630c82d4dbbb8161522509528771574334761863', '22', '2.61');
INSERT INTO `sampling_media_order` VALUES ('1182', '0', '2019-11-21 19:14:21', null, '1', null, '1', '20191121191421221', '682440642f98ab1034984ae3a715f4f920c8fe871574333265810', '45', '2.94');
INSERT INTO `sampling_media_order` VALUES ('1183', '0', '2019-11-21 19:16:05', null, '1', null, '1', '20191121191605973', '682440642f98ab1034984ae3a715f4f920c8fe871574333265810', '57', '2.68');
INSERT INTO `sampling_media_order` VALUES ('1184', '0', '2019-11-21 19:16:45', null, '1', null, '1', '20191121191645457', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '47', '2.23');
INSERT INTO `sampling_media_order` VALUES ('1185', '0', '2019-11-21 19:17:02', null, '1', null, '1', '20191121191702619', '5146499223dc7884db184d2bbd37eab09ff7786b1574328981511', '16', '2.16');
INSERT INTO `sampling_media_order` VALUES ('1186', '0', '2019-11-21 19:17:07', null, '1', null, '1', '20191121191707273', '682440642f98ab1034984ae3a715f4f920c8fe871574333265810', '95', '2.10');
INSERT INTO `sampling_media_order` VALUES ('1187', '0', '2019-11-21 19:18:16', null, '1', null, '1', '20191121191816973', '682440642f98ab1034984ae3a715f4f920c8fe871574333265810', '73', '2.43');
INSERT INTO `sampling_media_order` VALUES ('1188', '0', '2019-11-21 19:18:17', null, '1', null, '1', '20191121191817157', '682440642f98ab1034984ae3a715f4f920c8fe871574333265810', '73', '2.59');
INSERT INTO `sampling_media_order` VALUES ('1189', '0', '2019-11-21 19:18:30', null, '1', null, '1', '20191121191830916', '5146499223dc7884db184d2bbd37eab09ff7786b1574328981511', '52', '2.33');
INSERT INTO `sampling_media_order` VALUES ('1190', '0', '2019-11-21 19:19:21', null, '1', null, '1', '20191121191921697', '5146499223dc7884db184d2bbd37eab09ff7786b1574328981511', '94', '2.88');
INSERT INTO `sampling_media_order` VALUES ('1191', '0', '2019-11-21 19:19:38', null, '1', null, '1', '20191121191938977', '682440642f98ab1034984ae3a715f4f920c8fe871574333265810', '62', '2.73');
INSERT INTO `sampling_media_order` VALUES ('1192', '0', '2019-11-21 19:20:00', null, '1', null, '1', '20191121192000458', '681724297d6a6630c82d4dbbb8161522509528771574334761863', '105', '2.49');
INSERT INTO `sampling_media_order` VALUES ('1193', '0', '2019-11-21 19:20:19', null, '1', null, '1', '20191121192019527', '682440642f98ab1034984ae3a715f4f920c8fe871574333265810', '58', '2.98');
INSERT INTO `sampling_media_order` VALUES ('1194', '0', '2019-11-21 19:20:43', null, '1', null, '1', '20191121192043605', '5146499223dc7884db184d2bbd37eab09ff7786b1574328981511', '59', '2.38');
INSERT INTO `sampling_media_order` VALUES ('1195', '0', '2019-11-21 19:21:19', null, '1', null, '1', '20191121192119955', '682440642f98ab1034984ae3a715f4f920c8fe871574333265810', '40', '2.38');
INSERT INTO `sampling_media_order` VALUES ('1196', '0', '2019-11-21 19:21:49', null, '1', null, '1', '20191121192149485', '5146499223dc7884db184d2bbd37eab09ff7786b1574328981511', '107', '2.47');
INSERT INTO `sampling_media_order` VALUES ('1197', '0', '2019-11-21 19:22:34', null, '1', null, '1', '20191121192234624', '5146499223dc7884db184d2bbd37eab09ff7786b1574328981511', '16', '2.91');
INSERT INTO `sampling_media_order` VALUES ('1198', '0', '2019-11-21 19:22:58', null, '1', null, '1', '20191121192258614', '7570726185a9eb0cd8f14d6ba94cef1649c2c3641574335340509', '96', '2.32');
INSERT INTO `sampling_media_order` VALUES ('1199', '0', '2019-11-21 19:23:12', null, '1', null, '1', '20191121192312352', '5146499223dc7884db184d2bbd37eab09ff7786b1574328981511', '96', '2.33');
INSERT INTO `sampling_media_order` VALUES ('1200', '0', '2019-11-21 19:23:32', null, '1', null, '1', '20191121192332416', '5146499223dc7884db184d2bbd37eab09ff7786b1574328981511', '59', '2.31');
INSERT INTO `sampling_media_order` VALUES ('1201', '0', '2019-11-21 19:23:46', null, '1', null, '1', '20191121192346961', '5146499223dc7884db184d2bbd37eab09ff7786b1574328981511', '92', '2.05');
INSERT INTO `sampling_media_order` VALUES ('1202', '0', '2019-11-21 19:24:29', null, '1', null, '1', '20191121192429472', '13170670e72b18496116489e968caaa51ab67ecb1574335392571', '19', '2.36');
INSERT INTO `sampling_media_order` VALUES ('1203', '0', '2019-11-21 19:24:47', null, '1', null, '1', '20191121192447326', '682440642f98ab1034984ae3a715f4f920c8fe871574333265810', '51', '2.16');
INSERT INTO `sampling_media_order` VALUES ('1204', '0', '2019-11-21 19:24:58', null, '1', null, '1', '20191121192458621', '5146499223dc7884db184d2bbd37eab09ff7786b1574328981511', '94', '2.06');
INSERT INTO `sampling_media_order` VALUES ('1205', '0', '2019-11-21 19:25:58', null, '1', null, '1', '20191121192558255', '682440642f98ab1034984ae3a715f4f920c8fe871574333265810', '34', '2.99');
INSERT INTO `sampling_media_order` VALUES ('1206', '0', '2019-11-21 19:32:25', null, '1', null, '1', '20191121193225152', '889536223199240ad83d4c788c63e83339b8ade91574329654220', '59', '2.05');
INSERT INTO `sampling_media_order` VALUES ('1207', '0', '2019-11-21 19:33:11', null, '1', null, '1', '20191121193311433', '889536223199240ad83d4c788c63e83339b8ade91574329654220', '50', '2.44');
INSERT INTO `sampling_media_order` VALUES ('1208', '0', '2019-11-21 19:33:12', null, '1', null, '1', '20191121193312983', '681724297d6a6630c82d4dbbb8161522509528771574334761863', '36', '2.33');
INSERT INTO `sampling_media_order` VALUES ('1209', '0', '2019-11-21 19:33:26', null, '1', null, '1', '20191121193326196', '681724297d6a6630c82d4dbbb8161522509528771574334761863', '15', '2.06');
INSERT INTO `sampling_media_order` VALUES ('1210', '0', '2019-11-21 19:33:33', null, '1', null, '1', '20191121193333476', '681724297d6a6630c82d4dbbb8161522509528771574334761863', '83', '2.59');
INSERT INTO `sampling_media_order` VALUES ('1211', '0', '2019-11-21 19:33:49', null, '1', null, '1', '20191121193349771', '889536223199240ad83d4c788c63e83339b8ade91574329654220', '92', '2.66');
INSERT INTO `sampling_media_order` VALUES ('1212', '0', '2019-11-21 19:34:31', null, '1', null, '1', '20191121193431810', '889536223199240ad83d4c788c63e83339b8ade91574329654220', '29', '2.50');
INSERT INTO `sampling_media_order` VALUES ('1213', '0', '2019-11-21 19:35:17', null, '1', null, '1', '20191121193517178', '889536223199240ad83d4c788c63e83339b8ade91574329654220', '79', '2.23');
INSERT INTO `sampling_media_order` VALUES ('1214', '0', '2019-11-21 19:35:59', null, '1', null, '1', '20191121193559843', '889536223199240ad83d4c788c63e83339b8ade91574329654220', '24', '2.78');
INSERT INTO `sampling_media_order` VALUES ('1215', '0', '2019-11-21 19:36:55', null, '1', null, '1', '20191121193655719', '889536223199240ad83d4c788c63e83339b8ade91574329654220', '38', '2.55');
INSERT INTO `sampling_media_order` VALUES ('1216', '0', '2019-11-21 19:37:06', null, '1', null, '1', '20191121193706718', '889536223199240ad83d4c788c63e83339b8ade91574329654220', '64', '2.13');
INSERT INTO `sampling_media_order` VALUES ('1217', '0', '2019-11-21 19:41:58', null, '1', null, '1', '20191121194158727', '89799054764cd6df225b4a64baae823a1bbdd7561574329046076', '96', '2.54');
INSERT INTO `sampling_media_order` VALUES ('1218', '0', '2019-11-21 19:42:30', null, '1', null, '1', '20191121194230837', '89799054764cd6df225b4a64baae823a1bbdd7561574329046076', '45', '2.23');
INSERT INTO `sampling_media_order` VALUES ('1219', '0', '2019-11-21 19:51:02', null, '1', null, '1', '20191121195102718', '4969452489313763657b4cf4a99677e5fbd49ad01574329162820', '103', '2.78');
INSERT INTO `sampling_media_order` VALUES ('1220', '0', '2019-11-21 19:51:31', null, '1', null, '1', '20191121195131162', '13170670e72b18496116489e968caaa51ab67ecb1574335392571', '61', '2.20');
INSERT INTO `sampling_media_order` VALUES ('1221', '0', '2019-11-21 19:51:45', null, '1', null, '1', '20191121195145684', '4969452489313763657b4cf4a99677e5fbd49ad01574329162820', '89', '2.49');
INSERT INTO `sampling_media_order` VALUES ('1222', '0', '2019-11-21 19:52:22', null, '1', null, '1', '20191121195222220', '164629809bd6e06e6e074a34a95da62d290859af1574329278212', '94', '2.52');
INSERT INTO `sampling_media_order` VALUES ('1223', '0', '2019-11-21 19:52:24', null, '1', null, '1', '20191121195224324', '13170670e72b18496116489e968caaa51ab67ecb1574335392571', '84', '2.23');
INSERT INTO `sampling_media_order` VALUES ('1224', '0', '2019-11-21 19:52:30', null, '1', null, '1', '20191121195230909', '4969452489313763657b4cf4a99677e5fbd49ad01574329162820', '66', '2.96');
INSERT INTO `sampling_media_order` VALUES ('1225', '0', '2019-11-21 19:52:51', null, '1', null, '1', '20191121195251741', '4969452489313763657b4cf4a99677e5fbd49ad01574329162820', '22', '2.57');
INSERT INTO `sampling_media_order` VALUES ('1226', '0', '2019-11-21 19:53:20', null, '1', null, '1', '20191121195320908', '96405917646ba0f2de2742e8a5f124bb0f4240461574330238487', '42', '2.15');
INSERT INTO `sampling_media_order` VALUES ('1227', '0', '2019-11-21 19:58:13', null, '1', null, '1', '20191121195813577', '30637564af50aaf2170f4052adc2708e70248e851574337483305', '32', '2.92');
INSERT INTO `sampling_media_order` VALUES ('1228', '0', '2019-11-21 19:58:45', null, '1', null, '1', '20191121195845444', '30637564af50aaf2170f4052adc2708e70248e851574337483305', '51', '2.74');
INSERT INTO `sampling_media_order` VALUES ('1229', '0', '2019-11-21 20:01:04', null, '1', null, '1', '20191121200104188', '11870226b018f2df0fbc45958ab7792839b618821574328951442', '36', '2.07');
INSERT INTO `sampling_media_order` VALUES ('1230', '0', '2019-11-21 20:02:35', null, '1', null, '1', '20191121200235888', '13170670e72b18496116489e968caaa51ab67ecb1574335392571', '30', '2.27');
INSERT INTO `sampling_media_order` VALUES ('1231', '0', '2019-11-21 20:02:52', null, '1', null, '1', '20191121200252525', '13170670e72b18496116489e968caaa51ab67ecb1574335392571', '80', '2.44');
INSERT INTO `sampling_media_order` VALUES ('1232', '0', '2019-11-21 20:08:00', null, '1', null, '1', '20191121200800681', '893579423ae7f8e3290a4e118dcbc6a2a5a774a31574328975884', '62', '2.12');
INSERT INTO `sampling_media_order` VALUES ('1233', '0', '2019-11-21 20:08:51', null, '1', null, '1', '20191121200851927', '683929567651e2766ef74dac948f10da4f8aef041574329582752', '73', '2.20');
INSERT INTO `sampling_media_order` VALUES ('1234', '0', '2019-11-21 20:09:09', null, '1', null, '1', '20191121200909360', '893579423ae7f8e3290a4e118dcbc6a2a5a774a31574328975884', '51', '2.64');
INSERT INTO `sampling_media_order` VALUES ('1235', '0', '2019-11-21 20:09:18', null, '1', null, '1', '20191121200918507', '683929567651e2766ef74dac948f10da4f8aef041574329582752', '104', '2.16');
INSERT INTO `sampling_media_order` VALUES ('1236', '0', '2019-11-21 20:11:40', null, '1', null, '1', '20191121201140978', '683929567651e2766ef74dac948f10da4f8aef041574329582752', '16', '2.38');
INSERT INTO `sampling_media_order` VALUES ('1237', '0', '2019-11-21 20:15:15', null, '1', null, '1', '20191121201515426', '90739389dc50adacc8b2468a8fa4444e59c966a21574330550779', '92', '2.58');
INSERT INTO `sampling_media_order` VALUES ('1238', '0', '2019-11-21 20:16:05', null, '1', null, '1', '20191121201605869', '683929567651e2766ef74dac948f10da4f8aef041574329582752', '83', '2.38');
INSERT INTO `sampling_media_order` VALUES ('1239', '0', '2019-11-21 20:16:34', null, '1', null, '1', '20191121201634667', '683929567651e2766ef74dac948f10da4f8aef041574329582752', '52', '2.51');
INSERT INTO `sampling_media_order` VALUES ('1240', '0', '2019-11-21 20:16:55', null, '1', null, '1', '20191121201655759', '996702500f94ae1a04484e918da21b5e40ce5a691574329074505', '94', '2.87');
INSERT INTO `sampling_media_order` VALUES ('1241', '0', '2019-11-21 20:17:27', null, '1', null, '1', '20191121201727755', '683929567651e2766ef74dac948f10da4f8aef041574329582752', '32', '2.29');
INSERT INTO `sampling_media_order` VALUES ('1242', '0', '2019-11-21 20:17:40', null, '1', null, '1', '20191121201740870', '996702500f94ae1a04484e918da21b5e40ce5a691574329074505', '35', '2.05');
INSERT INTO `sampling_media_order` VALUES ('1243', '0', '2019-11-21 20:20:58', null, '1', null, '1', '20191121202058643', '462890446b39b607347943b38a025ad51d4810321574328861715', '96', '2.68');
INSERT INTO `sampling_media_order` VALUES ('1244', '0', '2019-11-21 20:25:45', null, '1', null, '1', '20191121202545700', '3951692519def813a33b4029a45012ff662d12ef1574328996808', '87', '2.59');
INSERT INTO `sampling_media_order` VALUES ('1245', '0', '2019-11-21 20:26:22', null, '1', null, '1', '20191121202622816', '49302028e0b4b8c6d0fc4fe398f5bf2c603dfd891574332073987', '79', '2.95');
INSERT INTO `sampling_media_order` VALUES ('1246', '0', '2019-11-21 20:27:24', null, '1', null, '1', '20191121202724217', '3951692519def813a33b4029a45012ff662d12ef1574328996808', '42', '2.05');
INSERT INTO `sampling_media_order` VALUES ('1247', '0', '2019-11-21 20:27:48', null, '1', null, '1', '20191121202748115', '49302028e0b4b8c6d0fc4fe398f5bf2c603dfd891574332073987', '34', '2.98');
INSERT INTO `sampling_media_order` VALUES ('1248', '0', '2019-11-21 20:29:07', null, '1', null, '1', '20191121202907455', '49302028e0b4b8c6d0fc4fe398f5bf2c603dfd891574332073987', '52', '2.82');
INSERT INTO `sampling_media_order` VALUES ('1249', '0', '2019-11-21 20:35:08', null, '1', null, '1', '20191121203508969', '9436015194637eb335ed4bd6b67f1ccb5ce7a2281574339692372', '74', '2.72');
INSERT INTO `sampling_media_order` VALUES ('1250', '0', '2019-11-21 20:35:58', null, '1', null, '1', '20191121203558277', '9436015194637eb335ed4bd6b67f1ccb5ce7a2281574339692372', '12', '2.79');
INSERT INTO `sampling_media_order` VALUES ('1251', '0', '2019-11-21 20:36:32', null, '1', null, '1', '20191121203632132', '9436015194637eb335ed4bd6b67f1ccb5ce7a2281574339692372', '29', '2.76');
INSERT INTO `sampling_media_order` VALUES ('1252', '0', '2019-11-21 20:39:52', null, '1', null, '1', '20191121203952202', '9028641919c9611a1cb042259ce0f1430b8794fb1574338760007', '105', '2.21');
INSERT INTO `sampling_media_order` VALUES ('1253', '0', '2019-11-21 20:41:09', null, '1', null, '1', '20191121204109795', '9028641919c9611a1cb042259ce0f1430b8794fb1574338760007', '94', '2.20');
INSERT INTO `sampling_media_order` VALUES ('1254', '0', '2019-11-21 20:44:48', null, '1', null, '1', '20191121204448110', '164629809bd6e06e6e074a34a95da62d290859af1574329278212', '67', '2.52');
INSERT INTO `sampling_media_order` VALUES ('1255', '0', '2019-11-21 20:49:24', null, '1', null, '1', '20191121204924526', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '69', '2.50');
INSERT INTO `sampling_media_order` VALUES ('1256', '0', '2019-11-21 20:50:19', null, '1', null, '1', '20191121205019179', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '62', '2.37');
INSERT INTO `sampling_media_order` VALUES ('1257', '0', '2019-11-21 20:51:55', null, '1', null, '1', '20191121205155276', '369942307d5b393da1c94baebdbb29b3ca418ce91574330287016', '38', '2.65');
INSERT INTO `sampling_media_order` VALUES ('1258', '0', '2019-11-21 20:57:41', null, '1', null, '1', '20191121205741536', '369942307d5b393da1c94baebdbb29b3ca418ce91574330287016', '46', '2.08');
INSERT INTO `sampling_media_order` VALUES ('1259', '0', '2019-11-21 20:58:17', null, '1', null, '1', '20191121205817164', '740217479871311c8bcc42658a1ff46f9875d6de1574341009153', '79', '2.75');
INSERT INTO `sampling_media_order` VALUES ('1260', '0', '2019-11-21 20:58:34', null, '1', null, '1', '20191121205834737', '682440642f98ab1034984ae3a715f4f920c8fe871574333265810', '81', '2.19');
INSERT INTO `sampling_media_order` VALUES ('1261', '0', '2019-11-21 20:58:53', null, '1', null, '1', '20191121205853405', '740217479871311c8bcc42658a1ff46f9875d6de1574341009153', '108', '2.54');
INSERT INTO `sampling_media_order` VALUES ('1262', '0', '2019-11-21 21:00:42', null, '1', null, '1', '20191121210042575', '73353834913bbee04af0420db08b10938fe31af41574341234416', '51', '2.06');
INSERT INTO `sampling_media_order` VALUES ('1263', '0', '2019-11-21 21:00:57', null, '1', null, '1', '20191121210057269', '33095267ef3bd29e182f4593a31cf5c47316423a1574341232941', '66', '2.25');
INSERT INTO `sampling_media_order` VALUES ('1264', '0', '2019-11-21 21:01:34', null, '1', null, '1', '20191121210134828', '33095267ef3bd29e182f4593a31cf5c47316423a1574341232941', '59', '2.25');
INSERT INTO `sampling_media_order` VALUES ('1265', '0', '2019-11-21 21:04:12', null, '1', null, '1', '20191121210412751', '557852109d224fad0512492d9a3df5dd5737a9101574097929356', '87', '2.07');
INSERT INTO `sampling_media_order` VALUES ('1266', '0', '2019-11-21 21:04:51', null, '1', null, '1', '20191121210451927', '682440642f98ab1034984ae3a715f4f920c8fe871574333265810', '89', '2.75');
INSERT INTO `sampling_media_order` VALUES ('1267', '0', '2019-11-21 21:04:56', null, '1', null, '1', '20191121210456793', '557852109d224fad0512492d9a3df5dd5737a9101574097929356', '44', '2.51');
INSERT INTO `sampling_media_order` VALUES ('1268', '0', '2019-11-21 21:05:32', null, '1', null, '1', '20191121210532306', '557852109d224fad0512492d9a3df5dd5737a9101574097929356', '65', '2.20');
INSERT INTO `sampling_media_order` VALUES ('1269', '0', '2019-11-21 21:06:32', null, '1', null, '1', '20191121210632703', '557852109d224fad0512492d9a3df5dd5737a9101574097929356', '79', '2.48');
INSERT INTO `sampling_media_order` VALUES ('1270', '0', '2019-11-21 21:06:45', null, '1', null, '1', '20191121210645734', '369942307d5b393da1c94baebdbb29b3ca418ce91574330287016', '37', '2.50');
INSERT INTO `sampling_media_order` VALUES ('1271', '0', '2019-11-21 21:07:06', null, '1', null, '1', '20191121210706332', '557852109d224fad0512492d9a3df5dd5737a9101574097929356', '66', '2.15');
INSERT INTO `sampling_media_order` VALUES ('1272', '0', '2019-11-21 21:07:20', null, '1', null, '1', '20191121210720565', '557852109d224fad0512492d9a3df5dd5737a9101574097929356', '62', '2.53');
INSERT INTO `sampling_media_order` VALUES ('1273', '0', '2019-11-21 21:08:09', null, '1', null, '1', '20191121210809108', '683929567651e2766ef74dac948f10da4f8aef041574329582752', '67', '2.63');
INSERT INTO `sampling_media_order` VALUES ('1274', '0', '2019-11-21 21:08:29', null, '1', null, '1', '20191121210829579', '682440642f98ab1034984ae3a715f4f920c8fe871574333265810', '38', '2.19');
INSERT INTO `sampling_media_order` VALUES ('1275', '0', '2019-11-21 21:09:28', null, '1', null, '1', '20191121210928661', '683929567651e2766ef74dac948f10da4f8aef041574329582752', '94', '2.63');
INSERT INTO `sampling_media_order` VALUES ('1276', '0', '2019-11-21 21:10:19', null, '1', null, '1', '20191121211019205', '66120857601f621fdd064669ab545b9a20ef13b81574331611767', '94', '2.36');
INSERT INTO `sampling_media_order` VALUES ('1277', '0', '2019-11-21 21:10:24', null, '1', null, '1', '20191121211024248', '682440642f98ab1034984ae3a715f4f920c8fe871574333265810', '107', '2.48');
INSERT INTO `sampling_media_order` VALUES ('1278', '0', '2019-11-21 21:10:59', null, '1', null, '1', '20191121211059511', '14771747b5d5b340c8f1471f86a1906cd1eecee71574341833579', '18', '2.86');
INSERT INTO `sampling_media_order` VALUES ('1279', '0', '2019-11-21 21:21:20', null, '1', null, '1', '20191121212120894', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '25', '2.61');
INSERT INTO `sampling_media_order` VALUES ('1280', '0', '2019-11-21 21:23:01', null, '1', null, '1', '20191121212301429', '18352454a4fda03fd6e44ac585a80d55f3ba53361574328965959', '38', '2.58');
INSERT INTO `sampling_media_order` VALUES ('1281', '0', '2019-11-21 21:23:50', null, '1', null, '1', '20191121212350367', '18352454a4fda03fd6e44ac585a80d55f3ba53361574328965959', '57', '2.96');
INSERT INTO `sampling_media_order` VALUES ('1282', '0', '2019-11-21 21:24:21', null, '1', null, '1', '20191121212421105', '7437630447617c9dccaa48c689a16f22c69818891574342633526', '63', '2.19');
INSERT INTO `sampling_media_order` VALUES ('1283', '0', '2019-11-21 21:24:46', null, '1', null, '1', '20191121212446670', '18352454a4fda03fd6e44ac585a80d55f3ba53361574328965959', '65', '2.98');
INSERT INTO `sampling_media_order` VALUES ('1284', '0', '2019-11-21 21:25:07', null, '1', null, '1', '20191121212507678', '18352454a4fda03fd6e44ac585a80d55f3ba53361574328965959', '17', '2.16');
INSERT INTO `sampling_media_order` VALUES ('1285', '0', '2019-11-21 21:25:26', null, '1', null, '1', '20191121212526293', '7437630447617c9dccaa48c689a16f22c69818891574342633526', '59', '2.29');
INSERT INTO `sampling_media_order` VALUES ('1286', '0', '2019-11-21 21:25:35', null, '1', null, '1', '20191121212535833', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '81', '2.82');
INSERT INTO `sampling_media_order` VALUES ('1287', '0', '2019-11-21 21:26:11', null, '1', null, '1', '20191121212611833', '7437630447617c9dccaa48c689a16f22c69818891574342633526', '41', '2.09');
INSERT INTO `sampling_media_order` VALUES ('1288', '0', '2019-11-21 21:30:05', null, '1', null, '1', '20191121213005256', '52908930b3176daf96dc43ae9dd8acd41d54bfb01574329320756', '40', '2.70');
INSERT INTO `sampling_media_order` VALUES ('1289', '0', '2019-11-21 21:33:28', null, '1', null, '1', '20191121213328371', '49302028e0b4b8c6d0fc4fe398f5bf2c603dfd891574332073987', '103', '2.44');
INSERT INTO `sampling_media_order` VALUES ('1290', '0', '2019-11-21 21:34:43', null, '1', null, '1', '20191121213443327', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '12', '2.08');
INSERT INTO `sampling_media_order` VALUES ('1291', '0', '2019-11-21 21:37:37', null, '1', null, '1', '20191121213737802', '5377469682156068edac4964b718d2f50632dacb1574343446864', '64', '2.14');
INSERT INTO `sampling_media_order` VALUES ('1292', '0', '2019-11-21 21:38:29', null, '1', null, '1', '20191121213829711', '889536223199240ad83d4c788c63e83339b8ade91574329654220', '59', '2.21');
INSERT INTO `sampling_media_order` VALUES ('1293', '0', '2019-11-21 21:38:38', null, '1', null, '1', '20191121213838927', '369942307d5b393da1c94baebdbb29b3ca418ce91574330287016', '34', '2.79');
INSERT INTO `sampling_media_order` VALUES ('1294', '0', '2019-11-21 21:40:30', null, '1', null, '1', '20191121214030289', '889536223199240ad83d4c788c63e83339b8ade91574329654220', '93', '2.87');
INSERT INTO `sampling_media_order` VALUES ('1295', '0', '2019-11-21 21:41:45', null, '1', null, '1', '20191121214145929', '295232591751e413026742a0b10f62b1786a30ed1573481520448', '80', '2.93');
INSERT INTO `sampling_media_order` VALUES ('1296', '0', '2019-11-21 21:43:25', null, '1', null, '1', '20191121214325426', '295232591751e413026742a0b10f62b1786a30ed1573481520448', '51', '2.36');
INSERT INTO `sampling_media_order` VALUES ('1297', '0', '2019-11-21 21:44:08', null, '1', null, '1', '20191121214408844', '295232591751e413026742a0b10f62b1786a30ed1573481520448', '57', '2.37');
INSERT INTO `sampling_media_order` VALUES ('1298', '0', '2019-11-21 21:44:30', null, '1', null, '1', '20191121214430192', '295232591751e413026742a0b10f62b1786a30ed1573481520448', '38', '2.97');
INSERT INTO `sampling_media_order` VALUES ('1299', '0', '2019-11-21 21:44:46', null, '1', null, '1', '20191121214446700', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '12', '2.16');
INSERT INTO `sampling_media_order` VALUES ('1300', '0', '2019-11-21 21:45:33', null, '1', null, '1', '20191121214533988', '295232591751e413026742a0b10f62b1786a30ed1573481520448', '32', '2.24');
INSERT INTO `sampling_media_order` VALUES ('1301', '0', '2019-11-21 21:46:11', null, '1', null, '1', '20191121214611469', '295232591751e413026742a0b10f62b1786a30ed1573481520448', '98', '2.94');
INSERT INTO `sampling_media_order` VALUES ('1302', '0', '2019-11-21 21:46:13', null, '1', null, '1', '20191121214613357', '633437307956a48610d247aa924248ecdf739f9f1574343926195', '70', '2.67');
INSERT INTO `sampling_media_order` VALUES ('1303', '0', '2019-11-21 21:46:56', null, '1', null, '1', '20191121214656309', '5377469682156068edac4964b718d2f50632dacb1574343446864', '91', '2.73');
INSERT INTO `sampling_media_order` VALUES ('1304', '0', '2019-11-21 21:47:10', null, '1', null, '1', '20191121214710224', '88525516cfe23e54c4934982805f91d8c472a0c41573049796543', '61', '4.17');
INSERT INTO `sampling_media_order` VALUES ('1305', '0', '2019-11-21 21:47:50', null, '1', null, '1', '20191121214750529', '633437307956a48610d247aa924248ecdf739f9f1574343926195', '69', '2.20');
INSERT INTO `sampling_media_order` VALUES ('1306', '0', '2019-11-21 21:52:19', null, '1', null, '1', '20191121215219613', '889536223199240ad83d4c788c63e83339b8ade91574329654220', '48', '2.39');
INSERT INTO `sampling_media_order` VALUES ('1307', '0', '2019-11-21 21:57:22', null, '1', null, '1', '20191121215722275', '5146499223dc7884db184d2bbd37eab09ff7786b1574328981511', '42', '2.40');
INSERT INTO `sampling_media_order` VALUES ('1308', '0', '2019-11-21 21:57:29', null, '1', null, '1', '20191121215729132', '8332411243c44e6bd10b45438ca83dbbf95bbe501574329085846', '76', '2.19');
INSERT INTO `sampling_media_order` VALUES ('1309', '0', '2019-11-21 21:59:22', null, '1', null, '1', '20191121215922139', '8332411243c44e6bd10b45438ca83dbbf95bbe501574329085846', '46', '2.94');
INSERT INTO `sampling_media_order` VALUES ('1310', '0', '2019-11-21 22:01:02', null, '1', null, '1', '20191121220102515', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '62', '2.16');
INSERT INTO `sampling_media_order` VALUES ('1311', '0', '2019-11-21 22:01:38', null, '1', null, '1', '20191121220138682', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '35', '2.51');
INSERT INTO `sampling_media_order` VALUES ('1312', '0', '2019-11-21 22:02:03', null, '1', null, '1', '20191121220203879', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '99', '2.93');
INSERT INTO `sampling_media_order` VALUES ('1313', '0', '2019-11-21 22:02:27', null, '1', null, '1', '20191121220227888', '5146499223dc7884db184d2bbd37eab09ff7786b1574328981511', '22', '2.66');
INSERT INTO `sampling_media_order` VALUES ('1314', '0', '2019-11-21 22:02:50', null, '1', null, '1', '20191121220250192', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '92', '2.07');
INSERT INTO `sampling_media_order` VALUES ('1315', '0', '2019-11-21 22:03:28', null, '1', null, '1', '20191121220328206', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '84', '2.98');
INSERT INTO `sampling_media_order` VALUES ('1316', '0', '2019-11-21 22:04:21', null, '1', null, '1', '20191121220421958', '5146499223dc7884db184d2bbd37eab09ff7786b1574328981511', '67', '2.52');
INSERT INTO `sampling_media_order` VALUES ('1317', '0', '2019-11-21 22:07:44', null, '1', null, '1', '20191121220744449', '73353834913bbee04af0420db08b10938fe31af41574341234416', '94', '2.96');
INSERT INTO `sampling_media_order` VALUES ('1318', '0', '2019-11-21 22:08:07', null, '1', null, '1', '20191121220807679', '23564061272e8314d1974d29a72c6ecc005c00191574328988661', '64', '2.30');
INSERT INTO `sampling_media_order` VALUES ('1319', '0', '2019-11-21 22:09:55', null, '1', null, '1', '20191121220955155', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '16', '2.53');
INSERT INTO `sampling_media_order` VALUES ('1320', '0', '2019-11-21 22:11:34', null, '1', null, '1', '20191121221134898', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '84', '2.71');
INSERT INTO `sampling_media_order` VALUES ('1321', '0', '2019-11-21 22:13:36', null, '1', null, '1', '20191121221336396', '84314629f444d1208bc44070ad4bbb658e17188f1574345573802', '96', '2.99');
INSERT INTO `sampling_media_order` VALUES ('1322', '0', '2019-11-21 22:13:36', null, '1', null, '1', '20191121221336644', '84314629f444d1208bc44070ad4bbb658e17188f1574345573802', '96', '2.51');
INSERT INTO `sampling_media_order` VALUES ('1323', '0', '2019-11-21 22:13:41', null, '1', null, '1', '20191121221341330', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '37', '2.59');
INSERT INTO `sampling_media_order` VALUES ('1324', '0', '2019-11-21 22:14:31', null, '1', null, '1', '20191121221431318', '453197291337c164d6154c329a0cf56b6133722b1574331051473', '40', '2.81');
INSERT INTO `sampling_media_order` VALUES ('1325', '0', '2019-11-21 22:15:18', null, '1', null, '1', '20191121221518300', '84305935e5ea08bf99aa45b19ea096136a02f17a1574329017011', '97', '2.55');
INSERT INTO `sampling_media_order` VALUES ('1326', '0', '2019-11-21 22:15:40', null, '1', null, '1', '20191121221540198', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '34', '2.39');
INSERT INTO `sampling_media_order` VALUES ('1327', '0', '2019-11-21 22:15:52', null, '1', null, '1', '20191121221552185', '84314629f444d1208bc44070ad4bbb658e17188f1574345573802', '51', '2.14');
INSERT INTO `sampling_media_order` VALUES ('1328', '0', '2019-11-21 22:15:55', null, '1', null, '1', '20191121221555110', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '51', '2.25');
INSERT INTO `sampling_media_order` VALUES ('1329', '0', '2019-11-21 22:16:01', null, '1', null, '1', '20191121221601490', '453197291337c164d6154c329a0cf56b6133722b1574331051473', '54', '2.04');
INSERT INTO `sampling_media_order` VALUES ('1330', '0', '2019-11-21 22:16:44', null, '1', null, '1', '20191121221644956', '453197291337c164d6154c329a0cf56b6133722b1574331051473', '51', '2.42');
INSERT INTO `sampling_media_order` VALUES ('1331', '0', '2019-11-21 22:17:11', null, '1', null, '1', '20191121221711287', '453197291337c164d6154c329a0cf56b6133722b1574331051473', '38', '2.79');
INSERT INTO `sampling_media_order` VALUES ('1332', '0', '2019-11-21 22:18:35', null, '1', null, '1', '20191121221835110', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '34', '2.01');
INSERT INTO `sampling_media_order` VALUES ('1333', '0', '2019-11-21 22:19:11', null, '1', null, '1', '20191121221911537', '84305935e5ea08bf99aa45b19ea096136a02f17a1574329017011', '81', '2.41');
INSERT INTO `sampling_media_order` VALUES ('1334', '0', '2019-11-21 22:21:29', null, '1', null, '1', '20191121222129331', '23564061272e8314d1974d29a72c6ecc005c00191574328988661', '65', '2.30');
INSERT INTO `sampling_media_order` VALUES ('1335', '0', '2019-11-21 22:22:23', null, '1', null, '1', '20191121222223189', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '95', '2.35');
INSERT INTO `sampling_media_order` VALUES ('1336', '0', '2019-11-21 22:24:30', null, '1', null, '1', '20191121222430276', '84305935e5ea08bf99aa45b19ea096136a02f17a1574329017011', '30', '2.47');
INSERT INTO `sampling_media_order` VALUES ('1337', '0', '2019-11-21 22:24:36', null, '1', null, '1', '20191121222436316', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '68', '2.78');
INSERT INTO `sampling_media_order` VALUES ('1338', '0', '2019-11-21 22:24:42', null, '1', null, '1', '20191121222442502', '84305935e5ea08bf99aa45b19ea096136a02f17a1574329017011', '62', '2.26');
INSERT INTO `sampling_media_order` VALUES ('1339', '0', '2019-11-21 22:25:25', null, '1', null, '1', '20191121222525336', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '69', '2.60');
INSERT INTO `sampling_media_order` VALUES ('1340', '0', '2019-11-21 22:25:29', null, '1', null, '1', '20191121222529151', '84305935e5ea08bf99aa45b19ea096136a02f17a1574329017011', '19', '2.13');
INSERT INTO `sampling_media_order` VALUES ('1341', '0', '2019-11-21 22:26:05', null, '1', null, '1', '20191121222605542', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '55', '2.04');
INSERT INTO `sampling_media_order` VALUES ('1342', '0', '2019-11-21 22:27:41', null, '1', null, '1', '20191121222741733', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '84', '2.12');
INSERT INTO `sampling_media_order` VALUES ('1343', '0', '2019-11-21 22:28:33', null, '1', null, '1', '20191121222833144', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '101', '2.91');
INSERT INTO `sampling_media_order` VALUES ('1344', '0', '2019-11-21 22:29:30', null, '1', null, '1', '20191121222930372', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '40', '2.30');
INSERT INTO `sampling_media_order` VALUES ('1345', '0', '2019-11-21 22:30:09', null, '1', null, '1', '20191121223009870', '84305935e5ea08bf99aa45b19ea096136a02f17a1574329017011', '81', '2.63');
INSERT INTO `sampling_media_order` VALUES ('1346', '0', '2019-11-21 22:30:44', null, '1', null, '1', '20191121223044129', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '32', '2.83');
INSERT INTO `sampling_media_order` VALUES ('1347', '0', '2019-11-21 22:31:32', null, '1', null, '1', '20191121223132592', '84305935e5ea08bf99aa45b19ea096136a02f17a1574329017011', '92', '2.28');
INSERT INTO `sampling_media_order` VALUES ('1348', '0', '2019-11-21 22:35:01', null, '1', null, '1', '20191121223501214', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '98', '2.14');
INSERT INTO `sampling_media_order` VALUES ('1349', '0', '2019-11-21 22:35:21', null, '1', null, '1', '20191121223521227', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '42', '2.24');
INSERT INTO `sampling_media_order` VALUES ('1350', '0', '2019-11-21 22:35:45', null, '1', null, '1', '20191121223545304', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '34', '2.59');
INSERT INTO `sampling_media_order` VALUES ('1351', '0', '2019-11-21 22:35:50', null, '1', null, '1', '20191121223550512', '84305935e5ea08bf99aa45b19ea096136a02f17a1574329017011', '25', '2.75');
INSERT INTO `sampling_media_order` VALUES ('1352', '0', '2019-11-21 22:36:11', null, '1', null, '1', '20191121223611669', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '32', '2.93');
INSERT INTO `sampling_media_order` VALUES ('1353', '0', '2019-11-21 22:36:34', null, '1', null, '1', '20191121223634499', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '40', '2.50');
INSERT INTO `sampling_media_order` VALUES ('1354', '0', '2019-11-21 22:37:21', null, '1', null, '1', '20191121223721822', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '104', '2.72');
INSERT INTO `sampling_media_order` VALUES ('1355', '0', '2019-11-21 22:37:26', null, '1', null, '1', '20191121223726422', '89174248178e89b9e91d49378d360449de7642821572985035878', '90', '2.95');
INSERT INTO `sampling_media_order` VALUES ('1356', '0', '2019-11-21 22:37:39', null, '1', null, '1', '20191121223739996', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '70', '2.15');
INSERT INTO `sampling_media_order` VALUES ('1357', '0', '2019-11-21 22:37:39', null, '1', null, '1', '20191121223739541', '89174248178e89b9e91d49378d360449de7642821572985035878', '22', '2.80');
INSERT INTO `sampling_media_order` VALUES ('1358', '0', '2019-11-21 22:37:52', null, '1', null, '1', '20191121223752214', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '25', '2.75');
INSERT INTO `sampling_media_order` VALUES ('1359', '0', '2019-11-21 22:38:09', null, '1', null, '1', '20191121223809311', '89174248178e89b9e91d49378d360449de7642821572985035878', '47', '2.60');
INSERT INTO `sampling_media_order` VALUES ('1360', '0', '2019-11-21 22:38:16', null, '1', null, '1', '20191121223816262', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '55', '2.41');
INSERT INTO `sampling_media_order` VALUES ('1361', '0', '2019-11-21 22:38:19', null, '1', null, '1', '20191121223819363', '89174248178e89b9e91d49378d360449de7642821572985035878', '50', '2.15');
INSERT INTO `sampling_media_order` VALUES ('1362', '0', '2019-11-21 22:38:55', null, '1', null, '1', '20191121223855969', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '80', '2.71');
INSERT INTO `sampling_media_order` VALUES ('1363', '0', '2019-11-21 22:39:10', null, '1', null, '1', '20191121223910999', '89174248178e89b9e91d49378d360449de7642821572985035878', '51', '2.79');
INSERT INTO `sampling_media_order` VALUES ('1364', '0', '2019-11-21 22:39:13', null, '1', null, '1', '20191121223913435', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '37', '2.41');
INSERT INTO `sampling_media_order` VALUES ('1365', '0', '2019-11-21 22:39:29', null, '1', null, '1', '20191121223929981', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '86', '2.01');
INSERT INTO `sampling_media_order` VALUES ('1366', '0', '2019-11-21 22:39:46', null, '1', null, '1', '20191121223946982', '89174248178e89b9e91d49378d360449de7642821572985035878', '29', '2.37');
INSERT INTO `sampling_media_order` VALUES ('1367', '0', '2019-11-21 22:40:09', null, '1', null, '1', '20191121224009889', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '58', '2.37');
INSERT INTO `sampling_media_order` VALUES ('1368', '0', '2019-11-21 22:41:35', null, '1', null, '1', '20191121224135173', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '83', '2.52');
INSERT INTO `sampling_media_order` VALUES ('1369', '0', '2019-11-21 22:42:49', null, '1', null, '1', '20191121224249651', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '28', '2.96');
INSERT INTO `sampling_media_order` VALUES ('1370', '0', '2019-11-21 22:42:50', null, '1', null, '1', '20191121224250455', '369942307d5b393da1c94baebdbb29b3ca418ce91574330287016', '35', '2.80');
INSERT INTO `sampling_media_order` VALUES ('1371', '0', '2019-11-21 22:43:25', null, '1', null, '1', '20191121224325306', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '29', '2.78');
INSERT INTO `sampling_media_order` VALUES ('1372', '0', '2019-11-21 22:44:04', null, '1', null, '1', '20191121224404847', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '90', '2.13');
INSERT INTO `sampling_media_order` VALUES ('1373', '0', '2019-11-21 22:46:40', null, '1', null, '1', '20191121224640127', '369942307d5b393da1c94baebdbb29b3ca418ce91574330287016', '38', '2.15');
INSERT INTO `sampling_media_order` VALUES ('1374', '0', '2019-11-21 22:47:50', null, '1', null, '1', '20191121224750757', '39726278affef7ad44ef41d6aec557600161a9171574329404947', '85', '2.35');
INSERT INTO `sampling_media_order` VALUES ('1375', '0', '2019-11-21 22:48:38', null, '1', null, '1', '20191121224838568', '39726278affef7ad44ef41d6aec557600161a9171574329404947', '42', '2.78');
INSERT INTO `sampling_media_order` VALUES ('1376', '0', '2019-11-21 22:49:07', null, '1', null, '1', '20191121224907171', '369942307d5b393da1c94baebdbb29b3ca418ce91574330287016', '91', '2.53');
INSERT INTO `sampling_media_order` VALUES ('1377', '0', '2019-11-21 22:50:16', null, '1', null, '1', '20191121225016271', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '37', '2.80');
INSERT INTO `sampling_media_order` VALUES ('1378', '0', '2019-11-21 22:54:15', null, '1', null, '1', '20191121225415192', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '17', '2.38');
INSERT INTO `sampling_media_order` VALUES ('1379', '0', '2019-11-21 22:54:53', null, '1', null, '1', '20191121225453208', '92220540aa4ab2ac3c914e58b44c267ea18c880e1574348055111', '46', '2.51');
INSERT INTO `sampling_media_order` VALUES ('1380', '0', '2019-11-21 22:57:47', null, '1', null, '1', '20191121225747942', '453197291337c164d6154c329a0cf56b6133722b1574331051473', '66', '2.85');
INSERT INTO `sampling_media_order` VALUES ('1381', '0', '2019-11-21 22:57:48', null, '1', null, '1', '20191121225748928', '92220540aa4ab2ac3c914e58b44c267ea18c880e1574348055111', '51', '2.82');
INSERT INTO `sampling_media_order` VALUES ('1382', '0', '2019-11-21 22:58:20', null, '1', null, '1', '20191121225820487', '453197291337c164d6154c329a0cf56b6133722b1574331051473', '37', '2.96');
INSERT INTO `sampling_media_order` VALUES ('1383', '0', '2019-11-21 22:58:38', null, '1', null, '1', '20191121225838473', '514841782efa7cf0de1a45d2b4649940db30c7321574274134010', '54', '2.08');
INSERT INTO `sampling_media_order` VALUES ('1384', '0', '2019-11-21 22:58:48', null, '1', null, '1', '20191121225848577', '92220540aa4ab2ac3c914e58b44c267ea18c880e1574348055111', '106', '2.90');
INSERT INTO `sampling_media_order` VALUES ('1385', '0', '2019-11-21 22:58:56', null, '1', null, '1', '20191121225856170', '514841782efa7cf0de1a45d2b4649940db30c7321574274134010', '39', '2.20');
INSERT INTO `sampling_media_order` VALUES ('1386', '0', '2019-11-21 22:59:06', null, '1', null, '1', '20191121225906229', '514841782efa7cf0de1a45d2b4649940db30c7321574274134010', '31', '2.62');
INSERT INTO `sampling_media_order` VALUES ('1387', '0', '2019-11-21 22:59:12', null, '1', null, '1', '20191121225912843', '92220540aa4ab2ac3c914e58b44c267ea18c880e1574348055111', '59', '2.58');
INSERT INTO `sampling_media_order` VALUES ('1388', '0', '2019-11-21 22:59:17', null, '1', null, '1', '20191121225917664', '514841782efa7cf0de1a45d2b4649940db30c7321574274134010', '74', '2.45');
INSERT INTO `sampling_media_order` VALUES ('1389', '0', '2019-11-21 22:59:35', null, '1', null, '1', '20191121225935344', '514841782efa7cf0de1a45d2b4649940db30c7321574274134010', '96', '2.03');
INSERT INTO `sampling_media_order` VALUES ('1390', '0', '2019-11-21 22:59:47', null, '1', null, '1', '20191121225947731', '514841782efa7cf0de1a45d2b4649940db30c7321574274134010', '43', '2.14');
INSERT INTO `sampling_media_order` VALUES ('1391', '0', '2019-11-21 23:00:15', null, '1', null, '1', '20191121230015574', '514841782efa7cf0de1a45d2b4649940db30c7321574274134010', '21', '2.52');
INSERT INTO `sampling_media_order` VALUES ('1392', '0', '2019-11-21 23:00:36', null, '1', null, '1', '20191121230036374', '514841782efa7cf0de1a45d2b4649940db30c7321574274134010', '51', '2.65');
INSERT INTO `sampling_media_order` VALUES ('1393', '0', '2019-11-21 23:00:38', null, '1', null, '1', '20191121230038217', '63918042a581ebecf0a04b42bb247f4c0855ca861574329023393', '34', '2.45');
INSERT INTO `sampling_media_order` VALUES ('1394', '0', '2019-11-21 23:00:42', null, '1', null, '1', '20191121230042162', '92220540aa4ab2ac3c914e58b44c267ea18c880e1574348055111', '47', '2.95');
INSERT INTO `sampling_media_order` VALUES ('1395', '0', '2019-11-21 23:01:12', null, '1', null, '1', '20191121230112515', '92220540aa4ab2ac3c914e58b44c267ea18c880e1574348055111', '59', '2.49');
INSERT INTO `sampling_media_order` VALUES ('1396', '0', '2019-11-21 23:03:36', null, '1', null, '1', '20191121230336889', '682440642f98ab1034984ae3a715f4f920c8fe871574333265810', '107', '2.63');
INSERT INTO `sampling_media_order` VALUES ('1397', '0', '2019-11-21 23:03:56', null, '1', null, '1', '20191121230356763', '8245680079a3a872d41d4c20acc17c943c3c56aa1574331763828', '50', '2.36');
INSERT INTO `sampling_media_order` VALUES ('1398', '0', '2019-11-21 23:05:03', null, '1', null, '1', '20191121230503729', '682440642f98ab1034984ae3a715f4f920c8fe871574333265810', '86', '2.45');
INSERT INTO `sampling_media_order` VALUES ('1399', '0', '2019-11-21 23:05:27', null, '1', null, '1', '20191121230527499', '8245680079a3a872d41d4c20acc17c943c3c56aa1574331763828', '16', '2.91');
INSERT INTO `sampling_media_order` VALUES ('1400', '0', '2019-11-21 23:15:29', null, '1', null, '1', '20191121231529723', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '17', '2.62');
INSERT INTO `sampling_media_order` VALUES ('1401', '0', '2019-11-21 23:16:04', null, '1', null, '1', '20191121231604902', '39726278affef7ad44ef41d6aec557600161a9171574329404947', '73', '2.47');
INSERT INTO `sampling_media_order` VALUES ('1402', '0', '2019-11-21 23:16:20', null, '1', null, '1', '20191121231620418', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '51', '2.12');
INSERT INTO `sampling_media_order` VALUES ('1403', '0', '2019-11-21 23:16:53', null, '1', null, '1', '20191121231653240', '39726278affef7ad44ef41d6aec557600161a9171574329404947', '81', '2.54');
INSERT INTO `sampling_media_order` VALUES ('1404', '0', '2019-11-21 23:16:58', null, '1', null, '1', '20191121231658886', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '58', '2.09');
INSERT INTO `sampling_media_order` VALUES ('1405', '0', '2019-11-21 23:17:32', null, '1', null, '1', '20191121231732102', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '94', '2.66');
INSERT INTO `sampling_media_order` VALUES ('1406', '0', '2019-11-21 23:17:37', null, '1', null, '1', '20191121231737543', '39726278affef7ad44ef41d6aec557600161a9171574329404947', '47', '2.82');
INSERT INTO `sampling_media_order` VALUES ('1407', '0', '2019-11-21 23:17:52', null, '1', null, '1', '20191121231752119', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '40', '2.97');
INSERT INTO `sampling_media_order` VALUES ('1408', '0', '2019-11-21 23:18:28', null, '1', null, '1', '20191121231828638', '39726278affef7ad44ef41d6aec557600161a9171574329404947', '55', '2.69');
INSERT INTO `sampling_media_order` VALUES ('1409', '0', '2019-11-21 23:22:30', null, '1', null, '1', '20191121232230713', '90739389dc50adacc8b2468a8fa4444e59c966a21574330550779', '63', '2.94');
INSERT INTO `sampling_media_order` VALUES ('1410', '0', '2019-11-21 23:23:13', null, '1', null, '1', '20191121232313810', '90739389dc50adacc8b2468a8fa4444e59c966a21574330550779', '32', '2.35');
INSERT INTO `sampling_media_order` VALUES ('1411', '0', '2019-11-21 23:36:11', null, '1', null, '1', '20191121233611233', '11870226b018f2df0fbc45958ab7792839b618821574328951442', '102', '2.41');
INSERT INTO `sampling_media_order` VALUES ('1412', '0', '2019-11-21 23:38:34', null, '1', null, '1', '20191121233834280', '11870226b018f2df0fbc45958ab7792839b618821574328951442', '38', '2.28');
INSERT INTO `sampling_media_order` VALUES ('1413', '0', '2019-11-21 23:41:07', null, '1', null, '1', '20191121234107141', '11870226b018f2df0fbc45958ab7792839b618821574328951442', '70', '2.30');
INSERT INTO `sampling_media_order` VALUES ('1414', '0', '2019-11-21 23:43:14', null, '1', null, '1', '20191121234314953', '31117455068035637f74459291d61b7a300ccffc1574329670664', '64', '2.46');
INSERT INTO `sampling_media_order` VALUES ('1415', '0', '2019-11-21 23:43:32', null, '1', null, '1', '20191121234332143', '31117455068035637f74459291d61b7a300ccffc1574329670664', '38', '2.91');
INSERT INTO `sampling_media_order` VALUES ('1416', '0', '2019-11-21 23:43:45', null, '1', null, '1', '20191121234345710', '42582555e10d75ec51914f63b977de7ab451edb11574329770294', '57', '2.76');
INSERT INTO `sampling_media_order` VALUES ('1417', '0', '2019-11-21 23:44:24', null, '1', null, '1', '20191121234424788', '42582555e10d75ec51914f63b977de7ab451edb11574329770294', '93', '2.30');
INSERT INTO `sampling_media_order` VALUES ('1418', '0', '2019-11-21 23:44:30', null, '1', null, '1', '20191121234430451', '31117455068035637f74459291d61b7a300ccffc1574329670664', '24', '2.71');
INSERT INTO `sampling_media_order` VALUES ('1419', '0', '2019-11-21 23:46:02', null, '1', null, '1', '20191121234602957', '31117455068035637f74459291d61b7a300ccffc1574329670664', '83', '2.17');
INSERT INTO `sampling_media_order` VALUES ('1420', '0', '2019-11-21 23:46:56', null, '1', null, '1', '20191121234656774', '31117455068035637f74459291d61b7a300ccffc1574329670664', '63', '2.97');
INSERT INTO `sampling_media_order` VALUES ('1421', '0', '2019-11-21 23:51:59', null, '1', null, '1', '20191121235159690', '345801866d245a1b1fbc4cbfb36e25f1e33df19e1574334255941', '79', '2.58');
INSERT INTO `sampling_media_order` VALUES ('1422', '0', '2019-11-21 23:52:50', null, '1', null, '1', '20191121235250739', '345801866d245a1b1fbc4cbfb36e25f1e33df19e1574334255941', '68', '2.13');
INSERT INTO `sampling_media_order` VALUES ('1423', '0', '2019-11-21 23:54:02', null, '1', null, '1', '20191121235402812', '345801866d245a1b1fbc4cbfb36e25f1e33df19e1574334255941', '12', '2.94');
INSERT INTO `sampling_media_order` VALUES ('1424', '0', '2019-11-21 23:59:57', null, '1', null, '1', '20191121235957853', '9436015194637eb335ed4bd6b67f1ccb5ce7a2281574339692372', '49', '2.13');
INSERT INTO `sampling_media_order` VALUES ('1425', '0', '2019-11-22 00:01:50', null, '1', null, '1', '20191122000150278', '9436015194637eb335ed4bd6b67f1ccb5ce7a2281574339692372', '55', '2.72');
INSERT INTO `sampling_media_order` VALUES ('1426', '0', '2019-11-22 00:02:40', null, '1', null, '1', '20191122000240744', '9436015194637eb335ed4bd6b67f1ccb5ce7a2281574339692372', '15', '2.33');
INSERT INTO `sampling_media_order` VALUES ('1427', '0', '2019-11-22 00:03:49', null, '1', null, '1', '20191122000349883', '9436015194637eb335ed4bd6b67f1ccb5ce7a2281574339692372', '42', '2.08');
INSERT INTO `sampling_media_order` VALUES ('1428', '0', '2019-11-22 00:04:37', null, '1', null, '1', '20191122000437108', '9436015194637eb335ed4bd6b67f1ccb5ce7a2281574339692372', '85', '2.92');
INSERT INTO `sampling_media_order` VALUES ('1429', '0', '2019-11-22 00:05:18', null, '1', null, '1', '20191122000518180', '9436015194637eb335ed4bd6b67f1ccb5ce7a2281574339692372', '93', '2.92');
INSERT INTO `sampling_media_order` VALUES ('1430', '0', '2019-11-22 00:06:10', null, '1', null, '1', '20191122000610642', '9436015194637eb335ed4bd6b67f1ccb5ce7a2281574339692372', '67', '2.64');
INSERT INTO `sampling_media_order` VALUES ('1431', '0', '2019-11-22 00:06:55', null, '1', null, '1', '20191122000655570', '9436015194637eb335ed4bd6b67f1ccb5ce7a2281574339692372', '18', '2.70');
INSERT INTO `sampling_media_order` VALUES ('1432', '0', '2019-11-22 00:08:17', null, '1', null, '1', '20191122000817141', '9436015194637eb335ed4bd6b67f1ccb5ce7a2281574339692372', '55', '2.39');
INSERT INTO `sampling_media_order` VALUES ('1433', '0', '2019-11-22 00:08:32', null, '1', null, '1', '20191122000832775', '9436015194637eb335ed4bd6b67f1ccb5ce7a2281574339692372', '19', '2.59');
INSERT INTO `sampling_media_order` VALUES ('1434', '0', '2019-11-22 00:19:00', null, '1', null, '1', '20191122001900551', '633437307956a48610d247aa924248ecdf739f9f1574343926195', '32', '2.44');
INSERT INTO `sampling_media_order` VALUES ('1435', '0', '2019-11-22 00:19:26', null, '1', null, '1', '20191122001926669', '633437307956a48610d247aa924248ecdf739f9f1574343926195', '46', '2.47');
INSERT INTO `sampling_media_order` VALUES ('1436', '0', '2019-11-22 00:19:39', null, '1', null, '1', '20191122001939500', '633437307956a48610d247aa924248ecdf739f9f1574343926195', '98', '2.46');
INSERT INTO `sampling_media_order` VALUES ('1437', '0', '2019-11-22 00:20:37', null, '1', null, '1', '20191122002037538', '633437307956a48610d247aa924248ecdf739f9f1574343926195', '73', '2.61');
INSERT INTO `sampling_media_order` VALUES ('1438', '0', '2019-11-22 00:24:00', null, '1', null, '1', '20191122002400156', '88091578f46605e8a5f74ae9bd58e6f21308d0511574353424980', '53', '2.58');
INSERT INTO `sampling_media_order` VALUES ('1439', '0', '2019-11-22 00:24:40', null, '1', null, '1', '20191122002440228', '88091578f46605e8a5f74ae9bd58e6f21308d0511574353424980', '42', '2.93');
INSERT INTO `sampling_media_order` VALUES ('1440', '0', '2019-11-22 00:25:33', null, '1', null, '1', '20191122002533548', '1322212365f7ce1aa4ae43ca96c994a672e8a1b31574353456076', '79', '2.88');
INSERT INTO `sampling_media_order` VALUES ('1441', '0', '2019-11-22 00:28:51', null, '1', null, '1', '20191122002851370', '88091578f46605e8a5f74ae9bd58e6f21308d0511574353424980', '52', '2.79');
INSERT INTO `sampling_media_order` VALUES ('1442', '0', '2019-11-22 00:37:18', null, '1', null, '1', '20191122003718480', '3951692519def813a33b4029a45012ff662d12ef1574328996808', '102', '2.27');
INSERT INTO `sampling_media_order` VALUES ('1443', '0', '2019-11-22 00:57:33', null, '1', null, '1', '20191122005733228', '18352454a4fda03fd6e44ac585a80d55f3ba53361574328965959', '105', '2.52');
INSERT INTO `sampling_media_order` VALUES ('1444', '0', '2019-11-22 00:58:20', null, '1', null, '1', '20191122005820628', '18352454a4fda03fd6e44ac585a80d55f3ba53361574328965959', '59', '2.47');
INSERT INTO `sampling_media_order` VALUES ('1445', '0', '2019-11-22 00:59:19', null, '1', null, '1', '20191122005919362', '18352454a4fda03fd6e44ac585a80d55f3ba53361574328965959', '94', '2.98');
INSERT INTO `sampling_media_order` VALUES ('1446', '0', '2019-11-22 01:00:34', null, '1', null, '1', '20191122010034642', '18352454a4fda03fd6e44ac585a80d55f3ba53361574328965959', '79', '2.51');
INSERT INTO `sampling_media_order` VALUES ('1447', '0', '2019-11-22 01:01:54', null, '1', null, '1', '20191122010154505', '18352454a4fda03fd6e44ac585a80d55f3ba53361574328965959', '79', '2.18');
INSERT INTO `sampling_media_order` VALUES ('1448', '0', '2019-11-22 01:32:43', null, '1', null, '1', '20191122013243150', '196853989450c6b27d2041149e856563bdfbc6401574357548910', '96', '2.75');
INSERT INTO `sampling_media_order` VALUES ('1449', '0', '2019-11-22 01:34:32', null, '1', null, '1', '20191122013432612', '196853989450c6b27d2041149e856563bdfbc6401574357548910', '87', '2.38');
INSERT INTO `sampling_media_order` VALUES ('1450', '0', '2019-11-22 01:35:24', null, '1', null, '1', '20191122013524117', '196853989450c6b27d2041149e856563bdfbc6401574357548910', '95', '2.42');
INSERT INTO `sampling_media_order` VALUES ('1451', '0', '2019-11-22 01:36:13', null, '1', null, '1', '20191122013613396', '196853989450c6b27d2041149e856563bdfbc6401574357548910', '67', '2.99');
INSERT INTO `sampling_media_order` VALUES ('1452', '0', '2019-11-22 01:37:22', null, '1', null, '1', '20191122013722470', '196853989450c6b27d2041149e856563bdfbc6401574357548910', '89', '2.08');
INSERT INTO `sampling_media_order` VALUES ('1453', '0', '2019-11-22 01:37:43', null, '1', null, '1', '20191122013743805', '196853989450c6b27d2041149e856563bdfbc6401574357548910', '64', '2.21');
INSERT INTO `sampling_media_order` VALUES ('1454', '0', '2019-11-22 01:39:25', null, '1', null, '1', '20191122013925249', '196853989450c6b27d2041149e856563bdfbc6401574357548910', '57', '2.02');
INSERT INTO `sampling_media_order` VALUES ('1455', '0', '2019-11-22 01:40:48', null, '1', null, '1', '20191122014048573', '196853989450c6b27d2041149e856563bdfbc6401574357548910', '32', '2.02');
INSERT INTO `sampling_media_order` VALUES ('1456', '0', '2019-11-22 01:41:05', null, '1', null, '1', '20191122014105907', '196853989450c6b27d2041149e856563bdfbc6401574357548910', '12', '2.92');
INSERT INTO `sampling_media_order` VALUES ('1457', '0', '2019-11-22 01:41:47', null, '1', null, '1', '20191122014147491', '196853989450c6b27d2041149e856563bdfbc6401574357548910', '12', '2.22');
INSERT INTO `sampling_media_order` VALUES ('1458', '0', '2019-11-22 01:42:04', null, '1', null, '1', '20191122014204589', '196853989450c6b27d2041149e856563bdfbc6401574357548910', '63', '2.96');
INSERT INTO `sampling_media_order` VALUES ('1459', '0', '2019-11-22 01:42:48', null, '1', null, '1', '20191122014248992', '196853989450c6b27d2041149e856563bdfbc6401574357548910', '12', '2.50');
INSERT INTO `sampling_media_order` VALUES ('1460', '0', '2019-11-22 01:43:05', null, '1', null, '1', '20191122014305749', '196853989450c6b27d2041149e856563bdfbc6401574357548910', '51', '2.75');
INSERT INTO `sampling_media_order` VALUES ('1461', '0', '2019-11-22 01:46:03', null, '1', null, '1', '20191122014603555', '401623278f22d59d0da84e37bff7b01986c499e11574333319329', '49', '2.98');
INSERT INTO `sampling_media_order` VALUES ('1462', '0', '2019-11-22 01:50:06', null, '1', null, '1', '20191122015006129', '401623278f22d59d0da84e37bff7b01986c499e11574333319329', '68', '2.00');
INSERT INTO `sampling_media_order` VALUES ('1463', '0', '2019-11-22 01:51:36', null, '1', null, '1', '20191122015136286', '401623278f22d59d0da84e37bff7b01986c499e11574333319329', '69', '2.91');
INSERT INTO `sampling_media_order` VALUES ('1464', '0', '2019-11-22 01:51:47', null, '1', null, '1', '20191122015147513', '401623278f22d59d0da84e37bff7b01986c499e11574333319329', '98', '2.34');
INSERT INTO `sampling_media_order` VALUES ('1465', '0', '2019-11-22 01:58:00', null, '1', null, '1', '20191122015800986', '18352454a4fda03fd6e44ac585a80d55f3ba53361574328965959', '17', '2.85');
INSERT INTO `sampling_media_order` VALUES ('1466', '0', '2019-11-22 02:06:35', null, '1', null, '1', '20191122020635834', '18352454a4fda03fd6e44ac585a80d55f3ba53361574328965959', '74', '2.49');
INSERT INTO `sampling_media_order` VALUES ('1467', '0', '2019-11-22 02:07:02', null, '1', null, '1', '20191122020702985', '18352454a4fda03fd6e44ac585a80d55f3ba53361574328965959', '66', '2.70');
INSERT INTO `sampling_media_order` VALUES ('1468', '0', '2019-11-22 02:08:01', null, '1', null, '1', '20191122020801242', '252270404b65a2957dd3465abb0e77252e12c6af1574331967694', '53', '2.81');
INSERT INTO `sampling_media_order` VALUES ('1469', '0', '2019-11-22 02:08:26', null, '1', null, '1', '20191122020826413', '35207391e19598698f884311ae48356d6829b6f21574359691589', '67', '2.16');
INSERT INTO `sampling_media_order` VALUES ('1470', '0', '2019-11-22 02:08:39', null, '1', null, '1', '20191122020839711', '252270404b65a2957dd3465abb0e77252e12c6af1574331967694', '57', '2.66');
INSERT INTO `sampling_media_order` VALUES ('1471', '0', '2019-11-22 02:09:20', null, '1', null, '1', '20191122020920782', '252270404b65a2957dd3465abb0e77252e12c6af1574331967694', '64', '2.70');
INSERT INTO `sampling_media_order` VALUES ('1472', '0', '2019-11-22 02:10:30', null, '1', null, '1', '20191122021030656', '35207391e19598698f884311ae48356d6829b6f21574359691589', '104', '2.43');
INSERT INTO `sampling_media_order` VALUES ('1473', '0', '2019-11-22 02:17:58', null, '1', null, '1', '20191122021758498', '9436015194637eb335ed4bd6b67f1ccb5ce7a2281574339692372', '67', '2.64');
INSERT INTO `sampling_media_order` VALUES ('1474', '0', '2019-11-22 02:38:58', null, '1', null, '1', '20191122023858793', '42071277f6ab113b081b44f68f19918a33f71cf81574361506579', '102', '2.28');
INSERT INTO `sampling_media_order` VALUES ('1475', '0', '2019-11-22 02:41:20', null, '1', null, '1', '20191122024120978', '42071277f6ab113b081b44f68f19918a33f71cf81574361506579', '67', '2.55');
INSERT INTO `sampling_media_order` VALUES ('1476', '0', '2019-11-22 02:54:37', null, '1', null, '1', '20191122025437551', '9436015194637eb335ed4bd6b67f1ccb5ce7a2281574339692372', '25', '2.63');
INSERT INTO `sampling_media_order` VALUES ('1477', '0', '2019-11-22 02:55:22', null, '1', null, '1', '20191122025522259', '9436015194637eb335ed4bd6b67f1ccb5ce7a2281574339692372', '100', '2.04');
INSERT INTO `sampling_media_order` VALUES ('1478', '0', '2019-11-22 02:57:27', null, '1', null, '1', '20191122025727849', '9436015194637eb335ed4bd6b67f1ccb5ce7a2281574339692372', '44', '2.65');
INSERT INTO `sampling_media_order` VALUES ('1479', '0', '2019-11-22 02:58:20', null, '1', null, '1', '20191122025820471', '9436015194637eb335ed4bd6b67f1ccb5ce7a2281574339692372', '30', '2.34');
INSERT INTO `sampling_media_order` VALUES ('1480', '0', '2019-11-22 02:58:35', null, '1', null, '1', '20191122025835960', '9436015194637eb335ed4bd6b67f1ccb5ce7a2281574339692372', '23', '2.69');
INSERT INTO `sampling_media_order` VALUES ('1481', '0', '2019-11-22 02:59:21', null, '1', null, '1', '20191122025921339', '9436015194637eb335ed4bd6b67f1ccb5ce7a2281574339692372', '14', '2.89');
INSERT INTO `sampling_media_order` VALUES ('1482', '0', '2019-11-22 03:00:14', null, '1', null, '1', '20191122030014141', '9436015194637eb335ed4bd6b67f1ccb5ce7a2281574339692372', '74', '2.85');
INSERT INTO `sampling_media_order` VALUES ('1483', '0', '2019-11-22 03:01:10', null, '1', null, '1', '20191122030110762', '9436015194637eb335ed4bd6b67f1ccb5ce7a2281574339692372', '18', '2.23');
INSERT INTO `sampling_media_order` VALUES ('1484', '0', '2019-11-22 03:01:35', null, '1', null, '1', '20191122030135829', '9436015194637eb335ed4bd6b67f1ccb5ce7a2281574339692372', '109', '2.57');
INSERT INTO `sampling_media_order` VALUES ('1485', '0', '2019-11-22 03:02:22', null, '1', null, '1', '20191122030222396', '9436015194637eb335ed4bd6b67f1ccb5ce7a2281574339692372', '76', '2.94');
INSERT INTO `sampling_media_order` VALUES ('1486', '0', '2019-11-22 03:35:56', null, '1', null, '1', '20191122033556972', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '89', '2.09');
INSERT INTO `sampling_media_order` VALUES ('1487', '0', '2019-11-22 03:36:47', null, '1', null, '1', '20191122033647868', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '106', '2.38');
INSERT INTO `sampling_media_order` VALUES ('1488', '0', '2019-11-22 03:37:46', null, '1', null, '1', '20191122033746328', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '38', '2.80');
INSERT INTO `sampling_media_order` VALUES ('1489', '0', '2019-11-22 03:38:19', null, '1', null, '1', '20191122033819403', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '107', '2.92');
INSERT INTO `sampling_media_order` VALUES ('1490', '0', '2019-11-22 03:38:49', null, '1', null, '1', '20191122033849359', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '55', '2.56');
INSERT INTO `sampling_media_order` VALUES ('1491', '0', '2019-11-22 03:39:14', null, '1', null, '1', '20191122033914945', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '37', '2.33');
INSERT INTO `sampling_media_order` VALUES ('1492', '0', '2019-11-22 03:39:40', null, '1', null, '1', '20191122033940505', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '52', '2.78');
INSERT INTO `sampling_media_order` VALUES ('1493', '0', '2019-11-22 05:06:44', null, '1', null, '1', '20191122050644485', '66120857601f621fdd064669ab545b9a20ef13b81574331611767', '37', '2.98');
INSERT INTO `sampling_media_order` VALUES ('1494', '0', '2019-11-22 05:08:23', null, '1', null, '1', '20191122050823382', '23440809f720a50f87d94a0dba3dceeb62a11ec01574329083294', '90', '2.97');
INSERT INTO `sampling_media_order` VALUES ('1495', '0', '2019-11-22 05:09:21', null, '1', null, '1', '20191122050921764', '66120857601f621fdd064669ab545b9a20ef13b81574331611767', '99', '2.16');
INSERT INTO `sampling_media_order` VALUES ('1496', '0', '2019-11-22 05:10:00', null, '1', null, '1', '20191122051000144', '66120857601f621fdd064669ab545b9a20ef13b81574331611767', '38', '2.57');
INSERT INTO `sampling_media_order` VALUES ('1497', '0', '2019-11-22 05:44:57', null, '1', null, '1', '20191122054457860', '523021265bf253e5d294423fa04f06132b7d74b51574328963026', '60', '2.86');
INSERT INTO `sampling_media_order` VALUES ('1498', '0', '2019-11-22 05:45:00', null, '1', null, '1', '20191122054500163', '523021265bf253e5d294423fa04f06132b7d74b51574328963026', '60', '2.01');
INSERT INTO `sampling_media_order` VALUES ('1499', '0', '2019-11-22 05:45:48', null, '1', null, '1', '20191122054548404', '523021265bf253e5d294423fa04f06132b7d74b51574328963026', '60', '2.01');
INSERT INTO `sampling_media_order` VALUES ('1500', '0', '2019-11-22 06:33:22', null, '1', null, '1', '20191122063322140', '18352454a4fda03fd6e44ac585a80d55f3ba53361574328965959', '17', '2.73');
INSERT INTO `sampling_media_order` VALUES ('1501', '0', '2019-11-22 06:33:42', null, '1', null, '1', '20191122063342585', '18352454a4fda03fd6e44ac585a80d55f3ba53361574328965959', '62', '2.84');
INSERT INTO `sampling_media_order` VALUES ('1502', '0', '2019-11-22 06:36:26', null, '1', null, '1', '20191122063626856', '18352454a4fda03fd6e44ac585a80d55f3ba53361574328965959', '66', '2.96');
INSERT INTO `sampling_media_order` VALUES ('1503', '0', '2019-11-22 07:03:37', null, '1', null, '1', '20191122070337505', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '22', '2.16');
INSERT INTO `sampling_media_order` VALUES ('1504', '0', '2019-11-22 07:38:22', null, '1', null, '1', '20191122073822128', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '85', '2.25');
INSERT INTO `sampling_media_order` VALUES ('1505', '0', '2019-11-22 07:39:24', null, '1', null, '1', '20191122073924832', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '104', '2.38');
INSERT INTO `sampling_media_order` VALUES ('1506', '0', '2019-11-22 07:50:32', null, '1', null, '1', '20191122075032723', '18761938747d2f5b0d3e440690b73686cb0e880b1573222826570', '12', '2.28');
INSERT INTO `sampling_media_order` VALUES ('1507', '0', '2019-11-22 08:28:09', null, '1', null, '1', '20191122082809883', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '32', '2.85');
INSERT INTO `sampling_media_order` VALUES ('1508', '0', '2019-11-22 08:29:54', null, '1', null, '1', '20191122082954609', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '40', '2.00');
INSERT INTO `sampling_media_order` VALUES ('1509', '0', '2019-11-22 08:30:34', null, '1', null, '1', '20191122083034649', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '62', '2.63');
INSERT INTO `sampling_media_order` VALUES ('1510', '0', '2019-11-22 08:31:15', null, '1', null, '1', '20191122083115984', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '91', '2.15');
INSERT INTO `sampling_media_order` VALUES ('1511', '0', '2019-11-22 08:32:07', null, '1', null, '1', '20191122083207883', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '17', '2.69');
INSERT INTO `sampling_media_order` VALUES ('1512', '0', '2019-11-22 08:32:23', null, '1', null, '1', '20191122083223100', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '34', '2.59');
INSERT INTO `sampling_media_order` VALUES ('1513', '0', '2019-11-22 08:33:16', null, '1', null, '1', '20191122083316603', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '85', '2.43');
INSERT INTO `sampling_media_order` VALUES ('1514', '0', '2019-11-22 08:33:51', null, '1', null, '1', '20191122083351645', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '94', '2.01');
INSERT INTO `sampling_media_order` VALUES ('1515', '0', '2019-11-22 08:34:51', null, '1', null, '1', '20191122083451482', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '34', '2.50');
INSERT INTO `sampling_media_order` VALUES ('1516', '0', '2019-11-22 08:35:12', null, '1', null, '1', '20191122083512207', '670264520884771b34614859b45aba580d31d6421574382451243', '57', '2.14');
INSERT INTO `sampling_media_order` VALUES ('1517', '0', '2019-11-22 08:35:31', null, '1', null, '1', '20191122083531648', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '99', '2.25');
INSERT INTO `sampling_media_order` VALUES ('1518', '0', '2019-11-22 08:35:59', null, '1', null, '1', '20191122083559927', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '69', '2.23');
INSERT INTO `sampling_media_order` VALUES ('1519', '0', '2019-11-22 08:36:43', null, '1', null, '1', '20191122083643943', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '58', '2.62');
INSERT INTO `sampling_media_order` VALUES ('1520', '0', '2019-11-22 08:38:07', null, '1', null, '1', '20191122083807583', '670264520884771b34614859b45aba580d31d6421574382451243', '104', '2.71');
INSERT INTO `sampling_media_order` VALUES ('1521', '0', '2019-11-22 08:39:23', null, '1', null, '1', '20191122083923129', '670264520884771b34614859b45aba580d31d6421574382451243', '96', '2.93');
INSERT INTO `sampling_media_order` VALUES ('1522', '0', '2019-11-22 08:41:34', null, '1', null, '1', '20191122084134500', '670264520884771b34614859b45aba580d31d6421574382451243', '104', '2.68');
INSERT INTO `sampling_media_order` VALUES ('1523', '0', '2019-11-22 08:45:08', null, '1', null, '1', '20191122084508602', '670264520884771b34614859b45aba580d31d6421574382451243', '97', '2.99');
INSERT INTO `sampling_media_order` VALUES ('1524', '0', '2019-11-22 08:45:36', null, '1', null, '1', '20191122084536827', '670264520884771b34614859b45aba580d31d6421574382451243', '25', '2.37');
INSERT INTO `sampling_media_order` VALUES ('1525', '0', '2019-11-22 08:45:56', null, '1', null, '1', '20191122084556688', '670264520884771b34614859b45aba580d31d6421574382451243', '54', '2.54');
INSERT INTO `sampling_media_order` VALUES ('1526', '0', '2019-11-22 08:49:03', null, '1', null, '1', '20191122084903160', '670264520884771b34614859b45aba580d31d6421574382451243', '57', '2.79');
INSERT INTO `sampling_media_order` VALUES ('1527', '0', '2019-11-22 08:50:02', null, '1', null, '1', '20191122085002629', '670264520884771b34614859b45aba580d31d6421574382451243', '91', '2.05');
INSERT INTO `sampling_media_order` VALUES ('1528', '0', '2019-11-22 08:50:34', null, '1', null, '1', '20191122085034498', '453197291337c164d6154c329a0cf56b6133722b1574331051473', '66', '2.32');
INSERT INTO `sampling_media_order` VALUES ('1529', '0', '2019-11-22 08:50:55', null, '1', null, '1', '20191122085055735', '453197291337c164d6154c329a0cf56b6133722b1574331051473', '12', '2.32');
INSERT INTO `sampling_media_order` VALUES ('1530', '0', '2019-11-22 08:52:40', null, '1', null, '1', '20191122085240796', '670264520884771b34614859b45aba580d31d6421574382451243', '87', '2.52');
INSERT INTO `sampling_media_order` VALUES ('1531', '0', '2019-11-22 08:54:08', null, '1', null, '1', '20191122085408378', '670264520884771b34614859b45aba580d31d6421574382451243', '57', '2.01');
INSERT INTO `sampling_media_order` VALUES ('1532', '0', '2019-11-22 08:55:42', null, '1', null, '1', '20191122085542409', '670264520884771b34614859b45aba580d31d6421574382451243', '57', '2.27');
INSERT INTO `sampling_media_order` VALUES ('1533', '0', '2019-11-22 08:59:32', null, '1', null, '1', '20191122085932630', '670264520884771b34614859b45aba580d31d6421574382451243', '65', '2.79');
INSERT INTO `sampling_media_order` VALUES ('1534', '0', '2019-11-22 09:01:13', null, '1', null, '1', '20191122090113974', '670264520884771b34614859b45aba580d31d6421574382451243', '66', '2.88');
INSERT INTO `sampling_media_order` VALUES ('1535', '0', '2019-11-22 09:17:19', null, '1', null, '1', '20191122091719181', '670264520884771b34614859b45aba580d31d6421574382451243', '97', '2.95');
INSERT INTO `sampling_media_order` VALUES ('1536', '0', '2019-11-22 09:18:12', null, '1', null, '1', '20191122091812255', '164629809bd6e06e6e074a34a95da62d290859af1574329278212', '95', '2.18');
INSERT INTO `sampling_media_order` VALUES ('1537', '0', '2019-11-22 09:18:21', null, '1', null, '1', '20191122091821632', '670264520884771b34614859b45aba580d31d6421574382451243', '62', '2.82');
INSERT INTO `sampling_media_order` VALUES ('1538', '0', '2019-11-22 09:19:30', null, '1', null, '1', '20191122091930200', '670264520884771b34614859b45aba580d31d6421574382451243', '62', '2.12');
INSERT INTO `sampling_media_order` VALUES ('1539', '0', '2019-11-22 09:20:41', null, '1', null, '1', '20191122092041758', '670264520884771b34614859b45aba580d31d6421574382451243', '62', '2.04');
INSERT INTO `sampling_media_order` VALUES ('1540', '0', '2019-11-22 09:21:10', null, '1', null, '1', '20191122092110725', '670264520884771b34614859b45aba580d31d6421574382451243', '62', '2.57');
INSERT INTO `sampling_media_order` VALUES ('1541', '0', '2019-11-22 09:21:47', null, '1', null, '1', '20191122092147416', '670264520884771b34614859b45aba580d31d6421574382451243', '62', '2.03');
INSERT INTO `sampling_media_order` VALUES ('1542', '0', '2019-11-22 09:24:19', null, '1', null, '1', '20191122092419456', '670264520884771b34614859b45aba580d31d6421574382451243', '80', '2.85');
INSERT INTO `sampling_media_order` VALUES ('1543', '0', '2019-11-22 09:24:52', null, '1', null, '1', '20191122092452348', '670264520884771b34614859b45aba580d31d6421574382451243', '25', '2.86');
INSERT INTO `sampling_media_order` VALUES ('1544', '0', '2019-11-22 09:26:43', null, '1', null, '1', '20191122092643421', '670264520884771b34614859b45aba580d31d6421574382451243', '40', '2.29');
INSERT INTO `sampling_media_order` VALUES ('1545', '0', '2019-11-22 09:27:53', null, '1', null, '1', '20191122092753148', '670264520884771b34614859b45aba580d31d6421574382451243', '31', '2.45');
INSERT INTO `sampling_media_order` VALUES ('1546', '0', '2019-11-22 09:28:20', null, '1', null, '1', '20191122092820136', '670264520884771b34614859b45aba580d31d6421574382451243', '40', '2.36');
INSERT INTO `sampling_media_order` VALUES ('1547', '0', '2019-11-22 09:42:02', null, '1', null, '1', '20191122094202792', '369942307d5b393da1c94baebdbb29b3ca418ce91574330287016', '43', '2.68');
INSERT INTO `sampling_media_order` VALUES ('1548', '0', '2019-11-22 09:43:18', null, '1', null, '1', '20191122094318173', '670264520884771b34614859b45aba580d31d6421574382451243', '45', '2.10');
INSERT INTO `sampling_media_order` VALUES ('1549', '0', '2019-11-22 09:45:43', null, '1', null, '1', '20191122094543311', '670264520884771b34614859b45aba580d31d6421574382451243', '81', '2.28');
INSERT INTO `sampling_media_order` VALUES ('1550', '0', '2019-11-22 09:47:55', null, '1', null, '1', '20191122094755347', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '52', '2.36');
INSERT INTO `sampling_media_order` VALUES ('1551', '0', '2019-11-22 09:48:50', null, '1', null, '1', '20191122094850542', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '38', '2.53');
INSERT INTO `sampling_media_order` VALUES ('1552', '0', '2019-11-22 09:49:09', null, '1', null, '1', '20191122094909455', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '64', '2.00');
INSERT INTO `sampling_media_order` VALUES ('1553', '0', '2019-11-22 09:50:13', null, '1', null, '1', '20191122095013174', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '62', '2.87');
INSERT INTO `sampling_media_order` VALUES ('1554', '0', '2019-11-22 09:50:26', null, '1', null, '1', '20191122095026341', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '70', '2.64');
INSERT INTO `sampling_media_order` VALUES ('1555', '0', '2019-11-22 09:51:05', null, '1', null, '1', '20191122095105792', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '16', '2.72');
INSERT INTO `sampling_media_order` VALUES ('1556', '0', '2019-11-22 09:52:26', null, '1', null, '1', '20191122095226684', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '108', '2.67');
INSERT INTO `sampling_media_order` VALUES ('1557', '0', '2019-11-22 09:53:53', null, '1', null, '1', '20191122095353575', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '80', '2.79');
INSERT INTO `sampling_media_order` VALUES ('1558', '0', '2019-11-22 09:54:25', null, '1', null, '1', '20191122095425895', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '86', '2.42');
INSERT INTO `sampling_media_order` VALUES ('1559', '0', '2019-11-22 09:55:26', null, '1', null, '1', '20191122095526384', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '16', '2.30');
INSERT INTO `sampling_media_order` VALUES ('1560', '0', '2019-11-22 09:57:28', null, '1', null, '1', '20191122095728232', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '15', '2.89');
INSERT INTO `sampling_media_order` VALUES ('1561', '0', '2019-11-22 09:58:42', null, '1', null, '1', '20191122095842702', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '91', '2.93');
INSERT INTO `sampling_media_order` VALUES ('1562', '0', '2019-11-22 10:01:52', null, '1', null, '1', '20191122100152820', '369942307d5b393da1c94baebdbb29b3ca418ce91574330287016', '86', '2.46');
INSERT INTO `sampling_media_order` VALUES ('1563', '0', '2019-11-22 10:03:26', null, '1', null, '1', '20191122100326819', '369942307d5b393da1c94baebdbb29b3ca418ce91574330287016', '73', '2.91');
INSERT INTO `sampling_media_order` VALUES ('1564', '0', '2019-11-22 10:04:13', null, '1', null, '1', '20191122100413534', '369942307d5b393da1c94baebdbb29b3ca418ce91574330287016', '62', '2.34');
INSERT INTO `sampling_media_order` VALUES ('1565', '0', '2019-11-22 10:05:29', null, '1', null, '1', '20191122100529184', '369942307d5b393da1c94baebdbb29b3ca418ce91574330287016', '22', '2.61');
INSERT INTO `sampling_media_order` VALUES ('1566', '0', '2019-11-22 10:06:06', null, '1', null, '1', '20191122100606217', '369942307d5b393da1c94baebdbb29b3ca418ce91574330287016', '86', '2.70');
INSERT INTO `sampling_media_order` VALUES ('1567', '0', '2019-11-22 10:34:05', null, '1', null, '1', '20191122103405219', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '62', '2.32');
INSERT INTO `sampling_media_order` VALUES ('1568', '0', '2019-11-22 10:34:45', null, '1', null, '1', '20191122103445244', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '32', '2.81');
INSERT INTO `sampling_media_order` VALUES ('1569', '0', '2019-11-22 10:35:09', null, '1', null, '1', '20191122103509223', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '32', '2.55');
INSERT INTO `sampling_media_order` VALUES ('1570', '0', '2019-11-22 10:35:52', null, '1', null, '1', '20191122103552135', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '98', '2.04');
INSERT INTO `sampling_media_order` VALUES ('1571', '0', '2019-11-22 10:36:08', null, '1', null, '1', '20191122103608424', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '60', '2.61');
INSERT INTO `sampling_media_order` VALUES ('1572', '0', '2019-11-22 10:36:27', null, '1', null, '1', '20191122103627831', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '67', '2.06');
INSERT INTO `sampling_media_order` VALUES ('1573', '0', '2019-11-22 10:36:39', null, '1', null, '1', '20191122103639426', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '69', '2.77');
INSERT INTO `sampling_media_order` VALUES ('1574', '0', '2019-11-22 10:40:48', null, '1', null, '1', '20191122104048697', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '30', '2.76');
INSERT INTO `sampling_media_order` VALUES ('1575', '0', '2019-11-22 10:41:12', null, '1', null, '1', '20191122104112420', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '69', '2.20');
INSERT INTO `sampling_media_order` VALUES ('1576', '0', '2019-11-22 10:41:36', null, '1', null, '1', '20191122104136157', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '51', '2.74');
INSERT INTO `sampling_media_order` VALUES ('1577', '0', '2019-11-22 10:41:46', null, '1', null, '1', '20191122104146228', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '99', '2.03');
INSERT INTO `sampling_media_order` VALUES ('1578', '0', '2019-11-22 10:42:07', null, '1', null, '1', '20191122104207712', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '99', '2.69');
INSERT INTO `sampling_media_order` VALUES ('1579', '0', '2019-11-22 10:44:59', null, '1', null, '1', '20191122104459149', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '34', '2.09');
INSERT INTO `sampling_media_order` VALUES ('1580', '0', '2019-11-22 10:46:11', null, '1', null, '1', '20191122104611105', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '51', '2.33');
INSERT INTO `sampling_media_order` VALUES ('1581', '0', '2019-11-22 11:12:42', null, '1', null, '1', '20191122111242396', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '55', '2.43');
INSERT INTO `sampling_media_order` VALUES ('1582', '0', '2019-11-22 11:13:01', null, '1', null, '1', '20191122111301888', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '67', '2.44');
INSERT INTO `sampling_media_order` VALUES ('1583', '0', '2019-11-22 11:13:48', null, '1', null, '1', '20191122111348939', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '66', '2.52');
INSERT INTO `sampling_media_order` VALUES ('1584', '0', '2019-11-22 11:14:02', null, '1', null, '1', '20191122111402964', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '17', '2.51');
INSERT INTO `sampling_media_order` VALUES ('1585', '0', '2019-11-22 11:15:26', null, '1', null, '1', '20191122111526359', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '93', '2.79');
INSERT INTO `sampling_media_order` VALUES ('1586', '0', '2019-11-22 11:16:15', null, '1', null, '1', '20191122111615769', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '94', '2.48');
INSERT INTO `sampling_media_order` VALUES ('1587', '0', '2019-11-22 11:18:54', null, '1', null, '1', '20191122111854784', '369942307d5b393da1c94baebdbb29b3ca418ce91574330287016', '43', '2.72');
INSERT INTO `sampling_media_order` VALUES ('1588', '0', '2019-11-22 11:19:10', null, '1', null, '1', '20191122111910951', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '58', '2.40');
INSERT INTO `sampling_media_order` VALUES ('1589', '0', '2019-11-22 11:19:53', null, '1', null, '1', '20191122111953683', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '54', '2.45');
INSERT INTO `sampling_media_order` VALUES ('1590', '0', '2019-11-22 11:31:59', null, '1', null, '1', '20191122113159406', '369942307d5b393da1c94baebdbb29b3ca418ce91574330287016', '40', '2.24');
INSERT INTO `sampling_media_order` VALUES ('1591', '0', '2019-11-22 11:49:28', null, '1', null, '1', '20191122114928231', '176627138409559aa51f499e9836e373598f9ff51574394515854', '60', '2.37');
INSERT INTO `sampling_media_order` VALUES ('1592', '0', '2019-11-22 12:06:58', null, '1', null, '1', '20191122120658965', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '105', '2.90');
INSERT INTO `sampling_media_order` VALUES ('1593', '0', '2019-11-22 12:12:14', null, '1', null, '1', '20191122121214493', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '46', '2.50');
INSERT INTO `sampling_media_order` VALUES ('1594', '0', '2019-11-22 12:13:10', null, '1', null, '1', '20191122121310998', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '38', '2.10');
INSERT INTO `sampling_media_order` VALUES ('1595', '0', '2019-11-22 12:28:21', null, '1', null, '1', '20191122122821598', '18352454a4fda03fd6e44ac585a80d55f3ba53361574328965959', '52', '2.88');
INSERT INTO `sampling_media_order` VALUES ('1596', '0', '2019-11-22 12:29:01', null, '1', null, '1', '20191122122901556', '18352454a4fda03fd6e44ac585a80d55f3ba53361574328965959', '17', '2.48');
INSERT INTO `sampling_media_order` VALUES ('1597', '0', '2019-11-22 13:06:18', null, '1', null, '1', '20191122130618675', '30675088a9c2f790838e499e8f1937f634504b281574399164861', '40', '2.04');
INSERT INTO `sampling_media_order` VALUES ('1598', '0', '2019-11-22 13:21:35', null, '1', null, '1', '20191122132135391', '369942307d5b393da1c94baebdbb29b3ca418ce91574330287016', '51', '2.65');
INSERT INTO `sampling_media_order` VALUES ('1599', '0', '2019-11-22 13:24:06', null, '1', null, '1', '20191122132406515', '369942307d5b393da1c94baebdbb29b3ca418ce91574330287016', '93', '2.17');
INSERT INTO `sampling_media_order` VALUES ('1600', '0', '2019-11-22 13:24:22', null, '1', null, '1', '20191122132422355', '543854942e5355118e1b4e34b58c12ddf59b49d81574400235017', '38', '2.10');
INSERT INTO `sampling_media_order` VALUES ('1601', '0', '2019-11-22 13:24:36', null, '1', null, '1', '20191122132436696', '96405917646ba0f2de2742e8a5f124bb0f4240461574330238487', '92', '2.86');
INSERT INTO `sampling_media_order` VALUES ('1602', '0', '2019-11-22 13:24:45', null, '1', null, '1', '20191122132445950', '543854942e5355118e1b4e34b58c12ddf59b49d81574400235017', '38', '2.00');
INSERT INTO `sampling_media_order` VALUES ('1603', '0', '2019-11-22 13:24:58', null, '1', null, '1', '20191122132458794', '543854942e5355118e1b4e34b58c12ddf59b49d81574400235017', '51', '2.10');
INSERT INTO `sampling_media_order` VALUES ('1604', '0', '2019-11-22 13:25:43', null, '1', null, '1', '20191122132543979', '543854942e5355118e1b4e34b58c12ddf59b49d81574400235017', '74', '2.81');
INSERT INTO `sampling_media_order` VALUES ('1605', '0', '2019-11-22 13:26:15', null, '1', null, '1', '20191122132615511', '543854942e5355118e1b4e34b58c12ddf59b49d81574400235017', '64', '2.21');
INSERT INTO `sampling_media_order` VALUES ('1606', '0', '2019-11-22 14:13:08', null, '1', null, '1', '20191122141308284', '49302028e0b4b8c6d0fc4fe398f5bf2c603dfd891574332073987', '15', '2.31');
INSERT INTO `sampling_media_order` VALUES ('1607', '0', '2019-11-22 14:13:39', null, '1', null, '1', '20191122141339420', '49302028e0b4b8c6d0fc4fe398f5bf2c603dfd891574332073987', '51', '2.06');
INSERT INTO `sampling_media_order` VALUES ('1608', '0', '2019-11-22 14:14:45', null, '1', null, '1', '20191122141445155', '49302028e0b4b8c6d0fc4fe398f5bf2c603dfd891574332073987', '51', '2.78');
INSERT INTO `sampling_media_order` VALUES ('1609', '0', '2019-11-22 14:14:52', null, '1', null, '1', '20191122141452952', '49302028e0b4b8c6d0fc4fe398f5bf2c603dfd891574332073987', '107', '2.57');
INSERT INTO `sampling_media_order` VALUES ('1610', '0', '2019-11-22 14:15:49', null, '1', null, '1', '20191122141549115', '49302028e0b4b8c6d0fc4fe398f5bf2c603dfd891574332073987', '34', '2.67');
INSERT INTO `sampling_media_order` VALUES ('1611', '0', '2019-11-22 14:16:41', null, '1', null, '1', '20191122141641865', '36059998035a1d79420e4625aa2df98f58889bc61574328995842', '45', '2.84');
INSERT INTO `sampling_media_order` VALUES ('1612', '0', '2019-11-22 14:42:11', null, '1', null, '1', '20191122144211416', '80290395686ed6a835584a88a78aef6b931540cd1573054608018', '55', '2.21');
INSERT INTO `sampling_media_order` VALUES ('1613', '0', '2019-11-22 14:43:17', null, '1', null, '1', '20191122144317192', '80290395686ed6a835584a88a78aef6b931540cd1573054608018', '64', '2.09');
INSERT INTO `sampling_media_order` VALUES ('1614', '0', '2019-11-22 14:44:25', null, '1', null, '1', '20191122144425145', '80290395686ed6a835584a88a78aef6b931540cd1573054608018', '34', '2.42');
INSERT INTO `sampling_media_order` VALUES ('1615', '0', '2019-11-22 14:45:00', null, '1', null, '1', '20191122144500675', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '63', '2.16');
INSERT INTO `sampling_media_order` VALUES ('1616', '0', '2019-11-22 14:45:58', null, '1', null, '1', '20191122144558653', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '105', '2.31');
INSERT INTO `sampling_media_order` VALUES ('1617', '0', '2019-11-22 14:48:12', null, '1', null, '1', '20191122144812558', '80290395686ed6a835584a88a78aef6b931540cd1573054608018', '38', '2.70');
INSERT INTO `sampling_media_order` VALUES ('1618', '0', '2019-11-22 14:49:36', null, '1', null, '1', '20191122144936982', '80290395686ed6a835584a88a78aef6b931540cd1573054608018', '34', '2.18');
INSERT INTO `sampling_media_order` VALUES ('1619', '0', '2019-11-22 14:54:47', null, '1', null, '1', '20191122145447425', '98163960f9b89cdf92bc4fe38d29a5b2d1e856011573109983178', '60', '2.97');
INSERT INTO `sampling_media_order` VALUES ('1620', '0', '2019-11-22 14:56:50', null, '1', null, '1', '20191122145650934', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '29', '2.44');
INSERT INTO `sampling_media_order` VALUES ('1621', '0', '2019-11-22 14:58:54', null, '1', null, '1', '20191122145854265', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '90', '2.04');
INSERT INTO `sampling_media_order` VALUES ('1622', '0', '2019-11-22 15:00:22', null, '1', null, '1', '20191122150022529', '80290395686ed6a835584a88a78aef6b931540cd1573054608018', '34', '2.55');
INSERT INTO `sampling_media_order` VALUES ('1623', '0', '2019-11-22 15:25:42', null, '1', null, '1', '20191122152542763', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '95', '2.80');
INSERT INTO `sampling_media_order` VALUES ('1624', '0', '2019-11-22 15:26:26', null, '1', null, '1', '20191122152626903', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '55', '2.43');
INSERT INTO `sampling_media_order` VALUES ('1625', '0', '2019-11-22 15:26:55', null, '1', null, '1', '20191122152655732', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '83', '2.24');
INSERT INTO `sampling_media_order` VALUES ('1626', '0', '2019-11-22 15:28:40', null, '1', null, '1', '20191122152840762', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '20', '2.70');
INSERT INTO `sampling_media_order` VALUES ('1627', '0', '2019-11-22 15:30:09', null, '1', null, '1', '20191122153009622', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '54', '2.94');
INSERT INTO `sampling_media_order` VALUES ('1628', '0', '2019-11-22 15:31:08', null, '1', null, '1', '20191122153108686', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '95', '2.16');
INSERT INTO `sampling_media_order` VALUES ('1629', '0', '2019-11-22 15:34:59', null, '1', null, '1', '20191122153459271', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '74', '2.26');
INSERT INTO `sampling_media_order` VALUES ('1630', '0', '2019-11-22 15:53:46', null, '1', null, '1', '20191122155346523', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '46', '2.44');
INSERT INTO `sampling_media_order` VALUES ('1631', '0', '2019-11-22 16:01:18', null, '1', null, '1', '20191122160118500', '', '91', '2.55');
INSERT INTO `sampling_media_order` VALUES ('1632', '0', '2019-11-22 16:02:33', null, '1', null, '1', '20191122160233470', '47453312d201b49380db49dbbf3f2168707fc9131574409713187', '34', '2.85');
INSERT INTO `sampling_media_order` VALUES ('1633', '0', '2019-11-22 16:04:55', null, '1', null, '1', '20191122160455308', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '80', '2.46');
INSERT INTO `sampling_media_order` VALUES ('1634', '0', '2019-11-22 16:05:37', null, '1', null, '1', '20191122160537652', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '89', '2.43');
INSERT INTO `sampling_media_order` VALUES ('1635', '0', '2019-11-22 16:06:31', null, '1', null, '1', '20191122160631188', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '20', '2.05');
INSERT INTO `sampling_media_order` VALUES ('1636', '0', '2019-11-22 16:06:53', null, '1', null, '1', '20191122160653259', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '66', '2.38');
INSERT INTO `sampling_media_order` VALUES ('1637', '0', '2019-11-22 16:13:21', null, '1', null, '1', '20191122161321364', '9587176309e44ee013d847de9c3de82f9971efbf1574330239170', '94', '2.82');
INSERT INTO `sampling_media_order` VALUES ('1638', '0', '2019-11-22 16:38:14', null, '1', null, '1', '20191122163814223', '29552250da0f7b6b25f54082999b38bb20134cd41574411865558', '66', '2.38');
INSERT INTO `sampling_media_order` VALUES ('1639', '0', '2019-11-22 16:38:49', null, '1', null, '1', '20191122163849256', '29552250da0f7b6b25f54082999b38bb20134cd41574411865558', '66', '2.00');
INSERT INTO `sampling_media_order` VALUES ('1640', '0', '2019-11-22 16:39:20', null, '1', null, '1', '20191122163920811', '6378238459db1b12578d450282c89aa5147f3daa1574411946436', '104', '2.82');
INSERT INTO `sampling_media_order` VALUES ('1641', '0', '2019-11-22 17:16:03', null, '1', null, '1', '20191122171603934', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '36', '2.29');
INSERT INTO `sampling_media_order` VALUES ('1642', '0', '2019-11-22 17:23:23', null, '1', null, '1', '20191122172323730', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '79', '2.23');
INSERT INTO `sampling_media_order` VALUES ('1643', '0', '2019-11-22 17:24:27', null, '1', null, '1', '20191122172427836', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '64', '2.14');
INSERT INTO `sampling_media_order` VALUES ('1644', '0', '2019-11-22 17:30:29', null, '1', null, '1', '20191122173029644', '514841782efa7cf0de1a45d2b4649940db30c7321574274134010', '49', '2.50');
INSERT INTO `sampling_media_order` VALUES ('1645', '0', '2019-11-22 17:32:56', null, '1', null, '1', '20191122173256693', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '54', '2.25');
INSERT INTO `sampling_media_order` VALUES ('1646', '0', '2019-11-22 17:33:38', null, '1', null, '1', '20191122173338296', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '41', '2.98');
INSERT INTO `sampling_media_order` VALUES ('1647', '0', '2019-11-22 17:38:00', null, '1', null, '1', '20191122173800562', '98163960f9b89cdf92bc4fe38d29a5b2d1e856011573109983178', '74', '2.66');
INSERT INTO `sampling_media_order` VALUES ('1648', '0', '2019-11-22 17:38:31', null, '1', null, '1', '20191122173831896', '98163960f9b89cdf92bc4fe38d29a5b2d1e856011573109983178', '74', '2.41');
INSERT INTO `sampling_media_order` VALUES ('1649', '0', '2019-11-22 17:39:27', null, '1', null, '1', '20191122173927836', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '107', '2.21');
INSERT INTO `sampling_media_order` VALUES ('1650', '0', '2019-11-22 17:39:41', null, '1', null, '1', '20191122173941171', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '84', '2.72');
INSERT INTO `sampling_media_order` VALUES ('1651', '0', '2019-11-22 17:41:09', null, '1', null, '1', '20191122174109424', '18352454a4fda03fd6e44ac585a80d55f3ba53361574328965959', '36', '2.51');
INSERT INTO `sampling_media_order` VALUES ('1652', '0', '2019-11-22 18:12:15', null, '1', null, '1', '20191122181215384', '96405917646ba0f2de2742e8a5f124bb0f4240461574330238487', '79', '2.94');
INSERT INTO `sampling_media_order` VALUES ('1653', '0', '2019-11-22 18:12:27', null, '1', null, '1', '20191122181227310', '96405917646ba0f2de2742e8a5f124bb0f4240461574330238487', '65', '2.44');
INSERT INTO `sampling_media_order` VALUES ('1654', '0', '2019-11-22 18:12:45', null, '1', null, '1', '20191122181245228', '96405917646ba0f2de2742e8a5f124bb0f4240461574330238487', '96', '2.46');
INSERT INTO `sampling_media_order` VALUES ('1655', '0', '2019-11-22 19:56:20', null, '1', null, '1', '20191122195620361', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '95', '2.61');
INSERT INTO `sampling_media_order` VALUES ('1656', '0', '2019-11-22 19:56:53', null, '1', null, '1', '20191122195653215', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '65', '2.51');
INSERT INTO `sampling_media_order` VALUES ('1657', '0', '2019-11-22 19:57:44', null, '1', null, '1', '20191122195744480', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '92', '2.02');
INSERT INTO `sampling_media_order` VALUES ('1658', '0', '2019-11-22 19:57:59', null, '1', null, '1', '20191122195759766', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '54', '2.60');
INSERT INTO `sampling_media_order` VALUES ('1659', '0', '2019-11-22 19:58:40', null, '1', null, '1', '20191122195840523', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '41', '2.49');
INSERT INTO `sampling_media_order` VALUES ('1660', '0', '2019-11-22 19:59:29', null, '1', null, '1', '20191122195929450', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '106', '2.25');
INSERT INTO `sampling_media_order` VALUES ('1661', '0', '2019-11-22 20:00:20', null, '1', null, '1', '20191122200020265', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '107', '2.91');
INSERT INTO `sampling_media_order` VALUES ('1662', '0', '2019-11-22 20:02:02', null, '1', null, '1', '20191122200202633', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '80', '2.46');
INSERT INTO `sampling_media_order` VALUES ('1663', '0', '2019-11-22 20:03:12', null, '1', null, '1', '20191122200312511', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '94', '2.18');
INSERT INTO `sampling_media_order` VALUES ('1664', '0', '2019-11-22 20:03:52', null, '1', null, '1', '20191122200352133', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '92', '2.25');
INSERT INTO `sampling_media_order` VALUES ('1665', '0', '2019-11-22 20:05:05', null, '1', null, '1', '20191122200505255', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '98', '2.40');
INSERT INTO `sampling_media_order` VALUES ('1666', '0', '2019-11-22 20:28:03', null, '1', null, '1', '20191122202803151', '7354019051e689d239df43fea2565060b0aca90f1574425372500', '104', '2.54');
INSERT INTO `sampling_media_order` VALUES ('1667', '0', '2019-11-22 20:28:44', null, '1', null, '1', '20191122202844818', '7354019051e689d239df43fea2565060b0aca90f1574425372500', '52', '2.37');
INSERT INTO `sampling_media_order` VALUES ('1668', '0', '2019-11-22 20:31:06', null, '1', null, '1', '20191122203106688', '7354019051e689d239df43fea2565060b0aca90f1574425372500', '104', '2.94');
INSERT INTO `sampling_media_order` VALUES ('1669', '0', '2019-11-22 20:34:35', null, '1', null, '1', '20191122203435855', '9028641919c9611a1cb042259ce0f1430b8794fb1574338760007', '84', '2.42');
INSERT INTO `sampling_media_order` VALUES ('1670', '0', '2019-11-22 20:47:29', null, '1', null, '1', '20191122204729509', '9587176309e44ee013d847de9c3de82f9971efbf1574330239170', '94', '2.91');
INSERT INTO `sampling_media_order` VALUES ('1671', '0', '2019-11-22 20:49:59', null, '1', null, '1', '20191122204959591', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '38', '2.74');
INSERT INTO `sampling_media_order` VALUES ('1672', '0', '2019-11-22 21:01:34', null, '1', null, '1', '20191122210134933', '80290395686ed6a835584a88a78aef6b931540cd1573054608018', '61', '2.43');
INSERT INTO `sampling_media_order` VALUES ('1673', '0', '2019-11-22 21:02:50', null, '1', null, '1', '20191122210250945', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '36', '2.83');
INSERT INTO `sampling_media_order` VALUES ('1674', '0', '2019-11-22 21:05:31', null, '1', null, '1', '20191122210531267', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '96', '2.83');
INSERT INTO `sampling_media_order` VALUES ('1675', '0', '2019-11-22 21:06:14', null, '1', null, '1', '20191122210614584', '22949612c530f450291f42cc9d59ce29aba17a501574329704825', '52', '2.50');
INSERT INTO `sampling_media_order` VALUES ('1676', '0', '2019-11-22 21:06:31', null, '1', null, '1', '20191122210631216', '89174248178e89b9e91d49378d360449de7642821572985035878', '36', '2.36');
INSERT INTO `sampling_media_order` VALUES ('1677', '0', '2019-11-22 21:06:58', null, '1', null, '1', '20191122210658654', '22949612c530f450291f42cc9d59ce29aba17a501574329704825', '65', '2.30');
INSERT INTO `sampling_media_order` VALUES ('1678', '0', '2019-11-22 21:06:59', null, '1', null, '1', '20191122210659111', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '106', '2.75');
INSERT INTO `sampling_media_order` VALUES ('1679', '0', '2019-11-22 21:07:14', null, '1', null, '1', '20191122210714224', '89174248178e89b9e91d49378d360449de7642821572985035878', '36', '2.72');
INSERT INTO `sampling_media_order` VALUES ('1680', '0', '2019-11-22 21:07:41', null, '1', null, '1', '20191122210741260', '22949612c530f450291f42cc9d59ce29aba17a501574329704825', '92', '2.15');
INSERT INTO `sampling_media_order` VALUES ('1681', '0', '2019-11-22 21:20:12', null, '1', null, '1', '20191122212012805', '53592501b3a12503cd734e828a62bbe529c3ab6e1574428799119', '79', '2.34');
INSERT INTO `sampling_media_order` VALUES ('1682', '0', '2019-11-22 21:21:10', null, '1', null, '1', '20191122212110649', '53592501b3a12503cd734e828a62bbe529c3ab6e1574428799119', '94', '2.50');
INSERT INTO `sampling_media_order` VALUES ('1683', '0', '2019-11-22 21:42:07', null, '1', null, '1', '20191122214207416', '647979347a2fd22468d24933bb3d43ac5f5d5df21574330866571', '52', '2.41');
INSERT INTO `sampling_media_order` VALUES ('1684', '0', '2019-11-22 21:42:55', null, '1', null, '1', '20191122214255454', '647979347a2fd22468d24933bb3d43ac5f5d5df21574330866571', '38', '2.82');
INSERT INTO `sampling_media_order` VALUES ('1685', '0', '2019-11-22 21:44:40', null, '1', null, '1', '20191122214440140', '8365423538b567d769af4dc0bb305b5d9332b6b91574430271818', '52', '2.19');
INSERT INTO `sampling_media_order` VALUES ('1686', '0', '2019-11-22 21:46:06', null, '1', null, '1', '20191122214606100', '8365423538b567d769af4dc0bb305b5d9332b6b91574430271818', '84', '2.53');
INSERT INTO `sampling_media_order` VALUES ('1687', '0', '2019-11-22 21:49:48', null, '1', null, '1', '20191122214948166', '8365423538b567d769af4dc0bb305b5d9332b6b91574430271818', '73', '2.47');
INSERT INTO `sampling_media_order` VALUES ('1688', '0', '2019-11-22 22:26:58', null, '1', null, '1', '20191122222658792', '6378238459db1b12578d450282c89aa5147f3daa1574411946436', '30', '2.26');
INSERT INTO `sampling_media_order` VALUES ('1689', '0', '2019-11-22 22:27:49', null, '1', null, '1', '20191122222749724', '295232591751e413026742a0b10f62b1786a30ed1573481520448', '79', '2.01');
INSERT INTO `sampling_media_order` VALUES ('1690', '0', '2019-11-22 22:28:18', null, '1', null, '1', '20191122222818819', '295232591751e413026742a0b10f62b1786a30ed1573481520448', '92', '2.11');
INSERT INTO `sampling_media_order` VALUES ('1691', '0', '2019-11-22 22:28:50', null, '1', null, '1', '20191122222850100', '295232591751e413026742a0b10f62b1786a30ed1573481520448', '54', '2.48');
INSERT INTO `sampling_media_order` VALUES ('1692', '0', '2019-11-22 22:29:30', null, '1', null, '1', '20191122222930711', '295232591751e413026742a0b10f62b1786a30ed1573481520448', '65', '2.03');
INSERT INTO `sampling_media_order` VALUES ('1693', '0', '2019-11-22 22:30:15', null, '1', null, '1', '20191122223015963', '295232591751e413026742a0b10f62b1786a30ed1573481520448', '41', '2.86');
INSERT INTO `sampling_media_order` VALUES ('1694', '0', '2019-11-22 22:30:28', null, '1', null, '1', '20191122223028127', '295232591751e413026742a0b10f62b1786a30ed1573481520448', '92', '2.31');
INSERT INTO `sampling_media_order` VALUES ('1695', '0', '2019-11-22 22:30:32', null, '1', null, '1', '20191122223032412', '295232591751e413026742a0b10f62b1786a30ed1573481520448', '54', '2.32');
INSERT INTO `sampling_media_order` VALUES ('1696', '0', '2019-11-22 22:31:34', null, '1', null, '1', '20191122223134221', '295232591751e413026742a0b10f62b1786a30ed1573481520448', '46', '2.41');
INSERT INTO `sampling_media_order` VALUES ('1697', '0', '2019-11-22 22:31:52', null, '1', null, '1', '20191122223152361', '295232591751e413026742a0b10f62b1786a30ed1573481520448', '54', '2.64');
INSERT INTO `sampling_media_order` VALUES ('1698', '0', '2019-11-22 22:32:04', null, '1', null, '1', '20191122223204571', '295232591751e413026742a0b10f62b1786a30ed1573481520448', '86', '2.13');
INSERT INTO `sampling_media_order` VALUES ('1699', '0', '2019-11-22 22:32:18', null, '1', null, '1', '20191122223218777', '295232591751e413026742a0b10f62b1786a30ed1573481520448', '63', '2.48');
INSERT INTO `sampling_media_order` VALUES ('1700', '0', '2019-11-22 23:24:24', null, '1', null, '1', '20191122232424926', '5146499223dc7884db184d2bbd37eab09ff7786b1574328981511', '94', '2.51');
INSERT INTO `sampling_media_order` VALUES ('1701', '0', '2019-11-23 00:18:02', null, '1', null, '1', '20191123001802758', '1322212365f7ce1aa4ae43ca96c994a672e8a1b31574353456076', '79', '2.65');
INSERT INTO `sampling_media_order` VALUES ('1702', '0', '2019-11-23 00:19:47', null, '1', null, '1', '20191123001947831', '1322212365f7ce1aa4ae43ca96c994a672e8a1b31574353456076', '41', '2.63');
INSERT INTO `sampling_media_order` VALUES ('1703', '0', '2019-11-23 00:57:37', null, '1', null, '1', '20191123005737849', '2436734271897fe8e72c4bfa9842f165dad3ccd91574441852481', '79', '4.52');
INSERT INTO `sampling_media_order` VALUES ('1704', '0', '2019-11-23 00:57:42', null, '1', null, '1', '20191123005742206', '2436734271897fe8e72c4bfa9842f165dad3ccd91574441852481', '79', '4.91');
INSERT INTO `sampling_media_order` VALUES ('1705', '0', '2019-11-23 00:57:48', null, '1', null, '1', '20191123005748327', '80290395686ed6a835584a88a78aef6b931540cd1573054608018', '21', '2.17');
INSERT INTO `sampling_media_order` VALUES ('1706', '0', '2019-11-23 00:57:49', null, '1', null, '1', '20191123005749247', '2436734271897fe8e72c4bfa9842f165dad3ccd91574441852481', '79', '4.97');
INSERT INTO `sampling_media_order` VALUES ('1707', '0', '2019-11-23 01:01:48', null, '1', null, '1', '20191123010148390', '2436734271897fe8e72c4bfa9842f165dad3ccd91574441852481', '79', '4.34');
INSERT INTO `sampling_media_order` VALUES ('1708', '0', '2019-11-23 01:02:07', null, '1', null, '1', '20191123010207746', '2436734271897fe8e72c4bfa9842f165dad3ccd91574441852481', '79', '4.31');
INSERT INTO `sampling_media_order` VALUES ('1709', '0', '2019-11-23 01:07:49', null, '1', null, '1', '20191123010749424', '80290395686ed6a835584a88a78aef6b931540cd1573054608018', '61', '2.77');
INSERT INTO `sampling_media_order` VALUES ('1710', '0', '2019-11-23 01:09:55', null, '1', null, '1', '20191123010955927', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '98', '2.47');
INSERT INTO `sampling_media_order` VALUES ('1711', '0', '2019-11-23 01:11:22', null, '1', null, '1', '20191123011122218', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '24', '2.57');
INSERT INTO `sampling_media_order` VALUES ('1712', '0', '2019-11-23 01:12:14', null, '1', null, '1', '20191123011214728', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '65', '2.74');
INSERT INTO `sampling_media_order` VALUES ('1713', '0', '2019-11-23 01:15:46', null, '1', null, '1', '20191123011546790', '18761938747d2f5b0d3e440690b73686cb0e880b1573222826570', '64', '2.76');
INSERT INTO `sampling_media_order` VALUES ('1714', '0', '2019-11-23 01:16:41', null, '1', null, '1', '20191123011641300', '18761938747d2f5b0d3e440690b73686cb0e880b1573222826570', '41', '2.18');
INSERT INTO `sampling_media_order` VALUES ('1715', '0', '2019-11-23 06:14:12', null, '1', null, '1', '20191123061412951', '73000226accd1b58a4d848b39cee9d8a1afbffba1573221184813', '96', '2.47');
INSERT INTO `sampling_media_order` VALUES ('1716', '0', '2019-11-23 06:14:41', null, '1', null, '1', '20191123061441804', '73000226accd1b58a4d848b39cee9d8a1afbffba1573221184813', '79', '2.21');
INSERT INTO `sampling_media_order` VALUES ('1717', '0', '2019-11-23 06:32:03', null, '1', null, '1', '20191123063203622', '670264520884771b34614859b45aba580d31d6421574382451243', '64', '2.74');
INSERT INTO `sampling_media_order` VALUES ('1718', '0', '2019-11-23 06:32:59', null, '1', null, '1', '20191123063259116', '670264520884771b34614859b45aba580d31d6421574382451243', '79', '2.48');
INSERT INTO `sampling_media_order` VALUES ('1719', '0', '2019-11-23 06:40:01', null, '1', null, '1', '20191123064001251', '670264520884771b34614859b45aba580d31d6421574382451243', '94', '2.75');
INSERT INTO `sampling_media_order` VALUES ('1720', '0', '2019-11-23 06:42:05', null, '1', null, '1', '20191123064205282', '670264520884771b34614859b45aba580d31d6421574382451243', '58', '2.92');
INSERT INTO `sampling_media_order` VALUES ('1721', '0', '2019-11-23 06:42:57', null, '1', null, '1', '20191123064257881', '670264520884771b34614859b45aba580d31d6421574382451243', '32', '2.34');
INSERT INTO `sampling_media_order` VALUES ('1722', '0', '2019-11-23 06:44:33', null, '1', null, '1', '20191123064433163', '670264520884771b34614859b45aba580d31d6421574382451243', '50', '2.11');
INSERT INTO `sampling_media_order` VALUES ('1723', '0', '2019-11-23 06:48:59', null, '1', null, '1', '20191123064859358', '670264520884771b34614859b45aba580d31d6421574382451243', '99', '2.01');
INSERT INTO `sampling_media_order` VALUES ('1724', '0', '2019-11-23 06:49:27', null, '1', null, '1', '20191123064927507', '670264520884771b34614859b45aba580d31d6421574382451243', '54', '2.44');
INSERT INTO `sampling_media_order` VALUES ('1725', '0', '2019-11-23 06:50:54', null, '1', null, '1', '20191123065054776', '670264520884771b34614859b45aba580d31d6421574382451243', '25', '2.73');
INSERT INTO `sampling_media_order` VALUES ('1726', '0', '2019-11-23 06:52:34', null, '1', null, '1', '20191123065234220', '18352454a4fda03fd6e44ac585a80d55f3ba53361574328965959', '36', '2.29');
INSERT INTO `sampling_media_order` VALUES ('1727', '0', '2019-11-23 06:52:58', null, '1', null, '1', '20191123065258873', '18352454a4fda03fd6e44ac585a80d55f3ba53361574328965959', '36', '2.39');
INSERT INTO `sampling_media_order` VALUES ('1728', '0', '2019-11-23 06:53:42', null, '1', null, '1', '20191123065342138', '670264520884771b34614859b45aba580d31d6421574382451243', '32', '2.97');
INSERT INTO `sampling_media_order` VALUES ('1729', '0', '2019-11-23 08:35:04', null, '1', null, '1', '20191123083504139', '6378238459db1b12578d450282c89aa5147f3daa1574411946436', '105', '2.15');
INSERT INTO `sampling_media_order` VALUES ('1730', '0', '2019-11-23 10:25:53', null, '1', null, '1', '20191123102553507', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '80', '2.70');
INSERT INTO `sampling_media_order` VALUES ('1731', '0', '2019-11-23 10:27:49', null, '1', null, '1', '20191123102749125', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '101', '2.30');
INSERT INTO `sampling_media_order` VALUES ('1732', '0', '2019-11-23 10:28:28', null, '1', null, '1', '20191123102828709', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '107', '2.21');
INSERT INTO `sampling_media_order` VALUES ('1733', '0', '2019-11-23 10:29:11', null, '1', null, '1', '20191123102911171', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '73', '2.29');
INSERT INTO `sampling_media_order` VALUES ('1734', '0', '2019-11-23 10:34:33', null, '1', null, '1', '20191123103433790', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '80', '2.62');
INSERT INTO `sampling_media_order` VALUES ('1735', '0', '2019-11-23 10:36:15', null, '1', null, '1', '20191123103615944', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '80', '2.43');
INSERT INTO `sampling_media_order` VALUES ('1736', '0', '2019-11-23 10:46:58', null, '1', null, '1', '20191123104658133', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '84', '2.13');
INSERT INTO `sampling_media_order` VALUES ('1737', '0', '2019-11-23 10:52:52', null, '1', null, '1', '20191123105252445', '80290395686ed6a835584a88a78aef6b931540cd1573054608018', '79', '2.90');
INSERT INTO `sampling_media_order` VALUES ('1738', '0', '2019-11-23 13:16:12', null, '1', null, '1', '20191123131612230', '89174248178e89b9e91d49378d360449de7642821572985035878', '106', '2.18');
INSERT INTO `sampling_media_order` VALUES ('1739', '0', '2019-11-23 13:17:02', null, '1', null, '1', '20191123131702817', '89174248178e89b9e91d49378d360449de7642821572985035878', '106', '2.46');
INSERT INTO `sampling_media_order` VALUES ('1740', '0', '2019-11-23 13:17:16', null, '1', null, '1', '20191123131716779', '89174248178e89b9e91d49378d360449de7642821572985035878', '29', '2.06');
INSERT INTO `sampling_media_order` VALUES ('1741', '0', '2019-11-23 13:17:39', null, '1', null, '1', '20191123131739599', '89174248178e89b9e91d49378d360449de7642821572985035878', '57', '2.62');
INSERT INTO `sampling_media_order` VALUES ('1742', '0', '2019-11-23 13:19:38', null, '1', null, '1', '20191123131938556', '2436734271897fe8e72c4bfa9842f165dad3ccd91574441852481', '96', '4.72');
INSERT INTO `sampling_media_order` VALUES ('1743', '0', '2019-11-23 13:25:38', null, '1', null, '1', '20191123132538494', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '36', '2.00');
INSERT INTO `sampling_media_order` VALUES ('1744', '0', '2019-11-23 13:26:01', null, '1', null, '1', '20191123132601767', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '60', '2.31');
INSERT INTO `sampling_media_order` VALUES ('1745', '0', '2019-11-23 13:26:43', null, '1', null, '1', '20191123132643235', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '23', '2.24');
INSERT INTO `sampling_media_order` VALUES ('1746', '0', '2019-11-23 13:27:04', null, '1', null, '1', '20191123132704125', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '23', '2.93');
INSERT INTO `sampling_media_order` VALUES ('1747', '0', '2019-11-23 13:29:12', null, '1', null, '1', '20191123132912336', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '106', '2.67');
INSERT INTO `sampling_media_order` VALUES ('1748', '0', '2019-11-23 13:31:25', null, '1', null, '1', '20191123133125732', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '65', '2.70');
INSERT INTO `sampling_media_order` VALUES ('1749', '0', '2019-11-23 13:32:31', null, '1', null, '1', '20191123133231770', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '65', '2.85');
INSERT INTO `sampling_media_order` VALUES ('1750', '0', '2019-11-23 13:37:00', null, '1', null, '1', '20191123133700207', '87353319b86fb654413041f8aeccd578d9aaa8731574487407604', '96', '2.10');
INSERT INTO `sampling_media_order` VALUES ('1751', '0', '2019-11-23 13:37:01', null, '1', null, '1', '20191123133701505', '5605972560bcdcb0a8c149be9821f4f31b4b03ca1574487368274', '63', '2.51');
INSERT INTO `sampling_media_order` VALUES ('1752', '0', '2019-11-23 13:37:20', null, '1', null, '1', '20191123133720766', '5605972560bcdcb0a8c149be9821f4f31b4b03ca1574487368274', '79', '2.18');
INSERT INTO `sampling_media_order` VALUES ('1753', '0', '2019-11-23 13:38:40', null, '1', null, '1', '20191123133840190', '88103527e714f181f4ea4884a4879d192e11a3be1574487478413', '52', '2.88');
INSERT INTO `sampling_media_order` VALUES ('1754', '0', '2019-11-23 13:39:02', null, '1', null, '1', '20191123133902603', '88103527e714f181f4ea4884a4879d192e11a3be1574487478413', '65', '2.14');
INSERT INTO `sampling_media_order` VALUES ('1755', '0', '2019-11-23 13:40:11', null, '1', null, '1', '20191123134011375', '115608977a5207674926481b90ff5023445e09a11574487562051', '41', '2.98');
INSERT INTO `sampling_media_order` VALUES ('1756', '0', '2019-11-23 13:41:06', null, '1', null, '1', '20191123134106602', '115608977a5207674926481b90ff5023445e09a11574487562051', '65', '2.29');
INSERT INTO `sampling_media_order` VALUES ('1757', '0', '2019-11-23 13:41:53', null, '1', null, '1', '20191123134153455', '115608977a5207674926481b90ff5023445e09a11574487562051', '92', '2.74');
INSERT INTO `sampling_media_order` VALUES ('1758', '0', '2019-11-23 13:42:35', null, '1', null, '1', '20191123134235233', '115608977a5207674926481b90ff5023445e09a11574487562051', '52', '2.30');
INSERT INTO `sampling_media_order` VALUES ('1759', '0', '2019-11-23 13:49:34', null, '1', null, '1', '20191123134934655', '75402165425f852d228a4c929c6faaefc063b1831574487567828', '55', '2.70');
INSERT INTO `sampling_media_order` VALUES ('1760', '0', '2019-11-23 13:49:46', null, '1', null, '1', '20191123134946346', '75402165425f852d228a4c929c6faaefc063b1831574487567828', '55', '2.47');
INSERT INTO `sampling_media_order` VALUES ('1761', '0', '2019-11-23 13:54:37', null, '1', null, '1', '20191123135437478', '75402165425f852d228a4c929c6faaefc063b1831574487567828', '62', '2.00');
INSERT INTO `sampling_media_order` VALUES ('1762', '0', '2019-11-23 13:56:15', null, '1', null, '1', '20191123135615815', '75402165425f852d228a4c929c6faaefc063b1831574487567828', '107', '2.68');
INSERT INTO `sampling_media_order` VALUES ('1763', '0', '2019-11-23 13:58:20', null, '1', null, '1', '20191123135820137', '626963876f6af78025024314940afc490f7efab21574488682624', '107', '2.02');
INSERT INTO `sampling_media_order` VALUES ('1764', '0', '2019-11-23 13:58:44', null, '1', null, '1', '20191123135844263', '626963876f6af78025024314940afc490f7efab21574488682624', '92', '2.79');
INSERT INTO `sampling_media_order` VALUES ('1765', '0', '2019-11-23 13:59:12', null, '1', null, '1', '20191123135912766', '75402165425f852d228a4c929c6faaefc063b1831574487567828', '55', '2.77');
INSERT INTO `sampling_media_order` VALUES ('1766', '0', '2019-11-23 14:01:39', null, '1', null, '1', '20191123140139687', '20534059135dae6f9a9d4ce68e0cfd919335fd2a1574488874856', '80', '2.02');
INSERT INTO `sampling_media_order` VALUES ('1767', '0', '2019-11-23 14:02:25', null, '1', null, '1', '20191123140225324', '75402165425f852d228a4c929c6faaefc063b1831574487567828', '80', '2.97');
INSERT INTO `sampling_media_order` VALUES ('1768', '0', '2019-11-23 14:08:38', null, '1', null, '1', '20191123140838613', '6611549371f87657254746e89880b800c632751b1574489279394', '106', '2.15');
INSERT INTO `sampling_media_order` VALUES ('1769', '0', '2019-11-23 14:09:43', null, '1', null, '1', '20191123140943365', '97624831871f883b4b234b6fab7384a0b778066e1574489374668', '79', '2.16');
INSERT INTO `sampling_media_order` VALUES ('1770', '0', '2019-11-23 14:10:02', null, '1', null, '1', '20191123141002165', '6611549371f87657254746e89880b800c632751b1574489279394', '43', '2.63');
INSERT INTO `sampling_media_order` VALUES ('1771', '0', '2019-11-23 14:14:57', null, '1', null, '1', '20191123141457798', '7715030810f440910db74d0fbb672dd1055d90ef1574489663994', '80', '2.19');
INSERT INTO `sampling_media_order` VALUES ('1772', '0', '2019-11-23 14:18:16', null, '1', null, '1', '20191123141816926', '75402165425f852d228a4c929c6faaefc063b1831574487567828', '92', '2.01');
INSERT INTO `sampling_media_order` VALUES ('1773', '0', '2019-11-23 14:19:27', null, '1', null, '1', '20191123141927499', '75402165425f852d228a4c929c6faaefc063b1831574487567828', '80', '2.24');
INSERT INTO `sampling_media_order` VALUES ('1774', '0', '2019-11-23 14:21:23', null, '1', null, '1', '20191123142123233', '3171124574bb983b3b8c4003977f918a6995ed851574490047171', '52', '2.23');
INSERT INTO `sampling_media_order` VALUES ('1775', '0', '2019-11-23 14:22:49', null, '1', null, '1', '20191123142249230', '3171124574bb983b3b8c4003977f918a6995ed851574490047171', '92', '2.56');
INSERT INTO `sampling_media_order` VALUES ('1776', '0', '2019-11-23 14:23:54', null, '1', null, '1', '20191123142354822', '5287584886ca00a37b584ccf87dae5aa2de4a8901574490183656', '52', '2.59');
INSERT INTO `sampling_media_order` VALUES ('1777', '0', '2019-11-23 14:27:21', null, '1', null, '1', '20191123142721893', '6729675996cacbc8c99c4c33b8d78188731ffd491574489208352', '50', '2.36');
INSERT INTO `sampling_media_order` VALUES ('1778', '0', '2019-11-23 14:30:36', null, '1', null, '1', '20191123143036647', '75402165425f852d228a4c929c6faaefc063b1831574487567828', '96', '2.99');
INSERT INTO `sampling_media_order` VALUES ('1779', '0', '2019-11-23 14:31:56', null, '1', null, '1', '20191123143156299', '75402165425f852d228a4c929c6faaefc063b1831574487567828', '96', '2.97');
INSERT INTO `sampling_media_order` VALUES ('1780', '0', '2019-11-23 14:32:14', null, '1', null, '1', '20191123143214344', '75402165425f852d228a4c929c6faaefc063b1831574487567828', '92', '2.43');
INSERT INTO `sampling_media_order` VALUES ('1781', '0', '2019-11-23 14:32:25', null, '1', null, '1', '20191123143225980', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '52', '2.25');
INSERT INTO `sampling_media_order` VALUES ('1782', '0', '2019-11-23 14:32:33', null, '1', null, '1', '20191123143233159', '75402165425f852d228a4c929c6faaefc063b1831574487567828', '49', '2.98');
INSERT INTO `sampling_media_order` VALUES ('1783', '0', '2019-11-23 17:14:23', null, '1', null, '1', '20191123171423802', '261725326be6f8ee2fa14030889e5ec5758da19b1574500440493', '62', '2.93');
INSERT INTO `sampling_media_order` VALUES ('1784', '0', '2019-11-23 17:14:35', null, '1', null, '1', '20191123171435504', '261725326be6f8ee2fa14030889e5ec5758da19b1574500440493', '40', '2.66');
INSERT INTO `sampling_media_order` VALUES ('1785', '0', '2019-11-23 17:14:39', null, '1', null, '1', '20191123171439931', '20534059135dae6f9a9d4ce68e0cfd919335fd2a1574488874856', '80', '2.91');
INSERT INTO `sampling_media_order` VALUES ('1786', '0', '2019-11-23 17:14:54', null, '1', null, '1', '20191123171454651', '904342611618c7b4c2254e5ea7a7f730115b6f521574500401409', '79', '2.21');
INSERT INTO `sampling_media_order` VALUES ('1787', '0', '2019-11-23 17:14:59', null, '1', null, '1', '20191123171459354', '20534059135dae6f9a9d4ce68e0cfd919335fd2a1574488874856', '54', '2.33');
INSERT INTO `sampling_media_order` VALUES ('1788', '0', '2019-11-23 17:15:22', null, '1', null, '1', '20191123171522961', '261725326be6f8ee2fa14030889e5ec5758da19b1574500440493', '74', '2.14');
INSERT INTO `sampling_media_order` VALUES ('1789', '0', '2019-11-23 17:15:32', null, '1', null, '1', '20191123171532757', '904342611618c7b4c2254e5ea7a7f730115b6f521574500401409', '76', '2.97');
INSERT INTO `sampling_media_order` VALUES ('1790', '0', '2019-11-23 17:15:50', null, '1', null, '1', '20191123171550854', '261725326be6f8ee2fa14030889e5ec5758da19b1574500440493', '69', '2.53');
INSERT INTO `sampling_media_order` VALUES ('1791', '0', '2019-11-23 17:17:03', null, '1', null, '1', '20191123171703645', '261725326be6f8ee2fa14030889e5ec5758da19b1574500440493', '54', '2.47');
INSERT INTO `sampling_media_order` VALUES ('1792', '0', '2019-11-23 17:17:04', null, '1', null, '1', '20191123171704459', '59611630f8ca083fa21c444cb069575594f2ea861574500553386', '35', '2.80');
INSERT INTO `sampling_media_order` VALUES ('1793', '0', '2019-11-23 17:17:54', null, '1', null, '1', '20191123171754315', '59611630f8ca083fa21c444cb069575594f2ea861574500553386', '92', '2.04');
INSERT INTO `sampling_media_order` VALUES ('1794', '0', '2019-11-23 17:18:02', null, '1', null, '1', '20191123171802329', '261725326be6f8ee2fa14030889e5ec5758da19b1574500440493', '81', '2.65');
INSERT INTO `sampling_media_order` VALUES ('1795', '0', '2019-11-23 17:18:15', null, '1', null, '1', '20191123171815903', '904342611618c7b4c2254e5ea7a7f730115b6f521574500401409', '96', '2.97');
INSERT INTO `sampling_media_order` VALUES ('1796', '0', '2019-11-23 17:18:45', null, '1', null, '1', '20191123171845985', '904342611618c7b4c2254e5ea7a7f730115b6f521574500401409', '95', '2.46');
INSERT INTO `sampling_media_order` VALUES ('1797', '0', '2019-11-23 17:19:16', null, '1', null, '1', '20191123171916581', '904342611618c7b4c2254e5ea7a7f730115b6f521574500401409', '52', '2.52');
INSERT INTO `sampling_media_order` VALUES ('1798', '0', '2019-11-23 17:19:37', null, '1', null, '1', '20191123171937218', '904342611618c7b4c2254e5ea7a7f730115b6f521574500401409', '36', '2.49');
INSERT INTO `sampling_media_order` VALUES ('1799', '0', '2019-11-23 17:19:52', null, '1', null, '1', '20191123171952515', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '106', '2.68');
INSERT INTO `sampling_media_order` VALUES ('1800', '0', '2019-11-23 17:20:00', null, '1', null, '1', '20191123172000311', '80290395686ed6a835584a88a78aef6b931540cd1573054608018', '62', '2.98');
INSERT INTO `sampling_media_order` VALUES ('1801', '0', '2019-11-23 17:20:33', null, '1', null, '1', '20191123172033112', '904342611618c7b4c2254e5ea7a7f730115b6f521574500401409', '95', '2.28');
INSERT INTO `sampling_media_order` VALUES ('1802', '0', '2019-11-23 17:21:30', null, '1', null, '1', '20191123172130705', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '94', '2.15');
INSERT INTO `sampling_media_order` VALUES ('1803', '0', '2019-11-23 17:22:51', null, '1', null, '1', '20191123172251380', '6729675996cacbc8c99c4c33b8d78188731ffd491574489208352', '52', '2.75');
INSERT INTO `sampling_media_order` VALUES ('1804', '0', '2019-11-23 17:24:36', null, '1', null, '1', '20191123172436507', '6729675996cacbc8c99c4c33b8d78188731ffd491574489208352', '94', '2.78');
INSERT INTO `sampling_media_order` VALUES ('1805', '0', '2019-11-23 17:26:33', null, '1', null, '1', '20191123172633324', '89174248178e89b9e91d49378d360449de7642821572985035878', '36', '2.03');
INSERT INTO `sampling_media_order` VALUES ('1806', '0', '2019-11-23 17:29:09', null, '1', null, '1', '20191123172909480', '6729675996cacbc8c99c4c33b8d78188731ffd491574489208352', '76', '2.71');
INSERT INTO `sampling_media_order` VALUES ('1807', '0', '2019-11-23 17:32:05', null, '1', null, '1', '20191123173205472', '6729675996cacbc8c99c4c33b8d78188731ffd491574489208352', '41', '2.94');
INSERT INTO `sampling_media_order` VALUES ('1808', '0', '2019-11-23 17:32:54', null, '1', null, '1', '20191123173254119', '6729675996cacbc8c99c4c33b8d78188731ffd491574489208352', '52', '2.54');
INSERT INTO `sampling_media_order` VALUES ('1809', '0', '2019-11-23 17:33:56', null, '1', null, '1', '20191123173356374', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '73', '2.01');
INSERT INTO `sampling_media_order` VALUES ('1810', '0', '2019-11-23 17:34:36', null, '1', null, '1', '20191123173436609', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '95', '2.80');
INSERT INTO `sampling_media_order` VALUES ('1811', '0', '2019-11-23 17:36:31', null, '1', null, '1', '20191123173631395', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '54', '2.77');
INSERT INTO `sampling_media_order` VALUES ('1812', '0', '2019-11-23 17:37:55', null, '1', null, '1', '20191123173755527', '35166061e1185316122046529b747fa92e63834b1574501866985', '63', '2.34');
INSERT INTO `sampling_media_order` VALUES ('1813', '0', '2019-11-23 20:56:40', null, '1', null, '1', '20191123205640493', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '79', '2.41');
INSERT INTO `sampling_media_order` VALUES ('1814', '0', '2019-11-23 20:57:21', null, '1', null, '1', '20191123205721798', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '92', '2.93');
INSERT INTO `sampling_media_order` VALUES ('1815', '0', '2019-11-23 20:58:04', null, '1', null, '1', '20191123205804657', '89174248178e89b9e91d49378d360449de7642821572985035878', '106', '2.72');
INSERT INTO `sampling_media_order` VALUES ('1816', '0', '2019-11-23 20:58:49', null, '1', null, '1', '20191123205849375', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '106', '2.98');
INSERT INTO `sampling_media_order` VALUES ('1817', '0', '2019-11-23 20:59:48', null, '1', null, '1', '20191123205948892', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '85', '2.61');
INSERT INTO `sampling_media_order` VALUES ('1818', '0', '2019-11-23 21:05:26', null, '1', null, '1', '20191123210526595', '80290395686ed6a835584a88a78aef6b931540cd1573054608018', '85', '2.44');
INSERT INTO `sampling_media_order` VALUES ('1819', '0', '2019-11-23 21:06:42', null, '1', null, '1', '20191123210642891', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '96', '2.98');
INSERT INTO `sampling_media_order` VALUES ('1820', '0', '2019-11-23 21:22:35', null, '1', null, '1', '20191123212235442', '26982093744c91ba81ae44d3a1033c856da388ef1574515334463', '40', '2.46');
INSERT INTO `sampling_media_order` VALUES ('1821', '0', '2019-11-23 21:23:56', null, '1', null, '1', '20191123212356133', '72915500be909ad9f96c473d8015d87abb57c1a91574488862612', '105', '2.42');
INSERT INTO `sampling_media_order` VALUES ('1822', '0', '2019-11-23 21:24:08', null, '1', null, '1', '20191123212408849', '17959146cf6bac29a67d4f4392d4ceaecd1745dd1574515438252', '79', '2.14');
INSERT INTO `sampling_media_order` VALUES ('1823', '0', '2019-11-23 21:24:58', null, '1', null, '1', '20191123212458138', '20534059135dae6f9a9d4ce68e0cfd919335fd2a1574488874856', '80', '2.91');
INSERT INTO `sampling_media_order` VALUES ('1824', '0', '2019-11-23 21:25:59', null, '1', null, '1', '20191123212559926', '12050005dfa4b8be2bad4a839f72d63762c2f4ee1574515549478', '80', '2.80');
INSERT INTO `sampling_media_order` VALUES ('1825', '0', '2019-11-23 21:26:16', null, '1', null, '1', '20191123212616237', '6729675996cacbc8c99c4c33b8d78188731ffd491574489208352', '52', '2.68');
INSERT INTO `sampling_media_order` VALUES ('1826', '0', '2019-11-23 21:26:55', null, '1', null, '1', '20191123212655520', '20534059135dae6f9a9d4ce68e0cfd919335fd2a1574488874856', '58', '2.80');
INSERT INTO `sampling_media_order` VALUES ('1827', '0', '2019-11-23 21:26:57', null, '1', null, '1', '20191123212657204', '97700570c6ad7cbcef074bbba1c4a6b0453b12f31574515513373', '79', '2.81');
INSERT INTO `sampling_media_order` VALUES ('1828', '0', '2019-11-23 21:27:29', null, '1', null, '1', '20191123212729165', '97700570c6ad7cbcef074bbba1c4a6b0453b12f31574515513373', '63', '2.90');
INSERT INTO `sampling_media_order` VALUES ('1829', '0', '2019-11-23 21:27:43', null, '1', null, '1', '20191123212743533', '97700570c6ad7cbcef074bbba1c4a6b0453b12f31574515513373', '36', '2.69');
INSERT INTO `sampling_media_order` VALUES ('1830', '0', '2019-11-23 21:28:00', null, '1', null, '1', '20191123212800387', '80290395686ed6a835584a88a78aef6b931540cd1573054608018', '79', '2.51');
INSERT INTO `sampling_media_order` VALUES ('1831', '0', '2019-11-23 21:28:03', null, '1', null, '1', '20191123212803280', '6509636664e38451d8bc4282bb0eb6ec9056bcaa1574515646424', '22', '2.23');
INSERT INTO `sampling_media_order` VALUES ('1832', '0', '2019-11-23 21:29:24', null, '1', null, '1', '20191123212924596', '20534059135dae6f9a9d4ce68e0cfd919335fd2a1574488874856', '54', '2.84');
INSERT INTO `sampling_media_order` VALUES ('1833', '0', '2019-11-23 21:31:59', null, '1', null, '1', '20191123213159127', '9104736566e8ad2f2c1045bb82f0918c9e19d5141574515888841', '65', '2.02');
INSERT INTO `sampling_media_order` VALUES ('1834', '0', '2019-11-23 21:32:08', null, '1', null, '1', '20191123213208323', '20534059135dae6f9a9d4ce68e0cfd919335fd2a1574488874856', '64', '2.92');
INSERT INTO `sampling_media_order` VALUES ('1835', '0', '2019-11-23 21:32:57', null, '1', null, '1', '20191123213257883', '20534059135dae6f9a9d4ce68e0cfd919335fd2a1574488874856', '54', '2.16');
INSERT INTO `sampling_media_order` VALUES ('1836', '0', '2019-11-23 21:34:35', null, '1', null, '1', '20191123213435769', '20534059135dae6f9a9d4ce68e0cfd919335fd2a1574488874856', '63', '2.42');
INSERT INTO `sampling_media_order` VALUES ('1837', '0', '2019-11-23 21:38:53', null, '1', null, '1', '20191123213853795', '1537133870fe679fdd124437a5046d238fcceda21574235016311', '79', '2.81');
INSERT INTO `sampling_media_order` VALUES ('1838', '0', '2019-11-23 21:39:32', null, '1', null, '1', '20191123213932790', '1537133870fe679fdd124437a5046d238fcceda21574235016311', '92', '2.23');
INSERT INTO `sampling_media_order` VALUES ('1839', '0', '2019-11-23 21:40:03', null, '1', null, '1', '20191123214003804', '1537133870fe679fdd124437a5046d238fcceda21574235016311', '79', '2.21');
INSERT INTO `sampling_media_order` VALUES ('1840', '0', '2019-11-23 21:40:14', null, '1', null, '1', '20191123214014609', '75402165425f852d228a4c929c6faaefc063b1831574487567828', '96', '2.07');
INSERT INTO `sampling_media_order` VALUES ('1841', '0', '2019-11-23 21:40:29', null, '1', null, '1', '20191123214029193', '75402165425f852d228a4c929c6faaefc063b1831574487567828', '54', '2.64');
INSERT INTO `sampling_media_order` VALUES ('1842', '0', '2019-11-23 21:41:57', null, '1', null, '1', '20191123214157833', '75402165425f852d228a4c929c6faaefc063b1831574487567828', '54', '2.23');
INSERT INTO `sampling_media_order` VALUES ('1843', '0', '2019-11-23 21:42:32', null, '1', null, '1', '20191123214232771', '75402165425f852d228a4c929c6faaefc063b1831574487567828', '41', '2.80');
INSERT INTO `sampling_media_order` VALUES ('1844', '0', '2019-11-23 21:43:31', null, '1', null, '1', '20191123214331203', '75402165425f852d228a4c929c6faaefc063b1831574487567828', '35', '2.39');
INSERT INTO `sampling_media_order` VALUES ('1845', '0', '2019-11-23 21:43:42', null, '1', null, '1', '20191123214342828', '904342611618c7b4c2254e5ea7a7f730115b6f521574500401409', '80', '2.73');
INSERT INTO `sampling_media_order` VALUES ('1846', '0', '2019-11-23 21:44:33', null, '1', null, '1', '20191123214433104', '904342611618c7b4c2254e5ea7a7f730115b6f521574500401409', '29', '2.34');
INSERT INTO `sampling_media_order` VALUES ('1847', '0', '2019-11-23 21:45:32', null, '1', null, '1', '20191123214532149', '904342611618c7b4c2254e5ea7a7f730115b6f521574500401409', '65', '2.74');
INSERT INTO `sampling_media_order` VALUES ('1848', '0', '2019-11-23 21:45:51', null, '1', null, '1', '20191123214551560', '75402165425f852d228a4c929c6faaefc063b1831574487567828', '38', '2.72');
INSERT INTO `sampling_media_order` VALUES ('1849', '0', '2019-11-23 21:46:31', null, '1', null, '1', '20191123214631584', '75402165425f852d228a4c929c6faaefc063b1831574487567828', '65', '2.31');
INSERT INTO `sampling_media_order` VALUES ('1850', '0', '2019-11-23 21:53:32', null, '1', null, '1', '20191123215332935', '80290395686ed6a835584a88a78aef6b931540cd1573054608018', '86', '2.08');
INSERT INTO `sampling_media_order` VALUES ('1851', '0', '2019-11-23 21:59:26', null, '1', null, '1', '20191123215926858', '881256612425f71b83c8486b86dd12a44eedb1ef1574517538288', '52', '2.55');
INSERT INTO `sampling_media_order` VALUES ('1852', '0', '2019-11-23 21:59:52', null, '1', null, '1', '20191123215952476', '881256612425f71b83c8486b86dd12a44eedb1ef1574517538288', '65', '2.97');
INSERT INTO `sampling_media_order` VALUES ('1853', '0', '2019-11-23 22:04:43', null, '1', null, '1', '20191123220443578', '904342611618c7b4c2254e5ea7a7f730115b6f521574500401409', '65', '2.65');
INSERT INTO `sampling_media_order` VALUES ('1854', '0', '2019-11-23 22:13:31', null, '1', null, '1', '20191123221331451', '3171124574bb983b3b8c4003977f918a6995ed851574490047171', '80', '2.51');
INSERT INTO `sampling_media_order` VALUES ('1855', '0', '2019-11-23 22:28:55', null, '1', null, '1', '20191123222855909', '3171124574bb983b3b8c4003977f918a6995ed851574490047171', '80', '2.82');
INSERT INTO `sampling_media_order` VALUES ('1856', '0', '2019-11-23 22:31:32', null, '1', null, '1', '20191123223132797', '3171124574bb983b3b8c4003977f918a6995ed851574490047171', '55', '2.52');
INSERT INTO `sampling_media_order` VALUES ('1857', '0', '2019-11-23 22:32:57', null, '1', null, '1', '20191123223257856', '3171124574bb983b3b8c4003977f918a6995ed851574490047171', '62', '2.50');
INSERT INTO `sampling_media_order` VALUES ('1858', '0', '2019-11-23 22:42:20', null, '1', null, '1', '20191123224220549', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '106', '2.43');
INSERT INTO `sampling_media_order` VALUES ('1859', '0', '2019-11-23 22:44:09', null, '1', null, '1', '20191123224409927', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '80', '2.23');
INSERT INTO `sampling_media_order` VALUES ('1860', '0', '2019-11-23 22:44:57', null, '1', null, '1', '20191123224457452', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '86', '2.40');
INSERT INTO `sampling_media_order` VALUES ('1861', '0', '2019-11-23 22:48:03', null, '1', null, '1', '20191123224803207', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '107', '2.65');
INSERT INTO `sampling_media_order` VALUES ('1862', '0', '2019-11-23 22:49:07', null, '1', null, '1', '20191123224907737', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '107', '2.10');
INSERT INTO `sampling_media_order` VALUES ('1863', '0', '2019-11-23 22:52:42', null, '1', null, '1', '20191123225242525', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '60', '2.01');
INSERT INTO `sampling_media_order` VALUES ('1864', '0', '2019-11-23 22:52:58', null, '1', null, '1', '20191123225258844', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '86', '2.84');
INSERT INTO `sampling_media_order` VALUES ('1865', '0', '2019-11-23 22:53:41', null, '1', null, '1', '20191123225341928', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '29', '2.33');
INSERT INTO `sampling_media_order` VALUES ('1866', '0', '2019-11-23 22:55:53', null, '1', null, '1', '20191123225553467', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '41', '2.49');
INSERT INTO `sampling_media_order` VALUES ('1867', '0', '2019-11-23 22:56:36', null, '1', null, '1', '20191123225636284', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '35', '2.47');
INSERT INTO `sampling_media_order` VALUES ('1868', '0', '2019-11-23 22:57:20', null, '1', null, '1', '20191123225720957', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '101', '2.74');
INSERT INTO `sampling_media_order` VALUES ('1869', '0', '2019-11-23 22:57:52', null, '1', null, '1', '20191123225752401', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '83', '2.70');
INSERT INTO `sampling_media_order` VALUES ('1870', '0', '2019-11-23 22:59:43', null, '1', null, '1', '20191123225943764', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '93', '2.03');
INSERT INTO `sampling_media_order` VALUES ('1871', '0', '2019-11-23 23:00:06', null, '1', null, '1', '20191123230006325', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '60', '2.44');
INSERT INTO `sampling_media_order` VALUES ('1872', '0', '2019-11-23 23:00:32', null, '1', null, '1', '20191123230032985', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '68', '2.86');
INSERT INTO `sampling_media_order` VALUES ('1873', '0', '2019-11-23 23:01:19', null, '1', null, '1', '20191123230119641', '75180721f6b5ba95ff964894aafde0b7e42742ca1574521251449', '52', '2.89');
INSERT INTO `sampling_media_order` VALUES ('1874', '0', '2019-11-23 23:02:26', null, '1', null, '1', '20191123230226430', '75180721f6b5ba95ff964894aafde0b7e42742ca1574521251449', '41', '2.46');
INSERT INTO `sampling_media_order` VALUES ('1875', '0', '2019-11-23 23:04:39', null, '1', null, '1', '20191123230439214', '75180721f6b5ba95ff964894aafde0b7e42742ca1574521251449', '49', '2.31');
INSERT INTO `sampling_media_order` VALUES ('1876', '0', '2019-11-23 23:04:54', null, '1', null, '1', '20191123230454372', '75180721f6b5ba95ff964894aafde0b7e42742ca1574521251449', '23', '2.00');
INSERT INTO `sampling_media_order` VALUES ('1877', '0', '2019-11-23 23:07:30', null, '1', null, '1', '20191123230730597', '75180721f6b5ba95ff964894aafde0b7e42742ca1574521251449', '66', '2.81');
INSERT INTO `sampling_media_order` VALUES ('1878', '0', '2019-11-23 23:08:33', null, '1', null, '1', '20191123230833842', '75180721f6b5ba95ff964894aafde0b7e42742ca1574521251449', '65', '2.04');
INSERT INTO `sampling_media_order` VALUES ('1879', '0', '2019-11-23 23:09:27', null, '1', null, '1', '20191123230927364', '75180721f6b5ba95ff964894aafde0b7e42742ca1574521251449', '53', '2.92');
INSERT INTO `sampling_media_order` VALUES ('1880', '0', '2019-11-23 23:10:27', null, '1', null, '1', '20191123231027145', '75180721f6b5ba95ff964894aafde0b7e42742ca1574521251449', '96', '2.51');
INSERT INTO `sampling_media_order` VALUES ('1881', '0', '2019-11-23 23:15:05', null, '1', null, '1', '20191123231505369', '18761938747d2f5b0d3e440690b73686cb0e880b1573222826570', '54', '2.47');
INSERT INTO `sampling_media_order` VALUES ('1882', '0', '2019-11-23 23:24:10', null, '1', null, '1', '20191123232410328', '345801866d245a1b1fbc4cbfb36e25f1e33df19e1574334255941', '52', '2.69');
INSERT INTO `sampling_media_order` VALUES ('1883', '0', '2019-11-23 23:24:56', null, '1', null, '1', '20191123232456441', '345801866d245a1b1fbc4cbfb36e25f1e33df19e1574334255941', '79', '2.84');
INSERT INTO `sampling_media_order` VALUES ('1884', '0', '2019-11-23 23:47:48', null, '1', null, '1', '20191123234748486', '19058559ff05e1fbd0af4c2c9876b1efc3f2c52f1574524055293', '79', '2.34');
INSERT INTO `sampling_media_order` VALUES ('1885', '0', '2019-11-23 23:48:57', null, '1', null, '1', '20191123234857823', '881256612425f71b83c8486b86dd12a44eedb1ef1574517538288', '107', '2.79');
INSERT INTO `sampling_media_order` VALUES ('1886', '0', '2019-11-23 23:49:22', null, '1', null, '1', '20191123234922688', '3001322040ce2a73a6ba49e59ad98c06b3be31051574524130416', '96', '2.91');
INSERT INTO `sampling_media_order` VALUES ('1887', '0', '2019-11-23 23:49:30', null, '1', null, '1', '20191123234930419', '881256612425f71b83c8486b86dd12a44eedb1ef1574517538288', '92', '2.03');
INSERT INTO `sampling_media_order` VALUES ('1888', '0', '2019-11-23 23:50:17', null, '1', null, '1', '20191123235016534', '3001322040ce2a73a6ba49e59ad98c06b3be31051574524130416', '79', '2.33');
INSERT INTO `sampling_media_order` VALUES ('1889', '0', '2019-11-23 23:50:29', null, '1', null, '1', '20191123235029484', '881256612425f71b83c8486b86dd12a44eedb1ef1574517538288', '65', '2.51');
INSERT INTO `sampling_media_order` VALUES ('1890', '0', '2019-11-23 23:51:07', null, '1', null, '1', '20191123235107976', '881256612425f71b83c8486b86dd12a44eedb1ef1574517538288', '65', '2.90');
INSERT INTO `sampling_media_order` VALUES ('1891', '0', '2019-11-23 23:51:28', null, '1', null, '1', '20191123235128931', '3001322040ce2a73a6ba49e59ad98c06b3be31051574524130416', '62', '2.49');
INSERT INTO `sampling_media_order` VALUES ('1892', '0', '2019-11-23 23:51:55', null, '1', null, '1', '20191123235155717', '881256612425f71b83c8486b86dd12a44eedb1ef1574517538288', '65', '2.32');
INSERT INTO `sampling_media_order` VALUES ('1893', '0', '2019-11-23 23:52:36', null, '1', null, '1', '20191123235236565', '881256612425f71b83c8486b86dd12a44eedb1ef1574517538288', '65', '2.78');
INSERT INTO `sampling_media_order` VALUES ('1894', '0', '2019-11-24 00:05:28', null, '1', null, '1', '20191124000528553', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '93', '2.43');
INSERT INTO `sampling_media_order` VALUES ('1895', '0', '2019-11-24 00:08:23', null, '1', null, '1', '20191124000823397', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '68', '2.68');
INSERT INTO `sampling_media_order` VALUES ('1896', '0', '2019-11-24 00:09:01', null, '1', null, '1', '20191124000901312', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '73', '2.18');
INSERT INTO `sampling_media_order` VALUES ('1897', '0', '2019-11-24 00:10:54', null, '1', null, '1', '20191124001054518', '75402165425f852d228a4c929c6faaefc063b1831574487567828', '65', '2.38');
INSERT INTO `sampling_media_order` VALUES ('1898', '0', '2019-11-24 00:10:56', null, '1', null, '1', '20191124001056557', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '64', '2.72');
INSERT INTO `sampling_media_order` VALUES ('1899', '0', '2019-11-24 00:11:10', null, '1', null, '1', '20191124001110783', '75402165425f852d228a4c929c6faaefc063b1831574487567828', '92', '2.32');
INSERT INTO `sampling_media_order` VALUES ('1900', '0', '2019-11-24 00:11:11', null, '1', null, '1', '20191124001111506', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '94', '2.25');
INSERT INTO `sampling_media_order` VALUES ('1901', '0', '2019-11-24 00:11:29', null, '1', null, '1', '20191124001129203', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '80', '2.40');
INSERT INTO `sampling_media_order` VALUES ('1902', '0', '2019-11-24 00:11:57', null, '1', null, '1', '20191124001157643', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '60', '2.52');
INSERT INTO `sampling_media_order` VALUES ('1903', '0', '2019-11-24 00:13:18', null, '1', null, '1', '20191124001318866', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '86', '2.85');
INSERT INTO `sampling_media_order` VALUES ('1904', '0', '2019-11-24 00:13:37', null, '1', null, '1', '20191124001337630', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '83', '2.94');
INSERT INTO `sampling_media_order` VALUES ('1905', '0', '2019-11-24 00:14:00', null, '1', null, '1', '20191124001400851', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '68', '2.02');
INSERT INTO `sampling_media_order` VALUES ('1906', '0', '2019-11-24 00:14:21', null, '1', null, '1', '20191124001421811', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '42', '2.02');
INSERT INTO `sampling_media_order` VALUES ('1907', '0', '2019-11-24 00:14:56', null, '1', null, '1', '20191124001456265', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '93', '2.53');
INSERT INTO `sampling_media_order` VALUES ('1908', '0', '2019-11-24 00:15:34', null, '1', null, '1', '20191124001534750', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '32', '2.86');
INSERT INTO `sampling_media_order` VALUES ('1909', '0', '2019-11-24 00:15:51', null, '1', null, '1', '20191124001551815', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '30', '2.02');
INSERT INTO `sampling_media_order` VALUES ('1910', '0', '2019-11-24 00:16:15', null, '1', null, '1', '20191124001615435', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '65', '2.88');
INSERT INTO `sampling_media_order` VALUES ('1911', '0', '2019-11-24 00:16:46', null, '1', null, '1', '20191124001646377', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '48', '2.78');
INSERT INTO `sampling_media_order` VALUES ('1912', '0', '2019-11-24 00:17:15', null, '1', null, '1', '20191124001715682', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '89', '2.78');
INSERT INTO `sampling_media_order` VALUES ('1913', '0', '2019-11-24 00:19:52', null, '1', null, '1', '20191124001952153', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '46', '2.87');
INSERT INTO `sampling_media_order` VALUES ('1914', '0', '2019-11-24 00:24:22', null, '1', null, '1', '20191124002422103', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '40', '2.76');
INSERT INTO `sampling_media_order` VALUES ('1915', '0', '2019-11-24 00:24:48', null, '1', null, '1', '20191124002448589', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '32', '2.18');
INSERT INTO `sampling_media_order` VALUES ('1916', '0', '2019-11-24 00:25:52', null, '1', null, '1', '20191124002552913', '75402165425f852d228a4c929c6faaefc063b1831574487567828', '54', '2.44');
INSERT INTO `sampling_media_order` VALUES ('1917', '0', '2019-11-24 00:26:47', null, '1', null, '1', '20191124002647725', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '48', '2.23');
INSERT INTO `sampling_media_order` VALUES ('1918', '0', '2019-11-24 00:27:31', null, '1', null, '1', '20191124002731217', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '20', '2.06');
INSERT INTO `sampling_media_order` VALUES ('1919', '0', '2019-11-24 00:27:50', null, '1', null, '1', '20191124002750322', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '101', '2.23');
INSERT INTO `sampling_media_order` VALUES ('1920', '0', '2019-11-24 00:28:26', null, '1', null, '1', '20191124002826318', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '90', '2.15');
INSERT INTO `sampling_media_order` VALUES ('1921', '0', '2019-11-24 00:29:46', null, '1', null, '1', '20191124002946636', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '40', '2.28');
INSERT INTO `sampling_media_order` VALUES ('1922', '0', '2019-11-24 00:30:03', null, '1', null, '1', '20191124003003599', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '60', '2.38');
INSERT INTO `sampling_media_order` VALUES ('1923', '0', '2019-11-24 00:32:54', null, '1', null, '1', '20191124003254582', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '49', '2.92');
INSERT INTO `sampling_media_order` VALUES ('1924', '0', '2019-11-24 01:57:44', null, '1', null, '1', '20191124015744686', '192299908fc41467f5844411bb4b93a4e70626151574531835476', '99', '2.98');
INSERT INTO `sampling_media_order` VALUES ('1925', '0', '2019-11-24 03:22:00', null, '1', null, '1', '20191124032200219', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '106', '2.27');
INSERT INTO `sampling_media_order` VALUES ('1926', '0', '2019-11-24 03:22:28', null, '1', null, '1', '20191124032228492', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '107', '2.96');
INSERT INTO `sampling_media_order` VALUES ('1927', '0', '2019-11-24 03:22:55', null, '1', null, '1', '20191124032255559', '3624892125f10981117b4cd486a07ec7027e91ac1573156287516', '96', '2.07');
INSERT INTO `sampling_media_order` VALUES ('1928', '0', '2019-11-24 03:39:32', null, '1', null, '1', '20191124033932881', '13545940aacac969180c4bf1ab25b345cb12c0af1574537950375', '52', '2.16');
INSERT INTO `sampling_media_order` VALUES ('1929', '0', '2019-11-24 03:54:29', null, '1', null, '1', '20191124035429498', '66120857601f621fdd064669ab545b9a20ef13b81574331611767', '107', '2.68');
INSERT INTO `sampling_media_order` VALUES ('1930', '0', '2019-11-24 03:55:21', null, '1', null, '1', '20191124035521183', '66120857601f621fdd064669ab545b9a20ef13b81574331611767', '52', '2.82');
INSERT INTO `sampling_media_order` VALUES ('1931', '0', '2019-11-24 05:46:24', null, '1', null, '1', '20191124054624243', '9028641919c9611a1cb042259ce0f1430b8794fb1574338760007', '80', '2.95');
INSERT INTO `sampling_media_order` VALUES ('1932', '0', '2019-11-24 05:48:12', null, '1', null, '1', '20191124054812459', '9028641919c9611a1cb042259ce0f1430b8794fb1574338760007', '80', '2.41');
INSERT INTO `sampling_media_order` VALUES ('1933', '0', '2019-11-24 05:59:46', null, '1', null, '1', '20191124055946929', '3951692519def813a33b4029a45012ff662d12ef1574328996808', '95', '2.50');
INSERT INTO `sampling_media_order` VALUES ('1934', '0', '2019-11-24 06:43:01', null, '1', null, '1', '20191124064301205', '519560795a60ba066d6348e2887eb4949650412f1574548942468', '44', '2.12');
INSERT INTO `sampling_media_order` VALUES ('1935', '0', '2019-11-24 06:43:37', null, '1', null, '1', '20191124064337404', '519560795a60ba066d6348e2887eb4949650412f1574548942468', '54', '2.18');
INSERT INTO `sampling_media_order` VALUES ('1936', '0', '2019-11-24 06:54:18', null, '1', null, '1', '20191124065418196', '5146499223dc7884db184d2bbd37eab09ff7786b1574328981511', '41', '2.92');
INSERT INTO `sampling_media_order` VALUES ('1937', '0', '2019-11-24 07:00:36', null, '1', null, '1', '20191124070036977', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '84', '2.47');
INSERT INTO `sampling_media_order` VALUES ('1938', '0', '2019-11-24 07:01:00', null, '1', null, '1', '20191124070100377', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '64', '2.25');
INSERT INTO `sampling_media_order` VALUES ('1939', '0', '2019-11-24 07:01:22', null, '1', null, '1', '20191124070122981', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '94', '2.11');
INSERT INTO `sampling_media_order` VALUES ('1940', '0', '2019-11-24 07:01:52', null, '1', null, '1', '20191124070152552', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '61', '2.06');
INSERT INTO `sampling_media_order` VALUES ('1941', '0', '2019-11-24 07:02:06', null, '1', null, '1', '20191124070206224', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '86', '2.69');
INSERT INTO `sampling_media_order` VALUES ('1942', '0', '2019-11-24 07:04:58', null, '1', null, '1', '20191124070458468', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '63', '2.86');
INSERT INTO `sampling_media_order` VALUES ('1943', '0', '2019-11-24 07:05:09', null, '1', null, '1', '20191124070509154', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '65', '2.33');
INSERT INTO `sampling_media_order` VALUES ('1944', '0', '2019-11-24 07:05:40', null, '1', null, '1', '20191124070540171', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '85', '2.62');
INSERT INTO `sampling_media_order` VALUES ('1945', '0', '2019-11-24 07:08:02', null, '1', null, '1', '20191124070802321', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '60', '2.63');
INSERT INTO `sampling_media_order` VALUES ('1946', '0', '2019-11-24 07:09:24', null, '1', null, '1', '20191124070924949', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '83', '2.62');
INSERT INTO `sampling_media_order` VALUES ('1947', '0', '2019-11-24 07:10:00', null, '1', null, '1', '20191124071000727', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '104', '2.20');
INSERT INTO `sampling_media_order` VALUES ('1948', '0', '2019-11-24 07:10:36', null, '1', null, '1', '20191124071036651', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '93', '2.94');
INSERT INTO `sampling_media_order` VALUES ('1949', '0', '2019-11-24 07:11:17', null, '1', null, '1', '20191124071117323', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '91', '2.04');
INSERT INTO `sampling_media_order` VALUES ('1950', '0', '2019-11-24 07:33:38', null, '1', null, '1', '20191124073338797', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '99', '2.93');
INSERT INTO `sampling_media_order` VALUES ('1951', '0', '2019-11-24 07:35:06', null, '1', null, '1', '20191124073506648', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '80', '2.94');
INSERT INTO `sampling_media_order` VALUES ('1952', '0', '2019-11-24 09:03:27', null, '1', null, '1', '20191124090327378', '35166061e1185316122046529b747fa92e63834b1574501866985', '96', '2.54');
INSERT INTO `sampling_media_order` VALUES ('1953', '0', '2019-11-24 09:23:25', null, '1', null, '1', '20191124092325770', '35166061e1185316122046529b747fa92e63834b1574501866985', '65', '2.06');
INSERT INTO `sampling_media_order` VALUES ('1954', '0', '2019-11-24 10:36:56', null, '1', null, '1', '20191124103656830', '35166061e1185316122046529b747fa92e63834b1574501866985', '41', '2.87');
INSERT INTO `sampling_media_order` VALUES ('1955', '0', '2019-11-24 10:50:14', null, '1', null, '1', '20191124105014706', '79891171a915b7433b60462c9bc574ee7344bc8c1574563761124', '79', '2.12');
INSERT INTO `sampling_media_order` VALUES ('1956', '0', '2019-11-24 11:06:29', null, '1', null, '1', '20191124110629754', '79891171a915b7433b60462c9bc574ee7344bc8c1574563761124', '36', '2.86');
INSERT INTO `sampling_media_order` VALUES ('1957', '0', '2019-11-24 11:15:36', null, '1', null, '1', '20191124111536155', '1247711560aecdd394084983b3134abf820c040d1574565319157', '79', '2.34');
INSERT INTO `sampling_media_order` VALUES ('1958', '0', '2019-11-24 11:16:54', null, '1', null, '1', '20191124111654693', '79891171a915b7433b60462c9bc574ee7344bc8c1574563761124', '36', '2.40');
INSERT INTO `sampling_media_order` VALUES ('1959', '0', '2019-11-24 11:17:21', null, '1', null, '1', '20191124111721692', '79891171a915b7433b60462c9bc574ee7344bc8c1574563761124', '96', '2.19');
INSERT INTO `sampling_media_order` VALUES ('1960', '0', '2019-11-24 11:19:11', null, '1', null, '1', '20191124111911531', '79891171a915b7433b60462c9bc574ee7344bc8c1574563761124', '79', '2.27');
INSERT INTO `sampling_media_order` VALUES ('1961', '0', '2019-11-24 11:59:45', null, '1', null, '1', '20191124115945414', '80290395686ed6a835584a88a78aef6b931540cd1573054608018', '65', '2.50');
INSERT INTO `sampling_media_order` VALUES ('1962', '0', '2019-11-24 12:01:12', null, '1', null, '1', '20191124120112498', '80290395686ed6a835584a88a78aef6b931540cd1573054608018', '65', '2.39');
INSERT INTO `sampling_media_order` VALUES ('1963', '0', '2019-11-24 12:09:26', null, '1', null, '1', '20191124120926581', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '80', '2.83');
INSERT INTO `sampling_media_order` VALUES ('1964', '0', '2019-11-24 12:26:06', null, '1', null, '1', '20191124122606755', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '99', '2.98');
INSERT INTO `sampling_media_order` VALUES ('1965', '0', '2019-11-24 12:26:26', null, '1', null, '1', '20191124122626762', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '64', '2.35');
INSERT INTO `sampling_media_order` VALUES ('1966', '0', '2019-11-24 12:27:16', null, '1', null, '1', '20191124122716749', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '94', '2.95');
INSERT INTO `sampling_media_order` VALUES ('1967', '0', '2019-11-24 12:28:07', null, '1', null, '1', '20191124122807754', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '40', '2.15');
INSERT INTO `sampling_media_order` VALUES ('1968', '0', '2019-11-24 12:28:38', null, '1', null, '1', '20191124122838602', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '79', '2.45');
INSERT INTO `sampling_media_order` VALUES ('1969', '0', '2019-11-24 12:29:39', null, '1', null, '1', '20191124122939834', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '32', '2.48');
INSERT INTO `sampling_media_order` VALUES ('1970', '0', '2019-11-24 12:30:09', null, '1', null, '1', '20191124123009750', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '48', '2.79');
INSERT INTO `sampling_media_order` VALUES ('1971', '0', '2019-11-24 12:31:03', null, '1', null, '1', '20191124123103841', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '31', '2.30');
INSERT INTO `sampling_media_order` VALUES ('1972', '0', '2019-11-24 12:31:59', null, '1', null, '1', '20191124123159751', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '98', '2.49');
INSERT INTO `sampling_media_order` VALUES ('1973', '0', '2019-11-24 12:32:20', null, '1', null, '1', '20191124123220268', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '83', '2.97');
INSERT INTO `sampling_media_order` VALUES ('1974', '0', '2019-11-24 12:42:04', null, '1', null, '1', '20191124124204762', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '107', '2.23');
INSERT INTO `sampling_media_order` VALUES ('1975', '0', '2019-11-24 12:46:09', null, '1', null, '1', '20191124124609830', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '94', '2.40');
INSERT INTO `sampling_media_order` VALUES ('1976', '0', '2019-11-24 12:47:47', null, '1', null, '1', '20191124124747742', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '30', '2.27');
INSERT INTO `sampling_media_order` VALUES ('1977', '0', '2019-11-24 12:48:54', null, '1', null, '1', '20191124124854238', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '60', '2.50');
INSERT INTO `sampling_media_order` VALUES ('1978', '0', '2019-11-24 12:49:57', null, '1', null, '1', '20191124124957871', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '62', '2.54');
INSERT INTO `sampling_media_order` VALUES ('1979', '0', '2019-11-24 12:50:50', null, '1', null, '1', '20191124125050362', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '16', '2.65');
INSERT INTO `sampling_media_order` VALUES ('1980', '0', '2019-11-24 12:52:19', null, '1', null, '1', '20191124125219904', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '53', '2.59');
INSERT INTO `sampling_media_order` VALUES ('1981', '0', '2019-11-24 12:53:10', null, '1', null, '1', '20191124125310477', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '38', '2.50');
INSERT INTO `sampling_media_order` VALUES ('1982', '0', '2019-11-24 12:54:04', null, '1', null, '1', '20191124125404873', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '62', '2.80');
INSERT INTO `sampling_media_order` VALUES ('1983', '0', '2019-11-24 12:54:26', null, '1', null, '1', '20191124125426821', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '60', '2.26');
INSERT INTO `sampling_media_order` VALUES ('1984', '0', '2019-11-24 12:55:23', null, '1', null, '1', '20191124125523728', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '54', '2.82');
INSERT INTO `sampling_media_order` VALUES ('1985', '0', '2019-11-24 13:12:25', null, '1', null, '1', '20191124131225736', '81265429601bdffb55dd4ca586a85223b6b96d7c1574572316735', '80', '2.12');
INSERT INTO `sampling_media_order` VALUES ('1986', '0', '2019-11-24 13:13:46', null, '1', null, '1', '20191124131346848', '81265429601bdffb55dd4ca586a85223b6b96d7c1574572316735', '86', '2.66');
INSERT INTO `sampling_media_order` VALUES ('1987', '0', '2019-11-24 13:16:28', null, '1', null, '1', '20191124131628924', '21554960a612e460af2845a3865b594df1675edc1574572575551', '106', '2.39');
INSERT INTO `sampling_media_order` VALUES ('1988', '0', '2019-11-24 13:18:00', null, '1', null, '1', '20191124131800599', '21554960a612e460af2845a3865b594df1675edc1574572575551', '76', '2.37');
INSERT INTO `sampling_media_order` VALUES ('1989', '0', '2019-11-24 13:18:54', null, '1', null, '1', '20191124131854648', '22558860480cf99bd7224f70b35cf5e6707198271574572706563', '106', '2.02');
INSERT INTO `sampling_media_order` VALUES ('1990', '0', '2019-11-24 13:19:02', null, '1', null, '1', '20191124131901864', '21554960a612e460af2845a3865b594df1675edc1574572575551', '96', '2.94');
INSERT INTO `sampling_media_order` VALUES ('1991', '0', '2019-11-24 13:19:10', null, '1', null, '1', '20191124131910501', '21554960a612e460af2845a3865b594df1675edc1574572575551', '54', '2.79');
INSERT INTO `sampling_media_order` VALUES ('1992', '0', '2019-11-24 13:19:58', null, '1', null, '1', '20191124131958926', '22558860480cf99bd7224f70b35cf5e6707198271574572706563', '96', '2.96');
INSERT INTO `sampling_media_order` VALUES ('1993', '0', '2019-11-24 13:20:29', null, '1', null, '1', '20191124132029616', '54229272e058703ffee5497488e2dad0853292091574572816677', '79', '2.40');
INSERT INTO `sampling_media_order` VALUES ('1994', '0', '2019-11-24 13:21:03', null, '1', null, '1', '20191124132103482', '54229272e058703ffee5497488e2dad0853292091574572816677', '41', '2.60');
INSERT INTO `sampling_media_order` VALUES ('1995', '0', '2019-11-24 13:21:29', null, '1', null, '1', '20191124132129247', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '65', '2.11');
INSERT INTO `sampling_media_order` VALUES ('1996', '0', '2019-11-24 13:21:57', null, '1', null, '1', '20191124132157654', '6425150457d7f4f5f8ef4ba1acf975eb808c298f1574572895829', '79', '2.26');
INSERT INTO `sampling_media_order` VALUES ('1997', '0', '2019-11-24 13:22:08', null, '1', null, '1', '20191124132208959', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '93', '2.91');
INSERT INTO `sampling_media_order` VALUES ('1998', '0', '2019-11-24 13:22:27', null, '1', null, '1', '20191124132227756', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '69', '2.69');
INSERT INTO `sampling_media_order` VALUES ('1999', '0', '2019-11-24 13:23:14', null, '1', null, '1', '20191124132314113', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '65', '2.59');
INSERT INTO `sampling_media_order` VALUES ('2000', '0', '2019-11-24 13:23:18', null, '1', null, '1', '20191124132318323', '21554960a612e460af2845a3865b594df1675edc1574572575551', '86', '2.36');
INSERT INTO `sampling_media_order` VALUES ('2001', '0', '2019-11-24 13:23:25', null, '1', null, '1', '20191124132325856', '7055020504d8f722e41f4515945411a286f6fc771574572995528', '36', '2.39');
INSERT INTO `sampling_media_order` VALUES ('2002', '0', '2019-11-24 13:23:48', null, '1', null, '1', '20191124132348715', '6425150457d7f4f5f8ef4ba1acf975eb808c298f1574572895829', '96', '2.93');
INSERT INTO `sampling_media_order` VALUES ('2003', '0', '2019-11-24 13:24:09', null, '1', null, '1', '20191124132409657', '7055020504d8f722e41f4515945411a286f6fc771574572995528', '65', '2.17');
INSERT INTO `sampling_media_order` VALUES ('2004', '0', '2019-11-24 13:25:17', null, '1', null, '1', '20191124132517755', '21554960a612e460af2845a3865b594df1675edc1574572575551', '86', '2.73');
INSERT INTO `sampling_media_order` VALUES ('2005', '0', '2019-11-24 13:26:01', null, '1', null, '1', '20191124132601730', '2380803804acaa8925534d5d88eff5c6541a6eca1574573041116', '93', '2.35');
INSERT INTO `sampling_media_order` VALUES ('2006', '0', '2019-11-24 13:26:21', null, '1', null, '1', '20191124132621927', '21554960a612e460af2845a3865b594df1675edc1574572575551', '30', '2.12');
INSERT INTO `sampling_media_order` VALUES ('2007', '0', '2019-11-24 13:26:41', null, '1', null, '1', '20191124132641209', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '91', '2.18');
INSERT INTO `sampling_media_order` VALUES ('2008', '0', '2019-11-24 13:27:42', null, '1', null, '1', '20191124132742129', '99165588c292102dc7984482b8325a2e6f11d7991574573222838', '86', '2.79');
INSERT INTO `sampling_media_order` VALUES ('2009', '0', '2019-11-24 13:27:46', null, '1', null, '1', '20191124132746848', '99165588c292102dc7984482b8325a2e6f11d7991574573222838', '86', '2.03');
INSERT INTO `sampling_media_order` VALUES ('2010', '0', '2019-11-24 13:28:19', null, '1', null, '1', '20191124132819260', '78257271b84c1cbcfd1444f6b1ee5af4fd7c92151574573271759', '25', '2.52');
INSERT INTO `sampling_media_order` VALUES ('2011', '0', '2019-11-24 13:28:47', null, '1', null, '1', '20191124132847993', '813911758272bc9a5e1b48d7b8598614b1037f6b1574573313755', '96', '2.26');
INSERT INTO `sampling_media_order` VALUES ('2012', '0', '2019-11-24 13:29:56', null, '1', null, '1', '20191124132956704', '671119467ad4da80619842438c7287e2385cbb8e1574573366054', '79', '2.60');
INSERT INTO `sampling_media_order` VALUES ('2013', '0', '2019-11-24 13:30:21', null, '1', null, '1', '20191124133021730', '671119467ad4da80619842438c7287e2385cbb8e1574573366054', '79', '2.50');
INSERT INTO `sampling_media_order` VALUES ('2014', '0', '2019-11-24 13:30:44', null, '1', null, '1', '20191124133044745', '671119467ad4da80619842438c7287e2385cbb8e1574573366054', '106', '2.04');
INSERT INTO `sampling_media_order` VALUES ('2015', '0', '2019-11-24 13:31:29', null, '1', null, '1', '20191124133129800', '671119467ad4da80619842438c7287e2385cbb8e1574573366054', '106', '2.66');
INSERT INTO `sampling_media_order` VALUES ('2016', '0', '2019-11-24 13:31:49', null, '1', null, '1', '20191124133149435', '80317807ccc6f9b0822a4b82acc81209e0fae1f61574573282846', '52', '2.71');
INSERT INTO `sampling_media_order` VALUES ('2017', '0', '2019-11-24 13:32:05', null, '1', null, '1', '20191124133205357', '7656969825587ebad8284210b0c83dca1c6ac0371574573497524', '106', '2.62');
INSERT INTO `sampling_media_order` VALUES ('2018', '0', '2019-11-24 13:32:44', null, '1', null, '1', '20191124133244228', '80317807ccc6f9b0822a4b82acc81209e0fae1f61574573282846', '49', '2.69');
INSERT INTO `sampling_media_order` VALUES ('2019', '0', '2019-11-24 13:33:20', null, '1', null, '1', '20191124133320602', '80317807ccc6f9b0822a4b82acc81209e0fae1f61574573282846', '49', '2.14');
INSERT INTO `sampling_media_order` VALUES ('2020', '0', '2019-11-24 13:33:41', null, '1', null, '1', '20191124133341625', '80317807ccc6f9b0822a4b82acc81209e0fae1f61574573282846', '52', '2.92');
INSERT INTO `sampling_media_order` VALUES ('2021', '0', '2019-11-24 13:34:02', null, '1', null, '1', '20191124133402227', '80317807ccc6f9b0822a4b82acc81209e0fae1f61574573282846', '84', '2.43');
INSERT INTO `sampling_media_order` VALUES ('2022', '0', '2019-11-24 13:40:46', null, '1', null, '1', '20191124134046694', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '32', '2.56');
INSERT INTO `sampling_media_order` VALUES ('2023', '0', '2019-11-24 13:41:46', null, '1', null, '1', '20191124134146480', '12921639c6c49db08b3649b3b3b83e43688ac7b21574574080614', '96', '2.02');
INSERT INTO `sampling_media_order` VALUES ('2024', '0', '2019-11-24 13:43:01', null, '1', null, '1', '20191124134301706', '8755804611cd4e07cf8d4482b914fa592bcd9bbb1574573777803', '79', '2.58');
INSERT INTO `sampling_media_order` VALUES ('2025', '0', '2019-11-24 13:43:13', null, '1', null, '1', '20191124134313578', '12921639c6c49db08b3649b3b3b83e43688ac7b21574574080614', '65', '2.64');
INSERT INTO `sampling_media_order` VALUES ('2026', '0', '2019-11-24 13:43:30', null, '1', null, '1', '20191124134330347', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '60', '2.60');
INSERT INTO `sampling_media_order` VALUES ('2027', '0', '2019-11-24 13:44:27', null, '1', null, '1', '20191124134427332', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '60', '2.20');
INSERT INTO `sampling_media_order` VALUES ('2028', '0', '2019-11-24 13:45:23', null, '1', null, '1', '20191124134523524', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '53', '2.72');
INSERT INTO `sampling_media_order` VALUES ('2029', '0', '2019-11-24 13:46:07', null, '1', null, '1', '20191124134607895', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '68', '2.39');
INSERT INTO `sampling_media_order` VALUES ('2030', '0', '2019-11-24 13:46:38', null, '1', null, '1', '20191124134638368', '1020175083204d1de860466ea155fe06c50ef93a1574572938892', '80', '2.15');
INSERT INTO `sampling_media_order` VALUES ('2031', '0', '2019-11-24 13:47:47', null, '1', null, '1', '20191124134747856', '869229274d44174d78bd42a9afd0cb8a0c0326611574572639345', '94', '2.23');
INSERT INTO `sampling_media_order` VALUES ('2032', '0', '2019-11-24 13:49:00', null, '1', null, '1', '20191124134900653', '99089181add7f1ae3e264947b1ba28adea3edbbb1574574528733', '79', '2.76');
INSERT INTO `sampling_media_order` VALUES ('2033', '0', '2019-11-24 13:49:16', null, '1', null, '1', '20191124134916137', '99089181add7f1ae3e264947b1ba28adea3edbbb1574574528733', '65', '2.72');
INSERT INTO `sampling_media_order` VALUES ('2034', '0', '2019-11-24 13:50:05', null, '1', null, '1', '20191124135005505', '99089181add7f1ae3e264947b1ba28adea3edbbb1574574528733', '41', '2.52');
INSERT INTO `sampling_media_order` VALUES ('2035', '0', '2019-11-24 13:50:12', null, '1', null, '1', '20191124135012685', '75032930901a53b673f1436fbbdcf1e28f3d14881574573360604', '79', '2.37');
INSERT INTO `sampling_media_order` VALUES ('2036', '0', '2019-11-24 13:50:15', null, '1', null, '1', '20191124135015281', '99089181add7f1ae3e264947b1ba28adea3edbbb1574574528733', '65', '2.47');
INSERT INTO `sampling_media_order` VALUES ('2037', '0', '2019-11-24 13:50:48', null, '1', null, '1', '20191124135048278', '869229274d44174d78bd42a9afd0cb8a0c0326611574572639345', '79', '2.96');
INSERT INTO `sampling_media_order` VALUES ('2038', '0', '2019-11-24 13:51:49', null, '1', null, '1', '20191124135149984', '981346215e76e45bb92d496691784201f32a4a541574574701160', '52', '2.61');
INSERT INTO `sampling_media_order` VALUES ('2039', '0', '2019-11-24 13:53:10', null, '1', null, '1', '20191124135310765', '8755804611cd4e07cf8d4482b914fa592bcd9bbb1574573777803', '52', '2.06');
INSERT INTO `sampling_media_order` VALUES ('2040', '0', '2019-11-24 13:53:53', null, '1', null, '1', '20191124135353500', '443786490bfa34d37cb64adb8633a1f3c492e87a1574574817457', '52', '2.62');
INSERT INTO `sampling_media_order` VALUES ('2041', '0', '2019-11-24 13:55:32', null, '1', null, '1', '20191124135532498', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '55', '2.31');
INSERT INTO `sampling_media_order` VALUES ('2042', '0', '2019-11-24 13:55:57', null, '1', null, '1', '20191124135557629', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '17', '2.93');
INSERT INTO `sampling_media_order` VALUES ('2043', '0', '2019-11-24 13:56:18', null, '1', null, '1', '20191124135618776', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '53', '2.84');
INSERT INTO `sampling_media_order` VALUES ('2044', '0', '2019-11-24 13:56:58', null, '1', null, '1', '20191124135658113', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '37', '2.36');
INSERT INTO `sampling_media_order` VALUES ('2045', '0', '2019-11-24 13:57:25', null, '1', null, '1', '20191124135725715', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '74', '2.22');
INSERT INTO `sampling_media_order` VALUES ('2046', '0', '2019-11-24 13:57:53', null, '1', null, '1', '20191124135753893', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '38', '2.87');
INSERT INTO `sampling_media_order` VALUES ('2047', '0', '2019-11-24 13:58:30', null, '1', null, '1', '20191124135830650', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '83', '2.70');
INSERT INTO `sampling_media_order` VALUES ('2048', '0', '2019-11-24 13:59:21', null, '1', null, '1', '20191124135921180', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '30', '2.88');
INSERT INTO `sampling_media_order` VALUES ('2049', '0', '2019-11-24 14:03:26', null, '1', null, '1', '20191124140326619', '75032930901a53b673f1436fbbdcf1e28f3d14881574573360604', '79', '2.30');
INSERT INTO `sampling_media_order` VALUES ('2050', '0', '2019-11-24 14:21:12', null, '1', null, '1', '20191124142112325', '7749470788004e5f2ce54754a58f5acd89ad4b0c1574576406104', '79', '2.99');
INSERT INTO `sampling_media_order` VALUES ('2051', '0', '2019-11-24 14:27:46', null, '1', null, '1', '20191124142746171', '7749470788004e5f2ce54754a58f5acd89ad4b0c1574576406104', '96', '2.71');
INSERT INTO `sampling_media_order` VALUES ('2052', '0', '2019-11-24 14:28:36', null, '1', null, '1', '20191124142836524', '27998405f66436dd893d42c0bf69ca96d1bf9e041574576875882', '79', '2.37');
INSERT INTO `sampling_media_order` VALUES ('2053', '0', '2019-11-24 14:29:00', null, '1', null, '1', '20191124142900793', '7749470788004e5f2ce54754a58f5acd89ad4b0c1574576406104', '52', '2.54');
INSERT INTO `sampling_media_order` VALUES ('2054', '0', '2019-11-24 14:29:38', null, '1', null, '1', '20191124142938878', '7749470788004e5f2ce54754a58f5acd89ad4b0c1574576406104', '65', '2.34');
INSERT INTO `sampling_media_order` VALUES ('2055', '0', '2019-11-24 14:30:10', null, '1', null, '1', '20191124143010613', '27998405f66436dd893d42c0bf69ca96d1bf9e041574576875882', '65', '2.78');
INSERT INTO `sampling_media_order` VALUES ('2056', '0', '2019-11-24 14:30:48', null, '1', null, '1', '20191124143048119', '710355570995a26dfd9243848da1ae2dacc43f901574577026433', '96', '2.75');
INSERT INTO `sampling_media_order` VALUES ('2057', '0', '2019-11-24 14:31:31', null, '1', null, '1', '20191124143131133', '710355570995a26dfd9243848da1ae2dacc43f901574577026433', '65', '2.37');
INSERT INTO `sampling_media_order` VALUES ('2058', '0', '2019-11-24 14:31:55', null, '1', null, '1', '20191124143155363', '710355570995a26dfd9243848da1ae2dacc43f901574577026433', '41', '2.88');
INSERT INTO `sampling_media_order` VALUES ('2059', '0', '2019-11-24 14:31:57', null, '1', null, '1', '20191124143157344', '27998405f66436dd893d42c0bf69ca96d1bf9e041574576875882', '92', '2.28');
INSERT INTO `sampling_media_order` VALUES ('2060', '0', '2019-11-24 14:33:08', null, '1', null, '1', '20191124143308659', '27998405f66436dd893d42c0bf69ca96d1bf9e041574576875882', '79', '2.68');
INSERT INTO `sampling_media_order` VALUES ('2061', '0', '2019-11-24 14:33:09', null, '1', null, '1', '20191124143309999', '710355570995a26dfd9243848da1ae2dacc43f901574577026433', '52', '2.06');
INSERT INTO `sampling_media_order` VALUES ('2062', '0', '2019-11-24 14:43:00', null, '1', null, '1', '20191124144300956', '27998405f66436dd893d42c0bf69ca96d1bf9e041574576875882', '79', '2.04');
INSERT INTO `sampling_media_order` VALUES ('2063', '0', '2019-11-24 14:44:16', null, '1', null, '1', '20191124144416666', '27998405f66436dd893d42c0bf69ca96d1bf9e041574576875882', '65', '2.51');
INSERT INTO `sampling_media_order` VALUES ('2064', '0', '2019-11-24 14:44:47', null, '1', null, '1', '20191124144447914', '27998405f66436dd893d42c0bf69ca96d1bf9e041574576875882', '41', '2.05');
INSERT INTO `sampling_media_order` VALUES ('2065', '0', '2019-11-24 14:46:04', null, '1', null, '1', '20191124144604637', '27998405f66436dd893d42c0bf69ca96d1bf9e041574576875882', '76', '2.52');
INSERT INTO `sampling_media_order` VALUES ('2066', '0', '2019-11-24 14:47:40', null, '1', null, '1', '20191124144740855', '27998405f66436dd893d42c0bf69ca96d1bf9e041574576875882', '41', '2.18');
INSERT INTO `sampling_media_order` VALUES ('2067', '0', '2019-11-24 14:49:06', null, '1', null, '1', '20191124144906727', '81164229d03dde6146c94fb3a1f873f3642d1f111574578086117', '52', '2.57');
INSERT INTO `sampling_media_order` VALUES ('2068', '0', '2019-11-24 14:49:39', null, '1', null, '1', '20191124144939233', '287765344a2c348ee009441889b6ffabb7273b0a1574572725197', '62', '2.23');
INSERT INTO `sampling_media_order` VALUES ('2069', '0', '2019-11-24 14:50:10', null, '1', null, '1', '20191124145010223', '287765344a2c348ee009441889b6ffabb7273b0a1574572725197', '62', '2.96');
INSERT INTO `sampling_media_order` VALUES ('2070', '0', '2019-11-24 14:50:41', null, '1', null, '1', '20191124145041260', '81164229d03dde6146c94fb3a1f873f3642d1f111574578086117', '54', '2.54');
INSERT INTO `sampling_media_order` VALUES ('2071', '0', '2019-11-24 14:51:34', null, '1', null, '1', '20191124145134703', '81164229d03dde6146c94fb3a1f873f3642d1f111574578086117', '65', '2.54');
INSERT INTO `sampling_media_order` VALUES ('2072', '0', '2019-11-24 14:53:16', null, '1', null, '1', '20191124145316537', '287765344a2c348ee009441889b6ffabb7273b0a1574572725197', '35', '2.97');
INSERT INTO `sampling_media_order` VALUES ('2073', '0', '2019-11-24 14:53:59', null, '1', null, '1', '20191124145359422', '3128102639b86940b85f440e8151fa58c81e78bc1574578396912', '95', '2.82');
INSERT INTO `sampling_media_order` VALUES ('2074', '0', '2019-11-24 15:06:02', null, '1', null, '1', '20191124150602121', '2412173140c893d895e64563821241ac2ab6c9a51574579151593', '79', '2.77');
INSERT INTO `sampling_media_order` VALUES ('2075', '0', '2019-11-24 15:06:29', null, '1', null, '1', '20191124150629220', '2412173140c893d895e64563821241ac2ab6c9a51574579151593', '92', '2.59');
INSERT INTO `sampling_media_order` VALUES ('2076', '0', '2019-11-24 15:10:40', null, '1', null, '1', '20191124151040154', '699294401772d7df80ca46559021fe0ac66f15e51574579414738', '95', '2.15');
INSERT INTO `sampling_media_order` VALUES ('2077', '0', '2019-11-24 15:11:01', null, '1', null, '1', '20191124151101608', '869836482ca2a9a2e33c4377a8c33428f70f122b1574579442826', '36', '2.81');
INSERT INTO `sampling_media_order` VALUES ('2078', '0', '2019-11-24 15:11:05', null, '1', null, '1', '20191124151105540', '10935370dbc99a946e224e78857e1017020846471574579440173', '79', '2.70');
INSERT INTO `sampling_media_order` VALUES ('2079', '0', '2019-11-24 15:11:09', null, '1', null, '1', '20191124151109765', '2605979525391f12ea224cc4822818efd651e86e1574579451635', '79', '2.74');
INSERT INTO `sampling_media_order` VALUES ('2080', '0', '2019-11-24 15:11:17', null, '1', null, '1', '20191124151117146', '42783289e14c441118984058a48ee129d3963c3b1574579419044', '96', '2.71');
INSERT INTO `sampling_media_order` VALUES ('2081', '0', '2019-11-24 15:11:37', null, '1', null, '1', '20191124151137929', '699294401772d7df80ca46559021fe0ac66f15e51574579414738', '60', '2.74');
INSERT INTO `sampling_media_order` VALUES ('2082', '0', '2019-11-24 15:11:43', null, '1', null, '1', '20191124151143293', '78001426d0663026d09744a3a9b9d1e455786cf61574579481646', '106', '2.52');
INSERT INTO `sampling_media_order` VALUES ('2083', '0', '2019-11-24 15:11:49', null, '1', null, '1', '20191124151149684', '869836482ca2a9a2e33c4377a8c33428f70f122b1574579442826', '92', '2.45');
INSERT INTO `sampling_media_order` VALUES ('2084', '0', '2019-11-24 15:12:15', null, '1', null, '1', '20191124151215337', '77127255fd7e6b8fe7d4409cabdf18b39768532d1574579426398', '79', '2.31');
INSERT INTO `sampling_media_order` VALUES ('2085', '0', '2019-11-24 15:12:17', null, '1', null, '1', '20191124151217953', '699294401772d7df80ca46559021fe0ac66f15e51574579414738', '41', '2.58');
INSERT INTO `sampling_media_order` VALUES ('2086', '0', '2019-11-24 15:12:22', null, '1', null, '1', '20191124151222117', '252852366a00f09dc0f44384ad8a6b91e537f25b1574579502687', '79', '2.80');
INSERT INTO `sampling_media_order` VALUES ('2087', '0', '2019-11-24 15:12:49', null, '1', null, '1', '20191124151249267', '9506692281732c1387114193a6161d60f4b9df641574579548654', '79', '2.28');
INSERT INTO `sampling_media_order` VALUES ('2088', '0', '2019-11-24 15:12:52', null, '1', null, '1', '20191124151252908', '660216204a2a3ba00ffc4f06a52285555fa3efa51574579535175', '96', '2.54');
INSERT INTO `sampling_media_order` VALUES ('2089', '0', '2019-11-24 15:13:04', null, '1', null, '1', '20191124151304186', '699294401772d7df80ca46559021fe0ac66f15e51574579414738', '92', '2.15');
INSERT INTO `sampling_media_order` VALUES ('2090', '0', '2019-11-24 15:13:22', null, '1', null, '1', '20191124151322298', '77127255fd7e6b8fe7d4409cabdf18b39768532d1574579426398', '65', '2.47');
INSERT INTO `sampling_media_order` VALUES ('2091', '0', '2019-11-24 15:13:30', null, '1', null, '1', '20191124151330824', '31100997a02a746cf7cb4ff2b79631aab86266c21574579388462', '94', '2.82');
INSERT INTO `sampling_media_order` VALUES ('2092', '0', '2019-11-24 15:13:32', null, '1', null, '1', '20191124151332864', '869836482ca2a9a2e33c4377a8c33428f70f122b1574579442826', '54', '2.25');
INSERT INTO `sampling_media_order` VALUES ('2093', '0', '2019-11-24 15:13:49', null, '1', null, '1', '20191124151349762', '252852366a00f09dc0f44384ad8a6b91e537f25b1574579502687', '96', '2.82');
INSERT INTO `sampling_media_order` VALUES ('2094', '0', '2019-11-24 15:14:13', null, '1', null, '1', '20191124151413398', '77127255fd7e6b8fe7d4409cabdf18b39768532d1574579426398', '41', '2.52');
INSERT INTO `sampling_media_order` VALUES ('2095', '0', '2019-11-24 15:14:15', null, '1', null, '1', '20191124151415554', '8109287076cc8960f0f84a9b8c168e4ddf978d901574579577147', '61', '2.06');
INSERT INTO `sampling_media_order` VALUES ('2096', '0', '2019-11-24 15:14:32', null, '1', null, '1', '20191124151432264', '31100997a02a746cf7cb4ff2b79631aab86266c21574579388462', '52', '2.85');
INSERT INTO `sampling_media_order` VALUES ('2097', '0', '2019-11-24 15:14:46', null, '1', null, '1', '20191124151446509', '971993195905ab04754c4532a22a1c2afca8bdf71574579624509', '94', '2.76');
INSERT INTO `sampling_media_order` VALUES ('2098', '0', '2019-11-24 15:14:51', null, '1', null, '1', '20191124151451395', '2844590764309d9900534ed3aaf8f169a357cadb1574579660607', '52', '2.45');
INSERT INTO `sampling_media_order` VALUES ('2099', '0', '2019-11-24 15:14:58', null, '1', null, '1', '20191124151458156', '2605979525391f12ea224cc4822818efd651e86e1574579451635', '96', '2.45');
INSERT INTO `sampling_media_order` VALUES ('2100', '0', '2019-11-24 15:14:59', null, '1', null, '1', '20191124151459504', '117780199982fc4a660940229c4ba444b63c99e01574579675603', '107', '2.94');
INSERT INTO `sampling_media_order` VALUES ('2101', '0', '2019-11-24 15:15:01', null, '1', null, '1', '20191124151501448', '869836482ca2a9a2e33c4377a8c33428f70f122b1574579442826', '107', '2.41');
INSERT INTO `sampling_media_order` VALUES ('2102', '0', '2019-11-24 15:15:14', null, '1', null, '1', '20191124151514769', '23024667e0a9bc183544428397c2d526d76f49351574579689915', '80', '2.94');
INSERT INTO `sampling_media_order` VALUES ('2103', '0', '2019-11-24 15:15:32', null, '1', null, '1', '20191124151532576', '77127255fd7e6b8fe7d4409cabdf18b39768532d1574579426398', '52', '2.55');
INSERT INTO `sampling_media_order` VALUES ('2104', '0', '2019-11-24 15:16:14', null, '1', null, '1', '20191124151614986', '869836482ca2a9a2e33c4377a8c33428f70f122b1574579442826', '105', '2.16');
INSERT INTO `sampling_media_order` VALUES ('2105', '0', '2019-11-24 15:16:19', null, '1', null, '1', '20191124151619840', '42783289e14c441118984058a48ee129d3963c3b1574579419044', '62', '2.08');
INSERT INTO `sampling_media_order` VALUES ('2106', '0', '2019-11-24 15:16:36', null, '1', null, '1', '20191124151636709', '42783289e14c441118984058a48ee129d3963c3b1574579419044', '65', '2.51');
INSERT INTO `sampling_media_order` VALUES ('2107', '0', '2019-11-24 15:18:02', null, '1', null, '1', '20191124151802704', '660216204a2a3ba00ffc4f06a52285555fa3efa51574579535175', '52', '2.11');
INSERT INTO `sampling_media_order` VALUES ('2108', '0', '2019-11-24 15:18:04', null, '1', null, '1', '20191124151804760', '491598752d867735b80946538fa8237d767a94791574579866083', '64', '2.10');
INSERT INTO `sampling_media_order` VALUES ('2109', '0', '2019-11-24 15:18:05', null, '1', null, '1', '20191124151805910', '2844590764309d9900534ed3aaf8f169a357cadb1574579660607', '92', '2.49');
INSERT INTO `sampling_media_order` VALUES ('2110', '0', '2019-11-24 15:18:31', null, '1', null, '1', '20191124151831819', '869836482ca2a9a2e33c4377a8c33428f70f122b1574579442826', '65', '2.96');
INSERT INTO `sampling_media_order` VALUES ('2111', '0', '2019-11-24 15:19:33', null, '1', null, '1', '20191124151933905', '6167784256170cc1f34245eebb7bff76f14021c81574579946592', '96', '2.94');
INSERT INTO `sampling_media_order` VALUES ('2112', '0', '2019-11-24 15:19:53', null, '1', null, '1', '20191124151953532', '52891431263b8c604b184d2e8873b07e85a6f6f31574579928319', '92', '2.72');
INSERT INTO `sampling_media_order` VALUES ('2113', '0', '2019-11-24 15:19:56', null, '1', null, '1', '20191124151956501', '344068022c1d298d2254414faa3816c7263b8b351574579980409', '79', '2.79');
INSERT INTO `sampling_media_order` VALUES ('2114', '0', '2019-11-24 15:20:04', null, '1', null, '1', '20191124152004459', '69088593d057bdfa59f7475784eb83734ecbf0771574579926994', '79', '2.38');
INSERT INTO `sampling_media_order` VALUES ('2115', '0', '2019-11-24 15:20:47', null, '1', null, '1', '20191124152047547', '344068022c1d298d2254414faa3816c7263b8b351574579980409', '65', '2.71');
INSERT INTO `sampling_media_order` VALUES ('2116', '0', '2019-11-24 15:21:14', null, '1', null, '1', '20191124152114217', '660216204a2a3ba00ffc4f06a52285555fa3efa51574579535175', '52', '2.39');
INSERT INTO `sampling_media_order` VALUES ('2117', '0', '2019-11-24 15:21:28', null, '1', null, '1', '20191124152128829', '344068022c1d298d2254414faa3816c7263b8b351574579980409', '41', '2.88');
INSERT INTO `sampling_media_order` VALUES ('2118', '0', '2019-11-24 15:24:06', null, '1', null, '1', '20191124152406395', '80368244a69dc327dcec48f39dfae28afd71db091574580221940', '28', '2.38');
INSERT INTO `sampling_media_order` VALUES ('2119', '0', '2019-11-24 15:24:13', null, '1', null, '1', '20191124152413968', '2853999569698dd4d8334dc58cd9d6c26d8388ce1574580232049', '96', '2.24');
INSERT INTO `sampling_media_order` VALUES ('2120', '0', '2019-11-24 15:24:37', null, '1', null, '1', '20191124152437563', '491598752d867735b80946538fa8237d767a94791574579866083', '54', '2.78');
INSERT INTO `sampling_media_order` VALUES ('2121', '0', '2019-11-24 15:24:40', null, '1', null, '1', '20191124152440936', '76526196776a6841dbef4a539818803f0e0343501574580241264', '92', '2.94');
INSERT INTO `sampling_media_order` VALUES ('2122', '0', '2019-11-24 15:24:59', null, '1', null, '1', '20191124152459657', '2853999569698dd4d8334dc58cd9d6c26d8388ce1574580232049', '65', '2.16');
INSERT INTO `sampling_media_order` VALUES ('2123', '0', '2019-11-24 15:25:03', null, '1', null, '1', '20191124152503345', '80368244a69dc327dcec48f39dfae28afd71db091574580221940', '36', '2.00');
INSERT INTO `sampling_media_order` VALUES ('2124', '0', '2019-11-24 15:25:08', null, '1', null, '1', '20191124152508682', '923834593adc9f7080fc4a2a8022460ca716aea41574580273800', '55', '2.57');
INSERT INTO `sampling_media_order` VALUES ('2125', '0', '2019-11-24 15:25:23', null, '1', null, '1', '20191124152523691', '491598752d867735b80946538fa8237d767a94791574579866083', '41', '2.92');
INSERT INTO `sampling_media_order` VALUES ('2126', '0', '2019-11-24 15:25:32', null, '1', null, '1', '20191124152532167', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '84', '2.90');
INSERT INTO `sampling_media_order` VALUES ('2127', '0', '2019-11-24 15:25:43', null, '1', null, '1', '20191124152543755', '959232984ab839479e634490a747c96ea8809dbd1574580301802', '96', '2.19');
INSERT INTO `sampling_media_order` VALUES ('2128', '0', '2019-11-24 15:26:11', null, '1', null, '1', '20191124152611653', '6064048308f7113bb82046fc9bbfd431c4659e991574580293571', '68', '2.58');
INSERT INTO `sampling_media_order` VALUES ('2129', '0', '2019-11-24 15:26:39', null, '1', null, '1', '20191124152639800', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '79', '2.30');
INSERT INTO `sampling_media_order` VALUES ('2130', '0', '2019-11-24 15:26:58', null, '1', null, '1', '20191124152658694', '959232984ab839479e634490a747c96ea8809dbd1574580301802', '63', '2.03');
INSERT INTO `sampling_media_order` VALUES ('2131', '0', '2019-11-24 15:27:07', null, '1', null, '1', '20191124152707505', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '50', '2.41');
INSERT INTO `sampling_media_order` VALUES ('2132', '0', '2019-11-24 15:27:09', null, '1', null, '1', '20191124152709179', '923834593adc9f7080fc4a2a8022460ca716aea41574580273800', '16', '2.70');
INSERT INTO `sampling_media_order` VALUES ('2133', '0', '2019-11-24 15:27:09', null, '1', null, '1', '20191124152709375', '87989738486dd4caaa5442c2b15ae8da161821691574580025958', '106', '2.54');
INSERT INTO `sampling_media_order` VALUES ('2134', '0', '2019-11-24 15:27:22', null, '1', null, '1', '20191124152722323', '923834593adc9f7080fc4a2a8022460ca716aea41574580273800', '65', '2.60');
INSERT INTO `sampling_media_order` VALUES ('2135', '0', '2019-11-24 15:27:22', null, '1', null, '1', '20191124152722931', '40281286d77368c6762249f98abd6ea694704bb31574580389631', '79', '2.61');
INSERT INTO `sampling_media_order` VALUES ('2136', '0', '2019-11-24 15:27:27', null, '1', null, '1', '20191124152727698', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '93', '2.53');
INSERT INTO `sampling_media_order` VALUES ('2137', '0', '2019-11-24 15:27:31', null, '1', null, '1', '20191124152731767', '959232984ab839479e634490a747c96ea8809dbd1574580301802', '96', '2.57');
INSERT INTO `sampling_media_order` VALUES ('2138', '0', '2019-11-24 15:27:48', null, '1', null, '1', '20191124152748891', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '93', '2.32');
INSERT INTO `sampling_media_order` VALUES ('2139', '0', '2019-11-24 15:28:06', null, '1', null, '1', '20191124152806818', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '41', '2.83');
INSERT INTO `sampling_media_order` VALUES ('2140', '0', '2019-11-24 15:28:11', null, '1', null, '1', '20191124152811730', '959232984ab839479e634490a747c96ea8809dbd1574580301802', '106', '2.87');
INSERT INTO `sampling_media_order` VALUES ('2141', '0', '2019-11-24 15:28:24', null, '1', null, '1', '20191124152824521', '94983240d5a782d5082d44a8af2ce2fe7469e8981574580486676', '36', '2.98');
INSERT INTO `sampling_media_order` VALUES ('2142', '0', '2019-11-24 15:28:28', null, '1', null, '1', '20191124152828715', '16820646e4d309be7f494284acd3db99827618551574580418434', '79', '2.52');
INSERT INTO `sampling_media_order` VALUES ('2143', '0', '2019-11-24 15:28:30', null, '1', null, '1', '20191124152830945', '17942709bfe5f2eed55647d699c4f14a7cc705da1574580473081', '24', '2.95');
INSERT INTO `sampling_media_order` VALUES ('2144', '0', '2019-11-24 15:28:41', null, '1', null, '1', '20191124152841959', '20172299af6a0d1a950645179a1b55034e1f73c41574580448604', '52', '2.30');
INSERT INTO `sampling_media_order` VALUES ('2145', '0', '2019-11-24 15:29:05', null, '1', null, '1', '20191124152905112', '971993195905ab04754c4532a22a1c2afca8bdf71574579624509', '41', '2.59');
INSERT INTO `sampling_media_order` VALUES ('2146', '0', '2019-11-24 15:29:08', null, '1', null, '1', '20191124152908953', '16820646e4d309be7f494284acd3db99827618551574580418434', '60', '2.66');
INSERT INTO `sampling_media_order` VALUES ('2147', '0', '2019-11-24 15:29:21', null, '1', null, '1', '20191124152921367', '26044792d33d8b9499064e9eabb89e9664f4ad071574580115918', '94', '2.58');
INSERT INTO `sampling_media_order` VALUES ('2148', '0', '2019-11-24 15:29:27', null, '1', null, '1', '20191124152927524', '20172299af6a0d1a950645179a1b55034e1f73c41574580448604', '65', '2.11');
INSERT INTO `sampling_media_order` VALUES ('2149', '0', '2019-11-24 15:29:33', null, '1', null, '1', '20191124152933145', '16820646e4d309be7f494284acd3db99827618551574580418434', '96', '2.32');
INSERT INTO `sampling_media_order` VALUES ('2150', '0', '2019-11-24 15:29:52', null, '1', null, '1', '20191124152952888', '20172299af6a0d1a950645179a1b55034e1f73c41574580448604', '92', '2.57');
INSERT INTO `sampling_media_order` VALUES ('2151', '0', '2019-11-24 15:30:44', null, '1', null, '1', '20191124153044553', '971993195905ab04754c4532a22a1c2afca8bdf71574579624509', '84', '2.83');
INSERT INTO `sampling_media_order` VALUES ('2152', '0', '2019-11-24 15:31:16', null, '1', null, '1', '20191124153116839', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '29', '2.81');
INSERT INTO `sampling_media_order` VALUES ('2153', '0', '2019-11-24 15:31:24', null, '1', null, '1', '20191124153124711', '971993195905ab04754c4532a22a1c2afca8bdf71574579624509', '54', '2.55');
INSERT INTO `sampling_media_order` VALUES ('2154', '0', '2019-11-24 15:31:31', null, '1', null, '1', '20191124153131772', '79516005f94b44a2e18b4a049e2f14bd27d486041574581407526', '80', '2.32');
INSERT INTO `sampling_media_order` VALUES ('2155', '0', '2019-11-24 15:31:58', null, '1', null, '1', '20191124153158595', '62024660b56cccbe678a4987891c537e0c99944f1574580655910', '84', '2.94');
INSERT INTO `sampling_media_order` VALUES ('2156', '0', '2019-11-24 15:31:59', null, '1', null, '1', '20191124153159826', '80368244a69dc327dcec48f39dfae28afd71db091574580221940', '63', '2.72');
INSERT INTO `sampling_media_order` VALUES ('2157', '0', '2019-11-24 15:32:22', null, '1', null, '1', '20191124153222814', '66584659d44649958efd4cf9876bd87d5af08dca1574580686674', '79', '2.30');
INSERT INTO `sampling_media_order` VALUES ('2158', '0', '2019-11-24 15:32:37', null, '1', null, '1', '20191124153237722', '971993195905ab04754c4532a22a1c2afca8bdf71574579624509', '96', '2.52');
INSERT INTO `sampling_media_order` VALUES ('2159', '0', '2019-11-24 15:32:52', null, '1', null, '1', '20191124153252596', '79516005f94b44a2e18b4a049e2f14bd27d486041574581407526', '92', '2.26');
INSERT INTO `sampling_media_order` VALUES ('2160', '0', '2019-11-24 15:32:58', null, '1', null, '1', '20191124153258487', '66584659d44649958efd4cf9876bd87d5af08dca1574580686674', '80', '2.59');
INSERT INTO `sampling_media_order` VALUES ('2161', '0', '2019-11-24 15:33:05', null, '1', null, '1', '20191124153305963', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '52', '2.37');
INSERT INTO `sampling_media_order` VALUES ('2162', '0', '2019-11-24 15:33:07', null, '1', null, '1', '20191124153307292', '79516005f94b44a2e18b4a049e2f14bd27d486041574581407526', '86', '2.37');
INSERT INTO `sampling_media_order` VALUES ('2163', '0', '2019-11-24 15:33:10', null, '1', null, '1', '20191124153310792', '971993195905ab04754c4532a22a1c2afca8bdf71574579624509', '96', '2.90');
INSERT INTO `sampling_media_order` VALUES ('2164', '0', '2019-11-24 15:33:14', null, '1', null, '1', '20191124153314380', '80368244a69dc327dcec48f39dfae28afd71db091574580221940', '28', '2.01');
INSERT INTO `sampling_media_order` VALUES ('2165', '0', '2019-11-24 15:33:15', null, '1', null, '1', '20191124153315434', '66584659d44649958efd4cf9876bd87d5af08dca1574580686674', '79', '2.94');
INSERT INTO `sampling_media_order` VALUES ('2166', '0', '2019-11-24 15:33:33', null, '1', null, '1', '20191124153333537', '971993195905ab04754c4532a22a1c2afca8bdf71574579624509', '106', '2.42');
INSERT INTO `sampling_media_order` VALUES ('2167', '0', '2019-11-24 15:33:39', null, '1', null, '1', '20191124153339267', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '52', '2.32');
INSERT INTO `sampling_media_order` VALUES ('2168', '0', '2019-11-24 15:33:40', null, '1', null, '1', '20191124153340253', '842141602a4677486a1c4a74b29ff7df8ba92bc81574572616163', '79', '2.82');
INSERT INTO `sampling_media_order` VALUES ('2169', '0', '2019-11-24 15:33:55', null, '1', null, '1', '20191124153355198', '971993195905ab04754c4532a22a1c2afca8bdf71574579624509', '96', '2.94');
INSERT INTO `sampling_media_order` VALUES ('2170', '0', '2019-11-24 15:34:05', null, '1', null, '1', '20191124153405663', '79516005f94b44a2e18b4a049e2f14bd27d486041574581407526', '29', '2.20');
INSERT INTO `sampling_media_order` VALUES ('2171', '0', '2019-11-24 15:34:08', null, '1', null, '1', '20191124153408713', '87989738486dd4caaa5442c2b15ae8da161821691574580025958', '106', '2.42');
INSERT INTO `sampling_media_order` VALUES ('2172', '0', '2019-11-24 15:34:26', null, '1', null, '1', '20191124153426395', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '52', '2.73');
INSERT INTO `sampling_media_order` VALUES ('2173', '0', '2019-11-24 15:34:37', null, '1', null, '1', '20191124153437536', '971993195905ab04754c4532a22a1c2afca8bdf71574579624509', '52', '2.03');
INSERT INTO `sampling_media_order` VALUES ('2174', '0', '2019-11-24 15:34:52', null, '1', null, '1', '20191124153452967', '13396788272c60f51e8c485eae82eca9b57871611574580859261', '52', '2.08');
INSERT INTO `sampling_media_order` VALUES ('2175', '0', '2019-11-24 15:35:08', null, '1', null, '1', '20191124153508512', '971993195905ab04754c4532a22a1c2afca8bdf71574579624509', '23', '2.82');
INSERT INTO `sampling_media_order` VALUES ('2176', '0', '2019-11-24 15:35:29', null, '1', null, '1', '20191124153529465', '79516005f94b44a2e18b4a049e2f14bd27d486041574581407526', '84', '2.97');
INSERT INTO `sampling_media_order` VALUES ('2177', '0', '2019-11-24 15:35:35', null, '1', null, '1', '20191124153535449', '971993195905ab04754c4532a22a1c2afca8bdf71574579624509', '86', '2.48');
INSERT INTO `sampling_media_order` VALUES ('2178', '0', '2019-11-24 15:35:42', null, '1', null, '1', '20191124153542247', '13396788272c60f51e8c485eae82eca9b57871611574580859261', '65', '2.76');
INSERT INTO `sampling_media_order` VALUES ('2179', '0', '2019-11-24 15:35:51', null, '1', null, '1', '20191124153551134', '971993195905ab04754c4532a22a1c2afca8bdf71574579624509', '96', '2.59');
INSERT INTO `sampling_media_order` VALUES ('2180', '0', '2019-11-24 15:35:54', null, '1', null, '1', '20191124153554397', '738492642f752301b0264237b68f52c8db1510131574580882762', '84', '2.59');
INSERT INTO `sampling_media_order` VALUES ('2181', '0', '2019-11-24 15:36:39', null, '1', null, '1', '20191124153639829', '87989738486dd4caaa5442c2b15ae8da161821691574580025958', '54', '2.23');
INSERT INTO `sampling_media_order` VALUES ('2182', '0', '2019-11-24 15:37:17', null, '1', null, '1', '20191124153717247', '971993195905ab04754c4532a22a1c2afca8bdf71574579624509', '36', '2.54');
INSERT INTO `sampling_media_order` VALUES ('2183', '0', '2019-11-24 15:37:33', null, '1', null, '1', '20191124153733970', '971993195905ab04754c4532a22a1c2afca8bdf71574579624509', '92', '2.01');
INSERT INTO `sampling_media_order` VALUES ('2184', '0', '2019-11-24 15:37:53', null, '1', null, '1', '20191124153753634', '738492642f752301b0264237b68f52c8db1510131574580882762', '74', '2.76');
INSERT INTO `sampling_media_order` VALUES ('2185', '0', '2019-11-24 15:37:55', null, '1', null, '1', '20191124153755630', '471328061611aa2075f84a55ae9f7f90dd00a26d1574581051767', '92', '2.02');
INSERT INTO `sampling_media_order` VALUES ('2186', '0', '2019-11-24 15:37:57', null, '1', null, '1', '20191124153757286', '79516005f94b44a2e18b4a049e2f14bd27d486041574581407526', '65', '2.16');
INSERT INTO `sampling_media_order` VALUES ('2187', '0', '2019-11-24 15:38:09', null, '1', null, '1', '20191124153809794', '1320394579000787be024488b0e0cee3f334b96b1574581057615', '79', '2.77');
INSERT INTO `sampling_media_order` VALUES ('2188', '0', '2019-11-24 15:38:13', null, '1', null, '1', '20191124153813146', '971993195905ab04754c4532a22a1c2afca8bdf71574579624509', '65', '2.04');
INSERT INTO `sampling_media_order` VALUES ('2189', '0', '2019-11-24 15:38:36', null, '1', null, '1', '20191124153836827', '79516005f94b44a2e18b4a049e2f14bd27d486041574581407526', '92', '2.78');
INSERT INTO `sampling_media_order` VALUES ('2190', '0', '2019-11-24 15:38:58', null, '1', null, '1', '20191124153858863', '971993195905ab04754c4532a22a1c2afca8bdf71574579624509', '80', '2.14');
INSERT INTO `sampling_media_order` VALUES ('2191', '0', '2019-11-24 15:39:03', null, '1', null, '1', '20191124153903778', '87989738486dd4caaa5442c2b15ae8da161821691574580025958', '54', '2.62');
INSERT INTO `sampling_media_order` VALUES ('2192', '0', '2019-11-24 15:39:04', null, '1', null, '1', '20191124153904578', '471328061611aa2075f84a55ae9f7f90dd00a26d1574581051767', '29', '2.17');
INSERT INTO `sampling_media_order` VALUES ('2193', '0', '2019-11-24 15:39:06', null, '1', null, '1', '20191124153906386', '69088593d057bdfa59f7475784eb83734ecbf0771574579926994', '64', '2.11');
INSERT INTO `sampling_media_order` VALUES ('2194', '0', '2019-11-24 15:39:18', null, '1', null, '1', '20191124153918884', '79516005f94b44a2e18b4a049e2f14bd27d486041574581407526', '23', '2.43');
INSERT INTO `sampling_media_order` VALUES ('2195', '0', '2019-11-24 15:39:43', null, '1', null, '1', '20191124153943561', '79516005f94b44a2e18b4a049e2f14bd27d486041574581407526', '62', '2.23');
INSERT INTO `sampling_media_order` VALUES ('2196', '0', '2019-11-24 15:39:55', null, '1', null, '1', '20191124153955937', '87989738486dd4caaa5442c2b15ae8da161821691574580025958', '54', '2.51');
INSERT INTO `sampling_media_order` VALUES ('2197', '0', '2019-11-24 15:39:58', null, '1', null, '1', '20191124153958583', '971993195905ab04754c4532a22a1c2afca8bdf71574579624509', '44', '2.22');
INSERT INTO `sampling_media_order` VALUES ('2198', '0', '2019-11-24 15:40:18', null, '1', null, '1', '20191124154018131', '971993195905ab04754c4532a22a1c2afca8bdf71574579624509', '18', '2.08');
INSERT INTO `sampling_media_order` VALUES ('2199', '0', '2019-11-24 15:40:42', null, '1', null, '1', '20191124154042549', '79516005f94b44a2e18b4a049e2f14bd27d486041574581407526', '40', '2.43');
INSERT INTO `sampling_media_order` VALUES ('2200', '0', '2019-11-24 15:43:12', null, '1', null, '1', '20191124154312154', '1320394579000787be024488b0e0cee3f334b96b1574581057615', '106', '2.05');
INSERT INTO `sampling_media_order` VALUES ('2201', '0', '2019-11-24 15:44:01', null, '1', null, '1', '20191124154401876', '94598220fe845ffb329e4930bad0202a106dc9351574580910346', '16', '2.56');
INSERT INTO `sampling_media_order` VALUES ('2202', '0', '2019-11-24 15:44:49', null, '1', null, '1', '20191124154449964', '814241499fb68c42c7da44cda8adbe476a0ef0431574581474175', '106', '2.16');
INSERT INTO `sampling_media_order` VALUES ('2203', '0', '2019-11-24 15:44:57', null, '1', null, '1', '20191124154457121', '70737742591c544ef60b41a5b47b6a7522f2064c1574581483373', '79', '2.57');
INSERT INTO `sampling_media_order` VALUES ('2204', '0', '2019-11-24 15:44:59', null, '1', null, '1', '20191124154459937', '76034252702e3c3f6ccb49dba722635fb175e0f11574581473623', '79', '2.49');
INSERT INTO `sampling_media_order` VALUES ('2205', '0', '2019-11-24 15:45:28', null, '1', null, '1', '20191124154528919', '70737742591c544ef60b41a5b47b6a7522f2064c1574581483373', '92', '2.64');
INSERT INTO `sampling_media_order` VALUES ('2206', '0', '2019-11-24 15:45:36', null, '1', null, '1', '20191124154536781', '97349094b7443a2dab274a308bba37d9b3e4a0711574581511096', '79', '2.94');
INSERT INTO `sampling_media_order` VALUES ('2207', '0', '2019-11-24 15:45:39', null, '1', null, '1', '20191124154539976', '814241499fb68c42c7da44cda8adbe476a0ef0431574581474175', '79', '2.78');
INSERT INTO `sampling_media_order` VALUES ('2208', '0', '2019-11-24 15:45:41', null, '1', null, '1', '20191124154541394', '814241499fb68c42c7da44cda8adbe476a0ef0431574581474175', '79', '2.98');
INSERT INTO `sampling_media_order` VALUES ('2209', '0', '2019-11-24 15:46:01', null, '1', null, '1', '20191124154601294', '916416965594390221714bcbb0c9b2ad1ec2960f1574581543405', '79', '2.60');
INSERT INTO `sampling_media_order` VALUES ('2210', '0', '2019-11-24 15:46:07', null, '1', null, '1', '20191124154607864', '2844590764309d9900534ed3aaf8f169a357cadb1574579660607', '23', '2.82');
INSERT INTO `sampling_media_order` VALUES ('2211', '0', '2019-11-24 15:46:12', null, '1', null, '1', '20191124154612548', '19164081d5c6bf74bea241df88ac7a02630930cc1574581562480', '96', '2.87');
INSERT INTO `sampling_media_order` VALUES ('2212', '0', '2019-11-24 15:46:17', null, '1', null, '1', '20191124154617414', '814241499fb68c42c7da44cda8adbe476a0ef0431574581474175', '92', '2.20');
INSERT INTO `sampling_media_order` VALUES ('2213', '0', '2019-11-24 15:47:00', null, '1', null, '1', '20191124154700310', '94598220fe845ffb329e4930bad0202a106dc9351574580910346', '54', '2.86');
INSERT INTO `sampling_media_order` VALUES ('2214', '0', '2019-11-24 15:47:09', null, '1', null, '1', '20191124154709629', '19164081d5c6bf74bea241df88ac7a02630930cc1574581562480', '41', '2.63');
INSERT INTO `sampling_media_order` VALUES ('2215', '0', '2019-11-24 15:47:09', null, '1', null, '1', '20191124154709667', '97349094b7443a2dab274a308bba37d9b3e4a0711574581511096', '41', '2.67');
INSERT INTO `sampling_media_order` VALUES ('2216', '0', '2019-11-24 15:47:16', null, '1', null, '1', '20191124154716659', '916416965594390221714bcbb0c9b2ad1ec2960f1574581543405', '36', '2.15');
INSERT INTO `sampling_media_order` VALUES ('2217', '0', '2019-11-24 15:48:30', null, '1', null, '1', '20191124154830827', '916416965594390221714bcbb0c9b2ad1ec2960f1574581543405', '96', '2.45');
INSERT INTO `sampling_media_order` VALUES ('2218', '0', '2019-11-24 15:48:32', null, '1', null, '1', '20191124154832292', '19164081d5c6bf74bea241df88ac7a02630930cc1574581562480', '64', '2.25');
INSERT INTO `sampling_media_order` VALUES ('2219', '0', '2019-11-24 15:48:34', null, '1', null, '1', '20191124154834948', '94598220fe845ffb329e4930bad0202a106dc9351574580910346', '38', '2.15');
INSERT INTO `sampling_media_order` VALUES ('2220', '0', '2019-11-24 15:48:57', null, '1', null, '1', '20191124154857197', '2844590764309d9900534ed3aaf8f169a357cadb1574579660607', '52', '2.98');
INSERT INTO `sampling_media_order` VALUES ('2221', '0', '2019-11-24 15:49:15', null, '1', null, '1', '20191124154915325', '916416965594390221714bcbb0c9b2ad1ec2960f1574581543405', '52', '2.40');
INSERT INTO `sampling_media_order` VALUES ('2222', '0', '2019-11-24 15:49:43', null, '1', null, '1', '20191124154943286', '869229274d44174d78bd42a9afd0cb8a0c0326611574572639345', '79', '2.27');
INSERT INTO `sampling_media_order` VALUES ('2223', '0', '2019-11-24 15:50:10', null, '1', null, '1', '20191124155010631', '94598220fe845ffb329e4930bad0202a106dc9351574580910346', '107', '2.51');
INSERT INTO `sampling_media_order` VALUES ('2224', '0', '2019-11-24 15:50:23', null, '1', null, '1', '20191124155023234', '77127255fd7e6b8fe7d4409cabdf18b39768532d1574579426398', '92', '2.14');
INSERT INTO `sampling_media_order` VALUES ('2225', '0', '2019-11-24 15:51:37', null, '1', null, '1', '20191124155137912', '94598220fe845ffb329e4930bad0202a106dc9351574580910346', '107', '2.67');
INSERT INTO `sampling_media_order` VALUES ('2226', '0', '2019-11-24 15:51:40', null, '1', null, '1', '20191124155140581', '81656842007484c4336a4045a6abb87047a2a1b91574581872112', '52', '2.16');
INSERT INTO `sampling_media_order` VALUES ('2227', '0', '2019-11-24 15:52:21', null, '1', null, '1', '20191124155221683', '77127255fd7e6b8fe7d4409cabdf18b39768532d1574579426398', '106', '2.06');
INSERT INTO `sampling_media_order` VALUES ('2228', '0', '2019-11-24 15:52:34', null, '1', null, '1', '20191124155234660', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '107', '2.13');
INSERT INTO `sampling_media_order` VALUES ('2229', '0', '2019-11-24 15:53:26', null, '1', null, '1', '20191124155326696', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '107', '2.29');
INSERT INTO `sampling_media_order` VALUES ('2230', '0', '2019-11-24 15:53:47', null, '1', null, '1', '20191124155347962', '959239162d54eba957a14382b42db7a514afb9801574581842453', '52', '2.08');
INSERT INTO `sampling_media_order` VALUES ('2231', '0', '2019-11-24 15:56:40', null, '1', null, '1', '20191124155640759', '321775464c21bc7d95ee49d6941808d64edb81301574582163884', '57', '2.57');
INSERT INTO `sampling_media_order` VALUES ('2232', '0', '2019-11-24 15:58:52', null, '1', null, '1', '20191124155852545', '7937677970de22bbcd18453392a78ffec1f57f611574582237020', '64', '2.96');
INSERT INTO `sampling_media_order` VALUES ('2233', '0', '2019-11-24 15:59:21', null, '1', null, '1', '20191124155921892', '7937677970de22bbcd18453392a78ffec1f57f611574582237020', '65', '2.66');
INSERT INTO `sampling_media_order` VALUES ('2234', '0', '2019-11-24 16:01:24', null, '1', null, '1', '20191124160124406', '7937677970de22bbcd18453392a78ffec1f57f611574582237020', '96', '2.54');
INSERT INTO `sampling_media_order` VALUES ('2235', '0', '2019-11-24 16:02:06', null, '1', null, '1', '20191124160206298', '321775464c21bc7d95ee49d6941808d64edb81301574582163884', '57', '2.11');
INSERT INTO `sampling_media_order` VALUES ('2236', '0', '2019-11-24 16:02:30', null, '1', null, '1', '20191124160230853', '321775464c21bc7d95ee49d6941808d64edb81301574582163884', '106', '2.14');
INSERT INTO `sampling_media_order` VALUES ('2237', '0', '2019-11-24 16:02:38', null, '1', null, '1', '20191124160238566', '7937677970de22bbcd18453392a78ffec1f57f611574582237020', '52', '2.79');
INSERT INTO `sampling_media_order` VALUES ('2238', '0', '2019-11-24 16:03:23', null, '1', null, '1', '20191124160323595', '7937677970de22bbcd18453392a78ffec1f57f611574582237020', '74', '2.45');
INSERT INTO `sampling_media_order` VALUES ('2239', '0', '2019-11-24 16:04:03', null, '1', null, '1', '20191124160403941', '94598220fe845ffb329e4930bad0202a106dc9351574580910346', '106', '2.70');
INSERT INTO `sampling_media_order` VALUES ('2240', '0', '2019-11-24 16:04:13', null, '1', null, '1', '20191124160413487', '321775464c21bc7d95ee49d6941808d64edb81301574582163884', '92', '2.40');
INSERT INTO `sampling_media_order` VALUES ('2241', '0', '2019-11-24 16:04:47', null, '1', null, '1', '20191124160447895', '321775464c21bc7d95ee49d6941808d64edb81301574582163884', '65', '2.05');
INSERT INTO `sampling_media_order` VALUES ('2242', '0', '2019-11-24 16:05:05', null, '1', null, '1', '20191124160505965', '94598220fe845ffb329e4930bad0202a106dc9351574580910346', '106', '2.88');
INSERT INTO `sampling_media_order` VALUES ('2243', '0', '2019-11-24 16:05:11', null, '1', null, '1', '20191124160511377', '1320394579000787be024488b0e0cee3f334b96b1574581057615', '52', '2.94');
INSERT INTO `sampling_media_order` VALUES ('2244', '0', '2019-11-24 16:05:47', null, '1', null, '1', '20191124160547766', '471328061611aa2075f84a55ae9f7f90dd00a26d1574581051767', '79', '2.16');
INSERT INTO `sampling_media_order` VALUES ('2245', '0', '2019-11-24 16:05:58', null, '1', null, '1', '20191124160558545', '1320394579000787be024488b0e0cee3f334b96b1574581057615', '65', '2.52');
INSERT INTO `sampling_media_order` VALUES ('2246', '0', '2019-11-24 16:07:16', null, '1', null, '1', '20191124160716353', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '65', '2.62');
INSERT INTO `sampling_media_order` VALUES ('2247', '0', '2019-11-24 16:07:20', null, '1', null, '1', '20191124160720520', '471328061611aa2075f84a55ae9f7f90dd00a26d1574581051767', '30', '2.39');
INSERT INTO `sampling_media_order` VALUES ('2248', '0', '2019-11-24 16:08:13', null, '1', null, '1', '20191124160813218', '471328061611aa2075f84a55ae9f7f90dd00a26d1574581051767', '52', '2.95');
INSERT INTO `sampling_media_order` VALUES ('2249', '0', '2019-11-24 16:08:43', null, '1', null, '1', '20191124160843881', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '65', '2.62');
INSERT INTO `sampling_media_order` VALUES ('2250', '0', '2019-11-24 16:08:57', null, '1', null, '1', '20191124160857411', '471328061611aa2075f84a55ae9f7f90dd00a26d1574581051767', '96', '2.66');
INSERT INTO `sampling_media_order` VALUES ('2251', '0', '2019-11-24 16:09:16', null, '1', null, '1', '20191124160916612', '471328061611aa2075f84a55ae9f7f90dd00a26d1574581051767', '96', '2.54');
INSERT INTO `sampling_media_order` VALUES ('2252', '0', '2019-11-24 16:09:24', null, '1', null, '1', '20191124160924815', '1320394579000787be024488b0e0cee3f334b96b1574581057615', '96', '2.57');
INSERT INTO `sampling_media_order` VALUES ('2253', '0', '2019-11-24 16:10:05', null, '1', null, '1', '20191124161005484', '30717154d46a4f6a4b584bd88356b7d50f84e59f1574582969227', '106', '2.65');
INSERT INTO `sampling_media_order` VALUES ('2254', '0', '2019-11-24 16:10:17', null, '1', null, '1', '20191124161017184', '2605979525391f12ea224cc4822818efd651e86e1574579451635', '106', '2.14');
INSERT INTO `sampling_media_order` VALUES ('2255', '0', '2019-11-24 16:10:46', null, '1', null, '1', '20191124161046392', '1320394579000787be024488b0e0cee3f334b96b1574581057615', '54', '2.59');
INSERT INTO `sampling_media_order` VALUES ('2256', '0', '2019-11-24 16:10:50', null, '1', null, '1', '20191124161050725', '94598220fe845ffb329e4930bad0202a106dc9351574580910346', '23', '2.88');
INSERT INTO `sampling_media_order` VALUES ('2257', '0', '2019-11-24 16:13:32', null, '1', null, '1', '20191124161332558', '72382715382e94c15e4543bcae1b9a129dae96251574583194492', '79', '2.50');
INSERT INTO `sampling_media_order` VALUES ('2258', '0', '2019-11-24 16:13:51', null, '1', null, '1', '20191124161351597', '35166061e1185316122046529b747fa92e63834b1574501866985', '74', '2.05');
INSERT INTO `sampling_media_order` VALUES ('2259', '0', '2019-11-24 16:14:44', null, '1', null, '1', '20191124161444573', '26279415476bee5de8b04bbc81583ea85f73a63f1574583252981', '36', '2.26');
INSERT INTO `sampling_media_order` VALUES ('2260', '0', '2019-11-24 16:16:39', null, '1', null, '1', '20191124161639742', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '79', '2.36');
INSERT INTO `sampling_media_order` VALUES ('2261', '0', '2019-11-24 16:16:45', null, '1', null, '1', '20191124161645213', '26279415476bee5de8b04bbc81583ea85f73a63f1574583252981', '66', '2.11');
INSERT INTO `sampling_media_order` VALUES ('2262', '0', '2019-11-24 16:17:10', null, '1', null, '1', '20191124161710897', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '96', '2.06');
INSERT INTO `sampling_media_order` VALUES ('2263', '0', '2019-11-24 16:17:23', null, '1', null, '1', '20191124161723821', '276703198452a18ab5b64b4785100539afb534601574583407991', '36', '2.82');
INSERT INTO `sampling_media_order` VALUES ('2264', '0', '2019-11-24 16:17:45', null, '1', null, '1', '20191124161745899', '26279415476bee5de8b04bbc81583ea85f73a63f1574583252981', '85', '2.54');
INSERT INTO `sampling_media_order` VALUES ('2265', '0', '2019-11-24 16:17:54', null, '1', null, '1', '20191124161754116', '26279415476bee5de8b04bbc81583ea85f73a63f1574583252981', '28', '2.18');
INSERT INTO `sampling_media_order` VALUES ('2266', '0', '2019-11-24 16:18:09', null, '1', null, '1', '20191124161809864', '276703198452a18ab5b64b4785100539afb534601574583407991', '96', '2.72');
INSERT INTO `sampling_media_order` VALUES ('2267', '0', '2019-11-24 16:18:19', null, '1', null, '1', '20191124161819150', '26279415476bee5de8b04bbc81583ea85f73a63f1574583252981', '65', '2.93');
INSERT INTO `sampling_media_order` VALUES ('2268', '0', '2019-11-24 16:19:12', null, '1', null, '1', '20191124161912361', '26279415476bee5de8b04bbc81583ea85f73a63f1574583252981', '49', '2.40');
INSERT INTO `sampling_media_order` VALUES ('2269', '0', '2019-11-24 16:19:34', null, '1', null, '1', '20191124161934821', '26279415476bee5de8b04bbc81583ea85f73a63f1574583252981', '46', '2.14');
INSERT INTO `sampling_media_order` VALUES ('2270', '0', '2019-11-24 16:20:53', null, '1', null, '1', '20191124162053756', '88477875bfc719279c8643da928a9571661565251574583642322', '79', '2.79');
INSERT INTO `sampling_media_order` VALUES ('2271', '0', '2019-11-24 16:21:46', null, '1', null, '1', '20191124162146187', '88477875bfc719279c8643da928a9571661565251574583642322', '92', '2.68');
INSERT INTO `sampling_media_order` VALUES ('2272', '0', '2019-11-24 16:23:57', null, '1', null, '1', '20191124162357962', '62794786c3a2484fb6214e3f97bd3d36981f08a41574583818933', '106', '2.67');
INSERT INTO `sampling_media_order` VALUES ('2273', '0', '2019-11-24 16:24:17', null, '1', null, '1', '20191124162417443', '81265429601bdffb55dd4ca586a85223b6b96d7c1574572316735', '65', '2.75');
INSERT INTO `sampling_media_order` VALUES ('2274', '0', '2019-11-24 16:24:31', null, '1', null, '1', '20191124162431968', '88477875bfc719279c8643da928a9571661565251574583642322', '80', '2.25');
INSERT INTO `sampling_media_order` VALUES ('2275', '0', '2019-11-24 16:24:31', null, '1', null, '1', '20191124162431838', '62794786c3a2484fb6214e3f97bd3d36981f08a41574583818933', '92', '2.75');
INSERT INTO `sampling_media_order` VALUES ('2276', '0', '2019-11-24 16:25:56', null, '1', null, '1', '20191124162556935', '817059590dcbd6bba574493fbbc01e3a71424c1d1574583921218', '80', '2.17');
INSERT INTO `sampling_media_order` VALUES ('2277', '0', '2019-11-24 16:26:06', null, '1', null, '1', '20191124162606916', '88477875bfc719279c8643da928a9571661565251574583642322', '92', '2.29');
INSERT INTO `sampling_media_order` VALUES ('2278', '0', '2019-11-24 16:29:29', null, '1', null, '1', '20191124162929840', '50670799666eddf4bc9e406faa60b9aae41574c11574584127225', '95', '2.05');
INSERT INTO `sampling_media_order` VALUES ('2279', '0', '2019-11-24 16:31:11', null, '1', null, '1', '20191124163111212', '1917066481889edbc75d48d2969d722292d9b1e71574584256430', '52', '2.36');
INSERT INTO `sampling_media_order` VALUES ('2280', '0', '2019-11-24 16:32:47', null, '1', null, '1', '20191124163247949', '84801583fd2ac798b13f4406ab8dc45b4158eb6c1574584301782', '52', '2.76');
INSERT INTO `sampling_media_order` VALUES ('2281', '0', '2019-11-24 16:33:45', null, '1', null, '1', '20191124163345620', '31055385b1a4929696d74f7cb922f641b964eddb1574584387711', '64', '2.80');
INSERT INTO `sampling_media_order` VALUES ('2282', '0', '2019-11-24 16:34:11', null, '1', null, '1', '20191124163411786', '1341903819af4b8600574f1ebf31558e171533661574584427932', '95', '2.01');
INSERT INTO `sampling_media_order` VALUES ('2283', '0', '2019-11-24 16:35:01', null, '1', null, '1', '20191124163501627', '33159483f27922dd3bdb42e3976ca998c7965c8c1574584490375', '96', '2.80');
INSERT INTO `sampling_media_order` VALUES ('2284', '0', '2019-11-24 16:35:16', null, '1', null, '1', '20191124163516581', '33159483f27922dd3bdb42e3976ca998c7965c8c1574584490375', '29', '2.98');
INSERT INTO `sampling_media_order` VALUES ('2285', '0', '2019-11-24 16:35:21', null, '1', null, '1', '20191124163521646', '84801583fd2ac798b13f4406ab8dc45b4158eb6c1574584301782', '69', '2.80');
INSERT INTO `sampling_media_order` VALUES ('2286', '0', '2019-11-24 16:35:53', null, '1', null, '1', '20191124163553317', '31055385b1a4929696d74f7cb922f641b964eddb1574584387711', '96', '2.06');
INSERT INTO `sampling_media_order` VALUES ('2287', '0', '2019-11-24 16:36:32', null, '1', null, '1', '20191124163632428', '10280047d43fd32297bc41b0b3188b7c8f6c51671574584582728', '69', '2.03');
INSERT INTO `sampling_media_order` VALUES ('2288', '0', '2019-11-24 16:38:16', null, '1', null, '1', '20191124163816840', '1341903819af4b8600574f1ebf31558e171533661574584427932', '62', '2.50');
INSERT INTO `sampling_media_order` VALUES ('2289', '0', '2019-11-24 16:40:34', null, '1', null, '1', '20191124164034400', '80412623c091fd4324084deeacb76383a61a01f91574584820613', '96', '2.26');
INSERT INTO `sampling_media_order` VALUES ('2290', '0', '2019-11-24 16:41:06', null, '1', null, '1', '20191124164106427', '10280047d43fd32297bc41b0b3188b7c8f6c51671574584582728', '92', '2.94');
INSERT INTO `sampling_media_order` VALUES ('2291', '0', '2019-11-24 16:41:45', null, '1', null, '1', '20191124164145320', '10280047d43fd32297bc41b0b3188b7c8f6c51671574584582728', '107', '2.74');
INSERT INTO `sampling_media_order` VALUES ('2292', '0', '2019-11-24 16:42:35', null, '1', null, '1', '20191124164235765', '80412623c091fd4324084deeacb76383a61a01f91574584820613', '44', '2.28');
INSERT INTO `sampling_media_order` VALUES ('2293', '0', '2019-11-24 16:43:42', null, '1', null, '1', '20191124164342376', '10280047d43fd32297bc41b0b3188b7c8f6c51671574584582728', '92', '2.28');
INSERT INTO `sampling_media_order` VALUES ('2294', '0', '2019-11-24 16:44:08', null, '1', null, '1', '20191124164408558', '10280047d43fd32297bc41b0b3188b7c8f6c51671574584582728', '49', '2.57');
INSERT INTO `sampling_media_order` VALUES ('2295', '0', '2019-11-24 16:44:31', null, '1', null, '1', '20191124164431662', '86069569a7ad76d92ed14ee393f60f6049927b0c1574585031054', '95', '2.42');
INSERT INTO `sampling_media_order` VALUES ('2296', '0', '2019-11-24 16:46:35', null, '1', null, '1', '20191124164635505', '86069569a7ad76d92ed14ee393f60f6049927b0c1574585031054', '92', '2.28');
INSERT INTO `sampling_media_order` VALUES ('2297', '0', '2019-11-24 16:46:51', null, '1', null, '1', '20191124164651856', '621760280f28728938a74dfc96166e1562815d2d1574585042036', '30', '2.50');
INSERT INTO `sampling_media_order` VALUES ('2298', '0', '2019-11-24 16:48:01', null, '1', null, '1', '20191124164801414', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '95', '2.80');
INSERT INTO `sampling_media_order` VALUES ('2299', '0', '2019-11-24 16:48:07', null, '1', null, '1', '20191124164807256', '621760280f28728938a74dfc96166e1562815d2d1574585042036', '49', '2.77');
INSERT INTO `sampling_media_order` VALUES ('2300', '0', '2019-11-24 16:48:25', null, '1', null, '1', '20191124164825201', '95893564776d6e1622144d5e800b6540bab4f0a91574585211561', '92', '2.15');
INSERT INTO `sampling_media_order` VALUES ('2301', '0', '2019-11-24 16:49:23', null, '1', null, '1', '20191124164923149', '621760280f28728938a74dfc96166e1562815d2d1574585042036', '79', '2.72');
INSERT INTO `sampling_media_order` VALUES ('2302', '0', '2019-11-24 16:49:23', null, '1', null, '1', '20191124164923413', '621760280f28728938a74dfc96166e1562815d2d1574585042036', '79', '2.66');
INSERT INTO `sampling_media_order` VALUES ('2303', '0', '2019-11-24 16:50:30', null, '1', null, '1', '20191124165030176', '424650365d30d145e632465eab2cdc5d659e045e1574585000421', '96', '2.61');
INSERT INTO `sampling_media_order` VALUES ('2304', '0', '2019-11-24 16:50:57', null, '1', null, '1', '20191124165057552', '424650365d30d145e632465eab2cdc5d659e045e1574585000421', '65', '2.12');
INSERT INTO `sampling_media_order` VALUES ('2305', '0', '2019-11-24 16:51:03', null, '1', null, '1', '20191124165103163', '621760280f28728938a74dfc96166e1562815d2d1574585042036', '41', '2.76');
INSERT INTO `sampling_media_order` VALUES ('2306', '0', '2019-11-24 16:51:06', null, '1', null, '1', '20191124165106768', '86069569a7ad76d92ed14ee393f60f6049927b0c1574585031054', '79', '2.55');
INSERT INTO `sampling_media_order` VALUES ('2307', '0', '2019-11-24 16:51:12', null, '1', null, '1', '20191124165112728', '352125993ca7bbf237074042b6448076fd24ff951574585459865', '79', '2.99');
INSERT INTO `sampling_media_order` VALUES ('2308', '0', '2019-11-24 16:51:49', null, '1', null, '1', '20191124165149807', '247853630c4537f0ced3475a8631f1f4d08eee611574585498390', '79', '2.01');
INSERT INTO `sampling_media_order` VALUES ('2309', '0', '2019-11-24 16:52:27', null, '1', null, '1', '20191124165227419', '621760280f28728938a74dfc96166e1562815d2d1574585042036', '85', '2.10');
INSERT INTO `sampling_media_order` VALUES ('2310', '0', '2019-11-24 16:52:31', null, '1', null, '1', '20191124165231197', '621760280f28728938a74dfc96166e1562815d2d1574585042036', '85', '2.63');
INSERT INTO `sampling_media_order` VALUES ('2311', '0', '2019-11-24 16:53:26', null, '1', null, '1', '20191124165326675', '95893564776d6e1622144d5e800b6540bab4f0a91574585211561', '16', '2.56');
INSERT INTO `sampling_media_order` VALUES ('2312', '0', '2019-11-24 16:56:22', null, '1', null, '1', '20191124165622332', '94598220fe845ffb329e4930bad0202a106dc9351574580910346', '38', '2.14');
INSERT INTO `sampling_media_order` VALUES ('2313', '0', '2019-11-24 16:56:51', null, '1', null, '1', '20191124165651609', '94598220fe845ffb329e4930bad0202a106dc9351574580910346', '94', '2.48');
INSERT INTO `sampling_media_order` VALUES ('2314', '0', '2019-11-24 16:56:55', null, '1', null, '1', '20191124165655333', '94598220fe845ffb329e4930bad0202a106dc9351574580910346', '94', '2.21');
INSERT INTO `sampling_media_order` VALUES ('2315', '0', '2019-11-24 16:58:42', null, '1', null, '1', '20191124165842119', '94598220fe845ffb329e4930bad0202a106dc9351574580910346', '99', '2.86');
INSERT INTO `sampling_media_order` VALUES ('2316', '0', '2019-11-24 16:58:43', null, '1', null, '1', '20191124165843275', '94598220fe845ffb329e4930bad0202a106dc9351574580910346', '99', '2.08');
INSERT INTO `sampling_media_order` VALUES ('2317', '0', '2019-11-24 17:00:32', null, '1', null, '1', '20191124170032304', '94598220fe845ffb329e4930bad0202a106dc9351574580910346', '37', '2.55');
INSERT INTO `sampling_media_order` VALUES ('2318', '0', '2019-11-24 17:00:54', null, '1', null, '1', '20191124170054278', '59256454f96e280a12b24c30b2acc0356b1123ff1574585886134', '76', '2.65');
INSERT INTO `sampling_media_order` VALUES ('2319', '0', '2019-11-24 17:02:03', null, '1', null, '1', '20191124170203996', '59256454f96e280a12b24c30b2acc0356b1123ff1574585886134', '65', '2.21');
INSERT INTO `sampling_media_order` VALUES ('2320', '0', '2019-11-24 17:04:24', null, '1', null, '1', '20191124170424802', '59256454f96e280a12b24c30b2acc0356b1123ff1574585886134', '106', '2.17');
INSERT INTO `sampling_media_order` VALUES ('2321', '0', '2019-11-24 17:04:42', null, '1', null, '1', '20191124170442574', '177395659c283a21bcff4ab9bb17f7fbbf05aa5f1574586244028', '52', '2.35');
INSERT INTO `sampling_media_order` VALUES ('2322', '0', '2019-11-24 17:05:00', null, '1', null, '1', '20191124170500355', '177395659c283a21bcff4ab9bb17f7fbbf05aa5f1574586244028', '52', '2.34');
INSERT INTO `sampling_media_order` VALUES ('2323', '0', '2019-11-24 17:05:17', null, '1', null, '1', '20191124170517948', '177395659c283a21bcff4ab9bb17f7fbbf05aa5f1574586244028', '65', '2.59');
INSERT INTO `sampling_media_order` VALUES ('2324', '0', '2019-11-24 17:05:40', null, '1', null, '1', '20191124170540818', '59256454f96e280a12b24c30b2acc0356b1123ff1574585886134', '54', '2.84');
INSERT INTO `sampling_media_order` VALUES ('2325', '0', '2019-11-24 17:08:01', null, '1', null, '1', '20191124170801413', '64524114bfdb4c7656fa45bc86b9d57e8d2b46511574586446151', '106', '2.39');
INSERT INTO `sampling_media_order` VALUES ('2326', '0', '2019-11-24 17:09:22', null, '1', null, '1', '20191124170922213', '59256454f96e280a12b24c30b2acc0356b1123ff1574585886134', '86', '2.79');
INSERT INTO `sampling_media_order` VALUES ('2327', '0', '2019-11-24 17:11:37', null, '1', null, '1', '20191124171137836', '710355570995a26dfd9243848da1ae2dacc43f901574577026433', '52', '2.20');
INSERT INTO `sampling_media_order` VALUES ('2328', '0', '2019-11-24 17:12:13', null, '1', null, '1', '20191124171213309', '710355570995a26dfd9243848da1ae2dacc43f901574577026433', '96', '2.08');
INSERT INTO `sampling_media_order` VALUES ('2329', '0', '2019-11-24 17:14:25', null, '1', null, '1', '20191124171425172', '61737214d37ea16ae19846699f4e34ddc0cb4b4a1574329116262', '36', '2.58');
INSERT INTO `sampling_media_order` VALUES ('2330', '0', '2019-11-24 17:14:41', null, '1', null, '1', '20191124171441891', '9120558315331e93f5d84ad398e78629328f3e201574586869516', '52', '2.34');
INSERT INTO `sampling_media_order` VALUES ('2331', '0', '2019-11-24 17:21:04', null, '1', null, '1', '20191124172104371', '272653313ca98b998db24d08bed0681267dde7c11574587194067', '94', '2.66');
INSERT INTO `sampling_media_order` VALUES ('2332', '0', '2019-11-24 17:22:06', null, '1', null, '1', '20191124172206333', '224555769b6d22fc8d9d47a99ee82d216e1e18891574587295773', '79', '2.39');
INSERT INTO `sampling_media_order` VALUES ('2333', '0', '2019-11-24 17:22:57', null, '1', null, '1', '20191124172257340', '224555769b6d22fc8d9d47a99ee82d216e1e18891574587295773', '54', '2.96');
INSERT INTO `sampling_media_order` VALUES ('2334', '0', '2019-11-24 17:23:13', null, '1', null, '1', '20191124172313715', '59256454f96e280a12b24c30b2acc0356b1123ff1574585886134', '62', '2.48');
INSERT INTO `sampling_media_order` VALUES ('2335', '0', '2019-11-24 17:23:52', null, '1', null, '1', '20191124172352879', '839993635ee86a99a8bb4da3bb388e325fd379561574587419391', '96', '2.15');
INSERT INTO `sampling_media_order` VALUES ('2336', '0', '2019-11-24 17:24:10', null, '1', null, '1', '20191124172410552', '59256454f96e280a12b24c30b2acc0356b1123ff1574585886134', '92', '2.36');
INSERT INTO `sampling_media_order` VALUES ('2337', '0', '2019-11-24 17:24:53', null, '1', null, '1', '20191124172453368', '224555769b6d22fc8d9d47a99ee82d216e1e18891574587295773', '38', '2.40');
INSERT INTO `sampling_media_order` VALUES ('2338', '0', '2019-11-24 17:25:06', null, '1', null, '1', '20191124172506699', '4733161838282bef9b264b8f8d98d42c020a7cd81574587491763', '96', '2.60');
INSERT INTO `sampling_media_order` VALUES ('2339', '0', '2019-11-24 17:25:19', null, '1', null, '1', '20191124172519947', '839993635ee86a99a8bb4da3bb388e325fd379561574587419391', '52', '2.59');
INSERT INTO `sampling_media_order` VALUES ('2340', '0', '2019-11-24 17:25:34', null, '1', null, '1', '20191124172534750', '224555769b6d22fc8d9d47a99ee82d216e1e18891574587295773', '54', '2.20');
INSERT INTO `sampling_media_order` VALUES ('2341', '0', '2019-11-24 17:25:53', null, '1', null, '1', '20191124172553388', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '52', '2.04');
INSERT INTO `sampling_media_order` VALUES ('2342', '0', '2019-11-24 17:25:56', null, '1', null, '1', '20191124172556479', '4733161838282bef9b264b8f8d98d42c020a7cd81574587491763', '95', '2.53');
INSERT INTO `sampling_media_order` VALUES ('2343', '0', '2019-11-24 17:26:26', null, '1', null, '1', '20191124172626502', '4733161838282bef9b264b8f8d98d42c020a7cd81574587491763', '92', '2.05');
INSERT INTO `sampling_media_order` VALUES ('2344', '0', '2019-11-24 17:26:42', null, '1', null, '1', '20191124172642697', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '65', '2.94');
INSERT INTO `sampling_media_order` VALUES ('2345', '0', '2019-11-24 17:26:50', null, '1', null, '1', '20191124172650183', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '65', '2.87');
INSERT INTO `sampling_media_order` VALUES ('2346', '0', '2019-11-24 17:27:28', null, '1', null, '1', '20191124172728721', '36297661bdc3d0f20b5b4c09a9eb6ecf591d1c241574587626954', '96', '2.10');
INSERT INTO `sampling_media_order` VALUES ('2347', '0', '2019-11-24 17:27:40', null, '1', null, '1', '20191124172740519', '4733161838282bef9b264b8f8d98d42c020a7cd81574587491763', '96', '2.23');
INSERT INTO `sampling_media_order` VALUES ('2348', '0', '2019-11-24 17:27:55', null, '1', null, '1', '20191124172755995', '4733161838282bef9b264b8f8d98d42c020a7cd81574587491763', '64', '2.10');
INSERT INTO `sampling_media_order` VALUES ('2349', '0', '2019-11-24 17:28:01', null, '1', null, '1', '20191124172801576', '839993635ee86a99a8bb4da3bb388e325fd379561574587419391', '41', '2.17');
INSERT INTO `sampling_media_order` VALUES ('2350', '0', '2019-11-24 17:28:35', null, '1', null, '1', '20191124172835749', '36297661bdc3d0f20b5b4c09a9eb6ecf591d1c241574587626954', '65', '2.55');
INSERT INTO `sampling_media_order` VALUES ('2351', '0', '2019-11-24 17:28:49', null, '1', null, '1', '20191124172849832', '18698191d5c3b8cbb5e445e283302dfb47e208cb1574587585616', '74', '2.17');
INSERT INTO `sampling_media_order` VALUES ('2352', '0', '2019-11-24 17:28:55', null, '1', null, '1', '20191124172855754', '18698191d5c3b8cbb5e445e283302dfb47e208cb1574587585616', '74', '2.46');
INSERT INTO `sampling_media_order` VALUES ('2353', '0', '2019-11-24 17:29:35', null, '1', null, '1', '20191124172935549', '36297661bdc3d0f20b5b4c09a9eb6ecf591d1c241574587626954', '52', '2.45');
INSERT INTO `sampling_media_order` VALUES ('2354', '0', '2019-11-24 17:34:29', null, '1', null, '1', '20191124173429951', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '76', '2.45');
INSERT INTO `sampling_media_order` VALUES ('2355', '0', '2019-11-24 17:35:03', null, '1', null, '1', '20191124173503556', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '20', '2.59');
INSERT INTO `sampling_media_order` VALUES ('2356', '0', '2019-11-24 17:35:05', null, '1', null, '1', '20191124173505130', '36297661bdc3d0f20b5b4c09a9eb6ecf591d1c241574587626954', '55', '2.66');
INSERT INTO `sampling_media_order` VALUES ('2357', '0', '2019-11-24 17:35:08', null, '1', null, '1', '20191124173508104', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '63', '2.78');
INSERT INTO `sampling_media_order` VALUES ('2358', '0', '2019-11-24 17:35:44', null, '1', null, '1', '20191124173544558', '36297661bdc3d0f20b5b4c09a9eb6ecf591d1c241574587626954', '23', '2.47');
INSERT INTO `sampling_media_order` VALUES ('2359', '0', '2019-11-24 17:36:05', null, '1', null, '1', '20191124173605959', '95642166fdee609397a44ee6bcaf6db39ddfe9ff1574588148709', '79', '2.32');
INSERT INTO `sampling_media_order` VALUES ('2360', '0', '2019-11-24 20:51:36', null, '1', null, '1', '20191124205136589', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '96', '2.35');
INSERT INTO `sampling_media_order` VALUES ('2361', '0', '2019-11-24 20:52:25', null, '1', null, '1', '20191124205225403', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '65', '2.81');
INSERT INTO `sampling_media_order` VALUES ('2362', '0', '2019-11-24 20:53:12', null, '1', null, '1', '20191124205312730', '89174248178e89b9e91d49378d360449de7642821572985035878', '21', '2.85');
INSERT INTO `sampling_media_order` VALUES ('2363', '0', '2019-11-24 20:54:04', null, '1', null, '1', '20191124205404217', '89174248178e89b9e91d49378d360449de7642821572985035878', '106', '2.03');
INSERT INTO `sampling_media_order` VALUES ('2364', '0', '2019-11-24 20:54:56', null, '1', null, '1', '20191124205456107', '9506692281732c1387114193a6161d60f4b9df641574579548654', '79', '2.06');
INSERT INTO `sampling_media_order` VALUES ('2365', '0', '2019-11-24 20:55:48', null, '1', null, '1', '20191124205548859', '9506692281732c1387114193a6161d60f4b9df641574579548654', '79', '2.05');
INSERT INTO `sampling_media_order` VALUES ('2366', '0', '2019-11-24 20:56:18', null, '1', null, '1', '20191124205618915', '9506692281732c1387114193a6161d60f4b9df641574579548654', '86', '2.40');
INSERT INTO `sampling_media_order` VALUES ('2367', '0', '2019-11-24 20:57:26', null, '1', null, '1', '20191124205726855', '7275489746f08d0385c14a4f8209724174547e421574600163220', '52', '2.03');
INSERT INTO `sampling_media_order` VALUES ('2368', '0', '2019-11-24 20:58:42', null, '1', null, '1', '20191124205842827', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '106', '2.60');
INSERT INTO `sampling_media_order` VALUES ('2369', '0', '2019-11-24 20:58:42', null, '1', null, '1', '20191124205842214', '7275489746f08d0385c14a4f8209724174547e421574600163220', '94', '2.92');
INSERT INTO `sampling_media_order` VALUES ('2370', '0', '2019-11-24 20:59:50', null, '1', null, '1', '20191124205950265', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '92', '2.65');
INSERT INTO `sampling_media_order` VALUES ('2371', '0', '2019-11-24 21:00:58', null, '1', null, '1', '20191124210058579', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '92', '2.08');
INSERT INTO `sampling_media_order` VALUES ('2372', '0', '2019-11-24 21:03:31', null, '1', null, '1', '20191124210331823', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '36', '3.92');
INSERT INTO `sampling_media_order` VALUES ('2373', '0', '2019-11-24 21:05:45', null, '1', null, '1', '20191124210545410', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '96', '3.66');
INSERT INTO `sampling_media_order` VALUES ('2374', '0', '2019-11-24 21:06:21', null, '1', null, '1', '20191124210621310', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '49', '3.02');
INSERT INTO `sampling_media_order` VALUES ('2375', '0', '2019-11-24 21:07:33', null, '1', null, '1', '20191124210733819', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '80', '3.24');
INSERT INTO `sampling_media_order` VALUES ('2376', '0', '2019-11-24 21:08:22', null, '1', null, '1', '20191124210822984', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '23', '3.24');
INSERT INTO `sampling_media_order` VALUES ('2377', '0', '2019-11-24 21:09:20', null, '1', null, '1', '20191124210920987', '9506692281732c1387114193a6161d60f4b9df641574579548654', '54', '3.76');
INSERT INTO `sampling_media_order` VALUES ('2378', '0', '2019-11-24 21:09:30', null, '1', null, '1', '20191124210930334', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '57', '3.29');
INSERT INTO `sampling_media_order` VALUES ('2379', '0', '2019-11-24 21:15:47', null, '1', null, '1', '20191124211547467', '523021265bf253e5d294423fa04f06132b7d74b51574328963026', '62', '3.41');
INSERT INTO `sampling_media_order` VALUES ('2380', '0', '2019-11-24 21:16:34', null, '1', null, '1', '20191124211634813', '523021265bf253e5d294423fa04f06132b7d74b51574328963026', '36', '3.68');
INSERT INTO `sampling_media_order` VALUES ('2381', '0', '2019-11-24 21:16:54', null, '1', null, '1', '20191124211654905', '9506692281732c1387114193a6161d60f4b9df641574579548654', '79', '3.63');
INSERT INTO `sampling_media_order` VALUES ('2382', '0', '2019-11-24 21:17:08', null, '1', null, '1', '20191124211708120', '5146499223dc7884db184d2bbd37eab09ff7786b1574328981511', '94', '3.44');
INSERT INTO `sampling_media_order` VALUES ('2383', '0', '2019-11-24 21:17:46', null, '1', null, '1', '20191124211746334', '9506692281732c1387114193a6161d60f4b9df641574579548654', '18', '3.44');
INSERT INTO `sampling_media_order` VALUES ('2384', '0', '2019-11-24 21:18:00', null, '1', null, '1', '20191124211800265', '75561397e0dfb27e88214f23ad464b829373593d1574580788151', '96', '3.32');
INSERT INTO `sampling_media_order` VALUES ('2385', '0', '2019-11-24 21:18:18', null, '1', null, '1', '20191124211818372', '9506692281732c1387114193a6161d60f4b9df641574579548654', '18', '3.54');
INSERT INTO `sampling_media_order` VALUES ('2386', '0', '2019-11-24 21:18:41', null, '1', null, '1', '20191124211841238', '381302659edf6abec01841a9bd5b6eb0f97399f71574581393839', '52', '3.07');
INSERT INTO `sampling_media_order` VALUES ('2387', '0', '2019-11-24 21:18:57', null, '1', null, '1', '20191124211857854', '381302659edf6abec01841a9bd5b6eb0f97399f71574581393839', '65', '3.96');
INSERT INTO `sampling_media_order` VALUES ('2388', '0', '2019-11-24 21:18:58', null, '1', null, '1', '20191124211858806', '75561397e0dfb27e88214f23ad464b829373593d1574580788151', '41', '3.02');
INSERT INTO `sampling_media_order` VALUES ('2389', '0', '2019-11-24 21:19:16', null, '1', null, '1', '20191124211916171', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '65', '3.02');
INSERT INTO `sampling_media_order` VALUES ('2390', '0', '2019-11-24 21:19:42', null, '1', null, '1', '20191124211942196', '381302659edf6abec01841a9bd5b6eb0f97399f71574581393839', '92', '3.47');
INSERT INTO `sampling_media_order` VALUES ('2391', '0', '2019-11-24 21:20:12', null, '1', null, '1', '20191124212012229', '381302659edf6abec01841a9bd5b6eb0f97399f71574581393839', '29', '3.94');
INSERT INTO `sampling_media_order` VALUES ('2392', '0', '2019-11-24 21:20:25', null, '1', null, '1', '20191124212025802', '9506692281732c1387114193a6161d60f4b9df641574579548654', '16', '3.38');
INSERT INTO `sampling_media_order` VALUES ('2393', '0', '2019-11-24 21:20:51', null, '1', null, '1', '20191124212051223', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '65', '3.54');
INSERT INTO `sampling_media_order` VALUES ('2394', '0', '2019-11-24 21:21:02', null, '1', null, '1', '20191124212102930', '9506692281732c1387114193a6161d60f4b9df641574579548654', '84', '3.71');
INSERT INTO `sampling_media_order` VALUES ('2395', '0', '2019-11-24 21:21:29', null, '1', null, '1', '20191124212129212', '381302659edf6abec01841a9bd5b6eb0f97399f71574581393839', '84', '3.05');
INSERT INTO `sampling_media_order` VALUES ('2396', '0', '2019-11-24 21:23:23', null, '1', null, '1', '20191124212323451', '8755804611cd4e07cf8d4482b914fa592bcd9bbb1574573777803', '96', '3.23');
INSERT INTO `sampling_media_order` VALUES ('2397', '0', '2019-11-24 21:24:56', null, '1', null, '1', '20191124212456178', '84827515a8d7c8b1b4a746f9bb91c97341c27b651574586534782', '79', '3.73');
INSERT INTO `sampling_media_order` VALUES ('2398', '0', '2019-11-24 21:25:37', null, '1', null, '1', '20191124212537671', '84827515a8d7c8b1b4a746f9bb91c97341c27b651574586534782', '65', '3.19');
INSERT INTO `sampling_media_order` VALUES ('2399', '0', '2019-11-24 21:26:01', null, '1', null, '1', '20191124212601623', '84827515a8d7c8b1b4a746f9bb91c97341c27b651574586534782', '29', '3.62');
INSERT INTO `sampling_media_order` VALUES ('2400', '0', '2019-11-24 21:26:29', null, '1', null, '1', '20191124212629642', '84827515a8d7c8b1b4a746f9bb91c97341c27b651574586534782', '85', '3.57');
INSERT INTO `sampling_media_order` VALUES ('2401', '0', '2019-11-24 21:27:55', null, '1', null, '1', '20191124212755605', '84827515a8d7c8b1b4a746f9bb91c97341c27b651574586534782', '79', '3.85');
INSERT INTO `sampling_media_order` VALUES ('2402', '0', '2019-11-24 21:28:28', null, '1', null, '1', '20191124212828308', '381302659edf6abec01841a9bd5b6eb0f97399f71574581393839', '106', '3.40');
INSERT INTO `sampling_media_order` VALUES ('2403', '0', '2019-11-24 21:29:00', null, '1', null, '1', '20191124212900675', '84827515a8d7c8b1b4a746f9bb91c97341c27b651574586534782', '65', '3.56');
INSERT INTO `sampling_media_order` VALUES ('2404', '0', '2019-11-24 21:30:06', null, '1', null, '1', '20191124213006310', '84827515a8d7c8b1b4a746f9bb91c97341c27b651574586534782', '49', '3.98');
INSERT INTO `sampling_media_order` VALUES ('2405', '0', '2019-11-24 21:30:10', null, '1', null, '1', '20191124213010515', '93566728ae41da5894e14ec28b0c506a3a2bb4b81574602188718', '79', '3.78');
INSERT INTO `sampling_media_order` VALUES ('2406', '0', '2019-11-24 21:31:01', null, '1', null, '1', '20191124213101247', '84827515a8d7c8b1b4a746f9bb91c97341c27b651574586534782', '49', '3.12');
INSERT INTO `sampling_media_order` VALUES ('2407', '0', '2019-11-24 21:31:14', null, '1', null, '1', '20191124213114521', '93566728ae41da5894e14ec28b0c506a3a2bb4b81574602188718', '52', '3.61');
INSERT INTO `sampling_media_order` VALUES ('2408', '0', '2019-11-24 21:32:37', null, '1', null, '1', '20191124213237823', '1621022688fafca03ec94a95ae38410c89a8733c1574600309162', '79', '3.19');
INSERT INTO `sampling_media_order` VALUES ('2409', '0', '2019-11-24 21:33:10', null, '1', null, '1', '20191124213310451', '84827515a8d7c8b1b4a746f9bb91c97341c27b651574586534782', '76', '3.19');
INSERT INTO `sampling_media_order` VALUES ('2410', '0', '2019-11-24 21:33:14', null, '1', null, '1', '20191124213314592', '1621022688fafca03ec94a95ae38410c89a8733c1574600309162', '96', '3.24');
INSERT INTO `sampling_media_order` VALUES ('2411', '0', '2019-11-24 21:33:26', null, '1', null, '1', '20191124213326848', '35166061e1185316122046529b747fa92e63834b1574501866985', '65', '3.59');
INSERT INTO `sampling_media_order` VALUES ('2412', '0', '2019-11-24 21:33:58', null, '1', null, '1', '20191124213358798', '84827515a8d7c8b1b4a746f9bb91c97341c27b651574586534782', '16', '3.52');
INSERT INTO `sampling_media_order` VALUES ('2413', '0', '2019-11-24 21:34:18', null, '1', null, '1', '20191124213418872', '84827515a8d7c8b1b4a746f9bb91c97341c27b651574586534782', '92', '3.98');
INSERT INTO `sampling_media_order` VALUES ('2414', '0', '2019-11-24 21:34:49', null, '1', null, '1', '20191124213449565', '52476548a1987158b9d34d669e63594b2dba49721574602454242', '96', '3.91');
INSERT INTO `sampling_media_order` VALUES ('2415', '0', '2019-11-24 21:35:18', null, '1', null, '1', '20191124213518906', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '65', '3.62');
INSERT INTO `sampling_media_order` VALUES ('2416', '0', '2019-11-24 21:35:27', null, '1', null, '1', '20191124213527988', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '79', '3.17');
INSERT INTO `sampling_media_order` VALUES ('2417', '0', '2019-11-24 21:36:05', null, '1', null, '1', '20191124213605469', '52476548a1987158b9d34d669e63594b2dba49721574602454242', '41', '3.22');
INSERT INTO `sampling_media_order` VALUES ('2418', '0', '2019-11-24 21:37:49', null, '1', null, '1', '20191124213749884', '52476548a1987158b9d34d669e63594b2dba49721574602454242', '41', '3.78');
INSERT INTO `sampling_media_order` VALUES ('2419', '0', '2019-11-24 21:38:05', null, '1', null, '1', '20191124213805557', '41692499e1a034b3d5c14eb2a3aab129f7c020261574602642564', '79', '3.83');
INSERT INTO `sampling_media_order` VALUES ('2420', '0', '2019-11-24 21:38:17', null, '1', null, '1', '20191124213817973', '52476548a1987158b9d34d669e63594b2dba49721574602454242', '52', '3.77');
INSERT INTO `sampling_media_order` VALUES ('2421', '0', '2019-11-24 21:38:19', null, '1', null, '1', '20191124213819925', '68368147d08d6c3e38214118b740fea9f025e3301574602680357', '106', '3.88');
INSERT INTO `sampling_media_order` VALUES ('2422', '0', '2019-11-24 21:38:36', null, '1', null, '1', '20191124213836442', '68368147d08d6c3e38214118b740fea9f025e3301574602680357', '107', '3.53');
INSERT INTO `sampling_media_order` VALUES ('2423', '0', '2019-11-24 21:39:00', null, '1', null, '1', '20191124213900903', '5146499223dc7884db184d2bbd37eab09ff7786b1574328981511', '52', '3.95');
INSERT INTO `sampling_media_order` VALUES ('2424', '0', '2019-11-24 21:39:10', null, '1', null, '1', '20191124213910148', '68368147d08d6c3e38214118b740fea9f025e3301574602680357', '92', '3.79');
INSERT INTO `sampling_media_order` VALUES ('2425', '0', '2019-11-24 21:39:11', null, '1', null, '1', '20191124213911232', '1196076389f6cf83113945b394c917bbe9b6a7c91574602421745', '64', '3.46');
INSERT INTO `sampling_media_order` VALUES ('2426', '0', '2019-11-24 21:39:43', null, '1', null, '1', '20191124213943650', '52476548a1987158b9d34d669e63594b2dba49721574602454242', '79', '3.46');
INSERT INTO `sampling_media_order` VALUES ('2427', '0', '2019-11-24 21:39:58', null, '1', null, '1', '20191124213958778', '41692499e1a034b3d5c14eb2a3aab129f7c020261574602642564', '54', '3.12');
INSERT INTO `sampling_media_order` VALUES ('2428', '0', '2019-11-24 21:40:05', null, '1', null, '1', '20191124214005282', '1196076389f6cf83113945b394c917bbe9b6a7c91574602421745', '92', '3.69');
INSERT INTO `sampling_media_order` VALUES ('2429', '0', '2019-11-24 21:40:28', null, '1', null, '1', '20191124214028709', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '84', '3.99');
INSERT INTO `sampling_media_order` VALUES ('2430', '0', '2019-11-24 21:40:41', null, '1', null, '1', '20191124214041589', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '65', '3.08');
INSERT INTO `sampling_media_order` VALUES ('2431', '0', '2019-11-24 21:41:18', null, '1', null, '1', '20191124214118803', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '36', '3.70');
INSERT INTO `sampling_media_order` VALUES ('2432', '0', '2019-11-24 21:41:30', null, '1', null, '1', '20191124214130377', '92712818122c44e07d2546dc92696354f5a6b1f21574603082745', '96', '3.31');
INSERT INTO `sampling_media_order` VALUES ('2433', '0', '2019-11-24 21:41:53', null, '1', null, '1', '20191124214153926', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '65', '3.54');
INSERT INTO `sampling_media_order` VALUES ('2434', '0', '2019-11-24 21:42:25', null, '1', null, '1', '20191124214225625', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '54', '3.87');
INSERT INTO `sampling_media_order` VALUES ('2435', '0', '2019-11-24 21:43:21', null, '1', null, '1', '20191124214321761', '92712818122c44e07d2546dc92696354f5a6b1f21574603082745', '36', '3.83');
INSERT INTO `sampling_media_order` VALUES ('2436', '0', '2019-11-24 21:44:26', null, '1', null, '1', '20191124214426661', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '29', '3.40');
INSERT INTO `sampling_media_order` VALUES ('2437', '0', '2019-11-24 21:45:17', null, '1', null, '1', '20191124214517269', '224555769b6d22fc8d9d47a99ee82d216e1e18891574587295773', '106', '3.92');
INSERT INTO `sampling_media_order` VALUES ('2438', '0', '2019-11-24 21:45:43', null, '1', null, '1', '20191124214543694', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '105', '3.88');
INSERT INTO `sampling_media_order` VALUES ('2439', '0', '2019-11-24 21:47:05', null, '1', null, '1', '20191124214705488', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '79', '3.14');
INSERT INTO `sampling_media_order` VALUES ('2440', '0', '2019-11-24 21:48:06', null, '1', null, '1', '20191124214806358', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '65', '3.36');
INSERT INTO `sampling_media_order` VALUES ('2441', '0', '2019-11-24 21:48:51', null, '1', null, '1', '20191124214851253', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '92', '3.96');
INSERT INTO `sampling_media_order` VALUES ('2442', '0', '2019-11-24 21:49:39', null, '1', null, '1', '20191124214939147', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '41', '3.50');
INSERT INTO `sampling_media_order` VALUES ('2443', '0', '2019-11-24 21:50:11', null, '1', null, '1', '20191124215011355', '5146499223dc7884db184d2bbd37eab09ff7786b1574328981511', '52', '3.08');
INSERT INTO `sampling_media_order` VALUES ('2444', '0', '2019-11-24 21:50:27', null, '1', null, '1', '20191124215027678', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '76', '3.21');
INSERT INTO `sampling_media_order` VALUES ('2445', '0', '2019-11-24 21:51:13', null, '1', null, '1', '20191124215113514', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '49', '3.09');
INSERT INTO `sampling_media_order` VALUES ('2446', '0', '2019-11-24 21:52:03', null, '1', null, '1', '20191124215203346', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '96', '3.64');
INSERT INTO `sampling_media_order` VALUES ('2447', '0', '2019-11-24 21:52:58', null, '1', null, '1', '20191124215258748', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '64', '3.11');
INSERT INTO `sampling_media_order` VALUES ('2448', '0', '2019-11-24 21:56:59', null, '1', null, '1', '20191124215659267', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '92', '3.32');
INSERT INTO `sampling_media_order` VALUES ('2449', '0', '2019-11-24 21:57:17', null, '1', null, '1', '20191124215717945', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '54', '3.35');
INSERT INTO `sampling_media_order` VALUES ('2450', '0', '2019-11-24 21:58:35', null, '1', null, '1', '20191124215835167', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '29', '3.12');
INSERT INTO `sampling_media_order` VALUES ('2451', '0', '2019-11-24 21:59:55', null, '1', null, '1', '20191124215955384', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '41', '3.40');
INSERT INTO `sampling_media_order` VALUES ('2452', '0', '2019-11-24 22:03:05', null, '1', null, '1', '20191124220305843', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '107', '3.92');
INSERT INTO `sampling_media_order` VALUES ('2453', '0', '2019-11-24 22:04:01', null, '1', null, '1', '20191124220401507', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '76', '3.42');
INSERT INTO `sampling_media_order` VALUES ('2454', '0', '2019-11-24 22:04:44', null, '1', null, '1', '20191124220444823', '26044792d33d8b9499064e9eabb89e9664f4ad071574580115918', '55', '3.73');
INSERT INTO `sampling_media_order` VALUES ('2455', '0', '2019-11-24 22:04:46', null, '1', null, '1', '20191124220446364', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '66', '3.43');
INSERT INTO `sampling_media_order` VALUES ('2456', '0', '2019-11-24 22:04:58', null, '1', null, '1', '20191124220458407', '8755804611cd4e07cf8d4482b914fa592bcd9bbb1574573777803', '65', '3.34');
INSERT INTO `sampling_media_order` VALUES ('2457', '0', '2019-11-24 22:05:59', null, '1', null, '1', '20191124220559429', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '95', '3.90');
INSERT INTO `sampling_media_order` VALUES ('2458', '0', '2019-11-24 22:06:11', null, '1', null, '1', '20191124220611179', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '74', '3.85');
INSERT INTO `sampling_media_order` VALUES ('2459', '0', '2019-11-24 22:06:58', null, '1', null, '1', '20191124220658806', '4342271623c97f21778442d4943df0ab689704001574604405176', '79', '3.56');
INSERT INTO `sampling_media_order` VALUES ('2460', '0', '2019-11-24 22:07:07', null, '1', null, '1', '20191124220707802', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '12', '3.33');
INSERT INTO `sampling_media_order` VALUES ('2461', '0', '2019-11-24 22:07:55', null, '1', null, '1', '20191124220755323', '8755804611cd4e07cf8d4482b914fa592bcd9bbb1574573777803', '79', '3.02');
INSERT INTO `sampling_media_order` VALUES ('2462', '0', '2019-11-24 22:08:29', null, '1', null, '1', '20191124220829318', '26044792d33d8b9499064e9eabb89e9664f4ad071574580115918', '52', '3.23');
INSERT INTO `sampling_media_order` VALUES ('2463', '0', '2019-11-24 22:09:16', null, '1', null, '1', '20191124220916986', '355854700f22a5e35fb14595b0aadbb85991f9df1574580070414', '52', '3.54');
INSERT INTO `sampling_media_order` VALUES ('2464', '0', '2019-11-24 22:09:21', null, '1', null, '1', '20191124220921338', '8755804611cd4e07cf8d4482b914fa592bcd9bbb1574573777803', '64', '3.42');
INSERT INTO `sampling_media_order` VALUES ('2465', '0', '2019-11-24 22:09:29', null, '1', null, '1', '20191124220929808', '41409561d00316384c3840fbbcaf9dbb009031ed1574604549402', '79', '3.78');
INSERT INTO `sampling_media_order` VALUES ('2466', '0', '2019-11-24 22:10:33', null, '1', null, '1', '20191124221033861', '355854700f22a5e35fb14595b0aadbb85991f9df1574580070414', '54', '3.47');
INSERT INTO `sampling_media_order` VALUES ('2467', '0', '2019-11-24 22:10:38', null, '1', null, '1', '20191124221038926', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '60', '3.76');
INSERT INTO `sampling_media_order` VALUES ('2468', '0', '2019-11-24 22:10:39', null, '1', null, '1', '20191124221039399', '94983240d5a782d5082d44a8af2ce2fe7469e8981574580486676', '79', '3.50');
INSERT INTO `sampling_media_order` VALUES ('2469', '0', '2019-11-24 22:10:45', null, '1', null, '1', '20191124221045927', '72987352c4aa2882d6b14db69f878c3d0c4c11501574604409680', '107', '3.92');
INSERT INTO `sampling_media_order` VALUES ('2470', '0', '2019-11-24 22:10:56', null, '1', null, '1', '20191124221056305', '41409561d00316384c3840fbbcaf9dbb009031ed1574604549402', '29', '3.79');
INSERT INTO `sampling_media_order` VALUES ('2471', '0', '2019-11-24 22:11:25', null, '1', null, '1', '20191124221125185', '94983240d5a782d5082d44a8af2ce2fe7469e8981574580486676', '65', '3.42');
INSERT INTO `sampling_media_order` VALUES ('2472', '0', '2019-11-24 22:11:46', null, '1', null, '1', '20191124221146210', '41409561d00316384c3840fbbcaf9dbb009031ed1574604549402', '49', '3.44');
INSERT INTO `sampling_media_order` VALUES ('2473', '0', '2019-11-24 22:12:06', null, '1', null, '1', '20191124221206596', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '79', '3.38');
INSERT INTO `sampling_media_order` VALUES ('2474', '0', '2019-11-24 22:12:10', null, '1', null, '1', '20191124221210750', '94983240d5a782d5082d44a8af2ce2fe7469e8981574580486676', '92', '3.66');
INSERT INTO `sampling_media_order` VALUES ('2475', '0', '2019-11-24 22:12:19', null, '1', null, '1', '20191124221219424', '355854700f22a5e35fb14595b0aadbb85991f9df1574580070414', '51', '3.25');
INSERT INTO `sampling_media_order` VALUES ('2476', '0', '2019-11-24 22:12:37', null, '1', null, '1', '20191124221237915', '41409561d00316384c3840fbbcaf9dbb009031ed1574604549402', '92', '3.70');
INSERT INTO `sampling_media_order` VALUES ('2477', '0', '2019-11-24 22:12:53', null, '1', null, '1', '20191124221253638', '94983240d5a782d5082d44a8af2ce2fe7469e8981574580486676', '23', '3.69');
INSERT INTO `sampling_media_order` VALUES ('2478', '0', '2019-11-24 22:13:20', null, '1', null, '1', '20191124221320655', '41409561d00316384c3840fbbcaf9dbb009031ed1574604549402', '49', '3.33');
INSERT INTO `sampling_media_order` VALUES ('2479', '0', '2019-11-24 22:13:30', null, '1', null, '1', '20191124221330644', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '52', '3.74');
INSERT INTO `sampling_media_order` VALUES ('2480', '0', '2019-11-24 22:13:40', null, '1', null, '1', '20191124221340914', '94983240d5a782d5082d44a8af2ce2fe7469e8981574580486676', '54', '3.72');
INSERT INTO `sampling_media_order` VALUES ('2481', '0', '2019-11-24 22:14:04', null, '1', null, '1', '20191124221404212', '355854700f22a5e35fb14595b0aadbb85991f9df1574580070414', '79', '3.43');
INSERT INTO `sampling_media_order` VALUES ('2482', '0', '2019-11-24 22:14:23', null, '1', null, '1', '20191124221423822', '14300923640ceb57d2254056b2f9e7ab9c6268c61574604829996', '52', '3.10');
INSERT INTO `sampling_media_order` VALUES ('2483', '0', '2019-11-24 22:14:26', null, '1', null, '1', '20191124221426951', '94983240d5a782d5082d44a8af2ce2fe7469e8981574580486676', '86', '3.87');
INSERT INTO `sampling_media_order` VALUES ('2484', '0', '2019-11-24 22:15:09', null, '1', null, '1', '20191124221509104', '94983240d5a782d5082d44a8af2ce2fe7469e8981574580486676', '29', '3.04');
INSERT INTO `sampling_media_order` VALUES ('2485', '0', '2019-11-24 22:15:11', null, '1', null, '1', '20191124221511768', '14300923640ceb57d2254056b2f9e7ab9c6268c61574604829996', '41', '3.32');
INSERT INTO `sampling_media_order` VALUES ('2486', '0', '2019-11-24 22:15:44', null, '1', null, '1', '20191124221544867', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '65', '3.00');
INSERT INTO `sampling_media_order` VALUES ('2487', '0', '2019-11-24 22:15:53', null, '1', null, '1', '20191124221553485', '94983240d5a782d5082d44a8af2ce2fe7469e8981574580486676', '41', '3.63');
INSERT INTO `sampling_media_order` VALUES ('2488', '0', '2019-11-24 22:16:07', null, '1', null, '1', '20191124221607685', '8755804611cd4e07cf8d4482b914fa592bcd9bbb1574573777803', '106', '3.50');
INSERT INTO `sampling_media_order` VALUES ('2489', '0', '2019-11-24 22:16:33', null, '1', null, '1', '20191124221633332', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '36', '3.14');
INSERT INTO `sampling_media_order` VALUES ('2490', '0', '2019-11-24 22:16:43', null, '1', null, '1', '20191124221643784', '8755804611cd4e07cf8d4482b914fa592bcd9bbb1574573777803', '106', '3.09');
INSERT INTO `sampling_media_order` VALUES ('2491', '0', '2019-11-24 22:16:43', null, '1', null, '1', '20191124221643364', '94983240d5a782d5082d44a8af2ce2fe7469e8981574580486676', '49', '3.25');
INSERT INTO `sampling_media_order` VALUES ('2492', '0', '2019-11-24 22:17:42', null, '1', null, '1', '20191124221742966', '94983240d5a782d5082d44a8af2ce2fe7469e8981574580486676', '96', '3.46');
INSERT INTO `sampling_media_order` VALUES ('2493', '0', '2019-11-24 22:17:50', null, '1', null, '1', '20191124221750628', '864765713286a8fd90364656a4cbe64b22e787f61574583214567', '36', '3.61');
INSERT INTO `sampling_media_order` VALUES ('2494', '0', '2019-11-24 22:18:14', null, '1', null, '1', '20191124221814281', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '54', '3.77');
INSERT INTO `sampling_media_order` VALUES ('2495', '0', '2019-11-24 22:18:14', null, '1', null, '1', '20191124221814836', '228038251c2d2b80acab4210820271f03f347ae11574605067647', '96', '3.77');
INSERT INTO `sampling_media_order` VALUES ('2496', '0', '2019-11-24 22:18:37', null, '1', null, '1', '20191124221837971', '92749879d8ee3e0179154997b71c76068919dbdc1574605072404', '25', '3.21');
INSERT INTO `sampling_media_order` VALUES ('2497', '0', '2019-11-24 22:18:39', null, '1', null, '1', '20191124221839532', '228038251c2d2b80acab4210820271f03f347ae11574605067647', '65', '3.90');
INSERT INTO `sampling_media_order` VALUES ('2498', '0', '2019-11-24 22:18:40', null, '1', null, '1', '20191124221840572', '94983240d5a782d5082d44a8af2ce2fe7469e8981574580486676', '60', '3.49');
INSERT INTO `sampling_media_order` VALUES ('2499', '0', '2019-11-24 22:18:50', null, '1', null, '1', '20191124221850451', '5146499223dc7884db184d2bbd37eab09ff7786b1574328981511', '59', '3.61');
INSERT INTO `sampling_media_order` VALUES ('2500', '0', '2019-11-24 22:19:10', null, '1', null, '1', '20191124221910485', '228038251c2d2b80acab4210820271f03f347ae11574605067647', '76', '3.28');
INSERT INTO `sampling_media_order` VALUES ('2501', '0', '2019-11-24 22:19:10', null, '1', null, '1', '20191124221910551', '94983240d5a782d5082d44a8af2ce2fe7469e8981574580486676', '53', '3.36');
INSERT INTO `sampling_media_order` VALUES ('2502', '0', '2019-11-24 22:19:24', null, '1', null, '1', '20191124221924126', '9222990815b0ef39bb0947018eb4d18a068fb7eb1574605150951', '52', '3.22');
INSERT INTO `sampling_media_order` VALUES ('2503', '0', '2019-11-24 22:19:27', null, '1', null, '1', '20191124221927890', '10935370dbc99a946e224e78857e1017020846471574579440173', '36', '3.38');
INSERT INTO `sampling_media_order` VALUES ('2504', '0', '2019-11-24 22:19:28', null, '1', null, '1', '20191124221928344', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '96', '3.66');
INSERT INTO `sampling_media_order` VALUES ('2505', '0', '2019-11-24 22:19:48', null, '1', null, '1', '20191124221948758', '228038251c2d2b80acab4210820271f03f347ae11574605067647', '12', '3.92');
INSERT INTO `sampling_media_order` VALUES ('2506', '0', '2019-11-24 22:19:51', null, '1', null, '1', '20191124221951229', '92749879d8ee3e0179154997b71c76068919dbdc1574605072404', '60', '3.47');
INSERT INTO `sampling_media_order` VALUES ('2507', '0', '2019-11-24 22:19:58', null, '1', null, '1', '20191124221958938', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '79', '3.24');
INSERT INTO `sampling_media_order` VALUES ('2508', '0', '2019-11-24 22:20:03', null, '1', null, '1', '20191124222003705', '94983240d5a782d5082d44a8af2ce2fe7469e8981574580486676', '64', '3.11');
INSERT INTO `sampling_media_order` VALUES ('2509', '0', '2019-11-24 22:20:13', null, '1', null, '1', '20191124222013411', '5146499223dc7884db184d2bbd37eab09ff7786b1574328981511', '79', '3.81');
INSERT INTO `sampling_media_order` VALUES ('2510', '0', '2019-11-24 22:20:28', null, '1', null, '1', '20191124222028997', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '79', '3.63');
INSERT INTO `sampling_media_order` VALUES ('2511', '0', '2019-11-24 22:20:29', null, '1', null, '1', '20191124222029183', '92749879d8ee3e0179154997b71c76068919dbdc1574605072404', '92', '3.94');
INSERT INTO `sampling_media_order` VALUES ('2512', '0', '2019-11-24 22:20:31', null, '1', null, '1', '20191124222031489', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '28', '3.15');
INSERT INTO `sampling_media_order` VALUES ('2513', '0', '2019-11-24 22:20:50', null, '1', null, '1', '20191124222050692', '10935370dbc99a946e224e78857e1017020846471574579440173', '65', '3.45');
INSERT INTO `sampling_media_order` VALUES ('2514', '0', '2019-11-24 22:20:52', null, '1', null, '1', '20191124222052629', '5146499223dc7884db184d2bbd37eab09ff7786b1574328981511', '79', '3.60');
INSERT INTO `sampling_media_order` VALUES ('2515', '0', '2019-11-24 22:21:09', null, '1', null, '1', '20191124222109929', '94983240d5a782d5082d44a8af2ce2fe7469e8981574580486676', '96', '3.90');
INSERT INTO `sampling_media_order` VALUES ('2516', '0', '2019-11-24 22:21:21', null, '1', null, '1', '20191124222121917', '94983240d5a782d5082d44a8af2ce2fe7469e8981574580486676', '46', '3.83');
INSERT INTO `sampling_media_order` VALUES ('2517', '0', '2019-11-24 22:21:22', null, '1', null, '1', '20191124222122135', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '63', '3.16');
INSERT INTO `sampling_media_order` VALUES ('2518', '0', '2019-11-24 22:21:48', null, '1', null, '1', '20191124222148583', '94983240d5a782d5082d44a8af2ce2fe7469e8981574580486676', '62', '3.08');
INSERT INTO `sampling_media_order` VALUES ('2519', '0', '2019-11-24 22:22:02', null, '1', null, '1', '20191124222202664', '8549820287d5c4c79c3447e19cf2e4b123ff6eb21574605264511', '65', '3.06');
INSERT INTO `sampling_media_order` VALUES ('2520', '0', '2019-11-24 22:22:33', null, '1', null, '1', '20191124222233649', '94983240d5a782d5082d44a8af2ce2fe7469e8981574580486676', '76', '3.45');
INSERT INTO `sampling_media_order` VALUES ('2521', '0', '2019-11-24 22:22:43', null, '1', null, '1', '20191124222243227', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '21', '3.64');
INSERT INTO `sampling_media_order` VALUES ('2522', '0', '2019-11-24 22:22:55', null, '1', null, '1', '20191124222255429', '9905341611b692a248894ff0811932e5d9146e1d1574605342864', '30', '3.69');
INSERT INTO `sampling_media_order` VALUES ('2523', '0', '2019-11-24 22:23:07', null, '1', null, '1', '20191124222307238', '8549820287d5c4c79c3447e19cf2e4b123ff6eb21574605264511', '29', '3.21');
INSERT INTO `sampling_media_order` VALUES ('2524', '0', '2019-11-24 22:23:08', null, '1', null, '1', '20191124222308629', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '54', '3.50');
INSERT INTO `sampling_media_order` VALUES ('2525', '0', '2019-11-24 22:23:28', null, '1', null, '1', '20191124222328770', '94983240d5a782d5082d44a8af2ce2fe7469e8981574580486676', '69', '3.57');
INSERT INTO `sampling_media_order` VALUES ('2526', '0', '2019-11-24 22:23:31', null, '1', null, '1', '20191124222331103', '36297661bdc3d0f20b5b4c09a9eb6ecf591d1c241574587626954', '55', '3.83');
INSERT INTO `sampling_media_order` VALUES ('2527', '0', '2019-11-24 22:23:36', null, '1', null, '1', '20191124222336305', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '54', '3.66');
INSERT INTO `sampling_media_order` VALUES ('2528', '0', '2019-11-24 22:23:38', null, '1', null, '1', '20191124222338474', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '76', '3.51');
INSERT INTO `sampling_media_order` VALUES ('2529', '0', '2019-11-24 22:23:50', null, '1', null, '1', '20191124222350890', '9905341611b692a248894ff0811932e5d9146e1d1574605342864', '30', '3.06');
INSERT INTO `sampling_media_order` VALUES ('2530', '0', '2019-11-24 22:24:15', null, '1', null, '1', '20191124222415230', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '28', '3.12');
INSERT INTO `sampling_media_order` VALUES ('2531', '0', '2019-11-24 22:24:16', null, '1', null, '1', '20191124222416569', '9506692281732c1387114193a6161d60f4b9df641574579548654', '106', '3.47');
INSERT INTO `sampling_media_order` VALUES ('2532', '0', '2019-11-24 22:24:18', null, '1', null, '1', '20191124222418765', '165475614924510ee1cb499fb565d3b8615a698c1574605292580', '96', '3.24');
INSERT INTO `sampling_media_order` VALUES ('2533', '0', '2019-11-24 22:24:25', null, '1', null, '1', '20191124222425479', '65000781821f4965a1c64399b673ca94dd6902211574583908721', '79', '3.44');
INSERT INTO `sampling_media_order` VALUES ('2534', '0', '2019-11-24 22:24:27', null, '1', null, '1', '20191124222427247', '9905341611b692a248894ff0811932e5d9146e1d1574605342864', '30', '3.14');
INSERT INTO `sampling_media_order` VALUES ('2535', '0', '2019-11-24 22:24:36', null, '1', null, '1', '20191124222436164', '19617112460dc19bc3cf47909c58f81b98f187981574587082132', '36', '3.01');
INSERT INTO `sampling_media_order` VALUES ('2536', '0', '2019-11-24 22:24:38', null, '1', null, '1', '20191124222438425', '8549820287d5c4c79c3447e19cf2e4b123ff6eb21574605264511', '41', '3.04');
INSERT INTO `sampling_media_order` VALUES ('2537', '0', '2019-11-24 22:24:45', null, '1', null, '1', '20191124222445761', '94983240d5a782d5082d44a8af2ce2fe7469e8981574580486676', '28', '3.82');
INSERT INTO `sampling_media_order` VALUES ('2538', '0', '2019-11-24 22:24:49', null, '1', null, '1', '20191124222449281', '65000781821f4965a1c64399b673ca94dd6902211574583908721', '92', '3.09');
INSERT INTO `sampling_media_order` VALUES ('2539', '0', '2019-11-24 22:24:57', null, '1', null, '1', '20191124222457200', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '49', '3.46');
INSERT INTO `sampling_media_order` VALUES ('2540', '0', '2019-11-24 22:25:34', null, '1', null, '1', '20191124222534324', '9506692281732c1387114193a6161d60f4b9df641574579548654', '54', '3.84');
INSERT INTO `sampling_media_order` VALUES ('2541', '0', '2019-11-24 22:25:54', null, '1', null, '1', '20191124222554968', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '49', '3.56');
INSERT INTO `sampling_media_order` VALUES ('2542', '0', '2019-11-24 22:25:55', null, '1', null, '1', '20191124222555863', '94983240d5a782d5082d44a8af2ce2fe7469e8981574580486676', '76', '3.75');
INSERT INTO `sampling_media_order` VALUES ('2543', '0', '2019-11-24 22:26:10', null, '1', null, '1', '20191124222610556', '94983240d5a782d5082d44a8af2ce2fe7469e8981574580486676', '63', '3.22');
INSERT INTO `sampling_media_order` VALUES ('2544', '0', '2019-11-24 22:26:48', null, '1', null, '1', '20191124222648977', '86720832179bc22d90aa4bba8dee3866e0f780f11574605570735', '96', '3.01');
INSERT INTO `sampling_media_order` VALUES ('2545', '0', '2019-11-24 22:27:18', null, '1', null, '1', '20191124222718593', '69760860e83900e725af4eab8f9aac35a27dde871574605580661', '59', '3.89');
INSERT INTO `sampling_media_order` VALUES ('2546', '0', '2019-11-24 22:27:21', null, '1', null, '1', '20191124222721491', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '79', '3.17');
INSERT INTO `sampling_media_order` VALUES ('2547', '0', '2019-11-24 22:27:41', null, '1', null, '1', '20191124222741932', '8755804611cd4e07cf8d4482b914fa592bcd9bbb1574573777803', '86', '3.16');
INSERT INTO `sampling_media_order` VALUES ('2548', '0', '2019-11-24 22:27:57', null, '1', null, '1', '20191124222757736', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '79', '3.23');
INSERT INTO `sampling_media_order` VALUES ('2549', '0', '2019-11-24 22:28:13', null, '1', null, '1', '20191124222813601', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '96', '3.18');
INSERT INTO `sampling_media_order` VALUES ('2550', '0', '2019-11-24 22:28:17', null, '1', null, '1', '20191124222817424', '30464115dc646ba765e943238102ab7c0b4037331574605236541', '96', '3.02');
INSERT INTO `sampling_media_order` VALUES ('2551', '0', '2019-11-24 22:28:27', null, '1', null, '1', '20191124222827835', '741236658517dd13ab6748dfbb09df7e4a04a9141574605283162', '66', '3.04');
INSERT INTO `sampling_media_order` VALUES ('2552', '0', '2019-11-24 22:28:39', null, '1', null, '1', '20191124222839611', '86720832179bc22d90aa4bba8dee3866e0f780f11574605570735', '65', '3.11');
INSERT INTO `sampling_media_order` VALUES ('2553', '0', '2019-11-24 22:29:07', null, '1', null, '1', '20191124222907171', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '106', '3.10');
INSERT INTO `sampling_media_order` VALUES ('2554', '0', '2019-11-24 22:29:10', null, '1', null, '1', '20191124222910674', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '79', '3.93');
INSERT INTO `sampling_media_order` VALUES ('2555', '0', '2019-11-24 22:29:31', null, '1', null, '1', '20191124222931445', '88153125a47672a2cfc940e7979ed4445c851a471574605751643', '52', '3.97');
INSERT INTO `sampling_media_order` VALUES ('2556', '0', '2019-11-24 22:29:32', null, '1', null, '1', '20191124222932633', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '36', '3.97');
INSERT INTO `sampling_media_order` VALUES ('2557', '0', '2019-11-24 22:29:45', null, '1', null, '1', '20191124222945624', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '85', '3.22');
INSERT INTO `sampling_media_order` VALUES ('2558', '0', '2019-11-24 22:29:48', null, '1', null, '1', '20191124222948792', '5029600887f09a96f9164de1b06333e39836d5351574605669743', '96', '3.18');
INSERT INTO `sampling_media_order` VALUES ('2559', '0', '2019-11-24 22:30:01', null, '1', null, '1', '20191124223001596', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '107', '3.51');
INSERT INTO `sampling_media_order` VALUES ('2560', '0', '2019-11-24 22:30:10', null, '1', null, '1', '20191124223010628', '87097507cc7eb0991aa54cbeb47d4d8191cfd4161574605243311', '62', '3.01');
INSERT INTO `sampling_media_order` VALUES ('2561', '0', '2019-11-24 22:30:10', null, '1', null, '1', '20191124223010435', '741236658517dd13ab6748dfbb09df7e4a04a9141574605283162', '54', '3.26');
INSERT INTO `sampling_media_order` VALUES ('2562', '0', '2019-11-24 22:30:34', null, '1', null, '1', '20191124223034875', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '41', '3.84');
INSERT INTO `sampling_media_order` VALUES ('2563', '0', '2019-11-24 22:30:47', null, '1', null, '1', '20191124223047666', '27637315f945d47ecc9c49dbb2c1b8d52e2a2d8c1574588196263', '96', '3.69');
INSERT INTO `sampling_media_order` VALUES ('2564', '0', '2019-11-24 22:30:47', null, '1', null, '1', '20191124223047127', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '29', '3.69');
INSERT INTO `sampling_media_order` VALUES ('2565', '0', '2019-11-24 22:30:57', null, '1', null, '1', '20191124223057769', '5029600887f09a96f9164de1b06333e39836d5351574605669743', '65', '3.71');
INSERT INTO `sampling_media_order` VALUES ('2566', '0', '2019-11-24 22:31:32', null, '1', null, '1', '20191124223132427', '741236658517dd13ab6748dfbb09df7e4a04a9141574605283162', '94', '3.26');
INSERT INTO `sampling_media_order` VALUES ('2567', '0', '2019-11-24 22:31:36', null, '1', null, '1', '20191124223136107', '87097507cc7eb0991aa54cbeb47d4d8191cfd4161574605243311', '94', '3.68');
INSERT INTO `sampling_media_order` VALUES ('2568', '0', '2019-11-24 22:31:46', null, '1', null, '1', '20191124223146175', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '36', '3.27');
INSERT INTO `sampling_media_order` VALUES ('2569', '0', '2019-11-24 22:31:51', null, '1', null, '1', '20191124223151864', '5029600887f09a96f9164de1b06333e39836d5351574605669743', '92', '3.09');
INSERT INTO `sampling_media_order` VALUES ('2570', '0', '2019-11-24 22:32:06', null, '1', null, '1', '20191124223206119', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '57', '3.81');
INSERT INTO `sampling_media_order` VALUES ('2571', '0', '2019-11-24 22:32:11', null, '1', null, '1', '20191124223211352', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '29', '3.14');
INSERT INTO `sampling_media_order` VALUES ('2572', '0', '2019-11-24 22:32:29', null, '1', null, '1', '20191124223229994', '87097507cc7eb0991aa54cbeb47d4d8191cfd4161574605243311', '80', '3.81');
INSERT INTO `sampling_media_order` VALUES ('2573', '0', '2019-11-24 22:32:41', null, '1', null, '1', '20191124223241462', '86720832179bc22d90aa4bba8dee3866e0f780f11574605570735', '96', '3.53');
INSERT INTO `sampling_media_order` VALUES ('2574', '0', '2019-11-24 22:32:58', null, '1', null, '1', '20191124223258604', '741236658517dd13ab6748dfbb09df7e4a04a9141574605283162', '86', '3.24');
INSERT INTO `sampling_media_order` VALUES ('2575', '0', '2019-11-24 22:32:58', null, '1', null, '1', '20191124223258314', '5029600887f09a96f9164de1b06333e39836d5351574605669743', '23', '3.55');
INSERT INTO `sampling_media_order` VALUES ('2576', '0', '2019-11-24 22:33:07', null, '1', null, '1', '20191124223307600', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '36', '3.29');
INSERT INTO `sampling_media_order` VALUES ('2577', '0', '2019-11-24 22:34:10', null, '1', null, '1', '20191124223410445', '82303390972acfdaa93947cca3590a2deff4e5791574606005649', '94', '3.78');
INSERT INTO `sampling_media_order` VALUES ('2578', '0', '2019-11-24 22:34:50', null, '1', null, '1', '20191124223450804', '86720832179bc22d90aa4bba8dee3866e0f780f11574605570735', '64', '3.09');
INSERT INTO `sampling_media_order` VALUES ('2579', '0', '2019-11-24 22:35:21', null, '1', null, '1', '20191124223521416', '82303390972acfdaa93947cca3590a2deff4e5791574606005649', '107', '3.80');
INSERT INTO `sampling_media_order` VALUES ('2580', '0', '2019-11-24 22:37:03', null, '1', null, '1', '20191124223703863', '1020175083204d1de860466ea155fe06c50ef93a1574572938892', '65', '3.08');
INSERT INTO `sampling_media_order` VALUES ('2581', '0', '2019-11-24 22:37:27', null, '1', null, '1', '20191124223727518', '74367935c2e3ee0e852548f0ac3fcf76151c531e1574606235172', '79', '3.62');
INSERT INTO `sampling_media_order` VALUES ('2582', '0', '2019-11-24 22:37:48', null, '1', null, '1', '20191124223748795', '98499428ec4eb9c920c64d7b99de36d508aed2ec1574606222571', '94', '3.84');
INSERT INTO `sampling_media_order` VALUES ('2583', '0', '2019-11-24 22:37:53', null, '1', null, '1', '20191124223753788', '851971253c6af41f5ed74ea1abd4d864e9b9818c1574606260162', '96', '3.07');
INSERT INTO `sampling_media_order` VALUES ('2584', '0', '2019-11-24 22:37:56', null, '1', null, '1', '20191124223756923', '3171124574bb983b3b8c4003977f918a6995ed851574490047171', '52', '3.47');
INSERT INTO `sampling_media_order` VALUES ('2585', '0', '2019-11-24 22:38:55', null, '1', null, '1', '20191124223855719', '851971253c6af41f5ed74ea1abd4d864e9b9818c1574606260162', '52', '3.38');
INSERT INTO `sampling_media_order` VALUES ('2586', '0', '2019-11-24 22:39:00', null, '1', null, '1', '20191124223900344', '2004945803dc6a8ad56d48369f502d0cb61f10b71574606277264', '38', '3.68');
INSERT INTO `sampling_media_order` VALUES ('2587', '0', '2019-11-24 22:39:17', null, '1', null, '1', '20191124223917964', '66973494cbc63e0798554745a761f48ea7509b181574606337269', '36', '3.21');
INSERT INTO `sampling_media_order` VALUES ('2588', '0', '2019-11-24 22:39:35', null, '1', null, '1', '20191124223935110', '851971253c6af41f5ed74ea1abd4d864e9b9818c1574606260162', '92', '3.94');
INSERT INTO `sampling_media_order` VALUES ('2589', '0', '2019-11-24 22:40:01', null, '1', null, '1', '20191124224001250', '27637315f945d47ecc9c49dbb2c1b8d52e2a2d8c1574588196263', '96', '3.78');
INSERT INTO `sampling_media_order` VALUES ('2590', '0', '2019-11-24 22:40:10', null, '1', null, '1', '20191124224010566', '66973494cbc63e0798554745a761f48ea7509b181574606337269', '92', '3.94');
INSERT INTO `sampling_media_order` VALUES ('2591', '0', '2019-11-24 22:40:12', null, '1', null, '1', '20191124224012167', '85973917720c2613df184b6ea098429c5d72520f1574606396166', '79', '3.41');
INSERT INTO `sampling_media_order` VALUES ('2592', '0', '2019-11-24 22:40:30', null, '1', null, '1', '20191124224030452', '66973494cbc63e0798554745a761f48ea7509b181574606337269', '96', '3.23');
INSERT INTO `sampling_media_order` VALUES ('2593', '0', '2019-11-24 22:40:47', null, '1', null, '1', '20191124224047887', '741236658517dd13ab6748dfbb09df7e4a04a9141574605283162', '94', '3.31');
INSERT INTO `sampling_media_order` VALUES ('2594', '0', '2019-11-24 22:40:59', null, '1', null, '1', '20191124224059309', '85973917720c2613df184b6ea098429c5d72520f1574606396166', '98', '3.87');
INSERT INTO `sampling_media_order` VALUES ('2595', '0', '2019-11-24 22:40:59', null, '1', null, '1', '20191124224059348', '27637315f945d47ecc9c49dbb2c1b8d52e2a2d8c1574588196263', '36', '3.94');
INSERT INTO `sampling_media_order` VALUES ('2596', '0', '2019-11-24 22:41:07', null, '1', null, '1', '20191124224107895', '851971253c6af41f5ed74ea1abd4d864e9b9818c1574606260162', '57', '3.78');
INSERT INTO `sampling_media_order` VALUES ('2597', '0', '2019-11-24 22:41:47', null, '1', null, '1', '20191124224147837', '3171124574bb983b3b8c4003977f918a6995ed851574490047171', '93', '3.19');
INSERT INTO `sampling_media_order` VALUES ('2598', '0', '2019-11-24 22:42:05', null, '1', null, '1', '20191124224205542', '18352454a4fda03fd6e44ac585a80d55f3ba53361574328965959', '105', '3.52');
INSERT INTO `sampling_media_order` VALUES ('2599', '0', '2019-11-24 22:42:33', null, '1', null, '1', '20191124224233720', '2004945803dc6a8ad56d48369f502d0cb61f10b71574606277264', '29', '3.69');
INSERT INTO `sampling_media_order` VALUES ('2600', '0', '2019-11-24 22:42:41', null, '1', null, '1', '20191124224241101', '27637315f945d47ecc9c49dbb2c1b8d52e2a2d8c1574588196263', '79', '3.37');
INSERT INTO `sampling_media_order` VALUES ('2601', '0', '2019-11-24 22:42:42', null, '1', null, '1', '20191124224242194', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '54', '3.66');
INSERT INTO `sampling_media_order` VALUES ('2602', '0', '2019-11-24 22:42:53', null, '1', null, '1', '20191124224253728', '3171124574bb983b3b8c4003977f918a6995ed851574490047171', '79', '3.22');
INSERT INTO `sampling_media_order` VALUES ('2603', '0', '2019-11-24 22:43:09', null, '1', null, '1', '20191124224309248', '85973917720c2613df184b6ea098429c5d72520f1574606396166', '46', '3.09');
INSERT INTO `sampling_media_order` VALUES ('2604', '0', '2019-11-24 22:44:48', null, '1', null, '1', '20191124224448792', '85973917720c2613df184b6ea098429c5d72520f1574606396166', '16', '3.36');
INSERT INTO `sampling_media_order` VALUES ('2605', '0', '2019-11-24 22:44:58', null, '1', null, '1', '20191124224458111', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '96', '3.58');
INSERT INTO `sampling_media_order` VALUES ('2606', '0', '2019-11-24 22:45:01', null, '1', null, '1', '20191124224501317', '27637315f945d47ecc9c49dbb2c1b8d52e2a2d8c1574588196263', '79', '3.04');
INSERT INTO `sampling_media_order` VALUES ('2607', '0', '2019-11-24 22:45:02', null, '1', null, '1', '20191124224502831', '62024660b56cccbe678a4987891c537e0c99944f1574580655910', '105', '3.03');
INSERT INTO `sampling_media_order` VALUES ('2608', '0', '2019-11-24 22:45:31', null, '1', null, '1', '20191124224531448', '2004945803dc6a8ad56d48369f502d0cb61f10b71574606277264', '86', '3.72');
INSERT INTO `sampling_media_order` VALUES ('2609', '0', '2019-11-24 22:45:35', null, '1', null, '1', '20191124224535231', '85973917720c2613df184b6ea098429c5d72520f1574606396166', '84', '3.09');
INSERT INTO `sampling_media_order` VALUES ('2610', '0', '2019-11-24 22:45:59', null, '1', null, '1', '20191124224559896', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '94', '3.68');
INSERT INTO `sampling_media_order` VALUES ('2611', '0', '2019-11-24 22:46:05', null, '1', null, '1', '20191124224605582', '27637315f945d47ecc9c49dbb2c1b8d52e2a2d8c1574588196263', '79', '3.34');
INSERT INTO `sampling_media_order` VALUES ('2612', '0', '2019-11-24 22:46:18', null, '1', null, '1', '20191124224618931', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '106', '3.38');
INSERT INTO `sampling_media_order` VALUES ('2613', '0', '2019-11-24 22:46:32', null, '1', null, '1', '20191124224632242', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '92', '3.19');
INSERT INTO `sampling_media_order` VALUES ('2614', '0', '2019-11-24 22:46:34', null, '1', null, '1', '20191124224634344', '85973917720c2613df184b6ea098429c5d72520f1574606396166', '84', '3.53');
INSERT INTO `sampling_media_order` VALUES ('2615', '0', '2019-11-24 22:46:45', null, '1', null, '1', '20191124224645206', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '79', '3.41');
INSERT INTO `sampling_media_order` VALUES ('2616', '0', '2019-11-24 22:46:47', null, '1', null, '1', '20191124224647196', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '94', '3.77');
INSERT INTO `sampling_media_order` VALUES ('2617', '0', '2019-11-24 22:46:57', null, '1', null, '1', '20191124224657538', '85973917720c2613df184b6ea098429c5d72520f1574606396166', '98', '3.61');
INSERT INTO `sampling_media_order` VALUES ('2618', '0', '2019-11-24 22:47:05', null, '1', null, '1', '20191124224705965', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '79', '3.20');
INSERT INTO `sampling_media_order` VALUES ('2619', '0', '2019-11-24 22:47:17', null, '1', null, '1', '20191124224717468', '80368244a69dc327dcec48f39dfae28afd71db091574580221940', '36', '3.02');
INSERT INTO `sampling_media_order` VALUES ('2620', '0', '2019-11-24 22:47:42', null, '1', null, '1', '20191124224742279', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '65', '3.88');
INSERT INTO `sampling_media_order` VALUES ('2621', '0', '2019-11-24 22:47:59', null, '1', null, '1', '20191124224759969', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '106', '3.58');
INSERT INTO `sampling_media_order` VALUES ('2622', '0', '2019-11-24 22:48:02', null, '1', null, '1', '20191124224802223', '80368244a69dc327dcec48f39dfae28afd71db091574580221940', '29', '3.23');
INSERT INTO `sampling_media_order` VALUES ('2623', '0', '2019-11-24 22:48:16', null, '1', null, '1', '20191124224816771', '55914305afde22d930e548659836c28193dccb721574606828688', '79', '3.99');
INSERT INTO `sampling_media_order` VALUES ('2624', '0', '2019-11-24 22:48:22', null, '1', null, '1', '20191124224822950', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '54', '3.24');
INSERT INTO `sampling_media_order` VALUES ('2625', '0', '2019-11-24 22:48:31', null, '1', null, '1', '20191124224831305', '27637315f945d47ecc9c49dbb2c1b8d52e2a2d8c1574588196263', '41', '3.98');
INSERT INTO `sampling_media_order` VALUES ('2626', '0', '2019-11-24 22:48:56', null, '1', null, '1', '20191124224856526', '387980305f7785b8848648e6be9b405afd0d3bdc1574606886116', '52', '3.50');
INSERT INTO `sampling_media_order` VALUES ('2627', '0', '2019-11-24 22:49:57', null, '1', null, '1', '20191124224957884', '55914305afde22d930e548659836c28193dccb721574606828688', '84', '3.77');
INSERT INTO `sampling_media_order` VALUES ('2628', '0', '2019-11-24 22:50:43', null, '1', null, '1', '20191124225043665', '387980305f7785b8848648e6be9b405afd0d3bdc1574606886116', '52', '3.94');
INSERT INTO `sampling_media_order` VALUES ('2629', '0', '2019-11-24 22:51:19', null, '1', null, '1', '20191124225119691', '55914305afde22d930e548659836c28193dccb721574606828688', '80', '3.28');
INSERT INTO `sampling_media_order` VALUES ('2630', '0', '2019-11-24 22:52:06', null, '1', null, '1', '20191124225206537', '55914305afde22d930e548659836c28193dccb721574606828688', '80', '3.53');
INSERT INTO `sampling_media_order` VALUES ('2631', '0', '2019-11-24 22:52:59', null, '1', null, '1', '20191124225259799', '58155984d6b7e2ff22904aad87cd2e1133b529941574607154554', '79', '3.44');
INSERT INTO `sampling_media_order` VALUES ('2632', '0', '2019-11-24 22:53:23', null, '1', null, '1', '20191124225323779', '55914305afde22d930e548659836c28193dccb721574606828688', '46', '3.43');
INSERT INTO `sampling_media_order` VALUES ('2633', '0', '2019-11-24 22:53:29', null, '1', null, '1', '20191124225329583', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '74', '3.63');
INSERT INTO `sampling_media_order` VALUES ('2634', '0', '2019-11-24 22:54:24', null, '1', null, '1', '20191124225424232', '74367935c2e3ee0e852548f0ac3fcf76151c531e1574606235172', '52', '3.87');
INSERT INTO `sampling_media_order` VALUES ('2635', '0', '2019-11-24 22:54:51', null, '1', null, '1', '20191124225451951', '4607969169e69e8fc76f4c01bee2bec0836c3b9e1574607160053', '68', '3.38');
INSERT INTO `sampling_media_order` VALUES ('2636', '0', '2019-11-24 22:55:03', null, '1', null, '1', '20191124225503924', '741236658517dd13ab6748dfbb09df7e4a04a9141574605283162', '40', '3.03');
INSERT INTO `sampling_media_order` VALUES ('2637', '0', '2019-11-24 22:55:23', null, '1', null, '1', '20191124225523492', '74367935c2e3ee0e852548f0ac3fcf76151c531e1574606235172', '65', '3.50');
INSERT INTO `sampling_media_order` VALUES ('2638', '0', '2019-11-24 22:55:59', null, '1', null, '1', '20191124225559597', '4607969169e69e8fc76f4c01bee2bec0836c3b9e1574607160053', '84', '3.09');
INSERT INTO `sampling_media_order` VALUES ('2639', '0', '2019-11-24 22:56:30', null, '1', null, '1', '20191124225630571', '74367935c2e3ee0e852548f0ac3fcf76151c531e1574606235172', '49', '3.26');
INSERT INTO `sampling_media_order` VALUES ('2640', '0', '2019-11-24 22:56:42', null, '1', null, '1', '20191124225642469', '74367935c2e3ee0e852548f0ac3fcf76151c531e1574606235172', '54', '3.50');
INSERT INTO `sampling_media_order` VALUES ('2641', '0', '2019-11-24 22:57:17', null, '1', null, '1', '20191124225717373', '4607969169e69e8fc76f4c01bee2bec0836c3b9e1574607160053', '79', '3.89');
INSERT INTO `sampling_media_order` VALUES ('2642', '0', '2019-11-24 22:57:23', null, '1', null, '1', '20191124225723331', '27637315f945d47ecc9c49dbb2c1b8d52e2a2d8c1574588196263', '96', '3.36');
INSERT INTO `sampling_media_order` VALUES ('2643', '0', '2019-11-24 22:57:31', null, '1', null, '1', '20191124225731396', '250528988e091edab72a4782950306c0e8001f081574581349552', '52', '3.48');
INSERT INTO `sampling_media_order` VALUES ('2644', '0', '2019-11-24 22:58:00', null, '1', null, '1', '20191124225800280', '58155984d6b7e2ff22904aad87cd2e1133b529941574607154554', '88', '3.10');
INSERT INTO `sampling_media_order` VALUES ('2645', '0', '2019-11-24 22:58:05', null, '1', null, '1', '20191124225805145', '250528988e091edab72a4782950306c0e8001f081574581349552', '52', '3.67');
INSERT INTO `sampling_media_order` VALUES ('2646', '0', '2019-11-24 22:58:35', null, '1', null, '1', '20191124225835694', '4607969169e69e8fc76f4c01bee2bec0836c3b9e1574607160053', '21', '3.51');
INSERT INTO `sampling_media_order` VALUES ('2647', '0', '2019-11-24 22:58:36', null, '1', null, '1', '20191124225836516', '27637315f945d47ecc9c49dbb2c1b8d52e2a2d8c1574588196263', '52', '3.08');
INSERT INTO `sampling_media_order` VALUES ('2648', '0', '2019-11-24 22:58:58', null, '1', null, '1', '20191124225858965', '58155984d6b7e2ff22904aad87cd2e1133b529941574607154554', '86', '3.07');
INSERT INTO `sampling_media_order` VALUES ('2649', '0', '2019-11-24 22:58:59', null, '1', null, '1', '20191124225859288', '130135215d83d9cf7a1947faa5c5c91fc6c8d0641574606809029', '84', '3.44');
INSERT INTO `sampling_media_order` VALUES ('2650', '0', '2019-11-24 22:59:03', null, '1', null, '1', '20191124225903287', '27637315f945d47ecc9c49dbb2c1b8d52e2a2d8c1574588196263', '79', '3.99');
INSERT INTO `sampling_media_order` VALUES ('2651', '0', '2019-11-24 22:59:15', null, '1', null, '1', '20191124225915419', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '79', '3.95');
INSERT INTO `sampling_media_order` VALUES ('2652', '0', '2019-11-24 22:59:47', null, '1', null, '1', '20191124225947858', '27637315f945d47ecc9c49dbb2c1b8d52e2a2d8c1574588196263', '92', '3.53');
INSERT INTO `sampling_media_order` VALUES ('2653', '0', '2019-11-24 23:00:36', null, '1', null, '1', '20191124230036682', '583151203568606d5267492c887b4d6c4b9713d61574607620703', '106', '3.97');
INSERT INTO `sampling_media_order` VALUES ('2654', '0', '2019-11-24 23:00:47', null, '1', null, '1', '20191124230047231', '4607969169e69e8fc76f4c01bee2bec0836c3b9e1574607160053', '104', '3.93');
INSERT INTO `sampling_media_order` VALUES ('2655', '0', '2019-11-24 23:02:14', null, '1', null, '1', '20191124230214875', '8494202111309fce600849f6996beaafacfe2d9c1574607597785', '52', '3.71');
INSERT INTO `sampling_media_order` VALUES ('2656', '0', '2019-11-24 23:02:15', null, '1', null, '1', '20191124230215678', '583151203568606d5267492c887b4d6c4b9713d61574607620703', '92', '3.63');
INSERT INTO `sampling_media_order` VALUES ('2657', '0', '2019-11-24 23:03:00', null, '1', null, '1', '20191124230300254', '4607969169e69e8fc76f4c01bee2bec0836c3b9e1574607160053', '30', '3.68');
INSERT INTO `sampling_media_order` VALUES ('2658', '0', '2019-11-24 23:03:12', null, '1', null, '1', '20191124230312586', '583151203568606d5267492c887b4d6c4b9713d61574607620703', '49', '3.06');
INSERT INTO `sampling_media_order` VALUES ('2659', '0', '2019-11-24 23:03:12', null, '1', null, '1', '20191124230312216', '27637315f945d47ecc9c49dbb2c1b8d52e2a2d8c1574588196263', '79', '3.63');
INSERT INTO `sampling_media_order` VALUES ('2660', '0', '2019-11-24 23:03:34', null, '1', null, '1', '20191124230334606', '27637315f945d47ecc9c49dbb2c1b8d52e2a2d8c1574588196263', '79', '3.44');
INSERT INTO `sampling_media_order` VALUES ('2661', '0', '2019-11-24 23:04:06', null, '1', null, '1', '20191124230406897', '27637315f945d47ecc9c49dbb2c1b8d52e2a2d8c1574588196263', '65', '3.52');
INSERT INTO `sampling_media_order` VALUES ('2662', '0', '2019-11-24 23:04:06', null, '1', null, '1', '20191124230406272', '27637315f945d47ecc9c49dbb2c1b8d52e2a2d8c1574588196263', '65', '3.28');
INSERT INTO `sampling_media_order` VALUES ('2663', '0', '2019-11-24 23:04:17', null, '1', null, '1', '20191124230417524', '27637315f945d47ecc9c49dbb2c1b8d52e2a2d8c1574588196263', '65', '3.23');
INSERT INTO `sampling_media_order` VALUES ('2664', '0', '2019-11-24 23:04:29', null, '1', null, '1', '20191124230429605', '27637315f945d47ecc9c49dbb2c1b8d52e2a2d8c1574588196263', '92', '3.63');
INSERT INTO `sampling_media_order` VALUES ('2665', '0', '2019-11-24 23:04:30', null, '1', null, '1', '20191124230430546', '8320133827fef1e8b4ff431faaef1c426d2499e21574607861906', '79', '3.97');
INSERT INTO `sampling_media_order` VALUES ('2666', '0', '2019-11-24 23:04:48', null, '1', null, '1', '20191124230448457', '27637315f945d47ecc9c49dbb2c1b8d52e2a2d8c1574588196263', '79', '3.69');
INSERT INTO `sampling_media_order` VALUES ('2667', '0', '2019-11-24 23:05:09', null, '1', null, '1', '20191124230509328', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '21', '3.55');
INSERT INTO `sampling_media_order` VALUES ('2668', '0', '2019-11-24 23:05:31', null, '1', null, '1', '20191124230531389', '27637315f945d47ecc9c49dbb2c1b8d52e2a2d8c1574588196263', '92', '3.05');
INSERT INTO `sampling_media_order` VALUES ('2669', '0', '2019-11-24 23:05:43', null, '1', null, '1', '20191124230543861', '40559231d97fb248a6974188808c0b9333b828971574607820518', '36', '3.28');
INSERT INTO `sampling_media_order` VALUES ('2670', '0', '2019-11-24 23:07:00', null, '1', null, '1', '20191124230700763', '40559231d97fb248a6974188808c0b9333b828971574607820518', '79', '3.31');
INSERT INTO `sampling_media_order` VALUES ('2671', '0', '2019-11-24 23:09:09', null, '1', null, '1', '20191124230909959', '84827515a8d7c8b1b4a746f9bb91c97341c27b651574586534782', '80', '3.70');
INSERT INTO `sampling_media_order` VALUES ('2672', '0', '2019-11-24 23:09:26', null, '1', null, '1', '20191124230926781', '40559231d97fb248a6974188808c0b9333b828971574607820518', '69', '3.49');
INSERT INTO `sampling_media_order` VALUES ('2673', '0', '2019-11-24 23:10:03', null, '1', null, '1', '20191124231003872', '84827515a8d7c8b1b4a746f9bb91c97341c27b651574586534782', '23', '3.21');
INSERT INTO `sampling_media_order` VALUES ('2674', '0', '2019-11-24 23:10:33', null, '1', null, '1', '20191124231033756', '67322942128186e3c4b84806a680c571a9db5ba21574580187718', '52', '3.53');
INSERT INTO `sampling_media_order` VALUES ('2675', '0', '2019-11-24 23:11:13', null, '1', null, '1', '20191124231113892', '84827515a8d7c8b1b4a746f9bb91c97341c27b651574586534782', '49', '3.14');
INSERT INTO `sampling_media_order` VALUES ('2676', '0', '2019-11-24 23:11:20', null, '1', null, '1', '20191124231120907', '99397778d02d332471054032ac407f381d33ce201574608269480', '52', '3.44');
INSERT INTO `sampling_media_order` VALUES ('2677', '0', '2019-11-24 23:12:40', null, '1', null, '1', '20191124231240574', '99397778d02d332471054032ac407f381d33ce201574608269480', '40', '3.40');
INSERT INTO `sampling_media_order` VALUES ('2678', '0', '2019-11-24 23:13:45', null, '1', null, '1', '20191124231345379', '84827515a8d7c8b1b4a746f9bb91c97341c27b651574586534782', '74', '3.50');
INSERT INTO `sampling_media_order` VALUES ('2679', '0', '2019-11-24 23:16:32', null, '1', null, '1', '20191124231632673', '741236658517dd13ab6748dfbb09df7e4a04a9141574605283162', '29', '3.08');
INSERT INTO `sampling_media_order` VALUES ('2680', '0', '2019-11-24 23:17:27', null, '1', null, '1', '20191124231727978', '741236658517dd13ab6748dfbb09df7e4a04a9141574605283162', '41', '3.23');
INSERT INTO `sampling_media_order` VALUES ('2681', '0', '2019-11-24 23:17:40', null, '1', null, '1', '20191124231740208', '1621022688fafca03ec94a95ae38410c89a8733c1574600309162', '65', '3.25');
INSERT INTO `sampling_media_order` VALUES ('2682', '0', '2019-11-24 23:18:51', null, '1', null, '1', '20191124231851485', '741236658517dd13ab6748dfbb09df7e4a04a9141574605283162', '52', '3.50');
INSERT INTO `sampling_media_order` VALUES ('2683', '0', '2019-11-24 23:20:01', null, '1', null, '1', '20191124232001371', '741236658517dd13ab6748dfbb09df7e4a04a9141574605283162', '107', '3.73');
INSERT INTO `sampling_media_order` VALUES ('2684', '0', '2019-11-24 23:20:27', null, '1', null, '1', '20191124232027968', '741236658517dd13ab6748dfbb09df7e4a04a9141574605283162', '65', '3.32');
INSERT INTO `sampling_media_order` VALUES ('2685', '0', '2019-11-24 23:20:28', null, '1', null, '1', '20191124232028402', '895777727014ba2adebb490dad66b16c213faab11574580222875', '94', '3.63');
INSERT INTO `sampling_media_order` VALUES ('2686', '0', '2019-11-24 23:21:14', null, '1', null, '1', '20191124232114782', '741236658517dd13ab6748dfbb09df7e4a04a9141574605283162', '92', '3.35');
INSERT INTO `sampling_media_order` VALUES ('2687', '0', '2019-11-24 23:21:35', null, '1', null, '1', '20191124232135814', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '96', '3.15');
INSERT INTO `sampling_media_order` VALUES ('2688', '0', '2019-11-24 23:21:44', null, '1', null, '1', '20191124232144585', '8320133827fef1e8b4ff431faaef1c426d2499e21574607861906', '52', '3.50');
INSERT INTO `sampling_media_order` VALUES ('2689', '0', '2019-11-24 23:22:17', null, '1', null, '1', '20191124232217469', '8320133827fef1e8b4ff431faaef1c426d2499e21574607861906', '16', '3.94');
INSERT INTO `sampling_media_order` VALUES ('2690', '0', '2019-11-24 23:22:22', null, '1', null, '1', '20191124232222547', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '23', '3.51');
INSERT INTO `sampling_media_order` VALUES ('2691', '0', '2019-11-24 23:22:23', null, '1', null, '1', '20191124232223765', '387980305f7785b8848648e6be9b405afd0d3bdc1574606886116', '52', '3.43');
INSERT INTO `sampling_media_order` VALUES ('2692', '0', '2019-11-24 23:22:42', null, '1', null, '1', '20191124232242232', '8320133827fef1e8b4ff431faaef1c426d2499e21574607861906', '16', '3.01');
INSERT INTO `sampling_media_order` VALUES ('2693', '0', '2019-11-24 23:23:04', null, '1', null, '1', '20191124232304249', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '65', '3.08');
INSERT INTO `sampling_media_order` VALUES ('2694', '0', '2019-11-24 23:23:18', null, '1', null, '1', '20191124232318450', '387980305f7785b8848648e6be9b405afd0d3bdc1574606886116', '41', '3.23');
INSERT INTO `sampling_media_order` VALUES ('2695', '0', '2019-11-24 23:23:42', null, '1', null, '1', '20191124232342766', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '86', '3.66');
INSERT INTO `sampling_media_order` VALUES ('2696', '0', '2019-11-24 23:23:46', null, '1', null, '1', '20191124232346357', '741236658517dd13ab6748dfbb09df7e4a04a9141574605283162', '91', '3.66');
INSERT INTO `sampling_media_order` VALUES ('2697', '0', '2019-11-24 23:24:03', null, '1', null, '1', '20191124232403528', '387980305f7785b8848648e6be9b405afd0d3bdc1574606886116', '92', '3.72');
INSERT INTO `sampling_media_order` VALUES ('2698', '0', '2019-11-24 23:24:54', null, '1', null, '1', '20191124232454849', '741236658517dd13ab6748dfbb09df7e4a04a9141574605283162', '105', '3.60');
INSERT INTO `sampling_media_order` VALUES ('2699', '0', '2019-11-24 23:25:00', null, '1', null, '1', '20191124232500466', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '86', '3.73');
INSERT INTO `sampling_media_order` VALUES ('2700', '0', '2019-11-24 23:25:46', null, '1', null, '1', '20191124232546231', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '86', '3.01');
INSERT INTO `sampling_media_order` VALUES ('2701', '0', '2019-11-24 23:26:19', null, '1', null, '1', '20191124232619849', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '52', '3.50');
INSERT INTO `sampling_media_order` VALUES ('2702', '0', '2019-11-24 23:27:06', null, '1', null, '1', '20191124232706315', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '86', '3.06');
INSERT INTO `sampling_media_order` VALUES ('2703', '0', '2019-11-24 23:27:43', null, '1', null, '1', '20191124232743509', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '41', '3.29');
INSERT INTO `sampling_media_order` VALUES ('2704', '0', '2019-11-24 23:28:27', null, '1', null, '1', '20191124232827410', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '63', '3.63');
INSERT INTO `sampling_media_order` VALUES ('2705', '0', '2019-11-24 23:32:56', null, '1', null, '1', '20191124233256966', '57141231cf05c09756ca4b0a8116577540327f1c1574606348827', '36', '3.04');
INSERT INTO `sampling_media_order` VALUES ('2706', '0', '2019-11-24 23:35:46', null, '1', null, '1', '20191124233546821', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '41', '3.59');
INSERT INTO `sampling_media_order` VALUES ('2707', '0', '2019-11-24 23:35:55', null, '1', null, '1', '20191124233555373', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '54', '3.39');
INSERT INTO `sampling_media_order` VALUES ('2708', '0', '2019-11-24 23:36:35', null, '1', null, '1', '20191124233635442', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '86', '3.76');
INSERT INTO `sampling_media_order` VALUES ('2709', '0', '2019-11-24 23:36:43', null, '1', null, '1', '20191124233643388', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '41', '3.32');
INSERT INTO `sampling_media_order` VALUES ('2710', '0', '2019-11-24 23:37:22', null, '1', null, '1', '20191124233722815', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '66', '3.96');
INSERT INTO `sampling_media_order` VALUES ('2711', '0', '2019-11-24 23:38:13', null, '1', null, '1', '20191124233813789', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '21', '3.41');
INSERT INTO `sampling_media_order` VALUES ('2712', '0', '2019-11-24 23:38:14', null, '1', null, '1', '20191124233814276', '33404270d40b349a2cb143cab2dd46b075814ae81574609874761', '79', '3.21');
INSERT INTO `sampling_media_order` VALUES ('2713', '0', '2019-11-24 23:38:31', null, '1', null, '1', '20191124233831823', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '46', '3.33');
INSERT INTO `sampling_media_order` VALUES ('2714', '0', '2019-11-24 23:39:38', null, '1', null, '1', '20191124233938240', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '64', '3.45');
INSERT INTO `sampling_media_order` VALUES ('2715', '0', '2019-11-24 23:39:45', null, '1', null, '1', '20191124233945238', '55835746380180887791468d8bf918efa14aa8d21574609956144', '79', '3.84');
INSERT INTO `sampling_media_order` VALUES ('2716', '0', '2019-11-24 23:39:50', null, '1', null, '1', '20191124233950489', '741236658517dd13ab6748dfbb09df7e4a04a9141574605283162', '79', '3.93');
INSERT INTO `sampling_media_order` VALUES ('2717', '0', '2019-11-24 23:40:32', null, '1', null, '1', '20191124234032223', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '96', '3.39');
INSERT INTO `sampling_media_order` VALUES ('2718', '0', '2019-11-24 23:40:49', null, '1', null, '1', '20191124234049431', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '76', '3.51');
INSERT INTO `sampling_media_order` VALUES ('2719', '0', '2019-11-24 23:40:52', null, '1', null, '1', '20191124234052203', '35639994e1bed2c2305a4e4a830bc3ce605ff58e1574609988546', '107', '3.35');
INSERT INTO `sampling_media_order` VALUES ('2720', '0', '2019-11-24 23:40:55', null, '1', null, '1', '20191124234055707', '1051586005bda49737af40648cf2ea0dbd88e0881574517436702', '106', '3.15');
INSERT INTO `sampling_media_order` VALUES ('2721', '0', '2019-11-24 23:41:15', null, '1', null, '1', '20191124234115816', '741236658517dd13ab6748dfbb09df7e4a04a9141574605283162', '58', '3.48');
INSERT INTO `sampling_media_order` VALUES ('2722', '0', '2019-11-24 23:41:41', null, '1', null, '1', '20191124234141725', '1051586005bda49737af40648cf2ea0dbd88e0881574517436702', '65', '3.28');
INSERT INTO `sampling_media_order` VALUES ('2723', '0', '2019-11-24 23:41:51', null, '1', null, '1', '20191124234151337', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '16', '3.91');
INSERT INTO `sampling_media_order` VALUES ('2724', '0', '2019-11-24 23:42:24', null, '1', null, '1', '20191124234224259', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '80', '3.61');
INSERT INTO `sampling_media_order` VALUES ('2725', '0', '2019-11-24 23:42:35', null, '1', null, '1', '20191124234235688', '1051586005bda49737af40648cf2ea0dbd88e0881574517436702', '41', '3.85');
INSERT INTO `sampling_media_order` VALUES ('2726', '0', '2019-11-24 23:42:46', null, '1', null, '1', '20191124234246936', '741236658517dd13ab6748dfbb09df7e4a04a9141574605283162', '81', '3.39');
INSERT INTO `sampling_media_order` VALUES ('2727', '0', '2019-11-24 23:43:20', null, '1', null, '1', '20191124234320893', '55835746380180887791468d8bf918efa14aa8d21574609956144', '79', '3.34');
INSERT INTO `sampling_media_order` VALUES ('2728', '0', '2019-11-24 23:43:48', null, '1', null, '1', '20191124234348482', '55835746380180887791468d8bf918efa14aa8d21574609956144', '96', '3.16');
INSERT INTO `sampling_media_order` VALUES ('2729', '0', '2019-11-24 23:44:04', null, '1', null, '1', '20191124234404434', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '66', '3.10');
INSERT INTO `sampling_media_order` VALUES ('2730', '0', '2019-11-24 23:44:09', null, '1', null, '1', '20191124234409345', '362555679d4263e61d24483ea3a03a85b5bc19611574610237705', '52', '3.76');
INSERT INTO `sampling_media_order` VALUES ('2731', '0', '2019-11-24 23:44:43', null, '1', null, '1', '20191124234443230', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '65', '3.83');
INSERT INTO `sampling_media_order` VALUES ('2732', '0', '2019-11-24 23:44:53', null, '1', null, '1', '20191124234453914', '362555679d4263e61d24483ea3a03a85b5bc19611574610237705', '65', '3.20');
INSERT INTO `sampling_media_order` VALUES ('2733', '0', '2019-11-24 23:45:29', null, '1', null, '1', '20191124234529584', '684374717f7a9d2405ad41548b3baee419f263101574610234800', '79', '3.65');
INSERT INTO `sampling_media_order` VALUES ('2734', '0', '2019-11-24 23:45:40', null, '1', null, '1', '20191124234540273', '362555679d4263e61d24483ea3a03a85b5bc19611574610237705', '29', '3.57');
INSERT INTO `sampling_media_order` VALUES ('2735', '0', '2019-11-24 23:46:23', null, '1', null, '1', '20191124234623639', '362555679d4263e61d24483ea3a03a85b5bc19611574610237705', '65', '3.18');
INSERT INTO `sampling_media_order` VALUES ('2736', '0', '2019-11-24 23:46:33', null, '1', null, '1', '20191124234633576', '362555679d4263e61d24483ea3a03a85b5bc19611574610237705', '23', '3.15');
INSERT INTO `sampling_media_order` VALUES ('2737', '0', '2019-11-24 23:46:51', null, '1', null, '1', '20191124234651179', '35639994e1bed2c2305a4e4a830bc3ce605ff58e1574609988546', '88', '3.96');
INSERT INTO `sampling_media_order` VALUES ('2738', '0', '2019-11-24 23:47:11', null, '1', null, '1', '20191124234711502', '35639994e1bed2c2305a4e4a830bc3ce605ff58e1574609988546', '84', '3.05');
INSERT INTO `sampling_media_order` VALUES ('2739', '0', '2019-11-24 23:47:48', null, '1', null, '1', '20191124234748545', '35639994e1bed2c2305a4e4a830bc3ce605ff58e1574609988546', '92', '3.74');
INSERT INTO `sampling_media_order` VALUES ('2740', '0', '2019-11-24 23:48:46', null, '1', null, '1', '20191124234846973', '35639994e1bed2c2305a4e4a830bc3ce605ff58e1574609988546', '84', '3.51');
INSERT INTO `sampling_media_order` VALUES ('2741', '0', '2019-11-24 23:52:00', null, '1', null, '1', '20191124235200881', '684374717f7a9d2405ad41548b3baee419f263101574610234800', '54', '3.25');
INSERT INTO `sampling_media_order` VALUES ('2742', '0', '2019-11-24 23:55:11', null, '1', null, '1', '20191124235511404', '35639994e1bed2c2305a4e4a830bc3ce605ff58e1574609988546', '84', '3.65');
INSERT INTO `sampling_media_order` VALUES ('2743', '0', '2019-11-24 23:57:00', null, '1', null, '1', '20191124235700836', '35639994e1bed2c2305a4e4a830bc3ce605ff58e1574609988546', '69', '3.07');
INSERT INTO `sampling_media_order` VALUES ('2744', '0', '2019-11-24 23:58:49', null, '1', null, '1', '20191124235849599', '35639994e1bed2c2305a4e4a830bc3ce605ff58e1574609988546', '16', '3.58');
INSERT INTO `sampling_media_order` VALUES ('2745', '0', '2019-11-24 23:59:19', null, '1', null, '1', '20191124235919459', '35639994e1bed2c2305a4e4a830bc3ce605ff58e1574609988546', '52', '3.29');
INSERT INTO `sampling_media_order` VALUES ('2746', '0', '2019-11-24 23:59:44', null, '1', null, '1', '20191124235944332', '35639994e1bed2c2305a4e4a830bc3ce605ff58e1574609988546', '84', '3.39');
INSERT INTO `sampling_media_order` VALUES ('2747', '0', '2019-11-25 00:00:03', null, '1', null, '1', '20191125000003279', '684374717f7a9d2405ad41548b3baee419f263101574610234800', '41', '3.44');
INSERT INTO `sampling_media_order` VALUES ('2748', '0', '2019-11-25 00:01:05', null, '1', null, '1', '20191125000105199', '35639994e1bed2c2305a4e4a830bc3ce605ff58e1574609988546', '52', '3.40');
INSERT INTO `sampling_media_order` VALUES ('2749', '0', '2019-11-25 00:10:25', null, '1', null, '1', '20191125001025791', '8320133827fef1e8b4ff431faaef1c426d2499e21574607861906', '63', '3.78');
INSERT INTO `sampling_media_order` VALUES ('2750', '0', '2019-11-25 00:11:30', null, '1', null, '1', '20191125001130228', '8320133827fef1e8b4ff431faaef1c426d2499e21574607861906', '95', '3.85');
INSERT INTO `sampling_media_order` VALUES ('2751', '0', '2019-11-25 00:12:22', null, '1', null, '1', '20191125001222229', '8320133827fef1e8b4ff431faaef1c426d2499e21574607861906', '20', '3.20');
INSERT INTO `sampling_media_order` VALUES ('2752', '0', '2019-11-25 00:13:23', null, '1', null, '1', '20191125001323102', '1320394579000787be024488b0e0cee3f334b96b1574581057615', '84', '3.82');
INSERT INTO `sampling_media_order` VALUES ('2753', '0', '2019-11-25 00:15:10', null, '1', null, '1', '20191125001510240', '86092819830d0e20c6a44d8693bf6419a0847fa01574609645632', '54', '3.98');
INSERT INTO `sampling_media_order` VALUES ('2754', '0', '2019-11-25 00:15:10', null, '1', null, '1', '20191125001510880', '848603308bffbfa693ec4f8db4ffbde0f41928941574612098360', '24', '3.70');
INSERT INTO `sampling_media_order` VALUES ('2755', '0', '2019-11-25 00:22:42', null, '1', null, '1', '20191125002242530', '309039293fd766e6aabb4733989146d93ccb55471574612549734', '79', '3.04');
INSERT INTO `sampling_media_order` VALUES ('2756', '0', '2019-11-25 00:23:10', null, '1', null, '1', '20191125002310566', '74407392946051917e23455a914b16770b2455d11574612541215', '28', '3.55');
INSERT INTO `sampling_media_order` VALUES ('2757', '0', '2019-11-25 00:34:16', null, '1', null, '1', '20191125003416242', '789447813753ee9f85744abe98257d69cfe71fe51574613246398', '52', '3.62');
INSERT INTO `sampling_media_order` VALUES ('2758', '0', '2019-11-25 00:35:59', null, '1', null, '1', '20191125003559372', '31581615713edd4eba324dff8656bd36794d85151574580338838', '69', '3.47');
INSERT INTO `sampling_media_order` VALUES ('2759', '0', '2019-11-25 00:37:57', null, '1', null, '1', '20191125003757320', '37164938856a48c862b94430942dbc813df387ed1574578031549', '52', '3.49');
INSERT INTO `sampling_media_order` VALUES ('2760', '0', '2019-11-25 00:38:09', null, '1', null, '1', '20191125003809971', '31581615713edd4eba324dff8656bd36794d85151574580338838', '92', '3.11');
INSERT INTO `sampling_media_order` VALUES ('2761', '0', '2019-11-25 00:43:53', null, '1', null, '1', '20191125004353996', '1320394579000787be024488b0e0cee3f334b96b1574581057615', '101', '3.60');
INSERT INTO `sampling_media_order` VALUES ('2762', '0', '2019-11-25 00:49:07', null, '1', null, '1', '20191125004907661', '72987352c4aa2882d6b14db69f878c3d0c4c11501574604409680', '36', '3.44');
INSERT INTO `sampling_media_order` VALUES ('2763', '0', '2019-11-25 00:49:30', null, '1', null, '1', '20191125004930873', '72987352c4aa2882d6b14db69f878c3d0c4c11501574604409680', '96', '3.55');
INSERT INTO `sampling_media_order` VALUES ('2764', '0', '2019-11-25 00:49:53', null, '1', null, '1', '20191125004953774', '72987352c4aa2882d6b14db69f878c3d0c4c11501574604409680', '52', '3.99');
INSERT INTO `sampling_media_order` VALUES ('2765', '0', '2019-11-25 00:51:14', null, '1', null, '1', '20191125005114276', '72987352c4aa2882d6b14db69f878c3d0c4c11501574604409680', '84', '3.45');
INSERT INTO `sampling_media_order` VALUES ('2766', '0', '2019-11-25 00:53:43', null, '1', null, '1', '20191125005343436', '789447813753ee9f85744abe98257d69cfe71fe51574613246398', '92', '3.80');
INSERT INTO `sampling_media_order` VALUES ('2767', '0', '2019-11-25 00:54:34', null, '1', null, '1', '20191125005434172', '363640932f15bcbd199d4500b6e2f87ced4cca471574614449094', '106', '3.02');
INSERT INTO `sampling_media_order` VALUES ('2768', '0', '2019-11-25 00:55:33', null, '1', null, '1', '20191125005533126', '363640932f15bcbd199d4500b6e2f87ced4cca471574614449094', '64', '3.09');
INSERT INTO `sampling_media_order` VALUES ('2769', '0', '2019-11-25 00:55:47', null, '1', null, '1', '20191125005547643', '789447813753ee9f85744abe98257d69cfe71fe51574613246398', '79', '3.32');
INSERT INTO `sampling_media_order` VALUES ('2770', '0', '2019-11-25 00:59:23', null, '1', null, '1', '20191125005923871', '789447813753ee9f85744abe98257d69cfe71fe51574613246398', '65', '3.13');
INSERT INTO `sampling_media_order` VALUES ('2771', '0', '2019-11-25 01:01:02', null, '1', null, '1', '20191125010102631', '789447813753ee9f85744abe98257d69cfe71fe51574613246398', '65', '3.70');
INSERT INTO `sampling_media_order` VALUES ('2772', '0', '2019-11-25 01:01:15', null, '1', null, '1', '20191125010115560', '1320394579000787be024488b0e0cee3f334b96b1574581057615', '41', '3.44');
INSERT INTO `sampling_media_order` VALUES ('2773', '0', '2019-11-25 01:05:01', null, '1', null, '1', '20191125010501605', '1320394579000787be024488b0e0cee3f334b96b1574581057615', '96', '3.46');
INSERT INTO `sampling_media_order` VALUES ('2774', '0', '2019-11-25 01:07:49', null, '1', null, '1', '20191125010749267', '1320394579000787be024488b0e0cee3f334b96b1574581057615', '60', '3.55');
INSERT INTO `sampling_media_order` VALUES ('2775', '0', '2019-11-25 01:09:29', null, '1', null, '1', '20191125010929926', '1320394579000787be024488b0e0cee3f334b96b1574581057615', '16', '3.98');
INSERT INTO `sampling_media_order` VALUES ('2776', '0', '2019-11-25 01:10:55', null, '1', null, '1', '20191125011055873', '10280047d43fd32297bc41b0b3188b7c8f6c51671574584582728', '54', '3.84');
INSERT INTO `sampling_media_order` VALUES ('2777', '0', '2019-11-25 01:12:07', null, '1', null, '1', '20191125011207560', '10280047d43fd32297bc41b0b3188b7c8f6c51671574584582728', '76', '3.10');
INSERT INTO `sampling_media_order` VALUES ('2778', '0', '2019-11-25 01:12:23', null, '1', null, '1', '20191125011223221', '10280047d43fd32297bc41b0b3188b7c8f6c51671574584582728', '105', '3.76');
INSERT INTO `sampling_media_order` VALUES ('2779', '0', '2019-11-25 01:12:43', null, '1', null, '1', '20191125011243822', '10280047d43fd32297bc41b0b3188b7c8f6c51671574584582728', '23', '3.06');
INSERT INTO `sampling_media_order` VALUES ('2780', '0', '2019-11-25 01:13:09', null, '1', null, '1', '20191125011309766', '10280047d43fd32297bc41b0b3188b7c8f6c51671574584582728', '49', '3.48');
INSERT INTO `sampling_media_order` VALUES ('2781', '0', '2019-11-25 01:16:51', null, '1', null, '1', '20191125011651295', '14941488c897d1e174484a14bcc64c2862659f7d1574615793533', '52', '3.89');
INSERT INTO `sampling_media_order` VALUES ('2782', '0', '2019-11-25 01:17:19', null, '1', null, '1', '20191125011719807', '10280047d43fd32297bc41b0b3188b7c8f6c51671574584582728', '29', '3.46');
INSERT INTO `sampling_media_order` VALUES ('2783', '0', '2019-11-25 01:17:51', null, '1', null, '1', '20191125011751357', '10280047d43fd32297bc41b0b3188b7c8f6c51671574584582728', '29', '3.89');
INSERT INTO `sampling_media_order` VALUES ('2784', '0', '2019-11-25 01:18:45', null, '1', null, '1', '20191125011845287', '10280047d43fd32297bc41b0b3188b7c8f6c51671574584582728', '54', '3.40');
INSERT INTO `sampling_media_order` VALUES ('2785', '0', '2019-11-25 01:28:12', null, '1', null, '1', '20191125012812787', '7275489746f08d0385c14a4f8209724174547e421574600163220', '94', '3.92');
INSERT INTO `sampling_media_order` VALUES ('2786', '0', '2019-11-25 01:29:20', null, '1', null, '1', '20191125012920243', '78017679fe68949cc31640338703f177eed39d211574606793222', '80', '3.29');
INSERT INTO `sampling_media_order` VALUES ('2787', '0', '2019-11-25 01:35:47', null, '1', null, '1', '20191125013547433', '19607413a32b86a7b3b744aca859a768c5bb58691574616931560', '52', '3.82');
INSERT INTO `sampling_media_order` VALUES ('2788', '0', '2019-11-25 01:37:11', null, '1', null, '1', '20191125013711460', '19607413a32b86a7b3b744aca859a768c5bb58691574616931560', '65', '3.66');
INSERT INTO `sampling_media_order` VALUES ('2789', '0', '2019-11-25 01:38:39', null, '1', null, '1', '20191125013839323', '19607413a32b86a7b3b744aca859a768c5bb58691574616931560', '66', '3.46');
INSERT INTO `sampling_media_order` VALUES ('2790', '0', '2019-11-25 01:39:05', null, '1', null, '1', '20191125013905618', '19607413a32b86a7b3b744aca859a768c5bb58691574616931560', '41', '3.18');
INSERT INTO `sampling_media_order` VALUES ('2791', '0', '2019-11-25 01:41:59', null, '1', null, '1', '20191125014159521', '19607413a32b86a7b3b744aca859a768c5bb58691574616931560', '94', '3.46');
INSERT INTO `sampling_media_order` VALUES ('2792', '0', '2019-11-25 01:43:29', null, '1', null, '1', '20191125014329112', '19607413a32b86a7b3b744aca859a768c5bb58691574616931560', '41', '3.20');
INSERT INTO `sampling_media_order` VALUES ('2793', '0', '2019-11-25 01:49:24', null, '1', null, '1', '20191125014924699', '7275489746f08d0385c14a4f8209724174547e421574600163220', '94', '3.84');
INSERT INTO `sampling_media_order` VALUES ('2794', '0', '2019-11-25 01:54:50', null, '1', null, '1', '20191125015450942', '6966803089aa488857ec4e5299e27cd267d74c431574616265236', '86', '3.35');
INSERT INTO `sampling_media_order` VALUES ('2795', '0', '2019-11-25 01:55:36', null, '1', null, '1', '20191125015536339', '6966803089aa488857ec4e5299e27cd267d74c431574616265236', '92', '3.04');
INSERT INTO `sampling_media_order` VALUES ('2796', '0', '2019-11-25 01:56:22', null, '1', null, '1', '20191125015622939', '6966803089aa488857ec4e5299e27cd267d74c431574616265236', '54', '3.71');
INSERT INTO `sampling_media_order` VALUES ('2797', '0', '2019-11-25 01:57:08', null, '1', null, '1', '20191125015708751', '6966803089aa488857ec4e5299e27cd267d74c431574616265236', '29', '3.71');
INSERT INTO `sampling_media_order` VALUES ('2798', '0', '2019-11-25 01:58:47', null, '1', null, '1', '20191125015847543', '6966803089aa488857ec4e5299e27cd267d74c431574616265236', '62', '3.29');
INSERT INTO `sampling_media_order` VALUES ('2799', '0', '2019-11-25 01:59:30', null, '1', null, '1', '20191125015930332', '6966803089aa488857ec4e5299e27cd267d74c431574616265236', '79', '3.89');
INSERT INTO `sampling_media_order` VALUES ('2800', '0', '2019-11-25 02:35:18', null, '1', null, '1', '20191125023518407', '813911758272bc9a5e1b48d7b8598614b1037f6b1574573313755', '79', '3.41');
INSERT INTO `sampling_media_order` VALUES ('2801', '0', '2019-11-25 02:36:52', null, '1', null, '1', '20191125023652182', '813911758272bc9a5e1b48d7b8598614b1037f6b1574573313755', '64', '3.59');
INSERT INTO `sampling_media_order` VALUES ('2802', '0', '2019-11-25 02:59:07', null, '1', null, '1', '20191125025907340', '3836103652a7ae569943480a844eaf01f0e0a6e01574575423551', '106', '3.31');
INSERT INTO `sampling_media_order` VALUES ('2803', '0', '2019-11-25 03:01:21', null, '1', null, '1', '20191125030121249', '3836103652a7ae569943480a844eaf01f0e0a6e01574575423551', '41', '3.31');
INSERT INTO `sampling_media_order` VALUES ('2804', '0', '2019-11-25 03:01:22', null, '1', null, '1', '20191125030122761', '813911758272bc9a5e1b48d7b8598614b1037f6b1574573313755', '96', '3.86');
INSERT INTO `sampling_media_order` VALUES ('2805', '0', '2019-11-25 03:02:54', null, '1', null, '1', '20191125030254329', '3836103652a7ae569943480a844eaf01f0e0a6e01574575423551', '41', '3.82');
INSERT INTO `sampling_media_order` VALUES ('2806', '0', '2019-11-25 03:03:28', null, '1', null, '1', '20191125030328412', '813911758272bc9a5e1b48d7b8598614b1037f6b1574573313755', '41', '3.93');
INSERT INTO `sampling_media_order` VALUES ('2807', '0', '2019-11-25 03:05:28', null, '1', null, '1', '20191125030528259', '3836103652a7ae569943480a844eaf01f0e0a6e01574575423551', '52', '3.74');
INSERT INTO `sampling_media_order` VALUES ('2808', '0', '2019-11-25 03:05:35', null, '1', null, '1', '20191125030535626', '813911758272bc9a5e1b48d7b8598614b1037f6b1574573313755', '49', '3.64');
INSERT INTO `sampling_media_order` VALUES ('2809', '0', '2019-11-25 03:06:43', null, '1', null, '1', '20191125030643552', '3836103652a7ae569943480a844eaf01f0e0a6e01574575423551', '95', '3.03');
INSERT INTO `sampling_media_order` VALUES ('2810', '0', '2019-11-25 03:07:48', null, '1', null, '1', '20191125030748665', '3836103652a7ae569943480a844eaf01f0e0a6e01574575423551', '95', '3.63');
INSERT INTO `sampling_media_order` VALUES ('2811', '0', '2019-11-25 03:08:50', null, '1', null, '1', '20191125030850225', '813911758272bc9a5e1b48d7b8598614b1037f6b1574573313755', '76', '3.88');
INSERT INTO `sampling_media_order` VALUES ('2812', '0', '2019-11-25 03:10:23', null, '1', null, '1', '20191125031023212', '813911758272bc9a5e1b48d7b8598614b1037f6b1574573313755', '107', '3.00');
INSERT INTO `sampling_media_order` VALUES ('2813', '0', '2019-11-25 03:32:56', null, '1', null, '1', '20191125033256389', '3836103652a7ae569943480a844eaf01f0e0a6e01574575423551', '95', '3.34');
INSERT INTO `sampling_media_order` VALUES ('2814', '0', '2019-11-25 03:34:33', null, '1', null, '1', '20191125033433357', '3836103652a7ae569943480a844eaf01f0e0a6e01574575423551', '38', '3.95');
INSERT INTO `sampling_media_order` VALUES ('2815', '0', '2019-11-25 03:35:54', null, '1', null, '1', '20191125033554197', '3836103652a7ae569943480a844eaf01f0e0a6e01574575423551', '23', '3.51');
INSERT INTO `sampling_media_order` VALUES ('2816', '0', '2019-11-25 03:36:53', null, '1', null, '1', '20191125033653886', '3836103652a7ae569943480a844eaf01f0e0a6e01574575423551', '54', '3.97');
INSERT INTO `sampling_media_order` VALUES ('2817', '0', '2019-11-25 03:37:58', null, '1', null, '1', '20191125033758557', '3836103652a7ae569943480a844eaf01f0e0a6e01574575423551', '92', '3.34');
INSERT INTO `sampling_media_order` VALUES ('2818', '0', '2019-11-25 03:38:46', null, '1', null, '1', '20191125033846858', '3836103652a7ae569943480a844eaf01f0e0a6e01574575423551', '54', '3.26');
INSERT INTO `sampling_media_order` VALUES ('2819', '0', '2019-11-25 03:40:50', null, '1', null, '1', '20191125034050903', '813911758272bc9a5e1b48d7b8598614b1037f6b1574573313755', '54', '3.18');
INSERT INTO `sampling_media_order` VALUES ('2820', '0', '2019-11-25 03:42:47', null, '1', null, '1', '20191125034247547', '813911758272bc9a5e1b48d7b8598614b1037f6b1574573313755', '63', '3.30');
INSERT INTO `sampling_media_order` VALUES ('2821', '0', '2019-11-25 03:44:04', null, '1', null, '1', '20191125034404721', '813911758272bc9a5e1b48d7b8598614b1037f6b1574573313755', '52', '3.48');
INSERT INTO `sampling_media_order` VALUES ('2822', '0', '2019-11-25 03:59:30', null, '1', null, '1', '20191125035930864', '55835746380180887791468d8bf918efa14aa8d21574609956144', '25', '3.56');
INSERT INTO `sampling_media_order` VALUES ('2823', '0', '2019-11-25 04:01:01', null, '1', null, '1', '20191125040101577', '55835746380180887791468d8bf918efa14aa8d21574609956144', '41', '3.82');
INSERT INTO `sampling_media_order` VALUES ('2824', '0', '2019-11-25 04:11:53', null, '1', null, '1', '20191125041153750', '734834894fa413537bfa48af84bafa12443722c71574626302611', '79', '3.98');
INSERT INTO `sampling_media_order` VALUES ('2825', '0', '2019-11-25 04:13:18', null, '1', null, '1', '20191125041318643', '734834894fa413537bfa48af84bafa12443722c71574626302611', '49', '3.49');
INSERT INTO `sampling_media_order` VALUES ('2826', '0', '2019-11-25 04:14:10', null, '1', null, '1', '20191125041410732', '734834894fa413537bfa48af84bafa12443722c71574626302611', '54', '3.96');
INSERT INTO `sampling_media_order` VALUES ('2827', '0', '2019-11-25 04:19:34', null, '1', null, '1', '20191125041934451', '80324382ff863e30c17e4a00953293a0d491ae781574626714976', '94', '3.43');
INSERT INTO `sampling_media_order` VALUES ('2828', '0', '2019-11-25 04:35:07', null, '1', null, '1', '20191125043507727', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '64', '3.05');
INSERT INTO `sampling_media_order` VALUES ('2829', '0', '2019-11-25 04:36:07', null, '1', null, '1', '20191125043607322', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '54', '3.69');
INSERT INTO `sampling_media_order` VALUES ('2830', '0', '2019-11-25 04:37:00', null, '1', null, '1', '20191125043700858', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '86', '3.20');
INSERT INTO `sampling_media_order` VALUES ('2831', '0', '2019-11-25 04:37:57', null, '1', null, '1', '20191125043757724', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '65', '3.10');
INSERT INTO `sampling_media_order` VALUES ('2832', '0', '2019-11-25 04:38:24', null, '1', null, '1', '20191125043824959', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '65', '3.34');
INSERT INTO `sampling_media_order` VALUES ('2833', '0', '2019-11-25 04:39:23', null, '1', null, '1', '20191125043923283', '88477875bfc719279c8643da928a9571661565251574583642322', '80', '3.06');
INSERT INTO `sampling_media_order` VALUES ('2834', '0', '2019-11-25 04:39:38', null, '1', null, '1', '20191125043938430', '88477875bfc719279c8643da928a9571661565251574583642322', '92', '3.38');
INSERT INTO `sampling_media_order` VALUES ('2835', '0', '2019-11-25 04:39:38', null, '1', null, '1', '20191125043938809', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '79', '3.33');
INSERT INTO `sampling_media_order` VALUES ('2836', '0', '2019-11-25 04:39:40', null, '1', null, '1', '20191125043940173', '88477875bfc719279c8643da928a9571661565251574583642322', '92', '3.86');
INSERT INTO `sampling_media_order` VALUES ('2837', '0', '2019-11-25 04:57:29', null, '1', null, '1', '20191125045729498', '88477875bfc719279c8643da928a9571661565251574583642322', '52', '3.30');
INSERT INTO `sampling_media_order` VALUES ('2838', '0', '2019-11-25 04:57:49', null, '1', null, '1', '20191125045749715', '734834894fa413537bfa48af84bafa12443722c71574626302611', '92', '3.63');
INSERT INTO `sampling_media_order` VALUES ('2839', '0', '2019-11-25 05:04:26', null, '1', null, '1', '20191125050426841', '88477875bfc719279c8643da928a9571661565251574583642322', '41', '3.23');
INSERT INTO `sampling_media_order` VALUES ('2840', '0', '2019-11-25 05:16:57', null, '1', null, '1', '20191125051657551', '88477875bfc719279c8643da928a9571661565251574583642322', '79', '3.53');
INSERT INTO `sampling_media_order` VALUES ('2841', '0', '2019-11-25 05:44:56', null, '1', null, '1', '20191125054456621', '12965054ed4181ef2d154b90b14c18296da62b0b1574631874062', '79', '3.40');
INSERT INTO `sampling_media_order` VALUES ('2842', '0', '2019-11-25 05:46:20', null, '1', null, '1', '20191125054620318', '33847061174a3143653c4598af546759266ee7cf1574631955017', '52', '3.08');
INSERT INTO `sampling_media_order` VALUES ('2843', '0', '2019-11-25 05:51:37', null, '1', null, '1', '20191125055137804', '93566728ae41da5894e14ec28b0c506a3a2bb4b81574602188718', '107', '3.82');
INSERT INTO `sampling_media_order` VALUES ('2844', '0', '2019-11-25 05:52:05', null, '1', null, '1', '20191125055205155', '12965054ed4181ef2d154b90b14c18296da62b0b1574631874062', '84', '3.36');
INSERT INTO `sampling_media_order` VALUES ('2845', '0', '2019-11-25 05:52:36', null, '1', null, '1', '20191125055236145', '93566728ae41da5894e14ec28b0c506a3a2bb4b81574602188718', '49', '3.86');
INSERT INTO `sampling_media_order` VALUES ('2846', '0', '2019-11-25 05:53:22', null, '1', null, '1', '20191125055322563', '12965054ed4181ef2d154b90b14c18296da62b0b1574631874062', '84', '3.09');
INSERT INTO `sampling_media_order` VALUES ('2847', '0', '2019-11-25 05:53:49', null, '1', null, '1', '20191125055349702', '12965054ed4181ef2d154b90b14c18296da62b0b1574631874062', '95', '3.43');
INSERT INTO `sampling_media_order` VALUES ('2848', '0', '2019-11-25 05:54:20', null, '1', null, '1', '20191125055420736', '12965054ed4181ef2d154b90b14c18296da62b0b1574631874062', '79', '3.49');
INSERT INTO `sampling_media_order` VALUES ('2849', '0', '2019-11-25 06:16:30', null, '1', null, '1', '20191125061630778', '12965054ed4181ef2d154b90b14c18296da62b0b1574631874062', '61', '3.81');
INSERT INTO `sampling_media_order` VALUES ('2850', '0', '2019-11-25 06:17:26', null, '1', null, '1', '20191125061726811', '12965054ed4181ef2d154b90b14c18296da62b0b1574631874062', '84', '3.00');
INSERT INTO `sampling_media_order` VALUES ('2851', '0', '2019-11-25 06:20:12', null, '1', null, '1', '20191125062012169', '12965054ed4181ef2d154b90b14c18296da62b0b1574631874062', '95', '3.79');
INSERT INTO `sampling_media_order` VALUES ('2852', '0', '2019-11-25 06:24:54', null, '1', null, '1', '20191125062454776', '3171124574bb983b3b8c4003977f918a6995ed851574490047171', '53', '3.66');
INSERT INTO `sampling_media_order` VALUES ('2853', '0', '2019-11-25 06:26:09', null, '1', null, '1', '20191125062609975', '3171124574bb983b3b8c4003977f918a6995ed851574490047171', '65', '3.74');
INSERT INTO `sampling_media_order` VALUES ('2854', '0', '2019-11-25 06:27:30', null, '1', null, '1', '20191125062730867', '12965054ed4181ef2d154b90b14c18296da62b0b1574631874062', '44', '3.52');
INSERT INTO `sampling_media_order` VALUES ('2855', '0', '2019-11-25 06:28:12', null, '1', null, '1', '20191125062812894', '12965054ed4181ef2d154b90b14c18296da62b0b1574631874062', '44', '3.81');
INSERT INTO `sampling_media_order` VALUES ('2856', '0', '2019-11-25 06:28:56', null, '1', null, '1', '20191125062856631', '734834894fa413537bfa48af84bafa12443722c71574626302611', '92', '3.63');
INSERT INTO `sampling_media_order` VALUES ('2857', '0', '2019-11-25 06:29:06', null, '1', null, '1', '20191125062906555', '734834894fa413537bfa48af84bafa12443722c71574626302611', '92', '3.48');
INSERT INTO `sampling_media_order` VALUES ('2858', '0', '2019-11-25 06:29:24', null, '1', null, '1', '20191125062924694', '734834894fa413537bfa48af84bafa12443722c71574626302611', '65', '3.35');
INSERT INTO `sampling_media_order` VALUES ('2859', '0', '2019-11-25 06:29:45', null, '1', null, '1', '20191125062945500', '12965054ed4181ef2d154b90b14c18296da62b0b1574631874062', '44', '3.12');
INSERT INTO `sampling_media_order` VALUES ('2860', '0', '2019-11-25 06:30:56', null, '1', null, '1', '20191125063056808', '734834894fa413537bfa48af84bafa12443722c71574626302611', '84', '3.63');
INSERT INTO `sampling_media_order` VALUES ('2861', '0', '2019-11-25 06:31:45', null, '1', null, '1', '20191125063145273', '1341903819af4b8600574f1ebf31558e171533661574584427932', '79', '3.03');
INSERT INTO `sampling_media_order` VALUES ('2862', '0', '2019-11-25 06:31:57', null, '1', null, '1', '20191125063157131', '734834894fa413537bfa48af84bafa12443722c71574626302611', '86', '3.98');
INSERT INTO `sampling_media_order` VALUES ('2863', '0', '2019-11-25 06:39:20', null, '1', null, '1', '20191125063920696', '2844590764309d9900534ed3aaf8f169a357cadb1574579660607', '106', '3.00');
INSERT INTO `sampling_media_order` VALUES ('2864', '0', '2019-11-25 06:40:30', null, '1', null, '1', '20191125064030386', '2844590764309d9900534ed3aaf8f169a357cadb1574579660607', '92', '3.06');
INSERT INTO `sampling_media_order` VALUES ('2865', '0', '2019-11-25 06:41:17', null, '1', null, '1', '20191125064117397', '2844590764309d9900534ed3aaf8f169a357cadb1574579660607', '49', '3.59');
INSERT INTO `sampling_media_order` VALUES ('2866', '0', '2019-11-25 06:42:13', null, '1', null, '1', '20191125064213150', '2844590764309d9900534ed3aaf8f169a357cadb1574579660607', '86', '3.53');
INSERT INTO `sampling_media_order` VALUES ('2867', '0', '2019-11-25 06:42:38', null, '1', null, '1', '20191125064238821', '72987352c4aa2882d6b14db69f878c3d0c4c11501574604409680', '74', '3.55');
INSERT INTO `sampling_media_order` VALUES ('2868', '0', '2019-11-25 06:42:55', null, '1', null, '1', '20191125064255402', '2844590764309d9900534ed3aaf8f169a357cadb1574579660607', '65', '3.30');
INSERT INTO `sampling_media_order` VALUES ('2869', '0', '2019-11-25 06:43:29', null, '1', null, '1', '20191125064329790', '209669864da8ae5d99e242ea80488f35733315521574584353836', '79', '3.05');
INSERT INTO `sampling_media_order` VALUES ('2870', '0', '2019-11-25 06:43:39', null, '1', null, '1', '20191125064339310', '72987352c4aa2882d6b14db69f878c3d0c4c11501574604409680', '42', '3.58');
INSERT INTO `sampling_media_order` VALUES ('2871', '0', '2019-11-25 06:43:40', null, '1', null, '1', '20191125064340657', '2844590764309d9900534ed3aaf8f169a357cadb1574579660607', '49', '3.01');
INSERT INTO `sampling_media_order` VALUES ('2872', '0', '2019-11-25 06:44:38', null, '1', null, '1', '20191125064438108', '2844590764309d9900534ed3aaf8f169a357cadb1574579660607', '95', '3.97');
INSERT INTO `sampling_media_order` VALUES ('2873', '0', '2019-11-25 06:44:52', null, '1', null, '1', '20191125064452891', '209669864da8ae5d99e242ea80488f35733315521574584353836', '64', '3.80');
INSERT INTO `sampling_media_order` VALUES ('2874', '0', '2019-11-25 06:45:50', null, '1', null, '1', '20191125064550367', '2844590764309d9900534ed3aaf8f169a357cadb1574579660607', '107', '3.40');
INSERT INTO `sampling_media_order` VALUES ('2875', '0', '2019-11-25 06:45:50', null, '1', null, '1', '20191125064550272', '209669864da8ae5d99e242ea80488f35733315521574584353836', '64', '3.67');
INSERT INTO `sampling_media_order` VALUES ('2876', '0', '2019-11-25 06:45:58', null, '1', null, '1', '20191125064558698', '209669864da8ae5d99e242ea80488f35733315521574584353836', '52', '3.40');
INSERT INTO `sampling_media_order` VALUES ('2877', '0', '2019-11-25 06:46:01', null, '1', null, '1', '20191125064601821', '52476548a1987158b9d34d669e63594b2dba49721574602454242', '96', '3.10');
INSERT INTO `sampling_media_order` VALUES ('2878', '0', '2019-11-25 06:46:53', null, '1', null, '1', '20191125064653435', '52476548a1987158b9d34d669e63594b2dba49721574602454242', '92', '3.92');
INSERT INTO `sampling_media_order` VALUES ('2879', '0', '2019-11-25 06:47:29', null, '1', null, '1', '20191125064729740', '2844590764309d9900534ed3aaf8f169a357cadb1574579660607', '32', '3.45');
INSERT INTO `sampling_media_order` VALUES ('2880', '0', '2019-11-25 06:59:42', null, '1', null, '1', '20191125065942345', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '36', '3.92');
INSERT INTO `sampling_media_order` VALUES ('2881', '0', '2019-11-25 07:01:48', null, '1', null, '1', '20191125070148386', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '49', '3.83');
INSERT INTO `sampling_media_order` VALUES ('2882', '0', '2019-11-25 07:09:28', null, '1', null, '1', '20191125070928404', '51365404c2051a50b91c4620b705e8a31ee342811574636797006', '107', '3.80');
INSERT INTO `sampling_media_order` VALUES ('2883', '0', '2019-11-25 07:10:20', null, '1', null, '1', '20191125071020638', '51365404c2051a50b91c4620b705e8a31ee342811574636797006', '92', '3.95');
INSERT INTO `sampling_media_order` VALUES ('2884', '0', '2019-11-25 07:13:17', null, '1', null, '1', '20191125071317185', '54700197a50bf5d5ad9c46dfacbec8827f9d41631574637178266', '36', '3.18');
INSERT INTO `sampling_media_order` VALUES ('2885', '0', '2019-11-25 07:13:39', null, '1', null, '1', '20191125071339413', '54700197a50bf5d5ad9c46dfacbec8827f9d41631574637178266', '41', '3.03');
INSERT INTO `sampling_media_order` VALUES ('2886', '0', '2019-11-25 07:17:37', null, '1', null, '1', '20191125071737311', '22870926bd4f1bc8673644b4b73eb65a3816aa841574637446383', '79', '3.03');
INSERT INTO `sampling_media_order` VALUES ('2887', '0', '2019-11-25 07:20:06', null, '1', null, '1', '20191125072006790', '22870926bd4f1bc8673644b4b73eb65a3816aa841574637446383', '36', '3.45');
INSERT INTO `sampling_media_order` VALUES ('2888', '0', '2019-11-25 07:24:13', null, '1', null, '1', '20191125072413933', '44923838ec7bf58dc1de4416857abad8075f61b81574637837641', '36', '3.90');
INSERT INTO `sampling_media_order` VALUES ('2889', '0', '2019-11-25 07:25:48', null, '1', null, '1', '20191125072548565', '7336812810ed99fbcb9b41568685f8e80f1213301574637894400', '95', '3.87');
INSERT INTO `sampling_media_order` VALUES ('2890', '0', '2019-11-25 07:26:05', null, '1', null, '1', '20191125072605233', '67322942128186e3c4b84806a680c571a9db5ba21574580187718', '107', '3.93');
INSERT INTO `sampling_media_order` VALUES ('2891', '0', '2019-11-25 07:28:24', null, '1', null, '1', '20191125072824383', '7336812810ed99fbcb9b41568685f8e80f1213301574637894400', '84', '3.53');
INSERT INTO `sampling_media_order` VALUES ('2892', '0', '2019-11-25 07:30:20', null, '1', null, '1', '20191125073020615', '10280047d43fd32297bc41b0b3188b7c8f6c51671574584582728', '65', '3.81');
INSERT INTO `sampling_media_order` VALUES ('2893', '0', '2019-11-25 07:30:24', null, '1', null, '1', '20191125073024105', '7336812810ed99fbcb9b41568685f8e80f1213301574637894400', '80', '3.77');
INSERT INTO `sampling_media_order` VALUES ('2894', '0', '2019-11-25 07:31:16', null, '1', null, '1', '20191125073116694', '10280047d43fd32297bc41b0b3188b7c8f6c51671574584582728', '65', '3.56');
INSERT INTO `sampling_media_order` VALUES ('2895', '0', '2019-11-25 07:31:45', null, '1', null, '1', '20191125073145157', '7336812810ed99fbcb9b41568685f8e80f1213301574637894400', '84', '3.39');
INSERT INTO `sampling_media_order` VALUES ('2896', '0', '2019-11-25 07:32:08', null, '1', null, '1', '20191125073208281', '10280047d43fd32297bc41b0b3188b7c8f6c51671574584582728', '46', '3.24');
INSERT INTO `sampling_media_order` VALUES ('2897', '0', '2019-11-25 07:33:08', null, '1', null, '1', '20191125073308998', '10280047d43fd32297bc41b0b3188b7c8f6c51671574584582728', '96', '3.89');
INSERT INTO `sampling_media_order` VALUES ('2898', '0', '2019-11-25 07:37:24', null, '1', null, '1', '20191125073724864', '640949164a875983010a4a298ce0b2ce5764d4081574638614863', '25', '3.94');
INSERT INTO `sampling_media_order` VALUES ('2899', '0', '2019-11-25 07:39:34', null, '1', null, '1', '20191125073934403', '82842020cca02fce1c8c4bea9acecfbb897d1ba91574638744665', '80', '3.49');
INSERT INTO `sampling_media_order` VALUES ('2900', '0', '2019-11-25 07:39:47', null, '1', null, '1', '20191125073947260', '82842020cca02fce1c8c4bea9acecfbb897d1ba91574638744665', '65', '3.95');
INSERT INTO `sampling_media_order` VALUES ('2901', '0', '2019-11-25 07:40:16', null, '1', null, '1', '20191125074016116', '82842020cca02fce1c8c4bea9acecfbb897d1ba91574638744665', '60', '3.31');
INSERT INTO `sampling_media_order` VALUES ('2902', '0', '2019-11-25 07:58:15', null, '1', null, '1', '20191125075815786', '467315941255dcb415864da08990050a436dde8e1574636489069', '79', '3.27');
INSERT INTO `sampling_media_order` VALUES ('2903', '0', '2019-11-25 07:58:52', null, '1', null, '1', '20191125075852249', '467315941255dcb415864da08990050a436dde8e1574636489069', '52', '3.31');
INSERT INTO `sampling_media_order` VALUES ('2904', '0', '2019-11-25 07:59:46', null, '1', null, '1', '20191125075946496', '467315941255dcb415864da08990050a436dde8e1574636489069', '79', '3.89');
INSERT INTO `sampling_media_order` VALUES ('2905', '0', '2019-11-25 08:00:25', null, '1', null, '1', '20191125080025360', '851103541f27a7aa025e4e849d71141ef654b4bb1574638089352', '96', '3.59');
INSERT INTO `sampling_media_order` VALUES ('2906', '0', '2019-11-25 08:00:27', null, '1', null, '1', '20191125080027562', '467315941255dcb415864da08990050a436dde8e1574636489069', '80', '3.30');
INSERT INTO `sampling_media_order` VALUES ('2907', '0', '2019-11-25 08:03:54', null, '1', null, '1', '20191125080354641', '272653313ca98b998db24d08bed0681267dde7c11574587194067', '96', '3.74');
INSERT INTO `sampling_media_order` VALUES ('2908', '0', '2019-11-25 08:07:48', null, '1', null, '1', '20191125080748698', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '105', '3.33');
INSERT INTO `sampling_media_order` VALUES ('2909', '0', '2019-11-25 08:08:39', null, '1', null, '1', '20191125080839150', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '28', '3.70');
INSERT INTO `sampling_media_order` VALUES ('2910', '0', '2019-11-25 08:09:34', null, '1', null, '1', '20191125080934778', '2844590764309d9900534ed3aaf8f169a357cadb1574579660607', '96', '3.42');
INSERT INTO `sampling_media_order` VALUES ('2911', '0', '2019-11-25 08:10:29', null, '1', null, '1', '20191125081029632', '2844590764309d9900534ed3aaf8f169a357cadb1574579660607', '96', '3.34');
INSERT INTO `sampling_media_order` VALUES ('2912', '0', '2019-11-25 08:11:06', null, '1', null, '1', '20191125081106891', '2844590764309d9900534ed3aaf8f169a357cadb1574579660607', '92', '3.51');
INSERT INTO `sampling_media_order` VALUES ('2913', '0', '2019-11-25 08:11:47', null, '1', null, '1', '20191125081147304', '2844590764309d9900534ed3aaf8f169a357cadb1574579660607', '23', '3.64');
INSERT INTO `sampling_media_order` VALUES ('2914', '0', '2019-11-25 08:12:32', null, '1', null, '1', '20191125081232757', '2844590764309d9900534ed3aaf8f169a357cadb1574579660607', '54', '3.43');
INSERT INTO `sampling_media_order` VALUES ('2915', '0', '2019-11-25 08:13:25', null, '1', null, '1', '20191125081325552', '2844590764309d9900534ed3aaf8f169a357cadb1574579660607', '86', '3.08');
INSERT INTO `sampling_media_order` VALUES ('2916', '0', '2019-11-25 08:14:15', null, '1', null, '1', '20191125081415906', '2844590764309d9900534ed3aaf8f169a357cadb1574579660607', '49', '3.74');
INSERT INTO `sampling_media_order` VALUES ('2917', '0', '2019-11-25 08:14:57', null, '1', null, '1', '20191125081457709', '2844590764309d9900534ed3aaf8f169a357cadb1574579660607', '36', '3.34');
INSERT INTO `sampling_media_order` VALUES ('2918', '0', '2019-11-25 08:15:49', null, '1', null, '1', '20191125081549385', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '88', '3.74');
INSERT INTO `sampling_media_order` VALUES ('2919', '0', '2019-11-25 08:16:23', null, '1', null, '1', '20191125081623741', '2844590764309d9900534ed3aaf8f169a357cadb1574579660607', '52', '3.91');
INSERT INTO `sampling_media_order` VALUES ('2920', '0', '2019-11-25 08:17:06', null, '1', null, '1', '20191125081706249', '2844590764309d9900534ed3aaf8f169a357cadb1574579660607', '80', '3.39');
INSERT INTO `sampling_media_order` VALUES ('2921', '0', '2019-11-25 08:22:15', null, '1', null, '1', '20191125082215225', '86092819830d0e20c6a44d8693bf6419a0847fa01574609645632', '54', '3.99');
INSERT INTO `sampling_media_order` VALUES ('2922', '0', '2019-11-25 08:24:31', null, '1', null, '1', '20191125082431634', '851103541f27a7aa025e4e849d71141ef654b4bb1574638089352', '106', '3.63');
INSERT INTO `sampling_media_order` VALUES ('2923', '0', '2019-11-25 08:26:52', null, '1', null, '1', '20191125082652545', '851103541f27a7aa025e4e849d71141ef654b4bb1574638089352', '74', '3.08');
INSERT INTO `sampling_media_order` VALUES ('2924', '0', '2019-11-25 08:27:52', null, '1', null, '1', '20191125082752416', '851103541f27a7aa025e4e849d71141ef654b4bb1574638089352', '88', '3.33');
INSERT INTO `sampling_media_order` VALUES ('2925', '0', '2019-11-25 08:38:29', null, '1', null, '1', '20191125083829978', '72382715382e94c15e4543bcae1b9a129dae96251574583194492', '62', '3.77');
INSERT INTO `sampling_media_order` VALUES ('2926', '0', '2019-11-25 08:40:31', null, '1', null, '1', '20191125084031821', '72382715382e94c15e4543bcae1b9a129dae96251574583194492', '80', '3.82');
INSERT INTO `sampling_media_order` VALUES ('2927', '0', '2019-11-25 08:41:05', null, '1', null, '1', '20191125084105434', '67322942128186e3c4b84806a680c571a9db5ba21574580187718', '79', '3.21');
INSERT INTO `sampling_media_order` VALUES ('2928', '0', '2019-11-25 08:42:23', null, '1', null, '1', '20191125084223757', '72382715382e94c15e4543bcae1b9a129dae96251574583194492', '64', '3.74');
INSERT INTO `sampling_media_order` VALUES ('2929', '0', '2019-11-25 08:46:05', null, '1', null, '1', '20191125084605290', '5288158505512cef16714309b253402f4d23fd7f1574639013998', '106', '3.98');
INSERT INTO `sampling_media_order` VALUES ('2930', '0', '2019-11-25 08:46:58', null, '1', null, '1', '20191125084658176', '5288158505512cef16714309b253402f4d23fd7f1574639013998', '95', '3.61');
INSERT INTO `sampling_media_order` VALUES ('2931', '0', '2019-11-25 08:47:19', null, '1', null, '1', '20191125084719656', '5288158505512cef16714309b253402f4d23fd7f1574639013998', '106', '3.51');
INSERT INTO `sampling_media_order` VALUES ('2932', '0', '2019-11-25 08:47:23', null, '1', null, '1', '20191125084723622', '85045176c4cc31bdf0864359a370a7828efbc1401574586483939', '106', '3.44');
INSERT INTO `sampling_media_order` VALUES ('2933', '0', '2019-11-25 08:47:27', null, '1', null, '1', '20191125084727416', '517736994509466e038a423eb1301015a7718ace1574642813099', '21', '3.86');
INSERT INTO `sampling_media_order` VALUES ('2934', '0', '2019-11-25 08:48:23', null, '1', null, '1', '20191125084823140', '85045176c4cc31bdf0864359a370a7828efbc1401574586483939', '54', '3.10');
INSERT INTO `sampling_media_order` VALUES ('2935', '0', '2019-11-25 08:48:39', null, '1', null, '1', '20191125084839767', '517736994509466e038a423eb1301015a7718ace1574642813099', '93', '3.48');
INSERT INTO `sampling_media_order` VALUES ('2936', '0', '2019-11-25 08:49:42', null, '1', null, '1', '20191125084942913', '85045176c4cc31bdf0864359a370a7828efbc1401574586483939', '65', '3.24');
INSERT INTO `sampling_media_order` VALUES ('2937', '0', '2019-11-25 08:50:36', null, '1', null, '1', '20191125085036919', '85045176c4cc31bdf0864359a370a7828efbc1401574586483939', '92', '3.25');
INSERT INTO `sampling_media_order` VALUES ('2938', '0', '2019-11-25 08:51:49', null, '1', null, '1', '20191125085149346', '85045176c4cc31bdf0864359a370a7828efbc1401574586483939', '52', '3.15');
INSERT INTO `sampling_media_order` VALUES ('2939', '0', '2019-11-25 09:02:57', null, '1', null, '1', '20191125090257385', '634585990762e0c543b2495d972605131c9b3ac81574641204098', '41', '3.69');
INSERT INTO `sampling_media_order` VALUES ('2940', '0', '2019-11-25 09:04:21', null, '1', null, '1', '20191125090421639', '6140650596b91c5ef6904823b2a0a7b8f09143581574643849194', '79', '3.01');
INSERT INTO `sampling_media_order` VALUES ('2941', '0', '2019-11-25 09:04:36', null, '1', null, '1', '20191125090436801', '604711894268a42487f640169bb2accae453374c1574643848634', '64', '3.78');
INSERT INTO `sampling_media_order` VALUES ('2942', '0', '2019-11-25 09:04:37', null, '1', null, '1', '20191125090437791', '634585990762e0c543b2495d972605131c9b3ac81574641204098', '107', '3.57');
INSERT INTO `sampling_media_order` VALUES ('2943', '0', '2019-11-25 09:04:57', null, '1', null, '1', '20191125090457835', '908521375084d48623a242afb1c1d96e71d26bd71574643886105', '79', '3.92');
INSERT INTO `sampling_media_order` VALUES ('2944', '0', '2019-11-25 09:05:00', null, '1', null, '1', '20191125090500743', '604711894268a42487f640169bb2accae453374c1574643848634', '54', '3.43');
INSERT INTO `sampling_media_order` VALUES ('2945', '0', '2019-11-25 09:05:12', null, '1', null, '1', '20191125090512660', '6140650596b91c5ef6904823b2a0a7b8f09143581574643849194', '65', '3.84');
INSERT INTO `sampling_media_order` VALUES ('2946', '0', '2019-11-25 09:05:19', null, '1', null, '1', '20191125090519872', '604711894268a42487f640169bb2accae453374c1574643848634', '21', '3.86');
INSERT INTO `sampling_media_order` VALUES ('2947', '0', '2019-11-25 09:05:23', null, '1', null, '1', '20191125090523376', '634585990762e0c543b2495d972605131c9b3ac81574641204098', '65', '3.43');
INSERT INTO `sampling_media_order` VALUES ('2948', '0', '2019-11-25 09:06:06', null, '1', null, '1', '20191125090606365', '604711894268a42487f640169bb2accae453374c1574643848634', '36', '3.91');
INSERT INTO `sampling_media_order` VALUES ('2949', '0', '2019-11-25 09:07:37', null, '1', null, '1', '20191125090737722', '604711894268a42487f640169bb2accae453374c1574643848634', '102', '3.99');
INSERT INTO `sampling_media_order` VALUES ('2950', '0', '2019-11-25 09:07:48', null, '1', null, '1', '20191125090748885', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '25', '3.59');
INSERT INTO `sampling_media_order` VALUES ('2951', '0', '2019-11-25 09:08:09', null, '1', null, '1', '20191125090809437', '604711894268a42487f640169bb2accae453374c1574643848634', '50', '3.53');
INSERT INTO `sampling_media_order` VALUES ('2952', '0', '2019-11-25 09:08:41', null, '1', null, '1', '20191125090841827', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '99', '3.38');
INSERT INTO `sampling_media_order` VALUES ('2953', '0', '2019-11-25 09:08:50', null, '1', null, '1', '20191125090850137', '604711894268a42487f640169bb2accae453374c1574643848634', '41', '3.96');
INSERT INTO `sampling_media_order` VALUES ('2954', '0', '2019-11-25 09:09:27', null, '1', null, '1', '20191125090927427', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '90', '3.97');
INSERT INTO `sampling_media_order` VALUES ('2955', '0', '2019-11-25 09:09:38', null, '1', null, '1', '20191125090938687', '604711894268a42487f640169bb2accae453374c1574643848634', '29', '3.43');
INSERT INTO `sampling_media_order` VALUES ('2956', '0', '2019-11-25 09:10:19', null, '1', null, '1', '20191125091019887', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '101', '3.75');
INSERT INTO `sampling_media_order` VALUES ('2957', '0', '2019-11-25 09:10:27', null, '1', null, '1', '20191125091027455', '72382715382e94c15e4543bcae1b9a129dae96251574583194492', '79', '3.47');
INSERT INTO `sampling_media_order` VALUES ('2958', '0', '2019-11-25 09:10:37', null, '1', null, '1', '20191125091037200', '604711894268a42487f640169bb2accae453374c1574643848634', '63', '3.07');
INSERT INTO `sampling_media_order` VALUES ('2959', '0', '2019-11-25 09:12:26', null, '1', null, '1', '20191125091226487', '72382715382e94c15e4543bcae1b9a129dae96251574583194492', '36', '3.65');
INSERT INTO `sampling_media_order` VALUES ('2960', '0', '2019-11-25 09:13:00', null, '1', null, '1', '20191125091300693', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '105', '3.09');
INSERT INTO `sampling_media_order` VALUES ('2961', '0', '2019-11-25 09:13:33', null, '1', null, '1', '20191125091333769', '26240325131af464241d4d89b28820290f1a79941574638551036', '62', '3.62');
INSERT INTO `sampling_media_order` VALUES ('2962', '0', '2019-11-25 09:14:54', null, '1', null, '1', '20191125091454178', '26240325131af464241d4d89b28820290f1a79941574638551036', '94', '3.64');
INSERT INTO `sampling_media_order` VALUES ('2963', '0', '2019-11-25 09:22:04', null, '1', null, '1', '20191125092204649', '6140650596b91c5ef6904823b2a0a7b8f09143581574643849194', '106', '3.55');
INSERT INTO `sampling_media_order` VALUES ('2964', '0', '2019-11-25 09:43:11', null, '1', null, '1', '20191125094311873', '86092819830d0e20c6a44d8693bf6419a0847fa01574609645632', '41', '3.42');
INSERT INTO `sampling_media_order` VALUES ('2965', '0', '2019-11-25 09:43:12', null, '1', null, '1', '20191125094312809', '5288158505512cef16714309b253402f4d23fd7f1574639013998', '106', '3.16');
INSERT INTO `sampling_media_order` VALUES ('2966', '0', '2019-11-25 09:43:59', null, '1', null, '1', '20191125094359887', '5288158505512cef16714309b253402f4d23fd7f1574639013998', '41', '3.97');
INSERT INTO `sampling_media_order` VALUES ('2967', '0', '2019-11-25 09:46:07', null, '1', null, '1', '20191125094607715', '6592374167c7b255443a4126b940f324ca73e4fb1574646354908', '80', '3.33');
INSERT INTO `sampling_media_order` VALUES ('2968', '0', '2019-11-25 09:46:12', null, '1', null, '1', '20191125094612612', '6592374167c7b255443a4126b940f324ca73e4fb1574646354908', '23', '3.83');
INSERT INTO `sampling_media_order` VALUES ('2969', '0', '2019-11-25 09:48:14', null, '1', null, '1', '20191125094814706', '412354141dd15c3a526c49f8b2312086b34168481574646464920', '96', '3.98');
INSERT INTO `sampling_media_order` VALUES ('2970', '0', '2019-11-25 09:49:04', null, '1', null, '1', '20191125094904321', '412354141dd15c3a526c49f8b2312086b34168481574646464920', '106', '3.98');
INSERT INTO `sampling_media_order` VALUES ('2971', '0', '2019-11-25 10:10:49', null, '1', null, '1', '20191125101049790', '851103541f27a7aa025e4e849d71141ef654b4bb1574638089352', '36', '3.74');
INSERT INTO `sampling_media_order` VALUES ('2972', '0', '2019-11-25 10:11:35', null, '1', null, '1', '20191125101135817', '851103541f27a7aa025e4e849d71141ef654b4bb1574638089352', '96', '3.76');
INSERT INTO `sampling_media_order` VALUES ('2973', '0', '2019-11-25 10:13:35', null, '1', null, '1', '20191125101335922', '160642383f43cd65672948c187bc16a122eb3b4d1574499998543', '74', '3.05');
INSERT INTO `sampling_media_order` VALUES ('2974', '0', '2019-11-25 10:32:43', null, '1', null, '1', '20191125103243939', '128616732de022d315aa48ddbdb055ab75825f481574583043317', '36', '3.98');
INSERT INTO `sampling_media_order` VALUES ('2975', '0', '2019-11-25 10:38:00', null, '1', null, '1', '20191125103800191', '3171124574bb983b3b8c4003977f918a6995ed851574490047171', '53', '3.11');
INSERT INTO `sampling_media_order` VALUES ('2976', '0', '2019-11-25 10:41:37', null, '1', null, '1', '20191125104137577', '352125993ca7bbf237074042b6448076fd24ff951574585459865', '79', '3.45');
INSERT INTO `sampling_media_order` VALUES ('2977', '0', '2019-11-25 10:42:23', null, '1', null, '1', '20191125104223134', '352125993ca7bbf237074042b6448076fd24ff951574585459865', '65', '3.41');
INSERT INTO `sampling_media_order` VALUES ('2978', '0', '2019-11-25 10:42:42', null, '1', null, '1', '20191125104242532', '352125993ca7bbf237074042b6448076fd24ff951574585459865', '41', '3.48');
INSERT INTO `sampling_media_order` VALUES ('2979', '0', '2019-11-25 10:43:05', null, '1', null, '1', '20191125104305486', '352125993ca7bbf237074042b6448076fd24ff951574585459865', '92', '3.74');
INSERT INTO `sampling_media_order` VALUES ('2980', '0', '2019-11-25 10:43:31', null, '1', null, '1', '20191125104331975', '352125993ca7bbf237074042b6448076fd24ff951574585459865', '54', '3.84');
INSERT INTO `sampling_media_order` VALUES ('2981', '0', '2019-11-25 10:51:50', null, '1', null, '1', '20191125105150894', '67322942128186e3c4b84806a680c571a9db5ba21574580187718', '79', '3.52');
INSERT INTO `sampling_media_order` VALUES ('2982', '0', '2019-11-25 10:52:15', null, '1', null, '1', '20191125105215189', '67322942128186e3c4b84806a680c571a9db5ba21574580187718', '79', '3.11');
INSERT INTO `sampling_media_order` VALUES ('2983', '0', '2019-11-25 10:52:35', null, '1', null, '1', '20191125105235601', '67322942128186e3c4b84806a680c571a9db5ba21574580187718', '65', '3.75');
INSERT INTO `sampling_media_order` VALUES ('2984', '0', '2019-11-25 10:57:16', null, '1', null, '1', '20191125105716305', '3171124574bb983b3b8c4003977f918a6995ed851574490047171', '16', '3.28');
INSERT INTO `sampling_media_order` VALUES ('2985', '0', '2019-11-25 10:58:34', null, '1', null, '1', '20191125105834361', '3171124574bb983b3b8c4003977f918a6995ed851574490047171', '62', '3.54');
INSERT INTO `sampling_media_order` VALUES ('2986', '0', '2019-11-25 11:21:23', null, '1', null, '1', '20191125112123769', '18698191d5c3b8cbb5e445e283302dfb47e208cb1574587585616', '60', '3.37');
INSERT INTO `sampling_media_order` VALUES ('2987', '0', '2019-11-25 11:23:28', null, '1', null, '1', '20191125112328838', '18698191d5c3b8cbb5e445e283302dfb47e208cb1574587585616', '52', '3.33');
INSERT INTO `sampling_media_order` VALUES ('2988', '0', '2019-11-25 11:24:24', null, '1', null, '1', '20191125112424162', '18698191d5c3b8cbb5e445e283302dfb47e208cb1574587585616', '94', '3.50');
INSERT INTO `sampling_media_order` VALUES ('2989', '0', '2019-11-25 11:25:17', null, '1', null, '1', '20191125112517867', '18698191d5c3b8cbb5e445e283302dfb47e208cb1574587585616', '92', '3.85');
INSERT INTO `sampling_media_order` VALUES ('2990', '0', '2019-11-25 11:25:23', null, '1', null, '1', '20191125112523228', '50209474e03f636ae7694308829fb56bb0cfc50a1574652222792', '94', '3.99');
INSERT INTO `sampling_media_order` VALUES ('2991', '0', '2019-11-25 11:26:52', null, '1', null, '1', '20191125112652510', '224555769b6d22fc8d9d47a99ee82d216e1e18891574587295773', '80', '3.53');
INSERT INTO `sampling_media_order` VALUES ('2992', '0', '2019-11-25 11:28:02', null, '1', null, '1', '20191125112802496', '224555769b6d22fc8d9d47a99ee82d216e1e18891574587295773', '92', '3.61');
INSERT INTO `sampling_media_order` VALUES ('2993', '0', '2019-11-25 11:28:24', null, '1', null, '1', '20191125112824937', '35639994e1bed2c2305a4e4a830bc3ce605ff58e1574609988546', '107', '3.39');
INSERT INTO `sampling_media_order` VALUES ('2994', '0', '2019-11-25 11:29:27', null, '1', null, '1', '20191125112927651', '35639994e1bed2c2305a4e4a830bc3ce605ff58e1574609988546', '84', '3.42');
INSERT INTO `sampling_media_order` VALUES ('2995', '0', '2019-11-25 11:30:03', null, '1', null, '1', '20191125113003583', '35639994e1bed2c2305a4e4a830bc3ce605ff58e1574609988546', '41', '3.71');
INSERT INTO `sampling_media_order` VALUES ('2996', '0', '2019-11-25 11:30:50', null, '1', null, '1', '20191125113050746', '72712576f536d4a5d48a4f84acfde4a729f22fce1574652631676', '79', '3.15');
INSERT INTO `sampling_media_order` VALUES ('2997', '0', '2019-11-25 11:31:46', null, '1', null, '1', '20191125113146245', '35639994e1bed2c2305a4e4a830bc3ce605ff58e1574609988546', '52', '3.21');
INSERT INTO `sampling_media_order` VALUES ('2998', '0', '2019-11-25 11:33:08', null, '1', null, '1', '20191125113308177', '722058000c11420bb34f471c88e7bc4e82179f3c1574652777790', '79', '3.95');
INSERT INTO `sampling_media_order` VALUES ('2999', '0', '2019-11-25 11:34:16', null, '1', null, '1', '20191125113416611', '722058000c11420bb34f471c88e7bc4e82179f3c1574652777790', '79', '3.25');
INSERT INTO `sampling_media_order` VALUES ('3000', '0', '2019-11-25 11:38:28', null, '1', null, '1', '20191125113828741', '71520953bcc8bdcadd854f79a85f3c5abf3675e21574653062690', '30', '3.52');
INSERT INTO `sampling_media_order` VALUES ('3001', '0', '2019-11-25 11:44:16', null, '1', null, '1', '20191125114416236', '6616900263f49767efb346208c837bee73716e661574653427534', '96', '3.74');
INSERT INTO `sampling_media_order` VALUES ('3002', '0', '2019-11-25 11:45:10', null, '1', null, '1', '20191125114510253', '6616900263f49767efb346208c837bee73716e661574653427534', '36', '3.76');
INSERT INTO `sampling_media_order` VALUES ('3003', '0', '2019-11-25 11:45:37', null, '1', null, '1', '20191125114537268', '18698191d5c3b8cbb5e445e283302dfb47e208cb1574587585616', '106', '3.31');
INSERT INTO `sampling_media_order` VALUES ('3004', '0', '2019-11-25 11:45:50', null, '1', null, '1', '20191125114550285', '33944078fdf53b43d27a493390bcf71e53701f991574653532784', '79', '3.34');
INSERT INTO `sampling_media_order` VALUES ('3005', '0', '2019-11-25 11:46:16', null, '1', null, '1', '20191125114616832', '18698191d5c3b8cbb5e445e283302dfb47e208cb1574587585616', '98', '3.87');
INSERT INTO `sampling_media_order` VALUES ('3006', '0', '2019-11-25 11:46:51', null, '1', null, '1', '20191125114651774', '33944078fdf53b43d27a493390bcf71e53701f991574653532784', '52', '3.08');
INSERT INTO `sampling_media_order` VALUES ('3007', '0', '2019-11-25 11:47:02', null, '1', null, '1', '20191125114702857', '18698191d5c3b8cbb5e445e283302dfb47e208cb1574587585616', '54', '3.36');
INSERT INTO `sampling_media_order` VALUES ('3008', '0', '2019-11-25 11:54:55', null, '1', null, '1', '20191125115455173', '12239249e6bd52b3f61a4dd285d3ff39e88a10941574654040114', '94', '3.95');
INSERT INTO `sampling_media_order` VALUES ('3009', '0', '2019-11-25 11:55:03', null, '1', null, '1', '20191125115503567', '80290395686ed6a835584a88a78aef6b931540cd1573054608018', '28', '3.70');
INSERT INTO `sampling_media_order` VALUES ('3010', '0', '2019-11-25 12:05:12', null, '1', null, '1', '20191125120512326', '412354141dd15c3a526c49f8b2312086b34168481574646464920', '68', '3.73');
INSERT INTO `sampling_media_order` VALUES ('3011', '0', '2019-11-25 12:05:42', null, '1', null, '1', '20191125120542906', '412354141dd15c3a526c49f8b2312086b34168481574646464920', '99', '3.97');
INSERT INTO `sampling_media_order` VALUES ('3012', '0', '2019-11-25 12:06:38', null, '1', null, '1', '20191125120638707', '412354141dd15c3a526c49f8b2312086b34168481574646464920', '54', '3.64');
INSERT INTO `sampling_media_order` VALUES ('3013', '0', '2019-11-25 12:06:54', null, '1', null, '1', '20191125120654765', '398858384c472520fad14b689c01b00ca8fcd4401574654776749', '60', '3.76');
INSERT INTO `sampling_media_order` VALUES ('3014', '0', '2019-11-25 12:06:57', null, '1', null, '1', '20191125120657978', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '84', '3.52');
INSERT INTO `sampling_media_order` VALUES ('3015', '0', '2019-11-25 12:07:58', null, '1', null, '1', '20191125120758789', '467315941255dcb415864da08990050a436dde8e1574636489069', '36', '3.22');
INSERT INTO `sampling_media_order` VALUES ('3016', '0', '2019-11-25 12:08:27', null, '1', null, '1', '20191125120827976', '72382715382e94c15e4543bcae1b9a129dae96251574583194492', '80', '3.62');
INSERT INTO `sampling_media_order` VALUES ('3017', '0', '2019-11-25 12:08:53', null, '1', null, '1', '20191125120853732', '467315941255dcb415864da08990050a436dde8e1574636489069', '80', '3.46');
INSERT INTO `sampling_media_order` VALUES ('3018', '0', '2019-11-25 12:09:48', null, '1', null, '1', '20191125120948761', '467315941255dcb415864da08990050a436dde8e1574636489069', '96', '3.85');
INSERT INTO `sampling_media_order` VALUES ('3019', '0', '2019-11-25 12:10:41', null, '1', null, '1', '20191125121041490', '467315941255dcb415864da08990050a436dde8e1574636489069', '52', '3.84');
INSERT INTO `sampling_media_order` VALUES ('3020', '0', '2019-11-25 12:10:51', null, '1', null, '1', '20191125121051338', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '35', '3.36');
INSERT INTO `sampling_media_order` VALUES ('3021', '0', '2019-11-25 12:11:32', null, '1', null, '1', '20191125121132763', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '94', '3.99');
INSERT INTO `sampling_media_order` VALUES ('3022', '0', '2019-11-25 12:11:35', null, '1', null, '1', '20191125121135821', '467315941255dcb415864da08990050a436dde8e1574636489069', '36', '3.28');
INSERT INTO `sampling_media_order` VALUES ('3023', '0', '2019-11-25 12:11:38', null, '1', null, '1', '20191125121138329', '272653313ca98b998db24d08bed0681267dde7c11574587194067', '79', '3.30');
INSERT INTO `sampling_media_order` VALUES ('3024', '0', '2019-11-25 12:11:49', null, '1', null, '1', '20191125121149158', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '64', '3.28');
INSERT INTO `sampling_media_order` VALUES ('3025', '0', '2019-11-25 12:12:22', null, '1', null, '1', '20191125121222212', '467315941255dcb415864da08990050a436dde8e1574636489069', '38', '3.78');
INSERT INTO `sampling_media_order` VALUES ('3026', '0', '2019-11-25 12:12:44', null, '1', null, '1', '20191125121244636', '272653313ca98b998db24d08bed0681267dde7c11574587194067', '52', '3.17');
INSERT INTO `sampling_media_order` VALUES ('3027', '0', '2019-11-25 12:13:46', null, '1', null, '1', '20191125121346754', '467315941255dcb415864da08990050a436dde8e1574636489069', '42', '3.05');
INSERT INTO `sampling_media_order` VALUES ('3028', '0', '2019-11-25 12:15:15', null, '1', null, '1', '20191125121515519', '467315941255dcb415864da08990050a436dde8e1574636489069', '22', '3.51');
INSERT INTO `sampling_media_order` VALUES ('3029', '0', '2019-11-25 12:16:46', null, '1', null, '1', '20191125121646828', '467315941255dcb415864da08990050a436dde8e1574636489069', '89', '3.73');
INSERT INTO `sampling_media_order` VALUES ('3030', '0', '2019-11-25 12:17:36', null, '1', null, '1', '20191125121736331', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '49', '3.24');
INSERT INTO `sampling_media_order` VALUES ('3031', '0', '2019-11-25 12:17:48', null, '1', null, '1', '20191125121748899', '467315941255dcb415864da08990050a436dde8e1574636489069', '52', '3.21');
INSERT INTO `sampling_media_order` VALUES ('3032', '0', '2019-11-25 12:18:41', null, '1', null, '1', '20191125121841974', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '89', '3.15');
INSERT INTO `sampling_media_order` VALUES ('3033', '0', '2019-11-25 12:19:42', null, '1', null, '1', '20191125121942396', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '20', '3.17');
INSERT INTO `sampling_media_order` VALUES ('3034', '0', '2019-11-25 12:20:44', null, '1', null, '1', '20191125122044401', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '21', '3.99');
INSERT INTO `sampling_media_order` VALUES ('3035', '0', '2019-11-25 12:21:52', null, '1', null, '1', '20191125122152433', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '91', '3.71');
INSERT INTO `sampling_media_order` VALUES ('3036', '0', '2019-11-25 12:21:57', null, '1', null, '1', '20191125122157155', '557852109d224fad0512492d9a3df5dd5737a9101574097929356', '79', '3.88');
INSERT INTO `sampling_media_order` VALUES ('3037', '0', '2019-11-25 12:23:00', null, '1', null, '1', '20191125122300802', '557852109d224fad0512492d9a3df5dd5737a9101574097929356', '30', '3.28');
INSERT INTO `sampling_media_order` VALUES ('3038', '0', '2019-11-25 12:23:40', null, '1', null, '1', '20191125122340620', '557852109d224fad0512492d9a3df5dd5737a9101574097929356', '41', '3.38');
INSERT INTO `sampling_media_order` VALUES ('3039', '0', '2019-11-25 12:24:55', null, '1', null, '1', '20191125122455371', '752502612568d7e3702c4d2393dc14b9242253fa1574655701885', '52', '3.64');
INSERT INTO `sampling_media_order` VALUES ('3040', '0', '2019-11-25 12:27:30', null, '1', null, '1', '20191125122730693', '710355570995a26dfd9243848da1ae2dacc43f901574577026433', '94', '3.63');
INSERT INTO `sampling_media_order` VALUES ('3041', '0', '2019-11-25 12:28:19', null, '1', null, '1', '20191125122819998', '710355570995a26dfd9243848da1ae2dacc43f901574577026433', '65', '3.51');
INSERT INTO `sampling_media_order` VALUES ('3042', '0', '2019-11-25 12:28:45', null, '1', null, '1', '20191125122845501', '8755804611cd4e07cf8d4482b914fa592bcd9bbb1574573777803', '65', '3.96');
INSERT INTO `sampling_media_order` VALUES ('3043', '0', '2019-11-25 12:28:47', null, '1', null, '1', '20191125122847633', '710355570995a26dfd9243848da1ae2dacc43f901574577026433', '41', '3.14');
INSERT INTO `sampling_media_order` VALUES ('3044', '0', '2019-11-25 12:32:33', null, '1', null, '1', '20191125123233383', '74241238211c34e8454c418fba55e2361a062b481574656331236', '36', '3.51');
INSERT INTO `sampling_media_order` VALUES ('3045', '0', '2019-11-25 12:32:39', null, '1', null, '1', '20191125123239236', '752502612568d7e3702c4d2393dc14b9242253fa1574655701885', '96', '3.81');
INSERT INTO `sampling_media_order` VALUES ('3046', '0', '2019-11-25 12:43:37', null, '1', null, '1', '20191125124337388', '8494202111309fce600849f6996beaafacfe2d9c1574607597785', '65', '3.58');
INSERT INTO `sampling_media_order` VALUES ('3047', '0', '2019-11-25 12:43:41', null, '1', null, '1', '20191125124341675', '31117455068035637f74459291d61b7a300ccffc1574329670664', '95', '3.58');
INSERT INTO `sampling_media_order` VALUES ('3048', '0', '2019-11-25 12:44:28', null, '1', null, '1', '20191125124428820', '31117455068035637f74459291d61b7a300ccffc1574329670664', '54', '3.06');
INSERT INTO `sampling_media_order` VALUES ('3049', '0', '2019-11-25 12:45:35', null, '1', null, '1', '20191125124535300', '31117455068035637f74459291d61b7a300ccffc1574329670664', '54', '3.23');
INSERT INTO `sampling_media_order` VALUES ('3050', '0', '2019-11-25 12:47:27', null, '1', null, '1', '20191125124727305', '8494202111309fce600849f6996beaafacfe2d9c1574607597785', '55', '3.24');
INSERT INTO `sampling_media_order` VALUES ('3051', '0', '2019-11-25 12:51:02', null, '1', null, '1', '20191125125102635', '8755804611cd4e07cf8d4482b914fa592bcd9bbb1574573777803', '86', '3.44');
INSERT INTO `sampling_media_order` VALUES ('3052', '0', '2019-11-25 12:53:21', null, '1', null, '1', '20191125125321577', '8494202111309fce600849f6996beaafacfe2d9c1574607597785', '60', '3.32');
INSERT INTO `sampling_media_order` VALUES ('3053', '0', '2019-11-25 12:54:08', null, '1', null, '1', '20191125125408558', '224555769b6d22fc8d9d47a99ee82d216e1e18891574587295773', '54', '3.30');
INSERT INTO `sampling_media_order` VALUES ('3054', '0', '2019-11-25 13:01:20', null, '1', null, '1', '20191125130120633', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '85', '3.19');
INSERT INTO `sampling_media_order` VALUES ('3055', '0', '2019-11-25 13:01:29', null, '1', null, '1', '20191125130129137', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '85', '3.32');
INSERT INTO `sampling_media_order` VALUES ('3056', '0', '2019-11-25 13:02:40', null, '1', null, '1', '20191125130240386', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '24', '3.78');
INSERT INTO `sampling_media_order` VALUES ('3057', '0', '2019-11-25 13:02:50', null, '1', null, '1', '20191125130250287', '72382715382e94c15e4543bcae1b9a129dae96251574583194492', '38', '3.96');
INSERT INTO `sampling_media_order` VALUES ('3058', '0', '2019-11-25 13:04:12', null, '1', null, '1', '20191125130412807', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '105', '3.53');
INSERT INTO `sampling_media_order` VALUES ('3059', '0', '2019-11-25 13:07:21', null, '1', null, '1', '20191125130721215', '72987352c4aa2882d6b14db69f878c3d0c4c11501574604409680', '96', '3.21');
INSERT INTO `sampling_media_order` VALUES ('3060', '0', '2019-11-25 13:08:49', null, '1', null, '1', '20191125130849392', '72987352c4aa2882d6b14db69f878c3d0c4c11501574604409680', '94', '3.44');
INSERT INTO `sampling_media_order` VALUES ('3061', '0', '2019-11-25 13:16:03', null, '1', null, '1', '20191125131603302', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '41', '3.92');
INSERT INTO `sampling_media_order` VALUES ('3062', '0', '2019-11-25 13:16:03', null, '1', null, '1', '20191125131603163', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '41', '3.86');
INSERT INTO `sampling_media_order` VALUES ('3063', '0', '2019-11-25 13:21:57', null, '1', null, '1', '20191125132157661', '', '41', '3.79');
INSERT INTO `sampling_media_order` VALUES ('3064', '0', '2019-11-25 13:28:52', null, '1', null, '1', '20191125132852382', '74796403dcccbc0b80b643a1b1b36d7cd8eee4e81574659483431', '65', '3.94');
INSERT INTO `sampling_media_order` VALUES ('3065', '0', '2019-11-25 13:30:03', null, '1', null, '1', '20191125133003278', '73000226accd1b58a4d848b39cee9d8a1afbffba1573221184813', '106', '3.27');
INSERT INTO `sampling_media_order` VALUES ('3066', '0', '2019-11-25 13:51:05', null, '1', null, '1', '20191125135105538', '283860296120b036745b4ec19140dbe8422728ea1574661001380', '36', '3.12');
INSERT INTO `sampling_media_order` VALUES ('3067', '0', '2019-11-25 13:54:31', null, '1', null, '1', '20191125135431866', '643310887ce7acf5b7c348978b29a5826bf2a1911574661153011', '83', '3.07');
INSERT INTO `sampling_media_order` VALUES ('3068', '0', '2019-11-25 13:56:31', null, '1', null, '1', '20191125135631712', '896031591a27c448b6754cd095328644b13cf8fd1574661367740', '106', '3.86');
INSERT INTO `sampling_media_order` VALUES ('3069', '0', '2019-11-25 13:57:02', null, '1', null, '1', '20191125135702539', '896031591a27c448b6754cd095328644b13cf8fd1574661367740', '41', '3.53');
INSERT INTO `sampling_media_order` VALUES ('3070', '0', '2019-11-25 13:57:45', null, '1', null, '1', '20191125135745530', '896031591a27c448b6754cd095328644b13cf8fd1574661367740', '54', '3.50');
INSERT INTO `sampling_media_order` VALUES ('3071', '0', '2019-11-25 13:58:11', null, '1', null, '1', '20191125135811242', '896031591a27c448b6754cd095328644b13cf8fd1574661367740', '29', '3.99');
INSERT INTO `sampling_media_order` VALUES ('3072', '0', '2019-11-25 13:59:35', null, '1', null, '1', '20191125135935707', '68980013637b9cf0c2914b3c8a3d0181cc1e08f71574661542852', '92', '3.21');
INSERT INTO `sampling_media_order` VALUES ('3073', '0', '2019-11-25 14:05:47', null, '1', null, '1', '20191125140547629', '33944078fdf53b43d27a493390bcf71e53701f991574653532784', '79', '3.70');
INSERT INTO `sampling_media_order` VALUES ('3074', '0', '2019-11-25 14:06:36', null, '1', null, '1', '20191125140636686', '763039336d9dc4b5dd4c4cc8bb875fda2d9fe2261574661952659', '79', '3.50');
INSERT INTO `sampling_media_order` VALUES ('3075', '0', '2019-11-25 14:07:22', null, '1', null, '1', '20191125140722523', '763039336d9dc4b5dd4c4cc8bb875fda2d9fe2261574661952659', '92', '3.55');
INSERT INTO `sampling_media_order` VALUES ('3076', '0', '2019-11-25 14:07:41', null, '1', null, '1', '20191125140741888', '763039336d9dc4b5dd4c4cc8bb875fda2d9fe2261574661952659', '28', '3.08');
INSERT INTO `sampling_media_order` VALUES ('3077', '0', '2019-11-25 14:08:09', null, '1', null, '1', '20191125140809485', '512264384dde52f9f27447b8b4ecc468103742bd1574662049648', '65', '3.18');
INSERT INTO `sampling_media_order` VALUES ('3078', '0', '2019-11-25 14:08:48', null, '1', null, '1', '20191125140848722', '152151172d2054ea737340e2b8e3eb8037603bc21574662102000', '96', '3.21');
INSERT INTO `sampling_media_order` VALUES ('3079', '0', '2019-11-25 14:08:48', null, '1', null, '1', '20191125140848130', '512264384dde52f9f27447b8b4ecc468103742bd1574662049648', '41', '3.88');
INSERT INTO `sampling_media_order` VALUES ('3080', '0', '2019-11-25 14:09:24', null, '1', null, '1', '20191125140924769', '152151172d2054ea737340e2b8e3eb8037603bc21574662102000', '85', '3.31');
INSERT INTO `sampling_media_order` VALUES ('3081', '0', '2019-11-25 14:13:23', null, '1', null, '1', '20191125141323425', '512264384dde52f9f27447b8b4ecc468103742bd1574662049648', '76', '3.08');
INSERT INTO `sampling_media_order` VALUES ('3082', '0', '2019-11-25 14:22:42', null, '1', null, '1', '20191125142242166', '61772680b238495929a84acea717106962ddec651574662933249', '79', '3.90');
INSERT INTO `sampling_media_order` VALUES ('3083', '0', '2019-11-25 14:25:30', null, '1', null, '1', '20191125142530304', '5029600887f09a96f9164de1b06333e39836d5351574605669743', '96', '3.14');
INSERT INTO `sampling_media_order` VALUES ('3084', '0', '2019-11-25 14:25:31', null, '1', null, '1', '20191125142531345', '67322942128186e3c4b84806a680c571a9db5ba21574580187718', '94', '3.36');
INSERT INTO `sampling_media_order` VALUES ('3085', '0', '2019-11-25 14:26:19', null, '1', null, '1', '20191125142619685', '89816439ac46fd4c7fa24b168e065e92974ce9fa1574663141482', '94', '3.87');
INSERT INTO `sampling_media_order` VALUES ('3086', '0', '2019-11-25 14:27:18', null, '1', null, '1', '20191125142718932', '5029600887f09a96f9164de1b06333e39836d5351574605669743', '54', '3.97');
INSERT INTO `sampling_media_order` VALUES ('3087', '0', '2019-11-25 14:27:31', null, '1', null, '1', '20191125142731347', '67322942128186e3c4b84806a680c571a9db5ba21574580187718', '41', '3.40');
INSERT INTO `sampling_media_order` VALUES ('3088', '0', '2019-11-25 14:28:16', null, '1', null, '1', '20191125142816674', '67322942128186e3c4b84806a680c571a9db5ba21574580187718', '65', '3.30');
INSERT INTO `sampling_media_order` VALUES ('3089', '0', '2019-11-25 14:28:37', null, '1', null, '1', '20191125142837799', '5029600887f09a96f9164de1b06333e39836d5351574605669743', '65', '3.98');
INSERT INTO `sampling_media_order` VALUES ('3090', '0', '2019-11-25 14:28:41', null, '1', null, '1', '20191125142841639', '67322942128186e3c4b84806a680c571a9db5ba21574580187718', '41', '3.33');
INSERT INTO `sampling_media_order` VALUES ('3091', '0', '2019-11-25 14:29:33', null, '1', null, '1', '20191125142933589', '82114772725dd6ea0c8b468e8ea7b27b115aea3d1574663367311', '79', '3.33');
INSERT INTO `sampling_media_order` VALUES ('3092', '0', '2019-11-25 14:35:34', null, '1', null, '1', '20191125143534365', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '57', '3.53');
INSERT INTO `sampling_media_order` VALUES ('3093', '0', '2019-11-25 14:36:01', null, '1', null, '1', '20191125143601568', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '61', '3.70');
INSERT INTO `sampling_media_order` VALUES ('3094', '0', '2019-11-25 14:37:14', null, '1', null, '1', '20191125143714288', '98163960f9b89cdf92bc4fe38d29a5b2d1e856011573109983178', '48', '3.38');
INSERT INTO `sampling_media_order` VALUES ('3095', '0', '2019-11-25 14:38:18', null, '1', null, '1', '20191125143818676', '98163960f9b89cdf92bc4fe38d29a5b2d1e856011573109983178', '86', '3.45');
INSERT INTO `sampling_media_order` VALUES ('3096', '0', '2019-11-25 14:39:23', null, '1', null, '1', '20191125143923592', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '90', '3.64');
INSERT INTO `sampling_media_order` VALUES ('3097', '0', '2019-11-25 14:45:29', null, '1', null, '1', '20191125144529983', '313028475976cfab70584caabc074c7d6efdf6ad1574664306951', '54', '3.33');
INSERT INTO `sampling_media_order` VALUES ('3098', '0', '2019-11-25 14:45:35', null, '1', null, '1', '20191125144535902', '35981564529833cebe1a48f78fc1b747bb01658d1574664327726', '79', '3.11');
INSERT INTO `sampling_media_order` VALUES ('3099', '0', '2019-11-25 14:46:28', null, '1', null, '1', '20191125144628625', '8549820287d5c4c79c3447e19cf2e4b123ff6eb21574605264511', '52', '3.52');
INSERT INTO `sampling_media_order` VALUES ('3100', '0', '2019-11-25 15:07:11', null, '1', null, '1', '20191125150711193', '519940212afb6879cf9b41688c8a94b93df2f8161574665546216', '65', '3.38');
INSERT INTO `sampling_media_order` VALUES ('3101', '0', '2019-11-25 15:08:14', null, '1', null, '1', '20191125150814462', '519940212afb6879cf9b41688c8a94b93df2f8161574665546216', '55', '3.36');
INSERT INTO `sampling_media_order` VALUES ('3102', '0', '2019-11-25 15:09:27', null, '1', null, '1', '20191125150927256', '35981564529833cebe1a48f78fc1b747bb01658d1574664327726', '41', '3.95');
INSERT INTO `sampling_media_order` VALUES ('3103', '0', '2019-11-25 15:09:33', null, '1', null, '1', '20191125150933411', '519940212afb6879cf9b41688c8a94b93df2f8161574665546216', '55', '3.39');
INSERT INTO `sampling_media_order` VALUES ('3104', '0', '2019-11-25 15:09:58', null, '1', null, '1', '20191125150958625', '519940212afb6879cf9b41688c8a94b93df2f8161574665546216', '55', '3.70');
INSERT INTO `sampling_media_order` VALUES ('3105', '0', '2019-11-25 15:10:59', null, '1', null, '1', '20191125151059784', '813911758272bc9a5e1b48d7b8598614b1037f6b1574573313755', '52', '3.88');
INSERT INTO `sampling_media_order` VALUES ('3106', '0', '2019-11-25 15:11:02', null, '1', null, '1', '20191125151102277', '519940212afb6879cf9b41688c8a94b93df2f8161574665546216', '63', '3.39');
INSERT INTO `sampling_media_order` VALUES ('3107', '0', '2019-11-25 15:11:37', null, '1', null, '1', '20191125151137669', '813911758272bc9a5e1b48d7b8598614b1037f6b1574573313755', '74', '3.84');
INSERT INTO `sampling_media_order` VALUES ('3108', '0', '2019-11-25 15:11:42', null, '1', null, '1', '20191125151142681', '519940212afb6879cf9b41688c8a94b93df2f8161574665546216', '85', '3.75');
INSERT INTO `sampling_media_order` VALUES ('3109', '0', '2019-11-25 15:12:33', null, '1', null, '1', '20191125151233238', '519940212afb6879cf9b41688c8a94b93df2f8161574665546216', '65', '3.85');
INSERT INTO `sampling_media_order` VALUES ('3110', '0', '2019-11-25 15:16:40', null, '1', null, '1', '20191125151640514', '473997867a3a174340494a59bb18e84482dec6501574665511758', '84', '3.72');
INSERT INTO `sampling_media_order` VALUES ('3111', '0', '2019-11-25 15:23:17', null, '1', null, '1', '20191125152317469', '916416965594390221714bcbb0c9b2ad1ec2960f1574581543405', '96', '3.47');
INSERT INTO `sampling_media_order` VALUES ('3112', '0', '2019-11-25 15:44:46', null, '1', null, '1', '20191125154446434', '38839406c05b85c413d7472b91966f4c3ca385801574667879084', '106', '3.87');
INSERT INTO `sampling_media_order` VALUES ('3113', '0', '2019-11-25 15:52:27', null, '1', null, '1', '20191125155227861', '26240325131af464241d4d89b28820290f1a79941574638551036', '94', '3.62');
INSERT INTO `sampling_media_order` VALUES ('3114', '0', '2019-11-25 15:57:44', null, '1', null, '1', '20191125155744794', '670415519cc5921364a84ac2ac24d7a9e03aa4361574668634153', '52', '3.80');
INSERT INTO `sampling_media_order` VALUES ('3115', '0', '2019-11-25 15:58:09', null, '1', null, '1', '20191125155809148', '670415519cc5921364a84ac2ac24d7a9e03aa4361574668634153', '92', '3.94');
INSERT INTO `sampling_media_order` VALUES ('3116', '0', '2019-11-25 16:04:06', null, '1', null, '1', '20191125160406969', '869184272719d6c4a3414a279d63ff747b38d34a1574668995091', '36', '3.49');
INSERT INTO `sampling_media_order` VALUES ('3117', '0', '2019-11-25 16:15:28', null, '1', null, '1', '20191125161528399', '67805882120f2274e4fa41c5a0d061774782e0631574669717629', '96', '3.39');
INSERT INTO `sampling_media_order` VALUES ('3118', '0', '2019-11-25 16:16:14', null, '1', null, '1', '20191125161614758', '67805882120f2274e4fa41c5a0d061774782e0631574669717629', '65', '3.91');
INSERT INTO `sampling_media_order` VALUES ('3119', '0', '2019-11-25 16:20:09', null, '1', null, '1', '20191125162009613', '653852689419119282dd4b7a8bc772e80b5763261574669996050', '79', '3.51');
INSERT INTO `sampling_media_order` VALUES ('3120', '0', '2019-11-25 16:24:27', null, '1', null, '1', '20191125162427100', '141497993b906dbdfced48958fd69030b7cce17e1574670260291', '79', '3.09');
INSERT INTO `sampling_media_order` VALUES ('3121', '0', '2019-11-25 16:26:37', null, '1', null, '1', '20191125162637603', '928197798d371729fc0848d5b48be104a7ed5e5b1574670371894', '96', '3.53');
INSERT INTO `sampling_media_order` VALUES ('3122', '0', '2019-11-25 16:27:06', null, '1', null, '1', '20191125162706295', '928197798d371729fc0848d5b48be104a7ed5e5b1574670371894', '106', '3.31');
INSERT INTO `sampling_media_order` VALUES ('3123', '0', '2019-11-25 16:44:50', null, '1', null, '1', '20191125164450891', '56954964af54e94124dc4b02a8ab27587b6630b21574671436484', '94', '3.56');
INSERT INTO `sampling_media_order` VALUES ('3124', '0', '2019-11-25 16:52:39', null, '1', null, '1', '20191125165239983', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '60', '3.94');
INSERT INTO `sampling_media_order` VALUES ('3125', '0', '2019-11-25 16:53:09', null, '1', null, '1', '20191125165309176', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '49', '3.93');
INSERT INTO `sampling_media_order` VALUES ('3126', '0', '2019-11-25 17:00:07', null, '1', null, '1', '20191125170007993', '32196335216044b9d5154f9b9de5d19d0838a9b51574672387140', '79', '3.57');
INSERT INTO `sampling_media_order` VALUES ('3127', '0', '2019-11-25 17:00:23', null, '1', null, '1', '20191125170023379', '32196335216044b9d5154f9b9de5d19d0838a9b51574672387140', '65', '3.74');
INSERT INTO `sampling_media_order` VALUES ('3128', '0', '2019-11-25 17:01:01', null, '1', null, '1', '20191125170101818', '7748460161794b43f7ba465182d2d3b682b5b1bf1574672451033', '52', '3.61');
INSERT INTO `sampling_media_order` VALUES ('3129', '0', '2019-11-25 17:01:50', null, '1', null, '1', '20191125170150718', '90582930bf22f1cf2869443aa9e0ffa82923d5751574672494745', '52', '3.85');
INSERT INTO `sampling_media_order` VALUES ('3130', '0', '2019-11-25 17:02:21', null, '1', null, '1', '20191125170221918', '32196335216044b9d5154f9b9de5d19d0838a9b51574672387140', '41', '3.09');
INSERT INTO `sampling_media_order` VALUES ('3131', '0', '2019-11-25 17:03:35', null, '1', null, '1', '20191125170335751', '32196335216044b9d5154f9b9de5d19d0838a9b51574672387140', '80', '3.46');
INSERT INTO `sampling_media_order` VALUES ('3132', '0', '2019-11-25 17:06:13', null, '1', null, '1', '20191125170613250', '90582930bf22f1cf2869443aa9e0ffa82923d5751574672494745', '89', '3.83');
INSERT INTO `sampling_media_order` VALUES ('3133', '0', '2019-11-25 17:07:54', null, '1', null, '1', '20191125170754973', '90582930bf22f1cf2869443aa9e0ffa82923d5751574672494745', '12', '3.30');
INSERT INTO `sampling_media_order` VALUES ('3134', '0', '2019-11-25 17:09:20', null, '1', null, '1', '20191125170920130', '90582930bf22f1cf2869443aa9e0ffa82923d5751574672494745', '92', '3.21');
INSERT INTO `sampling_media_order` VALUES ('3135', '0', '2019-11-25 17:10:12', null, '1', null, '1', '20191125171012740', '90582930bf22f1cf2869443aa9e0ffa82923d5751574672494745', '52', '3.81');
INSERT INTO `sampling_media_order` VALUES ('3136', '0', '2019-11-25 17:11:56', null, '1', null, '1', '20191125171156720', '782459334f062ebafa324077b27eb594767ba52b1574673084319', '38', '3.35');
INSERT INTO `sampling_media_order` VALUES ('3137', '0', '2019-11-25 17:12:19', null, '1', null, '1', '20191125171219523', '782459334f062ebafa324077b27eb594767ba52b1574673084319', '30', '3.78');
INSERT INTO `sampling_media_order` VALUES ('3138', '0', '2019-11-25 17:19:29', null, '1', null, '1', '20191125171929191', '82114772725dd6ea0c8b468e8ea7b27b115aea3d1574663367311', '95', '3.42');
INSERT INTO `sampling_media_order` VALUES ('3139', '0', '2019-11-25 17:19:46', null, '1', null, '1', '20191125171946508', '82114772725dd6ea0c8b468e8ea7b27b115aea3d1574663367311', '52', '3.81');
INSERT INTO `sampling_media_order` VALUES ('3140', '0', '2019-11-25 17:21:43', null, '1', null, '1', '20191125172143897', '82824296c08fed4b00ee40a3ac8130bc91a7d6e31574673564022', '93', '3.69');
INSERT INTO `sampling_media_order` VALUES ('3141', '0', '2019-11-25 17:23:20', null, '1', null, '1', '20191125172320671', '36297661bdc3d0f20b5b4c09a9eb6ecf591d1c241574587626954', '55', '3.09');
INSERT INTO `sampling_media_order` VALUES ('3142', '0', '2019-11-25 17:30:22', null, '1', null, '1', '20191125173022207', '82824296c08fed4b00ee40a3ac8130bc91a7d6e31574673564022', '38', '3.47');
INSERT INTO `sampling_media_order` VALUES ('3143', '0', '2019-11-25 17:30:27', null, '1', null, '1', '20191125173027969', '451217145d2fd10b036548368376283d02b5fa4d1574674125690', '95', '3.22');
INSERT INTO `sampling_media_order` VALUES ('3144', '0', '2019-11-25 17:31:48', null, '1', null, '1', '20191125173148973', '451217145d2fd10b036548368376283d02b5fa4d1574674125690', '30', '3.45');
INSERT INTO `sampling_media_order` VALUES ('3145', '0', '2019-11-25 17:32:13', null, '1', null, '1', '20191125173213567', '82824296c08fed4b00ee40a3ac8130bc91a7d6e31574673564022', '60', '3.52');
INSERT INTO `sampling_media_order` VALUES ('3146', '0', '2019-11-25 17:32:41', null, '1', null, '1', '20191125173241481', '451217145d2fd10b036548368376283d02b5fa4d1574674125690', '61', '3.53');
INSERT INTO `sampling_media_order` VALUES ('3147', '0', '2019-11-25 17:33:04', null, '1', null, '1', '20191125173304159', '272653313ca98b998db24d08bed0681267dde7c11574587194067', '96', '3.76');
INSERT INTO `sampling_media_order` VALUES ('3148', '0', '2019-11-25 17:34:19', null, '1', null, '1', '20191125173419244', '90582930bf22f1cf2869443aa9e0ffa82923d5751574672494745', '52', '3.33');
INSERT INTO `sampling_media_order` VALUES ('3149', '0', '2019-11-25 17:34:40', null, '1', null, '1', '20191125173440118', '90582930bf22f1cf2869443aa9e0ffa82923d5751574672494745', '52', '3.96');
INSERT INTO `sampling_media_order` VALUES ('3150', '0', '2019-11-25 17:34:58', null, '1', null, '1', '20191125173458415', '90582930bf22f1cf2869443aa9e0ffa82923d5751574672494745', '52', '3.52');
INSERT INTO `sampling_media_order` VALUES ('3151', '0', '2019-11-25 17:36:12', null, '1', null, '1', '20191125173612777', '32196335216044b9d5154f9b9de5d19d0838a9b51574672387140', '94', '3.08');
INSERT INTO `sampling_media_order` VALUES ('3152', '0', '2019-11-25 17:37:30', null, '1', null, '1', '20191125173730347', '32196335216044b9d5154f9b9de5d19d0838a9b51574672387140', '76', '3.96');
INSERT INTO `sampling_media_order` VALUES ('3153', '0', '2019-11-25 17:38:40', null, '1', null, '1', '20191125173840224', '32196335216044b9d5154f9b9de5d19d0838a9b51574672387140', '17', '3.51');
INSERT INTO `sampling_media_order` VALUES ('3154', '0', '2019-11-25 17:39:43', null, '1', null, '1', '20191125173943312', '656318293bf42ed33c724b6e904407dd9db90fb21574674771999', '79', '3.88');
INSERT INTO `sampling_media_order` VALUES ('3155', '0', '2019-11-25 17:40:09', null, '1', null, '1', '20191125174009360', '32196335216044b9d5154f9b9de5d19d0838a9b51574672387140', '16', '3.37');
INSERT INTO `sampling_media_order` VALUES ('3156', '0', '2019-11-25 17:40:27', null, '1', null, '1', '20191125174027940', '32196335216044b9d5154f9b9de5d19d0838a9b51574672387140', '107', '3.84');
INSERT INTO `sampling_media_order` VALUES ('3157', '0', '2019-11-25 17:41:34', null, '1', null, '1', '20191125174134239', '32196335216044b9d5154f9b9de5d19d0838a9b51574672387140', '49', '3.53');
INSERT INTO `sampling_media_order` VALUES ('3158', '0', '2019-11-25 17:41:58', null, '1', null, '1', '20191125174158759', '8693814228a098d98e87436a803b74bab14b58e51574674787222', '57', '3.18');
INSERT INTO `sampling_media_order` VALUES ('3159', '0', '2019-11-25 17:43:44', null, '1', null, '1', '20191125174344772', '90582930bf22f1cf2869443aa9e0ffa82923d5751574672494745', '92', '3.06');
INSERT INTO `sampling_media_order` VALUES ('3160', '0', '2019-11-25 17:51:56', null, '1', null, '1', '20191125175156637', '31196223e7db3cb87bc044248203e12cfd17a3541574675485529', '46', '3.86');
INSERT INTO `sampling_media_order` VALUES ('3161', '0', '2019-11-25 17:52:26', null, '1', null, '1', '20191125175226305', '4033714287211b57e273443f9baf9db58c37b07f1574675531326', '52', '3.78');
INSERT INTO `sampling_media_order` VALUES ('3162', '0', '2019-11-25 17:52:38', null, '1', null, '1', '20191125175238207', '31196223e7db3cb87bc044248203e12cfd17a3541574675485529', '105', '3.46');
INSERT INTO `sampling_media_order` VALUES ('3163', '0', '2019-11-25 17:53:40', null, '1', null, '1', '20191125175340949', '4033714287211b57e273443f9baf9db58c37b07f1574675531326', '54', '3.33');
INSERT INTO `sampling_media_order` VALUES ('3164', '0', '2019-11-25 17:53:59', null, '1', null, '1', '20191125175359663', '90582930bf22f1cf2869443aa9e0ffa82923d5751574672494745', '80', '3.09');
INSERT INTO `sampling_media_order` VALUES ('3165', '0', '2019-11-25 17:54:00', null, '1', null, '1', '20191125175400974', '31196223e7db3cb87bc044248203e12cfd17a3541574675485529', '54', '3.63');
INSERT INTO `sampling_media_order` VALUES ('3166', '0', '2019-11-25 17:56:07', null, '1', null, '1', '20191125175607545', '31196223e7db3cb87bc044248203e12cfd17a3541574675485529', '49', '3.38');
INSERT INTO `sampling_media_order` VALUES ('3167', '0', '2019-11-25 18:00:01', null, '1', null, '1', '20191125180001519', '3953092723d695271e9d4d19bf4ae111342ef6541574675961213', '84', '3.08');
INSERT INTO `sampling_media_order` VALUES ('3168', '0', '2019-11-25 18:00:27', null, '1', null, '1', '20191125180027678', '31196223e7db3cb87bc044248203e12cfd17a3541574675485529', '65', '3.58');
INSERT INTO `sampling_media_order` VALUES ('3169', '0', '2019-11-25 18:03:15', null, '1', null, '1', '20191125180315166', '31196223e7db3cb87bc044248203e12cfd17a3541574675485529', '53', '3.20');
INSERT INTO `sampling_media_order` VALUES ('3170', '0', '2019-11-25 18:04:38', null, '1', null, '1', '20191125180438562', '31196223e7db3cb87bc044248203e12cfd17a3541574675485529', '55', '3.89');
INSERT INTO `sampling_media_order` VALUES ('3171', '0', '2019-11-25 18:06:35', null, '1', null, '1', '20191125180635686', '141497993b906dbdfced48958fd69030b7cce17e1574670260291', '79', '3.44');
INSERT INTO `sampling_media_order` VALUES ('3172', '0', '2019-11-25 18:07:24', null, '1', null, '1', '20191125180724786', '141497993b906dbdfced48958fd69030b7cce17e1574670260291', '65', '3.95');
INSERT INTO `sampling_media_order` VALUES ('3173', '0', '2019-11-25 18:07:29', null, '1', null, '1', '20191125180729791', '31196223e7db3cb87bc044248203e12cfd17a3541574675485529', '69', '3.71');
INSERT INTO `sampling_media_order` VALUES ('3174', '0', '2019-11-25 18:09:54', null, '1', null, '1', '20191125180954562', '31196223e7db3cb87bc044248203e12cfd17a3541574675485529', '53', '3.24');
INSERT INTO `sampling_media_order` VALUES ('3175', '0', '2019-11-25 18:10:42', null, '1', null, '1', '20191125181042820', '31196223e7db3cb87bc044248203e12cfd17a3541574675485529', '55', '3.76');
INSERT INTO `sampling_media_order` VALUES ('3176', '0', '2019-11-25 18:11:50', null, '1', null, '1', '20191125181150322', '72382715382e94c15e4543bcae1b9a129dae96251574583194492', '92', '3.24');
INSERT INTO `sampling_media_order` VALUES ('3177', '0', '2019-11-25 18:15:23', null, '1', null, '1', '20191125181523975', '47835381ac064d04367241acb052e06b041fe5031574676301506', '79', '3.93');
INSERT INTO `sampling_media_order` VALUES ('3178', '0', '2019-11-25 18:15:59', null, '1', null, '1', '20191125181559404', '47835381ac064d04367241acb052e06b041fe5031574676301506', '79', '3.29');
INSERT INTO `sampling_media_order` VALUES ('3179', '0', '2019-11-25 18:16:05', null, '1', null, '1', '20191125181605201', '47835381ac064d04367241acb052e06b041fe5031574676301506', '79', '3.82');
INSERT INTO `sampling_media_order` VALUES ('3180', '0', '2019-11-25 18:16:51', null, '1', null, '1', '20191125181651765', '47835381ac064d04367241acb052e06b041fe5031574676301506', '79', '3.74');
INSERT INTO `sampling_media_order` VALUES ('3181', '0', '2019-11-25 18:16:57', null, '1', null, '1', '20191125181657689', '', '54', '3.26');
INSERT INTO `sampling_media_order` VALUES ('3182', '0', '2019-11-25 18:20:04', null, '1', null, '1', '20191125182004304', '', '65', '3.17');
INSERT INTO `sampling_media_order` VALUES ('3183', '0', '2019-11-25 18:21:04', null, '1', null, '1', '20191125182104285', '87989738486dd4caaa5442c2b15ae8da161821691574580025958', '54', '3.96');
INSERT INTO `sampling_media_order` VALUES ('3184', '0', '2019-11-25 18:21:11', null, '1', null, '1', '20191125182111122', '', '86', '3.32');
INSERT INTO `sampling_media_order` VALUES ('3185', '0', '2019-11-25 18:24:10', null, '1', null, '1', '20191125182410977', '87989738486dd4caaa5442c2b15ae8da161821691574580025958', '54', '3.82');
INSERT INTO `sampling_media_order` VALUES ('3186', '0', '2019-11-25 18:25:24', null, '1', null, '1', '20191125182524345', '2938085959ca3fa3bb044e6d9f52d80f10ff6ff61573215539314', '79', '3.90');
INSERT INTO `sampling_media_order` VALUES ('3187', '0', '2019-11-25 18:27:22', null, '1', null, '1', '20191125182722554', '', '92', '3.47');
INSERT INTO `sampling_media_order` VALUES ('3188', '0', '2019-11-25 18:28:21', null, '1', null, '1', '20191125182821971', '', '92', '3.78');
INSERT INTO `sampling_media_order` VALUES ('3189', '0', '2019-11-25 18:29:57', null, '1', null, '1', '20191125182957910', '', '54', '3.05');
INSERT INTO `sampling_media_order` VALUES ('3190', '0', '2019-11-25 18:30:41', null, '1', null, '1', '20191125183041617', '', '54', '3.58');
INSERT INTO `sampling_media_order` VALUES ('3191', '0', '2019-11-25 18:31:17', null, '1', null, '1', '20191125183117898', '473997867a3a174340494a59bb18e84482dec6501574665511758', '95', '3.87');
INSERT INTO `sampling_media_order` VALUES ('3192', '0', '2019-11-25 18:31:49', null, '1', null, '1', '20191125183149584', '473997867a3a174340494a59bb18e84482dec6501574665511758', '64', '3.17');
INSERT INTO `sampling_media_order` VALUES ('3193', '0', '2019-11-25 18:32:05', null, '1', null, '1', '20191125183205417', '473997867a3a174340494a59bb18e84482dec6501574665511758', '16', '3.89');
INSERT INTO `sampling_media_order` VALUES ('3194', '0', '2019-11-25 18:32:35', null, '1', null, '1', '20191125183235667', '896031591a27c448b6754cd095328644b13cf8fd1574661367740', '25', '3.17');
INSERT INTO `sampling_media_order` VALUES ('3195', '0', '2019-11-25 18:33:11', null, '1', null, '1', '20191125183311563', '473997867a3a174340494a59bb18e84482dec6501574665511758', '23', '3.28');
INSERT INTO `sampling_media_order` VALUES ('3196', '0', '2019-11-25 18:33:25', null, '1', null, '1', '20191125183325889', '896031591a27c448b6754cd095328644b13cf8fd1574661367740', '92', '3.21');
INSERT INTO `sampling_media_order` VALUES ('3197', '0', '2019-11-25 18:34:11', null, '1', null, '1', '20191125183411100', '896031591a27c448b6754cd095328644b13cf8fd1574661367740', '54', '3.95');
INSERT INTO `sampling_media_order` VALUES ('3198', '0', '2019-11-25 18:34:52', null, '1', null, '1', '20191125183452592', '896031591a27c448b6754cd095328644b13cf8fd1574661367740', '41', '3.69');
INSERT INTO `sampling_media_order` VALUES ('3199', '0', '2019-11-25 18:35:12', null, '1', null, '1', '20191125183512571', '896031591a27c448b6754cd095328644b13cf8fd1574661367740', '65', '3.81');
INSERT INTO `sampling_media_order` VALUES ('3200', '0', '2019-11-25 18:35:59', null, '1', null, '1', '20191125183559137', '896031591a27c448b6754cd095328644b13cf8fd1574661367740', '86', '3.20');
INSERT INTO `sampling_media_order` VALUES ('3201', '0', '2019-11-25 18:36:44', null, '1', null, '1', '20191125183644199', '896031591a27c448b6754cd095328644b13cf8fd1574661367740', '49', '3.46');
INSERT INTO `sampling_media_order` VALUES ('3202', '0', '2019-11-25 18:37:12', null, '1', null, '1', '20191125183712534', '896031591a27c448b6754cd095328644b13cf8fd1574661367740', '23', '3.84');
INSERT INTO `sampling_media_order` VALUES ('3203', '0', '2019-11-25 18:38:01', null, '1', null, '1', '20191125183801279', '896031591a27c448b6754cd095328644b13cf8fd1574661367740', '29', '3.29');
INSERT INTO `sampling_media_order` VALUES ('3204', '0', '2019-11-25 18:38:56', null, '1', null, '1', '20191125183856427', '896031591a27c448b6754cd095328644b13cf8fd1574661367740', '49', '3.90');
INSERT INTO `sampling_media_order` VALUES ('3205', '0', '2019-11-25 18:40:27', null, '1', null, '1', '20191125184027603', '89850203223f3c61080c4253991fa58b9709251d1574678394818', '52', '3.16');
INSERT INTO `sampling_media_order` VALUES ('3206', '0', '2019-11-25 18:41:17', null, '1', null, '1', '20191125184117174', '89850203223f3c61080c4253991fa58b9709251d1574678394818', '65', '3.54');
INSERT INTO `sampling_media_order` VALUES ('3207', '0', '2019-11-25 18:41:49', null, '1', null, '1', '20191125184149245', '89850203223f3c61080c4253991fa58b9709251d1574678394818', '65', '3.39');
INSERT INTO `sampling_media_order` VALUES ('3208', '0', '2019-11-25 18:42:00', null, '1', null, '1', '20191125184200932', '89850203223f3c61080c4253991fa58b9709251d1574678394818', '92', '3.32');
INSERT INTO `sampling_media_order` VALUES ('3209', '0', '2019-11-25 18:42:48', null, '1', null, '1', '20191125184248546', '89850203223f3c61080c4253991fa58b9709251d1574678394818', '49', '3.75');
INSERT INTO `sampling_media_order` VALUES ('3210', '0', '2019-11-25 18:43:42', null, '1', null, '1', '20191125184342443', '89850203223f3c61080c4253991fa58b9709251d1574678394818', '54', '3.65');
INSERT INTO `sampling_media_order` VALUES ('3211', '0', '2019-11-25 18:46:16', null, '1', null, '1', '20191125184616941', '15244923909c04c399ce4bb8bc66e913ff8367a61574678739095', '62', '3.18');
INSERT INTO `sampling_media_order` VALUES ('3212', '0', '2019-11-25 18:51:03', null, '1', null, '1', '20191125185103160', '295232591751e413026742a0b10f62b1786a30ed1573481520448', '80', '3.18');
INSERT INTO `sampling_media_order` VALUES ('3213', '0', '2019-11-25 18:53:22', null, '1', null, '1', '20191125185322376', '295232591751e413026742a0b10f62b1786a30ed1573481520448', '98', '3.50');
INSERT INTO `sampling_media_order` VALUES ('3214', '0', '2019-11-25 18:59:52', null, '1', null, '1', '20191125185952746', '85434933d1bf1516fcb74f8aaae3697a8e564d451574679572949', '79', '3.33');
INSERT INTO `sampling_media_order` VALUES ('3215', '0', '2019-11-25 19:11:00', null, '1', null, '1', '20191125191100104', '7719564323501979e3f243ebb8dae1d2cd44cf311574680228233', '52', '3.41');
INSERT INTO `sampling_media_order` VALUES ('3216', '0', '2019-11-25 19:16:12', null, '1', null, '1', '20191125191612891', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '36', '3.08');
INSERT INTO `sampling_media_order` VALUES ('3217', '0', '2019-11-25 19:18:09', null, '1', null, '1', '20191125191809222', '352125993ca7bbf237074042b6448076fd24ff951574585459865', '64', '3.90');
INSERT INTO `sampling_media_order` VALUES ('3218', '0', '2019-11-25 19:18:29', null, '1', null, '1', '20191125191829778', '352125993ca7bbf237074042b6448076fd24ff951574585459865', '92', '3.13');
INSERT INTO `sampling_media_order` VALUES ('3219', '0', '2019-11-25 19:25:59', null, '1', null, '1', '20191125192559278', '634245744949edfdac6e4982a5c4b77871ca86da1574681098534', '107', '3.81');
INSERT INTO `sampling_media_order` VALUES ('3220', '0', '2019-11-25 19:30:48', null, '1', null, '1', '20191125193048671', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '65', '3.54');
INSERT INTO `sampling_media_order` VALUES ('3221', '0', '2019-11-25 19:31:09', null, '1', null, '1', '20191125193109955', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '49', '3.06');
INSERT INTO `sampling_media_order` VALUES ('3222', '0', '2019-11-25 19:32:39', null, '1', null, '1', '20191125193239575', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '88', '3.42');
INSERT INTO `sampling_media_order` VALUES ('3223', '0', '2019-11-25 19:47:51', null, '1', null, '1', '20191125194751235', '26817496343c97e1fe3742dabec2e54259663c251574682458617', '36', '3.25');
INSERT INTO `sampling_media_order` VALUES ('3224', '0', '2019-11-25 19:50:11', null, '1', null, '1', '20191125195011600', '36297661bdc3d0f20b5b4c09a9eb6ecf591d1c241574587626954', '35', '3.15');
INSERT INTO `sampling_media_order` VALUES ('3225', '0', '2019-11-25 19:50:25', null, '1', null, '1', '20191125195025915', '89371808755f71790f46461db63615e0e8b690611574682594810', '52', '3.56');
INSERT INTO `sampling_media_order` VALUES ('3226', '0', '2019-11-25 19:51:24', null, '1', null, '1', '20191125195124683', '89371808755f71790f46461db63615e0e8b690611574682594810', '84', '3.22');
INSERT INTO `sampling_media_order` VALUES ('3227', '0', '2019-11-25 20:03:40', null, '1', null, '1', '20191125200340317', '656318293bf42ed33c724b6e904407dd9db90fb21574674771999', '84', '3.09');
INSERT INTO `sampling_media_order` VALUES ('3228', '0', '2019-11-25 20:04:05', null, '1', null, '1', '20191125200405386', '656318293bf42ed33c724b6e904407dd9db90fb21574674771999', '96', '3.97');
INSERT INTO `sampling_media_order` VALUES ('3229', '0', '2019-11-25 20:04:51', null, '1', null, '1', '20191125200451409', '656318293bf42ed33c724b6e904407dd9db90fb21574674771999', '79', '3.12');
INSERT INTO `sampling_media_order` VALUES ('3230', '0', '2019-11-25 20:05:57', null, '1', null, '1', '20191125200557864', '47835381ac064d04367241acb052e06b041fe5031574676301506', '38', '3.08');
INSERT INTO `sampling_media_order` VALUES ('3231', '0', '2019-11-25 20:06:35', null, '1', null, '1', '20191125200635532', '656318293bf42ed33c724b6e904407dd9db90fb21574674771999', '53', '3.91');
INSERT INTO `sampling_media_order` VALUES ('3232', '0', '2019-11-25 20:14:52', null, '1', null, '1', '20191125201452286', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '54', '3.77');
INSERT INTO `sampling_media_order` VALUES ('3233', '0', '2019-11-25 20:23:12', null, '1', null, '1', '20191125202312513', '67383471b681a3c238e74af183a5e3f2901871e21574653507776', '52', '3.16');
INSERT INTO `sampling_media_order` VALUES ('3234', '0', '2019-11-25 20:25:30', null, '1', null, '1', '20191125202530726', '67383471b681a3c238e74af183a5e3f2901871e21574653507776', '96', '3.62');
INSERT INTO `sampling_media_order` VALUES ('3235', '0', '2019-11-25 20:26:48', null, '1', null, '1', '20191125202648171', '67383471b681a3c238e74af183a5e3f2901871e21574653507776', '106', '3.82');
INSERT INTO `sampling_media_order` VALUES ('3236', '0', '2019-11-25 20:27:43', null, '1', null, '1', '20191125202743200', '67383471b681a3c238e74af183a5e3f2901871e21574653507776', '36', '3.21');
INSERT INTO `sampling_media_order` VALUES ('3237', '0', '2019-11-25 20:28:40', null, '1', null, '1', '20191125202840222', '67383471b681a3c238e74af183a5e3f2901871e21574653507776', '54', '3.70');
INSERT INTO `sampling_media_order` VALUES ('3238', '0', '2019-11-25 20:30:01', null, '1', null, '1', '20191125203001726', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '79', '3.97');
INSERT INTO `sampling_media_order` VALUES ('3239', '0', '2019-11-25 20:38:05', null, '1', null, '1', '20191125203805556', '84827515a8d7c8b1b4a746f9bb91c97341c27b651574586534782', '79', '3.38');
INSERT INTO `sampling_media_order` VALUES ('3240', '0', '2019-11-25 20:38:52', null, '1', null, '1', '20191125203852690', '75290325a29c0b39b6d74739924184d7185a516d1574685522332', '79', '3.94');
INSERT INTO `sampling_media_order` VALUES ('3241', '0', '2019-11-25 20:39:08', null, '1', null, '1', '20191125203908965', '75290325a29c0b39b6d74739924184d7185a516d1574685522332', '54', '3.67');
INSERT INTO `sampling_media_order` VALUES ('3242', '0', '2019-11-25 20:39:09', null, '1', null, '1', '20191125203909582', '84827515a8d7c8b1b4a746f9bb91c97341c27b651574586534782', '49', '3.53');
INSERT INTO `sampling_media_order` VALUES ('3243', '0', '2019-11-25 20:39:56', null, '1', null, '1', '20191125203956568', '75290325a29c0b39b6d74739924184d7185a516d1574685522332', '54', '3.50');
INSERT INTO `sampling_media_order` VALUES ('3244', '0', '2019-11-25 20:41:06', null, '1', null, '1', '20191125204106851', '84827515a8d7c8b1b4a746f9bb91c97341c27b651574586534782', '98', '3.75');
INSERT INTO `sampling_media_order` VALUES ('3245', '0', '2019-11-25 20:41:51', null, '1', null, '1', '20191125204151419', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '52', '3.86');
INSERT INTO `sampling_media_order` VALUES ('3246', '0', '2019-11-25 20:42:15', null, '1', null, '1', '20191125204215866', '84827515a8d7c8b1b4a746f9bb91c97341c27b651574586534782', '63', '3.59');
INSERT INTO `sampling_media_order` VALUES ('3247', '0', '2019-11-25 20:48:48', null, '1', null, '1', '20191125204848293', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '86', '3.38');
INSERT INTO `sampling_media_order` VALUES ('3248', '0', '2019-11-25 20:50:13', null, '1', null, '1', '20191125205013108', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '96', '3.09');
INSERT INTO `sampling_media_order` VALUES ('3249', '0', '2019-11-25 20:50:19', null, '1', null, '1', '20191125205019524', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '65', '3.21');
INSERT INTO `sampling_media_order` VALUES ('3250', '0', '2019-11-25 20:51:15', null, '1', null, '1', '20191125205115575', '40860464aab23f7e6b3c46449295b5ee96b6b5841574686255480', '52', '3.78');
INSERT INTO `sampling_media_order` VALUES ('3251', '0', '2019-11-25 20:52:09', null, '1', null, '1', '20191125205209233', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '94', '3.58');
INSERT INTO `sampling_media_order` VALUES ('3252', '0', '2019-11-25 20:52:39', null, '1', null, '1', '20191125205239972', '40860464aab23f7e6b3c46449295b5ee96b6b5841574686255480', '46', '3.57');
INSERT INTO `sampling_media_order` VALUES ('3253', '0', '2019-11-25 20:57:55', null, '1', null, '1', '20191125205755328', '656318293bf42ed33c724b6e904407dd9db90fb21574674771999', '42', '3.47');
INSERT INTO `sampling_media_order` VALUES ('3254', '0', '2019-11-25 21:00:18', null, '1', null, '1', '20191125210018209', '656318293bf42ed33c724b6e904407dd9db90fb21574674771999', '101', '3.06');
INSERT INTO `sampling_media_order` VALUES ('3255', '0', '2019-11-25 21:01:32', null, '1', null, '1', '20191125210132468', '656318293bf42ed33c724b6e904407dd9db90fb21574674771999', '49', '3.93');
INSERT INTO `sampling_media_order` VALUES ('3256', '0', '2019-11-25 21:02:13', null, '1', null, '1', '20191125210213122', '682440642f98ab1034984ae3a715f4f920c8fe871574333265810', '94', '3.44');
INSERT INTO `sampling_media_order` VALUES ('3257', '0', '2019-11-25 21:02:33', null, '1', null, '1', '20191125210233327', '2938085959ca3fa3bb044e6d9f52d80f10ff6ff61573215539314', '48', '3.34');
INSERT INTO `sampling_media_order` VALUES ('3258', '0', '2019-11-25 21:02:36', null, '1', null, '1', '20191125210236806', '23564061272e8314d1974d29a72c6ecc005c00191574328988661', '52', '3.10');
INSERT INTO `sampling_media_order` VALUES ('3259', '0', '2019-11-25 21:03:14', null, '1', null, '1', '20191125210314590', '656318293bf42ed33c724b6e904407dd9db90fb21574674771999', '79', '3.06');
INSERT INTO `sampling_media_order` VALUES ('3260', '0', '2019-11-25 21:03:26', null, '1', null, '1', '20191125210326303', '2938085959ca3fa3bb044e6d9f52d80f10ff6ff61573215539314', '54', '3.85');
INSERT INTO `sampling_media_order` VALUES ('3261', '0', '2019-11-25 21:03:42', null, '1', null, '1', '20191125210342765', '656318293bf42ed33c724b6e904407dd9db90fb21574674771999', '79', '3.92');
INSERT INTO `sampling_media_order` VALUES ('3262', '0', '2019-11-25 21:04:01', null, '1', null, '1', '20191125210401320', '656318293bf42ed33c724b6e904407dd9db90fb21574674771999', '28', '3.32');
INSERT INTO `sampling_media_order` VALUES ('3263', '0', '2019-11-25 21:04:13', null, '1', null, '1', '20191125210413950', '2938085959ca3fa3bb044e6d9f52d80f10ff6ff61573215539314', '86', '3.88');
INSERT INTO `sampling_media_order` VALUES ('3264', '0', '2019-11-25 21:04:14', null, '1', null, '1', '20191125210414343', '656318293bf42ed33c724b6e904407dd9db90fb21574674771999', '79', '3.23');
INSERT INTO `sampling_media_order` VALUES ('3265', '0', '2019-11-25 21:06:12', null, '1', null, '1', '20191125210612191', '2938085959ca3fa3bb044e6d9f52d80f10ff6ff61573215539314', '58', '3.58');
INSERT INTO `sampling_media_order` VALUES ('3266', '0', '2019-11-25 21:06:59', null, '1', null, '1', '20191125210659871', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '96', '3.68');
INSERT INTO `sampling_media_order` VALUES ('3267', '0', '2019-11-25 21:07:02', null, '1', null, '1', '20191125210702850', '2938085959ca3fa3bb044e6d9f52d80f10ff6ff61573215539314', '38', '3.34');
INSERT INTO `sampling_media_order` VALUES ('3268', '0', '2019-11-25 21:07:55', null, '1', null, '1', '20191125210755279', '2938085959ca3fa3bb044e6d9f52d80f10ff6ff61573215539314', '52', '3.94');
INSERT INTO `sampling_media_order` VALUES ('3269', '0', '2019-11-25 21:08:36', null, '1', null, '1', '20191125210836723', '2938085959ca3fa3bb044e6d9f52d80f10ff6ff61573215539314', '23', '3.51');
INSERT INTO `sampling_media_order` VALUES ('3270', '0', '2019-11-25 21:08:51', null, '1', null, '1', '20191125210851835', '91841236904008c95c4449af9cb744b11ed4de551574661176120', '52', '3.47');
INSERT INTO `sampling_media_order` VALUES ('3271', '0', '2019-11-25 21:09:25', null, '1', null, '1', '20191125210925869', '2938085959ca3fa3bb044e6d9f52d80f10ff6ff61573215539314', '65', '3.41');
INSERT INTO `sampling_media_order` VALUES ('3272', '0', '2019-11-25 21:10:12', null, '1', null, '1', '20191125211012656', '2938085959ca3fa3bb044e6d9f52d80f10ff6ff61573215539314', '86', '3.82');
INSERT INTO `sampling_media_order` VALUES ('3273', '0', '2019-11-25 21:10:25', null, '1', null, '1', '20191125211025331', '2938085959ca3fa3bb044e6d9f52d80f10ff6ff61573215539314', '41', '3.03');
INSERT INTO `sampling_media_order` VALUES ('3274', '0', '2019-11-25 21:11:10', null, '1', null, '1', '20191125211110640', '2938085959ca3fa3bb044e6d9f52d80f10ff6ff61573215539314', '49', '3.54');
INSERT INTO `sampling_media_order` VALUES ('3275', '0', '2019-11-25 21:12:58', null, '1', null, '1', '20191125211258741', '2938085959ca3fa3bb044e6d9f52d80f10ff6ff61573215539314', '16', '3.89');
INSERT INTO `sampling_media_order` VALUES ('3276', '0', '2019-11-25 21:13:24', null, '1', null, '1', '20191125211324412', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '38', '3.08');
INSERT INTO `sampling_media_order` VALUES ('3277', '0', '2019-11-25 21:13:50', null, '1', null, '1', '20191125211350436', '14300923640ceb57d2254056b2f9e7ab9c6268c61574604829996', '79', '3.75');
INSERT INTO `sampling_media_order` VALUES ('3278', '0', '2019-11-25 21:14:09', null, '1', null, '1', '20191125211409775', '2938085959ca3fa3bb044e6d9f52d80f10ff6ff61573215539314', '74', '3.14');
INSERT INTO `sampling_media_order` VALUES ('3279', '0', '2019-11-25 21:14:29', null, '1', null, '1', '20191125211429272', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '36', '3.62');
INSERT INTO `sampling_media_order` VALUES ('3280', '0', '2019-11-25 21:15:10', null, '1', null, '1', '20191125211510546', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '49', '3.98');
INSERT INTO `sampling_media_order` VALUES ('3281', '0', '2019-11-25 21:15:25', null, '1', null, '1', '20191125211525496', '2938085959ca3fa3bb044e6d9f52d80f10ff6ff61573215539314', '80', '3.40');
INSERT INTO `sampling_media_order` VALUES ('3282', '0', '2019-11-25 21:16:06', null, '1', null, '1', '20191125211606316', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '57', '3.88');
INSERT INTO `sampling_media_order` VALUES ('3283', '0', '2019-11-25 21:16:26', null, '1', null, '1', '20191125211626399', '2938085959ca3fa3bb044e6d9f52d80f10ff6ff61573215539314', '74', '3.27');
INSERT INTO `sampling_media_order` VALUES ('3284', '0', '2019-11-25 21:16:52', null, '1', null, '1', '20191125211652904', '2938085959ca3fa3bb044e6d9f52d80f10ff6ff61573215539314', '80', '3.91');
INSERT INTO `sampling_media_order` VALUES ('3285', '0', '2019-11-25 21:16:54', null, '1', null, '1', '20191125211654901', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '54', '3.52');
INSERT INTO `sampling_media_order` VALUES ('3286', '0', '2019-11-25 21:17:56', null, '1', null, '1', '20191125211756390', '2938085959ca3fa3bb044e6d9f52d80f10ff6ff61573215539314', '16', '3.51');
INSERT INTO `sampling_media_order` VALUES ('3287', '0', '2019-11-25 21:18:56', null, '1', null, '1', '20191125211856825', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '29', '3.53');
INSERT INTO `sampling_media_order` VALUES ('3288', '0', '2019-11-25 21:20:21', null, '1', null, '1', '20191125212021219', '23564061272e8314d1974d29a72c6ecc005c00191574328988661', '41', '3.60');
INSERT INTO `sampling_media_order` VALUES ('3289', '0', '2019-11-25 21:20:23', null, '1', null, '1', '20191125212023137', '5146499223dc7884db184d2bbd37eab09ff7786b1574328981511', '49', '3.44');
INSERT INTO `sampling_media_order` VALUES ('3290', '0', '2019-11-25 21:20:42', null, '1', null, '1', '20191125212042393', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '23', '3.87');
INSERT INTO `sampling_media_order` VALUES ('3291', '0', '2019-11-25 21:21:00', null, '1', null, '1', '20191125212100841', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '41', '3.60');
INSERT INTO `sampling_media_order` VALUES ('3292', '0', '2019-11-25 21:21:52', null, '1', null, '1', '20191125212152680', '23564061272e8314d1974d29a72c6ecc005c00191574328988661', '29', '3.23');
INSERT INTO `sampling_media_order` VALUES ('3293', '0', '2019-11-25 21:21:57', null, '1', null, '1', '20191125212157294', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '49', '3.09');
INSERT INTO `sampling_media_order` VALUES ('3294', '0', '2019-11-25 21:25:38', null, '1', null, '1', '20191125212538656', '5146499223dc7884db184d2bbd37eab09ff7786b1574328981511', '29', '3.97');
INSERT INTO `sampling_media_order` VALUES ('3295', '0', '2019-11-25 21:27:11', null, '1', null, '1', '20191125212711850', '5146499223dc7884db184d2bbd37eab09ff7786b1574328981511', '17', '3.81');
INSERT INTO `sampling_media_order` VALUES ('3296', '0', '2019-11-25 21:29:09', null, '1', null, '1', '20191125212909206', '24439265827571a52864478abd5dab664a548f621574663047150', '22', '3.59');
INSERT INTO `sampling_media_order` VALUES ('3297', '0', '2019-11-25 21:29:32', null, '1', null, '1', '20191125212932954', '5146499223dc7884db184d2bbd37eab09ff7786b1574328981511', '18', '3.69');
INSERT INTO `sampling_media_order` VALUES ('3298', '0', '2019-11-25 21:33:35', null, '1', null, '1', '20191125213335437', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '25', '3.95');
INSERT INTO `sampling_media_order` VALUES ('3299', '0', '2019-11-25 21:34:49', null, '1', null, '1', '20191125213449183', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '107', '3.84');
INSERT INTO `sampling_media_order` VALUES ('3300', '0', '2019-11-25 21:35:41', null, '1', null, '1', '20191125213541675', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '86', '3.27');
INSERT INTO `sampling_media_order` VALUES ('3301', '0', '2019-11-25 21:37:24', null, '1', null, '1', '20191125213724976', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '93', '3.36');
INSERT INTO `sampling_media_order` VALUES ('3302', '0', '2019-11-25 21:38:18', null, '1', null, '1', '20191125213818806', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '65', '3.20');
INSERT INTO `sampling_media_order` VALUES ('3303', '0', '2019-11-25 21:39:19', null, '1', null, '1', '20191125213919562', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '79', '3.93');
INSERT INTO `sampling_media_order` VALUES ('3304', '0', '2019-11-25 21:40:03', null, '1', null, '1', '20191125214003274', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '92', '3.51');
INSERT INTO `sampling_media_order` VALUES ('3305', '0', '2019-11-25 21:40:49', null, '1', null, '1', '20191125214049180', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '65', '3.64');
INSERT INTO `sampling_media_order` VALUES ('3306', '0', '2019-11-25 21:41:00', null, '1', null, '1', '20191125214100943', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '54', '3.54');
INSERT INTO `sampling_media_order` VALUES ('3307', '0', '2019-11-25 21:41:26', null, '1', null, '1', '20191125214126554', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '65', '3.07');
INSERT INTO `sampling_media_order` VALUES ('3308', '0', '2019-11-25 21:41:33', null, '1', null, '1', '20191125214133887', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '65', '3.64');
INSERT INTO `sampling_media_order` VALUES ('3309', '0', '2019-11-25 21:41:41', null, '1', null, '1', '20191125214141952', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '92', '3.28');
INSERT INTO `sampling_media_order` VALUES ('3310', '0', '2019-11-25 21:41:48', null, '1', null, '1', '20191125214148709', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '23', '3.90');
INSERT INTO `sampling_media_order` VALUES ('3311', '0', '2019-11-25 21:42:33', null, '1', null, '1', '20191125214233994', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '41', '3.86');
INSERT INTO `sampling_media_order` VALUES ('3312', '0', '2019-11-25 21:43:12', null, '1', null, '1', '20191125214312797', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '92', '3.66');
INSERT INTO `sampling_media_order` VALUES ('3313', '0', '2019-11-25 21:43:22', null, '1', null, '1', '20191125214322424', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '23', '3.13');
INSERT INTO `sampling_media_order` VALUES ('3314', '0', '2019-11-25 21:56:22', null, '1', null, '1', '20191125215622135', '4223560461f287db77fc42dfbfd20a74edaed4321574573990332', '79', '3.47');
INSERT INTO `sampling_media_order` VALUES ('3315', '0', '2019-11-25 21:57:27', null, '1', null, '1', '20191125215727469', '2938085959ca3fa3bb044e6d9f52d80f10ff6ff61573215539314', '76', '3.42');
INSERT INTO `sampling_media_order` VALUES ('3316', '0', '2019-11-25 21:58:11', null, '1', null, '1', '20191125215811292', '2938085959ca3fa3bb044e6d9f52d80f10ff6ff61573215539314', '63', '3.02');
INSERT INTO `sampling_media_order` VALUES ('3317', '0', '2019-11-25 21:58:13', null, '1', null, '1', '20191125215813789', '4223560461f287db77fc42dfbfd20a74edaed4321574573990332', '65', '3.02');
INSERT INTO `sampling_media_order` VALUES ('3318', '0', '2019-11-25 21:58:59', null, '1', null, '1', '20191125215859546', '2938085959ca3fa3bb044e6d9f52d80f10ff6ff61573215539314', '28', '3.90');
INSERT INTO `sampling_media_order` VALUES ('3319', '0', '2019-11-25 21:59:24', null, '1', null, '1', '20191125215924141', '2938085959ca3fa3bb044e6d9f52d80f10ff6ff61573215539314', '107', '3.52');
INSERT INTO `sampling_media_order` VALUES ('3320', '0', '2019-11-25 21:59:30', null, '1', null, '1', '20191125215930869', '4223560461f287db77fc42dfbfd20a74edaed4321574573990332', '28', '3.88');
INSERT INTO `sampling_media_order` VALUES ('3321', '0', '2019-11-25 22:00:13', null, '1', null, '1', '20191125220013581', '2938085959ca3fa3bb044e6d9f52d80f10ff6ff61573215539314', '85', '3.40');
INSERT INTO `sampling_media_order` VALUES ('3322', '0', '2019-11-25 22:00:32', null, '1', null, '1', '20191125220032684', '4223560461f287db77fc42dfbfd20a74edaed4321574573990332', '92', '3.04');
INSERT INTO `sampling_media_order` VALUES ('3323', '0', '2019-11-25 22:01:00', null, '1', null, '1', '20191125220100868', '2938085959ca3fa3bb044e6d9f52d80f10ff6ff61573215539314', '84', '3.69');
INSERT INTO `sampling_media_order` VALUES ('3324', '0', '2019-11-25 22:01:29', null, '1', null, '1', '20191125220129585', '2938085959ca3fa3bb044e6d9f52d80f10ff6ff61573215539314', '24', '3.86');
INSERT INTO `sampling_media_order` VALUES ('3325', '0', '2019-11-25 22:02:17', null, '1', null, '1', '20191125220217830', '2938085959ca3fa3bb044e6d9f52d80f10ff6ff61573215539314', '107', '3.62');
INSERT INTO `sampling_media_order` VALUES ('3326', '0', '2019-11-25 22:02:31', null, '1', null, '1', '20191125220231988', '8158419717abca111ff24b2895735f6036c0215c1574690534407', '52', '3.73');
INSERT INTO `sampling_media_order` VALUES ('3327', '0', '2019-11-25 22:02:31', null, '1', null, '1', '20191125220231630', '2938085959ca3fa3bb044e6d9f52d80f10ff6ff61573215539314', '105', '3.98');
INSERT INTO `sampling_media_order` VALUES ('3328', '0', '2019-11-25 22:03:19', null, '1', null, '1', '20191125220319973', '2938085959ca3fa3bb044e6d9f52d80f10ff6ff61573215539314', '92', '3.52');
INSERT INTO `sampling_media_order` VALUES ('3329', '0', '2019-11-25 22:03:43', null, '1', null, '1', '20191125220343123', '8158419717abca111ff24b2895735f6036c0215c1574690534407', '80', '3.86');
INSERT INTO `sampling_media_order` VALUES ('3330', '0', '2019-11-25 22:06:04', null, '1', null, '1', '20191125220604238', '8158419717abca111ff24b2895735f6036c0215c1574690534407', '38', '3.18');
INSERT INTO `sampling_media_order` VALUES ('3331', '0', '2019-11-25 22:09:33', null, '1', null, '1', '20191125220933627', '8158419717abca111ff24b2895735f6036c0215c1574690534407', '54', '3.83');
INSERT INTO `sampling_media_order` VALUES ('3332', '0', '2019-11-25 22:09:54', null, '1', null, '1', '20191125220954533', '8158419717abca111ff24b2895735f6036c0215c1574690534407', '92', '3.00');
INSERT INTO `sampling_media_order` VALUES ('3333', '0', '2019-11-25 22:12:48', null, '1', null, '1', '20191125221248570', '224555769b6d22fc8d9d47a99ee82d216e1e18891574587295773', '64', '3.06');
INSERT INTO `sampling_media_order` VALUES ('3334', '0', '2019-11-25 22:13:36', null, '1', null, '1', '20191125221336844', '224555769b6d22fc8d9d47a99ee82d216e1e18891574587295773', '65', '3.92');
INSERT INTO `sampling_media_order` VALUES ('3335', '0', '2019-11-25 22:13:59', null, '1', null, '1', '20191125221359542', '5853249261a6471bfb3b4797babe49ccbcdd24a61574691218786', '79', '3.90');
INSERT INTO `sampling_media_order` VALUES ('3336', '0', '2019-11-25 22:15:07', null, '1', null, '1', '20191125221507365', '32196335216044b9d5154f9b9de5d19d0838a9b51574672387140', '88', '3.64');
INSERT INTO `sampling_media_order` VALUES ('3337', '0', '2019-11-25 22:15:12', null, '1', null, '1', '20191125221512800', '224555769b6d22fc8d9d47a99ee82d216e1e18891574587295773', '46', '3.01');
INSERT INTO `sampling_media_order` VALUES ('3338', '0', '2019-11-25 22:15:37', null, '1', null, '1', '20191125221537823', '224555769b6d22fc8d9d47a99ee82d216e1e18891574587295773', '46', '3.68');
INSERT INTO `sampling_media_order` VALUES ('3339', '0', '2019-11-25 22:16:31', null, '1', null, '1', '20191125221631357', '32196335216044b9d5154f9b9de5d19d0838a9b51574672387140', '28', '3.35');
INSERT INTO `sampling_media_order` VALUES ('3340', '0', '2019-11-25 22:16:43', null, '1', null, '1', '20191125221643635', '5853249261a6471bfb3b4797babe49ccbcdd24a61574691218786', '28', '3.44');
INSERT INTO `sampling_media_order` VALUES ('3341', '0', '2019-11-25 22:17:28', null, '1', null, '1', '20191125221728294', '32196335216044b9d5154f9b9de5d19d0838a9b51574672387140', '92', '3.70');
INSERT INTO `sampling_media_order` VALUES ('3342', '0', '2019-11-25 22:18:39', null, '1', null, '1', '20191125221839893', '32196335216044b9d5154f9b9de5d19d0838a9b51574672387140', '63', '3.74');
INSERT INTO `sampling_media_order` VALUES ('3343', '0', '2019-11-25 22:19:30', null, '1', null, '1', '20191125221930884', '32196335216044b9d5154f9b9de5d19d0838a9b51574672387140', '62', '3.22');
INSERT INTO `sampling_media_order` VALUES ('3344', '0', '2019-11-25 22:20:24', null, '1', null, '1', '20191125222024916', '32196335216044b9d5154f9b9de5d19d0838a9b51574672387140', '74', '3.79');
INSERT INTO `sampling_media_order` VALUES ('3345', '0', '2019-11-25 22:21:40', null, '1', null, '1', '20191125222140286', '32196335216044b9d5154f9b9de5d19d0838a9b51574672387140', '66', '3.06');
INSERT INTO `sampling_media_order` VALUES ('3346', '0', '2019-11-25 22:21:49', null, '1', null, '1', '20191125222149864', '431706026c18fc35d3a841f4bded39038e8aaeb91574580257168', '80', '3.61');
INSERT INTO `sampling_media_order` VALUES ('3347', '0', '2019-11-25 22:31:32', null, '1', null, '1', '20191125223132521', '5146499223dc7884db184d2bbd37eab09ff7786b1574328981511', '18', '3.88');
INSERT INTO `sampling_media_order` VALUES ('3348', '0', '2019-11-25 22:32:46', null, '1', null, '1', '20191125223246927', '682440642f98ab1034984ae3a715f4f920c8fe871574333265810', '38', '3.53');
INSERT INTO `sampling_media_order` VALUES ('3349', '0', '2019-11-25 22:33:06', null, '1', null, '1', '20191125223306208', '5146499223dc7884db184d2bbd37eab09ff7786b1574328981511', '49', '3.56');
INSERT INTO `sampling_media_order` VALUES ('3350', '0', '2019-11-25 22:36:54', null, '1', null, '1', '20191125223654187', '3171124574bb983b3b8c4003977f918a6995ed851574490047171', '62', '3.25');
INSERT INTO `sampling_media_order` VALUES ('3351', '0', '2019-11-25 22:45:55', null, '1', null, '1', '20191125224555782', '651105767acca5bda6774e6f8f0b4bd5dfbed8841574693111927', '57', '3.70');
INSERT INTO `sampling_media_order` VALUES ('3352', '0', '2019-11-25 22:46:42', null, '1', null, '1', '20191125224642996', '90582930bf22f1cf2869443aa9e0ffa82923d5751574672494745', '12', '3.79');
INSERT INTO `sampling_media_order` VALUES ('3353', '0', '2019-11-25 22:50:53', null, '1', null, '1', '20191125225053765', '265419555b491f0b831041e68e6622aaad321c781574693438008', '80', '3.49');
INSERT INTO `sampling_media_order` VALUES ('3354', '0', '2019-11-25 22:51:28', null, '1', null, '1', '20191125225128961', '4607969169e69e8fc76f4c01bee2bec0836c3b9e1574607160053', '20', '3.58');
INSERT INTO `sampling_media_order` VALUES ('3355', '0', '2019-11-25 22:51:49', null, '1', null, '1', '20191125225149777', '265419555b491f0b831041e68e6622aaad321c781574693438008', '54', '3.16');
INSERT INTO `sampling_media_order` VALUES ('3356', '0', '2019-11-25 22:52:20', null, '1', null, '1', '20191125225220480', '265419555b491f0b831041e68e6622aaad321c781574693438008', '79', '3.67');
INSERT INTO `sampling_media_order` VALUES ('3357', '0', '2019-11-25 23:04:33', null, '1', null, '1', '20191125230433295', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '79', '3.30');
INSERT INTO `sampling_media_order` VALUES ('3358', '0', '2019-11-25 23:04:40', null, '1', null, '1', '20191125230440243', '538915722cb9e757469e42f39f6c60e58443fb3c1574694211016', '104', '3.38');
INSERT INTO `sampling_media_order` VALUES ('3359', '0', '2019-11-25 23:13:47', null, '1', null, '1', '20191125231347239', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '36', '3.56');
INSERT INTO `sampling_media_order` VALUES ('3360', '0', '2019-11-25 23:16:48', null, '1', null, '1', '20191125231648809', '514841782efa7cf0de1a45d2b4649940db30c7321574274134010', '25', '3.83');
INSERT INTO `sampling_media_order` VALUES ('3361', '0', '2019-11-25 23:26:26', null, '1', null, '1', '20191125232626213', '28940286d44a70be033141cfbf3abd6d51dec3fc1574673971303', '80', '3.04');
INSERT INTO `sampling_media_order` VALUES ('3362', '0', '2019-11-25 23:26:29', null, '1', null, '1', '20191125232629414', '5146499223dc7884db184d2bbd37eab09ff7786b1574328981511', '12', '3.90');
INSERT INTO `sampling_media_order` VALUES ('3363', '0', '2019-11-25 23:28:45', null, '1', null, '1', '20191125232845360', '32826811889b3127300d4fb49ed3a17b511739961574693755179', '52', '3.83');
INSERT INTO `sampling_media_order` VALUES ('3364', '0', '2019-11-25 23:29:04', null, '1', null, '1', '20191125232904540', '28940286d44a70be033141cfbf3abd6d51dec3fc1574673971303', '12', '3.31');
INSERT INTO `sampling_media_order` VALUES ('3365', '0', '2019-11-25 23:29:42', null, '1', null, '1', '20191125232942291', '363640932f15bcbd199d4500b6e2f87ced4cca471574614449094', '64', '3.43');
INSERT INTO `sampling_media_order` VALUES ('3366', '0', '2019-11-25 23:29:59', null, '1', null, '1', '20191125232959158', '28940286d44a70be033141cfbf3abd6d51dec3fc1574673971303', '23', '3.96');
INSERT INTO `sampling_media_order` VALUES ('3367', '0', '2019-11-25 23:30:30', null, '1', null, '1', '20191125233030889', '363640932f15bcbd199d4500b6e2f87ced4cca471574614449094', '94', '3.11');
INSERT INTO `sampling_media_order` VALUES ('3368', '0', '2019-11-25 23:33:56', null, '1', null, '1', '20191125233356716', '28940286d44a70be033141cfbf3abd6d51dec3fc1574673971303', '79', '3.45');
INSERT INTO `sampling_media_order` VALUES ('3369', '0', '2019-11-25 23:35:07', null, '1', null, '1', '20191125233507320', '28940286d44a70be033141cfbf3abd6d51dec3fc1574673971303', '46', '3.86');
INSERT INTO `sampling_media_order` VALUES ('3370', '0', '2019-11-25 23:37:50', null, '1', null, '1', '20191125233750618', '7275489746f08d0385c14a4f8209724174547e421574600163220', '52', '3.39');
INSERT INTO `sampling_media_order` VALUES ('3371', '0', '2019-11-25 23:39:58', null, '1', null, '1', '20191125233958751', '822769512737f6e506c14dd49e8cab0d309d0b6b1573706434730', '79', '3.21');
INSERT INTO `sampling_media_order` VALUES ('3372', '0', '2019-11-25 23:40:26', null, '1', null, '1', '20191125234026454', '48580747f110978c39cf457cbd6cfeac3010d93e1574696396066', '84', '3.94');
INSERT INTO `sampling_media_order` VALUES ('3373', '0', '2019-11-25 23:41:39', null, '1', null, '1', '20191125234139901', '822769512737f6e506c14dd49e8cab0d309d0b6b1573706434730', '52', '3.12');
INSERT INTO `sampling_media_order` VALUES ('3374', '0', '2019-11-25 23:42:04', null, '1', null, '1', '20191125234204871', '822769512737f6e506c14dd49e8cab0d309d0b6b1573706434730', '107', '3.89');
INSERT INTO `sampling_media_order` VALUES ('3375', '0', '2019-11-25 23:44:09', null, '1', null, '1', '20191125234409120', '363640932f15bcbd199d4500b6e2f87ced4cca471574614449094', '29', '3.89');
INSERT INTO `sampling_media_order` VALUES ('3376', '0', '2019-11-25 23:44:27', null, '1', null, '1', '20191125234427368', '48580747f110978c39cf457cbd6cfeac3010d93e1574696396066', '84', '3.77');
INSERT INTO `sampling_media_order` VALUES ('3377', '0', '2019-11-25 23:44:57', null, '1', null, '1', '20191125234457581', '31861085d912d53b706e4f808b1c5751fdc85e9f1574696688104', '106', '3.55');
INSERT INTO `sampling_media_order` VALUES ('3378', '0', '2019-11-25 23:45:21', null, '1', null, '1', '20191125234521829', '48580747f110978c39cf457cbd6cfeac3010d93e1574696396066', '84', '3.75');
INSERT INTO `sampling_media_order` VALUES ('3379', '0', '2019-11-25 23:50:54', null, '1', null, '1', '20191125235054717', '656318293bf42ed33c724b6e904407dd9db90fb21574674771999', '74', '3.92');
INSERT INTO `sampling_media_order` VALUES ('3380', '0', '2019-11-25 23:51:27', null, '1', null, '1', '20191125235127497', '48580747f110978c39cf457cbd6cfeac3010d93e1574696396066', '84', '3.34');
INSERT INTO `sampling_media_order` VALUES ('3381', '0', '2019-11-25 23:51:50', null, '1', null, '1', '20191125235150403', '656318293bf42ed33c724b6e904407dd9db90fb21574674771999', '16', '3.51');
INSERT INTO `sampling_media_order` VALUES ('3382', '0', '2019-11-25 23:52:00', null, '1', null, '1', '20191125235200340', '85434933d1bf1516fcb74f8aaae3697a8e564d451574679572949', '52', '3.95');
INSERT INTO `sampling_media_order` VALUES ('3383', '0', '2019-11-25 23:52:31', null, '1', null, '1', '20191125235231400', '656318293bf42ed33c724b6e904407dd9db90fb21574674771999', '79', '3.84');
INSERT INTO `sampling_media_order` VALUES ('3384', '0', '2019-11-25 23:54:07', null, '1', null, '1', '20191125235407403', '85434933d1bf1516fcb74f8aaae3697a8e564d451574679572949', '52', '3.01');
INSERT INTO `sampling_media_order` VALUES ('3385', '0', '2019-11-25 23:56:53', null, '1', null, '1', '20191125235653203', '656318293bf42ed33c724b6e904407dd9db90fb21574674771999', '54', '3.81');
INSERT INTO `sampling_media_order` VALUES ('3386', '0', '2019-11-25 23:57:14', null, '1', null, '1', '20191125235714870', '656318293bf42ed33c724b6e904407dd9db90fb21574674771999', '92', '3.26');
INSERT INTO `sampling_media_order` VALUES ('3387', '0', '2019-11-25 23:57:43', null, '1', null, '1', '20191125235743434', '656318293bf42ed33c724b6e904407dd9db90fb21574674771999', '79', '3.60');
INSERT INTO `sampling_media_order` VALUES ('3388', '0', '2019-11-25 23:57:43', null, '1', null, '1', '20191125235743748', '896031591a27c448b6754cd095328644b13cf8fd1574661367740', '79', '3.68');
INSERT INTO `sampling_media_order` VALUES ('3389', '0', '2019-11-25 23:58:57', null, '1', null, '1', '20191125235857798', '656318293bf42ed33c724b6e904407dd9db90fb21574674771999', '74', '3.66');
INSERT INTO `sampling_media_order` VALUES ('3390', '0', '2019-11-25 23:59:41', null, '1', null, '1', '20191125235941852', '896031591a27c448b6754cd095328644b13cf8fd1574661367740', '80', '3.94');
INSERT INTO `sampling_media_order` VALUES ('3391', '0', '2019-11-25 23:59:42', null, '1', null, '1', '20191125235942517', '656318293bf42ed33c724b6e904407dd9db90fb21574674771999', '79', '3.94');
INSERT INTO `sampling_media_order` VALUES ('3392', '0', '2019-11-26 00:00:08', null, '1', null, '1', '20191126000008261', '656318293bf42ed33c724b6e904407dd9db90fb21574674771999', '29', '3.13');
INSERT INTO `sampling_media_order` VALUES ('3393', '0', '2019-11-26 00:00:10', null, '1', null, '1', '20191126000010334', '896031591a27c448b6754cd095328644b13cf8fd1574661367740', '92', '3.10');
INSERT INTO `sampling_media_order` VALUES ('3394', '0', '2019-11-26 00:00:24', null, '1', null, '1', '20191126000024913', '656318293bf42ed33c724b6e904407dd9db90fb21574674771999', '79', '3.21');
INSERT INTO `sampling_media_order` VALUES ('3395', '0', '2019-11-26 00:01:03', null, '1', null, '1', '20191126000103711', '896031591a27c448b6754cd095328644b13cf8fd1574661367740', '54', '3.52');
INSERT INTO `sampling_media_order` VALUES ('3396', '0', '2019-11-26 00:11:40', null, '1', null, '1', '20191126001140414', '896031591a27c448b6754cd095328644b13cf8fd1574661367740', '29', '3.98');
INSERT INTO `sampling_media_order` VALUES ('3397', '0', '2019-11-26 00:15:32', null, '1', null, '1', '20191126001532479', '896031591a27c448b6754cd095328644b13cf8fd1574661367740', '95', '3.94');
INSERT INTO `sampling_media_order` VALUES ('3398', '0', '2019-11-26 00:20:43', null, '1', null, '1', '20191126002043110', '18761938747d2f5b0d3e440690b73686cb0e880b1573222826570', '106', '3.24');
INSERT INTO `sampling_media_order` VALUES ('3399', '0', '2019-11-26 00:21:24', null, '1', null, '1', '20191126002124986', '10935370dbc99a946e224e78857e1017020846471574579440173', '79', '3.23');
INSERT INTO `sampling_media_order` VALUES ('3400', '0', '2019-11-26 00:21:24', null, '1', null, '1', '20191126002124584', '18761938747d2f5b0d3e440690b73686cb0e880b1573222826570', '96', '3.77');
INSERT INTO `sampling_media_order` VALUES ('3401', '0', '2019-11-26 00:22:09', null, '1', null, '1', '20191126002209798', '10935370dbc99a946e224e78857e1017020846471574579440173', '64', '3.58');
INSERT INTO `sampling_media_order` VALUES ('3402', '0', '2019-11-26 00:23:30', null, '1', null, '1', '20191126002330186', '10935370dbc99a946e224e78857e1017020846471574579440173', '54', '3.23');
INSERT INTO `sampling_media_order` VALUES ('3403', '0', '2019-11-26 00:34:01', null, '1', null, '1', '20191126003401316', '896031591a27c448b6754cd095328644b13cf8fd1574661367740', '41', '3.31');
INSERT INTO `sampling_media_order` VALUES ('3404', '0', '2019-11-26 00:36:48', null, '1', null, '1', '20191126003648366', '1320394579000787be024488b0e0cee3f334b96b1574581057615', '44', '3.24');
INSERT INTO `sampling_media_order` VALUES ('3405', '0', '2019-11-26 00:38:31', null, '1', null, '1', '20191126003831814', '10935370dbc99a946e224e78857e1017020846471574579440173', '14', '3.61');
INSERT INTO `sampling_media_order` VALUES ('3406', '0', '2019-11-26 00:39:36', null, '1', null, '1', '20191126003936119', '10935370dbc99a946e224e78857e1017020846471574579440173', '41', '3.20');
INSERT INTO `sampling_media_order` VALUES ('3407', '0', '2019-11-26 00:40:29', null, '1', null, '1', '20191126004029654', '10935370dbc99a946e224e78857e1017020846471574579440173', '74', '3.16');
INSERT INTO `sampling_media_order` VALUES ('3408', '0', '2019-11-26 01:23:23', null, '1', null, '1', '20191126012323268', '48580747f110978c39cf457cbd6cfeac3010d93e1574696396066', '84', '3.72');
INSERT INTO `sampling_media_order` VALUES ('3409', '0', '2019-11-26 01:23:46', null, '1', null, '1', '20191126012346844', '48580747f110978c39cf457cbd6cfeac3010d93e1574696396066', '84', '3.49');
INSERT INTO `sampling_media_order` VALUES ('3410', '0', '2019-11-26 01:24:35', null, '1', null, '1', '20191126012435164', '48580747f110978c39cf457cbd6cfeac3010d93e1574696396066', '84', '3.76');
INSERT INTO `sampling_media_order` VALUES ('3411', '0', '2019-11-26 01:25:31', null, '1', null, '1', '20191126012531336', '48580747f110978c39cf457cbd6cfeac3010d93e1574696396066', '40', '3.72');
INSERT INTO `sampling_media_order` VALUES ('3412', '0', '2019-11-26 01:50:35', null, '1', null, '1', '20191126015035817', '90739389dc50adacc8b2468a8fa4444e59c966a21574330550779', '36', '3.76');
INSERT INTO `sampling_media_order` VALUES ('3413', '0', '2019-11-26 01:51:02', null, '1', null, '1', '20191126015102541', '90739389dc50adacc8b2468a8fa4444e59c966a21574330550779', '92', '3.41');
INSERT INTO `sampling_media_order` VALUES ('3414', '0', '2019-11-26 01:51:27', null, '1', null, '1', '20191126015127591', '90739389dc50adacc8b2468a8fa4444e59c966a21574330550779', '96', '3.38');
INSERT INTO `sampling_media_order` VALUES ('3415', '0', '2019-11-26 01:54:52', null, '1', null, '1', '20191126015452693', '90739389dc50adacc8b2468a8fa4444e59c966a21574330550779', '105', '3.41');
INSERT INTO `sampling_media_order` VALUES ('3416', '0', '2019-11-26 02:09:25', null, '1', null, '1', '20191126020925564', '3953092723d695271e9d4d19bf4ae111342ef6541574675961213', '79', '3.49');
INSERT INTO `sampling_media_order` VALUES ('3417', '0', '2019-11-26 02:10:10', null, '1', null, '1', '20191126021010506', '3953092723d695271e9d4d19bf4ae111342ef6541574675961213', '84', '3.62');
INSERT INTO `sampling_media_order` VALUES ('3418', '0', '2019-11-26 02:11:23', null, '1', null, '1', '20191126021123623', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '32', '3.43');
INSERT INTO `sampling_media_order` VALUES ('3419', '0', '2019-11-26 02:11:55', null, '1', null, '1', '20191126021155950', '3953092723d695271e9d4d19bf4ae111342ef6541574675961213', '84', '3.09');
INSERT INTO `sampling_media_order` VALUES ('3420', '0', '2019-11-26 02:12:16', null, '1', null, '1', '20191126021216667', '957827838a1cf7fbab634004a22c3f432ef0fca71573323048619', '32', '3.08');
INSERT INTO `sampling_media_order` VALUES ('3421', '0', '2019-11-26 02:13:35', null, '1', null, '1', '20191126021335882', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '32', '3.39');
INSERT INTO `sampling_media_order` VALUES ('3422', '0', '2019-11-26 02:15:25', null, '1', null, '1', '20191126021525391', '3953092723d695271e9d4d19bf4ae111342ef6541574675961213', '54', '3.52');
INSERT INTO `sampling_media_order` VALUES ('3423', '0', '2019-11-26 02:15:40', null, '1', null, '1', '20191126021540679', '3953092723d695271e9d4d19bf4ae111342ef6541574675961213', '79', '3.82');
INSERT INTO `sampling_media_order` VALUES ('3424', '0', '2019-11-26 02:17:17', null, '1', null, '1', '20191126021717122', '72087201a34c0652013c49deb0f8641f261d91ee1574705750257', '80', '3.44');
INSERT INTO `sampling_media_order` VALUES ('3425', '0', '2019-11-26 02:18:11', null, '1', null, '1', '20191126021811740', '72087201a34c0652013c49deb0f8641f261d91ee1574705750257', '79', '3.21');
INSERT INTO `sampling_media_order` VALUES ('3426', '0', '2019-11-26 02:18:30', null, '1', null, '1', '20191126021830416', '72087201a34c0652013c49deb0f8641f261d91ee1574705750257', '106', '3.64');
INSERT INTO `sampling_media_order` VALUES ('3427', '0', '2019-11-26 02:19:02', null, '1', null, '1', '20191126021902910', '72087201a34c0652013c49deb0f8641f261d91ee1574705750257', '106', '3.14');
INSERT INTO `sampling_media_order` VALUES ('3428', '0', '2019-11-26 02:19:49', null, '1', null, '1', '20191126021949848', '72087201a34c0652013c49deb0f8641f261d91ee1574705750257', '96', '3.41');
INSERT INTO `sampling_media_order` VALUES ('3429', '0', '2019-11-26 02:49:35', null, '1', null, '1', '20191126024935603', '82114772725dd6ea0c8b468e8ea7b27b115aea3d1574663367311', '37', '3.84');
INSERT INTO `sampling_media_order` VALUES ('3430', '0', '2019-11-26 02:51:16', null, '1', null, '1', '20191126025116555', '82114772725dd6ea0c8b468e8ea7b27b115aea3d1574663367311', '93', '3.29');
INSERT INTO `sampling_media_order` VALUES ('3431', '0', '2019-11-26 02:51:31', null, '1', null, '1', '20191126025131585', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '89', '3.09');
INSERT INTO `sampling_media_order` VALUES ('3432', '0', '2019-11-26 02:52:27', null, '1', null, '1', '20191126025227451', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '64', '3.81');
INSERT INTO `sampling_media_order` VALUES ('3433', '0', '2019-11-26 02:52:58', null, '1', null, '1', '20191126025258176', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '98', '3.25');
INSERT INTO `sampling_media_order` VALUES ('3434', '0', '2019-11-26 02:53:11', null, '1', null, '1', '20191126025311609', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '88', '3.73');
INSERT INTO `sampling_media_order` VALUES ('3435', '0', '2019-11-26 02:54:10', null, '1', null, '1', '20191126025410840', '82114772725dd6ea0c8b468e8ea7b27b115aea3d1574663367311', '52', '3.79');
INSERT INTO `sampling_media_order` VALUES ('3436', '0', '2019-11-26 02:55:03', null, '1', null, '1', '20191126025503674', '82114772725dd6ea0c8b468e8ea7b27b115aea3d1574663367311', '95', '3.57');
INSERT INTO `sampling_media_order` VALUES ('3437', '0', '2019-11-26 02:56:58', null, '1', null, '1', '20191126025658974', '82114772725dd6ea0c8b468e8ea7b27b115aea3d1574663367311', '89', '3.44');
INSERT INTO `sampling_media_order` VALUES ('3438', '0', '2019-11-26 02:58:05', null, '1', null, '1', '20191126025805955', '82114772725dd6ea0c8b468e8ea7b27b115aea3d1574663367311', '107', '3.60');
INSERT INTO `sampling_media_order` VALUES ('3439', '0', '2019-11-26 02:59:10', null, '1', null, '1', '20191126025910295', '82114772725dd6ea0c8b468e8ea7b27b115aea3d1574663367311', '59', '3.38');
INSERT INTO `sampling_media_order` VALUES ('3440', '0', '2019-11-26 03:01:06', null, '1', null, '1', '20191126030106134', '82114772725dd6ea0c8b468e8ea7b27b115aea3d1574663367311', '95', '3.99');
INSERT INTO `sampling_media_order` VALUES ('3441', '0', '2019-11-26 03:04:06', null, '1', null, '1', '20191126030406538', '957827838a1cf7fbab634004a22c3f432ef0fca71573323048619', '33', '3.58');
INSERT INTO `sampling_media_order` VALUES ('3442', '0', '2019-11-26 03:05:48', null, '1', null, '1', '20191126030548994', '957827838a1cf7fbab634004a22c3f432ef0fca71573323048619', '14', '3.92');
INSERT INTO `sampling_media_order` VALUES ('3443', '0', '2019-11-26 03:07:45', null, '1', null, '1', '20191126030745148', '957827838a1cf7fbab634004a22c3f432ef0fca71573323048619', '14', '3.47');
INSERT INTO `sampling_media_order` VALUES ('3444', '0', '2019-11-26 03:09:43', null, '1', null, '1', '20191126030943726', '957827838a1cf7fbab634004a22c3f432ef0fca71573323048619', '32', '3.63');
INSERT INTO `sampling_media_order` VALUES ('3445', '0', '2019-11-26 03:10:21', null, '1', null, '1', '20191126031021172', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '32', '3.54');
INSERT INTO `sampling_media_order` VALUES ('3446', '0', '2019-11-26 03:16:33', null, '1', null, '1', '20191126031633321', '77897152dbce29e196184f04982d81e7f91451561574709380370', '103', '3.32');
INSERT INTO `sampling_media_order` VALUES ('3447', '0', '2019-11-26 03:19:28', null, '1', null, '1', '20191126031928493', '957827838a1cf7fbab634004a22c3f432ef0fca71573323048619', '17', '3.48');
INSERT INTO `sampling_media_order` VALUES ('3448', '0', '2019-11-26 03:19:45', null, '1', null, '1', '20191126031945578', '77897152dbce29e196184f04982d81e7f91451561574709380370', '90', '3.19');
INSERT INTO `sampling_media_order` VALUES ('3449', '0', '2019-11-26 03:19:58', null, '1', null, '1', '20191126031958781', '957827838a1cf7fbab634004a22c3f432ef0fca71573323048619', '17', '3.64');
INSERT INTO `sampling_media_order` VALUES ('3450', '0', '2019-11-26 03:20:13', null, '1', null, '1', '20191126032013422', '957827838a1cf7fbab634004a22c3f432ef0fca71573323048619', '95', '3.66');
INSERT INTO `sampling_media_order` VALUES ('3451', '0', '2019-11-26 03:20:57', null, '1', null, '1', '20191126032057598', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '93', '3.79');
INSERT INTO `sampling_media_order` VALUES ('3452', '0', '2019-11-26 03:21:18', null, '1', null, '1', '20191126032118391', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '50', '3.01');
INSERT INTO `sampling_media_order` VALUES ('3453', '0', '2019-11-26 03:22:32', null, '1', null, '1', '20191126032232801', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '103', '3.41');
INSERT INTO `sampling_media_order` VALUES ('3454', '0', '2019-11-26 03:23:03', null, '1', null, '1', '20191126032303969', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '85', '3.41');
INSERT INTO `sampling_media_order` VALUES ('3455', '0', '2019-11-26 03:24:17', null, '1', null, '1', '20191126032417297', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '74', '3.04');
INSERT INTO `sampling_media_order` VALUES ('3456', '0', '2019-11-26 04:12:05', null, '1', null, '1', '20191126041205133', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '102', '3.66');
INSERT INTO `sampling_media_order` VALUES ('3457', '0', '2019-11-26 04:33:27', null, '1', null, '1', '20191126043327965', '412354141dd15c3a526c49f8b2312086b34168481574646464920', '73', '3.23');
INSERT INTO `sampling_media_order` VALUES ('3458', '0', '2019-11-26 04:36:02', null, '1', null, '1', '20191126043602792', '412354141dd15c3a526c49f8b2312086b34168481574646464920', '29', '3.82');
INSERT INTO `sampling_media_order` VALUES ('3459', '0', '2019-11-26 05:05:33', null, '1', null, '1', '20191126050533815', '412354141dd15c3a526c49f8b2312086b34168481574646464920', '73', '3.37');
INSERT INTO `sampling_media_order` VALUES ('3460', '0', '2019-11-26 06:03:47', null, '1', null, '1', '20191126060347862', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '104', '3.63');
INSERT INTO `sampling_media_order` VALUES ('3461', '0', '2019-11-26 06:06:35', null, '1', null, '1', '20191126060635277', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '80', '3.66');
INSERT INTO `sampling_media_order` VALUES ('3462', '0', '2019-11-26 06:08:10', null, '1', null, '1', '20191126060810789', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '50', '3.08');
INSERT INTO `sampling_media_order` VALUES ('3463', '0', '2019-11-26 06:09:20', null, '1', null, '1', '20191126060920268', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '74', '3.07');
INSERT INTO `sampling_media_order` VALUES ('3464', '0', '2019-11-26 06:10:28', null, '1', null, '1', '20191126061028398', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '14', '3.47');
INSERT INTO `sampling_media_order` VALUES ('3465', '0', '2019-11-26 06:11:12', null, '1', null, '1', '20191126061112224', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '14', '3.27');
INSERT INTO `sampling_media_order` VALUES ('3466', '0', '2019-11-26 06:11:41', null, '1', null, '1', '20191126061141103', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '67', '3.05');
INSERT INTO `sampling_media_order` VALUES ('3467', '0', '2019-11-26 06:13:34', null, '1', null, '1', '20191126061334158', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '16', '3.85');
INSERT INTO `sampling_media_order` VALUES ('3468', '0', '2019-11-26 06:14:00', null, '1', null, '1', '20191126061400642', '272653313ca98b998db24d08bed0681267dde7c11574587194067', '94', '3.62');
INSERT INTO `sampling_media_order` VALUES ('3469', '0', '2019-11-26 06:15:02', null, '1', null, '1', '20191126061502712', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '14', '3.19');
INSERT INTO `sampling_media_order` VALUES ('3470', '0', '2019-11-26 06:49:08', null, '1', null, '1', '20191126064908243', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '41', '3.52');
INSERT INTO `sampling_media_order` VALUES ('3471', '0', '2019-11-26 06:50:10', null, '1', null, '1', '20191126065010594', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '50', '3.32');
INSERT INTO `sampling_media_order` VALUES ('3472', '0', '2019-11-26 06:51:04', null, '1', null, '1', '20191126065104954', '538915722cb9e757469e42f39f6c60e58443fb3c1574694211016', '96', '3.44');
INSERT INTO `sampling_media_order` VALUES ('3473', '0', '2019-11-26 06:51:56', null, '1', null, '1', '20191126065156892', '538915722cb9e757469e42f39f6c60e58443fb3c1574694211016', '95', '3.55');
INSERT INTO `sampling_media_order` VALUES ('3474', '0', '2019-11-26 06:52:29', null, '1', null, '1', '20191126065229990', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '93', '3.82');
INSERT INTO `sampling_media_order` VALUES ('3475', '0', '2019-11-26 06:53:14', null, '1', null, '1', '20191126065314605', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '52', '3.07');
INSERT INTO `sampling_media_order` VALUES ('3476', '0', '2019-11-26 06:53:47', null, '1', null, '1', '20191126065347473', '538915722cb9e757469e42f39f6c60e58443fb3c1574694211016', '41', '3.79');
INSERT INTO `sampling_media_order` VALUES ('3477', '0', '2019-11-26 07:09:41', null, '1', null, '1', '20191126070941348', '10280047d43fd32297bc41b0b3188b7c8f6c51671574584582728', '45', '3.87');
INSERT INTO `sampling_media_order` VALUES ('3478', '0', '2019-11-26 07:10:37', null, '1', null, '1', '20191126071037775', '10280047d43fd32297bc41b0b3188b7c8f6c51671574584582728', '33', '3.27');
INSERT INTO `sampling_media_order` VALUES ('3479', '0', '2019-11-26 07:11:34', null, '1', null, '1', '20191126071134631', '10280047d43fd32297bc41b0b3188b7c8f6c51671574584582728', '83', '3.54');
INSERT INTO `sampling_media_order` VALUES ('3480', '0', '2019-11-26 07:12:57', null, '1', null, '1', '20191126071257180', '10280047d43fd32297bc41b0b3188b7c8f6c51671574584582728', '83', '3.49');
INSERT INTO `sampling_media_order` VALUES ('3481', '0', '2019-11-26 07:13:53', null, '1', null, '1', '20191126071353482', '10280047d43fd32297bc41b0b3188b7c8f6c51671574584582728', '100', '3.58');
INSERT INTO `sampling_media_order` VALUES ('3482', '0', '2019-11-26 07:14:54', null, '1', null, '1', '20191126071454693', '10280047d43fd32297bc41b0b3188b7c8f6c51671574584582728', '83', '3.52');
INSERT INTO `sampling_media_order` VALUES ('3483', '0', '2019-11-26 07:17:34', null, '1', null, '1', '20191126071734111', '39701583d3d5726800c74b0e8e41f370a03fe7f31574723825985', '52', '3.99');
INSERT INTO `sampling_media_order` VALUES ('3484', '0', '2019-11-26 07:18:46', null, '1', null, '1', '20191126071846293', '39701583d3d5726800c74b0e8e41f370a03fe7f31574723825985', '92', '3.56');
INSERT INTO `sampling_media_order` VALUES ('3485', '0', '2019-11-26 07:19:30', null, '1', null, '1', '20191126071930230', '39701583d3d5726800c74b0e8e41f370a03fe7f31574723825985', '41', '3.39');
INSERT INTO `sampling_media_order` VALUES ('3486', '0', '2019-11-26 07:21:29', null, '1', null, '1', '20191126072129659', '39701583d3d5726800c74b0e8e41f370a03fe7f31574723825985', '85', '3.50');
INSERT INTO `sampling_media_order` VALUES ('3487', '0', '2019-11-26 07:25:44', null, '1', null, '1', '20191126072544122', '39701583d3d5726800c74b0e8e41f370a03fe7f31574723825985', '91', '3.03');
INSERT INTO `sampling_media_order` VALUES ('3488', '0', '2019-11-26 07:27:31', null, '1', null, '1', '20191126072731218', '39701583d3d5726800c74b0e8e41f370a03fe7f31574723825985', '91', '3.72');
INSERT INTO `sampling_media_order` VALUES ('3489', '0', '2019-11-26 07:27:54', null, '1', null, '1', '20191126072754983', '39701583d3d5726800c74b0e8e41f370a03fe7f31574723825985', '50', '3.00');
INSERT INTO `sampling_media_order` VALUES ('3490', '0', '2019-11-26 07:28:49', null, '1', null, '1', '20191126072849884', '39701583d3d5726800c74b0e8e41f370a03fe7f31574723825985', '85', '3.51');
INSERT INTO `sampling_media_order` VALUES ('3491', '0', '2019-11-26 07:30:53', null, '1', null, '1', '20191126073053109', '5146499223dc7884db184d2bbd37eab09ff7786b1574328981511', '66', '3.52');
INSERT INTO `sampling_media_order` VALUES ('3492', '0', '2019-11-26 07:31:34', null, '1', null, '1', '20191126073134434', '12965054ed4181ef2d154b90b14c18296da62b0b1574631874062', '74', '3.53');
INSERT INTO `sampling_media_order` VALUES ('3493', '0', '2019-11-26 07:32:37', null, '1', null, '1', '20191126073237353', '5146499223dc7884db184d2bbd37eab09ff7786b1574328981511', '85', '3.93');
INSERT INTO `sampling_media_order` VALUES ('3494', '0', '2019-11-26 07:59:16', null, '1', null, '1', '20191126075916358', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '50', '3.65');
INSERT INTO `sampling_media_order` VALUES ('3495', '0', '2019-11-26 08:12:54', null, '1', null, '1', '20191126081254555', '88091578f46605e8a5f74ae9bd58e6f21308d0511574353424980', '52', '3.25');
INSERT INTO `sampling_media_order` VALUES ('3496', '0', '2019-11-26 08:13:38', null, '1', null, '1', '20191126081338149', '88091578f46605e8a5f74ae9bd58e6f21308d0511574353424980', '80', '3.31');
INSERT INTO `sampling_media_order` VALUES ('3497', '0', '2019-11-26 08:15:13', null, '1', null, '1', '20191126081513611', '88091578f46605e8a5f74ae9bd58e6f21308d0511574353424980', '16', '3.35');
INSERT INTO `sampling_media_order` VALUES ('3498', '0', '2019-11-26 08:42:16', null, '1', null, '1', '20191126084216230', '69088593d057bdfa59f7475784eb83734ecbf0771574579926994', '53', '3.78');
INSERT INTO `sampling_media_order` VALUES ('3499', '0', '2019-11-26 08:43:45', null, '1', null, '1', '20191126084345972', '2844590764309d9900534ed3aaf8f169a357cadb1574579660607', '49', '3.92');
INSERT INTO `sampling_media_order` VALUES ('3500', '0', '2019-11-26 08:44:14', null, '1', null, '1', '20191126084414129', '2844590764309d9900534ed3aaf8f169a357cadb1574579660607', '104', '3.53');
INSERT INTO `sampling_media_order` VALUES ('3501', '0', '2019-11-26 08:45:17', null, '1', null, '1', '20191126084517699', '2844590764309d9900534ed3aaf8f169a357cadb1574579660607', '80', '3.31');
INSERT INTO `sampling_media_order` VALUES ('3502', '0', '2019-11-26 08:46:58', null, '1', null, '1', '20191126084658545', '2844590764309d9900534ed3aaf8f169a357cadb1574579660607', '92', '3.64');
INSERT INTO `sampling_media_order` VALUES ('3503', '0', '2019-11-26 08:47:47', null, '1', null, '1', '20191126084747314', '2844590764309d9900534ed3aaf8f169a357cadb1574579660607', '24', '3.97');
INSERT INTO `sampling_media_order` VALUES ('3504', '0', '2019-11-26 08:57:39', null, '1', null, '1', '20191126085739109', '8494202111309fce600849f6996beaafacfe2d9c1574607597785', '85', '3.45');
INSERT INTO `sampling_media_order` VALUES ('3505', '0', '2019-11-26 09:03:05', null, '1', null, '1', '20191126090305938', '69088593d057bdfa59f7475784eb83734ecbf0771574579926994', '76', '3.63');
INSERT INTO `sampling_media_order` VALUES ('3506', '0', '2019-11-26 09:03:16', null, '1', null, '1', '20191126090316971', '512264384dde52f9f27447b8b4ecc468103742bd1574662049648', '41', '3.40');
INSERT INTO `sampling_media_order` VALUES ('3507', '0', '2019-11-26 09:03:19', null, '1', null, '1', '20191126090319916', '69088593d057bdfa59f7475784eb83734ecbf0771574579926994', '52', '3.27');
INSERT INTO `sampling_media_order` VALUES ('3508', '0', '2019-11-26 09:03:55', null, '1', null, '1', '20191126090355626', '69088593d057bdfa59f7475784eb83734ecbf0771574579926994', '100', '3.66');
INSERT INTO `sampling_media_order` VALUES ('3509', '0', '2019-11-26 09:06:22', null, '1', null, '1', '20191126090622165', '99757678a71e06ea789d4406b34f9083d55c97271574730323365', '34', '3.40');
INSERT INTO `sampling_media_order` VALUES ('3510', '0', '2019-11-26 09:06:33', null, '1', null, '1', '20191126090633841', '512264384dde52f9f27447b8b4ecc468103742bd1574662049648', '50', '3.64');
INSERT INTO `sampling_media_order` VALUES ('3511', '0', '2019-11-26 09:10:36', null, '1', null, '1', '20191126091036769', '99757678a71e06ea789d4406b34f9083d55c97271574730323365', '44', '3.23');
INSERT INTO `sampling_media_order` VALUES ('3512', '0', '2019-11-26 09:11:26', null, '1', null, '1', '20191126091126141', '99757678a71e06ea789d4406b34f9083d55c97271574730323365', '16', '3.13');
INSERT INTO `sampling_media_order` VALUES ('3513', '0', '2019-11-26 09:12:41', null, '1', null, '1', '20191126091241453', '512264384dde52f9f27447b8b4ecc468103742bd1574662049648', '95', '3.84');
INSERT INTO `sampling_media_order` VALUES ('3514', '0', '2019-11-26 09:13:13', null, '1', null, '1', '20191126091313229', '99757678a71e06ea789d4406b34f9083d55c97271574730323365', '16', '3.15');
INSERT INTO `sampling_media_order` VALUES ('3515', '0', '2019-11-26 09:19:10', null, '1', null, '1', '20191126091910397', '512264384dde52f9f27447b8b4ecc468103742bd1574662049648', '103', '3.87');
INSERT INTO `sampling_media_order` VALUES ('3516', '0', '2019-11-26 09:20:29', null, '1', null, '1', '20191126092029548', '512264384dde52f9f27447b8b4ecc468103742bd1574662049648', '95', '3.52');
INSERT INTO `sampling_media_order` VALUES ('3517', '0', '2019-11-26 09:44:05', null, '1', null, '1', '20191126094405886', '2844590764309d9900534ed3aaf8f169a357cadb1574579660607', '93', '3.40');
INSERT INTO `sampling_media_order` VALUES ('3518', '0', '2019-11-26 09:57:48', null, '1', null, '1', '20191126095748730', '512264384dde52f9f27447b8b4ecc468103742bd1574662049648', '50', '3.64');
INSERT INTO `sampling_media_order` VALUES ('3519', '0', '2019-11-26 09:59:03', null, '1', null, '1', '20191126095903240', '224555769b6d22fc8d9d47a99ee82d216e1e18891574587295773', '95', '3.42');
INSERT INTO `sampling_media_order` VALUES ('3520', '0', '2019-11-26 09:59:13', null, '1', null, '1', '20191126095913632', '512264384dde52f9f27447b8b4ecc468103742bd1574662049648', '92', '3.84');
INSERT INTO `sampling_media_order` VALUES ('3521', '0', '2019-11-26 10:00:09', null, '1', null, '1', '20191126100009790', '224555769b6d22fc8d9d47a99ee82d216e1e18891574587295773', '80', '3.55');
INSERT INTO `sampling_media_order` VALUES ('3522', '0', '2019-11-26 10:02:48', null, '1', null, '1', '20191126100248956', '643310887ce7acf5b7c348978b29a5826bf2a1911574661153011', '104', '3.91');
INSERT INTO `sampling_media_order` VALUES ('3523', '0', '2019-11-26 10:05:32', null, '1', null, '1', '20191126100532883', '61772680b238495929a84acea717106962ddec651574662933249', '52', '3.65');
INSERT INTO `sampling_media_order` VALUES ('3524', '0', '2019-11-26 10:06:53', null, '1', null, '1', '20191126100653572', '61772680b238495929a84acea717106962ddec651574662933249', '93', '3.11');
INSERT INTO `sampling_media_order` VALUES ('3525', '0', '2019-11-26 10:07:48', null, '1', null, '1', '20191126100748874', '61772680b238495929a84acea717106962ddec651574662933249', '83', '3.60');
INSERT INTO `sampling_media_order` VALUES ('3526', '0', '2019-11-26 10:08:16', null, '1', null, '1', '20191126100816772', '61772680b238495929a84acea717106962ddec651574662933249', '83', '3.90');
INSERT INTO `sampling_media_order` VALUES ('3527', '0', '2019-11-26 10:20:40', null, '1', null, '1', '20191126102040209', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '41', '3.22');
INSERT INTO `sampling_media_order` VALUES ('3528', '0', '2019-11-26 10:20:45', null, '1', null, '1', '20191126102045106', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '14', '3.61');
INSERT INTO `sampling_media_order` VALUES ('3529', '0', '2019-11-26 10:21:05', null, '1', null, '1', '20191126102105636', '61772680b238495929a84acea717106962ddec651574662933249', '68', '3.66');
INSERT INTO `sampling_media_order` VALUES ('3530', '0', '2019-11-26 10:21:33', null, '1', null, '1', '20191126102133244', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '50', '3.42');
INSERT INTO `sampling_media_order` VALUES ('3531', '0', '2019-11-26 10:22:17', null, '1', null, '1', '20191126102217825', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '50', '3.75');
INSERT INTO `sampling_media_order` VALUES ('3532', '0', '2019-11-26 10:22:37', null, '1', null, '1', '20191126102237875', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '85', '3.98');
INSERT INTO `sampling_media_order` VALUES ('3533', '0', '2019-11-26 10:23:37', null, '1', null, '1', '20191126102337982', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '93', '3.29');
INSERT INTO `sampling_media_order` VALUES ('3534', '0', '2019-11-26 10:25:15', null, '1', null, '1', '20191126102515790', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '103', '3.41');
INSERT INTO `sampling_media_order` VALUES ('3535', '0', '2019-11-26 10:26:43', null, '1', null, '1', '20191126102643502', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '104', '3.06');
INSERT INTO `sampling_media_order` VALUES ('3536', '0', '2019-11-26 10:27:51', null, '1', null, '1', '20191126102751982', '61772680b238495929a84acea717106962ddec651574662933249', '41', '3.86');
INSERT INTO `sampling_media_order` VALUES ('3537', '0', '2019-11-26 10:27:51', null, '1', null, '1', '20191126102751680', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '93', '3.64');
INSERT INTO `sampling_media_order` VALUES ('3538', '0', '2019-11-26 10:28:09', null, '1', null, '1', '20191126102809122', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '33', '3.40');
INSERT INTO `sampling_media_order` VALUES ('3539', '0', '2019-11-26 10:29:02', null, '1', null, '1', '20191126102902128', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '62', '3.12');
INSERT INTO `sampling_media_order` VALUES ('3540', '0', '2019-11-26 10:30:11', null, '1', null, '1', '20191126103011227', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '33', '3.70');
INSERT INTO `sampling_media_order` VALUES ('3541', '0', '2019-11-26 10:30:51', null, '1', null, '1', '20191126103051626', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '49', '3.22');
INSERT INTO `sampling_media_order` VALUES ('3542', '0', '2019-11-26 10:31:28', null, '1', null, '1', '20191126103128107', '3141002268f2a5973c2f414ba9b43be228c8b97b1574735465683', '104', '3.88');
INSERT INTO `sampling_media_order` VALUES ('3543', '0', '2019-11-26 10:32:28', null, '1', null, '1', '20191126103228186', '62335560d31d5a35f47a4a8b985c64cb2a8ad38e1574735523673', '104', '3.06');
INSERT INTO `sampling_media_order` VALUES ('3544', '0', '2019-11-26 11:11:16', null, '1', null, '1', '20191126111116933', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '50', '3.83');
INSERT INTO `sampling_media_order` VALUES ('3545', '0', '2019-11-26 11:12:11', null, '1', null, '1', '20191126111211303', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '80', '3.05');
INSERT INTO `sampling_media_order` VALUES ('3546', '0', '2019-11-26 11:16:36', null, '1', null, '1', '20191126111636700', '918806713b4e7fa3ace74b0489828f763404e7731574738168646', '41', '3.07');
INSERT INTO `sampling_media_order` VALUES ('3547', '0', '2019-11-26 11:22:04', null, '1', null, '1', '20191126112204176', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '93', '3.99');
INSERT INTO `sampling_media_order` VALUES ('3548', '0', '2019-11-26 11:22:05', null, '1', null, '1', '20191126112205844', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '93', '3.60');
INSERT INTO `sampling_media_order` VALUES ('3549', '0', '2019-11-26 11:24:56', null, '1', null, '1', '20191126112456423', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '95', '3.08');
INSERT INTO `sampling_media_order` VALUES ('3550', '0', '2019-11-26 11:25:38', null, '1', null, '1', '20191126112538501', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '92', '3.30');
INSERT INTO `sampling_media_order` VALUES ('3551', '0', '2019-11-26 11:26:17', null, '1', null, '1', '20191126112617584', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '52', '3.28');
INSERT INTO `sampling_media_order` VALUES ('3552', '0', '2019-11-26 11:27:13', null, '1', null, '1', '20191126112713220', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '81', '3.33');
INSERT INTO `sampling_media_order` VALUES ('3553', '0', '2019-11-26 11:27:33', null, '1', null, '1', '20191126112733823', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '58', '3.67');
INSERT INTO `sampling_media_order` VALUES ('3554', '0', '2019-11-26 11:29:18', null, '1', null, '1', '20191126112918797', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '99', '3.34');
INSERT INTO `sampling_media_order` VALUES ('3555', '0', '2019-11-26 11:29:44', null, '1', null, '1', '20191126112944805', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '60', '3.88');
INSERT INTO `sampling_media_order` VALUES ('3556', '0', '2019-11-26 11:31:17', null, '1', null, '1', '20191126113117327', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '70', '3.76');
INSERT INTO `sampling_media_order` VALUES ('3557', '0', '2019-11-26 11:35:58', null, '1', null, '1', '20191126113558604', '72987352c4aa2882d6b14db69f878c3d0c4c11501574604409680', '52', '3.75');
INSERT INTO `sampling_media_order` VALUES ('3558', '0', '2019-11-26 11:36:19', null, '1', null, '1', '20191126113619216', '72987352c4aa2882d6b14db69f878c3d0c4c11501574604409680', '93', '3.76');
INSERT INTO `sampling_media_order` VALUES ('3559', '0', '2019-11-26 12:00:10', null, '1', null, '1', '20191126120010502', '63339082d167635703f440d2a8da928a7b46314f1574740758711', '103', '3.86');
INSERT INTO `sampling_media_order` VALUES ('3560', '0', '2019-11-26 12:01:05', null, '1', null, '1', '20191126120105556', '63339082d167635703f440d2a8da928a7b46314f1574740758711', '85', '3.38');
INSERT INTO `sampling_media_order` VALUES ('3561', '0', '2019-11-26 12:06:35', null, '1', null, '1', '20191126120635268', '35666710bde34eb2cf1a41b9966951ca394799721574741109860', '61', '3.95');
INSERT INTO `sampling_media_order` VALUES ('3562', '0', '2019-11-26 12:13:25', null, '1', null, '1', '20191126121325831', '43564100ca6a540ba65042fbb4e3a34c88800e6c1574741550219', '80', '3.11');
INSERT INTO `sampling_media_order` VALUES ('3563', '0', '2019-11-26 12:16:22', null, '1', null, '1', '20191126121622723', '43564100ca6a540ba65042fbb4e3a34c88800e6c1574741550219', '53', '3.66');
INSERT INTO `sampling_media_order` VALUES ('3564', '0', '2019-11-26 12:16:45', null, '1', null, '1', '20191126121645589', '43564100ca6a540ba65042fbb4e3a34c88800e6c1574741550219', '74', '3.56');
INSERT INTO `sampling_media_order` VALUES ('3565', '0', '2019-11-26 12:20:00', null, '1', null, '1', '20191126122000863', '896031591a27c448b6754cd095328644b13cf8fd1574661367740', '51', '3.55');
INSERT INTO `sampling_media_order` VALUES ('3566', '0', '2019-11-26 12:20:29', null, '1', null, '1', '20191126122029116', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '34', '3.47');
INSERT INTO `sampling_media_order` VALUES ('3567', '0', '2019-11-26 12:21:17', null, '1', null, '1', '20191126122117359', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '104', '3.92');
INSERT INTO `sampling_media_order` VALUES ('3568', '0', '2019-11-26 12:21:43', null, '1', null, '1', '20191126122143322', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '68', '3.68');
INSERT INTO `sampling_media_order` VALUES ('3569', '0', '2019-11-26 12:22:39', null, '1', null, '1', '20191126122239292', '82114772725dd6ea0c8b468e8ea7b27b115aea3d1574663367311', '85', '3.13');
INSERT INTO `sampling_media_order` VALUES ('3570', '0', '2019-11-26 12:23:29', null, '1', null, '1', '20191126122329498', '82114772725dd6ea0c8b468e8ea7b27b115aea3d1574663367311', '34', '3.59');
INSERT INTO `sampling_media_order` VALUES ('3571', '0', '2019-11-26 12:24:26', null, '1', null, '1', '20191126122426968', '896031591a27c448b6754cd095328644b13cf8fd1574661367740', '92', '3.24');
INSERT INTO `sampling_media_order` VALUES ('3572', '0', '2019-11-26 12:24:37', null, '1', null, '1', '20191126122437816', '82114772725dd6ea0c8b468e8ea7b27b115aea3d1574663367311', '68', '3.44');
INSERT INTO `sampling_media_order` VALUES ('3573', '0', '2019-11-26 12:25:04', null, '1', null, '1', '20191126122504519', '896031591a27c448b6754cd095328644b13cf8fd1574661367740', '62', '3.91');
INSERT INTO `sampling_media_order` VALUES ('3574', '0', '2019-11-26 12:25:44', null, '1', null, '1', '20191126122544741', '82114772725dd6ea0c8b468e8ea7b27b115aea3d1574663367311', '74', '3.56');
INSERT INTO `sampling_media_order` VALUES ('3575', '0', '2019-11-26 12:25:54', null, '1', null, '1', '20191126122554176', '896031591a27c448b6754cd095328644b13cf8fd1574661367740', '80', '3.88');
INSERT INTO `sampling_media_order` VALUES ('3576', '0', '2019-11-26 12:26:14', null, '1', null, '1', '20191126122614757', '82114772725dd6ea0c8b468e8ea7b27b115aea3d1574663367311', '63', '3.22');
INSERT INTO `sampling_media_order` VALUES ('3577', '0', '2019-11-26 12:26:38', null, '1', null, '1', '20191126122638844', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '83', '3.89');
INSERT INTO `sampling_media_order` VALUES ('3578', '0', '2019-11-26 12:26:53', null, '1', null, '1', '20191126122653118', '82114772725dd6ea0c8b468e8ea7b27b115aea3d1574663367311', '76', '3.33');
INSERT INTO `sampling_media_order` VALUES ('3579', '0', '2019-11-26 12:27:08', null, '1', null, '1', '20191126122708338', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '39', '3.01');
INSERT INTO `sampling_media_order` VALUES ('3580', '0', '2019-11-26 12:28:12', null, '1', null, '1', '20191126122812937', '82114772725dd6ea0c8b468e8ea7b27b115aea3d1574663367311', '103', '3.24');
INSERT INTO `sampling_media_order` VALUES ('3581', '0', '2019-11-26 12:28:26', null, '1', null, '1', '20191126122826222', '82114772725dd6ea0c8b468e8ea7b27b115aea3d1574663367311', '50', '3.40');
INSERT INTO `sampling_media_order` VALUES ('3582', '0', '2019-11-26 12:29:51', null, '1', null, '1', '20191126122951561', '39701583d3d5726800c74b0e8e41f370a03fe7f31574723825985', '41', '3.48');
INSERT INTO `sampling_media_order` VALUES ('3583', '0', '2019-11-26 12:35:15', null, '1', null, '1', '20191126123515350', '896031591a27c448b6754cd095328644b13cf8fd1574661367740', '50', '3.97');
INSERT INTO `sampling_media_order` VALUES ('3584', '0', '2019-11-26 12:37:28', null, '1', null, '1', '20191126123728101', '896031591a27c448b6754cd095328644b13cf8fd1574661367740', '62', '3.87');
INSERT INTO `sampling_media_order` VALUES ('3585', '0', '2019-11-26 12:38:36', null, '1', null, '1', '20191126123836886', '896031591a27c448b6754cd095328644b13cf8fd1574661367740', '85', '3.23');
INSERT INTO `sampling_media_order` VALUES ('3586', '0', '2019-11-26 12:59:53', null, '1', null, '1', '20191126125953193', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '103', '3.39');
INSERT INTO `sampling_media_order` VALUES ('3587', '0', '2019-11-26 13:03:39', null, '1', null, '1', '20191126130339820', '467315941255dcb415864da08990050a436dde8e1574636489069', '93', '3.54');
INSERT INTO `sampling_media_order` VALUES ('3588', '0', '2019-11-26 13:04:36', null, '1', null, '1', '20191126130436247', '467315941255dcb415864da08990050a436dde8e1574636489069', '92', '3.32');
INSERT INTO `sampling_media_order` VALUES ('3589', '0', '2019-11-26 13:05:27', null, '1', null, '1', '20191126130527991', '467315941255dcb415864da08990050a436dde8e1574636489069', '50', '3.50');
INSERT INTO `sampling_media_order` VALUES ('3590', '0', '2019-11-26 13:06:09', null, '1', null, '1', '20191126130609872', '467315941255dcb415864da08990050a436dde8e1574636489069', '80', '3.64');
INSERT INTO `sampling_media_order` VALUES ('3591', '0', '2019-11-26 13:07:01', null, '1', null, '1', '20191126130701134', '467315941255dcb415864da08990050a436dde8e1574636489069', '85', '3.75');
INSERT INTO `sampling_media_order` VALUES ('3592', '0', '2019-11-26 13:11:00', null, '1', null, '1', '20191126131100915', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '108', '3.03');
INSERT INTO `sampling_media_order` VALUES ('3593', '0', '2019-11-26 13:11:40', null, '1', null, '1', '20191126131140272', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '93', '3.58');
INSERT INTO `sampling_media_order` VALUES ('3594', '0', '2019-11-26 13:13:33', null, '1', null, '1', '20191126131333904', '467315941255dcb415864da08990050a436dde8e1574636489069', '41', '3.59');
INSERT INTO `sampling_media_order` VALUES ('3595', '0', '2019-11-26 13:16:12', null, '1', null, '1', '20191126131612646', '467315941255dcb415864da08990050a436dde8e1574636489069', '85', '3.24');
INSERT INTO `sampling_media_order` VALUES ('3596', '0', '2019-11-26 13:22:34', null, '1', null, '1', '20191126132234489', '1537133870fe679fdd124437a5046d238fcceda21574235016311', '103', '3.88');
INSERT INTO `sampling_media_order` VALUES ('3597', '0', '2019-11-26 13:24:35', null, '1', null, '1', '20191126132435769', '467315941255dcb415864da08990050a436dde8e1574636489069', '41', '3.39');
INSERT INTO `sampling_media_order` VALUES ('3598', '0', '2019-11-26 13:50:28', null, '1', null, '1', '20191126135028427', '957827838a1cf7fbab634004a22c3f432ef0fca71573323048619', '16', '3.37');
INSERT INTO `sampling_media_order` VALUES ('3599', '0', '2019-11-26 13:51:55', null, '1', null, '1', '20191126135155356', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '29', '3.91');
INSERT INTO `sampling_media_order` VALUES ('3600', '0', '2019-11-26 13:52:38', null, '1', null, '1', '20191126135238735', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '41', '3.43');
INSERT INTO `sampling_media_order` VALUES ('3601', '0', '2019-11-26 14:06:06', null, '1', null, '1', '20191126140606104', '656318293bf42ed33c724b6e904407dd9db90fb21574674771999', '109', '3.76');
INSERT INTO `sampling_media_order` VALUES ('3602', '0', '2019-11-26 14:06:18', null, '1', null, '1', '20191126140618181', '957827838a1cf7fbab634004a22c3f432ef0fca71573323048619', '102', '3.99');
INSERT INTO `sampling_media_order` VALUES ('3603', '0', '2019-11-26 14:08:28', null, '1', null, '1', '20191126140828364', '957827838a1cf7fbab634004a22c3f432ef0fca71573323048619', '76', '3.25');
INSERT INTO `sampling_media_order` VALUES ('3604', '0', '2019-11-26 14:08:42', null, '1', null, '1', '20191126140842666', '957827838a1cf7fbab634004a22c3f432ef0fca71573323048619', '16', '3.85');
INSERT INTO `sampling_media_order` VALUES ('3605', '0', '2019-11-26 14:12:44', null, '1', null, '1', '20191126141244407', '996764003f00c0665abf4bef8056d1fcf090aedb1574748752632', '104', '3.96');
INSERT INTO `sampling_media_order` VALUES ('3606', '0', '2019-11-26 14:29:31', null, '1', null, '1', '20191126142931586', '5577538798413571ea6e43c1a3e10a78c0e685961574749673557', '104', '3.98');
INSERT INTO `sampling_media_order` VALUES ('3607', '0', '2019-11-26 14:43:53', null, '1', null, '1', '20191126144353440', '24833788b93af45e913940e4a27d3adb013c9b2f1574750623119', '106', '3.87');
INSERT INTO `sampling_media_order` VALUES ('3608', '0', '2019-11-26 14:44:47', null, '1', null, '1', '20191126144447912', '75402165425f852d228a4c929c6faaefc063b1831574487567828', '35', '3.64');
INSERT INTO `sampling_media_order` VALUES ('3609', '0', '2019-11-26 14:45:23', null, '1', null, '1', '20191126144523869', '75402165425f852d228a4c929c6faaefc063b1831574487567828', '69', '3.50');
INSERT INTO `sampling_media_order` VALUES ('3610', '0', '2019-11-26 14:46:06', null, '1', null, '1', '20191126144606591', '24833788b93af45e913940e4a27d3adb013c9b2f1574750623119', '102', '3.40');
INSERT INTO `sampling_media_order` VALUES ('3611', '0', '2019-11-26 14:46:29', null, '1', null, '1', '20191126144629672', '24833788b93af45e913940e4a27d3adb013c9b2f1574750623119', '63', '3.47');
INSERT INTO `sampling_media_order` VALUES ('3612', '0', '2019-11-26 15:09:50', null, '1', null, '1', '20191126150950664', '996764003f00c0665abf4bef8056d1fcf090aedb1574748752632', '107', '3.84');
INSERT INTO `sampling_media_order` VALUES ('3613', '0', '2019-11-26 15:10:32', null, '1', null, '1', '20191126151032863', '996764003f00c0665abf4bef8056d1fcf090aedb1574748752632', '69', '3.91');
INSERT INTO `sampling_media_order` VALUES ('3614', '0', '2019-11-26 15:10:57', null, '1', null, '1', '20191126151057105', '996764003f00c0665abf4bef8056d1fcf090aedb1574748752632', '69', '3.64');
INSERT INTO `sampling_media_order` VALUES ('3615', '0', '2019-11-26 15:49:50', null, '1', null, '1', '20191126154950192', '996764003f00c0665abf4bef8056d1fcf090aedb1574748752632', '41', '3.17');
INSERT INTO `sampling_media_order` VALUES ('3616', '0', '2019-11-26 16:13:46', null, '1', null, '1', '20191126161346959', '970030687332ab44d435488cb91d180981020ece1574756015889', '107', '3.12');
INSERT INTO `sampling_media_order` VALUES ('3617', '0', '2019-11-26 18:01:15', null, '1', null, '1', '20191126180115913', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '109', '3.15');
INSERT INTO `sampling_media_order` VALUES ('3618', '0', '2019-11-26 18:05:40', null, '1', null, '1', '20191126180540922', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '40', '3.25');
INSERT INTO `sampling_media_order` VALUES ('3619', '0', '2019-11-26 18:06:16', null, '1', null, '1', '20191126180616152', '957827838a1cf7fbab634004a22c3f432ef0fca71573323048619', '40', '3.41');
INSERT INTO `sampling_media_order` VALUES ('3620', '0', '2019-11-26 18:09:22', null, '1', null, '1', '20191126180922635', '957827838a1cf7fbab634004a22c3f432ef0fca71573323048619', '39', '3.54');
INSERT INTO `sampling_media_order` VALUES ('3621', '0', '2019-11-26 18:15:51', null, '1', null, '1', '20191126181551446', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '40', '3.75');
INSERT INTO `sampling_media_order` VALUES ('3622', '0', '2019-11-26 18:45:21', null, '1', null, '1', '20191126184521565', '12965054ed4181ef2d154b90b14c18296da62b0b1574631874062', '104', '3.17');
INSERT INTO `sampling_media_order` VALUES ('3623', '0', '2019-11-26 18:46:02', null, '1', null, '1', '20191126184602344', '12965054ed4181ef2d154b90b14c18296da62b0b1574631874062', '104', '3.82');
INSERT INTO `sampling_media_order` VALUES ('3624', '0', '2019-11-26 18:46:53', null, '1', null, '1', '20191126184653358', '12965054ed4181ef2d154b90b14c18296da62b0b1574631874062', '104', '3.14');
INSERT INTO `sampling_media_order` VALUES ('3625', '0', '2019-11-26 18:48:13', null, '1', null, '1', '20191126184813755', '12965054ed4181ef2d154b90b14c18296da62b0b1574631874062', '104', '3.67');
INSERT INTO `sampling_media_order` VALUES ('3626', '0', '2019-11-26 18:48:32', null, '1', null, '1', '20191126184832933', '12965054ed4181ef2d154b90b14c18296da62b0b1574631874062', '105', '3.19');
INSERT INTO `sampling_media_order` VALUES ('3627', '0', '2019-11-26 18:49:08', null, '1', null, '1', '20191126184908565', '12965054ed4181ef2d154b90b14c18296da62b0b1574631874062', '104', '3.71');
INSERT INTO `sampling_media_order` VALUES ('3628', '0', '2019-11-26 18:50:39', null, '1', null, '1', '20191126185039485', '12965054ed4181ef2d154b90b14c18296da62b0b1574631874062', '104', '3.51');
INSERT INTO `sampling_media_order` VALUES ('3629', '0', '2019-11-26 18:51:58', null, '1', null, '1', '20191126185158336', '12965054ed4181ef2d154b90b14c18296da62b0b1574631874062', '104', '3.92');
INSERT INTO `sampling_media_order` VALUES ('3630', '0', '2019-11-26 18:52:27', null, '1', null, '1', '20191126185227165', '12965054ed4181ef2d154b90b14c18296da62b0b1574631874062', '104', '3.44');
INSERT INTO `sampling_media_order` VALUES ('3631', '0', '2019-11-26 18:52:47', null, '1', null, '1', '20191126185247356', '12965054ed4181ef2d154b90b14c18296da62b0b1574631874062', '104', '3.64');
INSERT INTO `sampling_media_order` VALUES ('3632', '0', '2019-11-26 19:13:20', null, '1', null, '1', '20191126191320793', '996764003f00c0665abf4bef8056d1fcf090aedb1574748752632', '104', '3.35');
INSERT INTO `sampling_media_order` VALUES ('3633', '0', '2019-11-26 19:15:07', null, '1', null, '1', '20191126191507348', '996764003f00c0665abf4bef8056d1fcf090aedb1574748752632', '96', '3.71');
INSERT INTO `sampling_media_order` VALUES ('3634', '0', '2019-11-26 19:15:54', null, '1', null, '1', '20191126191554233', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '96', '3.24');
INSERT INTO `sampling_media_order` VALUES ('3635', '0', '2019-11-26 19:16:57', null, '1', null, '1', '20191126191657687', '996764003f00c0665abf4bef8056d1fcf090aedb1574748752632', '54', '3.13');
INSERT INTO `sampling_media_order` VALUES ('3636', '0', '2019-11-26 19:17:00', null, '1', null, '1', '20191126191700629', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '105', '3.65');
INSERT INTO `sampling_media_order` VALUES ('3637', '0', '2019-11-26 19:17:25', null, '1', null, '1', '20191126191725738', '996764003f00c0665abf4bef8056d1fcf090aedb1574748752632', '51', '3.26');
INSERT INTO `sampling_media_order` VALUES ('3638', '0', '2019-11-26 19:18:52', null, '1', null, '1', '20191126191852309', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '30', '3.44');
INSERT INTO `sampling_media_order` VALUES ('3639', '0', '2019-11-26 19:21:02', null, '1', null, '1', '20191126192102565', '996764003f00c0665abf4bef8056d1fcf090aedb1574748752632', '102', '3.48');
INSERT INTO `sampling_media_order` VALUES ('3640', '0', '2019-11-26 19:21:49', null, '1', null, '1', '20191126192149613', '996764003f00c0665abf4bef8056d1fcf090aedb1574748752632', '100', '3.66');
INSERT INTO `sampling_media_order` VALUES ('3641', '0', '2019-11-26 19:22:55', null, '1', null, '1', '20191126192255745', '996764003f00c0665abf4bef8056d1fcf090aedb1574748752632', '83', '3.38');
INSERT INTO `sampling_media_order` VALUES ('3642', '0', '2019-11-26 19:23:34', null, '1', null, '1', '20191126192334249', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '93', '3.51');
INSERT INTO `sampling_media_order` VALUES ('3643', '0', '2019-11-26 19:25:05', null, '1', null, '1', '20191126192505578', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '79', '3.32');
INSERT INTO `sampling_media_order` VALUES ('3644', '0', '2019-11-26 19:25:47', null, '1', null, '1', '20191126192547468', '996764003f00c0665abf4bef8056d1fcf090aedb1574748752632', '67', '3.16');
INSERT INTO `sampling_media_order` VALUES ('3645', '0', '2019-11-26 19:26:05', null, '1', null, '1', '20191126192605227', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '69', '3.61');
INSERT INTO `sampling_media_order` VALUES ('3646', '0', '2019-11-26 19:26:37', null, '1', null, '1', '20191126192637948', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '96', '3.86');
INSERT INTO `sampling_media_order` VALUES ('3647', '0', '2019-11-26 19:27:09', null, '1', null, '1', '20191126192709823', '996764003f00c0665abf4bef8056d1fcf090aedb1574748752632', '52', '3.97');
INSERT INTO `sampling_media_order` VALUES ('3648', '0', '2019-11-26 19:27:42', null, '1', null, '1', '20191126192742818', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '45', '3.06');
INSERT INTO `sampling_media_order` VALUES ('3649', '0', '2019-11-26 19:27:56', null, '1', null, '1', '20191126192756820', '996764003f00c0665abf4bef8056d1fcf090aedb1574748752632', '69', '3.43');
INSERT INTO `sampling_media_order` VALUES ('3650', '0', '2019-11-26 19:34:03', null, '1', null, '1', '20191126193403240', '16392251b837f5b15d904e749635bd77fb410f4b1574767960026', '101', '3.95');
INSERT INTO `sampling_media_order` VALUES ('3651', '0', '2019-11-26 19:35:38', null, '1', null, '1', '20191126193538517', '647979347a2fd22468d24933bb3d43ac5f5d5df21574330866571', '104', '3.05');
INSERT INTO `sampling_media_order` VALUES ('3652', '0', '2019-11-26 19:43:00', null, '1', null, '1', '20191126194300672', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '96', '3.94');
INSERT INTO `sampling_media_order` VALUES ('3653', '0', '2019-11-26 19:44:11', null, '1', null, '1', '20191126194411760', '224555769b6d22fc8d9d47a99ee82d216e1e18891574587295773', '51', '3.77');
INSERT INTO `sampling_media_order` VALUES ('3654', '0', '2019-11-26 19:46:43', null, '1', null, '1', '20191126194643564', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '105', '3.66');
INSERT INTO `sampling_media_order` VALUES ('3655', '0', '2019-11-26 19:47:52', null, '1', null, '1', '20191126194752998', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '93', '3.07');
INSERT INTO `sampling_media_order` VALUES ('3656', '0', '2019-11-26 19:48:22', null, '1', null, '1', '20191126194822105', '224555769b6d22fc8d9d47a99ee82d216e1e18891574587295773', '103', '3.32');
INSERT INTO `sampling_media_order` VALUES ('3657', '0', '2019-11-26 19:48:38', null, '1', null, '1', '20191126194838179', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '93', '3.61');
INSERT INTO `sampling_media_order` VALUES ('3658', '0', '2019-11-26 19:49:05', null, '1', null, '1', '20191126194905516', '224555769b6d22fc8d9d47a99ee82d216e1e18891574587295773', '16', '3.62');
INSERT INTO `sampling_media_order` VALUES ('3659', '0', '2019-11-26 19:49:53', null, '1', null, '1', '20191126194953662', '647979347a2fd22468d24933bb3d43ac5f5d5df21574330866571', '41', '3.98');
INSERT INTO `sampling_media_order` VALUES ('3660', '0', '2019-11-26 19:52:01', null, '1', null, '1', '20191126195201399', '224555769b6d22fc8d9d47a99ee82d216e1e18891574587295773', '67', '3.45');
INSERT INTO `sampling_media_order` VALUES ('3661', '0', '2019-11-26 19:53:47', null, '1', null, '1', '20191126195347166', '647979347a2fd22468d24933bb3d43ac5f5d5df21574330866571', '16', '3.65');
INSERT INTO `sampling_media_order` VALUES ('3662', '0', '2019-11-26 19:54:30', null, '1', null, '1', '20191126195430933', '224555769b6d22fc8d9d47a99ee82d216e1e18891574587295773', '16', '3.86');
INSERT INTO `sampling_media_order` VALUES ('3663', '0', '2019-11-26 19:55:49', null, '1', null, '1', '20191126195549834', '224555769b6d22fc8d9d47a99ee82d216e1e18891574587295773', '67', '3.49');
INSERT INTO `sampling_media_order` VALUES ('3664', '0', '2019-11-26 19:55:56', null, '1', null, '1', '20191126195556321', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '99', '3.73');
INSERT INTO `sampling_media_order` VALUES ('3665', '0', '2019-11-26 19:56:10', null, '1', null, '1', '20191126195610875', '224555769b6d22fc8d9d47a99ee82d216e1e18891574587295773', '60', '3.23');
INSERT INTO `sampling_media_order` VALUES ('3666', '0', '2019-11-26 19:56:41', null, '1', null, '1', '20191126195641212', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '69', '3.09');
INSERT INTO `sampling_media_order` VALUES ('3667', '0', '2019-11-26 19:57:28', null, '1', null, '1', '20191126195728777', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '16', '3.28');
INSERT INTO `sampling_media_order` VALUES ('3668', '0', '2019-11-26 19:57:45', null, '1', null, '1', '20191126195745271', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '105', '3.63');
INSERT INTO `sampling_media_order` VALUES ('3669', '0', '2019-11-26 19:58:10', null, '1', null, '1', '20191126195810951', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '41', '3.97');
INSERT INTO `sampling_media_order` VALUES ('3670', '0', '2019-11-26 19:58:16', null, '1', null, '1', '20191126195816834', '224555769b6d22fc8d9d47a99ee82d216e1e18891574587295773', '65', '3.97');
INSERT INTO `sampling_media_order` VALUES ('3671', '0', '2019-11-26 19:58:56', null, '1', null, '1', '20191126195856547', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '51', '3.94');
INSERT INTO `sampling_media_order` VALUES ('3672', '0', '2019-11-26 19:59:14', null, '1', null, '1', '20191126195914503', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '105', '3.06');
INSERT INTO `sampling_media_order` VALUES ('3673', '0', '2019-11-26 19:59:45', null, '1', null, '1', '20191126195945493', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '51', '3.04');
INSERT INTO `sampling_media_order` VALUES ('3674', '0', '2019-11-26 20:00:05', null, '1', null, '1', '20191126200005488', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '105', '3.34');
INSERT INTO `sampling_media_order` VALUES ('3675', '0', '2019-11-26 20:01:05', null, '1', null, '1', '20191126200105954', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '79', '3.12');
INSERT INTO `sampling_media_order` VALUES ('3676', '0', '2019-11-26 20:01:06', null, '1', null, '1', '20191126200106507', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '59', '3.00');
INSERT INTO `sampling_media_order` VALUES ('3677', '0', '2019-11-26 20:01:58', null, '1', null, '1', '20191126200158686', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '103', '3.83');
INSERT INTO `sampling_media_order` VALUES ('3678', '0', '2019-11-26 20:02:52', null, '1', null, '1', '20191126200252430', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '41', '3.35');
INSERT INTO `sampling_media_order` VALUES ('3679', '0', '2019-11-26 20:03:00', null, '1', null, '1', '20191126200300103', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '44', '3.17');
INSERT INTO `sampling_media_order` VALUES ('3680', '0', '2019-11-26 20:03:24', null, '1', null, '1', '20191126200324446', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '55', '3.77');
INSERT INTO `sampling_media_order` VALUES ('3681', '0', '2019-11-26 20:04:34', null, '1', null, '1', '20191126200434386', '63339082d167635703f440d2a8da928a7b46314f1574740758711', '63', '3.67');
INSERT INTO `sampling_media_order` VALUES ('3682', '0', '2019-11-26 20:04:40', null, '1', null, '1', '20191126200440279', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '67', '3.15');
INSERT INTO `sampling_media_order` VALUES ('3683', '0', '2019-11-26 20:05:20', null, '1', null, '1', '20191126200520491', '63339082d167635703f440d2a8da928a7b46314f1574740758711', '69', '3.97');
INSERT INTO `sampling_media_order` VALUES ('3684', '0', '2019-11-26 20:06:48', null, '1', null, '1', '20191126200648634', '63339082d167635703f440d2a8da928a7b46314f1574740758711', '16', '3.81');
INSERT INTO `sampling_media_order` VALUES ('3685', '0', '2019-11-26 20:07:13', null, '1', null, '1', '20191126200713372', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '59', '3.54');
INSERT INTO `sampling_media_order` VALUES ('3686', '0', '2019-11-26 20:07:29', null, '1', null, '1', '20191126200729717', '63339082d167635703f440d2a8da928a7b46314f1574740758711', '51', '3.44');
INSERT INTO `sampling_media_order` VALUES ('3687', '0', '2019-11-26 20:08:25', null, '1', null, '1', '20191126200825268', '63339082d167635703f440d2a8da928a7b46314f1574740758711', '103', '3.53');
INSERT INTO `sampling_media_order` VALUES ('3688', '0', '2019-11-26 20:09:29', null, '1', null, '1', '20191126200929287', '63339082d167635703f440d2a8da928a7b46314f1574740758711', '79', '3.40');
INSERT INTO `sampling_media_order` VALUES ('3689', '0', '2019-11-26 20:11:19', null, '1', null, '1', '20191126201119849', '63339082d167635703f440d2a8da928a7b46314f1574740758711', '106', '3.84');
INSERT INTO `sampling_media_order` VALUES ('3690', '0', '2019-11-26 20:11:26', null, '1', null, '1', '20191126201126287', '38839406c05b85c413d7472b91966f4c3ca385801574667879084', '106', '3.82');
INSERT INTO `sampling_media_order` VALUES ('3691', '0', '2019-11-26 20:14:19', null, '1', null, '1', '20191126201419214', '63339082d167635703f440d2a8da928a7b46314f1574740758711', '67', '3.36');
INSERT INTO `sampling_media_order` VALUES ('3692', '0', '2019-11-26 20:15:11', null, '1', null, '1', '20191126201511327', '63339082d167635703f440d2a8da928a7b46314f1574740758711', '55', '3.05');
INSERT INTO `sampling_media_order` VALUES ('3693', '0', '2019-11-26 20:17:06', null, '1', null, '1', '20191126201706485', '63339082d167635703f440d2a8da928a7b46314f1574740758711', '107', '3.37');
INSERT INTO `sampling_media_order` VALUES ('3694', '0', '2019-11-26 20:25:14', null, '1', null, '1', '20191126202514563', '77862445adb15320dd084e3abd7863765ae9d4671574771066912', '80', '3.56');
INSERT INTO `sampling_media_order` VALUES ('3695', '0', '2019-11-26 20:27:16', null, '1', null, '1', '20191126202716945', '77862445adb15320dd084e3abd7863765ae9d4671574771066912', '92', '3.48');
INSERT INTO `sampling_media_order` VALUES ('3696', '0', '2019-11-26 20:27:42', null, '1', null, '1', '20191126202742755', '8549820287d5c4c79c3447e19cf2e4b123ff6eb21574605264511', '55', '3.83');
INSERT INTO `sampling_media_order` VALUES ('3697', '0', '2019-11-26 20:29:02', null, '1', null, '1', '20191126202902162', '8549820287d5c4c79c3447e19cf2e4b123ff6eb21574605264511', '51', '3.22');
INSERT INTO `sampling_media_order` VALUES ('3698', '0', '2019-11-26 20:30:30', null, '1', null, '1', '20191126203030310', '8549820287d5c4c79c3447e19cf2e4b123ff6eb21574605264511', '79', '3.74');
INSERT INTO `sampling_media_order` VALUES ('3699', '0', '2019-11-26 20:31:29', null, '1', null, '1', '20191126203129334', '8549820287d5c4c79c3447e19cf2e4b123ff6eb21574605264511', '44', '3.62');
INSERT INTO `sampling_media_order` VALUES ('3700', '0', '2019-11-26 20:32:38', null, '1', null, '1', '20191126203238484', '8549820287d5c4c79c3447e19cf2e4b123ff6eb21574605264511', '96', '3.05');
INSERT INTO `sampling_media_order` VALUES ('3701', '0', '2019-11-26 20:33:28', null, '1', null, '1', '20191126203328324', '8549820287d5c4c79c3447e19cf2e4b123ff6eb21574605264511', '16', '3.36');
INSERT INTO `sampling_media_order` VALUES ('3702', '0', '2019-11-26 20:34:14', null, '1', null, '1', '20191126203414349', '8549820287d5c4c79c3447e19cf2e4b123ff6eb21574605264511', '69', '3.29');
INSERT INTO `sampling_media_order` VALUES ('3703', '0', '2019-11-26 20:35:05', null, '1', null, '1', '20191126203505525', '8549820287d5c4c79c3447e19cf2e4b123ff6eb21574605264511', '79', '3.54');
INSERT INTO `sampling_media_order` VALUES ('3704', '0', '2019-11-26 20:35:35', null, '1', null, '1', '20191126203535989', '8549820287d5c4c79c3447e19cf2e4b123ff6eb21574605264511', '45', '3.76');
INSERT INTO `sampling_media_order` VALUES ('3705', '0', '2019-11-26 20:37:26', null, '1', null, '1', '20191126203726520', '8549820287d5c4c79c3447e19cf2e4b123ff6eb21574605264511', '55', '3.91');
INSERT INTO `sampling_media_order` VALUES ('3706', '0', '2019-11-26 20:37:55', null, '1', null, '1', '20191126203755724', '8549820287d5c4c79c3447e19cf2e4b123ff6eb21574605264511', '41', '3.90');
INSERT INTO `sampling_media_order` VALUES ('3707', '0', '2019-11-26 20:52:46', null, '1', null, '1', '20191126205246457', '49749502261379078f1b42ccb4e66131440179631574752938809', '108', '3.98');
INSERT INTO `sampling_media_order` VALUES ('3708', '0', '2019-11-26 21:07:09', null, '1', null, '1', '20191126210709281', '73746891002d72a78b4947f0b3d475b3e882e9021574773616934', '103', '3.34');
INSERT INTO `sampling_media_order` VALUES ('3709', '0', '2019-11-26 21:07:20', null, '1', null, '1', '20191126210720390', '', '55', '3.33');
INSERT INTO `sampling_media_order` VALUES ('3710', '0', '2019-11-26 21:08:04', null, '1', null, '1', '20191126210804990', '4223560461f287db77fc42dfbfd20a74edaed4321574573990332', '106', '3.46');
INSERT INTO `sampling_media_order` VALUES ('3711', '0', '2019-11-26 21:08:32', null, '1', null, '1', '20191126210832336', '4223560461f287db77fc42dfbfd20a74edaed4321574573990332', '104', '3.38');
INSERT INTO `sampling_media_order` VALUES ('3712', '0', '2019-11-26 21:09:40', null, '1', null, '1', '20191126210940431', '4223560461f287db77fc42dfbfd20a74edaed4321574573990332', '104', '3.81');
INSERT INTO `sampling_media_order` VALUES ('3713', '0', '2019-11-26 21:12:32', null, '1', null, '1', '20191126211232633', '21296845db714f4a4c89494eb847d13ef2e525c11574773920546', '66', '3.74');
INSERT INTO `sampling_media_order` VALUES ('3714', '0', '2019-11-26 21:13:36', null, '1', null, '1', '20191126211336357', '21296845db714f4a4c89494eb847d13ef2e525c11574773920546', '69', '3.58');
INSERT INTO `sampling_media_order` VALUES ('3715', '0', '2019-11-26 21:13:40', null, '1', null, '1', '20191126211340558', '544633313fcfbe151ab0469ab3424328194658c61574773989583', '105', '3.91');
INSERT INTO `sampling_media_order` VALUES ('3716', '0', '2019-11-26 21:18:52', null, '1', null, '1', '20191126211852891', '69834024ec5b22ebac814735ad74f368bdd8a65f1574774292556', '84', '3.53');
INSERT INTO `sampling_media_order` VALUES ('3717', '0', '2019-11-26 21:19:24', null, '1', null, '1', '20191126211924897', '69834024ec5b22ebac814735ad74f368bdd8a65f1574774292556', '55', '3.14');
INSERT INTO `sampling_media_order` VALUES ('3718', '0', '2019-11-26 21:26:10', null, '1', null, '1', '20191126212610484', '5029600887f09a96f9164de1b06333e39836d5351574605669743', '103', '3.68');
INSERT INTO `sampling_media_order` VALUES ('3719', '0', '2019-11-26 21:27:12', null, '1', null, '1', '20191126212712679', '5029600887f09a96f9164de1b06333e39836d5351574605669743', '51', '3.88');
INSERT INTO `sampling_media_order` VALUES ('3720', '0', '2019-11-26 21:27:51', null, '1', null, '1', '20191126212751350', '78303515999814fcc40e43e0a4d5dc6fabd2b0471574774864292', '109', '3.82');
INSERT INTO `sampling_media_order` VALUES ('3721', '0', '2019-11-26 21:28:43', null, '1', null, '1', '20191126212843685', '5029600887f09a96f9164de1b06333e39836d5351574605669743', '69', '3.82');
INSERT INTO `sampling_media_order` VALUES ('3722', '0', '2019-11-26 21:30:10', null, '1', null, '1', '20191126213010354', '5029600887f09a96f9164de1b06333e39836d5351574605669743', '16', '3.58');
INSERT INTO `sampling_media_order` VALUES ('3723', '0', '2019-11-26 21:30:56', null, '1', null, '1', '20191126213056899', '5029600887f09a96f9164de1b06333e39836d5351574605669743', '55', '3.73');
INSERT INTO `sampling_media_order` VALUES ('3724', '0', '2019-11-26 21:31:55', null, '1', null, '1', '20191126213155208', '5029600887f09a96f9164de1b06333e39836d5351574605669743', '51', '3.37');
INSERT INTO `sampling_media_order` VALUES ('3725', '0', '2019-11-26 21:33:07', null, '1', null, '1', '20191126213307230', '5029600887f09a96f9164de1b06333e39836d5351574605669743', '79', '3.06');
INSERT INTO `sampling_media_order` VALUES ('3726', '0', '2019-11-26 21:34:14', null, '1', null, '1', '20191126213414149', '161244951f2663398a0c49e3b69e1e065003de951574775208978', '107', '3.34');
INSERT INTO `sampling_media_order` VALUES ('3727', '0', '2019-11-26 21:41:35', null, '1', null, '1', '20191126214135514', '250528988e091edab72a4782950306c0e8001f081574581349552', '79', '3.84');
INSERT INTO `sampling_media_order` VALUES ('3728', '0', '2019-11-26 21:42:56', null, '1', null, '1', '20191126214256666', '250528988e091edab72a4782950306c0e8001f081574581349552', '55', '3.83');
INSERT INTO `sampling_media_order` VALUES ('3729', '0', '2019-11-26 21:43:46', null, '1', null, '1', '20191126214346496', '', '69', '3.75');
INSERT INTO `sampling_media_order` VALUES ('3730', '0', '2019-11-26 21:44:28', null, '1', null, '1', '20191126214428433', '250528988e091edab72a4782950306c0e8001f081574581349552', '109', '3.50');
INSERT INTO `sampling_media_order` VALUES ('3731', '0', '2019-11-26 21:44:43', null, '1', null, '1', '20191126214443548', '', '55', '3.33');
INSERT INTO `sampling_media_order` VALUES ('3732', '0', '2019-11-26 21:45:29', null, '1', null, '1', '20191126214529237', '', '16', '3.32');
INSERT INTO `sampling_media_order` VALUES ('3733', '0', '2019-11-26 21:46:13', null, '1', null, '1', '20191126214613455', '', '103', '3.58');
INSERT INTO `sampling_media_order` VALUES ('3734', '0', '2019-11-26 21:47:01', null, '1', null, '1', '20191126214701106', '', '79', '3.06');
INSERT INTO `sampling_media_order` VALUES ('3735', '0', '2019-11-26 21:47:50', null, '1', null, '1', '20191126214750840', '38379052ea405c237e22424cbbac4a7490881a991574776062573', '96', '3.06');
INSERT INTO `sampling_media_order` VALUES ('3736', '0', '2019-11-26 21:49:18', null, '1', null, '1', '20191126214918612', '38379052ea405c237e22424cbbac4a7490881a991574776062573', '67', '3.25');
INSERT INTO `sampling_media_order` VALUES ('3737', '0', '2019-11-26 21:50:34', null, '1', null, '1', '20191126215034706', '5913505813870c5cc12145c9b939ebbd5fa2e68c1574609549039', '66', '3.81');
INSERT INTO `sampling_media_order` VALUES ('3738', '0', '2019-11-26 21:51:09', null, '1', null, '1', '20191126215109253', '161244951f2663398a0c49e3b69e1e065003de951574775208978', '94', '3.48');
INSERT INTO `sampling_media_order` VALUES ('3739', '0', '2019-11-26 21:51:25', null, '1', null, '1', '20191126215125763', '5913505813870c5cc12145c9b939ebbd5fa2e68c1574609549039', '66', '3.71');
INSERT INTO `sampling_media_order` VALUES ('3740', '0', '2019-11-26 21:51:57', null, '1', null, '1', '20191126215157278', '161244951f2663398a0c49e3b69e1e065003de951574775208978', '96', '3.28');
INSERT INTO `sampling_media_order` VALUES ('3741', '0', '2019-11-26 21:52:56', null, '1', null, '1', '20191126215256339', '161244951f2663398a0c49e3b69e1e065003de951574775208978', '41', '3.43');
INSERT INTO `sampling_media_order` VALUES ('3742', '0', '2019-11-26 21:53:44', null, '1', null, '1', '20191126215344571', '161244951f2663398a0c49e3b69e1e065003de951574775208978', '55', '3.08');
INSERT INTO `sampling_media_order` VALUES ('3743', '0', '2019-11-26 21:56:14', null, '1', null, '1', '20191126215614264', '989433114bb8867692d24a91affa309e714a1c701574773673607', '107', '3.60');
INSERT INTO `sampling_media_order` VALUES ('3744', '0', '2019-11-26 21:57:14', null, '1', null, '1', '20191126215714175', '989433114bb8867692d24a91affa309e714a1c701574773673607', '51', '3.44');
INSERT INTO `sampling_media_order` VALUES ('3745', '0', '2019-11-26 21:59:28', null, '1', null, '1', '20191126215928189', '382879640001a329667d455aa16561142d0d516e1574776714501', '22', '3.93');
INSERT INTO `sampling_media_order` VALUES ('3746', '0', '2019-11-26 22:25:07', null, '1', null, '1', '20191126222507364', '8309880959cb5874010a472abe4b94f3a26b9b121574778265148', '51', '3.65');
INSERT INTO `sampling_media_order` VALUES ('3747', '0', '2019-11-26 22:25:50', null, '1', null, '1', '20191126222550330', '8309880959cb5874010a472abe4b94f3a26b9b121574778265148', '79', '3.46');
INSERT INTO `sampling_media_order` VALUES ('3748', '0', '2019-11-26 22:25:56', null, '1', null, '1', '20191126222556780', '33159483f27922dd3bdb42e3976ca998c7965c8c1574584490375', '107', '3.85');
INSERT INTO `sampling_media_order` VALUES ('3749', '0', '2019-11-26 22:26:34', null, '1', null, '1', '20191126222634994', '8309880959cb5874010a472abe4b94f3a26b9b121574778265148', '54', '3.91');
INSERT INTO `sampling_media_order` VALUES ('3750', '0', '2019-11-26 22:26:43', null, '1', null, '1', '20191126222643292', '5190269254e71659fac44d1ab4f4d79d6a4a9ebb1574778376824', '108', '3.21');
INSERT INTO `sampling_media_order` VALUES ('3751', '0', '2019-11-26 22:27:08', null, '1', null, '1', '20191126222708828', '8309880959cb5874010a472abe4b94f3a26b9b121574778265148', '54', '3.46');
INSERT INTO `sampling_media_order` VALUES ('3752', '0', '2019-11-26 22:27:45', null, '1', null, '1', '20191126222745517', '8309880959cb5874010a472abe4b94f3a26b9b121574778265148', '30', '3.41');
INSERT INTO `sampling_media_order` VALUES ('3753', '0', '2019-11-26 22:27:56', null, '1', null, '1', '20191126222756903', '8309880959cb5874010a472abe4b94f3a26b9b121574778265148', '41', '3.54');
INSERT INTO `sampling_media_order` VALUES ('3754', '0', '2019-11-26 22:30:41', null, '1', null, '1', '20191126223041530', '3171124574bb983b3b8c4003977f918a6995ed851574490047171', '16', '3.97');
INSERT INTO `sampling_media_order` VALUES ('3755', '0', '2019-11-26 22:31:00', null, '1', null, '1', '20191126223100331', '50882749f6ab9b16f3514b6db2950877c0689d5b1574778646194', '105', '3.57');
INSERT INTO `sampling_media_order` VALUES ('3756', '0', '2019-11-26 22:31:38', null, '1', null, '1', '20191126223138130', '50882749f6ab9b16f3514b6db2950877c0689d5b1574778646194', '69', '3.21');
INSERT INTO `sampling_media_order` VALUES ('3757', '0', '2019-11-26 22:32:42', null, '1', null, '1', '20191126223242377', '84057757fbe26fd76eae4a3e8313915988275c4e1574778582963', '107', '3.64');
INSERT INTO `sampling_media_order` VALUES ('3758', '0', '2019-11-26 22:32:48', null, '1', null, '1', '20191126223248922', '5190269254e71659fac44d1ab4f4d79d6a4a9ebb1574778376824', '38', '3.90');
INSERT INTO `sampling_media_order` VALUES ('3759', '0', '2019-11-26 22:41:02', null, '1', null, '1', '20191126224102518', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '107', '3.60');
INSERT INTO `sampling_media_order` VALUES ('3760', '0', '2019-11-26 22:42:36', null, '1', null, '1', '20191126224236846', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '85', '3.93');
INSERT INTO `sampling_media_order` VALUES ('3761', '0', '2019-11-26 22:43:20', null, '1', null, '1', '20191126224320106', '31100997a02a746cf7cb4ff2b79631aab86266c21574579388462', '66', '3.59');
INSERT INTO `sampling_media_order` VALUES ('3762', '0', '2019-11-26 22:44:21', null, '1', null, '1', '20191126224421795', '31100997a02a746cf7cb4ff2b79631aab86266c21574579388462', '94', '3.70');
INSERT INTO `sampling_media_order` VALUES ('3763', '0', '2019-11-26 22:47:15', null, '1', null, '1', '20191126224715247', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '66', '3.74');
INSERT INTO `sampling_media_order` VALUES ('3764', '0', '2019-11-26 22:48:31', null, '1', null, '1', '20191126224831627', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '67', '3.66');
INSERT INTO `sampling_media_order` VALUES ('3765', '0', '2019-11-26 22:53:01', null, '1', null, '1', '20191126225301787', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '94', '3.96');
INSERT INTO `sampling_media_order` VALUES ('3766', '0', '2019-11-26 22:53:52', null, '1', null, '1', '20191126225352852', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '79', '3.96');
INSERT INTO `sampling_media_order` VALUES ('3767', '0', '2019-11-26 22:54:43', null, '1', null, '1', '20191126225443560', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '93', '3.65');
INSERT INTO `sampling_media_order` VALUES ('3768', '0', '2019-11-26 22:55:52', null, '1', null, '1', '20191126225552437', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '16', '3.61');
INSERT INTO `sampling_media_order` VALUES ('3769', '0', '2019-11-26 22:56:22', null, '1', null, '1', '20191126225622191', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '41', '3.81');
INSERT INTO `sampling_media_order` VALUES ('3770', '0', '2019-11-26 22:57:02', null, '1', null, '1', '20191126225702680', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '41', '3.42');
INSERT INTO `sampling_media_order` VALUES ('3771', '0', '2019-11-26 22:57:09', null, '1', null, '1', '20191126225709367', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '69', '3.74');
INSERT INTO `sampling_media_order` VALUES ('3772', '0', '2019-11-26 23:01:03', null, '1', null, '1', '20191126230103614', '8309880959cb5874010a472abe4b94f3a26b9b121574778265148', '105', '3.78');
INSERT INTO `sampling_media_order` VALUES ('3773', '0', '2019-11-26 23:01:48', null, '1', null, '1', '20191126230148994', '8309880959cb5874010a472abe4b94f3a26b9b121574778265148', '45', '3.94');
INSERT INTO `sampling_media_order` VALUES ('3774', '0', '2019-11-26 23:02:31', null, '1', null, '1', '20191126230231540', '8309880959cb5874010a472abe4b94f3a26b9b121574778265148', '30', '3.96');
INSERT INTO `sampling_media_order` VALUES ('3775', '0', '2019-11-26 23:05:42', null, '1', null, '1', '20191126230542446', '8309880959cb5874010a472abe4b94f3a26b9b121574778265148', '107', '3.99');
INSERT INTO `sampling_media_order` VALUES ('3776', '0', '2019-11-26 23:06:09', null, '1', null, '1', '20191126230609508', '8309880959cb5874010a472abe4b94f3a26b9b121574778265148', '109', '3.30');
INSERT INTO `sampling_media_order` VALUES ('3777', '0', '2019-11-26 23:08:45', null, '1', null, '1', '20191126230845784', '8309880959cb5874010a472abe4b94f3a26b9b121574778265148', '90', '3.78');
INSERT INTO `sampling_media_order` VALUES ('3778', '0', '2019-11-26 23:09:45', null, '1', null, '1', '20191126230945338', '8335725976c88281bdd049fe87cbbcf6ac9001d01573115984382', '107', '3.15');
INSERT INTO `sampling_media_order` VALUES ('3779', '0', '2019-11-26 23:10:33', null, '1', null, '1', '20191126231033156', '8309880959cb5874010a472abe4b94f3a26b9b121574778265148', '54', '3.37');
INSERT INTO `sampling_media_order` VALUES ('3780', '0', '2019-11-26 23:11:09', null, '1', null, '1', '20191126231109570', '8309880959cb5874010a472abe4b94f3a26b9b121574778265148', '54', '3.38');
INSERT INTO `sampling_media_order` VALUES ('3781', '0', '2019-11-26 23:29:08', null, '1', null, '1', '20191126232908459', '99429464f41c56dca47d4cbab51996b09029ce981574672783303', '55', '3.04');
INSERT INTO `sampling_media_order` VALUES ('3782', '0', '2019-11-26 23:37:43', null, '1', null, '1', '20191126233743571', '224555769b6d22fc8d9d47a99ee82d216e1e18891574587295773', '108', '3.24');
INSERT INTO `sampling_media_order` VALUES ('3783', '0', '2019-11-26 23:38:06', null, '1', null, '1', '20191126233806379', '224555769b6d22fc8d9d47a99ee82d216e1e18891574587295773', '16', '3.03');
INSERT INTO `sampling_media_order` VALUES ('3784', '0', '2019-11-27 00:16:00', null, '1', null, '1', '20191127001600940', '4607969169e69e8fc76f4c01bee2bec0836c3b9e1574607160053', '105', '3.22');
INSERT INTO `sampling_media_order` VALUES ('3785', '0', '2019-11-27 00:16:49', null, '1', null, '1', '20191127001649254', '4607969169e69e8fc76f4c01bee2bec0836c3b9e1574607160053', '104', '3.27');
INSERT INTO `sampling_media_order` VALUES ('3786', '0', '2019-11-27 00:17:34', null, '1', null, '1', '20191127001734166', '4607969169e69e8fc76f4c01bee2bec0836c3b9e1574607160053', '101', '3.53');
INSERT INTO `sampling_media_order` VALUES ('3787', '0', '2019-11-27 00:18:53', null, '1', null, '1', '20191127001853241', '4607969169e69e8fc76f4c01bee2bec0836c3b9e1574607160053', '94', '3.16');
INSERT INTO `sampling_media_order` VALUES ('3788', '0', '2019-11-27 00:20:32', null, '1', null, '1', '20191127002032376', '129706106c565353a46c4b55b5ad0af82a98d6951574785211874', '104', '3.49');
INSERT INTO `sampling_media_order` VALUES ('3789', '0', '2019-11-27 00:21:17', null, '1', null, '1', '20191127002117288', '4607969169e69e8fc76f4c01bee2bec0836c3b9e1574607160053', '105', '3.85');
INSERT INTO `sampling_media_order` VALUES ('3790', '0', '2019-11-27 00:21:17', null, '1', null, '1', '20191127002117899', '129706106c565353a46c4b55b5ad0af82a98d6951574785211874', '104', '3.72');
INSERT INTO `sampling_media_order` VALUES ('3791', '0', '2019-11-27 00:21:56', null, '1', null, '1', '20191127002156999', '129706106c565353a46c4b55b5ad0af82a98d6951574785211874', '95', '3.60');
INSERT INTO `sampling_media_order` VALUES ('3792', '0', '2019-11-27 00:23:44', null, '1', null, '1', '20191127002344164', '129706106c565353a46c4b55b5ad0af82a98d6951574785211874', '105', '3.06');
INSERT INTO `sampling_media_order` VALUES ('3793', '0', '2019-11-27 00:24:07', null, '1', null, '1', '20191127002407355', '129706106c565353a46c4b55b5ad0af82a98d6951574785211874', '94', '3.91');
INSERT INTO `sampling_media_order` VALUES ('3794', '0', '2019-11-27 00:25:02', null, '1', null, '1', '20191127002502326', '129706106c565353a46c4b55b5ad0af82a98d6951574785211874', '92', '3.09');
INSERT INTO `sampling_media_order` VALUES ('3795', '0', '2019-11-27 00:31:38', null, '1', null, '1', '20191127003138881', '129706106c565353a46c4b55b5ad0af82a98d6951574785211874', '62', '3.81');
INSERT INTO `sampling_media_order` VALUES ('3796', '0', '2019-11-27 00:33:21', null, '1', null, '1', '20191127003321593', '129706106c565353a46c4b55b5ad0af82a98d6951574785211874', '54', '3.28');
INSERT INTO `sampling_media_order` VALUES ('3797', '0', '2019-11-27 00:34:45', null, '1', null, '1', '20191127003445625', '129706106c565353a46c4b55b5ad0af82a98d6951574785211874', '98', '3.12');
INSERT INTO `sampling_media_order` VALUES ('3798', '0', '2019-11-27 00:35:36', null, '1', null, '1', '20191127003536585', '41692499e1a034b3d5c14eb2a3aab129f7c020261574602642564', '98', '3.74');
INSERT INTO `sampling_media_order` VALUES ('3799', '0', '2019-11-27 00:38:39', null, '1', null, '1', '20191127003839833', '41692499e1a034b3d5c14eb2a3aab129f7c020261574602642564', '44', '3.08');
INSERT INTO `sampling_media_order` VALUES ('3800', '0', '2019-11-27 00:59:45', null, '1', null, '1', '20191127005945463', '67941811535a303e9690471aac0c2c85f4c5e29b1574787517590', '95', '3.79');
INSERT INTO `sampling_media_order` VALUES ('3801', '0', '2019-11-27 01:01:40', null, '1', null, '1', '20191127010140575', '67941811535a303e9690471aac0c2c85f4c5e29b1574787517590', '69', '3.75');
INSERT INTO `sampling_media_order` VALUES ('3802', '0', '2019-11-27 01:08:03', null, '1', null, '1', '20191127010803611', '61116782de0ddb5f48324783ad3f6783d2c3ded81574787927547', '17', '3.66');
INSERT INTO `sampling_media_order` VALUES ('3803', '0', '2019-11-27 01:15:23', null, '1', null, '1', '20191127011523734', '61116782de0ddb5f48324783ad3f6783d2c3ded81574787927547', '16', '3.29');
INSERT INTO `sampling_media_order` VALUES ('3804', '0', '2019-11-27 02:23:01', null, '1', null, '1', '20191127022301165', '674645058cfdb9a283ef45c78723dfc2f46d66241574792567358', '107', '3.63');
INSERT INTO `sampling_media_order` VALUES ('3805', '0', '2019-11-27 02:46:58', null, '1', null, '1', '20191127024658437', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '107', '3.90');
INSERT INTO `sampling_media_order` VALUES ('3806', '0', '2019-11-27 02:50:12', null, '1', null, '1', '20191127025012150', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '109', '3.65');
INSERT INTO `sampling_media_order` VALUES ('3807', '0', '2019-11-27 02:51:45', null, '1', null, '1', '20191127025145975', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '97', '3.43');
INSERT INTO `sampling_media_order` VALUES ('3808', '0', '2019-11-27 02:52:43', null, '1', null, '1', '20191127025243833', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '89', '3.99');
INSERT INTO `sampling_media_order` VALUES ('3809', '0', '2019-11-27 02:52:54', null, '1', null, '1', '20191127025254523', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '69', '3.39');
INSERT INTO `sampling_media_order` VALUES ('3810', '0', '2019-11-27 02:59:55', null, '1', null, '1', '20191127025955250', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '51', '3.27');
INSERT INTO `sampling_media_order` VALUES ('3811', '0', '2019-11-27 03:01:08', null, '1', null, '1', '20191127030108178', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '51', '3.36');
INSERT INTO `sampling_media_order` VALUES ('3812', '0', '2019-11-27 03:01:56', null, '1', null, '1', '20191127030156121', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '79', '3.72');
INSERT INTO `sampling_media_order` VALUES ('3813', '0', '2019-11-27 03:08:39', null, '1', null, '1', '20191127030839991', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '44', '3.11');
INSERT INTO `sampling_media_order` VALUES ('3814', '0', '2019-11-27 03:16:59', null, '1', null, '1', '20191127031659884', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '103', '3.84');
INSERT INTO `sampling_media_order` VALUES ('3815', '0', '2019-11-27 03:18:10', null, '1', null, '1', '20191127031810751', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '51', '3.82');
INSERT INTO `sampling_media_order` VALUES ('3816', '0', '2019-11-27 03:24:56', null, '1', null, '1', '20191127032456296', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '109', '3.96');
INSERT INTO `sampling_media_order` VALUES ('3817', '0', '2019-11-27 03:33:22', null, '1', null, '1', '20191127033322775', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '96', '3.80');
INSERT INTO `sampling_media_order` VALUES ('3818', '0', '2019-11-27 03:34:07', null, '1', null, '1', '20191127033407166', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '60', '3.99');
INSERT INTO `sampling_media_order` VALUES ('3819', '0', '2019-11-27 03:36:14', null, '1', null, '1', '20191127033614601', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '101', '3.79');
INSERT INTO `sampling_media_order` VALUES ('3820', '0', '2019-11-27 03:40:57', null, '1', null, '1', '20191127034057204', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '45', '3.46');
INSERT INTO `sampling_media_order` VALUES ('3821', '0', '2019-11-27 03:47:35', null, '1', null, '1', '20191127034735564', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '105', '3.45');
INSERT INTO `sampling_media_order` VALUES ('3822', '0', '2019-11-27 03:49:55', null, '1', null, '1', '20191127034955942', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '30', '3.57');
INSERT INTO `sampling_media_order` VALUES ('3823', '0', '2019-11-27 03:51:08', null, '1', null, '1', '20191127035108403', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '23', '3.30');
INSERT INTO `sampling_media_order` VALUES ('3824', '0', '2019-11-27 03:52:00', null, '1', null, '1', '20191127035200964', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '63', '3.24');
INSERT INTO `sampling_media_order` VALUES ('3825', '0', '2019-11-27 03:53:00', null, '1', null, '1', '20191127035300921', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '54', '3.17');
INSERT INTO `sampling_media_order` VALUES ('3826', '0', '2019-11-27 03:54:05', null, '1', null, '1', '20191127035405165', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '54', '3.15');
INSERT INTO `sampling_media_order` VALUES ('3827', '0', '2019-11-27 03:54:21', null, '1', null, '1', '20191127035421317', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '83', '3.94');
INSERT INTO `sampling_media_order` VALUES ('3828', '0', '2019-11-27 03:55:32', null, '1', null, '1', '20191127035532406', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '83', '3.79');
INSERT INTO `sampling_media_order` VALUES ('3829', '0', '2019-11-27 04:01:30', null, '1', null, '1', '20191127040130335', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '59', '3.95');
INSERT INTO `sampling_media_order` VALUES ('3830', '0', '2019-11-27 04:03:14', null, '1', null, '1', '20191127040314355', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '93', '3.76');
INSERT INTO `sampling_media_order` VALUES ('3831', '0', '2019-11-27 04:03:56', null, '1', null, '1', '20191127040356337', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '107', '3.66');
INSERT INTO `sampling_media_order` VALUES ('3832', '0', '2019-11-27 04:04:14', null, '1', null, '1', '20191127040414406', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '98', '3.43');
INSERT INTO `sampling_media_order` VALUES ('3833', '0', '2019-11-27 04:05:26', null, '1', null, '1', '20191127040526438', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '49', '3.98');
INSERT INTO `sampling_media_order` VALUES ('3834', '0', '2019-11-27 04:09:11', null, '1', null, '1', '20191127040911211', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '98', '3.90');
INSERT INTO `sampling_media_order` VALUES ('3835', '0', '2019-11-27 04:12:21', null, '1', null, '1', '20191127041221504', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '93', '3.33');
INSERT INTO `sampling_media_order` VALUES ('3836', '0', '2019-11-27 04:12:43', null, '1', null, '1', '20191127041243453', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '69', '3.20');
INSERT INTO `sampling_media_order` VALUES ('3837', '0', '2019-11-27 04:13:24', null, '1', null, '1', '20191127041324984', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '90', '3.85');
INSERT INTO `sampling_media_order` VALUES ('3838', '0', '2019-11-27 04:14:16', null, '1', null, '1', '20191127041416131', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '28', '3.12');
INSERT INTO `sampling_media_order` VALUES ('3839', '0', '2019-11-27 04:15:21', null, '1', null, '1', '20191127041521803', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '91', '3.55');
INSERT INTO `sampling_media_order` VALUES ('3840', '0', '2019-11-27 04:18:28', null, '1', null, '1', '20191127041828184', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '73', '3.87');
INSERT INTO `sampling_media_order` VALUES ('3841', '0', '2019-11-27 04:20:14', null, '1', null, '1', '20191127042014523', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '104', '3.44');
INSERT INTO `sampling_media_order` VALUES ('3842', '0', '2019-11-27 04:21:20', null, '1', null, '1', '20191127042120724', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '104', '3.40');
INSERT INTO `sampling_media_order` VALUES ('3843', '0', '2019-11-27 04:21:55', null, '1', null, '1', '20191127042155982', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '87', '3.73');
INSERT INTO `sampling_media_order` VALUES ('3844', '0', '2019-11-27 04:23:12', null, '1', null, '1', '20191127042312394', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '104', '3.64');
INSERT INTO `sampling_media_order` VALUES ('3845', '0', '2019-11-27 04:24:24', null, '1', null, '1', '20191127042424882', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '46', '3.81');
INSERT INTO `sampling_media_order` VALUES ('3846', '0', '2019-11-27 04:25:06', null, '1', null, '1', '20191127042506494', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '46', '3.86');
INSERT INTO `sampling_media_order` VALUES ('3847', '0', '2019-11-27 04:32:39', null, '1', null, '1', '20191127043239874', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '58', '3.26');
INSERT INTO `sampling_media_order` VALUES ('3848', '0', '2019-11-27 04:34:48', null, '1', null, '1', '20191127043448928', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '88', '3.87');
INSERT INTO `sampling_media_order` VALUES ('3849', '0', '2019-11-27 04:37:06', null, '1', null, '1', '20191127043706794', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '104', '3.99');
INSERT INTO `sampling_media_order` VALUES ('3850', '0', '2019-11-27 04:37:52', null, '1', null, '1', '20191127043752591', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '80', '3.81');
INSERT INTO `sampling_media_order` VALUES ('3851', '0', '2019-11-27 04:39:21', null, '1', null, '1', '20191127043921786', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '80', '3.79');
INSERT INTO `sampling_media_order` VALUES ('3852', '0', '2019-11-27 05:07:13', null, '1', null, '1', '20191127050713456', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '74', '3.27');
INSERT INTO `sampling_media_order` VALUES ('3853', '0', '2019-11-27 05:13:02', null, '1', null, '1', '20191127051302681', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '70', '3.06');
INSERT INTO `sampling_media_order` VALUES ('3854', '0', '2019-11-27 05:15:24', null, '1', null, '1', '20191127051524970', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '64', '3.15');
INSERT INTO `sampling_media_order` VALUES ('3855', '0', '2019-11-27 05:16:01', null, '1', null, '1', '20191127051601898', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '62', '3.29');
INSERT INTO `sampling_media_order` VALUES ('3856', '0', '2019-11-27 05:18:35', null, '1', null, '1', '20191127051835795', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '58', '3.69');
INSERT INTO `sampling_media_order` VALUES ('3857', '0', '2019-11-27 05:19:32', null, '1', null, '1', '20191127051932993', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '48', '3.28');
INSERT INTO `sampling_media_order` VALUES ('3858', '0', '2019-11-27 05:22:06', null, '1', null, '1', '20191127052206456', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '51', '3.35');
INSERT INTO `sampling_media_order` VALUES ('3859', '0', '2019-11-27 05:23:21', null, '1', null, '1', '20191127052321956', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '40', '3.60');
INSERT INTO `sampling_media_order` VALUES ('3860', '0', '2019-11-27 05:25:49', null, '1', null, '1', '20191127052549476', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '32', '3.29');
INSERT INTO `sampling_media_order` VALUES ('3861', '0', '2019-11-27 05:26:21', null, '1', null, '1', '20191127052621636', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '29', '3.02');
INSERT INTO `sampling_media_order` VALUES ('3862', '0', '2019-11-27 05:27:18', null, '1', null, '1', '20191127052718753', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '25', '3.32');
INSERT INTO `sampling_media_order` VALUES ('3863', '0', '2019-11-27 05:34:00', null, '1', null, '1', '20191127053400576', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '24', '3.49');
INSERT INTO `sampling_media_order` VALUES ('3864', '0', '2019-11-27 05:35:19', null, '1', null, '1', '20191127053519704', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '21', '3.26');
INSERT INTO `sampling_media_order` VALUES ('3865', '0', '2019-11-27 05:37:26', null, '1', null, '1', '20191127053726100', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '21', '3.49');
INSERT INTO `sampling_media_order` VALUES ('3866', '0', '2019-11-27 05:38:22', null, '1', null, '1', '20191127053822731', '357216728a7cf2aeae784a4a91f15a66da1616461574804280205', '104', '3.88');
INSERT INTO `sampling_media_order` VALUES ('3867', '0', '2019-11-27 05:38:42', null, '1', null, '1', '20191127053842868', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '20', '3.90');
INSERT INTO `sampling_media_order` VALUES ('3868', '0', '2019-11-27 05:39:05', null, '1', null, '1', '20191127053905947', '357216728a7cf2aeae784a4a91f15a66da1616461574804280205', '107', '3.65');
INSERT INTO `sampling_media_order` VALUES ('3869', '0', '2019-11-27 05:40:07', null, '1', null, '1', '20191127054007975', '357216728a7cf2aeae784a4a91f15a66da1616461574804280205', '51', '3.66');
INSERT INTO `sampling_media_order` VALUES ('3870', '0', '2019-11-27 05:40:54', null, '1', null, '1', '20191127054054854', '357216728a7cf2aeae784a4a91f15a66da1616461574804280205', '51', '3.33');
INSERT INTO `sampling_media_order` VALUES ('3871', '0', '2019-11-27 05:41:13', null, '1', null, '1', '20191127054113888', '357216728a7cf2aeae784a4a91f15a66da1616461574804280205', '103', '3.06');
INSERT INTO `sampling_media_order` VALUES ('3872', '0', '2019-11-27 05:42:06', null, '1', null, '1', '20191127054206590', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '92', '3.86');
INSERT INTO `sampling_media_order` VALUES ('3873', '0', '2019-11-27 05:42:18', null, '1', null, '1', '20191127054218500', '357216728a7cf2aeae784a4a91f15a66da1616461574804280205', '76', '3.72');
INSERT INTO `sampling_media_order` VALUES ('3874', '0', '2019-11-27 05:43:21', null, '1', null, '1', '20191127054321830', '357216728a7cf2aeae784a4a91f15a66da1616461574804280205', '96', '3.45');
INSERT INTO `sampling_media_order` VALUES ('3875', '0', '2019-11-27 05:49:26', null, '1', null, '1', '20191127054926379', '26240325131af464241d4d89b28820290f1a79941574638551036', '62', '3.63');
INSERT INTO `sampling_media_order` VALUES ('3876', '0', '2019-11-27 05:52:14', null, '1', null, '1', '20191127055214321', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '73', '3.63');
INSERT INTO `sampling_media_order` VALUES ('3877', '0', '2019-11-27 05:52:35', null, '1', null, '1', '20191127055235745', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '19', '3.19');
INSERT INTO `sampling_media_order` VALUES ('3878', '0', '2019-11-27 05:54:11', null, '1', null, '1', '20191127055411375', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '19', '3.42');
INSERT INTO `sampling_media_order` VALUES ('3879', '0', '2019-11-27 05:54:16', null, '1', null, '1', '20191127055416914', '26240325131af464241d4d89b28820290f1a79941574638551036', '94', '3.03');
INSERT INTO `sampling_media_order` VALUES ('3880', '0', '2019-11-27 05:55:40', null, '1', null, '1', '20191127055540866', '26240325131af464241d4d89b28820290f1a79941574638551036', '104', '3.21');
INSERT INTO `sampling_media_order` VALUES ('3881', '0', '2019-11-27 05:56:34', null, '1', null, '1', '20191127055634163', '26240325131af464241d4d89b28820290f1a79941574638551036', '104', '3.13');
INSERT INTO `sampling_media_order` VALUES ('3882', '0', '2019-11-27 05:59:23', null, '1', null, '1', '20191127055923450', '903198302ae6c7c6791944798264c9f57e52fa9a1574805525129', '108', '3.71');
INSERT INTO `sampling_media_order` VALUES ('3883', '0', '2019-11-27 06:00:35', null, '1', null, '1', '20191127060035133', '903198302ae6c7c6791944798264c9f57e52fa9a1574805525129', '41', '3.86');
INSERT INTO `sampling_media_order` VALUES ('3884', '0', '2019-11-27 06:01:22', null, '1', null, '1', '20191127060122905', '903198302ae6c7c6791944798264c9f57e52fa9a1574805525129', '69', '3.79');
INSERT INTO `sampling_media_order` VALUES ('3885', '0', '2019-11-27 06:02:19', null, '1', null, '1', '20191127060219471', '903198302ae6c7c6791944798264c9f57e52fa9a1574805525129', '41', '3.85');
INSERT INTO `sampling_media_order` VALUES ('3886', '0', '2019-11-27 06:02:32', null, '1', null, '1', '20191127060232480', '903198302ae6c7c6791944798264c9f57e52fa9a1574805525129', '103', '3.43');
INSERT INTO `sampling_media_order` VALUES ('3887', '0', '2019-11-27 06:03:17', null, '1', null, '1', '20191127060317383', '903198302ae6c7c6791944798264c9f57e52fa9a1574805525129', '55', '3.69');
INSERT INTO `sampling_media_order` VALUES ('3888', '0', '2019-11-27 06:03:54', null, '1', null, '1', '20191127060354892', '903198302ae6c7c6791944798264c9f57e52fa9a1574805525129', '51', '3.43');
INSERT INTO `sampling_media_order` VALUES ('3889', '0', '2019-11-27 06:05:04', null, '1', null, '1', '20191127060504442', '903198302ae6c7c6791944798264c9f57e52fa9a1574805525129', '41', '3.49');
INSERT INTO `sampling_media_order` VALUES ('3890', '0', '2019-11-27 06:05:43', null, '1', null, '1', '20191127060543645', '903198302ae6c7c6791944798264c9f57e52fa9a1574805525129', '16', '3.84');
INSERT INTO `sampling_media_order` VALUES ('3891', '0', '2019-11-27 06:06:26', null, '1', null, '1', '20191127060626627', '903198302ae6c7c6791944798264c9f57e52fa9a1574805525129', '69', '3.16');
INSERT INTO `sampling_media_order` VALUES ('3892', '0', '2019-11-27 06:07:09', null, '1', null, '1', '20191127060709754', '903198302ae6c7c6791944798264c9f57e52fa9a1574805525129', '51', '3.73');
INSERT INTO `sampling_media_order` VALUES ('3893', '0', '2019-11-27 06:07:18', null, '1', null, '1', '20191127060718451', '903198302ae6c7c6791944798264c9f57e52fa9a1574805525129', '79', '3.44');
INSERT INTO `sampling_media_order` VALUES ('3894', '0', '2019-11-27 06:07:36', null, '1', null, '1', '20191127060736852', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '65', '3.79');
INSERT INTO `sampling_media_order` VALUES ('3895', '0', '2019-11-27 06:07:41', null, '1', null, '1', '20191127060741635', '903198302ae6c7c6791944798264c9f57e52fa9a1574805525129', '51', '3.61');
INSERT INTO `sampling_media_order` VALUES ('3896', '0', '2019-11-27 06:07:54', null, '1', null, '1', '20191127060754989', '903198302ae6c7c6791944798264c9f57e52fa9a1574805525129', '55', '3.41');
INSERT INTO `sampling_media_order` VALUES ('3897', '0', '2019-11-27 06:08:34', null, '1', null, '1', '20191127060834668', '903198302ae6c7c6791944798264c9f57e52fa9a1574805525129', '44', '3.53');
INSERT INTO `sampling_media_order` VALUES ('3898', '0', '2019-11-27 06:09:21', null, '1', null, '1', '20191127060921904', '903198302ae6c7c6791944798264c9f57e52fa9a1574805525129', '16', '3.87');
INSERT INTO `sampling_media_order` VALUES ('3899', '0', '2019-11-27 06:09:45', null, '1', null, '1', '20191127060945175', '903198302ae6c7c6791944798264c9f57e52fa9a1574805525129', '103', '3.57');
INSERT INTO `sampling_media_order` VALUES ('3900', '0', '2019-11-27 06:11:02', null, '1', null, '1', '20191127061102790', '903198302ae6c7c6791944798264c9f57e52fa9a1574805525129', '41', '3.26');
INSERT INTO `sampling_media_order` VALUES ('3901', '0', '2019-11-27 06:12:16', null, '1', null, '1', '20191127061216197', '903198302ae6c7c6791944798264c9f57e52fa9a1574805525129', '51', '3.49');
INSERT INTO `sampling_media_order` VALUES ('3902', '0', '2019-11-27 06:13:20', null, '1', null, '1', '20191127061320485', '903198302ae6c7c6791944798264c9f57e52fa9a1574805525129', '51', '3.00');
INSERT INTO `sampling_media_order` VALUES ('3903', '0', '2019-11-27 06:15:32', null, '1', null, '1', '20191127061532510', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '35', '3.58');
INSERT INTO `sampling_media_order` VALUES ('3904', '0', '2019-11-27 06:17:05', null, '1', null, '1', '20191127061705438', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '54', '3.81');
INSERT INTO `sampling_media_order` VALUES ('3905', '0', '2019-11-27 06:35:11', null, '1', null, '1', '20191127063511999', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '35', '3.70');
INSERT INTO `sampling_media_order` VALUES ('3906', '0', '2019-11-27 06:40:44', null, '1', null, '1', '20191127064044291', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '66', '3.45');
INSERT INTO `sampling_media_order` VALUES ('3907', '0', '2019-11-27 06:41:20', null, '1', null, '1', '20191127064120255', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '59', '3.28');
INSERT INTO `sampling_media_order` VALUES ('3908', '0', '2019-11-27 06:43:21', null, '1', null, '1', '20191127064321766', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '59', '3.72');
INSERT INTO `sampling_media_order` VALUES ('3909', '0', '2019-11-27 06:45:23', null, '1', null, '1', '20191127064523282', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '59', '3.18');
INSERT INTO `sampling_media_order` VALUES ('3910', '0', '2019-11-27 06:45:46', null, '1', null, '1', '20191127064546698', '862248913b20f5427a354f74ad1a45330a62f9e21574673304657', '108', '3.89');
INSERT INTO `sampling_media_order` VALUES ('3911', '0', '2019-11-27 06:46:20', null, '1', null, '1', '20191127064620896', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '59', '3.14');
INSERT INTO `sampling_media_order` VALUES ('3912', '0', '2019-11-27 06:46:24', null, '1', null, '1', '20191127064624890', '862248913b20f5427a354f74ad1a45330a62f9e21574673304657', '96', '3.91');
INSERT INTO `sampling_media_order` VALUES ('3913', '0', '2019-11-27 06:48:51', null, '1', null, '1', '20191127064851825', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '59', '3.54');
INSERT INTO `sampling_media_order` VALUES ('3914', '0', '2019-11-27 06:49:39', null, '1', null, '1', '20191127064939231', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '59', '3.77');
INSERT INTO `sampling_media_order` VALUES ('3915', '0', '2019-11-27 06:52:11', null, '1', null, '1', '20191127065211897', '903198302ae6c7c6791944798264c9f57e52fa9a1574805525129', '41', '3.91');
INSERT INTO `sampling_media_order` VALUES ('3916', '0', '2019-11-27 06:53:09', null, '1', null, '1', '20191127065309813', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '59', '3.00');
INSERT INTO `sampling_media_order` VALUES ('3917', '0', '2019-11-27 07:25:04', null, '1', null, '1', '20191127072504515', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '84', '3.88');
INSERT INTO `sampling_media_order` VALUES ('3918', '0', '2019-11-27 07:25:40', null, '1', null, '1', '20191127072540575', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '84', '3.76');
INSERT INTO `sampling_media_order` VALUES ('3919', '0', '2019-11-27 07:26:07', null, '1', null, '1', '20191127072607239', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '84', '3.02');
INSERT INTO `sampling_media_order` VALUES ('3920', '0', '2019-11-27 07:26:32', null, '1', null, '1', '20191127072632114', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '85', '3.00');
INSERT INTO `sampling_media_order` VALUES ('3921', '0', '2019-11-27 07:27:00', null, '1', null, '1', '20191127072700130', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '16', '3.46');
INSERT INTO `sampling_media_order` VALUES ('3922', '0', '2019-11-27 07:27:44', null, '1', null, '1', '20191127072744579', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '85', '3.91');
INSERT INTO `sampling_media_order` VALUES ('3923', '0', '2019-11-27 07:28:11', null, '1', null, '1', '20191127072811479', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '104', '3.40');
INSERT INTO `sampling_media_order` VALUES ('3924', '0', '2019-11-27 07:28:30', null, '1', null, '1', '20191127072830649', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '104', '3.99');
INSERT INTO `sampling_media_order` VALUES ('3925', '0', '2019-11-27 07:28:46', null, '1', null, '1', '20191127072846178', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '100', '3.63');
INSERT INTO `sampling_media_order` VALUES ('3926', '0', '2019-11-27 07:32:45', null, '1', null, '1', '20191127073245570', '86143670f6e4f95cc031408fa1b9fc0aa06341f31574587676771', '93', '3.00');
INSERT INTO `sampling_media_order` VALUES ('3927', '0', '2019-11-27 07:38:48', null, '1', null, '1', '20191127073848109', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '86', '3.15');
INSERT INTO `sampling_media_order` VALUES ('3928', '0', '2019-11-27 07:40:47', null, '1', null, '1', '20191127074047331', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '81', '3.66');
INSERT INTO `sampling_media_order` VALUES ('3929', '0', '2019-11-27 07:41:10', null, '1', null, '1', '20191127074110595', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '104', '3.50');
INSERT INTO `sampling_media_order` VALUES ('3930', '0', '2019-11-27 07:41:39', null, '1', null, '1', '20191127074139286', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '81', '3.09');
INSERT INTO `sampling_media_order` VALUES ('3931', '0', '2019-11-27 07:42:19', null, '1', null, '1', '20191127074219750', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '95', '3.45');
INSERT INTO `sampling_media_order` VALUES ('3932', '0', '2019-11-27 07:43:41', null, '1', null, '1', '20191127074341166', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '94', '3.26');
INSERT INTO `sampling_media_order` VALUES ('3933', '0', '2019-11-27 07:44:01', null, '1', null, '1', '20191127074401498', '50049080cf73da5b65114812b99d9fb9467109751574811820535', '105', '3.81');
INSERT INTO `sampling_media_order` VALUES ('3934', '0', '2019-11-27 07:44:14', null, '1', null, '1', '20191127074414812', '3171124574bb983b3b8c4003977f918a6995ed851574490047171', '109', '3.57');
INSERT INTO `sampling_media_order` VALUES ('3935', '0', '2019-11-27 07:46:21', null, '1', null, '1', '20191127074621539', '71057540e74d269d87954ed7b9db563939ed1d371574811948033', '95', '3.79');
INSERT INTO `sampling_media_order` VALUES ('3936', '0', '2019-11-27 07:46:57', null, '1', null, '1', '20191127074657100', '71057540e74d269d87954ed7b9db563939ed1d371574811948033', '16', '3.71');
INSERT INTO `sampling_media_order` VALUES ('3937', '0', '2019-11-27 07:46:58', null, '1', null, '1', '20191127074658607', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '81', '3.32');
INSERT INTO `sampling_media_order` VALUES ('3938', '0', '2019-11-27 07:47:28', null, '1', null, '1', '20191127074728180', '50049080cf73da5b65114812b99d9fb9467109751574811820535', '91', '3.27');
INSERT INTO `sampling_media_order` VALUES ('3939', '0', '2019-11-27 07:47:44', null, '1', null, '1', '20191127074744252', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '84', '3.36');
INSERT INTO `sampling_media_order` VALUES ('3940', '0', '2019-11-27 07:48:35', null, '1', null, '1', '20191127074835236', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '73', '3.44');
INSERT INTO `sampling_media_order` VALUES ('3941', '0', '2019-11-27 07:49:00', null, '1', null, '1', '20191127074900887', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '81', '3.43');
INSERT INTO `sampling_media_order` VALUES ('3942', '0', '2019-11-27 07:49:33', null, '1', null, '1', '20191127074933517', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '58', '3.78');
INSERT INTO `sampling_media_order` VALUES ('3943', '0', '2019-11-27 07:50:44', null, '1', null, '1', '20191127075044121', '8309880959cb5874010a472abe4b94f3a26b9b121574778265148', '104', '3.02');
INSERT INTO `sampling_media_order` VALUES ('3944', '0', '2019-11-27 07:50:55', null, '1', null, '1', '20191127075055189', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '16', '3.37');
INSERT INTO `sampling_media_order` VALUES ('3945', '0', '2019-11-27 07:51:19', null, '1', null, '1', '20191127075119802', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '16', '3.92');
INSERT INTO `sampling_media_order` VALUES ('3946', '0', '2019-11-27 07:51:36', null, '1', null, '1', '20191127075136511', '10935370dbc99a946e224e78857e1017020846471574579440173', '104', '3.77');
INSERT INTO `sampling_media_order` VALUES ('3947', '0', '2019-11-27 07:54:22', null, '1', null, '1', '20191127075422587', '10935370dbc99a946e224e78857e1017020846471574579440173', '104', '3.27');
INSERT INTO `sampling_media_order` VALUES ('3948', '0', '2019-11-27 07:57:40', null, '1', null, '1', '20191127075740296', '91961572094513933b3e43649a3e60e4ad2ed4e21574812617261', '104', '3.95');
INSERT INTO `sampling_media_order` VALUES ('3949', '0', '2019-11-27 07:58:29', null, '1', null, '1', '20191127075829748', '91961572094513933b3e43649a3e60e4ad2ed4e21574812617261', '106', '3.27');
INSERT INTO `sampling_media_order` VALUES ('3950', '0', '2019-11-27 07:59:35', null, '1', null, '1', '20191127075935913', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '16', '3.24');
INSERT INTO `sampling_media_order` VALUES ('3951', '0', '2019-11-27 08:01:48', null, '1', null, '1', '20191127080148686', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '16', '3.52');
INSERT INTO `sampling_media_order` VALUES ('3952', '0', '2019-11-27 08:01:50', null, '1', null, '1', '20191127080150892', '91961572094513933b3e43649a3e60e4ad2ed4e21574812617261', '54', '3.82');
INSERT INTO `sampling_media_order` VALUES ('3953', '0', '2019-11-27 08:03:44', null, '1', null, '1', '20191127080344806', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '16', '3.97');
INSERT INTO `sampling_media_order` VALUES ('3954', '0', '2019-11-27 08:04:49', null, '1', null, '1', '20191127080449476', '38168443436874b9dbb242d1a1f48442064d2b9d1574794002756', '16', '3.74');
INSERT INTO `sampling_media_order` VALUES ('3955', '0', '2019-11-27 08:21:55', null, '1', null, '1', '20191127082155613', '903198302ae6c7c6791944798264c9f57e52fa9a1574805525129', '41', '3.40');
INSERT INTO `sampling_media_order` VALUES ('3956', '0', '2019-11-27 08:22:31', null, '1', null, '1', '20191127082231818', '903198302ae6c7c6791944798264c9f57e52fa9a1574805525129', '103', '3.33');
INSERT INTO `sampling_media_order` VALUES ('3957', '0', '2019-11-27 08:22:58', null, '1', null, '1', '20191127082258994', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '105', '3.39');
INSERT INTO `sampling_media_order` VALUES ('3958', '0', '2019-11-27 08:38:47', null, '1', null, '1', '20191127083847125', '918806713b4e7fa3ace74b0489828f763404e7731574738168646', '103', '3.48');
INSERT INTO `sampling_media_order` VALUES ('3959', '0', '2019-11-27 08:39:33', null, '1', null, '1', '20191127083933804', '918806713b4e7fa3ace74b0489828f763404e7731574738168646', '104', '3.23');
INSERT INTO `sampling_media_order` VALUES ('3960', '0', '2019-11-27 08:40:35', null, '1', null, '1', '20191127084035962', '918806713b4e7fa3ace74b0489828f763404e7731574738168646', '104', '3.05');
INSERT INTO `sampling_media_order` VALUES ('3961', '0', '2019-11-27 08:41:07', null, '1', null, '1', '20191127084107174', '918806713b4e7fa3ace74b0489828f763404e7731574738168646', '104', '3.80');
INSERT INTO `sampling_media_order` VALUES ('3962', '0', '2019-11-27 08:44:56', null, '1', null, '1', '20191127084456881', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '69', '3.71');
INSERT INTO `sampling_media_order` VALUES ('3963', '0', '2019-11-27 08:55:22', null, '1', null, '1', '20191127085522148', '80412623c091fd4324084deeacb76383a61a01f91574584820613', '106', '3.50');
INSERT INTO `sampling_media_order` VALUES ('3964', '0', '2019-11-27 08:55:45', null, '1', null, '1', '20191127085545411', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '60', '3.95');
INSERT INTO `sampling_media_order` VALUES ('3965', '0', '2019-11-27 08:57:43', null, '1', null, '1', '20191127085743713', '80412623c091fd4324084deeacb76383a61a01f91574584820613', '83', '3.46');
INSERT INTO `sampling_media_order` VALUES ('3966', '0', '2019-11-27 08:59:21', null, '1', null, '1', '20191127085921366', '80412623c091fd4324084deeacb76383a61a01f91574584820613', '104', '3.23');
INSERT INTO `sampling_media_order` VALUES ('3967', '0', '2019-11-27 09:15:34', null, '1', null, '1', '20191127091534966', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '45', '3.74');
INSERT INTO `sampling_media_order` VALUES ('3968', '0', '2019-11-27 09:16:18', null, '1', null, '1', '20191127091618949', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '30', '3.54');
INSERT INTO `sampling_media_order` VALUES ('3969', '0', '2019-11-27 09:17:18', null, '1', null, '1', '20191127091718559', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '46', '3.00');
INSERT INTO `sampling_media_order` VALUES ('3970', '0', '2019-11-27 09:18:08', null, '1', null, '1', '20191127091808347', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '49', '3.34');
INSERT INTO `sampling_media_order` VALUES ('3971', '0', '2019-11-27 09:19:19', null, '1', null, '1', '20191127091919104', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '93', '3.40');
INSERT INTO `sampling_media_order` VALUES ('3972', '0', '2019-11-27 09:20:06', null, '1', null, '1', '20191127092006267', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '30', '3.91');
INSERT INTO `sampling_media_order` VALUES ('3973', '0', '2019-11-27 09:22:13', null, '1', null, '1', '20191127092213247', '734834894fa413537bfa48af84bafa12443722c71574626302611', '104', '3.03');
INSERT INTO `sampling_media_order` VALUES ('3974', '0', '2019-11-27 09:23:03', null, '1', null, '1', '20191127092303804', '734834894fa413537bfa48af84bafa12443722c71574626302611', '55', '3.69');
INSERT INTO `sampling_media_order` VALUES ('3975', '0', '2019-11-27 09:23:43', null, '1', null, '1', '20191127092343248', '734834894fa413537bfa48af84bafa12443722c71574626302611', '45', '3.03');
INSERT INTO `sampling_media_order` VALUES ('3976', '0', '2019-11-27 09:24:04', null, '1', null, '1', '20191127092404452', '734834894fa413537bfa48af84bafa12443722c71574626302611', '69', '3.49');
INSERT INTO `sampling_media_order` VALUES ('3977', '0', '2019-11-27 09:31:36', null, '1', null, '1', '20191127093136481', '18352454a4fda03fd6e44ac585a80d55f3ba53361574328965959', '85', '3.65');
INSERT INTO `sampling_media_order` VALUES ('3978', '0', '2019-11-27 09:32:44', null, '1', null, '1', '20191127093244610', '10280047d43fd32297bc41b0b3188b7c8f6c51671574584582728', '64', '3.57');
INSERT INTO `sampling_media_order` VALUES ('3979', '0', '2019-11-27 09:34:24', null, '1', null, '1', '20191127093424543', '10280047d43fd32297bc41b0b3188b7c8f6c51671574584582728', '50', '3.72');
INSERT INTO `sampling_media_order` VALUES ('3980', '0', '2019-11-27 09:35:59', null, '1', null, '1', '20191127093559479', '10280047d43fd32297bc41b0b3188b7c8f6c51671574584582728', '51', '3.23');
INSERT INTO `sampling_media_order` VALUES ('3981', '0', '2019-11-27 09:37:14', null, '1', null, '1', '20191127093714612', '10280047d43fd32297bc41b0b3188b7c8f6c51671574584582728', '33', '3.66');
INSERT INTO `sampling_media_order` VALUES ('3982', '0', '2019-11-27 10:18:47', null, '1', null, '1', '20191127101847640', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '107', '3.39');
INSERT INTO `sampling_media_order` VALUES ('3983', '0', '2019-11-27 10:55:15', null, '1', null, '1', '20191127105515452', '323526218f5ca4fbfab9495bb5d2ea8259dc65221574329356942', '91', '3.05');
INSERT INTO `sampling_media_order` VALUES ('3984', '0', '2019-11-27 10:56:38', null, '1', null, '1', '20191127105638361', '323526218f5ca4fbfab9495bb5d2ea8259dc65221574329356942', '107', '3.26');
INSERT INTO `sampling_media_order` VALUES ('3985', '0', '2019-11-27 10:57:30', null, '1', null, '1', '20191127105730809', '323526218f5ca4fbfab9495bb5d2ea8259dc65221574329356942', '98', '3.33');
INSERT INTO `sampling_media_order` VALUES ('3986', '0', '2019-11-27 11:01:58', null, '1', null, '1', '20191127110158675', '323526218f5ca4fbfab9495bb5d2ea8259dc65221574329356942', '96', '3.53');
INSERT INTO `sampling_media_order` VALUES ('3987', '0', '2019-11-27 11:18:26', null, '1', null, '1', '20191127111826384', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '60', '3.74');
INSERT INTO `sampling_media_order` VALUES ('3988', '0', '2019-11-27 11:19:24', null, '1', null, '1', '20191127111924522', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '21', '3.96');
INSERT INTO `sampling_media_order` VALUES ('3989', '0', '2019-11-27 11:19:36', null, '1', null, '1', '20191127111936392', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '74', '3.54');
INSERT INTO `sampling_media_order` VALUES ('3990', '0', '2019-11-27 11:20:04', null, '1', null, '1', '20191127112004625', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '60', '3.02');
INSERT INTO `sampling_media_order` VALUES ('3991', '0', '2019-11-27 11:20:53', null, '1', null, '1', '20191127112053456', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '104', '3.19');
INSERT INTO `sampling_media_order` VALUES ('3992', '0', '2019-11-27 11:20:53', null, '1', null, '1', '20191127112053498', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '38', '3.13');
INSERT INTO `sampling_media_order` VALUES ('3993', '0', '2019-11-27 11:21:41', null, '1', null, '1', '20191127112141195', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '109', '3.68');
INSERT INTO `sampling_media_order` VALUES ('3994', '0', '2019-11-27 11:22:29', null, '1', null, '1', '20191127112229104', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '107', '3.48');
INSERT INTO `sampling_media_order` VALUES ('3995', '0', '2019-11-27 11:24:14', null, '1', null, '1', '20191127112414270', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '100', '3.96');
INSERT INTO `sampling_media_order` VALUES ('3996', '0', '2019-11-27 11:26:30', null, '1', null, '1', '20191127112630776', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '73', '3.64');
INSERT INTO `sampling_media_order` VALUES ('3997', '0', '2019-11-27 11:27:31', null, '1', null, '1', '20191127112731598', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '65', '3.81');
INSERT INTO `sampling_media_order` VALUES ('3998', '0', '2019-11-27 11:28:13', null, '1', null, '1', '20191127112813197', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '34', '3.14');
INSERT INTO `sampling_media_order` VALUES ('3999', '0', '2019-11-27 11:29:02', null, '1', null, '1', '20191127112902177', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '64', '3.69');
INSERT INTO `sampling_media_order` VALUES ('4000', '0', '2019-11-27 11:31:36', null, '1', null, '1', '20191127113136332', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '93', '3.16');
INSERT INTO `sampling_media_order` VALUES ('4001', '0', '2019-11-27 11:34:02', null, '1', null, '1', '20191127113402155', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '16', '3.61');
INSERT INTO `sampling_media_order` VALUES ('4002', '0', '2019-11-27 11:37:18', null, '1', null, '1', '20191127113718520', '6467586193337a5d949a441183104bc21156ce4f1574825812231', '104', '3.82');
INSERT INTO `sampling_media_order` VALUES ('4003', '0', '2019-11-27 11:39:49', null, '1', null, '1', '20191127113949670', '6467586193337a5d949a441183104bc21156ce4f1574825812231', '61', '3.54');
INSERT INTO `sampling_media_order` VALUES ('4004', '0', '2019-11-27 11:41:04', null, '1', null, '1', '20191127114104975', '6467586193337a5d949a441183104bc21156ce4f1574825812231', '104', '3.99');
INSERT INTO `sampling_media_order` VALUES ('4005', '0', '2019-11-27 11:47:03', null, '1', null, '1', '20191127114703678', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '18', '3.13');
INSERT INTO `sampling_media_order` VALUES ('4006', '0', '2019-11-27 11:49:02', null, '1', null, '1', '20191127114902929', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '55', '3.69');
INSERT INTO `sampling_media_order` VALUES ('4007', '0', '2019-11-27 11:49:06', null, '1', null, '1', '20191127114906475', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '41', '3.47');
INSERT INTO `sampling_media_order` VALUES ('4008', '0', '2019-11-27 11:49:19', null, '1', null, '1', '20191127114919419', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '55', '3.20');
INSERT INTO `sampling_media_order` VALUES ('4009', '0', '2019-11-27 11:57:14', null, '1', null, '1', '20191127115714154', '73000226accd1b58a4d848b39cee9d8a1afbffba1573221184813', '103', '3.71');
INSERT INTO `sampling_media_order` VALUES ('4010', '0', '2019-11-27 12:06:59', null, '1', null, '1', '20191127120659386', '61116782de0ddb5f48324783ad3f6783d2c3ded81574787927547', '106', '3.78');
INSERT INTO `sampling_media_order` VALUES ('4011', '0', '2019-11-27 12:23:00', null, '1', null, '1', '20191127122300292', '896031591a27c448b6754cd095328644b13cf8fd1574661367740', '55', '3.20');
INSERT INTO `sampling_media_order` VALUES ('4012', '0', '2019-11-27 12:25:44', null, '1', null, '1', '20191127122544457', '896031591a27c448b6754cd095328644b13cf8fd1574661367740', '103', '3.40');
INSERT INTO `sampling_media_order` VALUES ('4013', '0', '2019-11-27 12:26:24', null, '1', null, '1', '20191127122624538', '896031591a27c448b6754cd095328644b13cf8fd1574661367740', '69', '3.40');
INSERT INTO `sampling_media_order` VALUES ('4014', '0', '2019-11-27 12:27:35', null, '1', null, '1', '20191127122735459', '896031591a27c448b6754cd095328644b13cf8fd1574661367740', '16', '3.57');
INSERT INTO `sampling_media_order` VALUES ('4015', '0', '2019-11-27 12:27:58', null, '1', null, '1', '20191127122758540', '276703198452a18ab5b64b4785100539afb534601574583407991', '102', '3.84');
INSERT INTO `sampling_media_order` VALUES ('4016', '0', '2019-11-27 12:28:19', null, '1', null, '1', '20191127122819504', '896031591a27c448b6754cd095328644b13cf8fd1574661367740', '79', '3.18');
INSERT INTO `sampling_media_order` VALUES ('4017', '0', '2019-11-27 12:29:56', null, '1', null, '1', '20191127122956619', '896031591a27c448b6754cd095328644b13cf8fd1574661367740', '105', '3.77');
INSERT INTO `sampling_media_order` VALUES ('4018', '0', '2019-11-27 12:31:22', null, '1', null, '1', '20191127123122362', '896031591a27c448b6754cd095328644b13cf8fd1574661367740', '98', '3.52');
INSERT INTO `sampling_media_order` VALUES ('4019', '0', '2019-11-27 12:50:05', null, '1', null, '1', '20191127125005542', '858261851517fb178adc41d1b9bd269fb5b52d351574830193656', '106', '3.63');
INSERT INTO `sampling_media_order` VALUES ('4020', '0', '2019-11-27 12:51:02', null, '1', null, '1', '20191127125102151', '858261851517fb178adc41d1b9bd269fb5b52d351574830193656', '16', '3.46');
INSERT INTO `sampling_media_order` VALUES ('4021', '0', '2019-11-27 12:53:10', null, '1', null, '1', '20191127125310435', '858261851517fb178adc41d1b9bd269fb5b52d351574830193656', '16', '3.56');
INSERT INTO `sampling_media_order` VALUES ('4022', '0', '2019-11-27 13:33:14', null, '1', null, '1', '20191127133314403', '957827838a1cf7fbab634004a22c3f432ef0fca71573323048619', '109', '3.20');
INSERT INTO `sampling_media_order` VALUES ('4023', '0', '2019-11-27 13:37:19', null, '1', null, '1', '20191127133719838', '957827838a1cf7fbab634004a22c3f432ef0fca71573323048619', '40', '3.94');
INSERT INTO `sampling_media_order` VALUES ('4024', '0', '2019-11-27 13:37:53', null, '1', null, '1', '20191127133753480', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '40', '3.31');
INSERT INTO `sampling_media_order` VALUES ('4025', '0', '2019-11-27 13:38:10', null, '1', null, '1', '20191127133810839', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '106', '3.50');
INSERT INTO `sampling_media_order` VALUES ('4026', '0', '2019-11-27 13:39:04', null, '1', null, '1', '20191127133904981', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '59', '3.97');
INSERT INTO `sampling_media_order` VALUES ('4027', '0', '2019-11-27 13:39:45', null, '1', null, '1', '20191127133945668', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '36', '3.96');
INSERT INTO `sampling_media_order` VALUES ('4028', '0', '2019-11-27 13:40:19', null, '1', null, '1', '20191127134019271', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '92', '3.22');
INSERT INTO `sampling_media_order` VALUES ('4029', '0', '2019-11-27 13:41:10', null, '1', null, '1', '20191127134110135', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '84', '3.84');
INSERT INTO `sampling_media_order` VALUES ('4030', '0', '2019-11-27 13:44:37', null, '1', null, '1', '20191127134437206', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '49', '3.78');
INSERT INTO `sampling_media_order` VALUES ('4031', '0', '2019-11-27 13:49:05', null, '1', null, '1', '20191127134905718', '957827838a1cf7fbab634004a22c3f432ef0fca71573323048619', '95', '3.20');
INSERT INTO `sampling_media_order` VALUES ('4032', '0', '2019-11-27 13:49:24', null, '1', null, '1', '20191127134924381', '957827838a1cf7fbab634004a22c3f432ef0fca71573323048619', '36', '3.43');
INSERT INTO `sampling_media_order` VALUES ('4033', '0', '2019-11-27 13:49:42', null, '1', null, '1', '20191127134942984', '957827838a1cf7fbab634004a22c3f432ef0fca71573323048619', '88', '3.40');
INSERT INTO `sampling_media_order` VALUES ('4034', '0', '2019-11-27 13:49:57', null, '1', null, '1', '20191127134957966', '957827838a1cf7fbab634004a22c3f432ef0fca71573323048619', '74', '3.19');
INSERT INTO `sampling_media_order` VALUES ('4035', '0', '2019-11-27 13:50:30', null, '1', null, '1', '20191127135030704', '957827838a1cf7fbab634004a22c3f432ef0fca71573323048619', '105', '3.60');
INSERT INTO `sampling_media_order` VALUES ('4036', '0', '2019-11-27 13:50:48', null, '1', null, '1', '20191127135048425', '957827838a1cf7fbab634004a22c3f432ef0fca71573323048619', '30', '3.82');
INSERT INTO `sampling_media_order` VALUES ('4037', '0', '2019-11-27 13:51:13', null, '1', null, '1', '20191127135113963', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '30', '3.66');
INSERT INTO `sampling_media_order` VALUES ('4038', '0', '2019-11-27 13:51:46', null, '1', null, '1', '20191127135146787', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '101', '3.04');
INSERT INTO `sampling_media_order` VALUES ('4039', '0', '2019-11-27 13:52:24', null, '1', null, '1', '20191127135224674', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '97', '3.04');
INSERT INTO `sampling_media_order` VALUES ('4040', '0', '2019-11-27 13:53:27', null, '1', null, '1', '20191127135327534', '957827838a1cf7fbab634004a22c3f432ef0fca71573323048619', '62', '3.66');
INSERT INTO `sampling_media_order` VALUES ('4041', '0', '2019-11-27 13:54:36', null, '1', null, '1', '20191127135436534', '86092819830d0e20c6a44d8693bf6419a0847fa01574609645632', '59', '3.33');
INSERT INTO `sampling_media_order` VALUES ('4042', '0', '2019-11-27 13:55:22', null, '1', null, '1', '20191127135522297', '86092819830d0e20c6a44d8693bf6419a0847fa01574609645632', '88', '3.19');
INSERT INTO `sampling_media_order` VALUES ('4043', '0', '2019-11-27 13:57:35', null, '1', null, '1', '20191127135735309', '86092819830d0e20c6a44d8693bf6419a0847fa01574609645632', '74', '3.87');
INSERT INTO `sampling_media_order` VALUES ('4044', '0', '2019-11-27 13:58:52', null, '1', null, '1', '20191127135852455', '86092819830d0e20c6a44d8693bf6419a0847fa01574609645632', '94', '3.51');
INSERT INTO `sampling_media_order` VALUES ('4045', '0', '2019-11-27 14:01:17', null, '1', null, '1', '20191127140117265', '86092819830d0e20c6a44d8693bf6419a0847fa01574609645632', '16', '3.66');
INSERT INTO `sampling_media_order` VALUES ('4046', '0', '2019-11-27 14:02:55', null, '1', null, '1', '20191127140255305', '86092819830d0e20c6a44d8693bf6419a0847fa01574609645632', '66', '3.52');
INSERT INTO `sampling_media_order` VALUES ('4047', '0', '2019-11-27 14:07:10', null, '1', null, '1', '20191127140710407', '957827838a1cf7fbab634004a22c3f432ef0fca71573323048619', '51', '3.27');
INSERT INTO `sampling_media_order` VALUES ('4048', '0', '2019-11-27 16:37:18', null, '1', null, '1', '20191127163718603', '8755804611cd4e07cf8d4482b914fa592bcd9bbb1574573777803', '36', '3.96');
INSERT INTO `sampling_media_order` VALUES ('4049', '0', '2019-11-27 16:38:57', null, '1', null, '1', '20191127163857469', '8755804611cd4e07cf8d4482b914fa592bcd9bbb1574573777803', '49', '3.36');
INSERT INTO `sampling_media_order` VALUES ('4050', '0', '2019-11-27 17:04:41', null, '1', null, '1', '20191127170441609', '957827838a1cf7fbab634004a22c3f432ef0fca71573323048619', '25', '3.62');
INSERT INTO `sampling_media_order` VALUES ('4051', '0', '2019-11-27 18:18:58', null, '1', null, '1', '20191127181858304', '903198302ae6c7c6791944798264c9f57e52fa9a1574805525129', '88', '3.01');
INSERT INTO `sampling_media_order` VALUES ('4052', '0', '2019-11-27 18:19:54', null, '1', null, '1', '20191127181954794', '903198302ae6c7c6791944798264c9f57e52fa9a1574805525129', '36', '3.45');
INSERT INTO `sampling_media_order` VALUES ('4053', '0', '2019-11-27 18:20:39', null, '1', null, '1', '20191127182039688', '903198302ae6c7c6791944798264c9f57e52fa9a1574805525129', '59', '3.48');
INSERT INTO `sampling_media_order` VALUES ('4054', '0', '2019-11-27 18:21:16', null, '1', null, '1', '20191127182116356', '903198302ae6c7c6791944798264c9f57e52fa9a1574805525129', '36', '3.55');
INSERT INTO `sampling_media_order` VALUES ('4055', '0', '2019-11-27 18:21:37', null, '1', null, '1', '20191127182137968', '903198302ae6c7c6791944798264c9f57e52fa9a1574805525129', '49', '3.67');
INSERT INTO `sampling_media_order` VALUES ('4056', '0', '2019-11-27 18:22:18', null, '1', null, '1', '20191127182218503', '903198302ae6c7c6791944798264c9f57e52fa9a1574805525129', '74', '3.63');
INSERT INTO `sampling_media_order` VALUES ('4057', '0', '2019-11-27 18:22:54', null, '1', null, '1', '20191127182254755', '903198302ae6c7c6791944798264c9f57e52fa9a1574805525129', '95', '3.91');
INSERT INTO `sampling_media_order` VALUES ('4058', '0', '2019-11-27 18:23:43', null, '1', null, '1', '20191127182343587', '903198302ae6c7c6791944798264c9f57e52fa9a1574805525129', '49', '3.88');
INSERT INTO `sampling_media_order` VALUES ('4059', '0', '2019-11-27 18:23:52', null, '1', null, '1', '20191127182352152', '903198302ae6c7c6791944798264c9f57e52fa9a1574805525129', '49', '3.66');
INSERT INTO `sampling_media_order` VALUES ('4060', '0', '2019-11-27 18:24:16', null, '1', null, '1', '20191127182416694', '903198302ae6c7c6791944798264c9f57e52fa9a1574805525129', '88', '3.70');
INSERT INTO `sampling_media_order` VALUES ('4061', '0', '2019-11-27 18:24:53', null, '1', null, '1', '20191127182453369', '903198302ae6c7c6791944798264c9f57e52fa9a1574805525129', '36', '3.75');
INSERT INTO `sampling_media_order` VALUES ('4062', '0', '2019-11-27 20:18:44', null, '1', null, '1', '20191127201844983', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '59', '3.49');
INSERT INTO `sampling_media_order` VALUES ('4063', '0', '2019-11-27 20:20:16', null, '1', null, '1', '20191127202016687', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '42', '3.71');
INSERT INTO `sampling_media_order` VALUES ('4064', '0', '2019-11-27 20:22:33', null, '1', null, '1', '20191127202233971', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '51', '3.81');
INSERT INTO `sampling_media_order` VALUES ('4065', '0', '2019-11-27 20:30:08', null, '1', null, '1', '20191127203008232', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '40', '3.40');
INSERT INTO `sampling_media_order` VALUES ('4066', '0', '2019-11-27 20:31:04', null, '1', null, '1', '20191127203104973', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '89', '3.84');
INSERT INTO `sampling_media_order` VALUES ('4067', '0', '2019-11-27 20:33:07', null, '1', null, '1', '20191127203307645', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '66', '3.45');
INSERT INTO `sampling_media_order` VALUES ('4068', '0', '2019-11-27 20:33:54', null, '1', null, '1', '20191127203354638', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '35', '3.63');
INSERT INTO `sampling_media_order` VALUES ('4069', '0', '2019-11-27 20:34:57', null, '1', null, '1', '20191127203457634', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '79', '3.70');
INSERT INTO `sampling_media_order` VALUES ('4070', '0', '2019-11-27 20:36:07', null, '1', null, '1', '20191127203607444', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '59', '3.87');
INSERT INTO `sampling_media_order` VALUES ('4071', '0', '2019-11-27 20:36:36', null, '1', null, '1', '20191127203636719', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '38', '3.85');
INSERT INTO `sampling_media_order` VALUES ('4072', '0', '2019-11-27 20:37:30', null, '1', null, '1', '20191127203730335', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '94', '3.32');
INSERT INTO `sampling_media_order` VALUES ('4073', '0', '2019-11-27 20:38:13', null, '1', null, '1', '20191127203813343', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '74', '3.67');
INSERT INTO `sampling_media_order` VALUES ('4074', '0', '2019-11-27 20:39:03', null, '1', null, '1', '20191127203903299', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '31', '3.31');
INSERT INTO `sampling_media_order` VALUES ('4075', '0', '2019-11-27 20:41:45', null, '1', null, '1', '20191127204145571', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '94', '3.64');
INSERT INTO `sampling_media_order` VALUES ('4076', '0', '2019-11-27 20:42:04', null, '1', null, '1', '20191127204204158', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '40', '3.48');
INSERT INTO `sampling_media_order` VALUES ('4077', '0', '2019-11-27 20:42:23', null, '1', null, '1', '20191127204223373', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '92', '3.35');
INSERT INTO `sampling_media_order` VALUES ('4078', '0', '2019-11-27 20:43:11', null, '1', null, '1', '20191127204311860', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '49', '3.79');
INSERT INTO `sampling_media_order` VALUES ('4079', '0', '2019-11-27 20:43:54', null, '1', null, '1', '20191127204354735', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '95', '3.15');
INSERT INTO `sampling_media_order` VALUES ('4080', '0', '2019-11-27 20:45:40', null, '1', null, '1', '20191127204540871', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '12', '3.24');
INSERT INTO `sampling_media_order` VALUES ('4081', '0', '2019-11-27 20:46:20', null, '1', null, '1', '20191127204620214', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '106', '3.68');
INSERT INTO `sampling_media_order` VALUES ('4082', '0', '2019-11-27 20:46:50', null, '1', null, '1', '20191127204650320', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '41', '3.28');
INSERT INTO `sampling_media_order` VALUES ('4083', '0', '2019-11-27 20:48:08', null, '1', null, '1', '20191127204808492', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '67', '3.76');
INSERT INTO `sampling_media_order` VALUES ('4084', '0', '2019-11-27 20:50:23', null, '1', null, '1', '20191127205023144', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '66', '3.77');
INSERT INTO `sampling_media_order` VALUES ('4085', '0', '2019-11-27 20:51:39', null, '1', null, '1', '20191127205139504', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '12', '3.73');
INSERT INTO `sampling_media_order` VALUES ('4086', '0', '2019-11-27 20:51:50', null, '1', null, '1', '20191127205150475', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '12', '3.70');
INSERT INTO `sampling_media_order` VALUES ('4087', '0', '2019-11-27 20:52:05', null, '1', null, '1', '20191127205205592', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '74', '3.64');
INSERT INTO `sampling_media_order` VALUES ('4088', '0', '2019-11-27 20:52:18', null, '1', null, '1', '20191127205218975', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '66', '3.22');
INSERT INTO `sampling_media_order` VALUES ('4089', '0', '2019-11-27 20:53:20', null, '1', null, '1', '20191127205320706', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '100', '3.00');
INSERT INTO `sampling_media_order` VALUES ('4090', '0', '2019-11-27 20:54:54', null, '1', null, '1', '20191127205454252', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '76', '3.69');
INSERT INTO `sampling_media_order` VALUES ('4091', '0', '2019-11-27 20:57:55', null, '1', null, '1', '20191127205755445', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '41', '3.90');
INSERT INTO `sampling_media_order` VALUES ('4092', '0', '2019-11-27 21:48:38', null, '1', null, '1', '20191127214838900', '', '59', '3.85');
INSERT INTO `sampling_media_order` VALUES ('4093', '0', '2019-11-27 22:45:26', null, '1', null, '1', '20191127224526684', '957827838a1cf7fbab634004a22c3f432ef0fca71573323048619', '35', '3.85');
INSERT INTO `sampling_media_order` VALUES ('4094', '0', '2019-11-27 22:45:49', null, '1', null, '1', '20191127224549189', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '35', '3.81');
INSERT INTO `sampling_media_order` VALUES ('4095', '0', '2019-11-27 22:46:23', null, '1', null, '1', '20191127224623319', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '84', '3.30');
INSERT INTO `sampling_media_order` VALUES ('4096', '0', '2019-11-27 22:46:32', null, '1', null, '1', '20191127224632927', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '84', '3.24');
INSERT INTO `sampling_media_order` VALUES ('4097', '0', '2019-11-27 22:46:36', null, '1', null, '1', '20191127224636962', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '92', '3.37');
INSERT INTO `sampling_media_order` VALUES ('4098', '0', '2019-11-27 22:46:47', null, '1', null, '1', '20191127224647356', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '88', '3.53');
INSERT INTO `sampling_media_order` VALUES ('4099', '0', '2019-11-27 22:47:05', null, '1', null, '1', '20191127224705401', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '86', '3.92');
INSERT INTO `sampling_media_order` VALUES ('4100', '0', '2019-11-27 22:47:24', null, '1', null, '1', '20191127224724186', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '96', '3.21');
INSERT INTO `sampling_media_order` VALUES ('4101', '0', '2019-11-28 09:29:36', null, '1', null, '1', '20191128092936566', '86092819830d0e20c6a44d8693bf6419a0847fa01574609645632', '16', '3.58');
INSERT INTO `sampling_media_order` VALUES ('4102', '0', '2019-11-28 10:22:03', null, '1', null, '1', '20191128102203307', '86092819830d0e20c6a44d8693bf6419a0847fa01574609645632', '58', '3.10');
INSERT INTO `sampling_media_order` VALUES ('4103', '0', '2019-11-28 10:22:52', null, '1', null, '1', '20191128102252932', '86092819830d0e20c6a44d8693bf6419a0847fa01574609645632', '69', '3.90');
INSERT INTO `sampling_media_order` VALUES ('4104', '0', '2019-11-28 11:02:09', null, '1', null, '1', '20191128110209851', '86092819830d0e20c6a44d8693bf6419a0847fa01574609645632', '74', '3.68');
INSERT INTO `sampling_media_order` VALUES ('4105', '0', '2019-11-28 11:14:27', null, '1', null, '1', '20191128111427622', '957827838a1cf7fbab634004a22c3f432ef0fca71573323048619', '92', '3.60');
INSERT INTO `sampling_media_order` VALUES ('4106', '0', '2019-11-28 11:14:44', null, '1', null, '1', '20191128111444834', '957827838a1cf7fbab634004a22c3f432ef0fca71573323048619', '35', '3.67');
INSERT INTO `sampling_media_order` VALUES ('4107', '0', '2019-11-28 11:15:13', null, '1', null, '1', '20191128111513942', '957827838a1cf7fbab634004a22c3f432ef0fca71573323048619', '88', '3.23');
INSERT INTO `sampling_media_order` VALUES ('4108', '0', '2019-11-28 11:15:48', null, '1', null, '1', '20191128111548975', '514841782efa7cf0de1a45d2b4649940db30c7321574274134010', '40', '3.09');
INSERT INTO `sampling_media_order` VALUES ('4109', '0', '2019-11-28 11:16:11', null, '1', null, '1', '20191128111611851', '514841782efa7cf0de1a45d2b4649940db30c7321574274134010', '88', '3.25');
INSERT INTO `sampling_media_order` VALUES ('4110', '0', '2019-11-28 11:16:24', null, '1', null, '1', '20191128111624417', '514841782efa7cf0de1a45d2b4649940db30c7321574274134010', '74', '3.34');
INSERT INTO `sampling_media_order` VALUES ('4111', '0', '2019-11-28 11:17:09', null, '1', null, '1', '20191128111709161', '514841782efa7cf0de1a45d2b4649940db30c7321574274134010', '49', '3.57');
INSERT INTO `sampling_media_order` VALUES ('4112', '0', '2019-11-28 11:17:40', null, '1', null, '1', '20191128111740688', '514841782efa7cf0de1a45d2b4649940db30c7321574274134010', '86', '3.80');
INSERT INTO `sampling_media_order` VALUES ('4113', '0', '2019-11-28 11:19:00', null, '1', null, '1', '20191128111900870', '514841782efa7cf0de1a45d2b4649940db30c7321574274134010', '45', '3.51');
INSERT INTO `sampling_media_order` VALUES ('4114', '0', '2019-11-28 11:19:09', null, '1', null, '1', '20191128111909716', '957827838a1cf7fbab634004a22c3f432ef0fca71573323048619', '45', '3.91');
INSERT INTO `sampling_media_order` VALUES ('4115', '0', '2019-11-28 11:38:10', null, '1', null, '1', '20191128113810174', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '35', '3.61');
INSERT INTO `sampling_media_order` VALUES ('4116', '0', '2019-11-28 11:38:57', null, '1', null, '1', '20191128113857423', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '88', '3.23');
INSERT INTO `sampling_media_order` VALUES ('4117', '0', '2019-11-28 11:39:14', null, '1', null, '1', '20191128113914975', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '86', '3.29');
INSERT INTO `sampling_media_order` VALUES ('4118', '0', '2019-11-28 11:39:29', null, '1', null, '1', '20191128113929962', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '42', '3.57');
INSERT INTO `sampling_media_order` VALUES ('4119', '0', '2019-11-28 11:40:06', null, '1', null, '1', '20191128114006104', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '21', '3.12');
INSERT INTO `sampling_media_order` VALUES ('4120', '0', '2019-11-28 11:40:21', null, '1', null, '1', '20191128114021983', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '45', '3.06');
INSERT INTO `sampling_media_order` VALUES ('4121', '0', '2019-11-28 11:40:42', null, '1', null, '1', '20191128114042406', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '60', '3.83');
INSERT INTO `sampling_media_order` VALUES ('4122', '0', '2019-11-28 12:29:55', null, '1', null, '1', '20191128122955130', '73000226accd1b58a4d848b39cee9d8a1afbffba1573221184813', '106', '3.77');
INSERT INTO `sampling_media_order` VALUES ('4123', '0', '2019-11-28 12:30:14', null, '1', null, '1', '20191128123014480', '73000226accd1b58a4d848b39cee9d8a1afbffba1573221184813', '88', '3.64');
INSERT INTO `sampling_media_order` VALUES ('4124', '0', '2019-11-28 12:32:32', null, '1', null, '1', '20191128123232874', '89174248178e89b9e91d49378d360449de7642821572985035878', '88', '3.97');
INSERT INTO `sampling_media_order` VALUES ('4125', '0', '2019-11-28 13:08:00', null, '1', null, '1', '20191128130800867', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '105', '3.87');
INSERT INTO `sampling_media_order` VALUES ('4126', '0', '2019-11-28 13:13:56', null, '1', null, '1', '20191128131356275', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '91', '3.48');
INSERT INTO `sampling_media_order` VALUES ('4127', '0', '2019-11-28 14:26:52', null, '1', null, '1', '20191128142652947', '80290395686ed6a835584a88a78aef6b931540cd1573054608018', '40', '3.09');
INSERT INTO `sampling_media_order` VALUES ('4128', '0', '2019-11-28 15:13:18', null, '1', null, '1', '20191128151318373', '80290395686ed6a835584a88a78aef6b931540cd1573054608018', '106', '3.34');
INSERT INTO `sampling_media_order` VALUES ('4129', '0', '2019-11-28 15:14:57', null, '1', null, '1', '20191128151457157', '80290395686ed6a835584a88a78aef6b931540cd1573054608018', '106', '3.98');
INSERT INTO `sampling_media_order` VALUES ('4130', '0', '2019-11-28 15:28:53', null, '1', null, '1', '20191128152853365', '8755804611cd4e07cf8d4482b914fa592bcd9bbb1574573777803', '59', '3.35');
INSERT INTO `sampling_media_order` VALUES ('4131', '0', '2019-11-28 15:35:44', null, '1', null, '1', '20191128153544571', '3001322040ce2a73a6ba49e59ad98c06b3be31051574524130416', '96', '3.51');
INSERT INTO `sampling_media_order` VALUES ('4132', '0', '2019-11-28 15:36:02', null, '1', null, '1', '20191128153602241', '8039752509e9044c040941b2ab869d342391f6df1574926523173', '42', '3.48');
INSERT INTO `sampling_media_order` VALUES ('4133', '0', '2019-11-28 15:36:22', null, '1', null, '1', '20191128153622282', '8039752509e9044c040941b2ab869d342391f6df1574926523173', '36', '3.18');
INSERT INTO `sampling_media_order` VALUES ('4134', '0', '2019-11-28 15:36:34', null, '1', null, '1', '20191128153634328', '3001322040ce2a73a6ba49e59ad98c06b3be31051574524130416', '95', '3.75');
INSERT INTO `sampling_media_order` VALUES ('4135', '0', '2019-11-28 15:37:25', null, '1', null, '1', '20191128153725899', '3001322040ce2a73a6ba49e59ad98c06b3be31051574524130416', '36', '3.19');
INSERT INTO `sampling_media_order` VALUES ('4136', '0', '2019-11-28 15:39:23', null, '1', null, '1', '20191128153923578', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '84', '3.11');
INSERT INTO `sampling_media_order` VALUES ('4137', '0', '2019-11-28 15:43:15', null, '1', null, '1', '20191128154315432', '164675848826e6b3495641299fe687d92960a1eb1574926890028', '100', '3.44');
INSERT INTO `sampling_media_order` VALUES ('4138', '0', '2019-11-28 15:44:03', null, '1', null, '1', '20191128154403494', '710355570995a26dfd9243848da1ae2dacc43f901574577026433', '40', '3.83');
INSERT INTO `sampling_media_order` VALUES ('4139', '0', '2019-11-28 15:44:12', null, '1', null, '1', '20191128154412107', '251744563f6fee6cb46c41c795314bb7462e4f071574927028991', '94', '3.95');
INSERT INTO `sampling_media_order` VALUES ('4140', '0', '2019-11-28 15:44:42', null, '1', null, '1', '20191128154442103', '710355570995a26dfd9243848da1ae2dacc43f901574577026433', '59', '3.33');
INSERT INTO `sampling_media_order` VALUES ('4141', '0', '2019-11-28 15:46:31', null, '1', null, '1', '20191128154631943', '44079174bd0514459a1e49c0bbf9e743f33e9ec11574575069141', '46', '3.45');
INSERT INTO `sampling_media_order` VALUES ('4142', '0', '2019-11-28 15:47:14', null, '1', null, '1', '20191128154714972', '82114772725dd6ea0c8b468e8ea7b27b115aea3d1574663367311', '42', '3.77');
INSERT INTO `sampling_media_order` VALUES ('4143', '0', '2019-11-28 15:48:15', null, '1', null, '1', '20191128154815165', '82114772725dd6ea0c8b468e8ea7b27b115aea3d1574663367311', '89', '3.90');
INSERT INTO `sampling_media_order` VALUES ('4144', '0', '2019-11-28 15:53:56', null, '1', null, '1', '20191128155356780', '245306980e1bbcc9d05c4603aa88368ab26d57d41574927336346', '92', '3.66');
INSERT INTO `sampling_media_order` VALUES ('4145', '0', '2019-11-28 15:58:58', null, '1', null, '1', '20191128155858652', '643310887ce7acf5b7c348978b29a5826bf2a1911574661153011', '66', '3.38');
INSERT INTO `sampling_media_order` VALUES ('4146', '0', '2019-11-28 15:59:42', null, '1', null, '1', '20191128155942660', '643310887ce7acf5b7c348978b29a5826bf2a1911574661153011', '70', '3.81');
INSERT INTO `sampling_media_order` VALUES ('4147', '0', '2019-11-28 16:09:12', null, '1', null, '1', '20191128160912366', '12899518cd9bfa4284ff460d9dc3f07110815c1b1574928539719', '92', '3.07');
INSERT INTO `sampling_media_order` VALUES ('4148', '0', '2019-11-28 16:16:01', null, '1', null, '1', '20191128161601662', '87189542b3cfac0932e24869aab526bee03d61741574928887218', '67', '3.84');
INSERT INTO `sampling_media_order` VALUES ('4149', '0', '2019-11-28 16:24:41', null, '1', null, '1', '20191128162441487', '191208619761b053c4c4415a8720528775f4ddc81574929451362', '106', '3.34');
INSERT INTO `sampling_media_order` VALUES ('4150', '0', '2019-11-28 16:25:34', null, '1', null, '1', '20191128162534121', '191208619761b053c4c4415a8720528775f4ddc81574929451362', '59', '3.74');
INSERT INTO `sampling_media_order` VALUES ('4151', '0', '2019-11-28 16:34:00', null, '1', null, '1', '20191128163400110', '47153982711c60fa9b954ef5a1bb71ae35f03f921574930007186', '59', '3.35');
INSERT INTO `sampling_media_order` VALUES ('4152', '0', '2019-11-28 16:35:00', null, '1', null, '1', '20191128163500157', '47153982711c60fa9b954ef5a1bb71ae35f03f921574930007186', '36', '3.50');
INSERT INTO `sampling_media_order` VALUES ('4153', '0', '2019-11-28 16:46:28', null, '1', null, '1', '20191128164628161', '59543339377810b99e5547d6b4ba55ac9ef29c9d1574930762220', '35', '3.37');
INSERT INTO `sampling_media_order` VALUES ('4154', '0', '2019-11-28 16:49:49', null, '1', null, '1', '20191128164949621', '48231180e8528def12e3460f938288f1f7f05f181574930971085', '40', '3.94');
INSERT INTO `sampling_media_order` VALUES ('4155', '0', '2019-11-28 16:50:38', null, '1', null, '1', '20191128165038823', '48231180e8528def12e3460f938288f1f7f05f181574930971085', '59', '3.61');
INSERT INTO `sampling_media_order` VALUES ('4156', '0', '2019-11-28 16:51:20', null, '1', null, '1', '20191128165120868', '48231180e8528def12e3460f938288f1f7f05f181574930971085', '36', '3.94');
INSERT INTO `sampling_media_order` VALUES ('4157', '0', '2019-11-28 16:52:05', null, '1', null, '1', '20191128165205117', '48231180e8528def12e3460f938288f1f7f05f181574930971085', '95', '3.59');
INSERT INTO `sampling_media_order` VALUES ('4158', '0', '2019-11-28 16:53:16', null, '1', null, '1', '20191128165316616', '48231180e8528def12e3460f938288f1f7f05f181574930971085', '106', '3.73');
INSERT INTO `sampling_media_order` VALUES ('4159', '0', '2019-11-28 16:54:05', null, '1', null, '1', '20191128165405837', '48231180e8528def12e3460f938288f1f7f05f181574930971085', '74', '3.97');
INSERT INTO `sampling_media_order` VALUES ('4160', '0', '2019-11-28 16:55:11', null, '1', null, '1', '20191128165511518', '48231180e8528def12e3460f938288f1f7f05f181574930971085', '96', '3.69');
INSERT INTO `sampling_media_order` VALUES ('4161', '0', '2019-11-28 16:56:03', null, '1', null, '1', '20191128165603124', '48231180e8528def12e3460f938288f1f7f05f181574930971085', '21', '3.94');
INSERT INTO `sampling_media_order` VALUES ('4162', '0', '2019-11-28 16:56:56', null, '1', null, '1', '20191128165656847', '48231180e8528def12e3460f938288f1f7f05f181574930971085', '89', '3.28');
INSERT INTO `sampling_media_order` VALUES ('4163', '0', '2019-11-28 16:58:29', null, '1', null, '1', '20191128165829998', '48231180e8528def12e3460f938288f1f7f05f181574930971085', '12', '3.76');
INSERT INTO `sampling_media_order` VALUES ('4164', '0', '2019-11-28 16:59:12', null, '1', null, '1', '20191128165912304', '23564061272e8314d1974d29a72c6ecc005c00191574328988661', '59', '3.91');
INSERT INTO `sampling_media_order` VALUES ('4165', '0', '2019-11-28 16:59:24', null, '1', null, '1', '20191128165924766', '48231180e8528def12e3460f938288f1f7f05f181574930971085', '41', '3.29');
INSERT INTO `sampling_media_order` VALUES ('4166', '0', '2019-11-28 17:01:19', null, '1', null, '1', '20191128170119695', '48231180e8528def12e3460f938288f1f7f05f181574930971085', '51', '3.08');
INSERT INTO `sampling_media_order` VALUES ('4167', '0', '2019-11-28 17:02:38', null, '1', null, '1', '20191128170238427', '682440642f98ab1034984ae3a715f4f920c8fe871574333265810', '39', '3.06');
INSERT INTO `sampling_media_order` VALUES ('4168', '0', '2019-11-28 17:03:40', null, '1', null, '1', '20191128170340303', '48231180e8528def12e3460f938288f1f7f05f181574930971085', '109', '3.71');
INSERT INTO `sampling_media_order` VALUES ('4169', '0', '2019-11-28 17:07:20', null, '1', null, '1', '20191128170720704', '63339082d167635703f440d2a8da928a7b46314f1574740758711', '92', '3.31');
INSERT INTO `sampling_media_order` VALUES ('4170', '0', '2019-11-28 17:08:25', null, '1', null, '1', '20191128170825835', '682440642f98ab1034984ae3a715f4f920c8fe871574333265810', '79', '3.09');
INSERT INTO `sampling_media_order` VALUES ('4171', '0', '2019-11-28 17:09:10', null, '1', null, '1', '20191128170910269', '682440642f98ab1034984ae3a715f4f920c8fe871574333265810', '59', '3.16');
INSERT INTO `sampling_media_order` VALUES ('4172', '0', '2019-11-28 17:10:57', null, '1', null, '1', '20191128171057264', '682440642f98ab1034984ae3a715f4f920c8fe871574333265810', '92', '3.66');
INSERT INTO `sampling_media_order` VALUES ('4173', '0', '2019-11-28 17:11:13', null, '1', null, '1', '20191128171113382', '851971253c6af41f5ed74ea1abd4d864e9b9818c1574606260162', '35', '3.82');
INSERT INTO `sampling_media_order` VALUES ('4174', '0', '2019-11-28 17:25:52', null, '1', null, '1', '20191128172552499', '65287883219655b8739648c48bfc20454265b43a1574933117814', '40', '3.39');
INSERT INTO `sampling_media_order` VALUES ('4175', '0', '2019-11-28 17:30:51', null, '1', null, '1', '20191128173051636', '5029600887f09a96f9164de1b06333e39836d5351574605669743', '40', '3.41');
INSERT INTO `sampling_media_order` VALUES ('4176', '0', '2019-11-28 17:37:49', null, '1', null, '1', '20191128173749668', '82824296c08fed4b00ee40a3ac8130bc91a7d6e31574673564022', '21', '3.77');
INSERT INTO `sampling_media_order` VALUES ('4177', '0', '2019-11-28 17:38:55', null, '1', null, '1', '20191128173855795', '82824296c08fed4b00ee40a3ac8130bc91a7d6e31574673564022', '92', '3.68');
INSERT INTO `sampling_media_order` VALUES ('4178', '0', '2019-11-28 17:42:07', null, '1', null, '1', '20191128174207165', '1196076389f6cf83113945b394c917bbe9b6a7c91574602421745', '84', '3.37');
INSERT INTO `sampling_media_order` VALUES ('4179', '0', '2019-11-28 17:46:17', null, '1', null, '1', '20191128174617240', '89816439ac46fd4c7fa24b168e065e92974ce9fa1574663141482', '40', '3.60');
INSERT INTO `sampling_media_order` VALUES ('4180', '0', '2019-11-28 17:59:29', null, '1', null, '1', '20191128175929490', '903198302ae6c7c6791944798264c9f57e52fa9a1574805525129', '49', '3.66');
INSERT INTO `sampling_media_order` VALUES ('4181', '0', '2019-11-28 17:59:57', null, '1', null, '1', '20191128175957144', '903198302ae6c7c6791944798264c9f57e52fa9a1574805525129', '74', '3.50');
INSERT INTO `sampling_media_order` VALUES ('4182', '0', '2019-11-28 18:00:18', null, '1', null, '1', '20191128180018591', '674597645bbd26c90ed44ee1a143eedeab882bf71574935196676', '41', '3.47');
INSERT INTO `sampling_media_order` VALUES ('4183', '0', '2019-11-28 18:00:55', null, '1', null, '1', '20191128180055756', '903198302ae6c7c6791944798264c9f57e52fa9a1574805525129', '36', '3.17');
INSERT INTO `sampling_media_order` VALUES ('4184', '0', '2019-11-28 19:24:50', null, '1', null, '1', '20191128192450648', '115642796ff55b901f644ee2a499496fde4332d61574776720526', '42', '3.02');
INSERT INTO `sampling_media_order` VALUES ('4185', '0', '2019-11-28 19:35:08', null, '1', null, '1', '20191128193508314', '80290395686ed6a835584a88a78aef6b931540cd1573054608018', '35', '3.32');
INSERT INTO `sampling_media_order` VALUES ('4186', '0', '2019-11-28 19:54:48', null, '1', null, '1', '20191128195448418', '19520459ca410f4cbb9b4ae69e1612066839f8ef1574942072527', '92', '3.65');
INSERT INTO `sampling_media_order` VALUES ('4187', '0', '2019-11-28 20:05:50', null, '1', null, '1', '20191128200550857', '8693814228a098d98e87436a803b74bab14b58e51574674787222', '106', '3.83');
INSERT INTO `sampling_media_order` VALUES ('4188', '0', '2019-11-28 20:06:47', null, '1', null, '1', '20191128200647811', '8693814228a098d98e87436a803b74bab14b58e51574674787222', '70', '3.03');
INSERT INTO `sampling_media_order` VALUES ('4189', '0', '2019-11-28 20:20:13', null, '1', null, '1', '20191128202013846', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '98', '3.05');
INSERT INTO `sampling_media_order` VALUES ('4190', '0', '2019-11-28 20:20:41', null, '1', null, '1', '20191128202041451', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '30', '3.30');
INSERT INTO `sampling_media_order` VALUES ('4191', '0', '2019-11-28 20:21:23', null, '1', null, '1', '20191128202123223', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '40', '3.86');
INSERT INTO `sampling_media_order` VALUES ('4192', '0', '2019-11-28 20:21:45', null, '1', null, '1', '20191128202145565', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '60', '3.71');
INSERT INTO `sampling_media_order` VALUES ('4193', '0', '2019-11-28 20:31:24', null, '1', null, '1', '20191128203124907', '643310887ce7acf5b7c348978b29a5826bf2a1911574661153011', '94', '3.45');
INSERT INTO `sampling_media_order` VALUES ('4194', '0', '2019-11-28 20:36:40', null, '1', null, '1', '20191128203640592', '352125993ca7bbf237074042b6448076fd24ff951574585459865', '35', '3.72');
INSERT INTO `sampling_media_order` VALUES ('4195', '0', '2019-11-28 20:37:17', null, '1', null, '1', '20191128203717321', '352125993ca7bbf237074042b6448076fd24ff951574585459865', '59', '3.29');
INSERT INTO `sampling_media_order` VALUES ('4196', '0', '2019-11-28 20:37:48', null, '1', null, '1', '20191128203748173', '352125993ca7bbf237074042b6448076fd24ff951574585459865', '59', '3.92');
INSERT INTO `sampling_media_order` VALUES ('4197', '0', '2019-11-28 20:59:13', null, '1', null, '1', '20191128205913390', '72382715382e94c15e4543bcae1b9a129dae96251574583194492', '92', '3.96');
INSERT INTO `sampling_media_order` VALUES ('4198', '0', '2019-11-28 21:05:25', null, '1', null, '1', '20191128210525276', '41463850385c94e4a24345e5ab98f3c41fd95f671574946277782', '106', '3.20');
INSERT INTO `sampling_media_order` VALUES ('4199', '0', '2019-11-28 21:07:02', null, '1', null, '1', '20191128210702122', '72382715382e94c15e4543bcae1b9a129dae96251574583194492', '88', '3.27');
INSERT INTO `sampling_media_order` VALUES ('4200', '0', '2019-11-28 21:16:19', null, '1', null, '1', '20191128211619726', '41463850385c94e4a24345e5ab98f3c41fd95f671574946277782', '98', '3.06');
INSERT INTO `sampling_media_order` VALUES ('4201', '0', '2019-11-28 21:26:11', null, '1', null, '1', '20191128212611264', '', '74', '3.16');

-- ----------------------------
-- Table structure for sampling_media_source
-- ----------------------------
DROP TABLE IF EXISTS `sampling_media_source`;
CREATE TABLE `sampling_media_source` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `deleted` tinyint(4) DEFAULT 0 COMMENT '逻辑删除状态0未删除,1已删除',
  `raw_add_time` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '创建时间',
  `raw_creator` varchar(20) DEFAULT NULL COMMENT '创建人',
  `raw_modifier` varchar(20) DEFAULT NULL COMMENT '修改人',
  `raw_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `raw_version` smallint(6) unsigned NOT NULL DEFAULT 1 COMMENT '版本号',
  `source_code` varchar(200) DEFAULT NULL COMMENT '平台来源编号',
  `source_notify_url` varchar(255) DEFAULT NULL COMMENT '平台同步通知地址',
  `source_return_url` varchar(255) DEFAULT NULL COMMENT '平台同步转跳地址',
  `maximum_amount` int(1) DEFAULT NULL COMMENT '最高金额',
  `minimum_amount` int(1) DEFAULT NULL COMMENT '最低金额',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='多平台配置';

-- ----------------------------
-- Records of sampling_media_source
-- ----------------------------
INSERT INTO `sampling_media_source` VALUES ('1', '0', '2019-11-06 03:53:55', null, null, null, '1', '1', 'http://www.yellmedia.net/apis/common/media/payResponse', 'http://www.yellmedia.net/excite/player.html', '4', '4');
INSERT INTO `sampling_media_source` VALUES ('2', '0', '2019-11-06 03:54:00', null, null, null, '1', '2', 'http://www.yellmedia.net/apis/common/media/payResponse', 'http://www.yellmedia.net/excite2/player.html', '4', '4');
INSERT INTO `sampling_media_source` VALUES ('3', '0', '2019-11-06 03:54:16', null, null, null, '1', '3', 'http://www.yellmedia.net/apis/common/media/payResponse', 'http://www.yellmedia.net/excite3/player.html', '3', '3');

-- ----------------------------
-- Table structure for sampling_mould_detection_relation
-- ----------------------------
DROP TABLE IF EXISTS `sampling_mould_detection_relation`;
CREATE TABLE `sampling_mould_detection_relation` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `deleted` tinyint(4) DEFAULT 0 COMMENT '逻辑删除状态0未删除,1已删除',
  `raw_add_time` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '创建时间',
  `raw_creator` varchar(20) DEFAULT NULL COMMENT '创建人',
  `raw_modifier` varchar(20) DEFAULT NULL COMMENT '修改人',
  `raw_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `raw_version` smallint(6) unsigned NOT NULL DEFAULT 1 COMMENT '版本号',
  `detective_item_code` varchar(255) DEFAULT NULL COMMENT '检测项编号',
  `detective_item_name` varchar(255) DEFAULT NULL COMMENT '检测项名称',
  `mould_name` varchar(255) DEFAULT NULL COMMENT '模板名称',
  `mould_tree_id` int(11) DEFAULT NULL COMMENT '所属模板树节点ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='模板与检测项关系';

-- ----------------------------
-- Records of sampling_mould_detection_relation
-- ----------------------------

-- ----------------------------
-- Table structure for sampling_mould_info
-- ----------------------------
DROP TABLE IF EXISTS `sampling_mould_info`;
CREATE TABLE `sampling_mould_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `deleted` tinyint(4) DEFAULT 0 COMMENT '逻辑删除状态0未删除,1已删除',
  `raw_add_time` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '创建时间',
  `raw_creator` varchar(20) DEFAULT NULL COMMENT '创建人',
  `raw_modifier` varchar(20) DEFAULT NULL COMMENT '修改人',
  `raw_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `raw_version` smallint(6) unsigned NOT NULL DEFAULT 1 COMMENT '版本号',
  `mould_belong` varchar(255) DEFAULT NULL COMMENT '模板所属项目',
  `mould_belong_id` int(11) DEFAULT NULL COMMENT '模板所属项目ID',
  `mould_classes` text DEFAULT NULL COMMENT '模板样式数据',
  `mould_code` varchar(36) DEFAULT NULL COMMENT '模板唯一编码',
  `mould_data` text DEFAULT NULL COMMENT '模板内容数据',
  `mould_height_with` varchar(2000) DEFAULT NULL COMMENT '模板行高列宽数据',
  `mould_merge_cell` varchar(2000) DEFAULT NULL COMMENT '模板合并单元格数据',
  `mould_name` varchar(255) DEFAULT NULL COMMENT '模板名称',
  `mould_parent_id` int(11) DEFAULT NULL COMMENT '所属父节点ID',
  `mould_parent_name` varchar(255) DEFAULT NULL COMMENT '所属父节点名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKfhbrkwa2m9qnkgwiygvxglshj` (`mould_code`),
  UNIQUE KEY `UK_p8qk6kb5l7r7t4hd8ywg5m3qi` (`mould_belong_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='模板信息表';

-- ----------------------------
-- Records of sampling_mould_info
-- ----------------------------

-- ----------------------------
-- Table structure for sampling_mould_tree
-- ----------------------------
DROP TABLE IF EXISTS `sampling_mould_tree`;
CREATE TABLE `sampling_mould_tree` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `deleted` tinyint(4) DEFAULT 0 COMMENT '逻辑删除状态0未删除,1已删除',
  `raw_add_time` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '创建时间',
  `raw_creator` varchar(20) DEFAULT NULL COMMENT '创建人',
  `raw_modifier` varchar(20) DEFAULT NULL COMMENT '修改人',
  `raw_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `raw_version` smallint(6) unsigned NOT NULL DEFAULT 1 COMMENT '版本号',
  `tree_order` int(11) DEFAULT NULL COMMENT '节点顺序',
  `tree_code` varchar(100) DEFAULT NULL COMMENT '节点编码',
  `tree_name` varchar(100) DEFAULT NULL COMMENT '节点名称',
  `tree_parent_id` int(11) DEFAULT NULL COMMENT '上级节点ID',
  `tree_parent_name` varchar(100) DEFAULT NULL COMMENT '上级节点名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_3x0hf3t5hoeboba43oedm38ma` (`tree_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='模板配置树形菜单';

-- ----------------------------
-- Records of sampling_mould_tree
-- ----------------------------

-- ----------------------------
-- Table structure for sampling_pay_channel
-- ----------------------------
DROP TABLE IF EXISTS `sampling_pay_channel`;
CREATE TABLE `sampling_pay_channel` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `deleted` tinyint(4) DEFAULT 0 COMMENT '逻辑删除状态0未删除,1已删除',
  `raw_add_time` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '创建时间',
  `raw_creator` varchar(20) DEFAULT NULL COMMENT '创建人',
  `raw_modifier` varchar(20) DEFAULT NULL COMMENT '修改人',
  `raw_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `raw_version` smallint(6) unsigned NOT NULL DEFAULT 1 COMMENT '版本号',
  `active` tinyint(4) DEFAULT 0 COMMENT '激活状态 0未激活,1已激活',
  `channel_name` varchar(255) DEFAULT NULL COMMENT '支付名称',
  `source` varchar(200) DEFAULT NULL COMMENT '支付渠道通知网址一级域名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `source` (`source`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='支付渠道';

-- ----------------------------
-- Records of sampling_pay_channel
-- ----------------------------

-- ----------------------------
-- Table structure for sampling_property_tree
-- ----------------------------
DROP TABLE IF EXISTS `sampling_property_tree`;
CREATE TABLE `sampling_property_tree` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `deleted` tinyint(4) DEFAULT 0 COMMENT '逻辑删除状态0未删除,1已删除',
  `raw_add_time` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '创建时间',
  `raw_creator` varchar(20) DEFAULT NULL COMMENT '创建人',
  `raw_modifier` varchar(20) DEFAULT NULL COMMENT '修改人',
  `raw_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `raw_version` smallint(6) unsigned NOT NULL DEFAULT 1 COMMENT '版本号',
  `tree_order` int(11) DEFAULT NULL COMMENT '节点顺序',
  `tree_code` varchar(100) DEFAULT NULL COMMENT '节点编码',
  `tree_name` varchar(100) DEFAULT NULL COMMENT '节点名称',
  `tree_parent_id` int(11) DEFAULT NULL COMMENT '上级节点ID',
  `tree_parent_name` varchar(100) DEFAULT NULL COMMENT '上级节点名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_8hptxmuop9i6rs2ovj2j52l46` (`tree_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='属性配置树';

-- ----------------------------
-- Records of sampling_property_tree
-- ----------------------------

-- ----------------------------
-- Table structure for sampling_questionnaire
-- ----------------------------
DROP TABLE IF EXISTS `sampling_questionnaire`;
CREATE TABLE `sampling_questionnaire` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `deleted` tinyint(4) DEFAULT 0 COMMENT '逻辑删除状态0未删除,1已删除',
  `raw_add_time` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '创建时间',
  `raw_creator` varchar(20) DEFAULT NULL COMMENT '创建人',
  `raw_modifier` varchar(20) DEFAULT NULL COMMENT '修改人',
  `raw_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `raw_version` smallint(6) unsigned NOT NULL DEFAULT 1 COMMENT '版本号',
  `job` varchar(255) DEFAULT NULL COMMENT '职位',
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `phone` varchar(255) DEFAULT NULL COMMENT '电话',
  `question1` varchar(100) DEFAULT NULL COMMENT '第一题',
  `question2` varchar(100) DEFAULT NULL COMMENT '第二题',
  `question3` varchar(255) DEFAULT NULL COMMENT '第三题',
  `unit_name` varchar(255) DEFAULT NULL COMMENT '单位名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='问卷调查';

-- ----------------------------
-- Records of sampling_questionnaire
-- ----------------------------

-- ----------------------------
-- Table structure for sampling_sampling_plan
-- ----------------------------
DROP TABLE IF EXISTS `sampling_sampling_plan`;
CREATE TABLE `sampling_sampling_plan` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `deleted` tinyint(4) DEFAULT 0 COMMENT '逻辑删除状态0未删除,1已删除',
  `raw_add_time` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '创建时间',
  `raw_creator` varchar(20) DEFAULT NULL COMMENT '创建人',
  `raw_modifier` varchar(20) DEFAULT NULL COMMENT '修改人',
  `raw_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `raw_version` smallint(6) unsigned NOT NULL DEFAULT 1 COMMENT '版本号',
  `detected_contact_person` varchar(100) DEFAULT NULL COMMENT '受检单位联系人',
  `detected_contact_phone` varchar(20) DEFAULT NULL COMMENT '受检单位联系电话',
  `detected_union_address` varchar(100) DEFAULT NULL COMMENT '受检单位地址',
  `detected_union_name` varchar(100) DEFAULT NULL COMMENT '受检单位名称',
  `mould_classes` text DEFAULT NULL COMMENT '模板样式数据',
  `mould_height_with` varchar(2000) DEFAULT NULL COMMENT '模板行高列宽数据',
  `sample_num` int(10) DEFAULT NULL COMMENT '样品个数',
  `sample_position_code` varchar(36) DEFAULT NULL COMMENT '采样点编号编号',
  `sample_position_name` varchar(36) DEFAULT NULL COMMENT '采样点编号名称',
  `sample_type_code` varchar(36) DEFAULT NULL COMMENT '样品类别编号',
  `sample_type_name` varchar(36) DEFAULT NULL COMMENT '样品类别名称',
  `union_address` varchar(255) DEFAULT NULL COMMENT '单位地址',
  `union_contract_person` varchar(255) DEFAULT NULL COMMENT '单位联系人',
  `union_contract_phone` varchar(20) DEFAULT NULL COMMENT '单位联系人电话',
  `union_name` varchar(100) DEFAULT NULL COMMENT '单位名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='采样计划';

-- ----------------------------
-- Records of sampling_sampling_plan
-- ----------------------------

-- ----------------------------
-- Table structure for sampling_scanner_info
-- ----------------------------
DROP TABLE IF EXISTS `sampling_scanner_info`;
CREATE TABLE `sampling_scanner_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `deleted` tinyint(4) DEFAULT 0 COMMENT '逻辑删除状态0未删除,1已删除',
  `raw_add_time` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '创建时间',
  `raw_creator` varchar(20) DEFAULT NULL COMMENT '创建人',
  `raw_modifier` varchar(20) DEFAULT NULL COMMENT '修改人',
  `raw_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `raw_version` smallint(6) unsigned NOT NULL DEFAULT 1 COMMENT '版本号',
  `company_name` varchar(100) DEFAULT NULL COMMENT '公司名称',
  `scanner_name` varchar(100) DEFAULT NULL COMMENT '名称',
  `phone` varchar(100) DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='扫描者信息';

-- ----------------------------
-- Records of sampling_scanner_info
-- ----------------------------

-- ----------------------------
-- Table structure for sampling_sys_menu_conf
-- ----------------------------
DROP TABLE IF EXISTS `sampling_sys_menu_conf`;
CREATE TABLE `sampling_sys_menu_conf` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `deleted` tinyint(4) DEFAULT 0 COMMENT '逻辑删除状态0未删除,1已删除',
  `raw_add_time` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '创建时间',
  `raw_creator` varchar(20) DEFAULT NULL COMMENT '创建人',
  `raw_modifier` varchar(20) DEFAULT NULL COMMENT '修改人',
  `raw_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `raw_version` smallint(6) unsigned NOT NULL DEFAULT 1 COMMENT '版本号',
  `common` tinyint(4) DEFAULT 0 COMMENT '是否为公共菜单 0否,1是',
  `menu_code` varchar(100) DEFAULT NULL COMMENT '菜单编码',
  `menu_name` varchar(100) DEFAULT NULL COMMENT '菜单名称',
  `menu_parent_code` varchar(100) DEFAULT NULL COMMENT '上级菜单编号',
  `menu_parent_name` varchar(100) DEFAULT NULL COMMENT '上级菜单名称',
  `menu_url` varchar(100) DEFAULT NULL COMMENT '菜单链接地址',
  `menu_ordby` int(11) DEFAULT NULL COMMENT '菜单顺序',
  `menu_state` int(1) DEFAULT NULL COMMENT '菜单状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_7ypv1ttgxtmok5yj7l7tec4qo` (`menu_code`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='整个系统的全部菜单配置';

-- ----------------------------
-- Records of sampling_sys_menu_conf
-- ----------------------------
INSERT INTO `sampling_sys_menu_conf` VALUES ('1', '0', '2019-10-13 21:57:48', null, null, null, '1', '0', 'System', '系统设置', null, null, null, null, null);
INSERT INTO `sampling_sys_menu_conf` VALUES ('2', '0', '2019-10-13 21:58:29', null, null, null, '1', '0', 'SystemMenuSet', '菜单设置', 'System', '系统设置', 'SystemMenuSet.html', null, null);
INSERT INTO `sampling_sys_menu_conf` VALUES ('3', '0', '2019-10-13 21:59:26', null, null, null, '1', '0', 'Auth', '权限', null, null, null, null, null);
INSERT INTO `sampling_sys_menu_conf` VALUES ('4', '0', '2019-10-13 22:00:11', null, null, null, '1', '0', 'AuthUserRole', '用户角色设置', 'Auth', '权限', 'AuthUserRoleSet.html', null, null);
INSERT INTO `sampling_sys_menu_conf` VALUES ('5', '0', '2019-10-13 22:00:45', null, null, null, '1', '0', 'AuthRoleSet', '角色权限设置', 'Auth', '权限', 'AuthRoleSet.html', null, null);
INSERT INTO `sampling_sys_menu_conf` VALUES ('6', '0', '2019-10-14 01:04:38', '', '', null, '1', '0', 'contentManage', '内容管理', '', '', '', null, null);
INSERT INTO `sampling_sys_menu_conf` VALUES ('7', '0', '2019-10-14 01:05:43', '', '', null, '3', '0', 'ContentVideoInput', '视频管理', 'contentManage', '内容管理', 'ContentVideoInput.html', null, null);
INSERT INTO `sampling_sys_menu_conf` VALUES ('8', '0', '2019-10-15 03:09:27', '', '', null, '1', '0', 'ContentVideoListView', '视频列表', 'contentManage', '内容管理', 'ContentVideoListView.html', null, null);

-- ----------------------------
-- Table structure for sampling_sys_role_conf
-- ----------------------------
DROP TABLE IF EXISTS `sampling_sys_role_conf`;
CREATE TABLE `sampling_sys_role_conf` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `deleted` tinyint(4) DEFAULT 0 COMMENT '逻辑删除状态0未删除,1已删除',
  `raw_add_time` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '创建时间',
  `raw_creator` varchar(20) DEFAULT NULL COMMENT '创建人',
  `raw_modifier` varchar(20) DEFAULT NULL COMMENT '修改人',
  `raw_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `raw_version` smallint(6) unsigned NOT NULL DEFAULT 1 COMMENT '版本号',
  `role_code` varchar(30) DEFAULT NULL COMMENT '角色编号',
  `role_name` varchar(30) DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_1rwgxnq4ktyvwwxc1jlsco36m` (`role_code`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='整个系统的角色配置';

-- ----------------------------
-- Records of sampling_sys_role_conf
-- ----------------------------
INSERT INTO `sampling_sys_role_conf` VALUES ('1', '0', '2019-11-05 16:11:02', 'admin', '1', null, '1', 'superadmin', '超级管理员');
INSERT INTO `sampling_sys_role_conf` VALUES ('2', '0', '2019-11-05 16:11:32', 'admin', '1', null, '1', 'videoOperate', '视频操作员');

-- ----------------------------
-- Table structure for sampling_sys_role_func_auth_conf
-- ----------------------------
DROP TABLE IF EXISTS `sampling_sys_role_func_auth_conf`;
CREATE TABLE `sampling_sys_role_func_auth_conf` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `deleted` tinyint(4) DEFAULT 0 COMMENT '逻辑删除状态0未删除,1已删除',
  `raw_add_time` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '创建时间',
  `raw_creator` varchar(20) DEFAULT NULL COMMENT '创建人',
  `raw_modifier` varchar(20) DEFAULT NULL COMMENT '修改人',
  `raw_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `raw_version` smallint(6) unsigned NOT NULL DEFAULT 1 COMMENT '版本号',
  `belong_menu` varchar(100) DEFAULT NULL COMMENT '所属菜单',
  `func_name` varchar(100) DEFAULT NULL COMMENT '功能名称',
  `func_url` varchar(100) DEFAULT NULL COMMENT '功能地址',
  `role_code` varchar(30) DEFAULT NULL COMMENT '角色编号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK2uox7gdabmuuf59t8msexh8q3` (`role_code`,`func_url`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='角色功能权限配置';

-- ----------------------------
-- Records of sampling_sys_role_func_auth_conf
-- ----------------------------

-- ----------------------------
-- Table structure for sampling_sys_role_menu_auth_conf
-- ----------------------------
DROP TABLE IF EXISTS `sampling_sys_role_menu_auth_conf`;
CREATE TABLE `sampling_sys_role_menu_auth_conf` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `deleted` tinyint(4) DEFAULT 0 COMMENT '逻辑删除状态0未删除,1已删除',
  `raw_add_time` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '创建时间',
  `raw_creator` varchar(20) DEFAULT NULL COMMENT '创建人',
  `raw_modifier` varchar(20) DEFAULT NULL COMMENT '修改人',
  `raw_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `raw_version` smallint(6) unsigned NOT NULL DEFAULT 1 COMMENT '版本号',
  `menu_code` varchar(100) DEFAULT NULL COMMENT '菜单编码',
  `menu_name` varchar(100) DEFAULT NULL COMMENT '菜单名称',
  `menu_parent_code` varchar(100) DEFAULT NULL COMMENT '上级菜单编号',
  `menu_parent_name` varchar(100) DEFAULT NULL COMMENT '上级菜单名称',
  `menu_url` varchar(100) DEFAULT NULL COMMENT '菜单链接地址',
  `menu_ordby` int(11) DEFAULT NULL COMMENT '菜单顺序',
  `role_code` varchar(30) DEFAULT NULL COMMENT '角色编号',
  `menu_state` int(1) DEFAULT NULL COMMENT '菜单状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKsvvd2x01f4m02l69tajck6e6b` (`role_code`,`menu_code`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='角色菜单配置表';

-- ----------------------------
-- Records of sampling_sys_role_menu_auth_conf
-- ----------------------------
INSERT INTO `sampling_sys_role_menu_auth_conf` VALUES ('1', '0', '2019-11-05 16:14:12', 'admin', '1', null, '1', 'ContentVideoInput', '视频管理', 'contentManage', '内容管理', 'ContentVideoInput.html', null, 'videoOperate', null);
INSERT INTO `sampling_sys_role_menu_auth_conf` VALUES ('2', '0', '2019-11-05 16:14:12', 'admin', '1', null, '1', 'contentManage', '内容管理', '', '', '', null, 'videoOperate', null);
INSERT INTO `sampling_sys_role_menu_auth_conf` VALUES ('3', '0', '2019-11-05 16:14:12', 'admin', '1', null, '1', 'ContentVideoListView', '视频列表', 'contentManage', '内容管理', 'ContentVideoListView.html', null, 'videoOperate', null);

-- ----------------------------
-- Table structure for sampling_sys_urls
-- ----------------------------
DROP TABLE IF EXISTS `sampling_sys_urls`;
CREATE TABLE `sampling_sys_urls` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `deleted` tinyint(4) DEFAULT 0 COMMENT '逻辑删除状态0未删除,1已删除',
  `raw_add_time` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '创建时间',
  `raw_creator` varchar(20) DEFAULT NULL COMMENT '创建人',
  `raw_modifier` varchar(20) DEFAULT NULL COMMENT '修改人',
  `raw_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `raw_version` smallint(6) unsigned NOT NULL DEFAULT 1 COMMENT '版本号',
  `url` varchar(100) DEFAULT NULL COMMENT '链接地址',
  `url_belong` varchar(100) DEFAULT NULL COMMENT '所属菜单',
  `url_method` varchar(10) DEFAULT NULL COMMENT '链接请求类型',
  `url_name` varchar(100) DEFAULT NULL COMMENT '连接描述',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4142 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sampling_sys_urls
-- ----------------------------
INSERT INTO `sampling_sys_urls` VALUES ('4141', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/error', '', '', '');
INSERT INTO `sampling_sys_urls` VALUES ('4045', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/common/logout.json', '登录注册', 'GET,', '退出登录');
INSERT INTO `sampling_sys_urls` VALUES ('4140', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/error', '', '', '');
INSERT INTO `sampling_sys_urls` VALUES ('4139', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/backend/dept/addOrEditDept.json', '部门管理', 'POST,', '新增编辑部门');
INSERT INTO `sampling_sys_urls` VALUES ('4138', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/backend/dept/treeDept.json', '部门管理', 'GET,', '获取部门树');
INSERT INTO `sampling_sys_urls` VALUES ('4137', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/backend/dept/validDept.json', '部门管理', 'GET,', '验证部门');
INSERT INTO `sampling_sys_urls` VALUES ('4136', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/backend/dept/deleteDept.json', '部门管理', 'GET,', '删除部门');
INSERT INTO `sampling_sys_urls` VALUES ('4135', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/backend/vtype/getAllVideoType.json', '视频类别', 'GET,', '获取所有类别');
INSERT INTO `sampling_sys_urls` VALUES ('4134', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/backend/vtype/deleteVideoType.json', '视频类别', 'GET,', '删除视频类别');
INSERT INTO `sampling_sys_urls` VALUES ('4133', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/backend/vtype/saveOrUpdateType.json', '视频类别', 'POST,', '更新或保存视频类别');
INSERT INTO `sampling_sys_urls` VALUES ('4132', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/backend/user/addOrEditUser.json', '用户管理', 'POST,', '添加编辑用户');
INSERT INTO `sampling_sys_urls` VALUES ('4131', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/backend/user/deleteUser.json', '用户管理', 'GET,', '删除用户账户');
INSERT INTO `sampling_sys_urls` VALUES ('4130', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/backend/user/deleteUserInfo.json', '用户管理', 'GET,', '删除用户信息');
INSERT INTO `sampling_sys_urls` VALUES ('4129', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/backend/user/findUser.json', '用户管理', 'GET,', '获取用户信息');
INSERT INTO `sampling_sys_urls` VALUES ('4128', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/backend/task/getTask.json', '事项管理', 'GET,', '获取事项');
INSERT INTO `sampling_sys_urls` VALUES ('4127', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/backend/task/getTaskDetail.json', '事项管理', 'GET,', '获取事项详情');
INSERT INTO `sampling_sys_urls` VALUES ('4126', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/backend/media/editMedia.json', '媒体', 'POST,', '编辑媒体数据');
INSERT INTO `sampling_sys_urls` VALUES ('4125', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/backend/media/deleteMedia.json', '媒体', 'GET,', '删除媒体数据');
INSERT INTO `sampling_sys_urls` VALUES ('4123', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/backend/media/findMediaByPage.json', '媒体', 'POST,', '获取媒体文件分页数据');
INSERT INTO `sampling_sys_urls` VALUES ('4124', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/backend/media/batchSaveOrUpdateMedia.json', '媒体', 'POST,', '批量保存媒体');
INSERT INTO `sampling_sys_urls` VALUES ('4122', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/backend/equipment/deleteEquipment.json', '仪器管理', 'POST,', '删除仪器');
INSERT INTO `sampling_sys_urls` VALUES ('4121', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/backend/equipment/addOrEditEquipment.json', '仪器管理', 'POST,', '添加编辑仪器');
INSERT INTO `sampling_sys_urls` VALUES ('4120', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/backend/equipment/getEquipment.json', '仪器管理', 'GET,', '获得仪器列表');
INSERT INTO `sampling_sys_urls` VALUES ('4119', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/backend/equipmentCategory/getCategory.json', '仪器管理', 'GET,', '获得分类列表');
INSERT INTO `sampling_sys_urls` VALUES ('4118', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/backend/equipmentCategory/deleteCategory.json', '仪器管理', 'POST,', '删除设备');
INSERT INTO `sampling_sys_urls` VALUES ('4117', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/backend/equipmentCategory/addOrEditCategory.json', '仪器管理', 'POST,', '新增或者编辑设备');
INSERT INTO `sampling_sys_urls` VALUES ('4111', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/user/getUserInfoPage.json', '用户管理', 'POST,', '获得所有用户分页数据');
INSERT INTO `sampling_sys_urls` VALUES ('4112', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/detection/deleteRelation.json', '检测项', 'POST,', '删除与模板之间的关系');
INSERT INTO `sampling_sys_urls` VALUES ('4113', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/detection/saveRelation.json', '检测项', 'POST,', '建立检测项与模板之间的关系');
INSERT INTO `sampling_sys_urls` VALUES ('4114', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/detection/findDetectionItemPage.json', '检测项', 'POST,', '查找检测项分页数据');
INSERT INTO `sampling_sys_urls` VALUES ('4115', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/detection/findRelationPageByItemCode.json', '检测项', 'POST,', '根据检测项编号分页查找检测项与模板之间的关系');
INSERT INTO `sampling_sys_urls` VALUES ('4116', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/backend/equipmentCategory/findDownCategory.json', '仪器管理', 'GET,', '获取子元素');
INSERT INTO `sampling_sys_urls` VALUES ('4109', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/userInfo/getCurrentUserInfo.json', '个人信息', 'GET,', '获取当前登录用户的基本信息');
INSERT INTO `sampling_sys_urls` VALUES ('4110', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/userInfo/getUserInfoByUserId.json', '个人信息', 'GET,', '根据ID获取用户基本信息');
INSERT INTO `sampling_sys_urls` VALUES ('4108', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/userInfo/getUsersPageWithoutUser.json', '用户', 'POST,', '获得用户列表(排除一般用户)');
INSERT INTO `sampling_sys_urls` VALUES ('4107', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/user/updatePassword.json', '用户管理', 'POST,', '修改密码数据');
INSERT INTO `sampling_sys_urls` VALUES ('4106', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/userInfo/saveOrUpdateUserInfo.json', '个人信息', 'POST,', '新增或修改用户基本信息');
INSERT INTO `sampling_sys_urls` VALUES ('4105', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/userInfo/updateUserRole.json', '个人信息', 'POST,', '修改账户角色');
INSERT INTO `sampling_sys_urls` VALUES ('4103', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/task/findTaskByBusinessCode.json', '事项', 'GET,', '按照业务编号查找事项');
INSERT INTO `sampling_sys_urls` VALUES ('4099', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/role/batchSaveRoleFuncAuthConf.json', '角色管理', 'POST,', '批量保存角色功能权限');
INSERT INTO `sampling_sys_urls` VALUES ('4100', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/role/batchDeleteRoleFuncAuthConf.json', '角色管理', 'POST,', '批量删除角色功能权限');
INSERT INTO `sampling_sys_urls` VALUES ('4101', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/role/saveOrUpdateRole.json', '角色管理', 'POST,', '新增或修改角色');
INSERT INTO `sampling_sys_urls` VALUES ('4102', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/sampling/findSamplingListByBusinessCode.json', '样品', 'GET,', '根据检测业务单号查找样品列表');
INSERT INTO `sampling_sys_urls` VALUES ('4104', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/user/setSignature.json', '用户管理', 'POST,', '设置签名数据');
INSERT INTO `sampling_sys_urls` VALUES ('4094', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/role/getConfdMenuCodes.json', '角色管理', 'GET,', '根据角色获取已经配置好的菜单编码');
INSERT INTO `sampling_sys_urls` VALUES ('4095', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/role/batchSaveMenuConf.json', '角色管理', 'POST,', '批量保存角色菜单权限配置');
INSERT INTO `sampling_sys_urls` VALUES ('4096', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/role/batchDeleteMenuConf.json', '角色管理', 'POST,', '批量删除菜单配置');
INSERT INTO `sampling_sys_urls` VALUES ('4097', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/menu/getAllFunctionUrl.json', '角色管理', 'GET,', '获得所有功能地址');
INSERT INTO `sampling_sys_urls` VALUES ('4098', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/menu/getFunctionAuthPage.json', '角色管理', 'GET,', '根据条件查询角色功能权限分页数据');
INSERT INTO `sampling_sys_urls` VALUES ('4091', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/role/getRoleConfPage.json', '角色管理', 'GET,', '获取角色分页列表');
INSERT INTO `sampling_sys_urls` VALUES ('4092', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/role/deleteRole.json', '角色管理', 'GET,', '删除角色');
INSERT INTO `sampling_sys_urls` VALUES ('4093', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/role/getConfdMenu.json', '角色管理', 'GET,', '根据角色获取已经配置好的树形菜单');
INSERT INTO `sampling_sys_urls` VALUES ('4090', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/role/getRoleConfList.json', '角色管理', 'GET,', '获取角色列表');
INSERT INTO `sampling_sys_urls` VALUES ('4089', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/result/writeTableData.json', '检测结果', 'POST,', '保存表格中填充的值（前提是在模板配置中已经放置了变量）');
INSERT INTO `sampling_sys_urls` VALUES ('4088', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/result/generateTable.json', '检测结果', 'POST,', '生成表格');
INSERT INTO `sampling_sys_urls` VALUES ('4087', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/result/findMouldsByDetectionCode.json', '检测结果', 'GET,', '根据检测项编号查找模板');
INSERT INTO `sampling_sys_urls` VALUES ('4085', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/mould/findByBelongId.json', '模板', 'GET,', '按照所属节点ID查找模板');
INSERT INTO `sampling_sys_urls` VALUES ('4086', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/result/findTaskByBusinessCode.json', '检测结果', 'GET,', '根据业务编号获取任务');
INSERT INTO `sampling_sys_urls` VALUES ('4083', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/mould/generatePropertyCode.json', '模板', 'GET,', '生成模板属性编号');
INSERT INTO `sampling_sys_urls` VALUES ('4084', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/mould/deleteMouldById.json', '模板', 'POST,', '根据模板ID删除模板信息');
INSERT INTO `sampling_sys_urls` VALUES ('4082', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/mould/deleteTreeNodeAndDeleteProperty.json', '模板', 'GET,', '删除属性树节点的同时删除此节点对应的所有属性值');
INSERT INTO `sampling_sys_urls` VALUES ('4080', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/mould/findAllPropertyTree.json', '模板', 'GET,', '查找所有属性树节点');
INSERT INTO `sampling_sys_urls` VALUES ('4081', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/mould/findPropertyByCondition.json', '模板', 'POST,', '根据条件查询属性列表');
INSERT INTO `sampling_sys_urls` VALUES ('4079', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/mould/saveOrUpdatePropertyTree.json', '模板', 'POST,', '新增或修改表格属性树');
INSERT INTO `sampling_sys_urls` VALUES ('4073', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/mould/deleteByMouldTreeId.json', '模板', 'POST,', '根据模板树节点ID删除节点');
INSERT INTO `sampling_sys_urls` VALUES ('4074', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/mould/deleteByMouldTreeIdAndDeleteMould.json', '模板', 'POST,', '根据模板树节点ID删除节点的同时删除模板');
INSERT INTO `sampling_sys_urls` VALUES ('4075', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/mould/saveOrUpdateProperty.json', '模板', 'POST,', '新增或更新属性值');
INSERT INTO `sampling_sys_urls` VALUES ('4076', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/mould/findByMenuCode.json', '模板', 'GET,', '按照模板唯一编号查找模板');
INSERT INTO `sampling_sys_urls` VALUES ('4077', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/mould/findAllPropertyCategory.json', '模板', 'GET,', '获得所有已保存的属性大类');
INSERT INTO `sampling_sys_urls` VALUES ('4078', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/mould/deleteProperty.json', '模板', 'GET,', '删除模板属性');
INSERT INTO `sampling_sys_urls` VALUES ('4068', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/mould/findAllMouldTree.json', '模板', 'GET,', '查找所有模板树节点');
INSERT INTO `sampling_sys_urls` VALUES ('4069', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/mould/writeDataToMould.json', '模板', 'POST,', '将采样数据写入模板中');
INSERT INTO `sampling_sys_urls` VALUES ('4070', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/mould/saveOrUpdateMould.json', '模板', 'POST,', '更新或新建模板信息');
INSERT INTO `sampling_sys_urls` VALUES ('4071', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/mould/saveOrUpdateMouldTree.json', '模板', 'POST,', '更新或保存模板树节点');
INSERT INTO `sampling_sys_urls` VALUES ('4072', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/mould/findMouldTreeByName.json', '模板', 'GET,', '根据名称模糊查找模板树节点');
INSERT INTO `sampling_sys_urls` VALUES ('4059', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/menu/getAllMenuTreeWithoutCommon.json', '菜单', 'GET,', '获取所有非公共菜单树');
INSERT INTO `sampling_sys_urls` VALUES ('4060', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/menu/getSysMenuList.json', '菜单', 'GET,', '获得系统菜单列表');
INSERT INTO `sampling_sys_urls` VALUES ('4061', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/menu/deleteSysMenu.json', '菜单', 'GET,', '删除菜单(同时也会删除子菜单以及角色已经配置好的菜单权限)');
INSERT INTO `sampling_sys_urls` VALUES ('4062', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/menu/getMenu.json', '菜单', 'GET,', '根据用户获得菜单树');
INSERT INTO `sampling_sys_urls` VALUES ('4063', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/menu/getAllMenu.json', '菜单', 'GET,', '获取所有菜单树');
INSERT INTO `sampling_sys_urls` VALUES ('4064', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/menu/editSysMenu.json', '菜单', 'POST,', '编辑系统配置菜单');
INSERT INTO `sampling_sys_urls` VALUES ('4065', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/mould/findAllAndPackage.json', '模板', 'POST,', '获根据查询条件获取组装好大类及其子节点属性');
INSERT INTO `sampling_sys_urls` VALUES ('4066', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/mould/deleteByMouldBelongId.json', '模板', 'POST,', '根据模板所属节点删除模板');
INSERT INTO `sampling_sys_urls` VALUES ('4067', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/front/mould/findPageByConditions.json', '模板', 'POST,', '根据条件查找分页数据');
INSERT INTO `sampling_sys_urls` VALUES ('4058', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/common/simpleCode/findByCodeCategoryId.json', '基础组件', 'GET,', '根据大类编号获取数据字典值');
INSERT INTO `sampling_sys_urls` VALUES ('4057', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/common/findAllOriginal.json', '测试', 'GET,', '获取原始数据');
INSERT INTO `sampling_sys_urls` VALUES ('4056', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/common/media/getUrlByAuth.json', '媒体(公共)', 'GET,', '根据购买记录查询视频地址');
INSERT INTO `sampling_sys_urls` VALUES ('4055', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/common/media/getMediaOrder.json', '媒体(公共)', 'GET,', '获取视频观看订单');
INSERT INTO `sampling_sys_urls` VALUES ('4054', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/common/media/getMediaPage.json', '媒体(公共)', 'GET,', '获取所有视频分页数据');
INSERT INTO `sampling_sys_urls` VALUES ('4053', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/common/media/getAllMediaType.json', '媒体(公共)', 'GET,', '获取所有视频分类');
INSERT INTO `sampling_sys_urls` VALUES ('4052', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/common/media/payResponse', '媒体(公共)', 'POST,', '支付结果响应');
INSERT INTO `sampling_sys_urls` VALUES ('4050', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/common/media/checkRecord.json', '媒体(公共)', 'GET,', '查询购买结果');
INSERT INTO `sampling_sys_urls` VALUES ('4051', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/common/media/findMediaByPage.json', '媒体(公共)', 'POST,', '获取媒体文件分页数据');
INSERT INTO `sampling_sys_urls` VALUES ('4049', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/common/uploadFile.json', '', 'POST,', '公共文件上传');
INSERT INTO `sampling_sys_urls` VALUES ('4048', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/common/sendEmailDemo.json', '登陆注册', 'GET,', '发送邮件demo');
INSERT INTO `sampling_sys_urls` VALUES ('4047', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/common/getVerify.json', '登陆注册', 'GET,', '获取验证码');
INSERT INTO `sampling_sys_urls` VALUES ('4046', '0', '2019-11-26 18:03:16', '1', '1', null, '1', '/common/passwordRegister.json', '登录注册', 'POST,', '用户注册');

-- ----------------------------
-- Table structure for sampling_sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sampling_sys_user`;
CREATE TABLE `sampling_sys_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `deleted` tinyint(4) DEFAULT 0 COMMENT '逻辑删除状态0未删除,1已删除',
  `raw_add_time` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '创建时间',
  `raw_creator` varchar(20) DEFAULT NULL COMMENT '创建人',
  `raw_modifier` varchar(20) DEFAULT NULL COMMENT '修改人',
  `raw_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `raw_version` smallint(6) unsigned NOT NULL DEFAULT 1 COMMENT '版本号',
  `display_name` varchar(100) DEFAULT NULL COMMENT '用户显示名称',
  `locked` tinyint(1) DEFAULT NULL COMMENT '是否锁定',
  `password` varchar(256) DEFAULT NULL COMMENT '密码',
  `phone` varchar(30) DEFAULT NULL COMMENT '电话号码',
  `register_date` datetime DEFAULT NULL COMMENT '注册时间',
  `rid` int(11) DEFAULT NULL,
  `salt` varchar(100) DEFAULT NULL COMMENT '加密盐',
  `type` varchar(100) DEFAULT NULL COMMENT '用户类型',
  `username` varchar(100) NOT NULL COMMENT '用户帐号',
  `verify_code` varchar(100) DEFAULT NULL COMMENT '验证码',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='用户账户表，用于存储用户帐号信息';

-- ----------------------------
-- Records of sampling_sys_user
-- ----------------------------
INSERT INTO `sampling_sys_user` VALUES ('1', '0', '2019-10-22 00:40:41', null, '1', null, '1', null, '0', '$2a$10$kDkVTJ0yjd/zypVUyFb7du4Wi.0wP4lk/e1am6MTH6mJwi391MykO', null, null, '0', null, 'admin', 'admin', null);
INSERT INTO `sampling_sys_user` VALUES ('2', '0', '2019-11-05 16:11:51', null, '1', null, '1', null, '0', '$2a$10$HhSKgQBplfHaIQ6Us5sTT.RNm617NrtHdhpLHrIeZ0UEsmc/5FGte', null, null, '0', null, 'manager', 'wu', null);
INSERT INTO `sampling_sys_user` VALUES ('3', '0', '2019-11-05 16:12:00', null, '1', null, '1', null, '0', '$2a$10$QkBbiazWGpEPwzO.EYcQIO0HY9vPRVXQiCAHuoLFS1f2NNVuFBIm6', null, null, '0', null, 'manager', 'zhou', null);
INSERT INTO `sampling_sys_user` VALUES ('4', '0', '2019-11-05 16:12:44', 'admin', '1', null, '1', null, '0', '$2a$10$6FXu5wNJMWUhvBGKfhY/uOr1Rv0JJNx75siBbwsJt2Y7ZNmp5iAdO', null, null, '0', null, 'manager', 'lrs123456', null);
INSERT INTO `sampling_sys_user` VALUES ('5', '0', '2019-11-05 22:30:35', null, '1', null, '1', null, '0', '$2a$10$oIqOh6bugmSexcuZJgTt7O9k0pXT9IyQdC9tHUlvgv.wGX86n/rE2', null, null, '0', null, 'manager', 'super', null);

-- ----------------------------
-- Table structure for sampling_table_property
-- ----------------------------
DROP TABLE IF EXISTS `sampling_table_property`;
CREATE TABLE `sampling_table_property` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `deleted` tinyint(4) DEFAULT 0 COMMENT '逻辑删除状态0未删除,1已删除',
  `raw_add_time` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '创建时间',
  `raw_creator` varchar(20) DEFAULT NULL COMMENT '创建人',
  `raw_modifier` varchar(20) DEFAULT NULL COMMENT '修改人',
  `raw_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `raw_version` smallint(6) unsigned NOT NULL DEFAULT 1 COMMENT '版本号',
  `property_code` varchar(100) DEFAULT NULL COMMENT '属性编号',
  `property_html` varchar(500) DEFAULT NULL COMMENT '属性值转换为html显示',
  `property_label_type` varchar(100) DEFAULT NULL COMMENT '属性标签类型',
  `property_name` varchar(100) DEFAULT NULL COMMENT '属性名称',
  `property_tree_id` int(11) DEFAULT NULL COMMENT '属性树节点ID',
  `property_tree_name` varchar(100) DEFAULT NULL COMMENT '属性树节点名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_5jtocwnl9mntbot1ke0i80w1s` (`property_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='表格原始属性';

-- ----------------------------
-- Records of sampling_table_property
-- ----------------------------

-- ----------------------------
-- Table structure for sampling_task
-- ----------------------------
DROP TABLE IF EXISTS `sampling_task`;
CREATE TABLE `sampling_task` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `deleted` tinyint(4) DEFAULT 0 COMMENT '逻辑删除状态0未删除,1已删除',
  `raw_add_time` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '创建时间',
  `raw_creator` varchar(20) DEFAULT NULL COMMENT '创建人',
  `raw_modifier` varchar(20) DEFAULT NULL COMMENT '修改人',
  `raw_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `raw_version` smallint(6) unsigned NOT NULL DEFAULT 1 COMMENT '版本号',
  `task_business_code` varchar(36) DEFAULT NULL COMMENT '业务编号',
  `client_address` varchar(255) DEFAULT NULL COMMENT '委托单位地址',
  `client_contact_person` varchar(255) DEFAULT NULL COMMENT '委托单位联系人',
  `client_contact_phone` varchar(255) DEFAULT NULL COMMENT '委托单位联系人电话',
  `client_name` varchar(255) DEFAULT NULL COMMENT '委托单位',
  `img_urls` text DEFAULT NULL COMMENT '多个照片地址，当为多个时用英文逗号隔开',
  `sampling_complete_num` int(3) DEFAULT NULL COMMENT '采样项目完成数量',
  `sampling_items` varchar(255) DEFAULT NULL COMMENT '所有采样项目',
  `sampling_items_num` int(3) DEFAULT NULL COMMENT '采样项目数量',
  `sampling_pending_status` varchar(20) DEFAULT NULL COMMENT '任务执行状态  no:代办  pending:进行中   end:结束',
  `video_urls` text DEFAULT NULL COMMENT '多个视频地址，当为多个时用英文逗号隔开',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sampling_business_code_index` (`task_business_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='事项';

-- ----------------------------
-- Records of sampling_task
-- ----------------------------

-- ----------------------------
-- Table structure for sampling_user_buy_record
-- ----------------------------
DROP TABLE IF EXISTS `sampling_user_buy_record`;
CREATE TABLE `sampling_user_buy_record` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `deleted` tinyint(4) DEFAULT 0 COMMENT '逻辑删除状态0未删除,1已删除',
  `raw_add_time` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '创建时间',
  `raw_creator` varchar(20) DEFAULT NULL COMMENT '创建人',
  `raw_modifier` varchar(20) DEFAULT NULL COMMENT '修改人',
  `raw_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `raw_version` smallint(6) unsigned NOT NULL DEFAULT 1 COMMENT '版本号',
  `buy` tinyint(4) DEFAULT 0 COMMENT '是否购买 0未购买,1已购买',
  `order_id` varchar(200) DEFAULT NULL COMMENT '订单ID',
  `user_id` varchar(200) DEFAULT NULL COMMENT '用户ID',
  `video_id` int(11) DEFAULT NULL COMMENT '视频ID',
  `order_amount` varchar(8) DEFAULT NULL COMMENT '订单金额',
  PRIMARY KEY (`id`),
  KEY `record_uid` (`user_id`),
  KEY `record_vid` (`video_id`)
) ENGINE=MyISAM AUTO_INCREMENT=237 DEFAULT CHARSET=utf8 COMMENT='用户购买记录';

-- ----------------------------
-- Records of sampling_user_buy_record
-- ----------------------------
INSERT INTO `sampling_user_buy_record` VALUES ('11', '0', '2019-10-27 15:19:01', null, '1', null, '1', '1', '20191027151846739', '380806836f4a5f34612b4bd3b4557f9b624099e41571688199660', '4', null);
INSERT INTO `sampling_user_buy_record` VALUES ('12', '0', '2019-10-27 15:19:40', null, '1', null, '1', '1', '20191027151931674', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '4', null);
INSERT INTO `sampling_user_buy_record` VALUES ('13', '0', '2019-10-27 19:20:22', null, '1', null, '1', '1', '20191027192012189', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '3', null);
INSERT INTO `sampling_user_buy_record` VALUES ('14', '0', '2019-10-27 19:21:15', null, '1', null, '1', '1', '20191027192101499', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '1', null);
INSERT INTO `sampling_user_buy_record` VALUES ('15', '0', '2019-10-27 22:41:54', null, null, null, '1', '0', '20191027224042411', '843195982d7001492b874766994cb249c607ef071571673376274', '3', null);
INSERT INTO `sampling_user_buy_record` VALUES ('16', '0', '2019-10-28 00:25:58', null, null, null, '1', '0', '20191028002258914', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '7', null);
INSERT INTO `sampling_user_buy_record` VALUES ('17', '0', '2019-10-28 00:43:42', null, null, null, '1', '0', '20191028004217204', '4664726943468837b3e54e0b8fab9315c10a428c1571689693774', '7', null);
INSERT INTO `sampling_user_buy_record` VALUES ('37', '0', '2019-11-05 18:30:01', null, '1', null, '1', '1', '20191105182943202', '4763026867da2e683c3240e689e0eb872ecb91d61572932553540', '24', null);
INSERT INTO `sampling_user_buy_record` VALUES ('38', '0', '2019-11-05 18:30:19', null, '1', null, '1', '1', '20191105183011767', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '33', null);
INSERT INTO `sampling_user_buy_record` VALUES ('39', '0', '2019-11-05 18:50:48', null, '1', null, '1', '1', '20191105185031949', '3503421592732603ef3b4ae8b72ab603ca4c6e221572950964606', '35', null);
INSERT INTO `sampling_user_buy_record` VALUES ('22', '0', '2019-10-28 08:35:33', null, '1', null, '1', '1', '20191028083524343', '380806836f4a5f34612b4bd3b4557f9b624099e41571688199660', '11', null);
INSERT INTO `sampling_user_buy_record` VALUES ('23', '0', '2019-10-28 11:38:19', null, '1', null, '1', '1', '20191028113808902', '96969209c4410e8f6e7e4e079c6fd16386d326bb1571706278371', '11', null);
INSERT INTO `sampling_user_buy_record` VALUES ('24', '0', '2019-11-05 14:55:36', null, '1', null, '1', '1', '20191105145527231', '60536076fc8537038b4a494bbe3ae1e09eef488e1572934423730', '26', null);
INSERT INTO `sampling_user_buy_record` VALUES ('25', '0', '2019-11-05 14:58:40', null, '1', null, '1', '1', '20191105145832373', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '21', null);
INSERT INTO `sampling_user_buy_record` VALUES ('26', '0', '2019-11-05 14:59:26', null, '1', null, '1', '1', '20191105145915342', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '26', null);
INSERT INTO `sampling_user_buy_record` VALUES ('27', '0', '2019-11-05 15:47:50', null, '1', null, '1', '1', '20191105154722182', '4763026867da2e683c3240e689e0eb872ecb91d61572932553540', '18', null);
INSERT INTO `sampling_user_buy_record` VALUES ('28', '0', '2019-11-05 15:50:15', null, '1', null, '1', '1', '20191105155006400', '24784654fc874e1d677e4734872acd26fdb89e3b1572939598793', '23', null);
INSERT INTO `sampling_user_buy_record` VALUES ('29', '0', '2019-11-05 15:50:46', null, '1', null, '1', '1', '20191105155038540', '380806836f4a5f34612b4bd3b4557f9b624099e41571688199660', '27', null);
INSERT INTO `sampling_user_buy_record` VALUES ('30', '0', '2019-11-05 15:51:18', null, '1', null, '1', '1', '20191105155110829', '24784654fc874e1d677e4734872acd26fdb89e3b1572939598793', '14', null);
INSERT INTO `sampling_user_buy_record` VALUES ('31', '0', '2019-11-05 16:02:15', null, '1', null, '1', '1', '20191105160201519', '4763026867da2e683c3240e689e0eb872ecb91d61572932553540', '27', null);
INSERT INTO `sampling_user_buy_record` VALUES ('32', '0', '2019-11-05 16:03:02', null, '1', null, '1', '1', '20191105160249862', '4763026867da2e683c3240e689e0eb872ecb91d61572932553540', '21', null);
INSERT INTO `sampling_user_buy_record` VALUES ('33', '0', '2019-11-05 16:04:48', null, '1', null, '1', '1', '20191105160437400', '4763026867da2e683c3240e689e0eb872ecb91d61572932553540', '12', null);
INSERT INTO `sampling_user_buy_record` VALUES ('34', '0', '2019-11-05 16:05:06', null, '1', null, '1', '1', '20191105160459952', '9687139024dafbfa1ab3488a911f97120d359ce61572874202486', '25', null);
INSERT INTO `sampling_user_buy_record` VALUES ('35', '0', '2019-11-05 16:18:50', null, '1', null, '1', '1', '20191105161843595', '85705929518c02b4f3fe488eaaa5196db446c1b01571687962196', '20', null);
INSERT INTO `sampling_user_buy_record` VALUES ('36', '0', '2019-11-05 17:10:35', null, '1', null, '1', '1', '20191105171018409', '4763026867da2e683c3240e689e0eb872ecb91d61572932553540', '33', null);
INSERT INTO `sampling_user_buy_record` VALUES ('40', '0', '2019-11-06 21:38:41', null, '1', null, '1', '1', '20191106213828163', '1855432711a26ab8654848e49aa10ca6341f81bf1573046613106', '30', null);
INSERT INTO `sampling_user_buy_record` VALUES ('41', '0', '2019-11-06 23:23:15', null, '1', null, '1', '1', '20191106232258436', '741231156676ecf5bae94d97b380297cb38cc0c01573053752703', '62', null);
INSERT INTO `sampling_user_buy_record` VALUES ('42', '0', '2019-11-07 00:36:04', null, '1', null, '1', '1', '20191107003546460', '27874298c396e16dc0c542ddbe02afbcfb93f2021573058130551', '27', null);
INSERT INTO `sampling_user_buy_record` VALUES ('43', '0', '2019-11-07 01:42:14', null, '1', null, '1', '1', '20191107014200133', '37738978664361a4180f4f8fa2bb0d25fe73d69c1573047544533', '30', null);
INSERT INTO `sampling_user_buy_record` VALUES ('44', '0', '2019-11-07 05:37:51', null, '1', null, '1', '1', '20191107053735220', '985067073df7ceec8efa447bbe2713c196f38adf1573076239149', '36', null);
INSERT INTO `sampling_user_buy_record` VALUES ('45', '0', '2019-11-07 17:33:00', null, '1', null, '1', '1', '20191107173252405', '647885754e8faf7c595a46cc8b0d79bdec2ba4221572984161970', '57', null);
INSERT INTO `sampling_user_buy_record` VALUES ('46', '0', '2019-11-07 20:08:29', null, '1', null, '1', '1', '20191107200811323', '5600971230f51ab51bf34de2b0dd42f7ac4b3ec51573128466968', '16', null);
INSERT INTO `sampling_user_buy_record` VALUES ('47', '0', '2019-11-07 20:37:45', null, '1', null, '1', '1', '20191107203737934', '5600971230f51ab51bf34de2b0dd42f7ac4b3ec51573128466968', '63', null);
INSERT INTO `sampling_user_buy_record` VALUES ('48', '0', '2019-11-07 20:41:08', null, '1', null, '1', '1', '20191107204059487', '5600971230f51ab51bf34de2b0dd42f7ac4b3ec51573128466968', '51', null);
INSERT INTO `sampling_user_buy_record` VALUES ('49', '0', '2019-11-07 21:17:11', null, '1', null, '1', '1', '20191107211538344', '51486470c73ec6cf12244207878413fa646f6e431573132316137', '62', null);
INSERT INTO `sampling_user_buy_record` VALUES ('50', '0', '2019-11-08 03:06:12', null, '1', null, '1', '1', '20191108030603115', '4763026867da2e683c3240e689e0eb872ecb91d61572932553540', '39', null);
INSERT INTO `sampling_user_buy_record` VALUES ('51', '0', '2019-11-08 20:52:09', null, '1', null, '1', '1', '20191108205156297', '80335993553d9e2e2ce64ac58398d58ad0a5709c1573215600107', '19', null);
INSERT INTO `sampling_user_buy_record` VALUES ('52', '0', '2019-11-08 22:23:10', null, '1', null, '1', '1', '20191108222256640', '107042090c8172c0e50747069ea725f06265390e1573222654656', '52', null);
INSERT INTO `sampling_user_buy_record` VALUES ('53', '0', '2019-11-09 00:33:10', null, '1', null, '1', '1', '20191109003259518', '107042090c8172c0e50747069ea725f06265390e1573222654656', '41', null);
INSERT INTO `sampling_user_buy_record` VALUES ('54', '0', '2019-11-10 05:25:53', null, '1', null, '1', '1', '20191110052541985', '985067073df7ceec8efa447bbe2713c196f38adf1573076239149', '27', null);
INSERT INTO `sampling_user_buy_record` VALUES ('55', '0', '2019-11-10 05:27:38', null, '1', null, '1', '1', '20191110052729407', '985067073df7ceec8efa447bbe2713c196f38adf1573076239149', '19', null);
INSERT INTO `sampling_user_buy_record` VALUES ('56', '0', '2019-11-10 05:55:43', null, '1', null, '1', '1', '20191110055534811', '985067073df7ceec8efa447bbe2713c196f38adf1573076239149', '18', null);
INSERT INTO `sampling_user_buy_record` VALUES ('57', '0', '2019-11-10 18:53:45', null, '1', null, '1', '1', '20191110185326217', '96406527795565d0a9064c96b5059ce1cafdb3921573383162359', '52', null);
INSERT INTO `sampling_user_buy_record` VALUES ('58', '0', '2019-11-10 19:14:54', null, '1', null, '1', '1', '20191110191442370', '96406527795565d0a9064c96b5059ce1cafdb3921573383162359', '40', null);
INSERT INTO `sampling_user_buy_record` VALUES ('59', '0', '2019-11-10 19:16:29', null, '1', null, '1', '1', '20191110191620334', '96406527795565d0a9064c96b5059ce1cafdb3921573383162359', '25', null);
INSERT INTO `sampling_user_buy_record` VALUES ('60', '0', '2019-11-13 23:48:43', null, '1', null, '1', '1', '20191113234833586', '18761938747d2f5b0d3e440690b73686cb0e880b1573222826570', '52', null);
INSERT INTO `sampling_user_buy_record` VALUES ('61', '0', '2019-11-14 06:33:28', null, '1', null, '1', '1', '20191114063311137', '1855432711a26ab8654848e49aa10ca6341f81bf1573046613106', '97', null);
INSERT INTO `sampling_user_buy_record` VALUES ('62', '0', '2019-11-14 08:01:54', null, '1', null, '1', '1', '20191114080133696', '4494547066a59f5aca2c40c9acc3038cdf954aca1573689679433', '101', null);
INSERT INTO `sampling_user_buy_record` VALUES ('63', '0', '2019-11-15 12:26:14', null, '1', null, '1', '1', '20191115122559948', '1855432711a26ab8654848e49aa10ca6341f81bf1573046613106', '104', null);
INSERT INTO `sampling_user_buy_record` VALUES ('64', '0', '2019-11-16 21:38:18', null, '1', null, '1', '1', '20191116213803282', '18761938747d2f5b0d3e440690b73686cb0e880b1573222826570', '22', null);
INSERT INTO `sampling_user_buy_record` VALUES ('65', '0', '2019-11-17 00:24:46', null, '1', null, '1', '1', '20191117002431846', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '88', null);
INSERT INTO `sampling_user_buy_record` VALUES ('66', '0', '2019-11-17 03:24:56', null, '1', null, '1', '1', '20191117032443817', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '57', null);
INSERT INTO `sampling_user_buy_record` VALUES ('67', '0', '2019-11-19 01:47:04', null, '1', null, '1', '1', '20191119014653665', '18761938747d2f5b0d3e440690b73686cb0e880b1573222826570', '66', null);
INSERT INTO `sampling_user_buy_record` VALUES ('68', '0', '2019-11-20 03:10:37', null, '1', null, '1', '1', '20191120031017728', '654215755f21d5822d634c628e34eb716144ea4b1573319235125', '79', null);
INSERT INTO `sampling_user_buy_record` VALUES ('69', '0', '2019-11-20 17:00:46', null, '1', null, '1', '1', '20191120170038558', '1537133870fe679fdd124437a5046d238fcceda21574235016311', '63', null);
INSERT INTO `sampling_user_buy_record` VALUES ('70', '0', '2019-11-20 17:01:41', null, '1', null, '1', '1', '20191120170130703', '1537133870fe679fdd124437a5046d238fcceda21574235016311', '51', null);
INSERT INTO `sampling_user_buy_record` VALUES ('71', '0', '2019-11-20 19:06:07', null, '1', null, '1', '1', '20191120190600956', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '79', null);
INSERT INTO `sampling_user_buy_record` VALUES ('72', '0', '2019-11-20 23:08:39', null, '1', null, '1', '1', '20191120230817789', '295232591751e413026742a0b10f62b1786a30ed1573481520448', '35', null);
INSERT INTO `sampling_user_buy_record` VALUES ('73', '0', '2019-11-21 02:47:28', null, '1', null, '1', '1', '20191121024639372', '820976944c4b6e83ccde4c0eb2963d636650c1701572984171495', '55', '2.32');
INSERT INTO `sampling_user_buy_record` VALUES ('74', '0', '2019-11-21 04:13:16', null, '1', null, '1', '1', '20191121041224436', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '25', '2.48');
INSERT INTO `sampling_user_buy_record` VALUES ('75', '0', '2019-11-21 04:14:43', null, '1', null, '1', '1', '20191121041359984', '19704106cb15c721e6e245b9a2146c1b0f0197e61573689392537', '86', '2.92');
INSERT INTO `sampling_user_buy_record` VALUES ('76', '0', '2019-11-21 17:37:26', null, '1', null, '1', '1', '20191121173643630', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '92', '2.42');
INSERT INTO `sampling_user_buy_record` VALUES ('77', '0', '2019-11-21 17:49:45', null, '1', null, '1', '1', '20191121174858403', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '108', '2.86');
INSERT INTO `sampling_user_buy_record` VALUES ('78', '0', '2019-11-21 17:58:01', null, '1', null, '1', '1', '20191121175709850', '6267848877f9c5d322ca43778951906ae167c9de1574329553758', '104', '2.62');
INSERT INTO `sampling_user_buy_record` VALUES ('79', '0', '2019-11-21 17:58:40', null, '1', null, '1', '1', '20191121175821551', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '51', '2.57');
INSERT INTO `sampling_user_buy_record` VALUES ('80', '0', '2019-11-21 18:21:12', null, '1', null, '1', '1', '20191121182014803', '369942307d5b393da1c94baebdbb29b3ca418ce91574330287016', '19', '2.30');
INSERT INTO `sampling_user_buy_record` VALUES ('81', '0', '2019-11-21 19:08:53', null, '1', null, '1', '1', '20191121190822994', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '37', '2.68');
INSERT INTO `sampling_user_buy_record` VALUES ('82', '0', '2019-11-21 19:14:08', null, '1', null, '1', '1', '20191121191328992', '681724297d6a6630c82d4dbbb8161522509528771574334761863', '22', '2.61');
INSERT INTO `sampling_user_buy_record` VALUES ('83', '0', '2019-11-21 19:20:55', null, '1', null, '1', '1', '20191121192000458', '681724297d6a6630c82d4dbbb8161522509528771574334761863', '105', '2.49');
INSERT INTO `sampling_user_buy_record` VALUES ('84', '0', '2019-11-21 19:25:11', null, '1', null, '1', '1', '20191121192429472', '13170670e72b18496116489e968caaa51ab67ecb1574335392571', '19', '2.36');
INSERT INTO `sampling_user_buy_record` VALUES ('85', '0', '2019-11-21 19:53:13', null, '1', null, '1', '1', '20191121195224324', '13170670e72b18496116489e968caaa51ab67ecb1574335392571', '84', '2.23');
INSERT INTO `sampling_user_buy_record` VALUES ('86', '0', '2019-11-21 20:03:44', null, '1', null, '1', '1', '20191121200252525', '13170670e72b18496116489e968caaa51ab67ecb1574335392571', '80', '2.44');
INSERT INTO `sampling_user_buy_record` VALUES ('87', '0', '2019-11-21 20:49:40', null, '1', null, '1', '1', '20191121204924526', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '69', '2.50');
INSERT INTO `sampling_user_buy_record` VALUES ('88', '0', '2019-11-21 20:50:34', null, '1', null, '1', '1', '20191121205019179', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '62', '2.37');
INSERT INTO `sampling_user_buy_record` VALUES ('89', '0', '2019-11-21 20:58:45', null, '1', null, '1', '1', '20191121205741536', '369942307d5b393da1c94baebdbb29b3ca418ce91574330287016', '46', '2.08');
INSERT INTO `sampling_user_buy_record` VALUES ('90', '0', '2019-11-21 21:02:05', null, '1', null, '1', '1', '20191121210042575', '73353834913bbee04af0420db08b10938fe31af41574341234416', '51', '2.06');
INSERT INTO `sampling_user_buy_record` VALUES ('91', '0', '2019-11-21 21:21:41', null, '1', null, '1', '1', '20191121212120894', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '25', '2.61');
INSERT INTO `sampling_user_buy_record` VALUES ('92', '0', '2019-11-21 21:25:53', null, '1', null, '1', '1', '20191121212535833', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '81', '2.82');
INSERT INTO `sampling_user_buy_record` VALUES ('93', '0', '2019-11-21 21:40:26', null, '1', null, '1', '1', '20191121213838927', '369942307d5b393da1c94baebdbb29b3ca418ce91574330287016', '34', '2.79');
INSERT INTO `sampling_user_buy_record` VALUES ('94', '0', '2019-11-21 21:41:35', null, '1', null, '1', '1', '20191121214030289', '889536223199240ad83d4c788c63e83339b8ade91574329654220', '93', '2.87');
INSERT INTO `sampling_user_buy_record` VALUES ('95', '0', '2019-11-21 21:45:03', null, '1', null, '1', '1', '20191121214446700', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '12', '2.16');
INSERT INTO `sampling_user_buy_record` VALUES ('96', '0', '2019-11-21 22:08:59', null, '1', null, '1', '1', '20191121220744449', '73353834913bbee04af0420db08b10938fe31af41574341234416', '94', '2.96');
INSERT INTO `sampling_user_buy_record` VALUES ('97', '0', '2019-11-21 22:09:15', null, '1', null, '1', '1', '20191121220807679', '23564061272e8314d1974d29a72c6ecc005c00191574328988661', '64', '2.30');
INSERT INTO `sampling_user_buy_record` VALUES ('98', '0', '2019-11-21 22:12:32', null, '1', null, '1', '1', '20191121204448110', '164629809bd6e06e6e074a34a95da62d290859af1574329278212', '67', '2.52');
INSERT INTO `sampling_user_buy_record` VALUES ('99', '0', '2019-11-21 22:18:14', null, '1', null, '1', '1', '20191121221711287', '453197291337c164d6154c329a0cf56b6133722b1574331051473', '38', '2.79');
INSERT INTO `sampling_user_buy_record` VALUES ('100', '0', '2019-11-21 22:22:28', null, '1', null, '1', '1', '20191121222129331', '23564061272e8314d1974d29a72c6ecc005c00191574328988661', '65', '2.30');
INSERT INTO `sampling_user_buy_record` VALUES ('101', '0', '2019-11-21 22:28:47', null, '1', null, '1', '1', '20191121222741733', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '84', '2.12');
INSERT INTO `sampling_user_buy_record` VALUES ('102', '0', '2019-11-21 22:47:35', null, '1', null, '1', '1', '20191121224640127', '369942307d5b393da1c94baebdbb29b3ca418ce91574330287016', '38', '2.15');
INSERT INTO `sampling_user_buy_record` VALUES ('103', '0', '2019-11-21 22:49:24', null, '1', null, '1', '1', '20191121224907171', '369942307d5b393da1c94baebdbb29b3ca418ce91574330287016', '91', '2.53');
INSERT INTO `sampling_user_buy_record` VALUES ('104', '0', '2019-11-21 22:49:58', null, '1', null, '1', '1', '20191121224838568', '39726278affef7ad44ef41d6aec557600161a9171574329404947', '42', '2.78');
INSERT INTO `sampling_user_buy_record` VALUES ('105', '0', '2019-11-22 01:02:23', null, '1', null, '1', '1', '20191122010154505', '18352454a4fda03fd6e44ac585a80d55f3ba53361574328965959', '79', '2.18');
INSERT INTO `sampling_user_buy_record` VALUES ('106', '0', '2019-11-22 02:18:48', null, '1', null, '1', '1', '20191122021758498', '9436015194637eb335ed4bd6b67f1ccb5ce7a2281574339692372', '67', '2.64');
INSERT INTO `sampling_user_buy_record` VALUES ('107', '0', '2019-11-22 05:11:01', null, '1', null, '1', '1', '20191122051000144', '66120857601f621fdd064669ab545b9a20ef13b81574331611767', '38', '2.57');
INSERT INTO `sampling_user_buy_record` VALUES ('108', '0', '2019-11-22 07:04:36', null, '1', null, '1', '1', '20191122070337505', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '22', '2.16');
INSERT INTO `sampling_user_buy_record` VALUES ('109', '0', '2019-11-22 07:40:16', null, '1', null, '1', '1', '20191122073924832', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '104', '2.38');
INSERT INTO `sampling_user_buy_record` VALUES ('110', '0', '2019-11-22 07:52:13', null, '1', null, '1', '1', '20191122075032723', '18761938747d2f5b0d3e440690b73686cb0e880b1573222826570', '12', '2.28');
INSERT INTO `sampling_user_buy_record` VALUES ('111', '0', '2019-11-22 11:19:41', null, '1', null, '1', '1', '20191122111854784', '369942307d5b393da1c94baebdbb29b3ca418ce91574330287016', '43', '2.72');
INSERT INTO `sampling_user_buy_record` VALUES ('112', '0', '2019-11-22 12:07:14', null, '1', null, '1', '1', '20191122120658965', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '105', '2.90');
INSERT INTO `sampling_user_buy_record` VALUES ('113', '0', '2019-11-22 12:13:36', null, '1', null, '1', '1', '20191122121310998', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '38', '2.10');
INSERT INTO `sampling_user_buy_record` VALUES ('114', '0', '2019-11-23 14:23:33', null, '1', null, '1', '1', '20191123142249230', '3171124574bb983b3b8c4003977f918a6995ed851574490047171', '92', '2.56');
INSERT INTO `sampling_user_buy_record` VALUES ('115', '0', '2019-11-23 14:32:52', null, '1', null, '1', '1', '20191123143225980', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '52', '2.25');
INSERT INTO `sampling_user_buy_record` VALUES ('116', '0', '2019-11-23 17:20:59', null, '1', null, '1', '1', '20191123172000311', '80290395686ed6a835584a88a78aef6b931540cd1573054608018', '62', '2.98');
INSERT INTO `sampling_user_buy_record` VALUES ('117', '0', '2019-11-23 17:34:58', null, '1', null, '1', '1', '20191123173436609', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '95', '2.80');
INSERT INTO `sampling_user_buy_record` VALUES ('118', '0', '2019-11-23 17:36:56', null, '1', null, '1', '1', '20191123173631395', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '54', '2.77');
INSERT INTO `sampling_user_buy_record` VALUES ('119', '0', '2019-11-23 21:40:25', null, '1', null, '1', '1', '20191123214003804', '1537133870fe679fdd124437a5046d238fcceda21574235016311', '79', '2.21');
INSERT INTO `sampling_user_buy_record` VALUES ('120', '0', '2019-11-23 22:47:35', null, '1', null, '1', '1', '20191123224457452', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '86', '2.40');
INSERT INTO `sampling_user_buy_record` VALUES ('121', '0', '2019-11-23 22:49:21', null, '1', null, '1', '1', '20191123224907737', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '107', '2.10');
INSERT INTO `sampling_user_buy_record` VALUES ('122', '0', '2019-11-23 22:54:02', null, '1', null, '1', '1', '20191123225341928', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '29', '2.33');
INSERT INTO `sampling_user_buy_record` VALUES ('123', '0', '2019-11-23 23:15:41', null, '1', null, '1', '1', '20191123231505369', '18761938747d2f5b0d3e440690b73686cb0e880b1573222826570', '54', '2.47');
INSERT INTO `sampling_user_buy_record` VALUES ('124', '0', '2019-11-24 03:56:19', null, '1', null, '1', '1', '20191124035521183', '66120857601f621fdd064669ab545b9a20ef13b81574331611767', '52', '2.82');
INSERT INTO `sampling_user_buy_record` VALUES ('125', '0', '2019-11-24 07:36:28', null, '1', null, '1', '1', '20191124073506648', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '80', '2.94');
INSERT INTO `sampling_user_buy_record` VALUES ('126', '0', '2019-11-24 12:55:59', null, '1', null, '1', '1', '20191124125523728', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '54', '2.82');
INSERT INTO `sampling_user_buy_record` VALUES ('127', '0', '2019-11-24 13:27:02', null, '1', null, '1', '1', '20191124132641209', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '91', '2.18');
INSERT INTO `sampling_user_buy_record` VALUES ('128', '0', '2019-11-24 13:46:55', null, '1', null, '1', '1', '20191124134607895', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '68', '2.39');
INSERT INTO `sampling_user_buy_record` VALUES ('129', '0', '2019-11-24 13:54:19', null, '1', null, '1', '1', '20191124135310765', '8755804611cd4e07cf8d4482b914fa592bcd9bbb1574573777803', '52', '2.06');
INSERT INTO `sampling_user_buy_record` VALUES ('130', '0', '2019-11-24 15:12:29', null, '1', null, '1', '1', '20191124151143293', '78001426d0663026d09744a3a9b9d1e455786cf61574579481646', '106', '2.52');
INSERT INTO `sampling_user_buy_record` VALUES ('131', '0', '2019-11-24 15:35:17', null, '1', null, '1', '1', '20191124153426395', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '52', '2.73');
INSERT INTO `sampling_user_buy_record` VALUES ('132', '0', '2019-11-24 15:44:16', null, '1', null, '1', '1', '20191124154312154', '1320394579000787be024488b0e0cee3f334b96b1574581057615', '106', '2.05');
INSERT INTO `sampling_user_buy_record` VALUES ('133', '0', '2019-11-24 15:54:32', null, '1', null, '1', '1', '20191124155326696', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '107', '2.29');
INSERT INTO `sampling_user_buy_record` VALUES ('134', '0', '2019-11-24 16:05:59', null, '1', null, '1', '1', '20191124160505965', '94598220fe845ffb329e4930bad0202a106dc9351574580910346', '106', '2.88');
INSERT INTO `sampling_user_buy_record` VALUES ('135', '0', '2019-11-24 17:27:55', null, '1', null, '1', '1', '20191124172650183', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '65', '2.87');
INSERT INTO `sampling_user_buy_record` VALUES ('136', '0', '2019-11-24 20:54:24', null, '1', null, '1', '1', '20191124205404217', '89174248178e89b9e91d49378d360449de7642821572985035878', '106', '2.03');
INSERT INTO `sampling_user_buy_record` VALUES ('137', '0', '2019-11-24 20:58:19', null, '1', null, '1', '1', '20191124205618915', '9506692281732c1387114193a6161d60f4b9df641574579548654', '86', '2.40');
INSERT INTO `sampling_user_buy_record` VALUES ('138', '0', '2019-11-24 21:02:02', null, '1', null, '1', '1', '20191124210058579', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '92', '2.08');
INSERT INTO `sampling_user_buy_record` VALUES ('139', '0', '2019-11-24 21:18:26', null, '1', null, '1', '1', '20191124211708120', '5146499223dc7884db184d2bbd37eab09ff7786b1574328981511', '94', '3.44');
INSERT INTO `sampling_user_buy_record` VALUES ('140', '0', '2019-11-24 21:50:34', null, '1', null, '1', '1', '20191124215011355', '5146499223dc7884db184d2bbd37eab09ff7786b1574328981511', '52', '3.08');
INSERT INTO `sampling_user_buy_record` VALUES ('141', '0', '2019-11-24 21:59:27', null, '1', null, '1', '1', '20191124215835167', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '29', '3.12');
INSERT INTO `sampling_user_buy_record` VALUES ('142', '0', '2019-11-24 22:09:30', null, '1', null, '1', '1', '20191124220829318', '26044792d33d8b9499064e9eabb89e9664f4ad071574580115918', '52', '3.23');
INSERT INTO `sampling_user_buy_record` VALUES ('143', '0', '2019-11-24 22:14:35', null, '1', null, '1', '1', '20191124221330644', '69554451d2abb9b7418941479c26057e03aef7491574587568774', '52', '3.74');
INSERT INTO `sampling_user_buy_record` VALUES ('144', '0', '2019-11-24 22:17:55', null, '1', null, '1', '1', '20191124221643784', '8755804611cd4e07cf8d4482b914fa592bcd9bbb1574573777803', '106', '3.09');
INSERT INTO `sampling_user_buy_record` VALUES ('145', '0', '2019-11-24 22:21:23', null, '1', null, '1', '1', '20191124222052629', '5146499223dc7884db184d2bbd37eab09ff7786b1574328981511', '79', '3.60');
INSERT INTO `sampling_user_buy_record` VALUES ('146', '0', '2019-11-24 22:26:37', null, '1', null, '1', '1', '20191124222534324', '9506692281732c1387114193a6161d60f4b9df641574579548654', '54', '3.84');
INSERT INTO `sampling_user_buy_record` VALUES ('147', '0', '2019-11-24 22:33:58', null, '1', null, '1', '1', '20191124223258604', '741236658517dd13ab6748dfbb09df7e4a04a9141574605283162', '86', '3.24');
INSERT INTO `sampling_user_buy_record` VALUES ('148', '0', '2019-11-24 22:34:00', null, '1', null, '1', '1', '20191124223307600', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '36', '3.29');
INSERT INTO `sampling_user_buy_record` VALUES ('149', '0', '2019-11-24 22:41:18', null, '1', null, '1', '1', '20191124224047887', '741236658517dd13ab6748dfbb09df7e4a04a9141574605283162', '94', '3.31');
INSERT INTO `sampling_user_buy_record` VALUES ('150', '0', '2019-11-24 22:44:32', null, '1', null, '1', '1', '20191124224253728', '3171124574bb983b3b8c4003977f918a6995ed851574490047171', '79', '3.22');
INSERT INTO `sampling_user_buy_record` VALUES ('151', '0', '2019-11-24 22:48:07', null, '1', null, '1', '1', '20191124224657538', '85973917720c2613df184b6ea098429c5d72520f1574606396166', '98', '3.61');
INSERT INTO `sampling_user_buy_record` VALUES ('152', '0', '2019-11-24 22:57:30', null, '1', null, '1', '1', '20191124225503924', '741236658517dd13ab6748dfbb09df7e4a04a9141574605283162', '40', '3.03');
INSERT INTO `sampling_user_buy_record` VALUES ('153', '0', '2019-11-24 23:06:32', null, '1', null, '1', '1', '20191124230509328', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '21', '3.55');
INSERT INTO `sampling_user_buy_record` VALUES ('154', '0', '2019-11-24 23:26:10', null, '1', null, '1', '1', '20191124232454849', '741236658517dd13ab6748dfbb09df7e4a04a9141574605283162', '105', '3.60');
INSERT INTO `sampling_user_buy_record` VALUES ('155', '0', '2019-11-24 23:29:20', null, '1', null, '1', '1', '20191124232827410', '794900909b6413178c8d4710abb6503eecfec5bb1574602513041', '63', '3.63');
INSERT INTO `sampling_user_buy_record` VALUES ('156', '0', '2019-11-24 23:43:37', null, '1', null, '1', '1', '20191124234246936', '741236658517dd13ab6748dfbb09df7e4a04a9141574605283162', '81', '3.39');
INSERT INTO `sampling_user_buy_record` VALUES ('157', '0', '2019-11-25 00:14:38', null, '1', null, '1', '1', '20191125001323102', '1320394579000787be024488b0e0cee3f334b96b1574581057615', '84', '3.82');
INSERT INTO `sampling_user_buy_record` VALUES ('158', '0', '2019-11-25 00:36:38', null, '1', null, '1', '1', '20191125003416242', '789447813753ee9f85744abe98257d69cfe71fe51574613246398', '52', '3.62');
INSERT INTO `sampling_user_buy_record` VALUES ('159', '0', '2019-11-25 00:44:50', null, '1', null, '1', '1', '20191125004353996', '1320394579000787be024488b0e0cee3f334b96b1574581057615', '101', '3.60');
INSERT INTO `sampling_user_buy_record` VALUES ('160', '0', '2019-11-25 01:36:55', null, '1', null, '1', '1', '20191125013547433', '19607413a32b86a7b3b744aca859a768c5bb58691574616931560', '52', '3.82');
INSERT INTO `sampling_user_buy_record` VALUES ('161', '0', '2019-11-25 01:50:07', null, '1', null, '1', '1', '20191125014924699', '7275489746f08d0385c14a4f8209724174547e421574600163220', '94', '3.84');
INSERT INTO `sampling_user_buy_record` VALUES ('162', '0', '2019-11-25 03:40:04', null, '1', null, '1', '1', '20191125033846858', '3836103652a7ae569943480a844eaf01f0e0a6e01574575423551', '54', '3.26');
INSERT INTO `sampling_user_buy_record` VALUES ('163', '0', '2019-11-25 04:15:14', null, '1', null, '1', '1', '20191125041410732', '734834894fa413537bfa48af84bafa12443722c71574626302611', '54', '3.96');
INSERT INTO `sampling_user_buy_record` VALUES ('164', '0', '2019-11-25 04:40:49', null, '1', null, '1', '1', '20191125043940173', '88477875bfc719279c8643da928a9571661565251574583642322', '92', '3.86');
INSERT INTO `sampling_user_buy_record` VALUES ('165', '0', '2019-11-25 08:23:08', null, '1', null, '1', '1', '20191125082215225', '86092819830d0e20c6a44d8693bf6419a0847fa01574609645632', '54', '3.99');
INSERT INTO `sampling_user_buy_record` VALUES ('166', '0', '2019-11-25 09:11:07', null, '1', null, '1', '1', '20191125091019887', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '101', '3.75');
INSERT INTO `sampling_user_buy_record` VALUES ('167', '0', '2019-11-25 10:38:56', null, '1', null, '1', '1', '20191125103800191', '3171124574bb983b3b8c4003977f918a6995ed851574490047171', '53', '3.11');
INSERT INTO `sampling_user_buy_record` VALUES ('168', '0', '2019-11-25 11:29:12', null, '1', null, '1', '1', '20191125112802496', '224555769b6d22fc8d9d47a99ee82d216e1e18891574587295773', '92', '3.61');
INSERT INTO `sampling_user_buy_record` VALUES ('169', '0', '2019-11-25 12:09:15', null, '1', null, '1', '1', '20191125120827976', '72382715382e94c15e4543bcae1b9a129dae96251574583194492', '80', '3.62');
INSERT INTO `sampling_user_buy_record` VALUES ('170', '0', '2019-11-25 12:29:56', null, '1', null, '1', '1', '20191125122845501', '8755804611cd4e07cf8d4482b914fa592bcd9bbb1574573777803', '65', '3.96');
INSERT INTO `sampling_user_buy_record` VALUES ('171', '0', '2019-11-25 12:54:58', null, '1', null, '1', '1', '20191125125408558', '224555769b6d22fc8d9d47a99ee82d216e1e18891574587295773', '54', '3.30');
INSERT INTO `sampling_user_buy_record` VALUES ('172', '0', '2019-11-25 13:10:08', null, '1', null, '1', '1', '20191125130849392', '72987352c4aa2882d6b14db69f878c3d0c4c11501574604409680', '94', '3.44');
INSERT INTO `sampling_user_buy_record` VALUES ('173', '0', '2019-11-25 14:06:47', null, '1', null, '1', '1', '20191125140547629', '33944078fdf53b43d27a493390bcf71e53701f991574653532784', '79', '3.70');
INSERT INTO `sampling_user_buy_record` VALUES ('174', '0', '2019-11-25 14:46:30', null, '1', null, '1', '1', '20191125144535902', '35981564529833cebe1a48f78fc1b747bb01658d1574664327726', '79', '3.11');
INSERT INTO `sampling_user_buy_record` VALUES ('175', '0', '2019-11-25 16:45:58', null, '1', null, '1', '1', '20191125164450891', '56954964af54e94124dc4b02a8ab27587b6630b21574671436484', '94', '3.56');
INSERT INTO `sampling_user_buy_record` VALUES ('176', '0', '2019-11-25 17:22:47', null, '1', null, '1', '1', '20191125172143897', '82824296c08fed4b00ee40a3ac8130bc91a7d6e31574673564022', '93', '3.69');
INSERT INTO `sampling_user_buy_record` VALUES ('177', '0', '2019-11-25 17:35:15', null, '1', null, '1', '1', '20191125173458415', '90582930bf22f1cf2869443aa9e0ffa82923d5751574672494745', '52', '3.52');
INSERT INTO `sampling_user_buy_record` VALUES ('178', '0', '2019-11-25 17:44:06', null, '1', null, '1', '1', '20191125174344772', '90582930bf22f1cf2869443aa9e0ffa82923d5751574672494745', '92', '3.06');
INSERT INTO `sampling_user_buy_record` VALUES ('179', '0', '2019-11-25 17:55:22', null, '1', null, '1', '1', '20191125175359663', '90582930bf22f1cf2869443aa9e0ffa82923d5751574672494745', '80', '3.09');
INSERT INTO `sampling_user_buy_record` VALUES ('180', '0', '2019-11-25 18:24:54', null, '1', null, '1', '1', '20191125182410977', '87989738486dd4caaa5442c2b15ae8da161821691574580025958', '54', '3.82');
INSERT INTO `sampling_user_buy_record` VALUES ('181', '0', '2019-11-25 18:28:09', null, '1', null, '1', '1', '20191125182722554', '', '92', '3.47');
INSERT INTO `sampling_user_buy_record` VALUES ('182', '0', '2019-11-25 18:30:28', null, '1', null, '1', '1', '20191125182957910', '', '54', '3.05');
INSERT INTO `sampling_user_buy_record` VALUES ('183', '0', '2019-11-25 19:17:13', null, '1', null, '1', '1', '20191125191612891', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '36', '3.08');
INSERT INTO `sampling_user_buy_record` VALUES ('184', '0', '2019-11-25 20:15:48', null, '1', null, '1', '1', '20191125201452286', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '54', '3.77');
INSERT INTO `sampling_user_buy_record` VALUES ('185', '0', '2019-11-25 20:53:09', null, '1', null, '1', '1', '20191125205209233', '27451893ce5438a681f54e6b972e1c6be9a132031574603210498', '94', '3.58');
INSERT INTO `sampling_user_buy_record` VALUES ('186', '0', '2019-11-25 21:10:43', null, '1', null, '1', '1', '20191125210851835', '91841236904008c95c4449af9cb744b11ed4de551574661176120', '52', '3.47');
INSERT INTO `sampling_user_buy_record` VALUES ('187', '0', '2019-11-25 21:18:48', null, '1', null, '1', '1', '20191125211756390', '2938085959ca3fa3bb044e6d9f52d80f10ff6ff61573215539314', '16', '3.51');
INSERT INTO `sampling_user_buy_record` VALUES ('188', '0', '2019-11-25 22:37:45', null, '1', null, '1', '1', '20191125223654187', '3171124574bb983b3b8c4003977f918a6995ed851574490047171', '62', '3.25');
INSERT INTO `sampling_user_buy_record` VALUES ('189', '0', '2019-11-25 23:31:32', null, '1', null, '1', '1', '20191125233030889', '363640932f15bcbd199d4500b6e2f87ced4cca471574614449094', '94', '3.11');
INSERT INTO `sampling_user_buy_record` VALUES ('190', '0', '2019-11-25 23:35:56', null, '1', null, '1', '1', '20191125233507320', '28940286d44a70be033141cfbf3abd6d51dec3fc1574673971303', '46', '3.86');
INSERT INTO `sampling_user_buy_record` VALUES ('191', '0', '2019-11-25 23:41:00', null, '1', null, '1', '1', '20191125233750618', '7275489746f08d0385c14a4f8209724174547e421574600163220', '52', '3.39');
INSERT INTO `sampling_user_buy_record` VALUES ('192', '0', '2019-11-26 00:01:27', null, '1', null, '1', '1', '20191126000024913', '656318293bf42ed33c724b6e904407dd9db90fb21574674771999', '79', '3.21');
INSERT INTO `sampling_user_buy_record` VALUES ('193', '0', '2019-11-26 00:02:16', null, '1', null, '1', '1', '20191126000103711', '896031591a27c448b6754cd095328644b13cf8fd1574661367740', '54', '3.52');
INSERT INTO `sampling_user_buy_record` VALUES ('194', '0', '2019-11-26 00:24:29', null, '1', null, '1', '1', '20191126002330186', '10935370dbc99a946e224e78857e1017020846471574579440173', '54', '3.23');
INSERT INTO `sampling_user_buy_record` VALUES ('195', '0', '2019-11-26 01:57:06', null, '1', null, '1', '1', '20191126015452693', '90739389dc50adacc8b2468a8fa4444e59c966a21574330550779', '105', '3.41');
INSERT INTO `sampling_user_buy_record` VALUES ('196', '0', '2019-11-26 04:37:40', null, '1', null, '1', '1', '20191126043602792', '412354141dd15c3a526c49f8b2312086b34168481574646464920', '29', '3.82');
INSERT INTO `sampling_user_buy_record` VALUES ('197', '0', '2019-11-26 08:16:04', null, '1', null, '1', '1', '20191126081513611', '88091578f46605e8a5f74ae9bd58e6f21308d0511574353424980', '16', '3.35');
INSERT INTO `sampling_user_buy_record` VALUES ('198', '0', '2019-11-26 08:43:22', null, '1', null, '1', '1', '20191126084216230', '69088593d057bdfa59f7475784eb83734ecbf0771574579926994', '53', '3.78');
INSERT INTO `sampling_user_buy_record` VALUES ('199', '0', '2019-11-26 09:21:31', null, '1', null, '1', '1', '20191126092029548', '512264384dde52f9f27447b8b4ecc468103742bd1574662049648', '95', '3.52');
INSERT INTO `sampling_user_buy_record` VALUES ('200', '0', '2019-11-26 10:09:23', null, '1', null, '1', '1', '20191126100816772', '61772680b238495929a84acea717106962ddec651574662933249', '83', '3.90');
INSERT INTO `sampling_user_buy_record` VALUES ('201', '0', '2019-11-26 10:21:54', null, '1', null, '1', '1', '20191126102105636', '61772680b238495929a84acea717106962ddec651574662933249', '68', '3.66');
INSERT INTO `sampling_user_buy_record` VALUES ('202', '0', '2019-11-26 11:37:36', null, '1', null, '1', '1', '20191126113619216', '72987352c4aa2882d6b14db69f878c3d0c4c11501574604409680', '93', '3.76');
INSERT INTO `sampling_user_buy_record` VALUES ('203', '0', '2019-11-26 12:39:40', null, '1', null, '1', '1', '20191126123836886', '896031591a27c448b6754cd095328644b13cf8fd1574661367740', '85', '3.23');
INSERT INTO `sampling_user_buy_record` VALUES ('204', '0', '2019-11-26 19:18:13', null, '1', null, '1', '1', '20191126191725738', '996764003f00c0665abf4bef8056d1fcf090aedb1574748752632', '51', '3.26');
INSERT INTO `sampling_user_buy_record` VALUES ('205', '0', '2019-11-26 19:28:33', null, '1', null, '1', '1', '20191126192742818', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '45', '3.06');
INSERT INTO `sampling_user_buy_record` VALUES ('206', '0', '2019-11-26 19:35:56', null, '1', null, '1', '1', '20191126193538517', '647979347a2fd22468d24933bb3d43ac5f5d5df21574330866571', '104', '3.05');
INSERT INTO `sampling_user_buy_record` VALUES ('207', '0', '2019-11-26 19:54:03', null, '1', null, '1', '1', '20191126195347166', '647979347a2fd22468d24933bb3d43ac5f5d5df21574330866571', '16', '3.65');
INSERT INTO `sampling_user_buy_record` VALUES ('208', '0', '2019-11-26 20:02:05', null, '1', null, '1', '1', '20191126200106507', '9334375897ecb8d004ec47d7b1483d43d86ccca21574580375006', '59', '3.00');
INSERT INTO `sampling_user_buy_record` VALUES ('209', '0', '2019-11-26 21:15:12', null, '1', null, '1', '1', '20191126211340558', '544633313fcfbe151ab0469ab3424328194658c61574773989583', '105', '3.91');
INSERT INTO `sampling_user_buy_record` VALUES ('210', '0', '2019-11-26 21:20:38', null, '1', null, '1', '1', '20191126211924897', '69834024ec5b22ebac814735ad74f368bdd8a65f1574774292556', '55', '3.14');
INSERT INTO `sampling_user_buy_record` VALUES ('211', '0', '2019-11-26 21:34:46', null, '1', null, '1', '1', '20191126213414149', '161244951f2663398a0c49e3b69e1e065003de951574775208978', '107', '3.34');
INSERT INTO `sampling_user_buy_record` VALUES ('212', '0', '2019-11-26 22:31:44', null, '1', null, '1', '1', '20191126223041530', '3171124574bb983b3b8c4003977f918a6995ed851574490047171', '16', '3.97');
INSERT INTO `sampling_user_buy_record` VALUES ('213', '0', '2019-11-26 23:38:53', null, '1', null, '1', '1', '20191126233806379', '224555769b6d22fc8d9d47a99ee82d216e1e18891574587295773', '16', '3.03');
INSERT INTO `sampling_user_buy_record` VALUES ('214', '0', '2019-11-27 01:16:24', null, '1', null, '1', '1', '20191127011523734', '61116782de0ddb5f48324783ad3f6783d2c3ded81574787927547', '16', '3.29');
INSERT INTO `sampling_user_buy_record` VALUES ('215', '0', '2019-11-27 06:14:26', null, '1', null, '1', '1', '20191127061320485', '903198302ae6c7c6791944798264c9f57e52fa9a1574805525129', '51', '3.00');
INSERT INTO `sampling_user_buy_record` VALUES ('216', '0', '2019-11-27 07:46:24', null, '1', null, '1', '1', '20191127074401498', '50049080cf73da5b65114812b99d9fb9467109751574811820535', '105', '3.81');
INSERT INTO `sampling_user_buy_record` VALUES ('217', '0', '2019-11-27 07:48:52', null, '1', null, '1', '1', '20191127074728180', '50049080cf73da5b65114812b99d9fb9467109751574811820535', '91', '3.27');
INSERT INTO `sampling_user_buy_record` VALUES ('218', '0', '2019-11-27 08:02:40', null, '1', null, '1', '1', '20191127080150892', '91961572094513933b3e43649a3e60e4ad2ed4e21574812617261', '54', '3.82');
INSERT INTO `sampling_user_buy_record` VALUES ('219', '0', '2019-11-27 08:23:47', null, '1', null, '1', '1', '20191127082258994', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '105', '3.39');
INSERT INTO `sampling_user_buy_record` VALUES ('220', '0', '2019-11-27 08:45:49', null, '1', null, '1', '1', '20191127084456881', '35917291bedbc4d97b7b4f6295e0b843d19d913f1574335231964', '69', '3.71');
INSERT INTO `sampling_user_buy_record` VALUES ('221', '0', '2019-11-27 09:25:00', null, '1', null, '1', '1', '20191127092404452', '734834894fa413537bfa48af84bafa12443722c71574626302611', '69', '3.49');
INSERT INTO `sampling_user_buy_record` VALUES ('222', '0', '2019-11-27 11:21:13', null, '1', null, '1', '1', '20191127112053456', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '104', '3.19');
INSERT INTO `sampling_user_buy_record` VALUES ('223', '0', '2019-11-27 11:29:21', null, '1', null, '1', '1', '20191127112902177', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '64', '3.69');
INSERT INTO `sampling_user_buy_record` VALUES ('224', '0', '2019-11-27 11:31:53', null, '1', null, '1', '1', '20191127113136332', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '93', '3.16');
INSERT INTO `sampling_user_buy_record` VALUES ('225', '0', '2019-11-27 11:34:17', null, '1', null, '1', '1', '20191127113402155', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '16', '3.61');
INSERT INTO `sampling_user_buy_record` VALUES ('226', '0', '2019-11-27 11:47:17', null, '1', null, '1', '1', '20191127114703678', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '18', '3.13');
INSERT INTO `sampling_user_buy_record` VALUES ('227', '0', '2019-11-27 11:49:33', null, '1', null, '1', '1', '20191127114919419', '82435314c98e2cd6404047acad16518c96a2ea931574328972228', '55', '3.20');
INSERT INTO `sampling_user_buy_record` VALUES ('228', '0', '2019-11-27 12:07:59', null, '1', null, '1', '1', '20191127120659386', '61116782de0ddb5f48324783ad3f6783d2c3ded81574787927547', '106', '3.78');
INSERT INTO `sampling_user_buy_record` VALUES ('229', '0', '2019-11-27 16:39:52', null, '1', null, '1', '1', '20191127163857469', '8755804611cd4e07cf8d4482b914fa592bcd9bbb1574573777803', '49', '3.36');
INSERT INTO `sampling_user_buy_record` VALUES ('230', '0', '2019-11-28 09:30:38', null, '1', null, '1', '1', '20191128092936566', '86092819830d0e20c6a44d8693bf6419a0847fa01574609645632', '16', '3.58');
INSERT INTO `sampling_user_buy_record` VALUES ('231', '0', '2019-11-28 11:18:27', null, '1', null, '1', '1', '20191128111740688', '514841782efa7cf0de1a45d2b4649940db30c7321574274134010', '86', '3.80');
INSERT INTO `sampling_user_buy_record` VALUES ('232', '0', '2019-11-28 17:00:25', null, '1', null, '1', '1', '20191128165912304', '23564061272e8314d1974d29a72c6ecc005c00191574328988661', '59', '3.91');
INSERT INTO `sampling_user_buy_record` VALUES ('233', '0', '2019-11-28 19:36:08', null, '1', null, '1', '1', '20191128193508314', '80290395686ed6a835584a88a78aef6b931540cd1573054608018', '35', '3.32');
INSERT INTO `sampling_user_buy_record` VALUES ('234', '0', '2019-11-28 21:00:19', null, '1', null, '1', '1', '20191128205913390', '72382715382e94c15e4543bcae1b9a129dae96251574583194492', '92', '3.96');
INSERT INTO `sampling_user_buy_record` VALUES ('235', '0', '2019-11-28 21:06:19', null, '1', null, '1', '1', '20191128210525276', '41463850385c94e4a24345e5ab98f3c41fd95f671574946277782', '106', '3.20');
INSERT INTO `sampling_user_buy_record` VALUES ('236', '0', '2019-11-28 21:17:05', null, '1', null, '1', '1', '20191128211619726', '41463850385c94e4a24345e5ab98f3c41fd95f671574946277782', '98', '3.06');

-- ----------------------------
-- Table structure for sampling_user_function_conf
-- ----------------------------
DROP TABLE IF EXISTS `sampling_user_function_conf`;
CREATE TABLE `sampling_user_function_conf` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `deleted` tinyint(4) DEFAULT 0 COMMENT '逻辑删除状态0未删除,1已删除',
  `raw_add_time` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '创建时间',
  `raw_creator` varchar(20) DEFAULT NULL COMMENT '创建人',
  `raw_modifier` varchar(20) DEFAULT NULL COMMENT '修改人',
  `raw_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `raw_version` smallint(6) unsigned NOT NULL DEFAULT 1 COMMENT '版本号',
  `function_name` varchar(100) DEFAULT NULL COMMENT '功能名称',
  `url` varchar(100) DEFAULT NULL COMMENT '功能地址',
  `user_id` int(11) DEFAULT NULL COMMENT '用户ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户功能权限配置';

-- ----------------------------
-- Records of sampling_user_function_conf
-- ----------------------------

-- ----------------------------
-- Table structure for sampling_user_info
-- ----------------------------
DROP TABLE IF EXISTS `sampling_user_info`;
CREATE TABLE `sampling_user_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `deleted` tinyint(4) DEFAULT 0 COMMENT '逻辑删除状态0未删除,1已删除',
  `raw_add_time` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '创建时间',
  `raw_creator` varchar(20) DEFAULT NULL COMMENT '创建人',
  `raw_modifier` varchar(20) DEFAULT NULL COMMENT '修改人',
  `raw_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `raw_version` smallint(6) unsigned NOT NULL DEFAULT 1 COMMENT '版本号',
  `administrative_post_code` varchar(20) DEFAULT NULL COMMENT '行政职级编号',
  `administrative_post_name` varchar(20) DEFAULT NULL COMMENT '行政职级名称',
  `birth_date` datetime DEFAULT NULL COMMENT '出生日期',
  `birthday` datetime DEFAULT NULL COMMENT '出生年月',
  `business_type` varchar(50) DEFAULT NULL COMMENT '业务类型',
  `card_type` varchar(255) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL COMMENT '人员类别',
  `cert_no` varchar(50) DEFAULT NULL COMMENT '证件号',
  `dept_id` int(11) DEFAULT NULL COMMENT '部门id',
  `dept_name` varchar(50) DEFAULT NULL COMMENT '部门名称',
  `education_code` varchar(20) DEFAULT NULL COMMENT '学历编号',
  `education_name` varchar(20) DEFAULT NULL COMMENT '学历名称',
  `email` varchar(100) DEFAULT NULL COMMENT '电子邮箱',
  `email_address` varchar(100) DEFAULT NULL COMMENT '用户邮箱',
  `enlish_name` varchar(100) DEFAULT NULL COMMENT '英文名称',
  `head_img` varchar(500) DEFAULT NULL COMMENT '用户头像',
  `id_card` varchar(20) DEFAULT NULL COMMENT '证件号码',
  `identify_code` int(2) DEFAULT NULL COMMENT '鉴别编号 1待选,2注销，3专家',
  `name` varchar(100) DEFAULT NULL COMMENT '姓名',
  `nation_code` varchar(20) DEFAULT NULL COMMENT '民族编号',
  `nation_name` varchar(50) DEFAULT NULL COMMENT '民族名称',
  `native_place_code` varchar(20) DEFAULT NULL COMMENT '籍贯编号',
  `native_place_name` varchar(20) DEFAULT NULL COMMENT '籍贯名称',
  `nick_name` varchar(50) DEFAULT NULL COMMENT '呢称',
  `no` varchar(64) DEFAULT NULL COMMENT '人员编号',
  `personnel_name` varchar(100) DEFAULT NULL COMMENT '人才称号',
  `peson_code` varchar(255) DEFAULT NULL,
  `peson_name` varchar(255) DEFAULT NULL,
  `peson_type` varchar(255) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL COMMENT '手机号码',
  `political_outlook_code` varchar(20) DEFAULT NULL COMMENT '政治面貌编号',
  `political_outlook_name` varchar(20) DEFAULT NULL COMMENT '政治面貌名称',
  `post_code` varchar(100) DEFAULT NULL COMMENT '邮政编码',
  `recommendation_area` varchar(100) DEFAULT NULL COMMENT '自荐领域',
  `register_date` datetime DEFAULT NULL COMMENT '注册时间',
  `role_type` varchar(255) DEFAULT NULL,
  `roles` varchar(100) DEFAULT NULL COMMENT '角色 比如  user,manager,admin  多个角色用逗号隔开',
  `sex` int(1) DEFAULT NULL COMMENT '性别 1、男  2、女  3、其他',
  `signature` varchar(100) DEFAULT NULL COMMENT '签名地址',
  `technical_title` varchar(20) DEFAULT NULL COMMENT '技术职称',
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `work_phone` varchar(100) DEFAULT NULL COMMENT '工作电话',
  `work_time` datetime DEFAULT NULL COMMENT '工作时间',
  `work_unit` varchar(100) DEFAULT NULL COMMENT '工作单位',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='用户基本信息表';

-- ----------------------------
-- Records of sampling_user_info
-- ----------------------------
INSERT INTO `sampling_user_info` VALUES ('1', '0', '2019-10-22 00:40:41', null, '1', null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'admin', null, null, null, '1', null, null, null);
INSERT INTO `sampling_user_info` VALUES ('2', '0', '2019-11-05 16:11:51', null, 'admin', null, '2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'videoOperate', null, null, null, '2', null, null, null);
INSERT INTO `sampling_user_info` VALUES ('3', '0', '2019-11-05 16:12:00', null, 'admin', null, '2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'videoOperate', null, null, null, '3', null, null, null);
INSERT INTO `sampling_user_info` VALUES ('4', '0', '2019-11-05 16:12:44', 'admin', '1', null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'user', null, null, null, '4', null, null, null);
INSERT INTO `sampling_user_info` VALUES ('5', '0', '2019-11-05 22:30:35', null, 'admin', null, '2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'superadmin', null, null, null, '5', null, null, null);

-- ----------------------------
-- Table structure for sampling_user_key
-- ----------------------------
DROP TABLE IF EXISTS `sampling_user_key`;
CREATE TABLE `sampling_user_key` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `deleted` tinyint(4) DEFAULT 0 COMMENT '逻辑删除状态0未删除,1已删除',
  `raw_add_time` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '创建时间',
  `raw_creator` varchar(20) DEFAULT NULL COMMENT '创建人',
  `raw_modifier` varchar(20) DEFAULT NULL COMMENT '修改人',
  `raw_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `raw_version` smallint(6) unsigned NOT NULL DEFAULT 1 COMMENT '版本号',
  `platform_code` varchar(10) DEFAULT NULL COMMENT '平台编号',
  `private_key` varchar(100) NOT NULL COMMENT '私有密钥',
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK7huffd46ncwlygix8qwlfxmm` (`platform_code`,`private_key`,`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='用户私有key表，用户存key值生成token';

-- ----------------------------
-- Records of sampling_user_key
-- ----------------------------
INSERT INTO `sampling_user_key` VALUES ('1', '0', '2019-10-22 00:46:14', 'admin', 'admin', null, '44', 'web', '961d1b65285e40aa8bdf995f7338a5ee', '1');
INSERT INTO `sampling_user_key` VALUES ('2', '0', '2019-11-05 16:13:32', 'wu', 'wu', null, '7', 'web', 'aae08340db144f79818ea58e65c732b9', '2');
INSERT INTO `sampling_user_key` VALUES ('3', '0', '2019-11-05 16:16:12', 'lrs123456', '1', null, '1', 'web', '1a4d1a7e9c48477aafdfbbeda26e398f', '4');
INSERT INTO `sampling_user_key` VALUES ('4', '0', '2019-11-05 21:52:40', 'zhou', 'zhou', null, '5', 'web', '7556ba5d705f4fa9a94e6992759dcbd0', '3');
INSERT INTO `sampling_user_key` VALUES ('5', '0', '2019-11-05 22:31:09', 'super', 'super', null, '16', 'web', 'cb12297cea6940338e4323ae790bad77', '5');

-- ----------------------------
-- Table structure for sampling_user_menu_conf
-- ----------------------------
DROP TABLE IF EXISTS `sampling_user_menu_conf`;
CREATE TABLE `sampling_user_menu_conf` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `deleted` tinyint(4) DEFAULT 0 COMMENT '逻辑删除状态0未删除,1已删除',
  `raw_add_time` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '创建时间',
  `raw_creator` varchar(20) DEFAULT NULL COMMENT '创建人',
  `raw_modifier` varchar(20) DEFAULT NULL COMMENT '修改人',
  `raw_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `raw_version` smallint(6) unsigned NOT NULL DEFAULT 1 COMMENT '版本号',
  `menu_id` int(11) DEFAULT NULL COMMENT '菜单ID',
  `menu_name` varchar(100) DEFAULT NULL COMMENT '菜单名称',
  `menu_pid` int(11) DEFAULT NULL COMMENT '菜单父ID',
  `menu_url` varchar(100) DEFAULT NULL COMMENT '菜单链接地址',
  `user_id` int(11) DEFAULT NULL COMMENT '用户ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户菜单权限配置';

-- ----------------------------
-- Records of sampling_user_menu_conf
-- ----------------------------

-- ----------------------------
-- Table structure for sampling_video_type
-- ----------------------------
DROP TABLE IF EXISTS `sampling_video_type`;
CREATE TABLE `sampling_video_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `deleted` tinyint(4) DEFAULT 0 COMMENT '逻辑删除状态0未删除,1已删除',
  `raw_add_time` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '创建时间',
  `raw_creator` varchar(20) DEFAULT NULL COMMENT '创建人',
  `raw_modifier` varchar(20) DEFAULT NULL COMMENT '修改人',
  `raw_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `raw_version` smallint(6) unsigned NOT NULL DEFAULT 1 COMMENT '版本号',
  `type_code` varchar(200) DEFAULT NULL COMMENT '类型编号',
  `type_name` varchar(255) DEFAULT NULL COMMENT '类型名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `type_code` (`type_code`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='视频类别';

-- ----------------------------
-- Records of sampling_video_type
-- ----------------------------
INSERT INTO `sampling_video_type` VALUES ('1', '0', '2019-10-22 00:51:25', 'admin', 'admin', null, '2', 'SgrHGQAg1571676685256', '国产专区');
INSERT INTO `sampling_video_type` VALUES ('2', '0', '2019-10-22 00:51:36', 'admin', '1', null, '1', '9eOb1hSJ1571676696710', '另类重口味');
INSERT INTO `sampling_video_type` VALUES ('3', '0', '2019-10-22 00:51:46', 'admin', '1', null, '1', 'dTTjNmBn1571676706336', '自拍偷拍');
INSERT INTO `sampling_video_type` VALUES ('4', '0', '2019-10-22 00:51:54', 'admin', '1', null, '1', 'XO5JFnuW1571676714333', '制服丝袜');
INSERT INTO `sampling_video_type` VALUES ('5', '0', '2019-10-22 00:52:08', 'admin', '1', null, '1', '85Qig58E1571676728975', '日韩');
INSERT INTO `sampling_video_type` VALUES ('6', '0', '2019-10-22 00:52:50', 'admin', '1', null, '1', 'jBAY3yFa1571676770497', '强煎迷煎');
INSERT INTO `sampling_video_type` VALUES ('7', '0', '2019-10-22 00:53:01', 'admin', '1', null, '1', 'sphg7EFF1571676781106', '熟女人妻');
INSERT INTO `sampling_video_type` VALUES ('8', '0', '2019-10-22 00:53:08', 'admin', '1', null, '1', 'cb755Iw41571676788269', '欧美');
INSERT INTO `sampling_video_type` VALUES ('9', '0', '2019-10-22 00:53:16', 'admin', '1', null, '1', 'gD1NN2A01571676796697', '萝莉');
