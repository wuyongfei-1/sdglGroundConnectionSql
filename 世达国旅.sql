/*
SQLyog  v12.2.6 (64 bit)
MySQL - 5.5.29 : Database - toaccessthe
db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`toaccessthedb` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `toaccessthedb`;

/*Table structure for table `accounttype` */

DROP TABLE IF EXISTS `accounttype`;

CREATE TABLE `accounttype` (
  `accountTypeId` int(10) DEFAULT NULL COMMENT '账户类型表编号',
  `bank` varchar(10) DEFAULT NULL COMMENT '开户行',
  `accountNum` varchar(50) DEFAULT NULL COMMENT '账号/卡号',
  `accountName` varchar(10) DEFAULT NULL COMMENT '账户名/户名',
  `status` int(10) DEFAULT NULL COMMENT '状态  （1.个人   2.企业）',
  `whetherDel` int(10) DEFAULT NULL COMMENT '是否删除（1代表已删除，0代表未删除）',
  `createBy` int(10) DEFAULT NULL COMMENT '创建人 （外键，与人员表关联',
  `updateBy` int(10) DEFAULT NULL COMMENT '修改人（外键，与人员表关联）',
  `upDate` date DEFAULT NULL COMMENT '修改日期',
  `createDate` date DEFAULT NULL COMMENT '创建时间',
  `value1` varchar(10) DEFAULT NULL COMMENT '预留1',
  `value2` varchar(10) DEFAULT NULL COMMENT '预留2',
  `value3` varchar(10) DEFAULT NULL COMMENT '预留3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `accounttype` */

/*Table structure for table `bill` */

DROP TABLE IF EXISTS `bill`;

CREATE TABLE `bill` (
  `billId` int(10) NOT NULL AUTO_INCREMENT COMMENT '单据编号',
  `dispatchId` int(10) DEFAULT NULL COMMENT '调度id （外键，与调度表关联）',
  `billTypeId` int(10) DEFAULT NULL COMMENT '单据表类型id	（外键，与单据类型表进行关联）',
  `picturePath` varchar(500) DEFAULT NULL COMMENT '图片路径',
  `whetherDel` int(10) DEFAULT NULL COMMENT '是否删除（1代表已删除，0代表未删除）',
  `createBy` int(10) DEFAULT NULL COMMENT '创建人 （外键，与人员表关联）',
  `updateBy` int(10) DEFAULT NULL COMMENT '修改人（外键，与人员表关联）',
  `updateDate` date DEFAULT NULL COMMENT '修改日期',
  `createDate` date DEFAULT NULL COMMENT '创建日期',
  `value1` varchar(20) DEFAULT NULL,
  `value2` varchar(20) DEFAULT NULL,
  `value3` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`billId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='单据表';

/*Data for the table `bill` */

/*Table structure for table `billtype` */

DROP TABLE IF EXISTS `billtype`;

CREATE TABLE `billtype` (
  `billTypeId` int(10) NOT NULL AUTO_INCREMENT COMMENT '单据类型编号',
  `typeName` varchar(20) DEFAULT NULL COMMENT '类型名称（列如：消费单据 ， 服务调查 ， 集体照)',
  `whetherDel` int(10) DEFAULT NULL COMMENT '是否删除（1代表已删除，0代表未删除）',
  `createBy` int(10) DEFAULT NULL COMMENT '创建人 （外键，与人员表关联）',
  `updateBy` int(10) DEFAULT NULL COMMENT '修改人（外键，与人员表关联）',
  `updateDate` date DEFAULT NULL COMMENT '修改日期',
  `createDate` date DEFAULT NULL COMMENT '创建日期',
  `value1` varchar(20) DEFAULT NULL,
  `value2` varchar(20) DEFAULT NULL,
  `value3` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`billTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='单据表类型';

/*Data for the table `billtype` */

/*Table structure for table `carrental` */

DROP TABLE IF EXISTS `carrental`;

CREATE TABLE `carrental` (
  `carRentalId` int(10) NOT NULL AUTO_INCREMENT COMMENT '公司编号',
  `carRentalName` varchar(50) DEFAULT NULL COMMENT '名称',
  `phone` int(10) DEFAULT NULL COMMENT '联系电话',
  `contacts` varchar(50) DEFAULT NULL COMMENT '联系人',
  `companyAddress` varchar(50) DEFAULT NULL COMMENT '公司地址',
  `whetherDel` int(10) DEFAULT NULL COMMENT '是否删除（1代表已删除，0代表未删除）',
  `createBy` int(10) DEFAULT NULL COMMENT '创建人 （外键，与人员表关联）',
  `updateBy` int(10) DEFAULT NULL COMMENT '修改人（外键，与人员表关联）',
  `updateDate` date DEFAULT NULL COMMENT '修改日期',
  `createDate` date DEFAULT NULL COMMENT '创建日期',
  `value1` varchar(50) DEFAULT NULL,
  `value2` varchar(50) DEFAULT NULL,
  `value3` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`carRentalId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='汽车租赁公司表';

/*Data for the table `carrental` */

/*Table structure for table `company` */

DROP TABLE IF EXISTS `company`;

CREATE TABLE `company` (
  `companyId` int(10) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `companyName` varchar(20) DEFAULT NULL COMMENT '公司名称',
  `companyAddress` varchar(20) DEFAULT NULL COMMENT '地址',
  `companyPhone` int(20) DEFAULT NULL COMMENT '电话',
  `fax` varchar(20) DEFAULT NULL COMMENT '传真',
  `zipCode` varchar(20) DEFAULT NULL COMMENT '邮编',
  `businessLicense` varchar(20) DEFAULT NULL COMMENT '经营许可证（L-SX-CJ00026）',
  `whetherDel` int(10) DEFAULT NULL COMMENT '是否删除（1代表已删除，0代表未删除）',
  `creater` int(10) DEFAULT NULL COMMENT '创建人 （外键，与人员表关联）',
  `modifier` int(10) DEFAULT NULL COMMENT '修改人（外键，与人员表关联）',
  `modifiedData` date DEFAULT NULL COMMENT '修改日期',
  `creationDate` date DEFAULT NULL COMMENT '创建时间',
  `value1` varchar(20) DEFAULT NULL,
  `value2` varchar(20) DEFAULT NULL,
  `value3` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公司信息表';

/*Data for the table `company` */

/*Table structure for table `dictionaries` */

DROP TABLE IF EXISTS `dictionaries`;

CREATE TABLE `dictionaries` (
  `dictionariesId` int(10) NOT NULL AUTO_INCREMENT COMMENT '字典编号',
  `typeCode` varchar(20) DEFAULT NULL COMMENT '编码（AAA、BBB）varch',
  `typeName` varchar(20) DEFAULT NULL COMMENT '编码名称（景点等级、餐厅类型）',
  `valueId` int(10) DEFAULT NULL COMMENT '内容编号int',
  `valueContent1` varchar(20) DEFAULT NULL COMMENT '内容1（例如：餐饭名、AAAAA级）',
  `valueContent2` varchar(20) DEFAULT NULL COMMENT '内容2（餐饭价格）',
  `whetherDel` int(10) DEFAULT NULL COMMENT '是否删除（1代表已删除，0代表未删除）',
  `createBy` int(10) DEFAULT NULL COMMENT '创建人 （外键，与人员表关联）',
  `updateBy` int(10) DEFAULT NULL COMMENT '修改人（外键，与人员表关联）',
  `updateDate` date DEFAULT NULL COMMENT '修改日期',
  `createDate` date DEFAULT NULL COMMENT '创建时间',
  `value1` varchar(20) DEFAULT NULL,
  `value2` varchar(20) DEFAULT NULL,
  `value3` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`dictionariesId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionaries` */

/*Table structure for table `disattr` */

DROP TABLE IF EXISTS `disattr`;

CREATE TABLE `disattr` (
  `disAttrId` int(10) NOT NULL AUTO_INCREMENT COMMENT '调度景点id',
  `scenicSpotId` int(10) DEFAULT NULL COMMENT '景点编号（外键，与景点表关联）',
  `offerId` int(10) DEFAULT NULL COMMENT '调度信息编号（外键，与报价信息表关联）',
  `date` date DEFAULT NULL COMMENT '日期',
  `buynum` int(4) DEFAULT NULL COMMENT '购买人数',
  `costPrice` double DEFAULT NULL COMMENT '成本价',
  `quotePrice` double DEFAULT NULL COMMENT '报价',
  `payMethods` varchar(50) DEFAULT NULL COMMENT '付款方式',
  `status` int(4) DEFAULT NULL COMMENT '是否删除（1代表已删除，0代表未删除）',
  `createBy` int(10) DEFAULT NULL COMMENT '创建人 （外键，与人员表关联）',
  `updateBy` int(10) DEFAULT NULL COMMENT '修改人（外键，与人员表关联）',
  `upDate` date DEFAULT NULL COMMENT '修改日期',
  `createDate` date DEFAULT NULL COMMENT '创建时间',
  `value1` varchar(100) DEFAULT NULL COMMENT '预留字段1',
  `value2` varchar(100) DEFAULT NULL COMMENT '预留字段2',
  `value3` varchar(100) DEFAULT NULL COMMENT '预留字段3',
  PRIMARY KEY (`disAttrId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='调度景点表';

/*Data for the table `disattr` */

/*Table structure for table `discar` */

DROP TABLE IF EXISTS `discar`;

CREATE TABLE `discar` (
  `disCarId` int(10) NOT NULL AUTO_INCREMENT COMMENT '调度用车id',
  `typeId` int(10) DEFAULT NULL COMMENT '用车类型编号（外键，与用车类型表关联）',
  `offerId` int(10) DEFAULT NULL COMMENT '调度信息编号（外键，与报价信息表关联）',
  `costPrice` double DEFAULT NULL COMMENT '成本价',
  `quotePrice` double DEFAULT NULL COMMENT '报价',
  `number` int(4) DEFAULT NULL COMMENT '数量',
  `status` int(4) DEFAULT NULL COMMENT '是否删除（1代表已删除，0代表未删除）',
  `createBy` int(10) DEFAULT NULL COMMENT '创建人 （外键，与人员表关联）',
  `updateBy` int(10) DEFAULT NULL COMMENT '修改人（外键，与人员表关联）',
  `upDate` date DEFAULT NULL COMMENT '修改日期',
  `createDate` date DEFAULT NULL COMMENT '创建时间',
  `value1` varchar(100) DEFAULT NULL COMMENT '预留字段1',
  `value2` varchar(100) DEFAULT NULL COMMENT '预留字段2',
  `value3` varchar(100) DEFAULT NULL COMMENT '预留字段3',
  PRIMARY KEY (`disCarId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='调度用车表';

/*Data for the table `discar` */

/*Table structure for table `disguide` */

DROP TABLE IF EXISTS `disguide`;

CREATE TABLE `disguide` (
  `disGuideId` int(10) NOT NULL AUTO_INCREMENT COMMENT '调度导游id',
  `guideId` int(10) DEFAULT NULL COMMENT '导游编号（外键，与导游表关联）',
  `offerId` int(10) DEFAULT NULL COMMENT '调度信息编号（外键，与报价信息表关联）',
  `status` int(4) DEFAULT NULL COMMENT '是否删除（1代表已删除，0代表未删除）',
  `createBy` int(10) DEFAULT NULL COMMENT '创建人 （外键，与人员表关联）',
  `updateBy` int(10) DEFAULT NULL COMMENT '修改人（外键，与人员表关联）',
  `upDate` date DEFAULT NULL COMMENT '修改日期',
  `createDate` date DEFAULT NULL COMMENT '创建时间',
  `value1` varchar(100) DEFAULT NULL COMMENT '预留字段1',
  `value2` varchar(100) DEFAULT NULL COMMENT '预留字段2',
  `value` varchar(100) DEFAULT NULL COMMENT '预留字段3',
  PRIMARY KEY (`disGuideId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='调度导游表';

/*Data for the table `disguide` */

/*Table structure for table `disother` */

DROP TABLE IF EXISTS `disother`;

CREATE TABLE `disother` (
  `disOtherId` int(10) NOT NULL AUTO_INCREMENT COMMENT '调度其他id',
  `offerId` int(10) DEFAULT NULL COMMENT '调度信息编号（外键，与报价信息表关联）',
  `costPrice` double DEFAULT NULL COMMENT '成本价',
  `quotePrice` double DEFAULT NULL COMMENT '报价',
  `remarks` varchar(200) DEFAULT NULL COMMENT '备注',
  `status` int(4) DEFAULT NULL COMMENT '是否删除（1代表已删除，0代表未删除）',
  `createBy` int(10) DEFAULT NULL COMMENT '创建人 （外键，与人员表关联）',
  `updateBy` int(10) DEFAULT NULL COMMENT '修改人（外键，与人员表关联）',
  `upDate` date DEFAULT NULL COMMENT '修改日期',
  `createDate` date DEFAULT NULL COMMENT '创建时间',
  `value1` varchar(100) DEFAULT NULL COMMENT '预留字段1',
  `value2` varchar(100) DEFAULT NULL COMMENT '预留字段2',
  `value3` varchar(100) DEFAULT NULL COMMENT '预留字段3',
  PRIMARY KEY (`disOtherId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='调度其他表';

/*Data for the table `disother` */

/*Table structure for table `dispatch` */

DROP TABLE IF EXISTS `dispatch`;

CREATE TABLE `dispatch` (
  `dispatchId` int(10) NOT NULL AUTO_INCREMENT COMMENT '调度信息编号',
  `groundConnectionNumber` varchar(50) DEFAULT NULL COMMENT '地接社团号',
  `groupNumber` varchar(50) DEFAULT NULL COMMENT '组团社团号',
  `sendLine` varchar(50) DEFAULT NULL COMMENT '发往线路',
  `travelStartTime` date DEFAULT NULL COMMENT '旅行开始时间',
  `travelEndTime` date DEFAULT NULL COMMENT '旅行结束时间',
  `num` int(4) DEFAULT NULL COMMENT '人数',
  `tourist` varchar(20) DEFAULT NULL COMMENT '客源地',
  `trip` varchar(100) DEFAULT NULL COMMENT '行程',
  `offer` double DEFAULT NULL COMMENT '报价(按人数算)',
  `aVariance` double DEFAULT NULL COMMENT '单间房差',
  `fare` double DEFAULT NULL COMMENT '车费',
  `wineFee` double DEFAULT NULL COMMENT '酒水费',
  `not` varchar(100) DEFAULT NULL COMMENT '不含',
  `remarks` varchar(100) DEFAULT NULL COMMENT '备注',
  `supervision` varchar(100) DEFAULT NULL COMMENT '团体监督',
  `reception` varchar(100) DEFAULT NULL COMMENT '接待标准',
  `total` double DEFAULT NULL COMMENT '总计',
  `loan` double DEFAULT NULL COMMENT '导游借款',
  `state` int(4) DEFAULT NULL COMMENT '状态（1、未开始2、进行中3、已结束）',
  `whetherDel` int(4) DEFAULT NULL COMMENT '是否删除（1代表已删除，0代表未删除）',
  `creater` int(10) DEFAULT NULL COMMENT '创建人 （外键，与人员表关联）',
  `modifier` int(10) DEFAULT NULL COMMENT '修改人（外键，与人员表关联）',
  `modifiedData` date DEFAULT NULL COMMENT '修改日期',
  `creationDate` date DEFAULT NULL COMMENT 'creationDate',
  `value1` varchar(100) DEFAULT NULL COMMENT '预留字段1',
  `value2` varchar(100) DEFAULT NULL COMMENT '预留字段2',
  `value3` varchar(100) DEFAULT NULL COMMENT '预留字段3',
  PRIMARY KEY (`dispatchId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='调度表';

/*Data for the table `dispatch` */

/*Table structure for table `dispatchhotel` */

DROP TABLE IF EXISTS `dispatchhotel`;

CREATE TABLE `dispatchhotel` (
  `dispatchHotelId` int(10) NOT NULL AUTO_INCREMENT COMMENT '调度酒店编号',
  `hotelId` int(10) DEFAULT NULL COMMENT '酒店编号（外键，与酒店表关联）',
  `offerId` int(10) DEFAULT NULL COMMENT '调度信息编号（外键，与报价信息表关联）',
  `costPrice` double DEFAULT NULL COMMENT '成本价',
  `offer` double DEFAULT NULL COMMENT '报价',
  `date` date DEFAULT NULL COMMENT '日期',
  `payment` varchar(50) DEFAULT NULL COMMENT '付款方式',
  `companyBedNum` int(4) DEFAULT NULL COMMENT '司陪床位数',
  `companyBedoffer` double DEFAULT NULL COMMENT '司陪床价',
  `whetherDel` int(4) DEFAULT NULL COMMENT '是否删除（1代表已删除，0代表未删除）',
  `creater` int(10) DEFAULT NULL COMMENT '创建人 （外键，与人员表关联）',
  `modifier` int(10) DEFAULT NULL COMMENT '修改人（外键，与人员表关联）',
  `modifiedData` date DEFAULT NULL COMMENT '修改日期',
  `creationDate` date DEFAULT NULL COMMENT '创建时间',
  `value1` varchar(100) DEFAULT NULL COMMENT '预留字段1',
  `value2` varchar(100) DEFAULT NULL COMMENT '预留字段2',
  `value3` varchar(100) DEFAULT NULL COMMENT '预留字段3',
  PRIMARY KEY (`dispatchHotelId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='调度酒店表';

/*Data for the table `dispatchhotel` */

/*Table structure for table `disrestaurant` */

DROP TABLE IF EXISTS `disrestaurant`;

CREATE TABLE `disrestaurant` (
  `disRestaurantId` int(10) NOT NULL AUTO_INCREMENT COMMENT '调度餐厅id',
  `typeId` int(10) DEFAULT NULL COMMENT '餐馆类型编号（外键，与餐馆类型表关联）',
  `offerId` int(10) DEFAULT NULL COMMENT '调度信息编号（外键，与报价信息表关联）',
  `costPrice` double DEFAULT NULL COMMENT '成本价',
  `quotePrice` double DEFAULT NULL COMMENT '报价',
  `numDays` int(4) DEFAULT NULL COMMENT '天数',
  `dinDate` varchar(50) DEFAULT NULL COMMENT '用餐时间（早、中、晚）',
  `status` int(4) DEFAULT NULL COMMENT '是否删除（1代表已删除，0代表未删除）',
  `createBy` int(10) DEFAULT NULL COMMENT '创建人 （外键，与人员表关联）',
  `updateBy` int(10) DEFAULT NULL COMMENT '修改人（外键，与人员表关联）',
  `upDate` date DEFAULT NULL COMMENT '修改日期',
  `createDate` date DEFAULT NULL COMMENT '创建时间',
  `value1` varchar(100) DEFAULT NULL COMMENT '预留字段1',
  `value2` varchar(100) DEFAULT NULL COMMENT '预留字段2',
  `value3` varchar(100) DEFAULT NULL COMMENT '预留字段3',
  PRIMARY KEY (`disRestaurantId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='调度餐厅表';

/*Data for the table `disrestaurant` */

/*Table structure for table `disshopp` */

DROP TABLE IF EXISTS `disshopp`;

CREATE TABLE `disshopp` (
  `disShoppId` int(10) NOT NULL AUTO_INCREMENT COMMENT '调度购物id',
  `scenicSpotId` int(10) DEFAULT NULL COMMENT '购物编号（外键，与景点表关联）',
  `offerId` int(10) DEFAULT NULL COMMENT '调度信息编号（外键，与报价信息表关联）',
  `date` date DEFAULT NULL COMMENT '日期',
  `status` int(4) DEFAULT NULL COMMENT '是否删除（1代表已删除，0代表未删除）',
  `createBy` int(10) DEFAULT NULL COMMENT '创建人 （外键，与人员表关联）',
  `updateBy` int(10) DEFAULT NULL COMMENT '修改人（外键，与人员表关联）',
  `upDate` date DEFAULT NULL COMMENT '修改日期',
  `createDate` date DEFAULT NULL COMMENT '创建时间',
  `value1` varchar(100) DEFAULT NULL COMMENT '预留字段1',
  `value2` varchar(100) DEFAULT NULL COMMENT '预留字段2',
  `value3` varchar(100) DEFAULT NULL COMMENT '预留字段3',
  PRIMARY KEY (`disShoppId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='调度购物表';

/*Data for the table `disshopp` */

/*Table structure for table `guide` */

DROP TABLE IF EXISTS `guide`;

CREATE TABLE `guide` (
  `guideId` int(10) NOT NULL AUTO_INCREMENT COMMENT '导游编号',
  `certificate` varchar(20) DEFAULT NULL COMMENT '导游证件号',
  `guideName` varchar(20) DEFAULT NULL COMMENT '导游姓名',
  `username` varchar(20) DEFAULT NULL COMMENT '用户名',
  `password` varchar(20) DEFAULT NULL COMMENT '密码',
  `telephone` int(20) DEFAULT NULL COMMENT '联系电话',
  `age` int(10) DEFAULT NULL COMMENT '年龄',
  `sex` int(10) DEFAULT NULL COMMENT '性别',
  `state` int(10) DEFAULT NULL COMMENT '状态（1、请假 2、已占用 3、空闲中）',
  `whetherDel` int(10) DEFAULT NULL COMMENT '是否删除（1代表已删除，0代表未删除）',
  `creater` int(10) DEFAULT NULL COMMENT '创建人 （外键，与人员表关联)',
  `modifier` int(10) DEFAULT NULL COMMENT '修改人（外键，与人员表关联）',
  `modifiedData` date DEFAULT NULL COMMENT '修改日期',
  `creationDate` date DEFAULT NULL COMMENT '创建日期',
  `value1` varchar(20) DEFAULT NULL,
  `value2` varchar(20) DEFAULT NULL,
  `value3` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`guideId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='导游表';

/*Data for the table `guide` */

/*Table structure for table `hotel` */

DROP TABLE IF EXISTS `hotel`;

CREATE TABLE `hotel` (
  `hotelId` int(10) NOT NULL AUTO_INCREMENT COMMENT '酒店编号',
  `hotelName` varchar(50) DEFAULT NULL COMMENT '名称',
  `starHotel` int(10) DEFAULT NULL COMMENT '星级',
  `hotelAddress` varchar(50) DEFAULT NULL COMMENT '地址',
  `picturePath` varchar(50) DEFAULT NULL COMMENT '图片地址',
  `breakfast` int(10) DEFAULT NULL COMMENT '是否提供早餐',
  `contacts` varchar(50) DEFAULT NULL COMMENT '联系人',
  `phone` int(10) DEFAULT NULL COMMENT '联系电话',
  `hotelDescribe` varchar(50) DEFAULT NULL COMMENT '酒店描述',
  `remarks` varchar(50) DEFAULT NULL COMMENT '备注',
  `costprice` int(10) DEFAULT NULL COMMENT '成本价',
  `offer` int(10) DEFAULT NULL COMMENT '报价',
  `status` int(10) DEFAULT NULL COMMENT '状态（1为可用，0为禁用）',
  `whetherDel` int(10) DEFAULT NULL COMMENT '是否删除（1代表已删除，0代表未删除）',
  `createBy` int(10) DEFAULT NULL COMMENT '创建人 （外键，与人员表关联）',
  `updateBy` int(10) DEFAULT NULL COMMENT '修改人（外键，与人员表关联）',
  `updateDate` date DEFAULT NULL COMMENT '修改日期',
  `createDate` date DEFAULT NULL COMMENT '创建时间',
  `value1` varchar(50) DEFAULT NULL,
  `value2` varchar(50) DEFAULT NULL,
  `value3` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`hotelId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='酒店表';

/*Data for the table `hotel` */

/*Table structure for table `hoteroomtype` */

DROP TABLE IF EXISTS `hoteroomtype`;

CREATE TABLE `hoteroomtype` (
  `hoteroomtId` int(10) NOT NULL AUTO_INCREMENT COMMENT '调度酒店房间类型id',
  `dispatchHotelId` int(10) DEFAULT NULL COMMENT '调度酒店编号（外键，与调度酒店表关联）',
  `typeId` int(10) DEFAULT NULL COMMENT '酒店房间类型编号（外键，与酒店房间类型表关联）',
  `status` int(4) DEFAULT NULL COMMENT '是否删除（1代表已删除，0代表未删除）',
  `createBy` int(10) DEFAULT NULL COMMENT '创建人 （外键，与人员表关联）',
  `updateBy` int(10) DEFAULT NULL COMMENT '修改人（外键，与人员表关联）',
  `upDate` date DEFAULT NULL COMMENT '修改日期',
  `createDate` date DEFAULT NULL COMMENT '创建时间',
  `value1` varchar(10) DEFAULT NULL COMMENT '预留字段1',
  `value2` varchar(10) DEFAULT NULL COMMENT '预留字段2',
  `value3` varchar(10) DEFAULT NULL COMMENT '预留字段3',
  PRIMARY KEY (`hoteroomtId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='调度酒店房间类型表';

/*Data for the table `hoteroomtype` */

/*Table structure for table `log` */

DROP TABLE IF EXISTS `log`;

CREATE TABLE `log` (
  `logId` int(10) NOT NULL AUTO_INCREMENT COMMENT '日志编号',
  `guideId` int(10) DEFAULT NULL COMMENT '导游id',
  `dispatchId` int(10) DEFAULT NULL COMMENT '调度表编号（外键，与调度表关联）',
  `content` varchar(20) DEFAULT NULL COMMENT '内容',
  `remarks` varchar(100) DEFAULT NULL COMMENT '备注',
  `whetherDel` int(10) DEFAULT NULL COMMENT '是否删除（1代表已删除，0代表未删除',
  `creater` int(10) DEFAULT NULL COMMENT '创建人 （外键，与人员表关联）',
  `modifier` int(10) DEFAULT NULL COMMENT '修改人（外键，与人员表关联）',
  `modifiedData` date DEFAULT NULL COMMENT '修改日期',
  `creationDate` date DEFAULT NULL COMMENT '创建日期',
  `value1` varchar(20) DEFAULT NULL,
  `value2` varchar(20) DEFAULT NULL,
  `value3` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`logId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='带团日志表';

/*Data for the table `log` */

/*Table structure for table `mealtype` */

DROP TABLE IF EXISTS `mealtype`;

CREATE TABLE `mealtype` (
  `typeId` int(10) NOT NULL AUTO_INCREMENT COMMENT '类型编号',
  `restaurantId` int(10) DEFAULT NULL COMMENT '餐馆编号（外键，与餐馆表关联）',
  `typeName` varchar(20) DEFAULT NULL COMMENT '类型名称',
  `costprice` double DEFAULT NULL COMMENT '成本价',
  `offer` double DEFAULT NULL COMMENT '报价',
  `whetherDel` int(10) DEFAULT NULL COMMENT '是否删除（1代表已删除，0代表未删除）',
  `createBy` int(10) DEFAULT NULL COMMENT '创建人 （外键，与人员表关联）',
  `updateBy` int(10) DEFAULT NULL COMMENT '修改人（外键，与人员表关联）',
  `updateDate` date DEFAULT NULL COMMENT '修改日期',
  `createDate` date DEFAULT NULL COMMENT '创建时间',
  `value1` varchar(20) DEFAULT NULL,
  `value2` varchar(20) DEFAULT NULL,
  `value3` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`typeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='饮食类型表（菜谱）';

/*Data for the table `mealtype` */

/*Table structure for table `offer` */

DROP TABLE IF EXISTS `offer`;

CREATE TABLE `offer` (
  `offerId` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `travelId` int(10) DEFAULT NULL COMMENT '组团社编号（外键，与组团社关联）',
  `travelStartTime` datetime DEFAULT NULL COMMENT '旅行开始时间',
  `travelEndTime` datetime DEFAULT NULL COMMENT '旅行结束时间',
  `number` int(10) DEFAULT NULL COMMENT '人数',
  `tourist` varchar(100) DEFAULT NULL COMMENT '客源地',
  `trip` varchar(200) DEFAULT NULL COMMENT '行程',
  `offer` double DEFAULT NULL COMMENT '报价(按人数算)',
  `aVariance` double DEFAULT NULL COMMENT '单间房差',
  `shopping` varchar(300) DEFAULT NULL COMMENT '购物',
  `not` varchar(300) DEFAULT NULL COMMENT '不含',
  `remarks` varchar(300) DEFAULT NULL COMMENT '备注',
  `supervision` varchar(300) DEFAULT NULL COMMENT '团体监督',
  `reception` varchar(300) DEFAULT NULL COMMENT '接待标准',
  `whetherDel` int(10) DEFAULT NULL COMMENT '是否删除（1代表已删除，0代表未删除）',
  `creater` int(10) DEFAULT NULL COMMENT '创建人 （外键，与人员表关联）',
  `modifier` int(10) DEFAULT NULL COMMENT '修改人（外键，与人员表关联）',
  `modifiedData` datetime DEFAULT NULL COMMENT '修改日期',
  `creationDate` datetime DEFAULT NULL COMMENT '创建时间',
  `value1` varchar(200) DEFAULT NULL COMMENT '值1',
  `value2` varchar(200) DEFAULT NULL COMMENT '值2',
  `value3` varchar(200) DEFAULT NULL COMMENT '值3',
  PRIMARY KEY (`offerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='报价信息表';

/*Data for the table `offer` */

/*Table structure for table `offercar` */

DROP TABLE IF EXISTS `offercar`;

CREATE TABLE `offercar` (
  `offerCarId` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `typeId` int(10) DEFAULT NULL COMMENT '用车类型编号（外键，与用车类型表关联）',
  `offerId` int(10) DEFAULT NULL COMMENT '报价信息编号（外键，与报价信息表关联）',
  `costPrice` double DEFAULT NULL COMMENT '成本价',
  `offer` double DEFAULT NULL COMMENT '报价',
  `number` int(10) DEFAULT NULL COMMENT '数量',
  `whetherDel` int(10) DEFAULT NULL COMMENT '是否删除（1代表已删除，0代表未删除）',
  `creater` int(10) DEFAULT NULL COMMENT '创建人 （外键，与人员表关联）',
  `modifier` int(10) DEFAULT NULL COMMENT '修改人（外键，与人员表关联）',
  `modifiedData` datetime DEFAULT NULL COMMENT '修改日期',
  `creationDate` datetime DEFAULT NULL COMMENT '创建时间',
  `value1` varchar(200) DEFAULT NULL COMMENT '值1',
  `value2` varchar(200) DEFAULT NULL COMMENT '值2',
  `value3` varchar(200) DEFAULT NULL COMMENT '值3',
  PRIMARY KEY (`offerCarId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='报价用车表';

/*Data for the table `offercar` */

/*Table structure for table `offerhotel` */

DROP TABLE IF EXISTS `offerhotel`;

CREATE TABLE `offerhotel` (
  `offerHotelId` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `hotelId` int(10) DEFAULT NULL COMMENT '酒店编号（外键，与酒店表关联）',
  `offerId` int(10) DEFAULT NULL COMMENT '报价信息编号（外键，与报价信息表关联）',
  `costPrice` double DEFAULT NULL COMMENT '成本价',
  `offer` double DEFAULT NULL COMMENT '报价',
  `whetherDel` int(10) DEFAULT NULL COMMENT '是否删除（1代表已删除，0代表未删除）',
  `creater` int(10) DEFAULT NULL COMMENT '创建人 （外键，与人员表关联）',
  `modifier` int(10) DEFAULT NULL COMMENT '修改人（外键，与人员表关联）',
  `modifiedData` datetime DEFAULT NULL COMMENT '修改日期',
  `creationDate` datetime DEFAULT NULL COMMENT '创建时间',
  `value1` varchar(200) DEFAULT NULL COMMENT '值1',
  `value2` varchar(200) DEFAULT NULL COMMENT '值2',
  `value3` varchar(200) DEFAULT NULL COMMENT '值3',
  PRIMARY KEY (`offerHotelId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='报价酒店表';

/*Data for the table `offerhotel` */

/*Table structure for table `offerline` */

DROP TABLE IF EXISTS `offerline`;

CREATE TABLE `offerline` (
  `offerLineRecordId` int(10) NOT NULL AUTO_INCREMENT COMMENT '报价线路信息记录id',
  `offerId` int(10) DEFAULT NULL COMMENT '报价信息编号（外键，与报价信息表关联）',
  `lineArriveName` varchar(100) DEFAULT NULL COMMENT '线路抵达名称',
  `travelContent` varchar(100) DEFAULT NULL COMMENT '行程内容',
  `date` date DEFAULT NULL COMMENT '日期',
  `whetherDel` int(11) DEFAULT NULL COMMENT '是否删除（1代表已删除，0代表未删除）',
  `creater` int(10) DEFAULT NULL COMMENT '创建人 （外键，与人员表关联）',
  `modifier` int(10) DEFAULT NULL COMMENT '修改人（外键，与人员表关联）',
  `modifiedData` date DEFAULT NULL COMMENT '修改日期',
  `creationDate` date DEFAULT NULL COMMENT '创建时间',
  `value1` varchar(100) DEFAULT NULL COMMENT '预留字段1',
  `value2` varchar(100) DEFAULT NULL COMMENT '预留字段2',
  `value3` varchar(100) DEFAULT NULL COMMENT '预留字段3',
  PRIMARY KEY (`offerLineRecordId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='报价线路信息记录表：（打印确认单）';

/*Data for the table `offerline` */

/*Table structure for table `offerother` */

DROP TABLE IF EXISTS `offerother`;

CREATE TABLE `offerother` (
  `offerOtherId` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `offerId` int(10) DEFAULT NULL COMMENT '报价信息编号（外键，与报价信息表关联）',
  `costPrice` double DEFAULT NULL COMMENT '成本价',
  `offer` double DEFAULT NULL COMMENT '报价',
  `remarks` varchar(300) DEFAULT NULL COMMENT '备注',
  `whetherDel` int(10) DEFAULT NULL COMMENT '是否删除（1代表已删除，0代表未删除）',
  `creater` int(10) DEFAULT NULL COMMENT '创建人 （外键，与人员表关联）',
  `modifier` int(10) DEFAULT NULL COMMENT '修改人（外键，与人员表关联）',
  `modifiedData` datetime DEFAULT NULL COMMENT '修改日期',
  `creationDate` datetime DEFAULT NULL COMMENT '创建时间',
  `value1` varchar(200) DEFAULT NULL COMMENT '值1',
  `value2` varchar(200) DEFAULT NULL COMMENT '值2',
  `value3` varchar(200) DEFAULT NULL COMMENT '值3',
  PRIMARY KEY (`offerOtherId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='报价其他表';

/*Data for the table `offerother` */

/*Table structure for table `offerrestaurant` */

DROP TABLE IF EXISTS `offerrestaurant`;

CREATE TABLE `offerrestaurant` (
  `offerRestaurantId` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `offerId` int(10) DEFAULT NULL COMMENT '报价信息编号（外键，与报价信息表关联）',
  `typeCode` int(10) DEFAULT NULL COMMENT '编码（外键，与字典表关联）',
  `dictionariesId` int(10) DEFAULT NULL COMMENT '编号（外键，与字典表关联）',
  `costPrice` double DEFAULT NULL COMMENT '成本价',
  `offer` double DEFAULT NULL COMMENT '报价',
  `date` datetime DEFAULT NULL COMMENT '日期',
  `havemealsdate` datetime DEFAULT NULL COMMENT '用餐时间（早、中、晚）',
  `whetherDel` int(10) DEFAULT NULL COMMENT '是否删除（1代表已删除，0代表未删除）',
  `creater` int(10) DEFAULT NULL COMMENT '创建人 （外键，与人员表关联）',
  `modifier` int(10) DEFAULT NULL COMMENT '修改人（外键，与人员表关联）',
  `modifiedData` datetime DEFAULT NULL COMMENT '修改日期',
  `creationDate` datetime DEFAULT NULL COMMENT '创建时间',
  `value1` varchar(200) DEFAULT NULL COMMENT '值1',
  `value2` varchar(200) DEFAULT NULL COMMENT '值2',
  `value3` varchar(200) DEFAULT NULL COMMENT '值3',
  PRIMARY KEY (`offerRestaurantId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='报价餐厅表';

/*Data for the table `offerrestaurant` */

/*Table structure for table `offerscenic` */

DROP TABLE IF EXISTS `offerscenic`;

CREATE TABLE `offerscenic` (
  `offerScenicId` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `scenicSpotId` int(10) DEFAULT NULL COMMENT '景点编号（外键，与景点表关联）',
  `offerId` int(10) DEFAULT NULL COMMENT '报价信息编号（外键，与报价信息表关联）',
  `costPrice` double DEFAULT NULL COMMENT '成本价',
  `offer` double DEFAULT NULL COMMENT '报价',
  `whetherDel` int(10) DEFAULT NULL COMMENT '是否删除（1代表已删除，0代表未删除）',
  `creater` int(10) DEFAULT NULL COMMENT '创建人 （外键，与人员表关联）',
  `modifier` int(10) DEFAULT NULL COMMENT '修改人（外键，与人员表关联）',
  `modifiedData` datetime DEFAULT NULL COMMENT '修改日期',
  `creationDate` datetime DEFAULT NULL COMMENT '创建时间',
  `value1` varchar(200) DEFAULT NULL COMMENT '值1',
  `value2` varchar(200) DEFAULT NULL COMMENT '值2',
  `value3` varchar(200) DEFAULT NULL COMMENT '值3',
  PRIMARY KEY (`offerScenicId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='报价景点表';

/*Data for the table `offerscenic` */

/*Table structure for table `operationlog` */

DROP TABLE IF EXISTS `operationlog`;

CREATE TABLE `operationlog` (
  `operationLogId` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键Id',
  `operationType` varchar(10) DEFAULT NULL COMMENT '操作类型（比如：酒店、餐馆、景点）',
  `operationContent` varchar(50) DEFAULT NULL COMMENT '操作内容（比如：添加了一个景点）',
  `roleId` int(10) DEFAULT NULL COMMENT '操作人（外键，与角色表关联）',
  `operationDate` date DEFAULT NULL COMMENT '操作时间',
  `status` int(4) DEFAULT NULL COMMENT '是否删除（1代表已删除，0代表未删除）',
  `createBy` int(10) DEFAULT NULL COMMENT '创建人 （外键，与人员表关联）',
  `updateBy` int(10) DEFAULT NULL COMMENT '修改人（外键，与人员表关联）',
  `upDate` date DEFAULT NULL COMMENT '修改日期',
  `createDate` date DEFAULT NULL COMMENT '创建时间',
  `value1` varchar(10) DEFAULT NULL COMMENT '预留1',
  `value2` varchar(10) DEFAULT NULL COMMENT '预留2',
  `value3` varchar(10) DEFAULT NULL COMMENT '预留3',
  PRIMARY KEY (`operationLogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `operationlog` */

/*Table structure for table `reportaccommodation` */

DROP TABLE IF EXISTS `reportaccommodation`;

CREATE TABLE `reportaccommodation` (
  `reportAccommodationId` int(10) NOT NULL AUTO_INCREMENT COMMENT '导游报账住宿表编号',
  `liveDate` date DEFAULT NULL COMMENT '入住日期',
  `hotelName` varchar(10) DEFAULT NULL COMMENT '酒店名称',
  `typeId` int(10) DEFAULT NULL COMMENT '酒店类型编号（外键，与酒店类型表关联）',
  `housePrice` double DEFAULT NULL COMMENT '房价',
  `roomNum` int(10) DEFAULT NULL COMMENT '间数',
  `accompanyingBed` int(10) DEFAULT NULL COMMENT '陪同床位',
  `accompanyingPrice` double DEFAULT NULL COMMENT '陪同价位',
  `subtotal` double DEFAULT NULL COMMENT '小计',
  `payMethods` varchar(10) DEFAULT NULL COMMENT '支付方式',
  `status` int(10) DEFAULT NULL COMMENT '是否删除（1代表已删除，0代表未删除）',
  `createBy` int(10) DEFAULT NULL COMMENT '创建人 （外键，与人员表关联）',
  `updateBy` int(10) DEFAULT NULL COMMENT '修改人（外键，与人员表关联）',
  `upDate` date DEFAULT NULL COMMENT '修改日期',
  `createDate` date DEFAULT NULL COMMENT '创建时间',
  `value1` varchar(10) DEFAULT NULL COMMENT '预留1',
  `value2` varchar(10) DEFAULT NULL COMMENT '预留2',
  `value3` varchar(10) DEFAULT NULL COMMENT '预留3',
  PRIMARY KEY (`reportAccommodationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `reportaccommodation` */

/*Table structure for table `reportdetail` */

DROP TABLE IF EXISTS `reportdetail`;

CREATE TABLE `reportdetail` (
  `reportDetailId` int(10) NOT NULL AUTO_INCREMENT COMMENT '导游报账明细表编号',
  `dispatchId` int(10) DEFAULT NULL COMMENT '调度编号（外键，与调度表关联）',
  `reportDate` date DEFAULT NULL COMMENT '报账日期',
  `receipt` double DEFAULT NULL COMMENT '外收团款',
  `totalPayable` double DEFAULT NULL COMMENT '导游现付合计',
  `typeCode` varchar(10) DEFAULT NULL COMMENT '结余编码（外键，与字典表关联）',
  `valueId` int(10) DEFAULT NULL COMMENT '结余类型编号（外键，与字典表关联）',
  `balanceAmount` double DEFAULT NULL COMMENT '结余金额',
  `remarks` varchar(50) DEFAULT NULL COMMENT '备注',
  `status` int(10) DEFAULT NULL COMMENT '状态（1、审核中 2、以结算 3、未通过）',
  `whetherDel` int(10) DEFAULT NULL COMMENT '是否删除（1代表已删除，0代表未删除）',
  `createBy` int(10) DEFAULT NULL COMMENT '创建人 （外键，与人员表关联）',
  `updateBy` int(10) DEFAULT NULL COMMENT '修改人（外键，与人员表关联）',
  `upDate` date DEFAULT NULL COMMENT '修改日期',
  `createDate` date DEFAULT NULL COMMENT '创建时间',
  `value1` varchar(10) DEFAULT NULL COMMENT '预留1',
  `value2` varchar(10) DEFAULT NULL COMMENT '预留2',
  `value3` varchar(10) DEFAULT NULL COMMENT '预留3',
  PRIMARY KEY (`reportDetailId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `reportdetail` */

/*Table structure for table `reportfare` */

DROP TABLE IF EXISTS `reportfare`;

CREATE TABLE `reportfare` (
  `reportFareId` int(10) NOT NULL AUTO_INCREMENT COMMENT '导游报账车费表编号',
  `tolls` double DEFAULT NULL COMMENT '过路费',
  `parkingFee` double DEFAULT NULL COMMENT '停车费',
  `PrepaidFare` double DEFAULT NULL COMMENT '预付车费',
  `status` int(10) DEFAULT NULL COMMENT '是否删除（1代表已删除，0代表未删除）',
  `createBy` int(10) DEFAULT NULL COMMENT '创建人 （外键，与人员表关联）',
  `updateBy` int(10) DEFAULT NULL COMMENT '修改人（外键，与人员表关联）',
  `upDate` date DEFAULT NULL COMMENT '修改日期',
  `createDate` date DEFAULT NULL COMMENT '创建时间',
  `value1` varchar(10) DEFAULT NULL COMMENT '预留1',
  `value2` varchar(10) DEFAULT NULL COMMENT '预留2',
  `value3` varchar(10) DEFAULT NULL COMMENT '预留3',
  PRIMARY KEY (`reportFareId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `reportfare` */

/*Table structure for table `reportingotherexpenses` */

DROP TABLE IF EXISTS `reportingotherexpenses`;

CREATE TABLE `reportingotherexpenses` (
  `reportingOtherExpensesId` int(10) NOT NULL AUTO_INCREMENT COMMENT '导游报账其他支出表编号',
  `remarks` varchar(50) DEFAULT NULL COMMENT '项目及计算过程',
  `guidedTour` double DEFAULT NULL COMMENT '导游付',
  `signing` double DEFAULT NULL COMMENT '签单',
  `total` double DEFAULT NULL COMMENT '合计',
  `status` int(10) DEFAULT NULL COMMENT '是否删除（1代表已删除，0代表未删除',
  `createBy` int(10) DEFAULT NULL COMMENT '创建人 （外键，与人员表关联）',
  `updateBy` int(10) DEFAULT NULL COMMENT '修改人（外键，与人员表关联）',
  `upDate` date DEFAULT NULL COMMENT '修改日期',
  `createDate` date DEFAULT NULL COMMENT '创建时间',
  `value1` varchar(10) DEFAULT NULL COMMENT '预留1',
  `value2` varchar(10) DEFAULT NULL COMMENT '预留2',
  `value3` varchar(10) DEFAULT NULL COMMENT '预留3',
  PRIMARY KEY (`reportingOtherExpensesId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `reportingotherexpenses` */

/*Table structure for table `reportqutsubsidy` */

DROP TABLE IF EXISTS `reportqutsubsidy`;

CREATE TABLE `reportqutsubsidy` (
  `reportQutSubsidyId` int(10) NOT NULL AUTO_INCREMENT COMMENT '导游报账出团补助表编号',
  `dailyCost` double DEFAULT NULL COMMENT '日花费',
  `nums` int(10) DEFAULT NULL COMMENT '天数',
  `guideNum` int(10) DEFAULT NULL COMMENT '导游数',
  `status` int(10) DEFAULT NULL COMMENT '是否删除（1代表已删除，0代表未删除）',
  `createBy` int(10) DEFAULT NULL COMMENT '创建人 （外键，与人员表关联）',
  `updateBy` int(10) DEFAULT NULL COMMENT '修改人（外键，与人员表关联）',
  `upDate` date DEFAULT NULL COMMENT '修改日期',
  `createDate` date DEFAULT NULL COMMENT '创建时间',
  `value1` varchar(10) DEFAULT NULL COMMENT '预留1',
  `value2` varchar(10) DEFAULT NULL COMMENT '预留2',
  `value3` varchar(10) DEFAULT NULL COMMENT '预留3',
  PRIMARY KEY (`reportQutSubsidyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `reportqutsubsidy` */

/*Table structure for table `reportrestaurant` */

DROP TABLE IF EXISTS `reportrestaurant`;

CREATE TABLE `reportrestaurant` (
  `reportRestaurantId` int(10) DEFAULT NULL COMMENT '导游报账餐厅表编号',
  `lunchDate` date DEFAULT NULL COMMENT '午餐日期',
  `LuncheonName` varchar(10) DEFAULT NULL COMMENT '午餐馆名称',
  `lunchMeal` double DEFAULT NULL COMMENT '午餐餐标',
  `lunchEatNum` int(10) DEFAULT NULL COMMENT '进餐人数',
  `lunchother` double DEFAULT NULL COMMENT '午餐其他',
  `lunchPayMethods` varchar(10) DEFAULT NULL COMMENT '午餐支付方式',
  `dinnerDate` date DEFAULT NULL COMMENT '晚餐日期',
  `dinnerName` varchar(10) DEFAULT NULL COMMENT '晚餐馆名称',
  `dinnerMeal` double DEFAULT NULL COMMENT '晚餐餐标',
  `dinnerEatNum` int(10) DEFAULT NULL COMMENT '进餐人数',
  `dinnerother` double DEFAULT NULL COMMENT '晚餐其他',
  `dinnerPayMethods` varchar(10) DEFAULT NULL COMMENT '晚餐支付方式',
  `status` int(10) DEFAULT NULL COMMENT '是否删除（1代表已删除，0代表未删除）',
  `createBy` int(10) DEFAULT NULL COMMENT '创建人 （外键，与人员表关联）',
  `updateBy` int(10) DEFAULT NULL COMMENT '修改人（外键，与人员表关联）',
  `upDate` date DEFAULT NULL COMMENT '修改日期',
  `createDate` date DEFAULT NULL COMMENT '创建时间',
  `value1` varchar(10) DEFAULT NULL COMMENT '预留1',
  `value2` varchar(10) DEFAULT NULL COMMENT '预留2',
  `value3` varchar(10) DEFAULT NULL COMMENT '预留3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `reportrestaurant` */

/*Table structure for table `reportticket` */

DROP TABLE IF EXISTS `reportticket`;

CREATE TABLE `reportticket` (
  `reportTicketId` int(10) NOT NULL COMMENT '导游报账门票表编号',
  `attrName` varchar(10) DEFAULT NULL COMMENT '景点名称',
  `price` double DEFAULT NULL COMMENT '单价',
  `nums` int(10) DEFAULT NULL COMMENT '人数',
  `payMethods` varchar(10) DEFAULT NULL COMMENT '支付方式',
  `status` int(10) DEFAULT NULL COMMENT '是否删除（1代表已删除，0代表未删除）',
  `createBy` int(10) DEFAULT NULL COMMENT '创建人 （外键，与人员表关联）',
  `updateBy` int(10) DEFAULT NULL COMMENT '修改人（外键，与人员表关联）',
  `upDate` date DEFAULT NULL COMMENT '修改日期',
  `createDate` date DEFAULT NULL COMMENT '创建时间',
  `value1` varchar(10) DEFAULT NULL COMMENT '预留1',
  `value2` varchar(10) DEFAULT NULL COMMENT '预留2',
  `value3` varchar(10) DEFAULT NULL COMMENT '预留3',
  PRIMARY KEY (`reportTicketId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `reportticket` */

/*Table structure for table `restaurant` */

DROP TABLE IF EXISTS `restaurant`;

CREATE TABLE `restaurant` (
  `restaurantId` int(10) NOT NULL AUTO_INCREMENT COMMENT '餐馆编号',
  `restaurantName` varchar(50) DEFAULT NULL COMMENT '名称',
  `restaurantAddress` varchar(50) DEFAULT NULL COMMENT '地点',
  `typeCode` int(10) DEFAULT NULL COMMENT '餐厅类型编号（【餐厅类型编号】外键，与字典表关联）',
  `valueId` int(10) DEFAULT NULL COMMENT '编码（【餐厅类型名称】外键，与字典表关联）',
  `picturePath` varchar(50) DEFAULT NULL COMMENT '餐馆图片地址',
  `phone` int(10) DEFAULT NULL COMMENT '联系电话',
  `whetherDel` int(10) DEFAULT NULL COMMENT '是否删除（1代表已删除，0代表未删除）',
  `createBy` int(10) DEFAULT NULL COMMENT '创建人 （外键，与人员表关联）',
  `updateBy` int(10) DEFAULT NULL COMMENT '修改人（外键，与人员表关联）',
  `updateDate` date DEFAULT NULL COMMENT '修改日期',
  `createDate` date DEFAULT NULL COMMENT '创建时间',
  `value1` varchar(50) DEFAULT NULL,
  `value2` varchar(50) DEFAULT NULL,
  `value3` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`restaurantId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='餐馆表';

/*Data for the table `restaurant` */

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `roleId` int(10) NOT NULL AUTO_INCREMENT COMMENT '角色编号',
  `rolename` varchar(10) DEFAULT NULL COMMENT '角色名称（系统管理员、总经理、计调、总控、财务）',
  `whetherDel` int(10) DEFAULT NULL COMMENT '是否删除（1代表已删除，0代表未删除）',
  `createBy` int(10) DEFAULT NULL COMMENT '创建人 （外键，与人员表关联）',
  `updateBy` int(10) DEFAULT NULL COMMENT '修改人（外键，与人员表关联）',
  `updateDate` date DEFAULT NULL COMMENT '修改日期',
  `createDate` date DEFAULT NULL COMMENT '创建时间',
  `value1` varchar(10) DEFAULT NULL COMMENT '预留1',
  `value2` varchar(10) DEFAULT NULL COMMENT '预留2',
  `value3` varchar(10) DEFAULT NULL COMMENT '预留3',
  PRIMARY KEY (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `role` */

/*Table structure for table `roomtype` */

DROP TABLE IF EXISTS `roomtype`;

CREATE TABLE `roomtype` (
  `typeId` int(10) NOT NULL AUTO_INCREMENT,
  `hotelId` int(10) DEFAULT NULL COMMENT '酒店编号（外键，与酒店表关联）',
  `typeName` varchar(10) DEFAULT NULL COMMENT '类型名称',
  `costprice` double DEFAULT NULL COMMENT '成本价',
  `offer` double DEFAULT NULL COMMENT '报价',
  `whetherDel` int(10) DEFAULT NULL COMMENT '是否删除（1代表已删除，0代表未删除）',
  `createBy` int(10) DEFAULT NULL COMMENT '创建人 （外键，与人员表关联）',
  `updateBy` int(10) DEFAULT NULL COMMENT '修改人（外键，与人员表关联）',
  `updateDate` date DEFAULT NULL COMMENT '修改日期',
  `createDate` date DEFAULT NULL COMMENT '创建日期',
  `value1` varchar(50) DEFAULT NULL COMMENT '预备1',
  `value2` varchar(50) DEFAULT NULL COMMENT '预备2',
  `value3` varchar(50) DEFAULT NULL COMMENT '预备3',
  PRIMARY KEY (`typeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `roomtype` */

/*Table structure for table `scenicspot` */

DROP TABLE IF EXISTS `scenicspot`;

CREATE TABLE `scenicspot` (
  `scenicSpotId` int(10) NOT NULL AUTO_INCREMENT COMMENT '景点编号',
  `parentId` int(10) DEFAULT NULL COMMENT '父景点编号（与景点',
  `scenicSpotName` varchar(50) DEFAULT NULL COMMENT '名称',
  `scenicSpotAddress` varchar(50) DEFAULT NULL COMMENT '地点',
  `costprice` int(10) DEFAULT NULL COMMENT '成本价',
  `offer` int(10) DEFAULT NULL COMMENT '报价',
  `typeCode` int(10) DEFAULT NULL COMMENT '景点等级编号（外键，与字典表关联）',
  `typeId` int(10) DEFAULT NULL COMMENT '编码（【景点等级】外键，与字典表关联）',
  `picturePath` varchar(50) DEFAULT NULL COMMENT '景区图片地址',
  `describe` varchar(50) DEFAULT NULL COMMENT '描述',
  `remarks` varchar(50) DEFAULT NULL COMMENT '备注',
  `whetherDel` int(10) DEFAULT NULL COMMENT '是否删除（1代表已删除，0代表未删除）',
  `createBy` int(10) DEFAULT NULL COMMENT '创建人 （外键，与人员表关联）',
  `updateBy` int(10) DEFAULT NULL COMMENT '修改人（外键，与人员表关联）',
  `updateDate` date DEFAULT NULL COMMENT '修改日期',
  `createDate` date DEFAULT NULL COMMENT '创建时间',
  `value1` varchar(50) DEFAULT NULL,
  `value2` varchar(50) DEFAULT NULL,
  `value3` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`scenicSpotId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='景点表';

/*Data for the table `scenicspot` */

/*Table structure for table `shopping` */

DROP TABLE IF EXISTS `shopping`;

CREATE TABLE `shopping` (
  `shoppingId` int(10) NOT NULL AUTO_INCREMENT COMMENT '购物编号',
  `shoppingSite` varchar(20) DEFAULT NULL COMMENT '购物地名称',
  `scenicSpotId` int(10) DEFAULT NULL COMMENT '所属景点Id	（外键，与景点表关联）',
  `whetherDel` int(10) DEFAULT NULL COMMENT '是否删除（1代表已删除，0代表未删除）',
  `creater` int(10) DEFAULT NULL COMMENT '创建人 （外键，与人员表关联）',
  `modifier` int(10) DEFAULT NULL COMMENT '修改人（外键，与人员表关联)',
  `modifiedData` date DEFAULT NULL COMMENT '修改日期',
  `creationDate` date DEFAULT NULL COMMENT '创建日期',
  `value1` varchar(20) DEFAULT NULL,
  `value2` varchar(20) DEFAULT NULL,
  `value3` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`shoppingId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物表';

/*Data for the table `shopping` */

/*Table structure for table `staff` */

DROP TABLE IF EXISTS `staff`;

CREATE TABLE `staff` (
  `staff
Id` int(10) NOT NULL AUTO_INCREMENT COMMENT '人员编号',
  `roleId` int(10) DEFAULT NULL COMMENT '角色编号（外键，与角色表关联）',
  `staffname` varchar(50) DEFAULT NULL COMMENT '姓名',
  `theUserName` varchar(50) DEFAULT NULL COMMENT '用户名',
  `sex` int(10) DEFAULT NULL COMMENT '性别',
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  `cardId` varchar(50) DEFAULT NULL COMMENT '身份证号',
  `qqnumber` int(10) DEFAULT NULL COMMENT 'QQ号码',
  `headPortraitPath` varchar(50) DEFAULT NULL COMMENT '头像地址',
  `currentAddress` varchar(50) DEFAULT NULL COMMENT '现住址',
  `phone` int(10) DEFAULT NULL COMMENT '联系电话',
  `whetherDel` int(10) DEFAULT NULL COMMENT '是否删除（1代表已删除，0代表未删除）',
  `createBy` int(10) DEFAULT NULL COMMENT '创建人 （外键，与人员表关联）',
  `updateBy` int(10) DEFAULT NULL COMMENT '修改人（外键，与人员表关联）',
  `updateDate` date DEFAULT NULL COMMENT '修改日期',
  `createDate` date DEFAULT NULL COMMENT '创建时间',
  `value1` varchar(50) DEFAULT NULL,
  `value2` varchar(50) DEFAULT NULL,
  `value3` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`staff
Id`),
  UNIQUE KEY `staff
Id` (`staff
Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工作人员表';

/*Data for the table `staff` */

/*Table structure for table `template` */

DROP TABLE IF EXISTS `template`;

CREATE TABLE `template` (
  `templateId` int(10) NOT NULL AUTO_INCREMENT COMMENT '模板编号',
  `templateName` varchar(20) DEFAULT NULL COMMENT '模板名称',
  `templateContent` varchar(500) DEFAULT NULL COMMENT '行程内容',
  `whetherDel` int(10) DEFAULT NULL COMMENT '是否删除（1代表已删除，0代表未删除）',
  `creater` int(10) DEFAULT NULL COMMENT '创建人 （外键，与人员表关联）',
  `modifier` int(10) DEFAULT NULL COMMENT '修改人（外键，与人员表关联）',
  `modifiedData` datetime DEFAULT NULL COMMENT '修改日期',
  `creationDate` datetime DEFAULT NULL COMMENT '创建时间',
  `value1` varchar(200) DEFAULT NULL COMMENT '值1',
  `value2` varchar(200) DEFAULT NULL COMMENT '值2',
  `value3` varchar(200) DEFAULT NULL COMMENT '值3',
  PRIMARY KEY (`templateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='模板信息表';

/*Data for the table `template` */

/*Table structure for table `templatehotel` */

DROP TABLE IF EXISTS `templatehotel`;

CREATE TABLE `templatehotel` (
  `templateHotelId` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `templateId` int(10) DEFAULT NULL COMMENT '模板编号（外键，与模板信息表关联）',
  `hotelId` int(10) DEFAULT NULL COMMENT '酒店编号（外键，与酒店表关联）',
  `costPrice` double DEFAULT NULL COMMENT '成本价',
  `offer` double DEFAULT NULL COMMENT '报价',
  `whetherDel` int(10) DEFAULT NULL COMMENT '是否删除（1代表已删除，0代表未删除）',
  `creater` int(10) DEFAULT NULL COMMENT '创建人 （外键，与人员表关联）',
  `modifier` int(10) DEFAULT NULL COMMENT '修改人（外键，与人员表关联）',
  `modifiedData` datetime DEFAULT NULL COMMENT '修改日期',
  `creationDate` datetime DEFAULT NULL COMMENT '创建时间',
  `value1` varchar(200) DEFAULT NULL COMMENT '值1',
  `value2` varchar(200) DEFAULT NULL COMMENT '值2',
  `value3` varchar(200) DEFAULT NULL COMMENT '值3',
  PRIMARY KEY (`templateHotelId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='模板酒店表';

/*Data for the table `templatehotel` */

/*Table structure for table `templatescenicspot` */

DROP TABLE IF EXISTS `templatescenicspot`;

CREATE TABLE `templatescenicspot` (
  `templateScenicSpotId` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `templateId` int(10) DEFAULT NULL COMMENT '模板编号（外键，与模板信息表关联）',
  `scenicSpotId` int(10) DEFAULT NULL COMMENT '景点编号（外键，与景点表关联）',
  `costPrice` double DEFAULT NULL COMMENT '成本价',
  `offer` double DEFAULT NULL COMMENT '报价',
  `whetherDel` int(10) DEFAULT NULL COMMENT '是否删除（1代表已删除，0代表未删除）',
  `creater` int(10) DEFAULT NULL COMMENT '创建人 （外键，与人员表关联）',
  `modifier` int(10) DEFAULT NULL COMMENT '修改人（外键，与人员表关联）',
  `modifiedData` datetime DEFAULT NULL COMMENT '修改日期',
  `creationDate` datetime DEFAULT NULL COMMENT '创建时间',
  `value1` varchar(200) DEFAULT NULL COMMENT '值1',
  `value2` varchar(200) DEFAULT NULL COMMENT '值2',
  `value3` varchar(200) DEFAULT NULL COMMENT '值3',
  PRIMARY KEY (`templateScenicSpotId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='模板景点表';

/*Data for the table `templatescenicspot` */

/*Table structure for table `traffic` */

DROP TABLE IF EXISTS `traffic`;

CREATE TABLE `traffic` (
  `trafficId` int(10) NOT NULL AUTO_INCREMENT COMMENT '交通编号',
  `typeCode` varchar(20) DEFAULT NULL COMMENT '编码（【交通名称类型】外键，与字典表关联）',
  `valueId` int(10) DEFAULT NULL COMMENT '类型编号(与字典表 类型编号进行关联)',
  `departureTime` date DEFAULT NULL COMMENT '出发时间',
  `arrivalTime` date DEFAULT NULL COMMENT '抵达时间',
  `trainNumber` int(10) DEFAULT NULL COMMENT '车次',
  `costprice` double DEFAULT NULL COMMENT '成本价',
  `offer` double DEFAULT NULL COMMENT '报价',
  `whetherDel` int(10) DEFAULT NULL COMMENT '是否删除（1代表已删除，0代表未删除）',
  `createBy` int(10) DEFAULT NULL COMMENT '创建人 （外键，与人员表关联）',
  `updateBy` int(10) DEFAULT NULL COMMENT '修改人（外键，与人员表关联）',
  `updateDate` date DEFAULT NULL COMMENT '修改日期',
  `createDate` date DEFAULT NULL COMMENT '创建时间',
  `value1` varchar(20) DEFAULT NULL,
  `value2` varchar(20) DEFAULT NULL,
  `value3` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`trafficId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交通表';

/*Data for the table `traffic` */

/*Table structure for table `travel` */

DROP TABLE IF EXISTS `travel`;

CREATE TABLE `travel` (
  `travel
Id` int(10) NOT NULL AUTO_INCREMENT COMMENT '组团社编号',
  `travel
Name` varchar(50) DEFAULT NULL COMMENT '组团社名称',
  `personName` varchar(50) DEFAULT NULL COMMENT '负责人名字',
  `personPost` varchar(50) DEFAULT NULL COMMENT '负责人职位',
  `phone` int(10) DEFAULT NULL COMMENT '联系电话',
  `whetherDel` int(10) DEFAULT NULL COMMENT '是否删除（1代表已删除，0代表未删除）',
  `createBy` int(10) DEFAULT NULL COMMENT '创建人 （外键，与人员表关联）',
  `updateBy` int(10) DEFAULT NULL COMMENT '修改人（外键，与人员表关联）',
  `updateDate` date DEFAULT NULL COMMENT '修改日期',
  `createDate` date DEFAULT NULL COMMENT '创建日期',
  `value1` varchar(50) DEFAULT NULL,
  `value2` varchar(50) DEFAULT NULL,
  `value3` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`travel
Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='组团社表';

/*Data for the table `travel` */

/*Table structure for table `vehicletype` */

DROP TABLE IF EXISTS `vehicletype`;

CREATE TABLE `vehicletype` (
  `typeId` int(10) NOT NULL AUTO_INCREMENT COMMENT '类型编号',
  `carRentalId` int(10) DEFAULT NULL COMMENT '公司编号（外键，与租赁公司表关联）',
  `typeName` varchar(50) DEFAULT NULL COMMENT '类型名称',
  `passengervolume` int(10) DEFAULT NULL COMMENT '载客量',
  `costprice` int(10) DEFAULT NULL COMMENT '成本价',
  `offer` int(10) DEFAULT NULL COMMENT '报价',
  `whetherDel` int(10) DEFAULT NULL COMMENT '是否删除（1代表已删除，0代表未删除）',
  `createBy` int(10) DEFAULT NULL COMMENT '创建人 （外键，与人员表关联）',
  `updateBy` int(10) DEFAULT NULL COMMENT '修改人（外键，与人员表关联）',
  `updateDate` date DEFAULT NULL COMMENT '修改日期',
  `createDate` date DEFAULT NULL COMMENT '创建日期',
  `value1` varchar(50) DEFAULT NULL,
  `value2` varchar(50) DEFAULT NULL,
  `value3` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`typeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='车辆类型表';

/*Data for the table `vehicletype` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
