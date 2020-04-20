/*
SQLyog Community v13.1.1 (64 bit)
MySQL - 5.7.27 : Database - web
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`web` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `web`;

/*Table structure for table `adminaccount_account` */

DROP TABLE IF EXISTS `adminaccount_account`;

CREATE TABLE `adminaccount_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_create_dt` datetime(6) DEFAULT NULL,
  `account_update_dt` datetime(6) DEFAULT NULL,
  `account_end_dt` datetime(6) DEFAULT NULL,
  `account_requestor` varchar(100) DEFAULT NULL,
  `account_svr` varchar(100) DEFAULT NULL,
  `account_user` varchar(50) DEFAULT NULL,
  `account_host` varchar(100) DEFAULT NULL,
  `account_pass` varchar(100) DEFAULT NULL,
  `account_hash` varchar(100) DEFAULT NULL,
  `account_grant` varchar(100) DEFAULT NULL,
  `account_grant_with` varchar(100) DEFAULT NULL,
  `account_db` varchar(100) DEFAULT NULL,
  `account_table` varchar(100) DEFAULT NULL,
  `account_info` varchar(100) DEFAULT NULL,
  `account_sql` varchar(200) DEFAULT NULL,
  `account_url` varchar(100) DEFAULT NULL,
  `account_devteam` varchar(100) DEFAULT NULL,
  `account_del_yn` varchar(100) DEFAULT NULL,
  `account_del_dt` datetime(6) DEFAULT NULL,
  `account_del_reason` varchar(100) DEFAULT NULL,
  `account_del_note` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

/*Data for the table `adminaccount_account` */

insert  into `adminaccount_account`(`id`,`account_create_dt`,`account_update_dt`,`account_end_dt`,`account_requestor`,`account_svr`,`account_user`,`account_host`,`account_pass`,`account_hash`,`account_grant`,`account_grant_with`,`account_db`,`account_table`,`account_info`,`account_sql`,`account_url`,`account_devteam`,`account_del_yn`,`account_del_dt`,`account_del_reason`,`account_del_note`) values 
(1,'2020-04-05 20:13:02.000000','2020-04-05 20:13:02.000000',NULL,'이정희','checkdb','deal_detail','10.11.12.%','manager11','*85152F14FA448B3E9D556267D1973254BD9F419D','select, insert, update, delete','N','admdb','*','테스트용','grant select, insert, update, delete on admdb.* to \'deal_detail\'@\'10.11.12.%\' identified by \'manage11\';','JIRA-1111','인프라팀','N',NULL,'',''),
(2,'2020-04-05 20:15:30.000000','2020-04-05 20:15:30.000000',NULL,'이정희','checkdb','etl_user','10.11.12.88','manager11','*85152F14FA448B3E9D556267D1973254BD9F419D','select','N','admdb','*','테스트용','grant select, insert, update, delete on admdb.* to \'etl_user\'@\'10.11.12.%\' identified by \'manage11\';','JIRA-1111','인프라팀','N',NULL,'',''),
(3,'2020-04-05 20:15:31.000000','2020-04-05 20:15:31.000000',NULL,'이정희','checkdb','test_manage','10.11.12.%','manager11','*85152F14FA448B3E9D556267D1973254BD9F419D','select, insert, update, delete','N','admdb','*','테스트용','grant select, insert, update, delete on admdb.* to \'deal_detail\'@\'10.11.12.%\' identified by \'manage11\';','JIRA-1111','인프라팀','N',NULL,'',''),
(4,'2020-04-05 20:15:31.000000','2020-04-05 20:15:31.000000',NULL,'이정희','checkdb','gytjdlee','10.11.%','manager11','*85152F14FA448B3E9D556267D1973254BD9F419D','select, insert, update, delete','N','admdb','*','테스트용','grant select, insert, update, delete on admdb.* to \'deal_detail\'@\'10.11.12.%\' identified by \'manage11\';','JIRA-1111','인프라팀','N',NULL,'',''),
(5,'2020-04-05 20:15:31.000000','2020-04-05 20:15:31.000000',NULL,'이정희','checkdb','test_manage','10.11.%.%','manager11','*85152F14FA448B3E9D556267D1973254BD9F419D','select, insert, update, delete','N','admdb','*','테스트용','grant select, insert, update, delete on admdb.* to \'deal_detail\'@\'10.11.12.%\' identified by \'manage11\';','JIRA-1111','인프라팀','N',NULL,'',''),
(6,'2020-04-05 20:15:31.000000','2020-04-05 20:15:31.000000',NULL,'이정희','checkdb','deal_detail','10.11.12.%','manager11','*85152F14FA448B3E9D556267D1973254BD9F419D','select, insert, update, delete','N','admdb','*','테스트용','grant select, insert, update, delete on admdb.* to \'deal_detail\'@\'10.11.12.%\' identified by \'manage11\';','JIRA-1111','인프라팀','N',NULL,'',''),
(7,'2020-04-05 20:15:31.000000','2020-04-05 20:15:31.000000',NULL,'이정희','checkdb','deal_detail','10.11.12.%','manager11','*85152F14FA448B3E9D556267D1973254BD9F419D','select, insert, update, delete','N','admdb','*','테스트용','grant select, insert, update, delete on admdb.* to \'deal_detail\'@\'10.11.12.%\' identified by \'manage11\';','JIRA-1111','인프라팀','N',NULL,'',''),
(8,'2020-04-05 20:15:31.000000','2020-04-05 20:15:31.000000',NULL,'이정희','checkdb','deal_detail','10.11.12.%','manager11','*85152F14FA448B3E9D556267D1973254BD9F419D','select, insert, update, delete','N','admdb','*','테스트용','grant select, insert, update, delete on admdb.* to \'deal_detail\'@\'10.11.12.%\' identified by \'manage11\';','JIRA-1111','인프라팀','N',NULL,'',''),
(9,'2020-04-05 20:15:31.000000','2020-04-05 20:15:31.000000',NULL,'이정희','checkdb','deal_detail','10.11.12.%','manager11','*85152F14FA448B3E9D556267D1973254BD9F419D','select, insert, update, delete','N','admdb','*','테스트용','grant select, insert, update, delete on admdb.* to \'deal_detail\'@\'10.11.12.%\' identified by \'manage11\';','JIRA-1111','인프라팀','N',NULL,'',''),
(10,'2020-04-05 20:15:31.000000','2020-04-05 20:15:31.000000',NULL,'이정희','checkdb','deal_detail','10.11.12.%','manager11','*85152F14FA448B3E9D556267D1973254BD9F419D','select, insert, update, delete','N','admdb','*','테스트용','grant select, insert, update, delete on admdb.* to \'deal_detail\'@\'10.11.12.%\' identified by \'manage11\';','JIRA-1111','인프라팀','N',NULL,'',''),
(11,'2020-04-05 20:15:31.000000','2020-04-05 20:15:31.000000',NULL,'이정희','checkdb','deal_detail','10.11.12.%','manager11','*85152F14FA448B3E9D556267D1973254BD9F419D','select, insert, update, delete','N','admdb','*','테스트용','grant select, insert, update, delete on admdb.* to \'deal_detail\'@\'10.11.12.%\' identified by \'manage11\';','JIRA-1111','인프라팀','N',NULL,'',''),
(12,'2020-04-05 20:15:31.000000','2020-04-05 20:15:31.000000',NULL,'이정희','checkdb','deal_detail','10.11.12.%','manager11','*85152F14FA448B3E9D556267D1973254BD9F419D','select, insert, update, delete','N','admdb','*','테스트용','grant select, insert, update, delete on admdb.* to \'deal_detail\'@\'10.11.12.%\' identified by \'manage11\';','JIRA-1111','인프라팀','N',NULL,'',''),
(13,'2020-04-05 23:26:04.000000','2020-04-19 22:58:12.348206',NULL,'김홍도','checkdb','deal_detail','10.11.12.%','manager11','*85152F14FA448B3E9D556267D1973254BD9F419D','select, insert, update, delete','N','admdb','*','테스트용','grant select, insert, update, delete on admdb.* to \'deal_detail\'@\'10.11.12.%\' identified by \'manage11\';','JIRA-1111','인프라팀','N',NULL,'',''),
(14,'2020-04-05 23:26:10.000000','2020-04-05 23:26:10.000000',NULL,'신윤복','checkdb','deal_detail','10.11.12.%','manager11','*85152F14FA448B3E9D556267D1973254BD9F419D','select, insert, update, delete','N','admdb','*','테스트용','grant select, insert, update, delete on admdb.* to \'deal_detail\'@\'10.11.12.%\' identified by \'manage11\';','JIRA-1111','인프라팀','N',NULL,'',''),
(17,'2020-04-06 22:41:15.342612','2020-04-06 22:41:15.342612',NULL,'테스트','intradb','test_hong','10.11.11.%','Manager!1',NULL,'select, update','N','admdb','*','테스트용',NULL,'JIRA-1000','테스트팀','N',NULL,'',''),
(18,'2020-04-06 23:10:53.563079','2020-04-06 23:10:53.563079',NULL,'김홍도','netpiondb','test_netpion','10.11.12.%','Hong!!e',NULL,'insert, update, delete','N','netpion','*','테스트용',NULL,'WIKI-3333','','N',NULL,'',''),
(19,'2020-04-11 23:38:32.334328','2020-04-11 23:38:32.334328',NULL,'희나리','db-a','deal_test','10.11.18.%','hoho!!kKee@',NULL,'select, insert, update, delete','N','mmsdb','*','테스트1',NULL,'JIRA-0001','','N',NULL,'',''),
(29,'2020-04-12 11:36:51.412984','2020-04-12 11:36:51.412984',NULL,'이정희','intradb','intra_write','10.11.11.%','showmE!!@',NULL,'select, delete','N','admdb','*','테슷흐','/*JIRA-1111*/ grant select, delete on admdb.* to \'intra_write\'@\'10.11.11.%\' identified by \'showmE!!@\';','JIRA-1111','','N',NULL,'',''),
(30,'2020-04-12 20:03:02.603490','2020-04-12 21:42:03.497751',NULL,'신윤복','db2','showme','10.11.10.%','Mssdf@31',NULL,'select, update','N','admdb','*','테슷','/*JIRA-10000*/ grant select, update on admdb.* to \'showme\'@\'10.11.10.%\' identified by \'Mssdf@31\';','JIRA-10000','','N',NULL,'',''),
(31,'2020-04-12 20:04:15.339767','2020-04-19 22:58:47.080828',NULL,'신윤복','db2','showme','10.11.10.%','showmE!!@',NULL,'select, update','N','admdb','*','테스트용','/*JIRA-3333*/ grant select, update on admdb.* to \'showme\'@\'10.11.10.%\' identified by \'showmE!!@\';','JIRA-3333','서비스개발팀','N',NULL,'',''),
(32,'2020-04-12 20:06:34.638491','2020-04-20 11:31:21.150128',NULL,'신윤복','db1','showme','10.11.20.%','hoho!!kKee@',NULL,'select, update, delete','N','admindb','*','테슷','/*JIRA-0111*/ grant select, update, delete on admindb.* to \'showme\'@\'10.11.20.%\' identified by \'hoho!!kKee@\';','JIRA-0111','서비스개발팀','N',NULL,'',''),
(33,'2020-04-20 10:37:51.510934','2020-04-20 22:48:30.206676',NULL,'이정희','db-a','gytjdlee','10.11.11.11','gytjdlee',NULL,'select, update','N','admindb','*','테스트','/*JIRA-0000*/ grant select, update on admindb.* to \'gytjdlee\'@\'10.11.11.11\' identified by \'gytjdlee\';','JIRA-0000','인프라팀','N',NULL,'','');

/*Table structure for table `adminaccount_accountrepository` */

DROP TABLE IF EXISTS `adminaccount_accountrepository`;

CREATE TABLE `adminaccount_accountrepository` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_dt` datetime(6) NOT NULL,
  `repository_team` varchar(20) DEFAULT NULL,
  `repository_name` varchar(100) DEFAULT NULL,
  `repository_url` varchar(250) DEFAULT NULL,
  `account_user` varchar(50) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `info` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8;

/*Data for the table `adminaccount_accountrepository` */

insert  into `adminaccount_accountrepository`(`id`,`create_dt`,`repository_team`,`repository_name`,`repository_url`,`account_user`,`url`,`info`) values 
(1,'2018-07-20 00:00:00.000000','TPIN셀','service_tmon_tpin_api','/TPIN/repos/service_tmon_tpin_api/browse','tpin','ARCH-6591',''),
(2,'2018-07-20 00:00:00.000000','TPIN셀','project_tmon_tpin (api.ntpin)','/TPIN/repos/project_tmon_tpin/browse/api.ntpin','ntpin','ARCH-6591',''),
(3,'2018-07-20 00:00:00.000000','TPIN셀','project_tmon_tpin (pipe.tpin)','/TPIN/repos/project_tmon_tpin/browse/pipe.tpin','pipetpin','ARCH-6591',''),
(4,'2018-07-20 00:00:00.000000','검색셀','service_tmon_search_api','/SCH/repos/service_tmon_search_api/browse','search','ARCH-6591',''),
(5,'2018-07-20 00:00:00.000000','검색셀','service_tmon_search_extra_api','/SCH/repos/service_tmon_search_extra_api/browse','search_01','ARCH-6591',''),
(6,'2018-07-20 00:00:00.000000','검색셀','service_tmon_search_log_consumer_api','/SCH/repos/service_tmon_search_log_consumer_api/browse','search_02','ARCH-6591',''),
(7,'2018-07-20 00:00:00.000000','검색셀','service_tmon_search_stat_api','/SCH/repos/service_tmon_search_stat_api/browse','search_03','ARCH-6591',''),
(8,'2018-07-20 00:00:00.000000','결제셀','service_tmon_pay_api','/PAY/repos/service_tmon_pay_api/browse','pay','ARCH-6591',''),
(9,'2018-07-20 00:00:00.000000','기획전셀','service_tmon_plan_api','/CELLPLAN/repos/service_tmon_plan_api/browse','plan','ARCH-6591',''),
(10,'2018-07-20 00:00:00.000000','딜관리셀','service_tmon_deal_manage_api','/DPLF/repos/service_tmon_deal_manage_api/browse','deal_manage','ARCH-6591',''),
(11,'2018-07-20 00:00:00.000000','딜관리셀','service_tmon_deal_manage_ext_link_api','/DPLF/repos/service_tmon_deal_manage_ext_link_api/browse','deal_manage_01','ARCH-6591',''),
(12,'2018-07-20 00:00:00.000000','딜관리셀','service_tmon_deal_standard_api','/DPLF/repos/service_tmon_deal_standard_api/browse','deal_standard','ARCH-6591',''),
(13,'2018-07-20 00:00:00.000000','딜관리셀','service_tmon_imageinfra_api','/DPLF/repos/service_tmon_imageinfra_api/browse','imageinfra','ARCH-6591',''),
(14,'2018-07-20 00:00:00.000000','딜관리셀','service_tmon_ocr_api','/DPLF/repos/service_tmon_ocr_api/browse','ocr','ARCH-6591',''),
(15,'2018-07-20 00:00:00.000000','딜상세셀','service_tmon_deal_detail_api','/CELLDETAIL/repos/service_tmon_deal_detail_api/browse','deal_detail','ARCH-6591',''),
(16,'2018-07-20 00:00:00.000000','딜상세셀','service_tmon_deal_detailsvc_api','','deal_detailsvc','ARCH-6591','repository 미존재 (2019-03-14 확인)'),
(17,'2018-07-20 00:00:00.000000','딜코어셀','service_tmon_dealbuilder_api','/DEALCORECELL/repos/service_tmon_dealbuilder_api/browse','dealbuilder','ARCH-6591',''),
(18,'2018-07-20 00:00:00.000000','딜코어셀','service_tmon_dealinfo_api','/DEALCORECELL/repos/service_tmon_dealinfo_api/browse','dealinfo','ARCH-6591',''),
(19,'2018-07-20 00:00:00.000000','딜코어셀','service_tmon_dealmax_api','/DEALCORECELL/repos/service_tmon_dealmax_api/browse','dealmax','ARCH-6591',''),
(20,'2018-07-20 00:00:00.000000','딜코어셀','service_tmon_dealpack_api','/DEALCORECELL/repos/service_tmon_dealpack_api/browse','dealpack','ARCH-6591',''),
(21,'2018-07-20 00:00:00.000000','마케팅셀','service_tmon_coupon_api','/MKT/repos/service_tmon_coupon_api/browse','coupon','ARCH-6591',''),
(22,'2018-07-20 00:00:00.000000','마케팅셀','service_tmon_deal_clip_api','/MKT/repos/service_tmon_deal_clip_api/browse','deal_clip','ARCH-6591',''),
(23,'2018-07-20 00:00:00.000000','마케팅셀','service_tmon_discount_api','/MKT/repos/service_tmon_discount_api/browse','discount','ARCH-6591',''),
(24,'2018-07-20 00:00:00.000000','마케팅셀','service_tmon_marketing_api','/MKT/repos/service_tmon_marketing_api/browse','marketing','ARCH-6591',''),
(25,'2018-07-20 00:00:00.000000','마케팅셀','service_tmon_marketing_persona_api','/MKT/repos/service_tmon_marketing_persona_api/browse','marketing_01','ARCH-6591',''),
(26,'2018-07-20 00:00:00.000000','마케팅셀','service_tmon_metachannel_api','/MKT/repos/service_tmon_metachannel_api/browse','metachannel','ARCH-6591',''),
(27,'2018-07-20 00:00:00.000000','마케팅셀','service_tmon_push_alarm_api','/MKT/repos/service_tmon_push_alarm_api/browse','push_alarm','ARCH-6591',''),
(28,'2018-07-20 00:00:00.000000','마케팅셀','service_tmon_push_api','/MKT/repos/service_tmon_push_api/browse','push','ARCH-6591',''),
(29,'2018-07-20 00:00:00.000000','물류셀','service_tmon_tda_api','/DIST/repos/service_tmon_tda_api/browse','tda','ARCH-6591',''),
(30,'2018-07-20 00:00:00.000000','물류셀','intra_tmon_tms_api','/DIST/repos/intra_tmon_tms_api/browse','tms','ARCH-6591',''),
(31,'2018-07-20 00:00:00.000000','물류셀','service_tmon_wms_api','/DIST/repos/service_tmon_wms_api/browse','wms','ARCH-6591',''),
(32,'2018-07-20 00:00:00.000000','물류셀','service_tmon_wmstool_api','/DIST/repos/service_tmon_wmstool_api/browse','wmstool','ARCH-6591',''),
(33,'2018-07-20 00:00:00.000000','배송셀','service_tmon_delivery_api','/DEL/repos/service_tmon_delivery_api/browse','delivery','ARCH-6591',''),
(34,'2018-07-20 00:00:00.000000','신사업개발랩','service_tmon_media_api','/NEW/repos/service_tmon_media_api/browse','media','ARCH-6591',''),
(35,'2018-07-20 00:00:00.000000','신사업개발랩','service_tmon_media_schedule_api','/NEW/repos/service_tmon_media_schedule_api/browse','media_01','ARCH-6591',''),
(36,'2018-07-20 00:00:00.000000','연동셀','service_tmon_interwork_external_api','/INTERWORK/repos/service_tmon_interwork_external_api/browse','interwork_ext','ARCH-6591',''),
(37,'2018-07-20 00:00:00.000000','연동셀','service_tmon_interwork_internal_api','/INTERWORK/repos/service_tmon_interwork_internal_api/browse','interwork_int','ARCH-6591',''),
(38,'2018-07-20 00:00:00.000000','정산셀','service_tmon_settlement_api','/ACC/repos/service_tmon_settlement_api/browse','settlement','ARCH-6591',''),
(39,'2018-07-20 00:00:00.000000','주문셀','service_tmon_bill_api','/ORD/repos/service_tmon_bill_api/browse','bill','ARCH-6591',''),
(40,'2018-07-20 00:00:00.000000','주문셀','service_tmon_order_api','/ORD/repos/service_tmon_order_api/browse','order','ARCH-6591',''),
(41,'2018-07-20 00:00:00.000000','카테고리셀','service_tmon_category_list_api','/CELLCAT/repos/service_tmon_category_list_api/browse','category_list','ARCH-6591',''),
(42,'2018-07-20 00:00:00.000000','카테고리셀','service_tmon_search_cf_api','/CELLCAT/repos/service_tmon_search_cf_api/browse','search_cf','ARCH-6591',''),
(43,'2018-07-20 00:00:00.000000','카테고리셀','service_tmon_tab_api','/CELLCAT/repos/service_tmon_tab_api/browse','tab','ARCH-6591',''),
(44,'2018-07-20 00:00:00.000000','항공셀','service_tmon_airtkt_api','/AIR/repos/service_tmon_airtkt_api/browse','airtkt','ARCH-6591',''),
(45,'2018-07-20 00:00:00.000000','항공셀','service_tmon_airtkt_agency_api','/AIR/repos/service_tmon_airtkt_agency_api/browse','airtkt_01','ARCH-6591',''),
(46,'2018-07-20 00:00:00.000000','항공셀','service_tmon_airtkt_awp_api','/AIR/repos/service_tmon_airtkt_awp_api/browse','airtkt_02','ARCH-6591',''),
(47,'2018-07-20 00:00:00.000000','항공셀','service_tmon_airtkt_common_api','/AIR/repos/service_tmon_airtkt_common_api/browse','airtkt_03','ARCH-6591',''),
(48,'2018-07-20 00:00:00.000000','항공셀','service_tmon_airtkt_expansion_api','/AIR/repos/service_tmon_airtkt_expansion_api/browse','airtkt_04','ARCH-6591',''),
(49,'2018-07-20 00:00:00.000000','항공셀','service_tmon_airtkt_gws_api','/AIR/repos/service_tmon_airtkt_gws_api/browse','airtkt_05','ARCH-6591',''),
(50,'2018-07-20 00:00:00.000000','항공셀','service_tmon_airtkt_meta_api','/AIR/repos/service_tmon_airtkt_meta_api/browse','airtkt_06','ARCH-6591',''),
(51,'2018-07-20 00:00:00.000000','항공셀','service_tmon_airtkt_tsc_api','/AIR/repos/service_tmon_airtkt_tsc_api/browse','airtkt_07','ARCH-6591',''),
(52,'2018-07-20 00:00:00.000000','항공셀','service_tmon_airtkt_wxp_api','/AIR/repos/service_tmon_airtkt_wxp_api/browse','airtkt_08','ARCH-6591',''),
(53,'2018-07-20 00:00:00.000000','홈셀','service_tmon_dibs_api','/ORD/repos/service_tmon_dibs_api/browse','dibs','ARCH-6591',''),
(54,'2018-07-20 00:00:00.000000','홈셀','service_tmon_home_api','/CELLHOME/repos/service_tmon_home_api/browse','home','ARCH-6591',''),
(55,'2018-07-20 00:00:00.000000','홈셀','service_tmon_recommend_api','/RECE/repos/service_tmon_recommend_api/browse','recommend','ARCH-6591',''),
(56,'2018-07-20 00:00:00.000000','회원셀','service_tmon_contract_api','/MEM/repos/service_tmon_contract_api/browse','contract','ARCH-6591',''),
(57,'2018-07-20 00:00:00.000000','회원셀','service_tmon_member_api','/MEM/repos/service_tmon_member_api/browse','member','ARCH-6591',''),
(58,'2018-07-20 00:00:00.000000','회원셀','service_tmon_membership_api','/MEM/repos/service_tmon_membership_api/browse','membership','ARCH-6591',''),
(59,'2018-07-20 00:00:00.000000','회원셀','service_tmon_partner_api','/MEM/repos/service_tmon_partner_api/browse','partner','ARCH-6591',''),
(60,'2018-07-24 00:00:00.000000','딜관리셀','spc_tmon_deal','/DPLF/repos/spc_tmon_deal/browse','spc_deal','ARCH-6609',''),
(61,'2018-08-14 00:00:00.000000','TPIN셀','admin_tmon_tpin','/TPIN/repos/admin_tmon_tpin/browse','tpin_a','ARCH-6681',''),
(62,'2018-08-14 00:00:00.000000','TPIN셀','project_tmon_tpin (admin.ntpin)','/TPIN/repos/project_tmon_tpin/browse/admin.ntpin','ntpin_a','ARCH-6681',''),
(63,'2018-08-14 00:00:00.000000','TPIN셀','batch_tmon_tpin','/TPIN/repos/batch_tmon_tpin/browse','tpin_b','ARCH-6681',''),
(64,'2018-08-14 00:00:00.000000','검색셀','batch_tmon_searchindex','/SCH/repos/batch_tmon_searchindex/browse','searchindex_b','ARCH-6681',''),
(65,'2018-08-14 00:00:00.000000','검색셀','admin_tmon_search','/SCH/repos/admin_tmon_search/browse','search_a','ARCH-6681',''),
(66,'2018-08-14 00:00:00.000000','검색셀','admin_tmon_search_nlp','/SCH/repos/admin_tmon_search_nlp/browse','search_a1','ARCH-6681',''),
(67,'2018-08-14 00:00:00.000000','검색셀','admin_tmon_search_stat','/SCH/repos/admin_tmon_search_stat/browse','search_a2','ARCH-6681',''),
(68,'2018-08-14 00:00:00.000000','검색셀','batch_tmon_search_services','/SCH/repos/batch_tmon_search_services/browse','search_b1','ARCH-6681',''),
(69,'2018-08-14 00:00:00.000000','검색셀','project_search_service_index (batch_tmon_search_backend_index)','/SCH/repos/project_search_service_index/browse/batch_tmon_search_backend_index','search_b2','ARCH-6681',''),
(70,'2018-08-14 00:00:00.000000','검색셀','project_search_service_index (batch_tmon_search_dealtag)','/SCH/repos/project_search_service_index/browse/batch_tmon_search_dealtag','search_b3','ARCH-6681',''),
(71,'2018-08-14 00:00:00.000000','검색셀','project_search_service_index (batch_tmon_search_new_index)','/SCH/repos/project_search_service_index/browse/batch_tmon_search_new_index','search_b4','ARCH-6681',''),
(72,'2018-08-14 00:00:00.000000','검색셀','project_search_service_index (batch_tmon_search_review)','/SCH/repos/project_search_service_index/browse/batch_tmon_search_review','search_b5','ARCH-6681',''),
(73,'2018-08-14 00:00:00.000000','검색셀','project_search_service_index (batch_tmon_search_sticker)','/SCH/repos/project_search_service_index/browse/batch_tmon_search_sticker','search_b6','ARCH-6681',''),
(74,'2018-08-14 00:00:00.000000','검색셀','project_search_service_index (batch_tmon_search_tmon_popularity)','/SCH/repos/project_search_service_index/browse/batch_tmon_search_tmon_popularity','search_b7','ARCH-6681',''),
(75,'2018-08-14 00:00:00.000000','검색셀','project_search_service_index (batch_tmon_search_tpin)','/SCH/repos/project_search_service_index/browse/batch_tmon_search_tpin','search_b8','ARCH-6681',''),
(76,'2018-08-14 00:00:00.000000','검색셀','project_search_extra_index (batch_tmon_search_banner_keyword)','/SCH/repos/project_search_extra_index/browse/batch_tmon_search_banner_keyword','search_b9','ARCH-6681',''),
(77,'2018-08-14 00:00:00.000000','검색셀','project_search_extra_index (batch_tmon_search_review_file)','/SCH/repos/project_search_extra_index/browse/batch_tmon_search_review_file','search_ba','ARCH-6681',''),
(78,'2018-08-14 00:00:00.000000','검색셀','project_search_analysis_index (batch_tmon_search_autocomp_data)','/SCH/repos/project_search_analysis_index/browse/batch_tmon_search_autocomp_data','search_bb','ARCH-6681',''),
(79,'2018-08-14 00:00:00.000000','검색셀','project_search_analysis_index (batch_tmon_search_keyword_categories_weight)','/SCH/repos/project_search_analysis_index/browse/batch_tmon_search_keyword_categories_weight','search_bc','ARCH-6681',''),
(80,'2018-08-14 00:00:00.000000','검색셀','project_search_analysis_index (batch_tmon_search_map_calculation)','/SCH/repos/project_search_analysis_index/browse/batch_tmon_search_map_calculation','search_bd','ARCH-6681',''),
(81,'2018-08-14 00:00:00.000000','검색셀','project_search_extra_index (batch_tmon_search_alarm_notifier)','/SCH/repos/project_search_extra_index/browse/batch_tmon_search_alarm_notifier','search_be','ARCH-6681',''),
(82,'2018-08-14 00:00:00.000000','검색셀','project_search_extra_index (batch_tmon_search_popular_keyword)','/SCH/repos/project_search_extra_index/browse/batch_tmon_search_popular_keyword','search_bf','ARCH-6681',''),
(83,'2018-08-14 00:00:00.000000','결제셀','admin_tmon_pay','/PAY/repos/admin_tmon_pay/browse','pay_a','ARCH-6681',''),
(84,'2018-08-14 00:00:00.000000','결제셀','batch_tmon_pay','','pay_b','ARCH-6681','repository 미존재 (2019-03-14 확인)'),
(85,'2018-08-14 00:00:00.000000','결제셀','batch_tmon_point','/PAY/repos/batch_tmon_point/browse','point_b','ARCH-6681',''),
(86,'2018-08-14 00:00:00.000000','딜관리셀','admin_tmon_deal_edtior','/DPLF/repos/admin_tmon_deal_edtior/browse','deal_edtior_a','ARCH-6681',''),
(87,'2018-08-14 00:00:00.000000','딜관리셀','admin_tmon_deal_manage','/DPLF/repos/admin_tmon_deal_manage/browse','deal_manage_a','ARCH-6681',''),
(88,'2018-08-14 00:00:00.000000','딜관리셀','admin_tmon_deal_svcadmin','/DPLF/repos/admin_tmon_deal_svcadmin/browse','deal_svcadmin_a','ARCH-6681',''),
(89,'2018-08-14 00:00:00.000000','딜관리셀','admin_tmon_direct_deal','/DPLF/repos/admin_tmon_direct_deal/browse','direct_deal_a','ARCH-6681',''),
(90,'2018-08-14 00:00:00.000000','딜관리셀','admin_tmon_openmarket','/DPLF/repos/admin_tmon_openmarket/browse','openmarket_a','ARCH-6681',''),
(91,'2018-08-14 00:00:00.000000','딜관리셀','batch_tmon_dealpf','/DPLF/repos/batch_tmon_dealpf/browse','dealpf_b','ARCH-6681',''),
(92,'2018-08-14 00:00:00.000000','딜코어셀','batch_tmon_dealinfo','/DEALCORECELL/repos/batch_tmon_dealinfo/browse','dealinfo_b','ARCH-6681',''),
(93,'2018-08-14 00:00:00.000000','마케팅셀','admin_tmon_benefit','/MKT/repos/admin_tmon_benefit/browse','benefit_a','ARCH-6681',''),
(94,'2018-08-14 00:00:00.000000','마케팅셀','admin_tmon_mailcreator','/MKT/repos/admin_tmon_mailcreator/browse','mailcreator_a','ARCH-6681',''),
(95,'2018-08-14 00:00:00.000000','마케팅셀','batch_tmon_marketing','/MKT/repos/batch_tmon_marketing/browse','marketing_b','ARCH-6681',''),
(96,'2018-08-14 00:00:00.000000','마케팅셀','batch_tmon_marketing_persona','/MKT/repos/batch_tmon_marketing_persona/browse','marketing_b1','ARCH-6681',''),
(97,'2018-08-14 00:00:00.000000','마케팅셀','batch_tmon_marketing_push','/MKT/repos/batch_tmon_marketing_push/browse','marketing_push_b','ARCH-6681',''),
(98,'2018-08-14 00:00:00.000000','마케팅셀','admin_tmon_metachannel','/MKT/repos/admin_tmon_metachannel/browse','metachannel_a','ARCH-6681',''),
(99,'2018-08-14 00:00:00.000000','마케팅셀','batch_tmon_metachannel','/MKT/repos/batch_tmon_metachannel/browse','metachannel_b','ARCH-6681',''),
(100,'2018-08-14 00:00:00.000000','마케팅셀','batch_tmon_metachannel_manage','/MKT/repos/batch_tmon_metachannel_manage/browse','metachannel_b1','ARCH-6681',''),
(101,'2018-08-14 00:00:00.000000','마케팅셀','batch_tmon_push','/MKT/repos/batch_tmon_push/browse','push_b','ARCH-6681',''),
(102,'2018-08-14 00:00:00.000000','마케팅셀','batch_tmon_push_campaign','/MKT/repos/batch_tmon_push_campaign/browse','push_campaign_b','ARCH-6681',''),
(103,'2018-08-14 00:00:00.000000','마케팅셀','batch_tmon_rss','/MKT/repos/batch_tmon_rss/browse','rss_b','ARCH-6681',''),
(104,'2018-08-14 00:00:00.000000','물류셀','admin_tmon_wms','/DIST/repos/admin_tmon_wms/browse','wms_a','ARCH-6681',''),
(105,'2018-08-14 00:00:00.000000','물류셀','batch_tmon_wms','/DIST/repos/batch_tmon_wms/browse','wms_b','ARCH-6681',''),
(106,'2018-08-14 00:00:00.000000','배송셀','admin_tmon_delivery','/DEL/repos/admin_tmon_delivery/browse','delivery_a','ARCH-6681',''),
(107,'2018-08-14 00:00:00.000000','배송셀','batch_tmon_delivery','/DEL/repos/batch_tmon_delivery/browse','delivery_b','ARCH-6681',''),
(108,'2018-08-14 00:00:00.000000','정산셀','admin_tmon_fnstat','/ACC/repos/admin_tmon_fnstat/browse','fnstat_a','ARCH-6681',''),
(109,'2018-08-14 00:00:00.000000','정산셀','admin_tmon_settlement','/ACC/repos/admin_tmon_settlement/browse','settlement_a','ARCH-6681',''),
(110,'2018-08-14 00:00:00.000000','정산셀','batch_tmon_revenue','/ACC/repos/batch_tmon_revenue/browse','revenue_b','ARCH-6681',''),
(111,'2018-08-14 00:00:00.000000','정산셀','batch_tmon_settlement','/ACC/repos/batch_tmon_settlement/browse','settlement_b','ARCH-6681',''),
(112,'2018-08-14 00:00:00.000000','회원셀','admin_tmon_contract','/MEM/repos/admin_tmon_contract/browse','contract_a','ARCH-6681',''),
(113,'2018-08-14 00:00:00.000000','회원셀','admin_tmon_member','/MEM/repos/admin_tmon_member/browse','member_a','ARCH-6681',''),
(114,'2018-08-14 00:00:00.000000','회원셀','admin_tmon_membership','/MEM/repos/admin_tmon_membership/browse','membership_a','ARCH-6681',''),
(115,'2018-08-14 00:00:00.000000','회원셀','admin_tmon_partner','/MEM/repos/admin_tmon_partner/browse','partner_a','ARCH-6681',''),
(116,'2018-08-14 00:00:00.000000','회원셀','batch_tmon_member','/MEM/repos/batch_tmon_member/browse','member_b','ARCH-6681',''),
(117,'2018-08-14 00:00:00.000000','회원셀','batch_tmon_membership','/MEM/repos/batch_tmon_membership/browse','membership_b','ARCH-6681',''),
(118,'2018-08-14 00:00:00.000000','주문셀','admin_tmon_order','/ORD/repos/admin_tmon_order/browse','order_a','ARCH-6681',''),
(119,'2018-08-14 00:00:00.000000','주문셀','batch_tmon_order','/ORD/repos/batch_tmon_order/browse','order_b','ARCH-6681',''),
(120,'2018-08-14 00:00:00.000000','기획전셀','admin_tmon_plan','/CELLPLAN/repos/admin_tmon_plan/browse','plan_a','ARCH-6681',''),
(121,'2018-08-14 00:00:00.000000','기획전셀','batch_tmon_plan','/CELLPLAN/repos/batch_tmon_plan/browse','plan_b','ARCH-6681',''),
(122,'2018-08-14 00:00:00.000000','기획전셀','batch_tmon_plan_common','/CELLPLAN/repos/batch_tmon_plan_common/browse','plan_b1','ARCH-6681',''),
(123,'2018-08-14 00:00:00.000000','딜상세셀','admin_tmon_deal_detail','/CELLDETAIL/repos/admin_tmon_deal_detail/browse','deal_detail_a','ARCH-6681',''),
(124,'2018-08-14 00:00:00.000000','딜상세셀','batch_tmon_deal_detail','/CELLDETAIL/repos/batch_tmon_deal_detail/browse','deal_detail_b','ARCH-6681',''),
(125,'2018-08-14 00:00:00.000000','카테고리셀','admin_tmon_category_list','/CELLCAT/repos/admin_tmon_category_list/browse','category_list_a','ARCH-6681',''),
(126,'2018-08-14 00:00:00.000000','카테고리셀','admin_tmon_tab','','tab_a','ARCH-6681','repository 미존재 (2019-03-14 확인)'),
(127,'2018-08-14 00:00:00.000000','카테고리셀','batch_tmon_category_list','','category_list_b','ARCH-6681','repository 미존재 (2019-03-14 확인)'),
(128,'2018-08-14 00:00:00.000000','카테고리셀','batch_tmon_search_cf_index','/CELLCAT/repos/batch_tmon_search_cf_index/browse','search_cf_b1','ARCH-6681',''),
(129,'2018-08-14 00:00:00.000000','홈셀','admin_tmon_home','','home_a','ARCH-6681','repository 미존재 (2019-03-14 확인)'),
(130,'2018-08-14 00:00:00.000000','홈셀','admin_tmon_recommend','/RECE/repos/admin_tmon_recommend/browse','recommend_a','ARCH-6681',''),
(131,'2018-08-21 00:00:00.000000','CS셀','service_tmon_cs_api','/PCS/repos/service_tmon_cs_api/browse','cs','ARCH-6709',''),
(132,'2018-09-04 00:00:00.000000','신사업개발랩','service_tmon_party_api','/NEW/repos/service_tmon_party_api/browse','party','ARCH-6776',''),
(133,'2018-09-04 00:00:00.000000','신사업개발랩','admin_tmon_party','/NEW/repos/admin_tmon_party/browse','party_a','ARCH-6776',''),
(134,'2018-09-06 00:00:00.000000','신사업개발랩','service_tmon_party_ui','/NEW/repos/service_tmon_party_ui/browse','party_01','ARCH-6780',''),
(135,'2018-09-06 00:00:00.000000','물류셀','intra_tmon_tms_engine','/DIST/repos/intra_tmon_tms_engine/browse','tms_engine','ARCH-6791',''),
(136,'2018-09-07 00:00:00.000000','딜관리셀','serviceadmin','','dlpf_serviceadm','ARCH-6808','#PHP'),
(137,'2018-09-07 00:00:00.000000','딜관리셀','billadmin','','dlpf_billadm','ARCH-6808','#PHP'),
(138,'2018-09-07 00:00:00.000000','딜관리셀','billrpc','','dlpf_billrpc','ARCH-6808','#PHP'),
(139,'2018-10-05 00:00:00.000000','신사업개발랩','batch_tmon_party','/NEW/repos/batch_tmon_party/browse','party_b','ARCH-6921',''),
(140,'2018-10-16 00:00:00.000000','정산셀','billkpi-batch','','acc_billkpibat','ARCH-6969','#PHP / bbat'),
(141,'2018-10-24 00:00:00.000000','표준화랩_웹서비스파트','service_tmon_deal_api','/WEB/repos/service_tmon_deal_api/browse','deal','ARCH-7004',''),
(142,'2018-10-31 00:00:00.000000','회원셀','spc_tmon_partner_ui','/MEM/repos/spc_tmon_partner_ui/browse','spc_partner','ARCH-7031',''),
(143,'2018-11-16 00:00:00.000000','표준화개발유닛','service_tmon_auth_api','/SDUAPI/repos/service_tmon_auth_api/browse','auth','ARCH-7116',''),
(144,'2018-11-21 00:00:00.000000','베트남사업소','tmon_snoopy_back','/DATA/repos/tmon_snoopy_back/browse','snoopy_back','ARCH-7174',''),
(145,'2018-12-10 00:00:00.000000','표준화Core파트','admin_tmon_dealpack','/DEALCORECELL/repos/admin_tmon_dealpack/browse','dealpack_a','ARCH-7203',''),
(146,'2019-01-16 00:00:00.000000','마케팅셀','service_tmon_coupon_binding_api','/MKT/repos/service_tmon_coupon_binding_api/browse','coupon_bind','ARCH-7450',''),
(147,'2019-01-16 00:00:00.000000','투어개발랩','service_tmon_tour_api','/TPTF/repos/service_tmon_tour_api/browse','tour','ARCH-7448',''),
(148,'2019-01-25 00:00:00.000000','경영인프라유닛','mis','','dormancy_mis','ARCH-7522','git 경영인프라 휴면처리용'),
(149,'2019-02-13 00:00:00.000000','CS셀','intra_tmon_cs (fn_cms)','/PCS/repos/intra_tmon_cs/browse/fn_cms','fn_cms','ARCH-7452','동일 repository에 별도 서비스가 존재하여 계정을 별도로 생성하여 사용'),
(150,'2019-02-13 00:00:00.000000','CS셀','intra_tmon_cs (ptn_cms)','/PCS/repos/intra_tmon_cs/browse/ptn_cms','ptn_cms','ARCH-7452','동일 repository에 별도 서비스가 존재하여 계정을 별도로 생성하여 사용 (2019-02-28 당시 ptn_cms 미적용)'),
(151,'2019-04-01 00:00:00.000000','마케팅개발유닛','service_tmon_marketing_persona_api(신규레파지토리로 변경예정)','/MKT/repos/service_tmon_marketing_persona_api/browse/src/main/java/com/tmoncorp/persona/api/promotion','promotion_01','ARCH-7865','신규 repository로 변경예정'),
(152,'2019-05-16 00:00:00.000000','표준화랩Core파트','service_tmon_msg_api(신규레파지토리로 변경된다면 수정 필요)','/SDUAPI/repos/service_tmon_msg_api/browse','cust_notify','ARCH-8072','cust_notify(알람)서비스 성격이 유사한 해당 repository에 소스개발. 신규 repository 생성시 변경 필요'),
(153,'2019-05-23 00:00:00.000000','표준화랩Core파트','batch_tmon_notification(cust_notify 소스)','/SDUAPI/repos/batch_tmon_notification/browse','cust_notify_b','ARCH-8072','notification(알림서비스)의 한 분류중 하나인 개인화 알림(cust_notify) 의 배치'),
(154,'2019-06-04 00:00:00.000000','마케팅개발유닛','service_tmon_spc_push_api','/MKT/repos/service_tmon_spc_push_api/browse','spc_push','ARCH-8083',''),
(155,'2019-06-07 00:00:00.000000','회원개발유닛','batch_tmon_partner','/MEM/repos/batch_tmon_partner/browse','partner_b','ARCH-8216',''),
(156,'2019-07-04 00:00:00.000000','서비스개발유닛','service_tmon_front_internal_api','/FRAPI/repos/service_tmon_front_internal_api/browse/src/main/java/com/tmoncorp/keyword?at=refs%2Fheads%2Fdev','keyword','ARCH-8361','front_internal 소스에 속한 키워드 알람 서비스용 계정'),
(157,'2019-07-18 00:00:00.000000','마케팅개발유닛','admin_tmon_benefit','/MKT/repos/admin_tmon_benefit/browse/src/main/java/com/tmoncorp/admin/benefit/promotion','promotion_a','ARCH-8464','룰렛 관련 어드민 소스(서비스API는 service_tmon_marketing_persona_api , 계정은 promotion_01)'),
(158,'2019-07-30 00:00:00.000000','데이터개발랩','tmon_data_spark','/DATA/repos/tmon_data_spark/browse','rank','ARCH-8523','데이터개발랩 베스트로직 (스코어)에 사용 됨'),
(159,'2019-07-30 00:00:00.000000','표준화개발유닛','admin_tmon_front','/FRUI/repos/admin_tmon_front/browse','front_a','ARCH-8505','프론트 공통 서비스에 사용 됨'),
(160,'2019-08-06 00:00:00.000000','서비스개발유닛','serviceadmin','','sduf_serviceadm','ARCH-8564','#PHP / 서비스개발유닛의 경우 bitbucket project key 를 하나로 단정지을 수 없어 jira project key 인 sduf를 네이밍에 사용'),
(161,'2019-08-13 00:00:00.000000','베트남사업소','admin_tmon_ommonitor','/VTO/repos/admin_tmon_ommonitor/browse','ommonitor_a','ARCH-8556',''),
(162,'2019-08-13 00:00:00.000000','정산셀','batch_tmon_revenue','/ACC/repos/batch_tmon_revenue/browse','revenue_b_01','ARCH-8579','FNDB 분리개선을 위해 제한적 권한을 위한 계정'),
(163,'2019-08-13 00:00:00.000000','정산셀','service_tmon_settlement_api','/ACC/repos/service_tmon_settlement_api/browse','settlement_01','ARCH-8579','FNDB 분리개선을 위해 제한적 권한을 위한 계정'),
(164,'2019-08-13 00:00:00.000000','정산셀','billkpi-batch','','acc_billkpi_b_01','ARCH-8579','#PHP / bbat  FNDB 분리개선을 위해 제한적 권한을 위한 계정'),
(165,'2019-08-13 00:00:00.000000','정산셀','billrpc',NULL,'acc_billrpc','ARCH-8579','#PHP  FNDB 분리개선을 위해 제한적 권한을 위한 계정'),
(166,'2019-08-13 00:00:00.000000','정산셀','billkpi','','acc_billkpi','ARCH-8579','#PHP  FNDB 분리개선을 위해 제한적 권한을 위한 계정'),
(167,'2019-09-04 00:00:00.000000','Core개발지원유닛','service_tmon_board_api (comment)','/WEB/repos/service_tmon_board_api/browse/src/main/java/com/tmoncorp/api/board/comment','comment','ARCH-8716','board api 는 공통성이 짙다 판단하여 다른 비즈니스에서는 사용되지 않을 댓글게시판만의 별도 계정을 생성함. (상세 repository URL 수정 예정)'),
(168,'2019-09-06 00:00:00.000000','Core개발지원유닛','admin_tmon_shared_area','/SDUCORE/repos/admin_tmon_shared_area/browse','shared_area_a','ARCH-8741',''),
(169,'2019-10-17 00:00:00.000000','베트남사업소','admin_tmon_ommonitor','/VTO/repos/admin_tmon_ommonitor/browse','ommonitor_b','ARCH-8926','ommonitor repository에서 동작하나 batch 용도 계정 별도 생성'),
(170,'2019-11-12 00:00:00.000000','베트남사업소','intra_tmon_steps','/VTO/repos/intra_tmon_steps/browse','intra_steps','ARCH-9098','steps admin에 내재화'),
(171,'2019-11-12 00:00:00.000000','베트남사업소','intra_tmon_steps','/VTO/repos/intra_tmon_steps/browse','intra_steps_b','ARCH-9098','steps admin에 내재화'),
(172,'2019-11-12 00:00:00.000000','베트남사업소','intra_tmon_steps','/VTO/repos/intra_tmon_steps/browse','intra_steps_a','ARCH-9182','steps admin에 내재화'),
(173,'2019-12-16 00:00:00.000000','검색개발팀','project_search_analysis_index (batch_tmon_search_bottom_recommendation)','/SCH/repos/project_search_analysis_index/browse/batch_tmon_search_bottom_recommendation','search_bg','ARCH-9284','하단추천 분석배치 신규 추가'),
(174,'2020-01-07 00:00:00.000000','표준화개발팀','service_tmon_front_internal_api','/FRAPI/repos/service_tmon_front_internal_api/browse','sticker','ARCH-9373','스티커 로직 이전에 따른 별도 전용 계정 추가'),
(175,'2020-01-08 00:00:00.000000','표준화개발팀','batch_tmon_automated_store','/FRAPI/repos/batch_tmon_automated_store/browse','autostore','ARCH-9352','매장자동화 관련 배치'),
(176,'2020-03-02 00:00:00.000000','표준화개발팀','spc_tmon_common_ui','/FRUI/repos/spc_tmon_common_ui/browse','spc_common','ARCH-9521','특가매장 시스템구축 및 어드민검수'),
(177,'2020-03-12 00:00:00.000000','표준화개발팀','billadmin','/SCH/repos/project_search_stat/browse/batch_tmon_search_ticket_log','sducore_billadm','ARCH-9618','어드민에 사용 표준화 딜코어 / PHP 소스'),
(178,'2020-03-12 00:00:00.000000','표준화개발팀','serviceadmin','','sducore_svcadm','ARCH-9618','어드민에 사용 표준화 딜코어 / PHP 소스'),
(179,'2020-03-20 00:00:00.000000','데이터개발팀','project_search_stat (batch_tmon_search_ticket_log)','/SCH/repos/project_search_stat/browse/batch_tmon_search_ticket_log','search_stat_b1','ARCH-9658','search-doop에서 구매로그 생성을 위해 tmon_billing의 ticket 접근 필요'),
(180,'2020-04-09 00:00:00.000000','표준화개발팀','batch_tmon_core','/SDUAPI/repos/batch_tmon_core/browse/src/main/java/com/tmoncorp/batch/common/job/weather','weather_b','ARCH-9716','기상청 날씨 좌표제공에 사용'),
(181,'2020-04-09 00:00:00.000000','표준화개발팀','service_tmon_common_api','/SDUAPI/repos/service_tmon_common_api/browse/src/main/java/com/tmoncorp/api/common/weather','weather','ARCH-9716','기상청 날씨 좌표제공에 사용'),
(182,'2020-04-10 00:00:00.000000','표준화개발팀','batch_tmon_email','/SDUAPI/repos/batch_tmon_email/browse/src/main/java/com/tmoncorp/batch/email/job/send','email_b','ARCH-9714','Java 신규 메일발송에 사용'),
(183,'2020-04-10 00:00:00.000000','표준화개발팀','service_tmon_msg_api','/SDUAPI/repos/service_tmon_msg_api/browse/src/main/java/com/tmoncorp/message/mail','email_b','ARCH-9714','Java 신규 메일발송에 사용');

/*Table structure for table `auth_group` */

DROP TABLE IF EXISTS `auth_group`;

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_group` */

/*Table structure for table `auth_group_permissions` */

DROP TABLE IF EXISTS `auth_group_permissions`;

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_group_permissions` */

/*Table structure for table `auth_permission` */

DROP TABLE IF EXISTS `auth_permission`;

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

/*Data for the table `auth_permission` */

insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values 
(1,'Can add log entry',1,'add_logentry'),
(2,'Can change log entry',1,'change_logentry'),
(3,'Can delete log entry',1,'delete_logentry'),
(4,'Can view log entry',1,'view_logentry'),
(5,'Can add permission',2,'add_permission'),
(6,'Can change permission',2,'change_permission'),
(7,'Can delete permission',2,'delete_permission'),
(8,'Can view permission',2,'view_permission'),
(9,'Can add group',3,'add_group'),
(10,'Can change group',3,'change_group'),
(11,'Can delete group',3,'delete_group'),
(12,'Can view group',3,'view_group'),
(13,'Can add user',4,'add_user'),
(14,'Can change user',4,'change_user'),
(15,'Can delete user',4,'delete_user'),
(16,'Can view user',4,'view_user'),
(17,'Can add content type',5,'add_contenttype'),
(18,'Can change content type',5,'change_contenttype'),
(19,'Can delete content type',5,'delete_contenttype'),
(20,'Can view content type',5,'view_contenttype'),
(21,'Can add session',6,'add_session'),
(22,'Can change session',6,'change_session'),
(23,'Can delete session',6,'delete_session'),
(24,'Can view session',6,'view_session'),
(25,'Can add faq',7,'add_faq'),
(26,'Can change faq',7,'change_faq'),
(27,'Can delete faq',7,'delete_faq'),
(28,'Can view faq',7,'view_faq'),
(29,'Can add user info',8,'add_userinfo'),
(30,'Can change user info',8,'change_userinfo'),
(31,'Can delete user info',8,'delete_userinfo'),
(32,'Can view user info',8,'view_userinfo'),
(33,'Can add faq',9,'add_faq'),
(34,'Can change faq',9,'change_faq'),
(35,'Can delete faq',9,'delete_faq'),
(36,'Can view faq',9,'view_faq'),
(37,'Can add user info',10,'add_userinfo'),
(38,'Can change user info',10,'change_userinfo'),
(39,'Can delete user info',10,'delete_userinfo'),
(40,'Can view user info',10,'view_userinfo'),
(41,'Can add user info',11,'add_userinfo'),
(42,'Can change user info',11,'change_userinfo'),
(43,'Can delete user info',11,'delete_userinfo'),
(44,'Can view user info',11,'view_userinfo'),
(45,'Can add test num',12,'add_testnum'),
(46,'Can change test num',12,'change_testnum'),
(47,'Can delete test num',12,'delete_testnum'),
(48,'Can view test num',12,'view_testnum'),
(49,'Can add account',13,'add_account'),
(50,'Can change account',13,'change_account'),
(51,'Can delete account',13,'delete_account'),
(52,'Can view account',13,'view_account'),
(53,'Can add faq',14,'add_faq'),
(54,'Can change faq',14,'change_faq'),
(55,'Can delete faq',14,'delete_faq'),
(56,'Can view faq',14,'view_faq'),
(57,'Can add account',15,'add_account'),
(58,'Can change account',15,'change_account'),
(59,'Can delete account',15,'delete_account'),
(60,'Can view account',15,'view_account'),
(61,'Can add account repository',16,'add_accountrepository'),
(62,'Can change account repository',16,'change_accountrepository'),
(63,'Can delete account repository',16,'delete_accountrepository'),
(64,'Can view account repository',16,'view_accountrepository');

/*Table structure for table `auth_user` */

DROP TABLE IF EXISTS `auth_user`;

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `auth_user` */

insert  into `auth_user`(`id`,`password`,`last_login`,`is_superuser`,`username`,`first_name`,`last_name`,`email`,`is_staff`,`is_active`,`date_joined`) values 
(1,'pbkdf2_sha256$180000$QGZsO57mvNWr$KiNConwj0DmzVzRsWk4Myf8h+v9TNWCvgHA9BZvQvsM=','2020-04-12 11:20:21.345721',1,'admin','','','test@test.com',1,1,'2020-02-19 14:18:21.709131'),
(2,'pbkdf2_sha256$180000$r7ot5bmEDJlR$sTXIUfDNoJqr7oqxPiyZ2Bd9v1N8mZO2Zi5GHAmEUQw=',NULL,1,'test','lee','junghee','gytjdlee@naver.com',1,1,'2020-03-07 08:27:49.000000');

/*Table structure for table `auth_user_groups` */

DROP TABLE IF EXISTS `auth_user_groups`;

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_user_groups` */

/*Table structure for table `auth_user_user_permissions` */

DROP TABLE IF EXISTS `auth_user_user_permissions`;

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_user_user_permissions` */

/*Table structure for table `django_admin_log` */

DROP TABLE IF EXISTS `django_admin_log`;

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `django_admin_log` */

insert  into `django_admin_log`(`id`,`action_time`,`object_id`,`object_repr`,`action_flag`,`change_message`,`content_type_id`,`user_id`) values 
(1,'2020-03-07 08:27:49.198097','2','test',1,'[{\"added\": {}}]',4,1),
(2,'2020-03-07 08:28:06.573815','2','test',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]',4,1),
(3,'2020-03-07 08:28:22.422104','2','test',2,'[{\"changed\": {\"fields\": [\"Staff status\", \"Superuser status\"]}}]',4,1);

/*Table structure for table `django_content_type` */

DROP TABLE IF EXISTS `django_content_type`;

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `django_content_type` */

insert  into `django_content_type`(`id`,`app_label`,`model`) values 
(15,'account','account'),
(14,'account','faq'),
(1,'admin','logentry'),
(13,'adminAccount','account'),
(16,'adminAccount','accountrepository'),
(9,'adminAccount','faq'),
(10,'adminAccount','userinfo'),
(3,'auth','group'),
(2,'auth','permission'),
(4,'auth','user'),
(5,'contenttypes','contenttype'),
(7,'home','faq'),
(12,'home','testnum'),
(8,'home','userinfo'),
(11,'login','userinfo'),
(6,'sessions','session');

/*Table structure for table `django_migrations` */

DROP TABLE IF EXISTS `django_migrations`;

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

/*Data for the table `django_migrations` */

insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values 
(1,'contenttypes','0001_initial','2020-02-02 09:18:44.462890'),
(2,'auth','0001_initial','2020-02-02 09:18:44.800399'),
(3,'admin','0001_initial','2020-02-02 09:18:45.552625'),
(4,'admin','0002_logentry_remove_auto_add','2020-02-02 09:18:46.011583'),
(5,'admin','0003_logentry_add_action_flag_choices','2020-02-02 09:18:46.022573'),
(6,'contenttypes','0002_remove_content_type_name','2020-02-02 09:18:46.171481'),
(7,'auth','0002_alter_permission_name_max_length','2020-02-02 09:18:46.196466'),
(8,'auth','0003_alter_user_email_max_length','2020-02-02 09:18:46.225448'),
(9,'auth','0004_alter_user_username_opts','2020-02-02 09:18:46.235442'),
(10,'auth','0005_alter_user_last_login_null','2020-02-02 09:18:46.320149'),
(11,'auth','0006_require_contenttypes_0002','2020-02-02 09:18:46.326146'),
(12,'auth','0007_alter_validators_add_error_messages','2020-02-02 09:18:46.336139'),
(13,'auth','0008_alter_user_username_max_length','2020-02-02 09:18:46.362123'),
(14,'auth','0009_alter_user_last_name_max_length','2020-02-02 09:18:46.390106'),
(15,'auth','0010_alter_group_name_max_length','2020-02-02 09:18:46.417098'),
(16,'auth','0011_update_proxy_permissions','2020-02-02 09:18:46.429091'),
(17,'home','0001_initial','2020-02-02 09:18:46.481065'),
(18,'sessions','0001_initial','2020-02-02 09:18:46.546777'),
(19,'home','0002_userinfo','2020-02-19 14:05:49.339038'),
(20,'home','0003_auto_20200219_2308','2020-02-19 14:08:28.609294'),
(21,'adminAccount','0001_initial','2020-03-07 05:14:42.267056'),
(22,'home','0004_delete_userinfo','2020-03-07 07:44:50.785638'),
(23,'login','0001_initial','2020-03-07 07:44:50.845601'),
(24,'home','0005_testnum','2020-03-07 08:19:41.478146'),
(25,'home','0006_auto_20200310_2201','2020-03-10 13:01:54.900773'),
(26,'home','0007_auto_20200315_2117','2020-03-15 12:17:12.806703'),
(27,'home','0008_auto_20200315_2118','2020-03-15 12:18:15.944185'),
(28,'adminAccount','0002_auto_20200405_1340','2020-04-05 04:41:28.912281'),
(29,'home','0009_auto_20200405_1340','2020-04-05 04:41:28.921278'),
(30,'adminAccount','0003_auto_20200405_1346','2020-04-05 04:46:22.867635'),
(31,'home','0010_auto_20200405_1346','2020-04-05 04:46:22.875623'),
(32,'adminAccount','0004_auto_20200405_1405','2020-04-05 05:05:56.160481'),
(33,'home','0011_auto_20200405_1405','2020-04-05 05:05:56.172473'),
(34,'adminAccount','0005_auto_20200405_1407','2020-04-05 05:07:47.243865'),
(35,'home','0012_auto_20200405_1407','2020-04-05 05:07:47.251859'),
(36,'adminAccount','0006_auto_20200405_1409','2020-04-05 05:09:10.439961'),
(37,'home','0013_auto_20200405_1409','2020-04-05 05:09:10.452954'),
(38,'adminAccount','0007_auto_20200405_1516','2020-04-05 06:16:11.025290'),
(39,'home','0014_auto_20200405_1516','2020-04-05 06:16:11.033285'),
(40,'home','0015_auto_20200405_1954','2020-04-05 10:54:09.168881'),
(41,'home','0016_auto_20200405_1955','2020-04-05 11:01:07.532365'),
(42,'home','0017_auto_20200405_1956','2020-04-05 11:01:07.541358'),
(43,'home','0018_auto_20200405_1957','2020-04-05 11:01:07.550354'),
(44,'home','0019_auto_20200405_2001','2020-04-05 11:01:07.558349'),
(45,'adminAccount','0008_auto_20200405_2012','2020-04-05 11:12:45.738767'),
(46,'home','0020_auto_20200405_2012','2020-04-05 11:12:45.747761'),
(47,'home','0021_auto_20200405_2034','2020-04-05 11:34:43.068269'),
(48,'adminAccount','0009_auto_20200406_2238','2020-04-06 13:38:52.959426'),
(49,'home','0022_auto_20200406_2238','2020-04-06 13:38:52.968419'),
(50,'home','0023_auto_20200406_2239','2020-04-06 13:39:40.660995'),
(51,'adminAccount','0010_auto_20200406_2309','2020-04-06 14:09:48.336532'),
(52,'home','0024_auto_20200406_2309','2020-04-06 14:09:48.346526'),
(53,'adminAccount','0011_auto_20200411_2337','2020-04-11 14:37:09.735821'),
(54,'home','0025_auto_20200411_2337','2020-04-11 14:37:09.750812'),
(55,'home','0026_auto_20200411_2342','2020-04-20 07:00:05.980166'),
(56,'home','0027_auto_20200411_2343','2020-04-20 07:00:05.990160'),
(57,'home','0028_auto_20200411_2345','2020-04-20 07:00:05.999154'),
(58,'home','0029_auto_20200411_2345','2020-04-20 07:00:06.006150'),
(59,'home','0030_auto_20200411_2346','2020-04-20 07:00:06.014145'),
(60,'home','0031_auto_20200411_2349','2020-04-20 07:00:06.023139'),
(61,'home','0032_auto_20200411_2350','2020-04-20 07:00:06.033134'),
(62,'home','0033_auto_20200411_2352','2020-04-20 07:00:06.042129'),
(63,'home','0034_auto_20200411_2352','2020-04-20 07:00:06.051123'),
(64,'home','0035_auto_20200411_2354','2020-04-20 07:00:06.060117'),
(65,'home','0036_auto_20200411_2355','2020-04-20 07:00:06.068112'),
(66,'home','0037_auto_20200411_2355','2020-04-20 07:00:06.076107'),
(67,'home','0038_auto_20200411_2355','2020-04-20 07:00:06.084102'),
(68,'home','0039_auto_20200411_2356','2020-04-20 07:00:06.096096'),
(69,'home','0040_auto_20200412_0005','2020-04-20 07:00:06.104089'),
(70,'home','0041_auto_20200412_1934','2020-04-20 07:00:06.116084'),
(71,'home','0042_auto_20200420_1539','2020-04-20 07:00:06.125077'),
(72,'home','0043_auto_20200420_1540','2020-04-20 07:00:06.133071'),
(73,'home','0044_auto_20200420_1542','2020-04-20 07:00:06.142066'),
(74,'home','0045_auto_20200420_1547','2020-04-20 07:00:06.150061'),
(75,'home','0046_auto_20200420_1548','2020-04-20 07:00:06.160055'),
(76,'home','0047_auto_20200420_1549','2020-04-20 07:00:06.172572'),
(77,'adminAccount','0002_auto_20200420_1604','2020-04-20 07:08:19.859477'),
(78,'adminAccount','0003_accountrepository','2020-04-20 07:08:19.924438'),
(79,'adminAccount','0004_auto_20200420_1827','2020-04-20 09:27:36.344774'),
(80,'adminAccount','0005_auto_20200420_2235','2020-04-20 13:35:25.150731'),
(81,'adminAccount','0006_auto_20200420_2245','2020-04-20 13:45:45.735861');

/*Table structure for table `django_session` */

DROP TABLE IF EXISTS `django_session`;

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `django_session` */

insert  into `django_session`(`session_key`,`session_data`,`expire_date`) values 
('spaujzrxmou4esut0fjjgoebi2vwxja2','ZjAzYWU2ZDc2MGE4YTllZmU2OGQ4NjBhYmE1ODE5ZTRhYTIxODVkYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwNzg1MmJlYTRlZmVlOWRlMjIyNjJjNWY4MGFjNTdkZGU2OWJjZjNiIn0=','2020-04-26 11:20:21.347719');

/*Table structure for table `home_faq` */

DROP TABLE IF EXISTS `home_faq`;

CREATE TABLE `home_faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `faq_id` varchar(16) NOT NULL,
  `faq_type` varchar(10) NOT NULL,
  `faq_question` longtext NOT NULL,
  `faq_answer` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

/*Data for the table `home_faq` */

insert  into `home_faq`(`id`,`faq_id`,`faq_type`,`faq_question`,`faq_answer`) values 
(1,'test@test.com','Q','Hi','N'),
(2,'test@test.com','Q','Hi','N'),
(3,'test@test.com','Q','Hi','N'),
(4,'ABCD0','Q','테스트용 질문입니다.','N'),
(5,'ABCD002','Q','여기는 어디죠?','N'),
(6,'ABCD003','Q','나는 누구?','N'),
(8,'ABCD005','Q','1+1은?','N'),
(9,'ABCD006','Q','질문드리고 싶습니다.','N'),
(10,'ABCD007','Q','여긴 어디인가요?','N'),
(11,'ABCD008','Q','다 하는건데 나는 어떨까요?','N'),
(12,'ABCD009','Q','고용불안정이 뭐죠?','N'),
(13,'ABCD011','Q','결혼 연기 이유는 뭔가요?','N'),
(14,'ABCD012','Q','테스트 맞나요?','N'),
(16,'ABCD014','Q','안타깝네요. \n질문이 더 하고싶습니다.','N'),
(17,'ABCD0','Q','또다시 질문을 해볼까요.','N'),
(18,'ABCD016','Q','질문 할게없네요. 다했네요?','N'),
(26,'test','123','123','12'),
(28,'test14','N','다시ㅋㅋㅋ','Nooooo'),
(35,'QNA','QQ','질문?ㅋ','답변?'),
(38,'Q1234','ABC123','잘되남?ㅋ','ㅇㅇ');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
