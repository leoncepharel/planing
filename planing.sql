/*
SQLyog Community v11.28 (64 bit)
MySQL - 10.4.28-MariaDB : Database - test1
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`test1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `test1`;

/*Table structure for table `adm` */

DROP TABLE IF EXISTS `adm`;

CREATE TABLE `adm` (
  `nom` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `mdp` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `adm` */

insert  into `adm`(`nom`,`email`,`mdp`) values ('toto','toto@gmail.com','1234');

/*Table structure for table `commentaire` */

DROP TABLE IF EXISTS `commentaire`;

CREATE TABLE `commentaire` (
  `id_com` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_com`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `commentaire` */

/*Table structure for table `delet` */

DROP TABLE IF EXISTS `delet`;

CREATE TABLE `delet` (
  `id` int(11) NOT NULL DEFAULT 0,
  `ve1` varchar(255) DEFAULT NULL,
  `lu1` varchar(255) DEFAULT NULL,
  `sa1` varchar(255) DEFAULT NULL,
  `me1` varchar(255) DEFAULT NULL,
  `ma1` varchar(255) DEFAULT NULL,
  `di1` varchar(255) DEFAULT NULL,
  `je1` varchar(255) DEFAULT NULL,
  `ve7` varchar(255) DEFAULT NULL,
  `sa7` varchar(255) DEFAULT NULL,
  `ma6` varchar(255) DEFAULT NULL,
  `me7` varchar(255) DEFAULT NULL,
  `je7` varchar(255) DEFAULT NULL,
  `lu2` varchar(255) DEFAULT NULL,
  `lu7` varchar(255) DEFAULT NULL,
  `je2` varchar(255) DEFAULT NULL,
  `di7` varchar(255) DEFAULT NULL,
  `ma2` varchar(255) DEFAULT NULL,
  `me2` varchar(255) DEFAULT NULL,
  `ve2` varchar(255) DEFAULT NULL,
  `ma3` varchar(255) DEFAULT NULL,
  `di2` varchar(255) DEFAULT NULL,
  `lu3` varchar(255) DEFAULT NULL,
  `je3` varchar(255) DEFAULT NULL,
  `me3` varchar(255) DEFAULT NULL,
  `sa2` varchar(255) DEFAULT NULL,
  `ve3` varchar(255) DEFAULT NULL,
  `di3` varchar(255) DEFAULT NULL,
  `lu5` varchar(255) DEFAULT NULL,
  `ma4` varchar(255) DEFAULT NULL,
  `sa3` varchar(255) DEFAULT NULL,
  `je4` varchar(255) DEFAULT NULL,
  `lu4` varchar(255) DEFAULT NULL,
  `di4` varchar(255) DEFAULT NULL,
  `me4` varchar(255) DEFAULT NULL,
  `ma5` varchar(255) DEFAULT NULL,
  `ve4` varchar(255) DEFAULT NULL,
  `me5` varchar(255) DEFAULT NULL,
  `ve5` varchar(255) DEFAULT NULL,
  `sa4` varchar(255) DEFAULT NULL,
  `je5` varchar(255) DEFAULT NULL,
  `di5` varchar(255) DEFAULT NULL,
  `sa5` varchar(255) DEFAULT NULL,
  `ma7` varchar(255) DEFAULT NULL,
  `lu6` varchar(255) DEFAULT NULL,
  `me6` varchar(255) DEFAULT NULL,
  `je6` varchar(255) DEFAULT NULL,
  `ve6` varchar(255) DEFAULT NULL,
  `di6` varchar(255) DEFAULT NULL,
  `sa6` varchar(255) DEFAULT NULL,
  `id_fi` int(11) DEFAULT NULL,
  `dateop` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `delet` */

insert  into `delet`(`id`,`ve1`,`lu1`,`sa1`,`me1`,`ma1`,`di1`,`je1`,`ve7`,`sa7`,`ma6`,`me7`,`je7`,`lu2`,`lu7`,`je2`,`di7`,`ma2`,`me2`,`ve2`,`ma3`,`di2`,`lu3`,`je3`,`me3`,`sa2`,`ve3`,`di3`,`lu5`,`ma4`,`sa3`,`je4`,`lu4`,`di4`,`me4`,`ma5`,`ve4`,`me5`,`ve5`,`sa4`,`je5`,`di5`,`sa5`,`ma7`,`lu6`,`me6`,`je6`,`ve6`,`di6`,`sa6`,`id_fi`,`dateop`) values (3,'toto','df','qw','df',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-02-17 07:45:41');

/*Table structure for table `departement` */

DROP TABLE IF EXISTS `departement`;

CREATE TABLE `departement` (
  `id_dep` int(11) NOT NULL AUTO_INCREMENT,
  `nom_depa` varchar(30) NOT NULL,
  PRIMARY KEY (`nom_depa`),
  KEY `id_dep` (`id_dep`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `departement` */

insert  into `departement`(`id_dep`,`nom_depa`) values (1,'informatique'),(2,'mathematique'),(3,'lettre'),(4,'physique');

/*Table structure for table `enseignant` */

DROP TABLE IF EXISTS `enseignant`;

CREATE TABLE `enseignant` (
  `id_prof` int(11) NOT NULL AUTO_INCREMENT,
  `nom_prof` varchar(30) NOT NULL,
  `email` varchar(45) NOT NULL,
  `faculte` varchar(30) DEFAULT NULL,
  `departement` varchar(30) DEFAULT NULL,
  `ue` varchar(20) DEFAULT NULL,
  `mdp` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`nom_prof`,`email`,`id_prof`),
  KEY `id` (`id_prof`),
  KEY `enseignant_ibfk_1` (`departement`),
  CONSTRAINT `enseignant_ibfk_1` FOREIGN KEY (`departement`) REFERENCES `departement` (`nom_depa`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `enseignant` */

insert  into `enseignant`(`id_prof`,`nom_prof`,`email`,`faculte`,`departement`,`ue`,`mdp`) values (2,'MOYOU','moyou@gmail.com','science','informatique','ict201','1234'),(3,'musima','musima@gmail.com','science','informatique','eng203','123'),(12,'ndongo','ndongo@gmail.com','science','informatique','fran203','1234'),(10,'nkouandou','abou@gmail.com','science','informatique','ict217','237'),(1,'sevany','sevany@gmail.com','science','informatique','ict203','1234'),(13,'tchio','tchio@gmail.com','science','informatique','ict303','123');

/*Table structure for table `etudiant` */

DROP TABLE IF EXISTS `etudiant`;

CREATE TABLE `etudiant` (
  `matricule` varchar(30) DEFAULT NULL,
  `nom` varchar(30) DEFAULT NULL,
  `faculter` varchar(30) DEFAULT NULL,
  `filiere` varchar(30) DEFAULT NULL,
  `niveau` varchar(30) DEFAULT NULL,
  KEY `filiere` (`filiere`),
  CONSTRAINT `etudiant_ibfk_1` FOREIGN KEY (`filiere`) REFERENCES `filiere` (`nom_fi`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `etudiant` */

insert  into `etudiant`(`matricule`,`nom`,`faculter`,`filiere`,`niveau`) values ('22V2343','PHAREL','SCIENCE','ict4d','L1');

/*Table structure for table `faculter` */

DROP TABLE IF EXISTS `faculter`;

CREATE TABLE `faculter` (
  `id_fa` int(11) NOT NULL AUTO_INCREMENT,
  `nom_fa` varchar(30) NOT NULL,
  PRIMARY KEY (`id_fa`,`nom_fa`),
  KEY `id_fa` (`id_fa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `faculter` */

/*Table structure for table `filiere` */

DROP TABLE IF EXISTS `filiere`;

CREATE TABLE `filiere` (
  `id_fi` int(11) NOT NULL AUTO_INCREMENT,
  `nom_fi` varchar(30) NOT NULL,
  `niveau` varchar(30) NOT NULL,
  `semestre` varchar(11) NOT NULL,
  PRIMARY KEY (`nom_fi`,`niveau`,`semestre`),
  KEY `id_fi` (`id_fi`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `filiere` */

insert  into `filiere`(`id_fi`,`nom_fi`,`niveau`,`semestre`) values (46,'ICT4D','L2','1'),(47,'ict4d','l1','1'),(48,'ict4d','l3','1');

/*Table structure for table `ict4d` */

DROP TABLE IF EXISTS `ict4d`;

CREATE TABLE `ict4d` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ve1` varchar(255) DEFAULT NULL,
  `lu1` varchar(255) DEFAULT NULL,
  `sa1` varchar(255) DEFAULT NULL,
  `me1` varchar(255) DEFAULT NULL,
  `ma1` varchar(255) DEFAULT NULL,
  `di1` varchar(255) DEFAULT NULL,
  `je1` varchar(255) DEFAULT NULL,
  `ve7` varchar(255) DEFAULT NULL,
  `sa7` varchar(255) DEFAULT NULL,
  `ma6` varchar(255) DEFAULT NULL,
  `me7` varchar(255) DEFAULT NULL,
  `je7` varchar(255) DEFAULT NULL,
  `lu2` varchar(255) DEFAULT NULL,
  `lu7` varchar(255) DEFAULT NULL,
  `je2` varchar(255) DEFAULT NULL,
  `di7` varchar(255) DEFAULT NULL,
  `ma2` varchar(255) DEFAULT NULL,
  `me2` varchar(255) DEFAULT NULL,
  `ve2` varchar(255) DEFAULT NULL,
  `ma3` varchar(255) DEFAULT NULL,
  `di2` varchar(255) DEFAULT NULL,
  `lu3` varchar(255) DEFAULT NULL,
  `je3` varchar(255) DEFAULT NULL,
  `me3` varchar(255) DEFAULT NULL,
  `sa2` varchar(255) DEFAULT NULL,
  `ve3` varchar(255) DEFAULT NULL,
  `di3` varchar(255) DEFAULT NULL,
  `lu5` varchar(255) DEFAULT NULL,
  `ma4` varchar(255) DEFAULT NULL,
  `sa3` varchar(255) DEFAULT NULL,
  `je4` varchar(255) DEFAULT NULL,
  `lu4` varchar(255) DEFAULT NULL,
  `di4` varchar(255) DEFAULT NULL,
  `me4` varchar(255) DEFAULT NULL,
  `ma5` varchar(255) DEFAULT NULL,
  `ve4` varchar(255) DEFAULT NULL,
  `me5` varchar(255) DEFAULT NULL,
  `ve5` varchar(255) DEFAULT NULL,
  `sa4` varchar(255) DEFAULT NULL,
  `je5` varchar(255) DEFAULT NULL,
  `di5` varchar(255) DEFAULT NULL,
  `sa5` varchar(255) DEFAULT NULL,
  `ma7` varchar(255) DEFAULT NULL,
  `lu6` varchar(255) DEFAULT NULL,
  `me6` varchar(255) DEFAULT NULL,
  `je6` varchar(255) DEFAULT NULL,
  `ve6` varchar(255) DEFAULT NULL,
  `di6` varchar(255) DEFAULT NULL,
  `sa6` varchar(255) DEFAULT NULL,
  `id_fi` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_fi` (`id_fi`),
  CONSTRAINT `ict4d_ibfk_1` FOREIGN KEY (`id_fi`) REFERENCES `filiere` (`id_fi`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ict4d` */

insert  into `ict4d`(`id`,`ve1`,`lu1`,`sa1`,`me1`,`ma1`,`di1`,`je1`,`ve7`,`sa7`,`ma6`,`me7`,`je7`,`lu2`,`lu7`,`je2`,`di7`,`ma2`,`me2`,`ve2`,`ma3`,`di2`,`lu3`,`je3`,`me3`,`sa2`,`ve3`,`di3`,`lu5`,`ma4`,`sa3`,`je4`,`lu4`,`di4`,`me4`,`ma5`,`ve4`,`me5`,`ve5`,`sa4`,`je5`,`di5`,`sa5`,`ma7`,`lu6`,`me6`,`je6`,`ve6`,`di6`,`sa6`,`id_fi`) values (46,'ICT207\r\nMONTHE\r\nS008','ENG203\r\nMUSIMA\r\nS003','','ENG203\r\nMUSIMA\r\nS003','ICT215\r\nVIDEME\r\nS003','','ICT203\r\nSEVANY\r\nS008','','','','','','ICT217\r\nNKOUAND\r\nDOU\r\nS003','','ICT205\r\nCACTCHA\r\nS008','','ICT213\r\nNKODOCK\r\nS003','ICT203\r\nSEVANY\r\nS003\r\n','ICT205\r\nCACTCHA\r\nS008','FRAN203\r\nNDONGO\r\nS003','','ICT201\r\nMOYOU\r\nS003','','ICT201\r\nMOYOU\r\nS003','','ICT213\r\nNKODOCK\r\nS003','','','ICT207\r\nMONTHE\r\nS008\r\n','','PROGET\r\nJAVA1\r\n','FRAN203\r\nNDONGO\r\nS003','','ICT217\r\nNKOUAND\r\nDOU\r\nS003','','ICT215\r\nVIDEME\r\nS003','','','','PROGET\r\nJAVA1\r\n','','','','','','','','','',46),(48,'ICT103\r\nMessi','ICT107\r\nNIMPa','','ICT107\r\nNimpa','PROJETC\r\nEONE OSCAR','','ICT101\r\nNzekon','','','','','','ICT105\r\nTCHIO\r\n','','ICT109\r\nMbang','','ICT105\r\nTHIO','ICT111\r\nTamo','ICT103\r\nMessi','ICT111\r\nTAMO','','PROJETC\r\nEONE OSCAR','ICT101\r\nNzekon','ICT109\r\nMbang','','','','','','','','','','','','','','','','','','','','','','','','','',47),(49,'FRAN303 \r\nBiyong','ICT303 \r\nMbous','','ICT301\r\nMonthe','ENG303 \r\nMusima','','ENG303 \r\nMusima','','','','','','ICT313 \r\nMoyou\r\n','','ICT315 \r\nTankou','','ICT317 \r\nAbessolo','ICT315 \r\nKutche\r\n','ICT305 \r\nCactcha','ICT305 \r\nNjine ','','ICT307 \r\nAminou','ICT317 \r\nAbessolo','ICT303 \r\nAminou','','ICT301 \r\nMonthe','','','FRAN303 \r\nBiyong','','','ICT313 \r\nMoyou','','ICT300 \r\nAminou-Tchio','','ICT300 \r\nMessi-Nkouandou','','','','','','','','','','','','','',48);

/*Table structure for table `inserte` */

DROP TABLE IF EXISTS `inserte`;

CREATE TABLE `inserte` (
  `id` int(11) NOT NULL DEFAULT 0,
  `ve1` varchar(255) DEFAULT NULL,
  `lu1` varchar(255) DEFAULT NULL,
  `sa1` varchar(255) DEFAULT NULL,
  `me1` varchar(255) DEFAULT NULL,
  `ma1` varchar(255) DEFAULT NULL,
  `di1` varchar(255) DEFAULT NULL,
  `je1` varchar(255) DEFAULT NULL,
  `ve7` varchar(255) DEFAULT NULL,
  `sa7` varchar(255) DEFAULT NULL,
  `ma6` varchar(255) DEFAULT NULL,
  `me7` varchar(255) DEFAULT NULL,
  `je7` varchar(255) DEFAULT NULL,
  `lu2` varchar(255) DEFAULT NULL,
  `lu7` varchar(255) DEFAULT NULL,
  `je2` varchar(255) DEFAULT NULL,
  `di7` varchar(255) DEFAULT NULL,
  `ma2` varchar(255) DEFAULT NULL,
  `me2` varchar(255) DEFAULT NULL,
  `ve2` varchar(255) DEFAULT NULL,
  `ma3` varchar(255) DEFAULT NULL,
  `di2` varchar(255) DEFAULT NULL,
  `lu3` varchar(255) DEFAULT NULL,
  `je3` varchar(255) DEFAULT NULL,
  `me3` varchar(255) DEFAULT NULL,
  `sa2` varchar(255) DEFAULT NULL,
  `ve3` varchar(255) DEFAULT NULL,
  `di3` varchar(255) DEFAULT NULL,
  `lu5` varchar(255) DEFAULT NULL,
  `ma4` varchar(255) DEFAULT NULL,
  `sa3` varchar(255) DEFAULT NULL,
  `je4` varchar(255) DEFAULT NULL,
  `lu4` varchar(255) DEFAULT NULL,
  `di4` varchar(255) DEFAULT NULL,
  `me4` varchar(255) DEFAULT NULL,
  `ma5` varchar(255) DEFAULT NULL,
  `ve4` varchar(255) DEFAULT NULL,
  `me5` varchar(255) DEFAULT NULL,
  `ve5` varchar(255) DEFAULT NULL,
  `sa4` varchar(255) DEFAULT NULL,
  `je5` varchar(255) DEFAULT NULL,
  `di5` varchar(255) DEFAULT NULL,
  `sa5` varchar(255) DEFAULT NULL,
  `ma7` varchar(255) DEFAULT NULL,
  `lu6` varchar(255) DEFAULT NULL,
  `me6` varchar(255) DEFAULT NULL,
  `je6` varchar(255) DEFAULT NULL,
  `ve6` varchar(255) DEFAULT NULL,
  `di6` varchar(255) DEFAULT NULL,
  `sa6` varchar(255) DEFAULT NULL,
  `id_fi` int(11) DEFAULT NULL,
  `dateop` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `inserte` */

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `nom` varchar(30) DEFAULT NULL,
  `prenom` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `mdp` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `login` */

insert  into `login`(`nom`,`prenom`,`email`,`mdp`) values ('toto','jean','eee','1234'),('toto','jean','eee','123'),('toto','jean','eee','123'),('','','',''),('','','',''),('','','',''),('','','',''),('','','',''),('','','','12'),('qww','','',''),('12','as','12','as');

/*Table structure for table `matiere` */

DROP TABLE IF EXISTS `matiere`;

CREATE TABLE `matiere` (
  `id_mat` int(11) NOT NULL AUTO_INCREMENT,
  `code_ue` varchar(25) NOT NULL,
  `nom_ue` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_mat`,`code_ue`),
  KEY `id_mat` (`id_mat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `matiere` */

/*Table structure for table `programme` */

DROP TABLE IF EXISTS `programme`;

CREATE TABLE `programme` (
  `id_pro` int(11) DEFAULT NULL,
  `horaire` varchar(25) DEFAULT NULL,
  `jour` varchar(25) DEFAULT NULL,
  `code_ue` varchar(25) DEFAULT NULL,
  `nom_ens` varchar(25) DEFAULT NULL,
  `nom_clas` varchar(25) DEFAULT NULL,
  KEY `nom_clas` (`nom_clas`),
  KEY `programme_ibfk_1` (`nom_ens`),
  CONSTRAINT `programme_ibfk_1` FOREIGN KEY (`nom_ens`) REFERENCES `enseignant` (`nom_prof`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `programme_ibfk_2` FOREIGN KEY (`nom_clas`) REFERENCES `salle` (`nom_sal`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `programme` */

/*Table structure for table `salle` */

DROP TABLE IF EXISTS `salle`;

CREATE TABLE `salle` (
  `nom_sal` varchar(30) NOT NULL,
  `effectif` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`nom_sal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `salle` */

insert  into `salle`(`nom_sal`,`effectif`) values ('R10','300'),('s003','80'),('s008','200');

/*Table structure for table `trace` */

DROP TABLE IF EXISTS `trace`;

CREATE TABLE `trace` (
  `id` int(11) NOT NULL DEFAULT 0,
  `ve1` varchar(255) DEFAULT NULL,
  `lu1` varchar(255) DEFAULT NULL,
  `sa1` varchar(255) DEFAULT NULL,
  `me1` varchar(255) DEFAULT NULL,
  `ma1` varchar(255) DEFAULT NULL,
  `di1` varchar(255) DEFAULT NULL,
  `je1` varchar(255) DEFAULT NULL,
  `ve7` varchar(255) DEFAULT NULL,
  `sa7` varchar(255) DEFAULT NULL,
  `ma6` varchar(255) DEFAULT NULL,
  `me7` varchar(255) DEFAULT NULL,
  `je7` varchar(255) DEFAULT NULL,
  `lu2` varchar(255) DEFAULT NULL,
  `lu7` varchar(255) DEFAULT NULL,
  `je2` varchar(255) DEFAULT NULL,
  `di7` varchar(255) DEFAULT NULL,
  `ma2` varchar(255) DEFAULT NULL,
  `me2` varchar(255) DEFAULT NULL,
  `ve2` varchar(255) DEFAULT NULL,
  `ma3` varchar(255) DEFAULT NULL,
  `di2` varchar(255) DEFAULT NULL,
  `lu3` varchar(255) DEFAULT NULL,
  `je3` varchar(255) DEFAULT NULL,
  `me3` varchar(255) DEFAULT NULL,
  `sa2` varchar(255) DEFAULT NULL,
  `ve3` varchar(255) DEFAULT NULL,
  `di3` varchar(255) DEFAULT NULL,
  `lu5` varchar(255) DEFAULT NULL,
  `ma4` varchar(255) DEFAULT NULL,
  `sa3` varchar(255) DEFAULT NULL,
  `je4` varchar(255) DEFAULT NULL,
  `lu4` varchar(255) DEFAULT NULL,
  `di4` varchar(255) DEFAULT NULL,
  `me4` varchar(255) DEFAULT NULL,
  `ma5` varchar(255) DEFAULT NULL,
  `ve4` varchar(255) DEFAULT NULL,
  `me5` varchar(255) DEFAULT NULL,
  `ve5` varchar(255) DEFAULT NULL,
  `sa4` varchar(255) DEFAULT NULL,
  `je5` varchar(255) DEFAULT NULL,
  `di5` varchar(255) DEFAULT NULL,
  `sa5` varchar(255) DEFAULT NULL,
  `ma7` varchar(255) DEFAULT NULL,
  `lu6` varchar(255) DEFAULT NULL,
  `me6` varchar(255) DEFAULT NULL,
  `je6` varchar(255) DEFAULT NULL,
  `ve6` varchar(255) DEFAULT NULL,
  `di6` varchar(255) DEFAULT NULL,
  `sa6` varchar(255) DEFAULT NULL,
  `id_fi` int(11) DEFAULT NULL,
  `dateop` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `trace` */

/*Table structure for table `trace_etu` */

DROP TABLE IF EXISTS `trace_etu`;

CREATE TABLE `trace_etu` (
  `matricule` varchar(30) NOT NULL,
  `nom` varchar(30) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `date_nais` date DEFAULT NULL,
  `note` int(11) DEFAULT NULL,
  `ville` varchar(20) DEFAULT NULL,
  `region` varchar(39) DEFAULT NULL,
  `date_op` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `trace_etu` */

insert  into `trace_etu`(`matricule`,`nom`,`sex`,`date_nais`,`note`,`ville`,`region`,`date_op`) values ('22v2223','marie','f','2004-06-28',18,'dla','LI','2023-12-13 13:02:50'),('22v2423','andre',NULL,NULL,NULL,NULL,NULL,'2023-12-13 23:37:01'),('22v2403','lea',NULL,NULL,NULL,NULL,NULL,'2023-12-13 23:37:02'),('22v2493','jouan',NULL,NULL,NULL,NULL,NULL,'2023-12-13 23:37:03'),('22v2425','junior',NULL,NULL,NULL,NULL,NULL,'2023-12-13 23:37:04'),('22v2425','junior','f',NULL,NULL,NULL,NULL,'2023-12-13 23:37:07'),('22v2410','yan',NULL,NULL,NULL,NULL,NULL,'2023-12-13 23:37:08'),('22v2448','pablo',NULL,NULL,NULL,NULL,NULL,'2023-12-13 23:37:09'),('22v2421','cristian',NULL,NULL,NULL,NULL,NULL,'2023-12-13 23:37:09'),('22v2454','paulin',NULL,NULL,NULL,NULL,NULL,'2023-12-13 23:37:10'),('22v2490','yannik',NULL,NULL,NULL,NULL,NULL,'2023-12-13 23:37:10'),('22v2234','paola',NULL,NULL,NULL,NULL,NULL,'2023-12-13 23:37:11'),('22v2234','paola','m',NULL,NULL,NULL,NULL,'2023-12-13 23:37:13'),('22v1443','emile',NULL,NULL,NULL,NULL,NULL,'2023-12-13 23:37:14'),('22v3443','sintia',NULL,NULL,NULL,NULL,NULL,'2023-12-13 23:37:14'),('22v4443','yog',NULL,NULL,NULL,NULL,NULL,'2023-12-13 23:37:15'),('22v2543','pasto',NULL,NULL,NULL,NULL,NULL,'2023-12-13 23:37:15'),('22v7443','corine',NULL,NULL,NULL,NULL,NULL,'2023-12-13 23:37:15'),('22v0443','nono',NULL,NULL,NULL,NULL,NULL,'2023-12-13 23:37:16'),('22v1442','alino',NULL,NULL,NULL,NULL,NULL,'2023-12-13 23:37:21'),('22v2423','andre','m',NULL,NULL,NULL,NULL,'2023-12-13 23:37:24'),('22v2403','lea','f',NULL,NULL,NULL,NULL,'2023-12-13 23:37:25'),('22v2493','jouan','m',NULL,NULL,NULL,NULL,'2023-12-13 23:37:25'),('22v2425','junior','m',NULL,NULL,NULL,NULL,'2023-12-13 23:37:26'),('22v2410','yan','m',NULL,NULL,NULL,NULL,'2023-12-13 23:37:26'),('22v2448','pablo','m',NULL,NULL,NULL,NULL,'2023-12-13 23:37:26'),('22v2421','cristian','m',NULL,NULL,NULL,NULL,'2023-12-13 23:37:27'),('22v2454','paulin','m',NULL,NULL,NULL,NULL,'2023-12-13 23:37:27'),('22v2490','yannik','m',NULL,NULL,NULL,NULL,'2023-12-13 23:37:27'),('22v2234','paola','f',NULL,NULL,NULL,NULL,'2023-12-13 23:37:27'),('22v1443','emile','f',NULL,NULL,NULL,NULL,'2023-12-13 23:37:28'),('22v4443','yog','f',NULL,NULL,NULL,NULL,'2023-12-13 23:37:28'),('22v2543','pasto','f',NULL,NULL,NULL,NULL,'2023-12-13 23:37:29'),('22v7443','corine','f',NULL,NULL,NULL,NULL,'2023-12-13 23:37:29'),('22v0443','nono','f',NULL,NULL,NULL,NULL,'2023-12-13 23:37:29'),('22v1442','alino','m',NULL,NULL,NULL,NULL,'2023-12-13 23:37:44'),('22v3443','sintia','f',NULL,NULL,NULL,NULL,'2023-12-13 23:37:48'),('22v2423','andre','m',NULL,14,NULL,NULL,'2023-12-13 23:37:56'),('22v2403','lea','f',NULL,15,NULL,NULL,'2023-12-13 23:37:56'),('22v2493','jouan','m',NULL,15,NULL,NULL,'2023-12-13 23:37:57'),('22v2425','junior','m',NULL,1,NULL,NULL,'2023-12-13 23:37:57'),('22v2410','yan','m',NULL,2,NULL,NULL,'2023-12-13 23:37:57'),('22v2448','pablo','m',NULL,21,NULL,NULL,'2023-12-13 23:38:08'),('22v2421','cristian','m',NULL,24,NULL,NULL,'2023-12-13 23:38:08'),('22v2454','paulin','m',NULL,41,NULL,NULL,'2023-12-13 23:38:08'),('22v2490','yannik','m',NULL,15,NULL,NULL,'2023-12-13 23:38:09'),('22v2234','paola','f',NULL,15,NULL,NULL,'2023-12-13 23:38:09'),('22v1443','emile','f',NULL,1,NULL,NULL,'2023-12-13 23:38:10'),('22v3443','sintia','f',NULL,14,NULL,NULL,'2023-12-13 23:38:11'),('22v4443','yog','f',NULL,2,NULL,NULL,'2023-12-13 23:38:11'),('22v2543','pasto','f',NULL,21,NULL,NULL,'2023-12-13 23:38:12'),('22v7443','corine','f',NULL,12,NULL,NULL,'2023-12-13 23:38:12'),('22v0443','nono','f',NULL,12,NULL,NULL,'2023-12-13 23:38:13'),('22v1442','alino','m',NULL,12,NULL,NULL,'2023-12-13 23:38:19'),('22v2448','pablo','m',NULL,21,'yde',NULL,'2023-12-13 23:38:24'),('22v2421','cristian','m',NULL,24,'yde',NULL,'2023-12-13 23:38:24'),('22v2454','paulin','m',NULL,41,'yde',NULL,'2023-12-13 23:38:24'),('22v2490','yannik','m',NULL,15,'yde',NULL,'2023-12-13 23:38:25'),('22v2234','paola','f',NULL,15,'yde',NULL,'2023-12-13 23:38:25'),('22v1443','emile','f',NULL,1,'yde',NULL,'2023-12-13 23:38:25'),('22v3443','sintia','f',NULL,14,'yde',NULL,'2023-12-13 23:38:26'),('22v4443','yog','f',NULL,2,'yde',NULL,'2023-12-13 23:38:26'),('22v2543','pasto','f',NULL,21,'yde',NULL,'2023-12-13 23:38:26'),('22v7443','corine','f',NULL,12,'yde',NULL,'2023-12-13 23:38:26'),('22v0443','nono','f',NULL,12,'yde',NULL,'2023-12-13 23:38:26'),('22v1442','alino','m',NULL,12,'yde',NULL,'2023-12-13 23:38:27'),('22v2423','andre','m',NULL,14,'dla',NULL,'2023-12-13 23:38:41'),('22v2403','lea','f',NULL,15,'dla',NULL,'2023-12-13 23:38:41'),('22v2493','jouan','m',NULL,15,'dla',NULL,'2023-12-13 23:38:41'),('22v2425','junior','m',NULL,1,'dla',NULL,'2023-12-13 23:38:42'),('22v2410','yan','m',NULL,2,'dla',NULL,'2023-12-13 23:38:47'),('22v2423','andre','m',NULL,14,'dla','LI','2023-12-13 23:38:51'),('22v2403','lea','f',NULL,15,'dla','LI','2023-12-13 23:38:51'),('22v2493','jouan','m',NULL,15,'dla','LI','2023-12-13 23:38:51'),('22v2425','junior','m',NULL,1,'dla','LI','2023-12-13 23:38:51'),('22v2410','yan','m',NULL,2,'dla','LI','2023-12-13 23:38:52'),('22v2421','cristian','m',NULL,24,'yde','CE','2023-12-13 23:38:53'),('22v2448','pablo','m',NULL,21,'yde','CE','2023-12-13 23:38:56'),('22v2454','paulin','m',NULL,41,'yde','CE','2023-12-13 23:39:01'),('22v2490','yannik','m',NULL,15,'yde','CE','2023-12-13 23:39:01'),('22v2234','paola','f',NULL,15,'yde','CE','2023-12-13 23:39:01'),('22v1443','emile','f',NULL,1,'yde','CE','2023-12-13 23:39:02'),('22v3443','sintia','f',NULL,14,'yde','CE','2023-12-13 23:39:05'),('22v4443','yog','f',NULL,2,'yde','CE','2023-12-13 23:39:22'),('22v2543','pasto','f',NULL,21,'yde','CE','2023-12-13 23:39:24'),('22v7443','corine','f',NULL,12,'yde','CE','2023-12-13 23:39:24'),('22v0443','nono','f',NULL,12,'yde','CE','2023-12-13 23:39:29'),('22v1442','alino','m',NULL,12,'yde','CE','2023-12-13 23:39:45');

/* Trigger structure for table `ict4d` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `create_planing` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `create_planing` AFTER INSERT ON `ict4d` FOR EACH ROW BEGIN
        INSERT INTO `inserte`(id, ve1, lu1, sa1, me1, ma1, di1, je1, ve7, sa7, ma6, me7, je7, lu2, lu7, je2, di7, ma2, me2, ve2, ma3, di2, lu3, je3, me3, sa2, ve3, di3, lu5, ma4, sa3, je4, lu4, di4, me4, ma5, ve4, me5, ve5, sa4, je5, di5, sa5, ma7, lu6, me6, je6, ve6, di6, sa6, id_fi, dateop)
        VALUES (NEW.id, NEW.ve1, NEW.lu1, NEW.sa1, NEW.me1, NEW.ma1, NEW.di1, NEW.je1, NEW.ve7, NEW.sa7, NEW.ma6, NEW.me7, NEW.je7, NEW.lu2, NEW.lu7, NEW.je2, NEW.di7, NEW.ma2, NEW.me2, NEW.ve2, NEW.ma3, NEW.di2, NEW.lu3, NEW.je3, NEW.me3, NEW.sa2, NEW.ve3, NEW.di3, NEW.lu5, NEW.ma4, NEW.sa3, NEW.je4, NEW.lu4, NEW.di4, NEW.me4, NEW.ma5, NEW.ve4, NEW.me5, NEW.ve5, NEW.sa4, NEW.je5, NEW.di5, NEW.sa5, NEW.ma7, NEW.lu6, NEW.me6, NEW.je6, NEW.ve6, NEW.di6, NEW.sa6, NEW.id_fi, NOW());
    END */$$


DELIMITER ;

/* Trigger structure for table `ict4d` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `update_planing` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `update_planing` BEFORE UPDATE ON `ict4d` FOR EACH ROW BEGIN
        INSERT INTO trace (id, ve1, lu1, sa1, me1, ma1, di1, je1, ve7, sa7, ma6, me7, je7, lu2, lu7, je2, di7, ma2, me2, ve2, ma3, di2, lu3, je3, me3, sa2, ve3, di3, lu5, ma4, sa3, je4, lu4, di4, me4, ma5, ve4, me5, ve5, sa4, je5, di5, sa5, ma7, lu6, me6, je6, ve6, di6, sa6, id_fi, dateop)
        VALUES (OLD.id, OLD.ve1, OLD.lu1, OLD.sa1, OLD.me1, OLD.ma1, OLD.di1, OLD.je1, OLD.ve7, OLD.sa7, OLD.ma6, OLD.me7, OLD.je7, OLD.lu2, OLD.lu7, OLD.je2, OLD.di7, OLD.ma2, OLD.me2, OLD.ve2, OLD.ma3, OLD.di2, OLD.lu3, OLD.je3, OLD.me3, OLD.sa2, OLD.ve3, OLD.di3, OLD.lu5, OLD.ma4, OLD.sa3, OLD.je4, OLD.lu4, OLD.di4, OLD.me4, OLD.ma5, OLD.ve4, OLD.me5, OLD.ve5, OLD.sa4, OLD.je5, OLD.di5, OLD.sa5, OLD.ma7, OLD.lu6, OLD.me6, OLD.je6, OLD.ve6, OLD.di6, OLD.sa6, OLD.id_fi, NOW());
    END */$$


DELIMITER ;

/* Trigger structure for table `ict4d` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `delete_planing` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `delete_planing` BEFORE DELETE ON `ict4d` FOR EACH ROW BEGIN
        INSERT INTO `delet` (id, ve1, lu1, sa1, me1, ma1, di1, je1, ve7, sa7, ma6, me7, je7, lu2, lu7, je2, di7, ma2, me2, ve2, ma3, di2, lu3, je3, me3, sa2, ve3, di3, lu5, ma4, sa3, je4, lu4, di4, me4, ma5, ve4, me5, ve5, sa4, je5, di5, sa5, ma7, lu6, me6, je6, ve6, di6, sa6, id_fi, dateop)
        VALUES (OLD.id, OLD.ve1, OLD.lu1, OLD.sa1, OLD.me1, OLD.ma1, OLD.di1, OLD.je1, OLD.ve7, OLD.sa7, OLD.ma6, OLD.me7, OLD.je7, OLD.lu2, OLD.lu7, OLD.je2, OLD.di7, OLD.ma2, OLD.me2, OLD.ve2, OLD.ma3, OLD.di2, OLD.lu3, OLD.je3, OLD.me3, OLD.sa2, OLD.ve3, OLD.di3, OLD.lu5, OLD.ma4, OLD.sa3, OLD.je4, OLD.lu4, OLD.di4, OLD.me4, OLD.ma5, OLD.ve4, OLD.me5, OLD.ve5, OLD.sa4, OLD.je5, OLD.di5, OLD.sa5, OLD.ma7, OLD.lu6, OLD.me6, OLD.je6, OLD.ve6, OLD.di6, OLD.sa6, OLD.id_fi, NOW());
    END */$$


DELIMITER ;

/* Procedure structure for procedure `CalculerAgeMoyenEntreParametres` */

/*!50003 DROP PROCEDURE IF EXISTS  `CalculerAgeMoyenEntreParametres` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `CalculerAgeMoyenEntreParametres`(IN age_min INT, IN age_max INT)
BEGIN
   DECLARE etudiant_age INT;
   DECLARE done INT DEFAULT FALSE;
   DECLARE total_age INT DEFAULT 0;
   DECLARE count_etudiants INT DEFAULT 0;
   DECLARE age_moyen DECIMAL(10, 2);
   DECLARE etudiant_cursor CURSOR FOR
      SELECT age as age FROM `calcul_age` WHERE age BETWEEN age_min AND age_max;
   DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
   OPEN etudiant_cursor;
   read_loop: LOOP
      FETCH etudiant_cursor INTO etudiant_age;
      IF done THEN
         LEAVE read_loop;
      END IF;
      SET total_age = total_age + etudiant_age;
      SET count_etudiants = count_etudiants + 1;
   END LOOP;
   CLOSE etudiant_cursor;
   IF count_etudiants > 0 THEN
      SET age_moyen = total_age / count_etudiants;
      SELECT age_moyen,count_etudiants;
   
   ELSE
      SELECT 'Aucun étudiant trouvé dans la plage d''âge spécifiée.';
   END IF;
   
END */$$
DELIMITER ;

/* Procedure structure for procedure `CalculerAgeMoy_curseur` */

/*!50003 DROP PROCEDURE IF EXISTS  `CalculerAgeMoy_curseur` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `CalculerAgeMoy_curseur`(IN age_min INT, IN age_max INT)
BEGIN
   DECLARE etudiant_age INT;
   DECLARE donne_lue INT DEFAULT FALSE;
   DECLARE som_age INT DEFAULT 0;
   DECLARE nbre_etudiants INT DEFAULT 0;
   DECLARE age_moyen DECIMAL(10, 2);
   DECLARE moy_etudiant_cursor CURSOR FOR
   
      SELECT age  FROM `calcul_age` WHERE age BETWEEN age_min AND age_max;
   DECLARE CONTINUE HANDLER FOR NOT FOUND SET donne_lue = TRUE;
   OPEN moy_etudiant_cursor;
   read_loop: LOOP
      FETCH moy_etudiant_cursor INTO etudiant_age;
      IF donne_lue THEN
         LEAVE read_loop;
      END IF;
      SET som_age = som_age + etudiant_age;
      SET nbre_etudiants = nbre_etudiants + 1;
   END LOOP;
   CLOSE moy_etudiant_cursor;
   IF nbre_etudiants> 0 THEN
      SET age_moyen = total_age / nbre_etudiants;
      SELECT age_moyen;
   ELSE
      SELECT 'intervalle d''age introuvablre' as ERREUR;
   END IF;
END */$$
DELIMITER ;

/*Table structure for table `emploidetemps` */

DROP TABLE IF EXISTS `emploidetemps`;

/*!50001 DROP VIEW IF EXISTS `emploidetemps` */;
/*!50001 DROP TABLE IF EXISTS `emploidetemps` */;

/*!50001 CREATE TABLE  `emploidetemps`(
 `id` int(11) ,
 `ve1` varchar(255) ,
 `lu1` varchar(255) ,
 `sa1` varchar(255) ,
 `me1` varchar(255) ,
 `ma1` varchar(255) ,
 `di1` varchar(255) ,
 `je1` varchar(255) ,
 `ve7` varchar(255) ,
 `sa7` varchar(255) ,
 `ma6` varchar(255) ,
 `me7` varchar(255) ,
 `je7` varchar(255) ,
 `lu2` varchar(255) ,
 `lu7` varchar(255) ,
 `je2` varchar(255) ,
 `di7` varchar(255) ,
 `ma2` varchar(255) ,
 `me2` varchar(255) ,
 `ve2` varchar(255) ,
 `ma3` varchar(255) ,
 `di2` varchar(255) ,
 `lu3` varchar(255) ,
 `je3` varchar(255) ,
 `me3` varchar(255) ,
 `sa2` varchar(255) ,
 `ve3` varchar(255) ,
 `di3` varchar(255) ,
 `lu5` varchar(255) ,
 `ma4` varchar(255) ,
 `sa3` varchar(255) ,
 `je4` varchar(255) ,
 `lu4` varchar(255) ,
 `di4` varchar(255) ,
 `me4` varchar(255) ,
 `ma5` varchar(255) ,
 `ve4` varchar(255) ,
 `me5` varchar(255) ,
 `ve5` varchar(255) ,
 `sa4` varchar(255) ,
 `je5` varchar(255) ,
 `di5` varchar(255) ,
 `sa5` varchar(255) ,
 `ma7` varchar(255) ,
 `lu6` varchar(255) ,
 `me6` varchar(255) ,
 `je6` varchar(255) ,
 `ve6` varchar(255) ,
 `di6` varchar(255) ,
 `sa6` varchar(255) ,
 `id_fi` int(11) 
)*/;

/*View structure for view emploidetemps */

/*!50001 DROP TABLE IF EXISTS `emploidetemps` */;
/*!50001 DROP VIEW IF EXISTS `emploidetemps` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `emploidetemps` AS select `e`.`id` AS `id`,`e`.`ve1` AS `ve1`,`e`.`lu1` AS `lu1`,`e`.`sa1` AS `sa1`,`e`.`me1` AS `me1`,`e`.`ma1` AS `ma1`,`e`.`di1` AS `di1`,`e`.`je1` AS `je1`,`e`.`ve7` AS `ve7`,`e`.`sa7` AS `sa7`,`e`.`ma6` AS `ma6`,`e`.`me7` AS `me7`,`e`.`je7` AS `je7`,`e`.`lu2` AS `lu2`,`e`.`lu7` AS `lu7`,`e`.`je2` AS `je2`,`e`.`di7` AS `di7`,`e`.`ma2` AS `ma2`,`e`.`me2` AS `me2`,`e`.`ve2` AS `ve2`,`e`.`ma3` AS `ma3`,`e`.`di2` AS `di2`,`e`.`lu3` AS `lu3`,`e`.`je3` AS `je3`,`e`.`me3` AS `me3`,`e`.`sa2` AS `sa2`,`e`.`ve3` AS `ve3`,`e`.`di3` AS `di3`,`e`.`lu5` AS `lu5`,`e`.`ma4` AS `ma4`,`e`.`sa3` AS `sa3`,`e`.`je4` AS `je4`,`e`.`lu4` AS `lu4`,`e`.`di4` AS `di4`,`e`.`me4` AS `me4`,`e`.`ma5` AS `ma5`,`e`.`ve4` AS `ve4`,`e`.`me5` AS `me5`,`e`.`ve5` AS `ve5`,`e`.`sa4` AS `sa4`,`e`.`je5` AS `je5`,`e`.`di5` AS `di5`,`e`.`sa5` AS `sa5`,`e`.`ma7` AS `ma7`,`e`.`lu6` AS `lu6`,`e`.`me6` AS `me6`,`e`.`je6` AS `je6`,`e`.`ve6` AS `ve6`,`e`.`di6` AS `di6`,`e`.`sa6` AS `sa6`,`e`.`id_fi` AS `id_fi` from (`ict4d` `e` join `filiere` `f`) where `e`.`id_fi` = `f`.`id_fi` */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
