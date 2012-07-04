/*
SQLyog Enterprise - MySQL GUI v7.15 
MySQL - 5.5.8-log : Database - db_iecweb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_iecweb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `db_iecweb`;

/*Table structure for table `tb_comments` */

DROP TABLE IF EXISTS `tb_comments`;

CREATE TABLE `tb_comments` (
  `Comm_ID` varchar(25) NOT NULL,
  `Comm_User_ID` varchar(25) NOT NULL,
  `Comm_Post_ID` varchar(25) NOT NULL,
  `Comm_Content` longtext NOT NULL,
  `Comm_CreatedAt` date NOT NULL,
  `Comm_UpdatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Comm_DeletedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`Comm_ID`),
  KEY `FK_Comments_Users_UserID` (`Comm_User_ID`),
  CONSTRAINT `FK_Comments_Users_UserID` FOREIGN KEY (`Comm_User_ID`) REFERENCES `tb_users` (`User_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_comments` */

insert  into `tb_comments`(`Comm_ID`,`Comm_User_ID`,`Comm_Post_ID`,`Comm_Content`,`Comm_CreatedAt`,`Comm_UpdatedAt`,`Comm_DeletedAt`) values ('1','1108074','1','Apa imbalannya?','2012-07-04','2012-07-04 11:59:48','0000-00-00 00:00:00');

/*Table structure for table `tb_posts` */

DROP TABLE IF EXISTS `tb_posts`;

CREATE TABLE `tb_posts` (
  `Post_ID` varchar(25) NOT NULL,
  `Post_Ptyp_ID` varchar(25) NOT NULL,
  `Post_Title` varchar(255) NOT NULL,
  `Post_Picture` varchar(255) DEFAULT NULL,
  `Post_Content` longtext NOT NULL,
  `Post_ExpiredAt` date DEFAULT NULL,
  `Post_CounterVote1` int(11) NOT NULL DEFAULT '0',
  `Post_CounterVote2` int(11) NOT NULL DEFAULT '0',
  `Post_CreatedAt` date NOT NULL,
  `Post_UpdatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Post_DeletedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`Post_ID`),
  KEY `fk_Post_Ptype_PtypeID` (`Post_Ptyp_ID`),
  CONSTRAINT `fk_Post_Ptype_PtypeID` FOREIGN KEY (`Post_Ptyp_ID`) REFERENCES `tb_posts_types` (`Ptyp_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_posts` */

insert  into `tb_posts`(`Post_ID`,`Post_Ptyp_ID`,`Post_Title`,`Post_Picture`,`Post_Content`,`Post_ExpiredAt`,`Post_CounterVote1`,`Post_CounterVote2`,`Post_CreatedAt`,`Post_UpdatedAt`,`Post_DeletedAt`) values ('1','UMUM','Tutup Pulpen Ilang!!!!',NULL,'Buat Kakak yang melihat keberadaan tutup pulpen saya tolong infokan ke no ini ya, 23243243243242, ada imbalan khusus!','2012-07-08',0,0,'2012-07-04','2012-07-04 11:54:39','0000-00-00 00:00:00'),('2','MK1','Kapan Kuliah Pengganti???',NULL,'Kapan Kuliah Pengganti SO kelas A untuk Hari ini?','2012-07-11',0,0,'2012-07-04','2012-07-04 11:55:56','0000-00-00 00:00:00');

/*Table structure for table `tb_posts_types` */

DROP TABLE IF EXISTS `tb_posts_types`;

CREATE TABLE `tb_posts_types` (
  `Ptyp_ID` varchar(25) NOT NULL,
  `Ptyp_Category` varchar(25) NOT NULL,
  `Ptyp_Name` varchar(255) NOT NULL,
  `Ptyp_CreatedAt` date NOT NULL,
  `Ptyp_UpdatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Ptyp_DeletedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`Ptyp_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_posts_types` */

insert  into `tb_posts_types`(`Ptyp_ID`,`Ptyp_Category`,`Ptyp_Name`,`Ptyp_CreatedAt`,`Ptyp_UpdatedAt`,`Ptyp_DeletedAt`) values ('Ang08','Angkatan','2008','2012-07-04','2012-07-04 11:39:47','0000-00-00 00:00:00'),('Ang09','Angkatan','2009','2012-07-04','2012-07-04 11:40:04','0000-00-00 00:00:00'),('Ang11','Angkatan','2011','2012-07-04','2012-07-04 11:40:17','0000-00-00 00:00:00'),('MK1','Mata Kuliah','Sistem Operasi Kelas A','2012-07-04','2012-07-04 11:45:35','0000-00-00 00:00:00'),('MK2','Mata Kuliah','Sistem Berkas Kelas A','2012-07-04','2012-07-04 11:45:59','0000-00-00 00:00:00'),('UMUM','Umum','Umum','2012-07-04','2012-07-04 11:53:33','0000-00-00 00:00:00');

/*Table structure for table `tb_users` */

DROP TABLE IF EXISTS `tb_users`;

CREATE TABLE `tb_users` (
  `User_ID` varchar(25) NOT NULL,
  `User_Name` varchar(50) NOT NULL,
  `User_Picture` varchar(255) DEFAULT NULL,
  `User_Info` varchar(255) DEFAULT NULL,
  `User_CreatedAt` date NOT NULL,
  `User_UpdatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `User_DeletedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`User_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_users` */

insert  into `tb_users`(`User_ID`,`User_Name`,`User_Picture`,`User_Info`,`User_CreatedAt`,`User_UpdatedAt`,`User_DeletedAt`) values ('1108074','Jovi Rengga Salira',NULL,'Mahasiswa Departemen Teknik Informatika Angkatan 2008 Kelas B','2012-07-04','2012-07-04 11:47:24','0000-00-00 00:00:00'),('1108075','Engakta Usiap A.',NULL,'Mahasiswa Abadi','2011-08-07','2012-07-04 11:48:44','0000-00-00 00:00:00');

/*Table structure for table `tb_votes` */

DROP TABLE IF EXISTS `tb_votes`;

CREATE TABLE `tb_votes` (
  `Vote_ID` varchar(25) NOT NULL,
  `Vote_User_ID` varchar(25) NOT NULL,
  `Vote_Post_ID` varchar(25) NOT NULL,
  `Vote_Type` int(11) NOT NULL,
  `Vote_CreatedAt` date NOT NULL,
  `Vote_UpdatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Vote_DeletedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`Vote_ID`),
  KEY `fk_Votes_Users_UserID` (`Vote_User_ID`),
  KEY `fk_Votes_Posts_PostID` (`Vote_Post_ID`),
  CONSTRAINT `fk_Votes_Posts_PostID` FOREIGN KEY (`Vote_Post_ID`) REFERENCES `tb_posts` (`Post_ID`),
  CONSTRAINT `fk_Votes_Users_UserID` FOREIGN KEY (`Vote_User_ID`) REFERENCES `tb_users` (`User_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_votes` */

insert  into `tb_votes`(`Vote_ID`,`Vote_User_ID`,`Vote_Post_ID`,`Vote_Type`,`Vote_CreatedAt`,`Vote_UpdatedAt`,`Vote_DeletedAt`) values ('1','1108075','1',1,'2012-07-04','2012-07-04 12:00:35','0000-00-00 00:00:00');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
