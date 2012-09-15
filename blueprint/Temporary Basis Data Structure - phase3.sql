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
  `Comm_CreatedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Comm_UpdatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Comm_DeletedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`Comm_ID`),
  KEY `FK_Comments_Users_UserID` (`Comm_User_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_comments` */

insert  into `tb_comments`(`Comm_ID`,`Comm_User_ID`,`Comm_Post_ID`,`Comm_Content`,`Comm_CreatedAt`,`Comm_UpdatedAt`,`Comm_DeletedAt`) values ('COMM_2012-07-04_1','1108032','POST_2012-07-04_1','Apa imbalannya?','2012-07-04 00:00:00','2012-07-04 11:59:48','0000-00-00 00:00:00'),('COMM_2012-07-30_1','1108074','POST_2012-07-04_1','Beuh..matre banget lw!!','2012-07-30 00:05:30','2012-07-30 00:05:30','0000-00-00 00:00:00'),('COMM_2012-07-30_10','1108088','POST_2012-07-29_3','Bruakakaka..kau juga nasibny sama toy','2012-07-30 00:32:28','2012-07-30 00:32:28','0000-00-00 00:00:00'),('COMM_2012-07-30_11','1108032','POST_2012-07-29_4','Sial..gw baru mw donlod','2012-07-30 00:33:08','2012-07-30 00:33:08','0000-00-00 00:00:00'),('COMM_2012-07-30_12','1108030','POST_2012-07-29_7','Jadwal udah keluar masbro, minggu ini bnyk yg mau sidang','2012-07-30 00:39:26','2012-07-30 00:39:26','0000-00-00 00:00:00'),('COMM_2012-07-30_13','1108088','POST_2012-07-29_7','Aku minggu ini sidang cuuuy','2012-07-30 00:39:59','2012-07-30 00:39:59','0000-00-00 00:00:00'),('COMM_2012-07-30_14','1108003','POST_2012-07-29_7','Gw juga','2012-07-30 00:40:21','2012-07-30 00:40:21','0000-00-00 00:00:00'),('COMM_2012-07-30_15','1108032','POST_2012-07-29_7','Gak tau gan kapan jadwal terakhir sidang.','2012-07-30 00:41:07','2012-07-30 00:41:07','0000-00-00 00:00:00'),('COMM_2012-07-30_16','1108020','POST_2012-07-29_8','Coba tanya bu mara deh.','2012-07-30 00:41:50','2012-07-30 00:41:50','0000-00-00 00:00:00'),('COMM_2012-07-30_17','1108003','POST_2012-07-29_8','Udah coba google blom?','2012-07-30 01:23:40','2012-07-30 01:23:40','0000-00-00 00:00:00'),('COMM_2012-07-30_18','1108030','POST_2012-07-29_8','Kalo gak cba pake BING','2012-07-30 01:24:20','2012-07-30 01:24:20','0000-00-00 00:00:00'),('COMM_2012-07-30_2','1108074','POST_2012-07-04_1','Yah udah, barangsiapa yang menemukan, gw traktir deh!','2012-07-30 00:06:55','2012-07-30 00:06:55','0000-00-00 00:00:00'),('COMM_2012-07-30_3','1108020','POST_2012-07-04_1','Aseeek aseek..pas bgt laper nig gw..hahaha','2012-07-30 00:07:37','2012-07-30 00:07:37','0000-00-00 00:00:00'),('COMM_2012-07-30_4','1108020','POST_2012-07-29_1','Apa2an sih nih POST..geje :|','2012-07-30 00:19:44','2012-07-30 00:19:44','0000-00-00 00:00:00'),('COMM_2012-07-30_5','1108003','POST_2012-07-29_1','Iya si Jovi gak jelas..hahaha','2012-07-30 00:20:21','2012-07-30 00:20:21','0000-00-00 00:00:00'),('COMM_2012-07-30_6','1108003','POST_2012-07-29_2','Ini juga si toy geje..Ini forum apa sih, gak jelas gini..:))','2012-07-30 00:24:15','2012-07-30 00:24:15','0000-00-00 00:00:00'),('COMM_2012-07-30_7','1108032','POST_2012-07-29_2','Hahaha..nyante bro ini masih data dummy doank..kekekeke','2012-07-30 00:26:57','2012-07-30 00:26:57','0000-00-00 00:00:00'),('COMM_2012-07-30_8','1108020','POST_2012-07-29_2','Iya..si toyba lagi buat data2 dummy biar bisa dilihat nnti di web-nya jadi gimana..','2012-07-30 00:27:36','2012-07-30 00:27:36','0000-00-00 00:00:00'),('COMM_2012-07-30_9','1108020','POST_2012-07-29_3','Sekarang giliran si tommy yang gak jelas..wkwkwk','2012-07-30 00:31:33','2012-07-30 00:31:33','0000-00-00 00:00:00');

/*Table structure for table `tb_posts` */

DROP TABLE IF EXISTS `tb_posts`;

CREATE TABLE `tb_posts` (
  `Post_ID` varchar(25) NOT NULL,
  `Post_Ptyp_ID` varchar(25) NOT NULL,
  `Post_User_ID` varchar(25) NOT NULL,
  `Post_Title` varchar(255) NOT NULL,
  `Post_Picture` varchar(255) DEFAULT NULL,
  `Post_Content` longtext NOT NULL,
  `Post_ExpiredAt` date DEFAULT NULL,
  `Post_CounterVote1` int(11) NOT NULL DEFAULT '0',
  `Post_CounterVote2` int(11) NOT NULL DEFAULT '0',
  `Post_CreatedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Post_UpdatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Post_DeletedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`Post_ID`),
  KEY `fk_Post_Ptype_PtypeID` (`Post_Ptyp_ID`),
  KEY `fk_Post_User_UserID` (`Post_User_ID`),
  CONSTRAINT `fk_Post_Ptype_PtypeID` FOREIGN KEY (`Post_Ptyp_ID`) REFERENCES `tb_posts_types` (`Ptyp_ID`),
  CONSTRAINT `fk_Post_User_UserID` FOREIGN KEY (`Post_User_ID`) REFERENCES `tb_users` (`User_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_posts` */

insert  into `tb_posts`(`Post_ID`,`Post_Ptyp_ID`,`Post_User_ID`,`Post_Title`,`Post_Picture`,`Post_Content`,`Post_ExpiredAt`,`Post_CounterVote1`,`Post_CounterVote2`,`Post_CreatedAt`,`Post_UpdatedAt`,`Post_DeletedAt`) values ('POST_2012-07-04_1','UMUM','1108074','Tutup Pulpen Ilang!!!!',NULL,'Buat Kakak yang melihat keberadaan tutup pulpen saya tolong infokan ke no ini ya, 23243243243242, ada imbalan khusus!','2012-07-08',3,0,'2012-07-04 00:10:00','2012-07-30 00:48:57','0000-00-00 00:00:00'),('POST_2012-07-04_2','MK1','1108032','Kapan Kuliah Pengganti???',NULL,'Kapan Kuliah Pengganti SO kelas A untuk Hari ini?','2012-07-11',0,0,'2012-07-04 00:20:00','2012-07-30 00:12:08','0000-00-00 00:00:00'),('POST_2012-07-29_1','MK2','1108074','UJIAN Bessok',NULL,'Besok akan bakal ada ujian dadakan dari dosen ybs, tpi mohon jgn lgsg heboh. biar aj dikira kita2 gak tahu ujiannya. Semangat guys!!!','2012-07-30',0,0,'2012-07-29 00:10:00','2012-07-30 00:12:16','0000-00-00 00:00:00'),('POST_2012-07-29_2','UMUM','1108032','Pertemuan Dosen',NULL,'Nanti hari Minggu ada pertemuan dosen2 se-Indonesia, jadi semua mata kuliah ditiadakan. Selamat liburan!!','2012-07-29',0,0,'2012-07-29 00:20:00','2012-07-30 00:12:23','0000-00-00 00:00:00'),('POST_2012-07-29_3','UMUM','1108003','Gak bisa maen CABAL',NULL,'Gw streess nih laptop gw gak bisa main CABAL, padahal sempat dimaenin 1 kali. Setelah itu udah gak bisa..ada yg tau gmn caranya biar gw bisa maen lgi?',NULL,0,0,'2012-07-29 00:30:00','2012-07-30 00:12:26','0000-00-00 00:00:00'),('POST_2012-07-29_4','UMUM','1108003','Driver gw ternyata',NULL,'Ternyata driver gw harus diupdate. udah bisa maen CABAL lagi :D',NULL,0,0,'2012-07-29 20:14:18','2012-07-30 00:12:28','0000-00-00 00:00:00'),('POST_2012-07-29_5','Ang08','1108006','Besok gw sidang',NULL,'Temen2 2008, besok gw sidang doain yee gw bisa lulus,,AMIIN',NULL,1,3,'2012-07-29 20:19:06','2012-07-30 00:49:53','0000-00-00 00:00:00'),('POST_2012-07-29_6','Ang09','1108006','Besok gw sidang',NULL,'Adik2 2009, besok gw sidang doain yee gw bisa lulus,,AMIIN',NULL,1,0,'2012-07-29 20:19:40','2012-07-30 00:49:34','0000-00-00 00:00:00'),('POST_2012-07-29_7','Ang08','1108012','Jadwal terakhir sidang',NULL,'Kawan2, mw nanya donk. Kapan ini jadwal terakhir sidang, gw gak tau euuuy.',NULL,1,0,'2012-07-29 20:21:11','2012-07-30 00:49:19','0000-00-00 00:00:00'),('POST_2012-07-29_8','Umum','1108012','No telp Pak Anggoro',NULL,'Kawan2, ada yang tau nomor telp Pak Anggoro gak? thx b4',NULL,0,0,'2012-07-29 20:23:09','2012-07-30 00:12:39','0000-00-00 00:00:00');

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
  `User_Passwords` varchar(255) NOT NULL,
  `User_Name` varchar(50) NOT NULL,
  `User_Picture` varchar(255) DEFAULT NULL,
  `User_Info` varchar(255) DEFAULT NULL,
  `User_CreatedAt` date NOT NULL,
  `User_UpdatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `User_DeletedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`User_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_users` */

insert  into `tb_users`(`User_ID`,`User_Passwords`,`User_Name`,`User_Picture`,`User_Info`,`User_CreatedAt`,`User_UpdatedAt`,`User_DeletedAt`) values ('1108003','827ccb0eea8a706c4c34a16891f84e7b','Tommy Kurniawan Sugianto',NULL,'Mahasiswa penyelenggara futsal','2012-07-28','2012-07-28 13:04:11','0000-00-00 00:00:00'),('1108006','827ccb0eea8a706c4c34a16891f84e7b','Albert Christanto',NULL,'Mahasiswa yang mau berhenti kerja','2012-07-28','2012-07-28 13:03:43','0000-00-00 00:00:00'),('1108012','827ccb0eea8a706c4c34a16891f84e7b','Stefanus Hadiwijaya Ang',NULL,'Mahasiswa yang lagi sakit','2012-07-28','2012-07-28 13:02:41','0000-00-00 00:00:00'),('1108020','827ccb0eea8a706c4c34a16891f84e7b','Ivan Andhika',NULL,'Mahasiswa yang udah kerja','2012-07-28','2012-07-28 13:01:46','0000-00-00 00:00:00'),('1108030','827ccb0eea8a706c4c34a16891f84e7b','Victor Libtuselah Briliam Manu',NULL,'Mahasiswa yang juga udah kerja','2012-07-28','2012-07-28 13:02:16','0000-00-00 00:00:00'),('1108032','827ccb0eea8a706c4c34a16891f84e7b','Victor Rumengan',NULL,'Mahasiswa yang udah lulus','2012-07-28','2012-07-28 12:55:34','0000-00-00 00:00:00'),('1108040','827ccb0eea8a706c4c34a16891f84e7b','I Dewa Gede Rama',NULL,'Mahasiswa yang juga udah selesai','2012-07-28','2012-07-28 13:03:06','0000-00-00 00:00:00'),('1108074','827ccb0eea8a706c4c34a16891f84e7b','Jovi Rengga Salira',NULL,'Mahasiswa Departemen Teknik Informatika Angkatan 2008 Kelas B','2012-07-04','2012-07-28 12:56:15','0000-00-00 00:00:00'),('1108075','827ccb0eea8a706c4c34a16891f84e7b','Engakta Usiap A.',NULL,'Mahasiswa Abadi','2011-08-07','2012-07-28 12:56:20','0000-00-00 00:00:00'),('1108088','827ccb0eea8a706c4c34a16891f84e7b','Boy Gorby Sahata Tambunan',NULL,'Mahasiswa yang sering main CABAL','2012-07-28','2012-07-28 13:04:41','0000-00-00 00:00:00');

/*Table structure for table `tb_users_posttypes` */

DROP TABLE IF EXISTS `tb_users_posttypes`;

CREATE TABLE `tb_users_posttypes` (
  `Upty_User_ID` varchar(25) NOT NULL,
  `Upty_Ptyp_ID` varchar(25) NOT NULL,
  PRIMARY KEY (`Upty_User_ID`,`Upty_Ptyp_ID`),
  KEY `fk_tb_users_posttypes_posttypes_PtypID` (`Upty_Ptyp_ID`),
  CONSTRAINT `fk_tb_users_posttypes_posttypes_PtypID` FOREIGN KEY (`Upty_Ptyp_ID`) REFERENCES `tb_posts_types` (`Ptyp_ID`) ON DELETE CASCADE,
  CONSTRAINT `fk_tb_users_posttypes_users_UserID` FOREIGN KEY (`Upty_User_ID`) REFERENCES `tb_users` (`User_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_users_posttypes` */

insert  into `tb_users_posttypes`(`Upty_User_ID`,`Upty_Ptyp_ID`) values ('1108003','UMUM'),('1108006','UMUM'),('1108012','UMUM'),('1108020','UMUM'),('1108030','UMUM'),('1108032','UMUM'),('1108040','UMUM'),('1108074','UMUM'),('1108088','UMUM');

/*Table structure for table `tb_votes` */

DROP TABLE IF EXISTS `tb_votes`;

CREATE TABLE `tb_votes` (
  `Vote_ID` varchar(25) NOT NULL,
  `Vote_User_ID` varchar(25) NOT NULL,
  `Vote_Post_ID` varchar(25) NOT NULL,
  `Vote_Type` int(11) NOT NULL,
  `Vote_CreatedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Vote_UpdatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Vote_DeletedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`Vote_ID`),
  KEY `fk_Votes_Users_UserID` (`Vote_User_ID`),
  KEY `fk_Votes_Posts_PostID` (`Vote_Post_ID`),
  CONSTRAINT `fk_Votes_Users_UserID` FOREIGN KEY (`Vote_User_ID`) REFERENCES `tb_users` (`User_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_votes` */

insert  into `tb_votes`(`Vote_ID`,`Vote_User_ID`,`Vote_Post_ID`,`Vote_Type`,`Vote_CreatedAt`,`Vote_UpdatedAt`,`Vote_DeletedAt`) values ('VOTE_2012-07-30_1','1108075','POST_2012-07-04_1',1,'2012-07-04 00:50:00','2012-07-30 00:44:22','0000-00-00 00:00:00'),('VOTE_2012-07-30_2','1108032','POST_2012-07-04_1',1,'2012-07-30 00:45:24','2012-07-30 00:45:48','0000-00-00 00:00:00'),('VOTE_2012-07-30_3','1108020','POST_2012-07-04_1',1,'2012-07-30 00:46:36','2012-07-30 00:46:36','0000-00-00 00:00:00'),('VOTE_2012-07-30_4','1108020','POST_2012-07-29_7',1,'2012-07-30 00:47:08','2012-07-30 00:47:08','0000-00-00 00:00:00'),('VOTE_2012-07-30_5','1108020','POST_2012-07-29_5',2,'2012-07-30 00:47:31','2012-07-30 00:47:31','0000-00-00 00:00:00'),('VOTE_2012-07-30_6','1108088','POST_2012-07-29_5',2,'2012-07-30 00:47:37','2012-07-30 00:47:37','0000-00-00 00:00:00'),('VOTE_2012-07-30_7','1108032','POST_2012-07-29_5',2,'2012-07-30 00:47:46','2012-07-30 00:48:01','0000-00-00 00:00:00'),('VOTE_2012-07-30_8','1108003','POST_2012-07-29_5',1,'2012-07-30 00:48:14','2012-07-30 00:48:14','0000-00-00 00:00:00'),('VOTE_2012-07-30_9','1108003','POST_2012-07-29_6',1,'2012-07-30 00:48:28','2012-07-30 00:48:28','0000-00-00 00:00:00');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
