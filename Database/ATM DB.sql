/*
SQLyog Community v13.2.0 (64 bit)
MySQL - 8.0.33 : Database - atm
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`atm` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `atm`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `User` varchar(15) NOT NULL,
  `Pswd` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`User`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `admin` */

insert  into `admin`(`User`,`Pswd`) values 
('Astha','2424'),
('Drishti','4567');

/*Table structure for table `open_account_table` */

DROP TABLE IF EXISTS `open_account_table`;

CREATE TABLE `open_account_table` (
  `ac_no` bigint NOT NULL,
  `ac_type` varchar(15) DEFAULT NULL,
  `cardno` bigint NOT NULL,
  `password` varchar(4) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `f_name` varchar(30) DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `phone` bigint DEFAULT NULL,
  `addr` varchar(50) DEFAULT NULL,
  `intro` varchar(30) DEFAULT NULL,
  `acc_intro` varchar(12) DEFAULT NULL,
  `occupation` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ac_no`,`cardno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `open_account_table` */

insert  into `open_account_table`(`ac_no`,`ac_type`,`cardno`,`password`,`name`,`f_name`,`amount`,`phone`,`addr`,`intro`,`acc_intro`,`occupation`) values 
(100000000101,'Savings Account',1444444444441000,'2400','Astha Verma','Rajeev Kumar',20000,9335242422,'Noida','None','None','Developer'),
(100000000102,'Current Account',1444444444441001,'2300','Rishi Jaiswal','Yogesh Jaiswal',3770,2323454565,'Shivaji Road Delhi','None','100000000101','Businessman');

/*Table structure for table `transaction` */

DROP TABLE IF EXISTS `transaction`;

CREATE TABLE `transaction` (
  `ac_no` decimal(12,0) NOT NULL,
  `date` varchar(50) NOT NULL,
  `amount` int NOT NULL,
  `ways` varchar(20) NOT NULL,
  `balance` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `transaction` */

insert  into `transaction`(`ac_no`,`date`,`amount`,`ways`,`balance`) values 
(100000000102,'Wed Dec 13 16:12:06 IST 2023',200,'Deposit',1200),
(100000000102,'Wed Dec 13 16:53:44 IST 2023',1000,'Deposit',2200),
(100000000102,'Wed Dec 13 16:55:43 IST 2023',2000,'Deposit',4200),
(100000000102,'Wed Dec 13 16:56:07 IST 2023',20,'Deposit',4220),
(100000000102,'Wed Dec 13 17:02:59 IST 2023',300,'Withdraw',3920),
(100000000102,'Wed Dec 13 17:03:26 IST 2023',150,'Withdraw',3770);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
