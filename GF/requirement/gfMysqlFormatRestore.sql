-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.16


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema gf3
--

CREATE DATABASE IF NOT EXISTS gf3;
USE gf3;

--
-- Definition of table `tblaktivatetap`
--

DROP TABLE IF EXISTS `tblaktivatetap`;
CREATE TABLE `tblaktivatetap` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `tglbeli` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `tgljual` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `tglout` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `kode` varchar(50) NOT NULL DEFAULT '',
  `nama` varchar(50) NOT NULL DEFAULT '',
  `belidari` varchar(50) NOT NULL DEFAULT '',
  `hargabeli` double DEFAULT '0',
  `tglsusut` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `metode` varchar(50) NOT NULL DEFAULT '',
  `perssusut` double DEFAULT '0',
  `usia` double DEFAULT '0',
  `catatan` varchar(50) NOT NULL DEFAULT '',
  `jualkpd` varchar(50) NOT NULL DEFAULT '',
  `alasanout` varchar(50) NOT NULL DEFAULT '',
  `outacc` double DEFAULT '0',
  `userin` varchar(50) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupt` varchar(50) NOT NULL DEFAULT '',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `subgroup` varchar(50) NOT NULL DEFAULT '',
  `tglend` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `lkstatus` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblaktivatetap`
--

/*!40000 ALTER TABLE `tblaktivatetap` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblaktivatetap` ENABLE KEYS */;


--
-- Definition of table `tblalias`
--

DROP TABLE IF EXISTS `tblalias`;
CREATE TABLE `tblalias` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `kodebarang` varchar(100) NOT NULL DEFAULT '',
  `idbarang` varchar(50) DEFAULT NULL,
  `namalainnya` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblalias`
--

/*!40000 ALTER TABLE `tblalias` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblalias` ENABLE KEYS */;


--
-- Definition of table `tblassepod`
--

DROP TABLE IF EXISTS `tblassepod`;
CREATE TABLE `tblassepod` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblassepod`
--

/*!40000 ALTER TABLE `tblassepod` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblassepod` ENABLE KEYS */;


--
-- Definition of table `tblasset`
--

DROP TABLE IF EXISTS `tblasset`;
CREATE TABLE `tblasset` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `kodemesin` varchar(50) NOT NULL DEFAULT '',
  `kodemesin2` varchar(50) NOT NULL DEFAULT '',
  `nokodeclb` varchar(255) NOT NULL DEFAULT '',
  `namamesin` varchar(50) NOT NULL DEFAULT '',
  `kodesupplier` varchar(50) NOT NULL DEFAULT '',
  `rak` varchar(255) NOT NULL DEFAULT '',
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `catatan` text,
  `gudang` varchar(100) NOT NULL DEFAULT '',
  `kategori` varchar(100) NOT NULL DEFAULT '',
  `jenis` varchar(100) NOT NULL DEFAULT '',
  `kodebarcode` varchar(125) NOT NULL DEFAULT '',
  `noseri` varchar(125) NOT NULL DEFAULT '',
  `harga` double DEFAULT '0',
  `sewatahun` double DEFAULT '0',
  `sewabulan` double DEFAULT '0',
  `sewahari` double DEFAULT '0',
  `sewajam` double DEFAULT '0',
  `status` varchar(5) NOT NULL DEFAULT '',
  `remarkcancel` text NOT NULL,
  `userreq` varchar(50) NOT NULL DEFAULT '',
  `jamreq` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userapr` varchar(50) NOT NULL DEFAULT '',
  `jamapr` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userrec` varchar(50) NOT NULL DEFAULT '',
  `jamrec` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userpost` varchar(50) NOT NULL DEFAULT '',
  `jampost` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupdpost` varchar(50) NOT NULL DEFAULT '',
  `jamupdpost` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `kodebrand` varchar(100) NOT NULL DEFAULT '',
  `isterjual` tinyint(1) NOT NULL DEFAULT '0',
  `ismm` tinyint(1) NOT NULL DEFAULT '0',
  `isam` tinyint(1) NOT NULL DEFAULT '0',
  `notransmm` varchar(125) NOT NULL DEFAULT '',
  `notransmk` varchar(125) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblasset`
--

/*!40000 ALTER TABLE `tblasset` DISABLE KEYS */;
INSERT INTO `tblasset` (`id`,`kodemesin`,`kodemesin2`,`nokodeclb`,`namamesin`,`kodesupplier`,`rak`,`tanggal`,`catatan`,`gudang`,`kategori`,`jenis`,`kodebarcode`,`noseri`,`harga`,`sewatahun`,`sewabulan`,`sewahari`,`sewajam`,`status`,`remarkcancel`,`userreq`,`jamreq`,`userapr`,`jamapr`,`userrec`,`jamrec`,`userpost`,`jampost`,`userupdpost`,`jamupdpost`,`kodebrand`,`isterjual`,`ismm`,`isam`,`notransmm`,`notransmk`) VALUES 
 (3,'ENG00001','ASS','00001','Asset sewa','','','1111-11-11 00:00:00','','','','','ENG00001','',0,0,0,0,0,'23','','JACKY','2024-04-30 13:39:51','JACKY','2024-04-30 13:41:23','','1111-11-11 00:00:00','','1111-11-11 00:00:00','','1111-11-11 00:00:00','',0,0,1,'',''),
 (19,'ENG00003','CLB-A','00002','Asset Receive','','','1111-11-11 00:00:00','','','GRP0001','','ENG00003','',0,544811110,54884515,54884515,854894,'23','','JACKY','2024-04-30 14:02:21','','1111-11-11 00:00:00','','1111-11-11 00:00:00','','1111-11-11 00:00:00','','1111-11-11 00:00:00','BND0001',0,0,1,'',''),
 (20,'ENG00004','CLB-A','00003','Asset Receive','','','1111-11-11 00:00:00','','','GRP0001','','ENG00004','',0,544811110,54884515,54884515,854894,'23','','JACKY','2024-04-30 14:02:21','','1111-11-11 00:00:00','','1111-11-11 00:00:00','','1111-11-11 00:00:00','','1111-11-11 00:00:00','BND0001',0,0,1,'',''),
 (21,'ENG00002','CLB-A','00001','Asset Receive','','','1111-11-11 00:00:00','','','GRP0001','','ENG00002','',0,544811110,54884515,54884515,854894,'23','','JACKY','2024-04-30 14:02:21','','1111-11-11 00:00:00','','1111-11-11 00:00:00','','1111-11-11 00:00:00','','1111-11-11 00:00:00','BND0001',0,0,1,'','');
/*!40000 ALTER TABLE `tblasset` ENABLE KEYS */;


--
-- Definition of table `tblassetpo`
--

DROP TABLE IF EXISTS `tblassetpo`;
CREATE TABLE `tblassetpo` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(50) NOT NULL DEFAULT '',
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `kodevendor` varchar(25) NOT NULL DEFAULT '',
  `kodegudang` varchar(50) NOT NULL DEFAULT '',
  `harga` double DEFAULT '0',
  `discount` double DEFAULT '0',
  `discpers` double DEFAULT '0',
  `tax` double DEFAULT '0',
  `taxpers` double DEFAULT '0',
  `expense` double DEFAULT '0',
  `total` double DEFAULT '0',
  `term` int(10) NOT NULL DEFAULT '0',
  `catatan` text,
  `remarkedit` text,
  `remarkcancel` text,
  `remarkreject` text,
  `iscredit` tinyint(1) NOT NULL DEFAULT '0',
  `status` varchar(15) NOT NULL DEFAULT '',
  `userin` varchar(25) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupt` varchar(25) NOT NULL DEFAULT '',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `usercheck` varchar(25) NOT NULL DEFAULT '',
  `jamcheck` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userappr` varchar(25) NOT NULL DEFAULT '',
  `jamappr` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblassetpo`
--

/*!40000 ALTER TABLE `tblassetpo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblassetpo` ENABLE KEYS */;


--
-- Definition of table `tblassetpod`
--

DROP TABLE IF EXISTS `tblassetpod`;
CREATE TABLE `tblassetpod` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(25) NOT NULL DEFAULT '',
  `kodemesin` varchar(25) NOT NULL DEFAULT '',
  `lokasi` varchar(125) NOT NULL DEFAULT '',
  `satuan` varchar(25) NOT NULL DEFAULT '',
  `period` double DEFAULT '0',
  `qty` double DEFAULT '0',
  `qtysatuan` double DEFAULT '0',
  `qtyori` double DEFAULT '0',
  `hargasatuan` double DEFAULT '0',
  `harga` double DEFAULT '0',
  `discount` double DEFAULT '0',
  `discpers` double DEFAULT '0',
  `tax` double DEFAULT '0',
  `taxpers` double DEFAULT '0',
  `total` double DEFAULT '0',
  `discountinv` double DEFAULT '0',
  `discpersinv` double DEFAULT '0',
  `catatanitem` text NOT NULL,
  `isdetail` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblassetpod`
--

/*!40000 ALTER TABLE `tblassetpod` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblassetpod` ENABLE KEYS */;


--
-- Definition of table `tblassetsementara`
--

DROP TABLE IF EXISTS `tblassetsementara`;
CREATE TABLE `tblassetsementara` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(50) NOT NULL DEFAULT '',
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `kodevendor` varchar(25) NOT NULL DEFAULT '',
  `kodegudang` varchar(50) NOT NULL DEFAULT '',
  `harga` double DEFAULT '0',
  `discount` double DEFAULT '0',
  `total` double DEFAULT '0',
  `catatan` text NOT NULL,
  `remarkedit` text NOT NULL,
  `remarkcancel` text NOT NULL,
  `remarkreject` text NOT NULL,
  `iscredit` tinyint(1) NOT NULL DEFAULT '0',
  `status` varchar(15) NOT NULL DEFAULT '',
  `userin` varchar(25) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupt` varchar(25) NOT NULL DEFAULT '',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `usercheck` varchar(25) NOT NULL DEFAULT '',
  `jamcheck` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userappr` varchar(25) NOT NULL DEFAULT '',
  `jamappr` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `discpers` double DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblassetsementara`
--

/*!40000 ALTER TABLE `tblassetsementara` DISABLE KEYS */;
INSERT INTO `tblassetsementara` (`id`,`notrans`,`tanggal`,`kodevendor`,`kodegudang`,`harga`,`discount`,`total`,`catatan`,`remarkedit`,`remarkcancel`,`remarkreject`,`iscredit`,`status`,`userin`,`jamin`,`userupt`,`jamupt`,`usercheck`,`jamcheck`,`userappr`,`jamappr`,`discpers`) VALUES 
 (1,'ASM24040001','2024-04-30 14:02:17','VND0001','GD0001',0,0,0,'','','','',0,'23','JACKY','2024-04-30 14:02:17','JACKY','2024-04-30 14:02:17','JACKY','2024-04-30 14:02:20','JACKY','2024-04-30 14:02:21',0);
/*!40000 ALTER TABLE `tblassetsementara` ENABLE KEYS */;


--
-- Definition of table `tblassetsementarad`
--

DROP TABLE IF EXISTS `tblassetsementarad`;
CREATE TABLE `tblassetsementarad` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(25) NOT NULL DEFAULT '',
  `kodemesin` varchar(25) NOT NULL DEFAULT '',
  `lokasi` varchar(125) NOT NULL DEFAULT '',
  `satuan` varchar(25) NOT NULL DEFAULT '',
  `period` double DEFAULT '0',
  `jatuhtempo` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `qty` double DEFAULT '0',
  `harga` double DEFAULT '0',
  `discount` double DEFAULT '0',
  `discpers` double DEFAULT '0',
  `total` double DEFAULT '0',
  `catatanitem` text NOT NULL,
  `isdetail` tinyint(1) NOT NULL DEFAULT '0',
  `isfinish` tinyint(1) NOT NULL DEFAULT '0',
  `finishket` text NOT NULL,
  `jamfinish` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userfinish` varchar(155) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblassetsementarad`
--

/*!40000 ALTER TABLE `tblassetsementarad` DISABLE KEYS */;
INSERT INTO `tblassetsementarad` (`id`,`notrans`,`kodemesin`,`lokasi`,`satuan`,`period`,`jatuhtempo`,`qty`,`harga`,`discount`,`discpers`,`total`,`catatanitem`,`isdetail`,`isfinish`,`finishket`,`jamfinish`,`userfinish`) VALUES 
 (9,'ASM24040001','ENG00002','Gudang A','Month',1,'2024-05-30 14:02:12',1,0,0,0,0,'',0,0,'','1111-11-11 00:00:00',''),
 (10,'ASM24040001','ENG00002','','Month',1,'2024-05-30 14:02:12',1,0,0,0,0,'',1,0,'','1111-11-11 00:00:00',''),
 (11,'ASM24040001','ENG00003','','Month',1,'2024-05-30 14:02:12',1,0,0,0,0,'',1,0,'','1111-11-11 00:00:00',''),
 (12,'ASM24040001','ENG00004','','Month',1,'2024-05-30 14:02:12',1,0,0,0,0,'',1,0,'','1111-11-11 00:00:00','');
/*!40000 ALTER TABLE `tblassetsementarad` ENABLE KEYS */;


--
-- Definition of table `tblbarang`
--

DROP TABLE IF EXISTS `tblbarang`;
CREATE TABLE `tblbarang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL DEFAULT '',
  `kodejenis` varchar(30) DEFAULT NULL,
  `kodegroup` varchar(30) DEFAULT NULL,
  `kodegroup2` varchar(30) NOT NULL DEFAULT '',
  `kodegroup3` varchar(30) NOT NULL DEFAULT '',
  `kodevendor` varchar(30) DEFAULT NULL,
  `kode` varchar(50) DEFAULT NULL,
  `kode2` varchar(50) DEFAULT NULL,
  `sat1` varchar(10) NOT NULL DEFAULT '',
  `sat2` varchar(10) NOT NULL DEFAULT '',
  `isi2` int(10) NOT NULL DEFAULT '0',
  `sat3` varchar(10) NOT NULL DEFAULT '',
  `isi3` int(10) NOT NULL DEFAULT '0',
  `sat4` varchar(10) NOT NULL DEFAULT '',
  `isi4` int(10) NOT NULL DEFAULT '0',
  `sat5` varchar(10) NOT NULL DEFAULT '',
  `isi5` int(10) NOT NULL DEFAULT '0',
  `minstock` double DEFAULT '0',
  `minjual` double DEFAULT '0',
  `satuanminjual` varchar(15) NOT NULL DEFAULT '',
  `satuanminstock` varchar(15) NOT NULL DEFAULT '',
  `hargabeli` double NOT NULL DEFAULT '0',
  `notranspemb` varchar(25) NOT NULL DEFAULT '',
  `hargapersatuansatu` int(100) NOT NULL DEFAULT '0',
  `defaultsatuan` varchar(15) NOT NULL DEFAULT '',
  `defaultlaporan` varchar(15) NOT NULL DEFAULT '',
  `userupt` varchar(45) NOT NULL DEFAULT 'user',
  `userin` varchar(45) NOT NULL DEFAULT 'user',
  `jam` datetime NOT NULL DEFAULT '2011-11-11 11:11:11',
  `jamupt` datetime NOT NULL DEFAULT '2011-11-11 11:11:11',
  `statusid` int(11) NOT NULL DEFAULT '1',
  `ispo` tinyint(1) DEFAULT '1',
  `ispembelian` tinyint(1) DEFAULT '1',
  `isreturpembelian` tinyint(1) DEFAULT '1',
  `isquotation` tinyint(1) DEFAULT '1',
  `isdo` tinyint(1) DEFAULT '1',
  `ispenjualan` tinyint(1) DEFAULT '1',
  `isreturpenjualan` tinyint(1) DEFAULT '1',
  `isbarangtransfer` tinyint(1) DEFAULT '1',
  `ismutasimasuk` tinyint(1) DEFAULT '1',
  `ismutasikeluar` tinyint(1) DEFAULT '1',
  `isso` tinyint(1) DEFAULT '1',
  `isnontax` tinyint(1) DEFAULT '0',
  `isitembonus` tinyint(1) DEFAULT '0',
  `iscatatanpenjualan` tinyint(1) DEFAULT '0',
  `isallowjualrugi` tinyint(1) DEFAULT '0',
  `isminusstock` tinyint(1) DEFAULT '0',
  `isnotbarcode` tinyint(1) DEFAULT '0',
  `isnotdiscountmember` tinyint(1) DEFAULT '0',
  `isnotitembonus` tinyint(1) DEFAULT '0',
  `isnotpilihanhargajual` tinyint(1) DEFAULT '0',
  `ishargabelipajak` tinyint(1) DEFAULT '0',
  `ishargabelippn` tinyint(1) DEFAULT '0',
  `isproteksatuanpenjualan` tinyint(1) DEFAULT '0',
  `catatan` text,
  `kubikasi` double DEFAULT '0',
  `berat` double DEFAULT '0',
  `size` varchar(50) NOT NULL DEFAULT '',
  `jenisitem` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `kode` (`kode`),
  KEY `kodevendor` (`kodevendor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbarang`
--

/*!40000 ALTER TABLE `tblbarang` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblbarang` ENABLE KEYS */;


--
-- Definition of table `tblbayarsewa`
--

DROP TABLE IF EXISTS `tblbayarsewa`;
CREATE TABLE `tblbayarsewa` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(155) NOT NULL DEFAULT '',
  `notransasm` varchar(125) NOT NULL DEFAULT '',
  `notransinv` varchar(155) NOT NULL DEFAULT '',
  `nobukti` varchar(255) NOT NULL DEFAULT '',
  `kodevendor` varchar(125) NOT NULL DEFAULT '',
  `kodemesin` varchar(125) NOT NULL DEFAULT '',
  `namamesin` varchar(125) NOT NULL DEFAULT '',
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `period` double DEFAULT '0',
  `satuan` varchar(125) NOT NULL DEFAULT '',
  `payment` varchar(100) NOT NULL DEFAULT '',
  `amount` double DEFAULT '0',
  `discount` double DEFAULT '0',
  `total` double DEFAULT '0',
  `status` double DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbayarsewa`
--

/*!40000 ALTER TABLE `tblbayarsewa` DISABLE KEYS */;
INSERT INTO `tblbayarsewa` (`id`,`notrans`,`notransasm`,`notransinv`,`nobukti`,`kodevendor`,`kodemesin`,`namamesin`,`tanggal`,`period`,`satuan`,`payment`,`amount`,`discount`,`total`,`status`) VALUES 
 (1,'BSM24040001','ASM24040001','ASM24040001 - 1','KWIN01','VND0001','ENG00004','Data Kosongan A','2024-04-26 10:00:33',1,'Month','Payment Kas Kecil',5000000,200000,4800000,5),
 (2,'BSM24040001','ASM24040001','ASM24040001 - 2','KWIN01','VND0001','ENG00004','Data Kosongan A','2024-04-26 10:00:33',2,'Month','Payment Kas Kecil',5000000,200000,4800000,5),
 (3,'BSM24040003','ASM24040001','ASM24040001 - 3','Kwin02','VND0001','ENG00004','Data Kosongan A','2024-04-26 10:02:00',3,'Month','Payment Kas Kecil',5000000,200000,4800000,5),
 (4,'BSM24040003','ASM24040001','ASM24040001 - 4','Kwin02','VND0001','ENG00004','Data Kosongan A','2024-04-26 10:02:00',4,'Month','Payment Kas Kecil',5000000,200000,4800000,5),
 (6,'BSM24040005','ASM24040001','ASM24040001 - 1','','VND0001','ENG00005','Data Kosongan A','2024-04-26 10:47:47',1,'Month','Payment Kas Kecil',2500000,100000,2400000,5),
 (7,'BSM24040006','ASM24040001','ASM24040001 - 2','BAYAR SEMUA ','VND0001','ENG00005','Data Kosongan A','2024-04-26 11:17:01',2,'Month','Payment Kas Kecil',12500000,500000,12000000,5),
 (8,'BSM24040006','ASM24040001','ASM24040001 - 3','BAYAR SEMUA ','VND0001','ENG00005','Data Kosongan A','2024-04-26 11:17:01',3,'Month','Payment Kas Kecil',12500000,500000,12000000,5),
 (9,'BSM24040006','ASM24040001','ASM24040001 - 4','BAYAR SEMUA ','VND0001','ENG00005','Data Kosongan A','2024-04-26 11:17:01',4,'Month','Payment Kas Kecil',12500000,500000,12000000,5),
 (10,'BSM24040006','ASM24040001','ASM24040001 - 5','BAYAR SEMUA ','VND0001','ENG00005','Data Kosongan A','2024-04-26 11:17:01',5,'Month','Payment Kas Kecil',12500000,500000,12000000,5),
 (11,'BSM24040006','ASM24040001','ASM24040001 - 6','BAYAR SEMUA ','VND0001','ENG00005','Data Kosongan A','2024-04-26 11:17:01',6,'Month','Payment Kas Kecil',12500000,500000,12000000,5);
/*!40000 ALTER TABLE `tblbayarsewa` ENABLE KEYS */;


--
-- Definition of table `tblbiayatambahan`
--

DROP TABLE IF EXISTS `tblbiayatambahan`;
CREATE TABLE `tblbiayatambahan` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(50) NOT NULL DEFAULT '',
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `jenistrans` varchar(50) NOT NULL DEFAULT '',
  `keterangan` text NOT NULL,
  `amount` double DEFAULT '0',
  `ccy` varchar(25) NOT NULL DEFAULT '',
  `kurs` double DEFAULT '0',
  `idpr` varchar(25) NOT NULL DEFAULT '',
  `status` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbiayatambahan`
--

/*!40000 ALTER TABLE `tblbiayatambahan` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblbiayatambahan` ENABLE KEYS */;


--
-- Definition of table `tblbrand`
--

DROP TABLE IF EXISTS `tblbrand`;
CREATE TABLE `tblbrand` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `kodebrand` varchar(50) NOT NULL DEFAULT '',
  `namabrand` varchar(255) NOT NULL DEFAULT '',
  `userin` varchar(100) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupt` varchar(100) NOT NULL DEFAULT '',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `isshown` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbrand`
--

/*!40000 ALTER TABLE `tblbrand` DISABLE KEYS */;
INSERT INTO `tblbrand` (`id`,`kodebrand`,`namabrand`,`userin`,`jamin`,`userupt`,`jamupt`,`isshown`,`status`) VALUES 
 (1,'BND0001','Brand A','JACKY','2024-02-28 16:40:16','JACKY','2024-02-28 16:40:16',0,5);
/*!40000 ALTER TABLE `tblbrand` ENABLE KEYS */;


--
-- Definition of table `tblclosing`
--

DROP TABLE IF EXISTS `tblclosing`;
CREATE TABLE `tblclosing` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(25) NOT NULL DEFAULT '',
  `periode` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userin` varchar(50) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclosing`
--

/*!40000 ALTER TABLE `tblclosing` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblclosing` ENABLE KEYS */;


--
-- Definition of table `tblcoa`
--

DROP TABLE IF EXISTS `tblcoa`;
CREATE TABLE `tblcoa` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `idpr` int(25) NOT NULL DEFAULT '0',
  `kode` varchar(15) NOT NULL DEFAULT '',
  `nama` varchar(100) NOT NULL DEFAULT '',
  `ccy` varchar(5) DEFAULT NULL,
  `statusid` int(50) NOT NULL DEFAULT '0',
  `acctype` varchar(10) NOT NULL DEFAULT '',
  `jenis` varchar(10) NOT NULL DEFAULT '',
  `amount` double DEFAULT '0',
  `kurs` double DEFAULT '0',
  `userin` varchar(50) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupt` varchar(50) NOT NULL DEFAULT '',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tblcoa` (`idpr`,`nama`,`acctype`,`jenis`)
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcoa`
--

/*!40000 ALTER TABLE `tblcoa` DISABLE KEYS */;
INSERT INTO `tblcoa` (`id`,`idpr`,`kode`,`nama`,`ccy`,`statusid`,`acctype`,`jenis`,`amount`,`kurs`,`userin`,`jamin`,`userupt`,`jamupt`) VALUES 
 (1,1,'0010','Kas Kecil IDR','IDR',5,'1101','1',0,0,'JACKY','2023-10-07 13:47:37','JACKY','2023-10-07 13:47:37'),
 (2,2,'0020','Kas Besar IDR','IDR',5,'1101','1',0,0,'JACKY','2023-10-07 13:56:22','JACKY','2023-10-07 13:56:22'),
 (3,3,'0030','Kas Besar SGD EQV','IDR',5,'1101','1',0,0,'JACKY','2023-10-07 13:57:24','JACKY','2023-10-07 13:57:24'),
 (4,4,'0030','Kas Besar SGD','SGD',5,'1101','1',0,0,'JACKY','2023-10-07 13:57:24','JACKY','2023-10-07 13:57:24'),
 (5,5,'0010','Hutang Lancar Lainnya IDR','IDR',5,'2401','2',0,0,'JACKY','2023-10-07 13:58:24','JACKY','2023-10-07 13:58:24'),
 (6,6,'0010','Uang Muka Pembelian','IDR',5,'1104','1',0,0,'JACKY','2023-10-07 13:58:34','JACKY','2023-10-07 13:58:34'),
 (7,7,'0010','PANIN PT 557 5011121','IDR',5,'1102','1',0,0,'JACKY','2023-10-07 13:59:20','JACKY','2023-10-07 14:00:30'),
 (8,8,'9101','Setoran Modal IDR','IDR',5,'3000','2',0,0,'JACKY','2023-10-07 13:59:46','JACKY','2023-10-07 13:59:46'),
 (9,9,'0020','PANIN CV 557 500 9192','IDR',5,'1102','1',0,0,'JACKY','2023-10-07 14:01:44','JACKY','2023-10-07 14:01:44'),
 (10,10,'999','Opening Balance Equity','IDR',5,'3000','2',0,0,'JACKY','2023-10-07 14:02:23','JACKY','2023-10-07 14:02:23'),
 (11,11,'1001','Penjualan IDR','IDR',5,'4101','3',0,0,'JACKY','2023-10-07 14:03:05','JACKY','2023-10-07 14:03:05'),
 (12,12,'1002','Penjualan Kosmetik','IDR',5,'4101','3',0,0,'JACKY','2023-10-07 14:04:01','JACKY','2023-10-07 14:04:01'),
 (13,13,'0040','Bank OCBC SGD EQV','IDR',5,'1102','1',0,0,'JACKY','2023-10-07 14:04:37','JACKY','2023-10-07 14:04:37'),
 (14,14,'0040','Bank OCBC SGD','SGD',5,'1102','1',0,0,'JACKY','2023-10-07 14:04:37','JACKY','2023-10-07 14:04:37'),
 (15,15,'1006','Retur Penjualan IDR','IDR',5,'4101','3',0,0,'JACKY','2023-10-07 14:04:42','JACKY','2023-10-07 14:04:42'),
 (16,16,'0010','Discount Penjualan IDR','IDR',5,'4301','3',0,0,'JACKY','2023-10-07 14:05:26','JACKY','2023-10-07 14:05:26'),
 (17,17,'0010','Piutang Usaha IDR','IDR',5,'1103','1',0,0,'JACKY','2023-10-07 14:05:41','JACKY','2023-10-07 14:05:41'),
 (18,18,'4001','Pembelian IDR','IDR',5,'5100','3',0,0,'JACKY','2023-10-07 14:06:08','JACKY','2023-10-07 14:06:08'),
 (19,19,'0020','Piutang Karyawan IDR','IDR',5,'1103','1',0,0,'JACKY','2023-10-07 14:06:39','JACKY','2023-10-07 14:06:39'),
 (20,20,'5001','HPP Persediaan IDR','IDR',5,'5100','3',0,0,'JACKY','2023-10-07 14:06:49','JACKY','2023-10-07 14:06:49'),
 (21,21,'0030','Piutang Direksi IDR','IDR',5,'1103','1',0,0,'JACKY','2023-10-07 14:07:17','JACKY','2023-10-07 14:07:17'),
 (22,22,'1010','Discount Pembelian IDR','IDR',5,'5100','3',0,0,'JACKY','2023-10-07 14:07:31','JACKY','2023-10-07 14:07:31'),
 (23,23,'1020','Discount Pembelian SGD EQV','IDR',5,'5100','3',0,0,'JACKY','2023-10-07 14:08:31','JACKY','2023-10-07 14:08:31'),
 (24,24,'1020','Discount Pembelian SGD','SGD',5,'5100','3',0,0,'JACKY','2023-10-07 14:08:31','JACKY','2023-10-07 14:08:31'),
 (25,25,'0010','Uang Muka Pembelian IDR','IDR',5,'1104','1',0,0,'JACKY','2023-10-07 14:08:55','JACKY','2023-10-07 14:08:55'),
 (26,26,'1030','Discount Pembelian USD EQV','IDR',5,'5100','3',0,0,'JACKY','2023-10-07 14:09:18','JACKY','2023-10-07 14:09:18'),
 (27,27,'1030','Discount Pembelian USD','USD',5,'5100','3',0,0,'JACKY','2023-10-07 14:09:18','JACKY','2023-10-07 14:09:18'),
 (28,28,'1040','Discount Pembelian MYR EQV','IDR',5,'5100','3',0,0,'JACKY','2023-10-07 14:10:02','JACKY','2023-10-07 14:10:02'),
 (29,29,'1040','Discount Pembelian MYR','MYR',5,'5100','3',0,0,'JACKY','2023-10-07 14:10:02','JACKY','2023-10-07 14:10:02'),
 (30,30,'0020','Uang Muka Pembelian SGD EQV','IDR',5,'1104','1',0,0,'JACKY','2023-10-07 14:10:29','JACKY','2023-10-07 14:10:29'),
 (31,31,'0020','Uang Muka Pembelian SGD','SGD',5,'1104','1',0,0,'JACKY','2023-10-07 14:10:29','JACKY','2023-10-07 14:10:29'),
 (32,32,'0030','Uang Muka Pembelian USD EQV','IDR',5,'1104','1',0,0,'JACKY','2023-10-07 14:11:37','JACKY','2023-10-07 14:11:37'),
 (33,33,'0030','Uang Muka Pembelian USD','USD',5,'1104','1',0,0,'JACKY','2023-10-07 14:11:37','JACKY','2023-10-07 14:11:37'),
 (34,34,'1050','Discount Pembelian CNY EQV','IDR',5,'5100','3',0,0,'JACKY','2023-10-07 14:12:01','JACKY','2023-10-07 14:12:01'),
 (35,35,'1050','Discount Pembelian CNY','CNY',5,'5100','3',0,0,'JACKY','2023-10-07 14:12:01','JACKY','2023-10-07 14:12:01'),
 (36,36,'2010','Ongkos Pembelian IDR','IDR',5,'5100','3',0,0,'JACKY','2023-10-07 14:12:36','JACKY','2023-10-07 14:12:37'),
 (37,37,'0040','Uang Muka Pembelian MYR EQV','IDR',5,'1104','1',0,0,'JACKY','2023-10-07 14:12:52','JACKY','2023-10-07 14:12:52'),
 (38,38,'0040','Uang Muka Pembelian MYR','MYR',5,'1104','1',0,0,'JACKY','2023-10-07 14:12:52','JACKY','2023-10-07 14:12:52'),
 (39,39,'2020','Ongkos Pembelian SGD EQV','IDR',5,'5100','3',0,0,'JACKY','2023-10-07 14:13:24','JACKY','2023-10-07 14:13:24'),
 (40,40,'2020','Ongkos Pembelian SGD','SGD',5,'5100','3',0,0,'JACKY','2023-10-07 14:13:24','JACKY','2023-10-07 14:13:24'),
 (41,41,'0050','Uang Muka Pembelian CNY EQV','IDR',5,'1104','1',0,0,'JACKY','2023-10-07 14:14:01','JACKY','2023-10-07 14:14:01'),
 (42,42,'0050','Uang Muka Pembelian CNY','CNY',5,'1104','1',0,0,'JACKY','2023-10-07 14:14:01','JACKY','2023-10-07 14:14:01'),
 (43,43,'2030','Ongkos Pembelian USD EQV','IDR',5,'5100','3',0,0,'JACKY','2023-10-07 14:14:10','JACKY','2023-10-07 14:14:10'),
 (44,44,'2030','Ongkos Pembelian USD','USD',5,'5100','3',0,0,'JACKY','2023-10-07 14:14:10','JACKY','2023-10-07 14:14:10'),
 (45,45,'1035','Bayar Dimuka','IDR',5,'1104','1',0,0,'JACKY','2023-10-07 14:14:42','JACKY','2023-10-07 14:14:42'),
 (46,46,'2040','Ongkos Pembelian MYR EQV','IDR',5,'5100','3',0,0,'JACKY','2023-10-07 14:14:47','JACKY','2023-10-07 14:14:47'),
 (47,47,'2040','Ongkos Pembelian MYR','MYR',5,'5100','3',0,0,'JACKY','2023-10-07 14:14:47','JACKY','2023-10-07 14:14:47'),
 (48,48,'2050','Ongkos Pembelian CNY EQV','IDR',5,'5100','3',0,0,'JACKY','2023-10-07 14:15:28','JACKY','2023-10-07 14:15:28'),
 (49,49,'2050','Ongkos Pembelian CNY','CNY',5,'5100','3',0,0,'JACKY','2023-10-07 14:15:28','JACKY','2023-10-07 14:15:28'),
 (50,50,'0010','Sewa Dibayar Dimuka ','IDR',5,'1104','1',0,0,'JACKY','2023-10-07 14:15:49','JACKY','2023-10-07 14:15:49'),
 (51,51,'3010','Ongkos Container IDR','IDR',5,'5100','3',0,0,'JACKY','2023-10-07 14:16:16','JACKY','2023-10-07 14:16:16'),
 (52,52,'0020','Asuransi Dibayar Dimuka ','IDR',5,'1104','1',0,0,'JACKY','2023-10-07 14:16:44','JACKY','2023-10-07 14:16:44'),
 (53,53,'1030','Uang muka Pembelian','IDR',5,'1104','1',0,0,'JACKY','2023-10-07 14:16:46','JACKY','2023-10-07 14:16:47'),
 (54,54,'3020','Ongkos Container SGD EQV','IDR',5,'5100','3',0,0,'JACKY','2023-10-07 14:17:02','JACKY','2023-10-07 14:17:02'),
 (55,55,'3020','Ongkos Container SGD','SGD',5,'5100','3',0,0,'JACKY','2023-10-07 14:17:02','JACKY','2023-10-07 14:17:02'),
 (56,56,'3030','Ongkos Bongkar Kontainer','IDR',5,'5100','3',0,0,'JACKY','2023-10-07 14:17:38','JACKY','2023-10-07 14:17:38'),
 (57,57,'1010','Beban Gaji Karyawan','IDR',5,'6200','4',0,0,'JACKY','2023-10-07 14:18:31','JACKY','2023-10-07 14:18:31'),
 (58,58,'1020','Beban Bonus Karyawan','IDR',5,'6200','4',0,0,'JACKY','2023-10-07 14:19:10','JACKY','2023-10-07 14:19:10'),
 (59,59,'0010','Uang muka Pembelian','IDR',5,'1104','1',0,0,'JACKY','2023-10-07 14:19:30','JACKY','2023-10-07 14:19:30'),
 (60,60,'1030','Beban Tunjangan Karyawan','IDR',5,'6200','4',0,0,'JACKY','2023-10-07 14:19:49','JACKY','2023-10-07 14:19:49'),
 (61,61,'1040','Beban Komisi Sales','IDR',5,'6200','4',0,0,'JACKY','2023-10-07 14:20:24','JACKY','2023-10-07 14:20:24'),
 (62,62,'1050','Beban Pelunasan','IDR',5,'6200','4',0,0,'JACKY','2023-10-07 14:21:24','JACKY','2023-10-07 14:21:24'),
 (63,63,'1060','Beban THR Karyawan','IDR',5,'6200','4',0,0,'JACKY','2023-10-07 14:22:03','JACKY','2023-10-07 14:22:03'),
 (64,64,'0010','Peralatan Kantor','IDR',5,'1201','1',0,0,'JACKY','2023-10-07 14:22:35','JACKY','2023-10-07 14:22:35'),
 (65,65,'1070','Beban Pengobatan Karyawan','IDR',5,'6200','4',0,0,'JACKY','2023-10-07 14:22:53','JACKY','2023-10-07 14:22:53'),
 (66,66,'0020','Kendaraan','IDR',5,'1201','1',0,0,'JACKY','2023-10-07 14:23:13','JACKY','2023-10-07 14:23:13'),
 (67,67,'2010','Beban Listrik','IDR',5,'6200','4',0,0,'JACKY','2023-10-07 14:23:59','JACKY','2023-10-07 14:23:59'),
 (68,68,'2020','Beban Air','IDR',5,'6200','4',0,0,'JACKY','2023-10-07 14:24:24','JACKY','2023-10-07 14:24:24'),
 (69,69,'2030','Beban Internet','IDR',5,'6200','4',0,0,'JACKY','2023-10-07 14:24:53','JACKY','2023-10-07 14:24:53'),
 (70,70,'0010','Akum.Peny.Peralatan Kantor','IDR',5,'1202','1',0,0,'JACKY','2023-10-07 14:25:32','JACKY','2023-10-07 14:25:32'),
 (71,71,'2040','Beban Telepon & Fax','IDR',5,'6200','4',0,0,'JACKY','2023-10-07 14:25:51','JACKY','2023-10-07 14:25:51'),
 (72,72,'0020','Akum.Peny.Kendaraan','IDR',5,'1202','1',0,0,'JACKY','2023-10-07 14:26:20','JACKY','2023-10-07 14:26:20'),
 (73,73,'2050','Beban Sewa','IDR',5,'6200','4',0,0,'JACKY','2023-10-07 14:26:36','JACKY','2023-10-07 14:26:36'),
 (74,74,'2060','Beban Asuransi','IDR',5,'6200','4',0,0,'JACKY','2023-10-07 14:27:05','JACKY','2023-10-07 14:27:05'),
 (75,75,'0010','Aktiva Lain','IDR',5,'1301','1',0,0,'JACKY','2023-10-07 14:27:31','JACKY','2023-10-07 14:27:31'),
 (76,76,'2070','Beban Program Bulanan','IDR',5,'6200','4',0,0,'JACKY','2023-10-07 14:27:36','JACKY','2023-10-07 14:27:36'),
 (77,77,'2080','Beban Jasa Website','IDR',5,'6200','4',0,0,'JACKY','2023-10-07 14:28:06','JACKY','2023-10-07 14:28:06'),
 (78,78,'0020','Biaya Pra Operasional','IDR',5,'1301','1',0,0,'JACKY','2023-10-07 14:28:39','JACKY','2023-10-07 14:28:39'),
 (79,79,'3010','Beban BPJS Ketenagakerjaan','IDR',5,'6200','4',0,0,'JACKY','2023-10-07 14:28:50','JACKY','2023-10-07 14:28:50'),
 (80,80,'0030','Rupa-Rupa Aktiva ','IDR',5,'1302','1',0,0,'JACKY','2023-10-07 14:29:20','JACKY','2023-10-07 14:29:20'),
 (81,81,'3020','Beban BPJS Kesehatan','IDR',5,'6200','4',0,0,'JACKY','2023-10-07 14:29:26','JACKY','2023-10-07 14:29:26'),
 (82,82,'3030','Beban PPH Psl 21 Karyawan','IDR',5,'6200','4',0,0,'JACKY','2023-10-07 14:30:13','JACKY','2023-10-07 14:30:13'),
 (83,83,'1010','Aktiva Perkiraan','IDR',5,'1301','1',0,0,'JACKY','2023-10-07 14:30:46','JACKY','2023-10-07 14:30:46'),
 (84,84,'3040','Beban PPH Psl 25 Bulanan','IDR',5,'6200','4',0,0,'JACKY','2023-10-07 14:30:51','JACKY','2023-10-07 14:30:51'),
 (85,85,'3050','Beban PPH Psl 29 Badan Penyusutan','IDR',5,'6200','4',0,0,'JACKY','2023-10-07 14:31:39','JACKY','2023-10-07 14:31:39'),
 (86,86,'3060','Beban PPH Psl 4 ayat 2','IDR',5,'6200','4',0,0,'JACKY','2023-10-07 14:32:21','JACKY','2023-10-07 14:32:21'),
 (87,87,'0010','Akum.Peny.Amortisasi','IDR',5,'1302','1',0,0,'JACKY','2023-10-07 14:32:56','JACKY','2023-10-07 14:32:56'),
 (88,88,'3070','Beban Free Konsultan Pajak','IDR',5,'6200','4',0,0,'JACKY','2023-10-07 14:33:26','JACKY','2023-10-07 14:33:26'),
 (89,89,'0020','Akum.Peny.Pra Operasional ','IDR',5,'1302','1',0,0,'JACKY','2023-10-07 14:33:52','JACKY','2023-10-07 14:33:52'),
 (90,90,'3080','Beban Pajak','IDR',5,'6200','4',0,0,'JACKY','2023-10-07 14:33:53','JACKY','2023-10-07 14:33:53'),
 (91,91,'3090','Beban Pajak Kendaraan','IDR',5,'6200','4',0,0,'JACKY','2023-10-07 14:34:22','JACKY','2023-10-07 14:34:22'),
 (92,92,'0030','Akum.Peny.Rupa-Rupa Aktiva ','IDR',5,'1302','1',0,0,'JACKY','2023-10-07 14:35:02','JACKY','2023-10-07 14:35:02'),
 (93,93,'3100','Beban Pengurusan Surat','IDR',5,'6200','4',0,0,'JACKY','2023-10-07 14:35:47','JACKY','2023-10-07 14:35:47'),
 (94,94,'0010','Hutang Usaha IDR','IDR',5,'2101','2',0,0,'JACKY','2023-10-07 14:36:08','JACKY','2023-10-07 14:36:08'),
 (95,95,'3110','Beban Materai','IDR',5,'6200','4',0,0,'JACKY','2023-10-07 14:36:16','JACKY','2023-10-07 14:36:16'),
 (96,96,'4010','Beban Penjualan','IDR',5,'6200','4',0,0,'JACKY','2023-10-07 14:36:59','JACKY','2023-10-07 14:36:59'),
 (97,97,'0020','Hutang Usaha SGD EQV','IDR',5,'2101','2',0,0,'JACKY','2023-10-07 14:37:20','JACKY','2023-10-07 14:37:20'),
 (98,98,'0020','Hutang Usaha SGD','SGD',5,'2101','2',0,0,'JACKY','2023-10-07 14:37:20','JACKY','2023-10-07 14:37:20'),
 (99,99,'4020','Beban Iklan & Promosi','IDR',5,'6200','4',0,0,'JACKY','2023-10-07 14:37:35','JACKY','2023-10-07 14:37:35'),
 (100,100,'0030','Hutang Usaha USD EQV','IDR',5,'2101','2',0,0,'JACKY','2023-10-07 14:37:54','JACKY','2023-10-07 14:37:54'),
 (101,101,'0030','Hutang Usaha USD','USD',5,'2101','2',0,0,'JACKY','2023-10-07 14:37:54','JACKY','2023-10-07 14:37:54'),
 (102,102,'4030','Beban Entertainment','IDR',5,'6200','4',0,0,'JACKY','2023-10-07 14:38:11','JACKY','2023-10-07 14:38:11'),
 (103,103,'0040','Hutang Usaha MYR EQV','IDR',5,'2101','2',0,0,'JACKY','2023-10-07 14:38:35','JACKY','2023-10-07 14:38:35'),
 (104,104,'0040','Hutang Usaha MYR','MYR',5,'2101','2',0,0,'JACKY','2023-10-07 14:38:35','JACKY','2023-10-07 14:38:35'),
 (105,105,'5010','Beban Renovasi Kantor','IDR',5,'6200','4',0,0,'JACKY','2023-10-07 14:38:55','JACKY','2023-10-07 14:38:55'),
 (106,106,'0050','Hutang Usaha CNY EQV','IDR',5,'2101','2',0,0,'JACKY','2023-10-07 14:39:24','JACKY','2023-10-07 14:39:24'),
 (107,107,'0050','Hutang Usaha CNY','CNY',5,'2101','2',0,0,'JACKY','2023-10-07 14:39:24','JACKY','2023-10-07 14:39:24'),
 (108,108,'5020','Beban Renovasi Gudang','IDR',5,'6200','4',0,0,'JACKY','2023-10-07 14:39:31','JACKY','2023-10-07 14:39:31'),
 (109,109,'5030','Beban Reparasi Alat Kantor','IDR',5,'6200','4',0,0,'JACKY','2023-10-07 14:40:18','JACKY','2023-10-07 14:40:18'),
 (110,110,'2010','Hutang Lain-Lain IDR','IDR',5,'2101','2',0,0,'JACKY','2023-10-07 14:40:37','JACKY','2023-10-07 14:40:37'),
 (111,111,'0010','Beban Penyusutan','IDR',5,'6100','4',0,0,'JACKY','2023-10-07 14:40:43','JACKY','2023-10-07 14:40:43'),
 (112,112,'5040','Beban Reparasi Kendaraan','IDR',5,'6200','4',0,0,'JACKY','2023-10-07 14:41:03','JACKY','2023-10-07 14:41:03'),
 (113,113,'5050','Beban Maintenance','IDR',5,'6200','4',0,0,'JACKY','2023-10-07 14:41:43','JACKY','2023-10-07 14:41:43'),
 (114,114,'0020','Beban Penyusutan','IDR',5,'6100','4',0,0,'JACKY','2023-10-07 14:42:25','JACKY','2023-10-07 14:42:25'),
 (115,115,'5060','Beban Bahan Bakar Kendaraan','IDR',5,'6200','4',0,0,'JACKY','2023-10-07 14:42:32','JACKY','2023-10-07 14:42:32'),
 (116,116,'0030','Beban Penyusutan','IDR',5,'6100','4',0,0,'JACKY','2023-10-07 14:43:16','JACKY','2023-10-07 14:43:16'),
 (117,117,'5070','Beban Transportasi','IDR',5,'6200','4',0,0,'JACKY','2023-10-07 14:43:17','JACKY','2023-10-07 14:43:17'),
 (118,118,'5080','Beban Pengiriman Dokumen','IDR',5,'6200','4',0,0,'JACKY','2023-10-07 14:44:01','JACKY','2023-10-07 14:44:01'),
 (119,119,'5090','Beban Retribusi','IDR',5,'6200','4',0,0,'JACKY','2023-10-07 14:44:34','JACKY','2023-10-07 14:44:34'),
 (120,120,'5100','Beban Sembahyang','IDR',5,'6200','4',0,0,'JACKY','2023-10-07 14:45:42','JACKY','2023-10-07 14:45:42'),
 (121,121,'0040','Beban Peny. Pra Operasional','IDR',5,'6100','4',0,0,'JACKY','2023-10-07 14:45:49','JACKY','2023-10-07 14:45:49'),
 (122,122,'5110','Beban Kebersihan & Keamanan','IDR',5,'6200','4',0,0,'JACKY','2023-10-07 14:46:20','JACKY','2023-10-07 14:46:20'),
 (123,123,'0010','Hutang Biaya','IDR',5,'2201','2',0,0,'JACKY','2023-10-07 14:46:47','JACKY','2023-10-07 14:46:47'),
 (124,124,'5120','Beban Perlengkapan Kantor','IDR',5,'6200','4',0,0,'JACKY','2023-10-07 14:47:07','JACKY','2023-10-07 14:47:07'),
 (125,125,'5130','Beban Perlengkapan Gudang','IDR',5,'6200','4',0,0,'JACKY','2023-10-07 14:47:57','JACKY','2023-10-07 14:47:57'),
 (126,126,'0030','Hutang Direksi IDR','IDR',5,'2201','2',0,0,'JACKY','2023-10-07 14:48:14','JACKY','2023-10-07 14:48:14'),
 (127,127,'5140','Beban Peralatan Kantor','IDR',5,'6200','4',0,0,'JACKY','2023-10-07 14:48:28','JACKY','2023-10-07 14:48:28'),
 (128,128,'5160','Beban Perjalanan Dinas','IDR',5,'6200','4',0,0,'JACKY','2023-10-07 14:49:20','JACKY','2023-10-07 14:49:20'),
 (129,129,'5200','Beban Operasional','IDR',5,'6200','4',0,0,'JACKY','2023-10-07 14:49:57','JACKY','2023-10-07 14:49:57'),
 (130,130,'5210','Beban Lainnya','IDR',5,'6200','4',0,0,'JACKY','2023-10-07 14:50:29','JACKY','2023-10-07 14:50:29'),
 (131,131,'1010','Pendapatan Bunga Bank IDR','IDR',5,'7100','3',0,0,'JACKY','2023-10-07 14:52:42','JACKY','2023-10-07 14:52:42'),
 (132,132,'1010','Biaya ADM Bank IDR','IDR',5,'7100','3',0,0,'JACKY','2023-10-07 14:53:41','JACKY','2023-10-07 14:53:42'),
 (133,133,'1020','Pendapatan Bunga Bank SGD EQV','IDR',5,'7100','3',0,0,'JACKY','2023-10-07 14:54:16','JACKY','2023-10-07 14:54:16'),
 (134,134,'1020','Pendapatan Bunga Bank SGD','SGD',5,'7100','3',0,0,'JACKY','2023-10-07 14:54:16','JACKY','2023-10-07 14:54:16'),
 (135,135,'1020','Biaya ADM Bank SGD EQV','IDR',5,'8100','4',0,0,'JACKY','2023-10-07 14:54:44','JACKY','2023-10-07 14:54:44'),
 (136,136,'1020','Biaya ADM Bank SGD','SGD',5,'8100','4',0,0,'JACKY','2023-10-07 14:54:44','JACKY','2023-10-07 14:54:44'),
 (137,137,'1030','Pendapatan Bunga Bank USD EQV','IDR',5,'7100','3',0,0,'JACKY','2023-10-07 14:55:12','JACKY','2023-10-07 14:55:12'),
 (138,138,'1030','Pendapatan Bunga Bank USD','USD',5,'7100','3',0,0,'JACKY','2023-10-07 14:55:12','JACKY','2023-10-07 14:55:12'),
 (139,139,'1030','Biaya ADM Bank USD EQV','IDR',5,'8100','4',0,0,'JACKY','2023-10-07 14:55:51','JACKY','2023-10-07 14:55:51'),
 (140,140,'1030','Biaya ADM Bank USD','USD',5,'8100','4',0,0,'JACKY','2023-10-07 14:55:51','JACKY','2023-10-07 14:55:51'),
 (141,141,'2010','Pendapatan Pelunasan','IDR',5,'7100','3',0,0,'JACKY','2023-10-07 14:55:53','JACKY','2023-10-07 14:55:53'),
 (142,142,'2010','Biaya Bank IDR','IDR',5,'8100','4',0,0,'JACKY','2023-10-07 14:56:44','JACKY','2023-10-07 14:56:44'),
 (143,143,'3010','Pendapatan Lain-Lain','IDR',5,'7100','3',0,0,'JACKY','2023-10-07 14:56:45','JACKY','2023-10-07 14:56:45'),
 (144,144,'4010','Pendapatan Selisih Stock IDR ','IDR',5,'7100','3',0,0,'JACKY','2023-10-07 14:57:22','JACKY','2023-10-07 14:57:22'),
 (145,145,'2020','Biaya Pajak Bank SGD  EQV','IDR',5,'8100','4',0,0,'JACKY','2023-10-07 14:57:53','JACKY','2023-10-07 14:57:53'),
 (146,146,'2020','Biaya Pajak Bank SGD ','SGD',5,'8100','4',0,0,'JACKY','2023-10-07 14:57:53','JACKY','2023-10-07 14:57:54'),
 (147,147,'6010','Pendapatan Insentif','IDR',5,'7100','3',0,0,'JACKY','2023-10-07 14:58:30','JACKY','2023-10-07 14:58:30'),
 (148,148,'2030','Biaya Pajak Bank USD EQV','IDR',5,'8100','4',0,0,'JACKY','2023-10-07 14:59:15','JACKY','2023-10-07 14:59:15'),
 (149,149,'2030','Biaya Pajak Bank USD','USD',5,'8100','4',0,0,'JACKY','2023-10-07 14:59:15','JACKY','2023-10-07 14:59:15'),
 (150,150,'3010','Biaya Bunga Bank IDR','IDR',5,'8100','4',0,0,'JACKY','2023-10-07 15:00:27','JACKY','2023-10-07 15:00:27'),
 (151,151,'4010','Biaya Buku Cek Bank','IDR',5,'8100','4',0,0,'JACKY','2023-10-07 15:02:00','JACKY','2023-10-07 15:02:00'),
 (152,152,'5010','Biaya Bunga Direksi','IDR',5,'8100','4',0,0,'JACKY','2023-10-07 15:02:46','JACKY','2023-10-07 15:02:46'),
 (154,153,'9999','Perkiraan Perantara','IDR',5,'1201','1',0,0,'JACKY','2023-10-21 13:59:53','JACKY','2023-10-21 13:59:53'),
 (155,154,'5002','Mutasi Keluar','IDR',5,'5100','3',0,0,'JACKY','2023-11-17 13:30:49','JACKY','2023-11-17 13:30:49'),
 (156,155,'5003','Mutasi Masuk','IDR',5,'5100','3',0,0,'JACKY','2023-11-17 13:31:46','JACKY','2023-11-17 13:31:46'),
 (157,156,'9102','Modal di Direksi IDR','IDR',5,'9999','5',0,0,'JACKY','2023-11-17 13:32:27','JACKY','2023-11-17 13:32:27'),
 (158,157,'9200','Penarikan Modal IDR','IDR',5,'9999','5',0,0,'JACKY','2023-11-17 13:32:55','JACKY','2023-11-17 13:32:55'),
 (159,158,'9300','Laba di Tahan IDR','IDR',5,'9999','5',0,0,'JACKY','2023-11-17 13:33:22','JACKY','2023-11-17 13:33:22'),
 (160,159,'9310','Laba HPP Inventory IDR','IDR',5,'9999','5',0,0,'JACKY','2023-11-17 13:33:48','JACKY','2023-11-17 13:33:48'),
 (161,160,'9400','Laba Tahun Berjalan IDR','IDR',5,'9999','5',0,0,'JACKY','2023-11-17 13:34:07','JACKY','2023-11-17 13:34:07'),
 (162,161,'9500','Pembagian Deviden IDR','IDR',5,'9999','5',0,0,'JACKY','2023-11-17 13:34:31','JACKY','2023-11-17 13:34:31'),
 (163,162,'0010','Hutang Biaya','IDR',5,'2401','2',0,0,'JACKY','2023-11-17 13:35:29','JACKY','2023-11-17 13:35:29'),
 (164,163,'0020','Hutang BPJS Ketenaga Kerjaan','IDR',5,'2401','2',0,0,'JACKY','2023-11-17 13:36:05','JACKY','2023-11-17 13:36:05'),
 (165,164,'0030','Hutang Bunga Pinjaman','IDR',5,'2401','2',0,0,'JACKY','2023-11-17 13:36:19','JACKY','2023-11-17 13:36:19'),
 (166,166,'1001','Persediaan','IDR',5,'1105','1',0,0,'JACKY','2023-11-22 11:08:05','JACKY','2023-11-22 11:08:05'),
 (167,167,'1001','Ikhtisar Rubi Laba','IDR',5,'9999','5',0,0,'JACKY','2023-11-22 11:08:25','JACKY','2023-11-22 11:08:25'),
 (168,168,'1002','Laba Berjalan','IDR',5,'9999','2',0,0,'JACKY','2023-11-22 11:08:43','JACKY','2023-11-22 11:08:43'),
 (169,169,'1901','Harta Perolehan Asset Rental','IDR',5,'1105','1',0,0,'JACKY','2024-02-29 12:59:33','JACKY','2024-02-29 12:59:33'),
 (170,170,'1902','Akumulasi Penyusutan Harta Perolehan Asset Rental','IDR',5,'1202','1',0,0,'JACKY','2024-02-29 12:59:58','JACKY','2024-02-29 12:59:58'),
 (171,171,'5901','Biaya Penyusutan Asset Rental','IDR',5,'6100','4',0,0,'JACKY','2024-02-29 13:00:31','JACKY','2024-02-29 13:00:31'),
 (172,172,'5902','Biaya Tambahan','IDR',5,'6605','6',0,0,'JACKY','2024-02-29 13:03:18','JACKY','2024-02-29 13:03:18'),
 (173,173,'4901','Pendapatan Rental','IDR',5,'4101','3',0,0,'JACKY','2024-02-29 13:06:14','JACKY','2024-02-29 13:06:14'),
 (174,174,'4903','Potongan Rental','IDR',5,'4101','3',0,0,'JACKY','2024-02-29 13:07:50','JACKY','2024-02-29 13:07:50');
/*!40000 ALTER TABLE `tblcoa` ENABLE KEYS */;


--
-- Definition of table `tblcomment`
--

DROP TABLE IF EXISTS `tblcomment`;
CREATE TABLE `tblcomment` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `idpengguna` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomment`
--

/*!40000 ALTER TABLE `tblcomment` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcomment` ENABLE KEYS */;


--
-- Definition of table `tblcommentd`
--

DROP TABLE IF EXISTS `tblcommentd`;
CREATE TABLE `tblcommentd` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `idpengguna` varchar(255) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `reaction` varchar(255) NOT NULL DEFAULT '',
  `reactionfrom` varchar(255) NOT NULL DEFAULT '',
  `likes` varchar(255) NOT NULL DEFAULT '',
  `jamkirim` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcommentd`
--

/*!40000 ALTER TABLE `tblcommentd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcommentd` ENABLE KEYS */;


--
-- Definition of table `tblcomp2`
--

DROP TABLE IF EXISTS `tblcomp2`;
CREATE TABLE `tblcomp2` (
  `urut` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(80) NOT NULL,
  `nilai` varchar(225) NOT NULL DEFAULT '0',
  `tipe` varchar(225) NOT NULL DEFAULT 'string',
  `group` varchar(225) NOT NULL DEFAULT 'string',
  `indo` varchar(225) NOT NULL DEFAULT 'string',
  `english` varchar(225) NOT NULL DEFAULT 'string',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`urut`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomp2`
--

/*!40000 ALTER TABLE `tblcomp2` DISABLE KEYS */;
INSERT INTO `tblcomp2` (`urut`,`nama`,`nilai`,`tipe`,`group`,`indo`,`english`,`isdefault`) VALUES 
 (1,'istampilbatalsajaso','0','','','Sales Order Tampil Batal Saja','Sales Order Only Show Canceled',0),
 (2,'ishidebatalso','0','','','Sales Order Sembunyikan Data Cancel','Sales Order Hide Canceled Data',0),
 (3,'istampilbatalsajapenj','1','','','Penjualan Tampil Batal Saja','Sales Only Show Canceled',0),
 (4,'ishidebatalpenj','0','','','Penjualan Sembunyikan Data Cancel','Sales Hide Canceled Data',0),
 (5,'namaperusahaan','GE EP','string','profile','Nama Perusahaan','Company Name',0),
 (6,'alamatperusahaan','Pertokoan Seruni Blok A No.15','string','','Alamat Company','Company Address',0),
 (7,'telpperusahaan','0123456789','','','Telpon Perusahaan','Company Number',0),
 (8,'faxperusahaan','(01234)','string','','Fax Perusahaan','Company Fax',0),
 (9,'emailperusahaan','geep@gmail.com','string','string','Email Perusahaan','Company Email',0),
 (11,'Background path','C:\\Users\\FUJITSU\\Downloads\\5780756.jpg','string','Setting','Background Utama','Main Background',1);
/*!40000 ALTER TABLE `tblcomp2` ENABLE KEYS */;


--
-- Definition of table `tblcreditnote`
--

DROP TABLE IF EXISTS `tblcreditnote`;
CREATE TABLE `tblcreditnote` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(50) NOT NULL DEFAULT '',
  `jenistrans` varchar(30) NOT NULL DEFAULT '',
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `tanggal2` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `kodeclient` varchar(15) NOT NULL DEFAULT '',
  `jenisclient` varchar(15) NOT NULL DEFAULT '',
  `kodegudang` varchar(15) NOT NULL DEFAULT '',
  `divisi` varchar(50) NOT NULL DEFAULT '',
  `sales` varchar(50) NOT NULL DEFAULT '',
  `noref` varchar(30) NOT NULL DEFAULT '',
  `notransorder` varchar(30) NOT NULL DEFAULT '',
  `ccy` varchar(15) NOT NULL DEFAULT '',
  `kurs` double DEFAULT '0',
  `harga` double DEFAULT '0',
  `discount` double DEFAULT '0',
  `discpers` double DEFAULT '0',
  `total` double DEFAULT '0',
  `term` int(10) NOT NULL DEFAULT '0',
  `catatan` text,
  `catatan2` text NOT NULL,
  `remarkcancel` text,
  `ismasukhpp` tinyint(1) NOT NULL DEFAULT '0',
  `idprdb` varchar(10) NOT NULL DEFAULT '',
  `idprcr` varchar(10) NOT NULL DEFAULT '',
  `status` varchar(15) NOT NULL DEFAULT '',
  `userin` varchar(50) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupt` varchar(50) NOT NULL DEFAULT '',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcreditnote`
--

/*!40000 ALTER TABLE `tblcreditnote` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcreditnote` ENABLE KEYS */;


--
-- Definition of table `tblcreditnoted`
--

DROP TABLE IF EXISTS `tblcreditnoted`;
CREATE TABLE `tblcreditnoted` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(50) NOT NULL DEFAULT '',
  `idpr` varchar(15) NOT NULL DEFAULT '',
  `kodegudang` varchar(50) NOT NULL DEFAULT '',
  `kodebarang` varchar(50) NOT NULL DEFAULT '',
  `ccy` varchar(15) NOT NULL DEFAULT '',
  `kurs` double DEFAULT '0',
  `satuan` varchar(50) NOT NULL DEFAULT '',
  `qty` double DEFAULT '0',
  `qtysatuan` double DEFAULT '0',
  `qtyori` double DEFAULT '0',
  `hargasatuan` double DEFAULT '0',
  `harga` double DEFAULT '0',
  `discount` double DEFAULT '0',
  `discpers` double DEFAULT '0',
  `total` double DEFAULT '0',
  `catatan` text,
  `isnonstock` tinyint(1) NOT NULL DEFAULT '0',
  `keterangan` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcreditnoted`
--

/*!40000 ALTER TABLE `tblcreditnoted` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcreditnoted` ENABLE KEYS */;


--
-- Definition of table `tbldaerah`
--

DROP TABLE IF EXISTS `tbldaerah`;
CREATE TABLE `tbldaerah` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode2` varchar(30) NOT NULL DEFAULT '',
  `kode` varchar(30) NOT NULL DEFAULT '',
  `nama` varchar(50) NOT NULL DEFAULT '',
  `nama2` varchar(30) NOT NULL DEFAULT '',
  `entryby` varchar(50) NOT NULL DEFAULT '',
  `entrydate` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `entrytime` datetime DEFAULT NULL,
  `lasteditby` varchar(50) NOT NULL DEFAULT '',
  `lasteditdate` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `lastedittime` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldaerah`
--

/*!40000 ALTER TABLE `tbldaerah` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldaerah` ENABLE KEYS */;


--
-- Definition of table `tbldaftarhutang`
--

DROP TABLE IF EXISTS `tbldaftarhutang`;
CREATE TABLE `tbldaftarhutang` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(50) NOT NULL DEFAULT '',
  `harga` double DEFAULT '0',
  `ccy` varchar(30) NOT NULL DEFAULT '',
  `kurs` double DEFAULT '0',
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userin` varchar(50) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupt` varchar(50) NOT NULL DEFAULT '',
  `catatan` text,
  `remarkcancel` text,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldaftarhutang`
--

/*!40000 ALTER TABLE `tbldaftarhutang` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldaftarhutang` ENABLE KEYS */;


--
-- Definition of table `tbldaftarhutangd`
--

DROP TABLE IF EXISTS `tbldaftarhutangd`;
CREATE TABLE `tbldaftarhutangd` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `kodedepan` varchar(10) NOT NULL DEFAULT '',
  `notrans` varchar(50) NOT NULL DEFAULT '',
  `nobukti` varchar(50) NOT NULL DEFAULT '',
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `ccy` varchar(10) NOT NULL DEFAULT '',
  `sisahutang` double DEFAULT '0',
  `kodevendor` varchar(50) NOT NULL DEFAULT '',
  `kodepo` varchar(50) NOT NULL DEFAULT '',
  `harga` double DEFAULT '0',
  `discount` double DEFAULT '0',
  `adjust` varchar(10) NOT NULL DEFAULT '',
  `tax` double DEFAULT '0',
  `retur` double DEFAULT '0',
  `deposit` double DEFAULT '0',
  `telahlunas` double DEFAULT '0',
  `kurs` double DEFAULT '0',
  `catatan` text,
  `remarks` text,
  `jenistrans` varchar(50) NOT NULL DEFAULT '',
  `tgllunas` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `jatuhtempo` varchar(50) NOT NULL DEFAULT '',
  `jatuhtempodate` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldaftarhutangd`
--

/*!40000 ALTER TABLE `tbldaftarhutangd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldaftarhutangd` ENABLE KEYS */;


--
-- Definition of table `tbldaftarpiutang`
--

DROP TABLE IF EXISTS `tbldaftarpiutang`;
CREATE TABLE `tbldaftarpiutang` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(50) NOT NULL DEFAULT '',
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `harga` double DEFAULT '0',
  `ccy` varchar(30) NOT NULL DEFAULT '',
  `kurs` double DEFAULT '0',
  `catatan` text,
  `remarkcancel` text,
  `userin` varchar(50) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupt` varchar(50) NOT NULL DEFAULT '',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldaftarpiutang`
--

/*!40000 ALTER TABLE `tbldaftarpiutang` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldaftarpiutang` ENABLE KEYS */;


--
-- Definition of table `tbldaftarpiutangd`
--

DROP TABLE IF EXISTS `tbldaftarpiutangd`;
CREATE TABLE `tbldaftarpiutangd` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `kodedepan` varchar(10) NOT NULL DEFAULT '',
  `notrans` varchar(50) NOT NULL DEFAULT '',
  `nobukti` varchar(50) NOT NULL DEFAULT '',
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `ccy` varchar(10) NOT NULL DEFAULT '',
  `sisapiutang` double DEFAULT '0',
  `kodepo` varchar(50) NOT NULL DEFAULT '',
  `kodeso` varchar(50) NOT NULL DEFAULT '',
  `harga` double DEFAULT '0',
  `discount` double DEFAULT '0',
  `adjust` varchar(10) NOT NULL DEFAULT '',
  `tax` double DEFAULT '0',
  `retur` double DEFAULT '0',
  `deposit` double DEFAULT '0',
  `telahlunas` double DEFAULT '0',
  `jatuhtempo` varchar(50) NOT NULL DEFAULT '',
  `kurs` double DEFAULT '0',
  `catatan` text,
  `remarks` text,
  `jenistrans` varchar(50) NOT NULL DEFAULT '',
  `tgllunas` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `jatuhtempodate` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `kodepelanggan` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldaftarpiutangd`
--

/*!40000 ALTER TABLE `tbldaftarpiutangd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldaftarpiutangd` ENABLE KEYS */;


--
-- Definition of table `tbldebitnote`
--

DROP TABLE IF EXISTS `tbldebitnote`;
CREATE TABLE `tbldebitnote` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(50) NOT NULL DEFAULT '',
  `jenistrans` varchar(30) NOT NULL DEFAULT '',
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `tanggal2` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `kodeclient` varchar(15) NOT NULL DEFAULT '',
  `jenisclient` varchar(15) NOT NULL DEFAULT '',
  `kodegudang` varchar(15) NOT NULL DEFAULT '',
  `divisi` varchar(50) NOT NULL DEFAULT '',
  `sales` varchar(50) NOT NULL DEFAULT '',
  `noref` varchar(30) NOT NULL DEFAULT '',
  `notransorder` varchar(30) NOT NULL DEFAULT '',
  `ccy` varchar(15) NOT NULL DEFAULT '',
  `kurs` double DEFAULT '0',
  `harga` double DEFAULT '0',
  `discount` double DEFAULT '0',
  `discpers` double DEFAULT '0',
  `total` double DEFAULT '0',
  `term` int(10) NOT NULL DEFAULT '0',
  `catatan` text,
  `catatan2` text NOT NULL,
  `remarkcancel` text,
  `ismasukhpp` tinyint(1) NOT NULL DEFAULT '0',
  `idprdb` varchar(10) NOT NULL DEFAULT '',
  `idprcr` varchar(10) NOT NULL DEFAULT '',
  `status` varchar(15) NOT NULL DEFAULT '',
  `userin` varchar(50) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupt` varchar(50) NOT NULL DEFAULT '',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldebitnote`
--

/*!40000 ALTER TABLE `tbldebitnote` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldebitnote` ENABLE KEYS */;


--
-- Definition of table `tbldebitnoted`
--

DROP TABLE IF EXISTS `tbldebitnoted`;
CREATE TABLE `tbldebitnoted` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(50) NOT NULL DEFAULT '',
  `idpr` varchar(15) NOT NULL DEFAULT '',
  `kodegudang` varchar(50) NOT NULL DEFAULT '',
  `kodebarang` varchar(50) NOT NULL DEFAULT '',
  `ccy` varchar(15) NOT NULL DEFAULT '',
  `kurs` double DEFAULT '0',
  `satuan` varchar(50) NOT NULL DEFAULT '',
  `qty` double DEFAULT '0',
  `qtysatuan` double DEFAULT '0',
  `qtyori` double DEFAULT '0',
  `hargasatuan` double DEFAULT '0',
  `harga` double DEFAULT '0',
  `discount` double DEFAULT '0',
  `discpers` double DEFAULT '0',
  `total` double DEFAULT '0',
  `catatan` text,
  `isnonstock` tinyint(1) NOT NULL DEFAULT '0',
  `keterangan` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldebitnoted`
--

/*!40000 ALTER TABLE `tbldebitnoted` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldebitnoted` ENABLE KEYS */;


--
-- Definition of table `tbldeposit`
--

DROP TABLE IF EXISTS `tbldeposit`;
CREATE TABLE `tbldeposit` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(30) NOT NULL DEFAULT '',
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `jenistrans` varchar(30) NOT NULL DEFAULT '',
  `notransorder` varchar(50) NOT NULL DEFAULT '',
  `noref` varchar(50) NOT NULL DEFAULT '',
  `kodeclient` varchar(50) NOT NULL DEFAULT '',
  `kodesales` varchar(15) NOT NULL DEFAULT '',
  `ccy` varchar(30) NOT NULL DEFAULT '',
  `kurs` double DEFAULT '0',
  `amount` double DEFAULT '0',
  `amounteqv` double DEFAULT '0',
  `catatan` text,
  `catatan2` text NOT NULL,
  `catatan3` text NOT NULL,
  `remarkcancel` text,
  `isrefund` tinyint(1) NOT NULL DEFAULT '0',
  `idpr` varchar(10) NOT NULL DEFAULT '',
  `status` varchar(5) NOT NULL DEFAULT '',
  `userin` varchar(30) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupt` varchar(30) NOT NULL DEFAULT '',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldeposit`
--

/*!40000 ALTER TABLE `tbldeposit` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldeposit` ENABLE KEYS */;


--
-- Definition of table `tbldivisi`
--

DROP TABLE IF EXISTS `tbldivisi`;
CREATE TABLE `tbldivisi` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `divisi` varchar(50) NOT NULL DEFAULT '',
  `kode` varchar(30) NOT NULL DEFAULT '',
  `hargajual` varchar(50) DEFAULT NULL,
  `kelhargajual` varchar(50) DEFAULT NULL,
  `userin` varchar(30) NOT NULL DEFAULT '',
  `entrydate` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupt` varchar(30) NOT NULL DEFAULT '',
  `lastentrydate` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `ischecked` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `divisi` (`divisi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldivisi`
--

/*!40000 ALTER TABLE `tbldivisi` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldivisi` ENABLE KEYS */;


--
-- Definition of table `tbldomaintenance`
--

DROP TABLE IF EXISTS `tbldomaintenance`;
CREATE TABLE `tbldomaintenance` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(50) NOT NULL DEFAULT '',
  `kodemesin` varchar(50) NOT NULL DEFAULT '',
  `keterangan` text NOT NULL,
  `userin` varchar(50) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `status` varchar(50) NOT NULL DEFAULT '',
  `jammt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `rejectremark` text NOT NULL,
  `userapprove` varchar(50) NOT NULL DEFAULT '',
  `jamapprove` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldomaintenance`
--

/*!40000 ALTER TABLE `tbldomaintenance` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldomaintenance` ENABLE KEYS */;


--
-- Definition of table `tblexeupdate`
--

DROP TABLE IF EXISTS `tblexeupdate`;
CREATE TABLE `tblexeupdate` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `exedata` longblob,
  `userpost` varchar(255) NOT NULL DEFAULT '',
  `kode` varchar(255) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `sources` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblexeupdate`
--

/*!40000 ALTER TABLE `tblexeupdate` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblexeupdate` ENABLE KEYS */;


--
-- Definition of table `tblexpenses`
--

DROP TABLE IF EXISTS `tblexpenses`;
CREATE TABLE `tblexpenses` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(100) NOT NULL DEFAULT '',
  `payment` varchar(150) NOT NULL DEFAULT '',
  `expensestype` varchar(150) NOT NULL DEFAULT '',
  `amount` double DEFAULT '0',
  `keterangan` text NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT '',
  `userin` varchar(255) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupt` varchar(255) NOT NULL DEFAULT '',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblexpenses`
--

/*!40000 ALTER TABLE `tblexpenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblexpenses` ENABLE KEYS */;


--
-- Definition of table `tblfeedback`
--

DROP TABLE IF EXISTS `tblfeedback`;
CREATE TABLE `tblfeedback` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `namapelapor` varchar(255) NOT NULL DEFAULT '',
  `perusahaan` varchar(255) NOT NULL DEFAULT '',
  `emailpelapor` varchar(255) NOT NULL DEFAULT '',
  `notelp` varchar(255) NOT NULL DEFAULT '',
  `isbug` tinyint(1) NOT NULL DEFAULT '0',
  `ismasukkan` tinyint(1) NOT NULL DEFAULT '0',
  `modul` varchar(255) NOT NULL DEFAULT '',
  `keterangan` text NOT NULL,
  `jamlapor` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblfeedback`
--

/*!40000 ALTER TABLE `tblfeedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblfeedback` ENABLE KEYS */;


--
-- Definition of table `tblfile`
--

DROP TABLE IF EXISTS `tblfile`;
CREATE TABLE `tblfile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kodebarang` varchar(100) NOT NULL DEFAULT '',
  `idbarang` varchar(50) DEFAULT NULL,
  `kodeimg` varchar(255) NOT NULL DEFAULT '',
  `namafile` varchar(500) NOT NULL,
  `extension` varchar(255) NOT NULL,
  `filesize` longblob NOT NULL,
  `catatan` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblfile`
--

/*!40000 ALTER TABLE `tblfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblfile` ENABLE KEYS */;


--
-- Definition of table `tblfilerental`
--

DROP TABLE IF EXISTS `tblfilerental`;
CREATE TABLE `tblfilerental` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `kodeimg` varchar(50) NOT NULL DEFAULT '',
  `kodebarang` varchar(50) NOT NULL DEFAULT '',
  `namafile` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `filesize` longblob,
  `catatan` text NOT NULL,
  `isspec` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblfilerental`
--

/*!40000 ALTER TABLE `tblfilerental` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblfilerental` ENABLE KEYS */;


--
-- Definition of table `tblgambaritem`
--

DROP TABLE IF EXISTS `tblgambaritem`;
CREATE TABLE `tblgambaritem` (
  `urut` int(50) NOT NULL AUTO_INCREMENT,
  `idbarang` varchar(50) DEFAULT NULL,
  `keterangan` text,
  PRIMARY KEY (`urut`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblgambaritem`
--

/*!40000 ALTER TABLE `tblgambaritem` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblgambaritem` ENABLE KEYS */;


--
-- Definition of table `tblgridlayout`
--

DROP TABLE IF EXISTS `tblgridlayout`;
CREATE TABLE `tblgridlayout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `textXML` longtext NOT NULL,
  `userin` varchar(255) NOT NULL,
  `jamin` datetime NOT NULL,
  `userupt` varchar(255) NOT NULL,
  `jamupt` datetime NOT NULL,
  `statusid` int(11) NOT NULL DEFAULT '5',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblgridlayout`
--

/*!40000 ALTER TABLE `tblgridlayout` DISABLE KEYS */;
INSERT INTO `tblgridlayout` (`id`,`nama`,`textXML`,`userin`,`jamin`,`userupt`,`jamupt`,`statusid`) VALUES 
 (1,'PEMBELIAN-PEMBELIAN','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<ArrayOfColumn xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\">\r\n  <Column>\r\n    <colName>colchk</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colID</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>22</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colMlk</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>31</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colNo</colName>\r\n    <colVisibleIndex>1</colVisibleIndex>\r\n    <colWidth>130</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colTanggal</colName>\r\n    <colVisibleIndex>2</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colTanggal2</colName>\r\n    <colVisibleIndex>3</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colVendor</colName>\r\n    <colVisibleIndex>4</colVisibleIndex>\r\n    <colWidth>66</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colPO</colName>\r\n    <colVisibleIndex>5</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colKurs</colName>\r\n    <colVisibleIndex>6</colVisibleIndex>\r\n    <colWidth>120</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colMU</colName>\r\n    <colVisibleIndex>7</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colHargaBeli</colName>\r\n    <colVisibleIndex>8</colVisibleIndex>\r\n    <colWidth>120</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colDiscount</colName>\r\n    <colVisibleIndex>9</colVisibleIndex>\r\n    <colWidth>120</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colPJK</colName>\r\n    <colVisibleIndex>10</colVisibleIndex>\r\n    <colWidth>120</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colPJKpers</colName>\r\n    <colVisibleIndex>11</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colTotal</colName>\r\n    <colVisibleIndex>12</colVisibleIndex>\r\n    <colWidth>120</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colDeposit</colName>\r\n    <colVisibleIndex>13</colVisibleIndex>\r\n    <colWidth>120</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colCredit</colName>\r\n    <colVisibleIndex>14</colVisibleIndex>\r\n    <colWidth>120</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colJatuhTempo</colName>\r\n    <colVisibleIndex>15</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colJenisPembelian</colName>\r\n    <colVisibleIndex>16</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colCatatan</colName>\r\n    <colVisibleIndex>17</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colNoFakPjk</colName>\r\n    <colVisibleIndex>18</colVisibleIndex>\r\n    <colWidth>130</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colTglFakPjk</colName>\r\n    <colVisibleIndex>19</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colBayar</colName>\r\n    <colVisibleIndex>20</colVisibleIndex>\r\n    <colWidth>120</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colAlasanBatal</colName>\r\n    <colVisibleIndex>21</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colstatus</colName>\r\n    <colVisibleIndex>22</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colConfirmBy</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colConfirmDate</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>110</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colConfirmTime</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colEntryBy</colName>\r\n    <colVisibleIndex>23</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colEntryDate</colName>\r\n    <colVisibleIndex>24</colVisibleIndex>\r\n    <colWidth>110</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colEntryTime</colName>\r\n    <colVisibleIndex>25</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colLastEditBy</colName>\r\n    <colVisibleIndex>26</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colLastEditDate</colName>\r\n    <colVisibleIndex>27</colVisibleIndex>\r\n    <colWidth>110</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colLastEditTime</colName>\r\n    <colVisibleIndex>28</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colPrintBy</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colPrintDate</colName>\r\n    <colVisibleIndex>29</colVisibleIndex>\r\n    <colWidth>110</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colPrintTime</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colOwner</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colImportID</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colImportBy</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colImportDate</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>110</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colImportTime</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colExportBy</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colExportDate</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>110</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colExportTime</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>NomorSort</colName>\r\n    <colVisibleIndex>0</colVisibleIndex>\r\n    <colWidth>50</colWidth>\r\n  </Column>\r\n</ArrayOfColumn>','JACKY','2023-11-28 16:36:56','JACKY','2023-11-29 08:30:53',5),
 (2,'Asset','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<ArrayOfColumn xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\">\r\n  <Column>\r\n    <colName>colimg</colName>\r\n    <colVisibleIndex>0</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colnama</colName>\r\n    <colVisibleIndex>1</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n</ArrayOfColumn>','JACKY','2023-12-14 20:20:46','JACKY','2023-12-14 20:20:46',5),
 (3,'Rental - List Barang','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<ArrayOfColumn xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\">\r\n  <Column>\r\n    <colName>colchk</colName>\r\n    <colVisibleIndex>0</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colid</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colkodebarang</colName>\r\n    <colVisibleIndex>1</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colkodebarang2</colName>\r\n    <colVisibleIndex>2</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colnamabarang</colName>\r\n    <colVisibleIndex>3</colVisibleIndex>\r\n    <colWidth>230</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colkodevendor</colName>\r\n    <colVisibleIndex>4</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colnamavendor</colName>\r\n    <colVisibleIndex>5</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colkodegroup</colName>\r\n    <colVisibleIndex>6</colVisibleIndex>\r\n    <colWidth>130</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colnamagroup</colName>\r\n    <colVisibleIndex>7</colVisibleIndex>\r\n    <colWidth>130</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colsat1</colName>\r\n    <colVisibleIndex>8</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colsat2</colName>\r\n    <colVisibleIndex>9</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colsat3</colName>\r\n    <colVisibleIndex>10</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colsat4</colName>\r\n    <colVisibleIndex>11</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colsat5</colName>\r\n    <colVisibleIndex>12</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colisi2</colName>\r\n    <colVisibleIndex>13</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colisi3</colName>\r\n    <colVisibleIndex>14</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colisi4</colName>\r\n    <colVisibleIndex>15</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colisi5</colName>\r\n    <colVisibleIndex>16</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colcatatan</colName>\r\n    <colVisibleIndex>17</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colkubikasi</colName>\r\n    <colVisibleIndex>18</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colberat</colName>\r\n    <colVisibleIndex>19</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colstatus</colName>\r\n    <colVisibleIndex>20</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coluserin</colName>\r\n    <colVisibleIndex>21</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coljamin</colName>\r\n    <colVisibleIndex>22</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coluserupt</colName>\r\n    <colVisibleIndex>23</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coljamupt</colName>\r\n    <colVisibleIndex>24</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n</ArrayOfColumn>','JACKY','2023-12-14 20:32:54','JACKY','2023-12-14 20:32:54',5),
 (4,'frmassetadd','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<ArrayOfColumn xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\">\r\n  <Column>\r\n    <colName>colimg</colName>\r\n    <colVisibleIndex>0</colVisibleIndex>\r\n    <colWidth>135</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coldesc</colName>\r\n    <colVisibleIndex>1</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n</ArrayOfColumn>','JACKY','2024-01-14 02:29:54','JACKY','2024-01-15 13:05:29',5),
 (5,'frmassetadd-GridView2','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<ArrayOfColumn xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\">\r\n  <Column>\r\n    <colName>colimg</colName>\r\n    <colVisibleIndex>0</colVisibleIndex>\r\n    <colWidth>135</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coldesc</colName>\r\n    <colVisibleIndex>1</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n</ArrayOfColumn>','JACKY','2024-02-16 22:37:50','JACKY','2024-04-30 13:42:50',5),
 (6,'frmlistasset-GridView1','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<ArrayOfColumn xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\">\r\n  <Column>\r\n    <colName>colchk</colName>\r\n    <colVisibleIndex>0</colVisibleIndex>\r\n    <colWidth>34</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colkodemesin</colName>\r\n    <colVisibleIndex>1</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colkodemesin2</colName>\r\n    <colVisibleIndex>2</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colnamamesin</colName>\r\n    <colVisibleIndex>3</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colsewapertahun</colName>\r\n    <colVisibleIndex>4</colVisibleIndex>\r\n    <colWidth>120</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colsewaperbulan</colName>\r\n    <colVisibleIndex>5</colVisibleIndex>\r\n    <colWidth>120</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colsewaperhari</colName>\r\n    <colVisibleIndex>6</colVisibleIndex>\r\n    <colWidth>120</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colsewaperjam</colName>\r\n    <colVisibleIndex>7</colVisibleIndex>\r\n    <colWidth>120</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colkodegroup</colName>\r\n    <colVisibleIndex>8</colVisibleIndex>\r\n    <colWidth>130</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colnamagroup</colName>\r\n    <colVisibleIndex>9</colVisibleIndex>\r\n    <colWidth>130</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colcatatan</colName>\r\n    <colVisibleIndex>10</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>collokasi</colName>\r\n    <colVisibleIndex>11</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coluserreq</colName>\r\n    <colVisibleIndex>12</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coljamreq</colName>\r\n    <colVisibleIndex>13</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n</ArrayOfColumn>','JACKY','2024-02-16 22:59:33','JACKY','2024-02-16 22:59:33',5),
 (7,'frmrentalquotationadd-GridView1','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<ArrayOfColumn xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\">\r\n  <Column>\r\n    <colName>colkodemesin</colName>\r\n    <colVisibleIndex>0</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colkodemesin2</colName>\r\n    <colVisibleIndex>1</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colnamamesin</colName>\r\n    <colVisibleIndex>2</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coltanggalakhir</colName>\r\n    <colVisibleIndex>3</colVisibleIndex>\r\n    <colWidth>110</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colharga</colName>\r\n    <colVisibleIndex>4</colVisibleIndex>\r\n    <colWidth>120</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colDiscsub</colName>\r\n    <colVisibleIndex>5</colVisibleIndex>\r\n    <colWidth>120</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colsubtotal</colName>\r\n    <colVisibleIndex>9</colVisibleIndex>\r\n    <colWidth>120</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coldiscount</colName>\r\n    <colVisibleIndex>10</colVisibleIndex>\r\n    <colWidth>120</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coldiscpers</colName>\r\n    <colVisibleIndex>6</colVisibleIndex>\r\n    <colWidth>120</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colperiod</colName>\r\n    <colVisibleIndex>7</colVisibleIndex>\r\n    <colWidth>120</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colunit</colName>\r\n    <colVisibleIndex>8</colVisibleIndex>\r\n    <colWidth>50</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coltotal</colName>\r\n    <colVisibleIndex>11</colVisibleIndex>\r\n    <colWidth>120</colWidth>\r\n  </Column>\r\n</ArrayOfColumn>','JACKY','2024-02-17 00:02:26','JACKY','2024-02-17 00:02:26',5),
 (8,'frmrentalsoadd-GridView1','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<ArrayOfColumn xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\">\r\n  <Column>\r\n    <colName>colkodemesin</colName>\r\n    <colVisibleIndex>0</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colkodemesin2</colName>\r\n    <colVisibleIndex>1</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colnamamesin</colName>\r\n    <colVisibleIndex>2</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coltanggalakhir</colName>\r\n    <colVisibleIndex>3</colVisibleIndex>\r\n    <colWidth>110</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>GridColumn1</colName>\r\n    <colVisibleIndex>4</colVisibleIndex>\r\n    <colWidth>130</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colharga</colName>\r\n    <colVisibleIndex>5</colVisibleIndex>\r\n    <colWidth>120</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coldiscperperiode</colName>\r\n    <colVisibleIndex>6</colVisibleIndex>\r\n    <colWidth>120</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coldiscount</colName>\r\n    <colVisibleIndex>11</colVisibleIndex>\r\n    <colWidth>120</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coldiscpers</colName>\r\n    <colVisibleIndex>7</colVisibleIndex>\r\n    <colWidth>120</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colsubtotal</colName>\r\n    <colVisibleIndex>10</colVisibleIndex>\r\n    <colWidth>120</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colperiod</colName>\r\n    <colVisibleIndex>8</colVisibleIndex>\r\n    <colWidth>120</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colunit</colName>\r\n    <colVisibleIndex>9</colVisibleIndex>\r\n    <colWidth>50</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coltotal</colName>\r\n    <colVisibleIndex>12</colVisibleIndex>\r\n    <colWidth>120</colWidth>\r\n  </Column>\r\n</ArrayOfColumn>','JACKY','2024-02-17 00:13:38','JACKY','2024-02-17 00:13:38',5),
 (9,'frmreceiveadd-GridView1','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<ArrayOfColumn xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\">\r\n  <Column>\r\n    <colName>colnotrans</colName>\r\n    <colVisibleIndex>0</colVisibleIndex>\r\n    <colWidth>130</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>GridColumn7</colName>\r\n    <colVisibleIndex>1</colVisibleIndex>\r\n    <colWidth>130</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colkodemesin</colName>\r\n    <colVisibleIndex>3</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>GridColumn6</colName>\r\n    <colVisibleIndex>4</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colnamamesin</colName>\r\n    <colVisibleIndex>5</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colqty</colName>\r\n    <colVisibleIndex>6</colVisibleIndex>\r\n    <colWidth>120</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colharga</colName>\r\n    <colVisibleIndex>7</colVisibleIndex>\r\n    <colWidth>120</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coldiscount</colName>\r\n    <colVisibleIndex>8</colVisibleIndex>\r\n    <colWidth>120</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coldiscpers</colName>\r\n    <colVisibleIndex>9</colVisibleIndex>\r\n    <colWidth>120</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coltotal</colName>\r\n    <colVisibleIndex>10</colVisibleIndex>\r\n    <colWidth>120</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>GridColumn5</colName>\r\n    <colVisibleIndex>2</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colcatatan</colName>\r\n    <colVisibleIndex>11</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n</ArrayOfColumn>','JACKY','2024-02-17 22:57:40','JACKY','2024-02-17 22:57:40',5),
 (10,'frmtesting-GridView1','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<ArrayOfColumn xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\">\r\n  <Column>\r\n    <colName>colchk</colName>\r\n    <colVisibleIndex>0</colVisibleIndex>\r\n    <colWidth>75</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colid</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>75</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colnotranspemb</colName>\r\n    <colVisibleIndex>1</colVisibleIndex>\r\n    <colWidth>75</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colnotranspo</colName>\r\n    <colVisibleIndex>2</colVisibleIndex>\r\n    <colWidth>75</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colkodevendor</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>75</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colvendor</colName>\r\n    <colVisibleIndex>3</colVisibleIndex>\r\n    <colWidth>75</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colmlk</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>75</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colidpr</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>75</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coltanggal</colName>\r\n    <colVisibleIndex>4</colVisibleIndex>\r\n    <colWidth>75</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colnotrans</colName>\r\n    <colVisibleIndex>5</colVisibleIndex>\r\n    <colWidth>75</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coljenistrans</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>75</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colccy</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>75</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colharga</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>120</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coldiscount</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>120</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coladjust</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>75</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colpjk</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>75</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colretur</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>75</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coldeposit</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>75</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colsisahutang</colName>\r\n    <colVisibleIndex>6</colVisibleIndex>\r\n    <colWidth>75</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colkurs</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>75</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coltelahlunas</colName>\r\n    <colVisibleIndex>7</colVisibleIndex>\r\n    <colWidth>75</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>collunason</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>75</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coljatuhtempo</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>73</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coljatuhtempos</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>75</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coljatuhtempodate</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>75</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colcatatan</colName>\r\n    <colVisibleIndex>9</colVisibleIndex>\r\n    <colWidth>75</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colcatatan2</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>75</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colcatatan3</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>75</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colstatus</colName>\r\n    <colVisibleIndex>8</colVisibleIndex>\r\n    <colWidth>75</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coluserin</colName>\r\n    <colVisibleIndex>10</colVisibleIndex>\r\n    <colWidth>75</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coljamin</colName>\r\n    <colVisibleIndex>11</colVisibleIndex>\r\n    <colWidth>75</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coluserupt</colName>\r\n    <colVisibleIndex>12</colVisibleIndex>\r\n    <colWidth>78</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coljamupt</colName>\r\n    <colVisibleIndex>13</colVisibleIndex>\r\n    <colWidth>75</colWidth>\r\n  </Column>\r\n</ArrayOfColumn>','JACKY','2024-02-19 01:48:24','JACKY','2024-02-19 03:54:06',5),
 (11,'frmrentaldoadd-GridView1','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<ArrayOfColumn xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\">\r\n  <Column>\r\n    <colName>colchk</colName>\r\n    <colVisibleIndex>0</colVisibleIndex>\r\n    <colWidth>20</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colkodemesin</colName>\r\n    <colVisibleIndex>1</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colkodemesin2</colName>\r\n    <colVisibleIndex>2</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>GridColumn1</colName>\r\n    <colVisibleIndex>3</colVisibleIndex>\r\n    <colWidth>130</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colnamamesin</colName>\r\n    <colVisibleIndex>4</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coltanggalakhir</colName>\r\n    <colVisibleIndex>5</colVisibleIndex>\r\n    <colWidth>110</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colharga1</colName>\r\n    <colVisibleIndex>6</colVisibleIndex>\r\n    <colWidth>120</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colperiodso</colName>\r\n    <colVisibleIndex>7</colVisibleIndex>\r\n    <colWidth>120</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colperiodpaid</colName>\r\n    <colVisibleIndex>8</colVisibleIndex>\r\n    <colWidth>120</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colinvoicepaid</colName>\r\n    <colVisibleIndex>9</colVisibleIndex>\r\n    <colWidth>120</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colperiod</colName>\r\n    <colVisibleIndex>10</colVisibleIndex>\r\n    <colWidth>120</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coldiscount1</colName>\r\n    <colVisibleIndex>11</colVisibleIndex>\r\n    <colWidth>120</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coldiscpers</colName>\r\n    <colVisibleIndex>12</colVisibleIndex>\r\n    <colWidth>120</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coltotal1</colName>\r\n    <colVisibleIndex>13</colVisibleIndex>\r\n    <colWidth>120</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colunit</colName>\r\n    <colVisibleIndex>14</colVisibleIndex>\r\n    <colWidth>50</colWidth>\r\n  </Column>\r\n</ArrayOfColumn>','JACKY','2024-02-20 21:13:01','JACKY','2024-02-20 21:13:01',5),
 (12,'frmasset-GridView1','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<ArrayOfColumn xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\">\r\n  <Column>\r\n    <colName>GridColumn1</colName>\r\n    <colVisibleIndex>0</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colid</colName>\r\n    <colVisibleIndex>2</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colkodemesin</colName>\r\n    <colVisibleIndex>9</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colkodemesin2</colName>\r\n    <colVisibleIndex>10</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colnamamesin</colName>\r\n    <colVisibleIndex>11</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colkodesupplier</colName>\r\n    <colVisibleIndex>12</colVisibleIndex>\r\n    <colWidth>200</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colnamasupplier</colName>\r\n    <colVisibleIndex>13</colVisibleIndex>\r\n    <colWidth>200</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coltanggal</colName>\r\n    <colVisibleIndex>14</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colharga</colName>\r\n    <colVisibleIndex>15</colVisibleIndex>\r\n    <colWidth>120</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colbanyaksusut</colName>\r\n    <colVisibleIndex>16</colVisibleIndex>\r\n    <colWidth>120</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colsusutbulan</colName>\r\n    <colVisibleIndex>17</colVisibleIndex>\r\n    <colWidth>120</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colidprasset</colName>\r\n    <colVisibleIndex>18</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colidprcashbank</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colidprkodeasset</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colidprakumulasi</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colcatatan</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>collokasi</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colkodegroup</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>130</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colnamagroup</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>130</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colsewatahun</colName>\r\n    <colVisibleIndex>19</colVisibleIndex>\r\n    <colWidth>120</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colsewabulan</colName>\r\n    <colVisibleIndex>20</colVisibleIndex>\r\n    <colWidth>120</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colsewahari</colName>\r\n    <colVisibleIndex>21</colVisibleIndex>\r\n    <colWidth>120</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colsewajam</colName>\r\n    <colVisibleIndex>22</colVisibleIndex>\r\n    <colWidth>120</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colstatus</colName>\r\n    <colVisibleIndex>1</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coluserreq</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coljamreq</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coluserapr</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coljamapr</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coluserrec</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coljamrec</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coluserpost</colName>\r\n    <colVisibleIndex>23</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coljampost</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coluserupdpost</colName>\r\n    <colVisibleIndex>24</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coljamupdpost</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colnotransdo</colName>\r\n    <colVisibleIndex>4</colVisibleIndex>\r\n    <colWidth>91</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coltanggalmulaido</colName>\r\n    <colVisibleIndex>5</colVisibleIndex>\r\n    <colWidth>110</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colcustomerdo</colName>\r\n    <colVisibleIndex>6</colVisibleIndex>\r\n    <colWidth>200</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colstatusrental</colName>\r\n    <colVisibleIndex>3</colVisibleIndex>\r\n    <colWidth>95</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colduedatedo</colName>\r\n    <colVisibleIndex>8</colVisibleIndex>\r\n    <colWidth>113</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coljatuhtempoDO</colName>\r\n    <colVisibleIndex>7</colVisibleIndex>\r\n    <colWidth>86</colWidth>\r\n  </Column>\r\n</ArrayOfColumn>','JACKY','2024-02-21 01:23:11','JACKY','2024-02-21 01:25:47',5),
 (13,'frmassetadd-gvclb','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<ArrayOfColumn xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\">\r\n  <Column>\r\n    <colName>colid</colName>\r\n    <colVisibleIndex>0</colVisibleIndex>\r\n    <colWidth>41</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colnama</colName>\r\n    <colVisibleIndex>1</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colkode</colName>\r\n    <colVisibleIndex>2</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colkodeclb</colName>\r\n    <colVisibleIndex>3</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colkodebarcode</colName>\r\n    <colVisibleIndex>4</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colspesifikasi</colName>\r\n    <colVisibleIndex>5</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colnoseri</colName>\r\n    <colVisibleIndex>6</colVisibleIndex>\r\n    <colWidth>130</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colbrand</colName>\r\n    <colVisibleIndex>7</colVisibleIndex>\r\n    <colWidth>130</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colkategori</colName>\r\n    <colVisibleIndex>8</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colwerehouse</colName>\r\n    <colVisibleIndex>9</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coljenis</colName>\r\n    <colVisibleIndex>10</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colrak</colName>\r\n    <colVisibleIndex>11</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colsewapertahun</colName>\r\n    <colVisibleIndex>12</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colsewaperbulan</colName>\r\n    <colVisibleIndex>13</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colsewaperhari</colName>\r\n    <colVisibleIndex>14</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colsewaperjam</colName>\r\n    <colVisibleIndex>15</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n</ArrayOfColumn>','JACKY','2024-02-28 16:42:34','JACKY','2024-02-28 16:42:34',5),
 (14,'frmlinkpr-GridLookUpEdit1View','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<ArrayOfColumn xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\">\r\n  <Column>\r\n    <colName>GridColumn1</colName>\r\n    <colVisibleIndex>0</colVisibleIndex>\r\n    <colWidth>70</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coldesc</colName>\r\n    <colVisibleIndex>1</colVisibleIndex>\r\n    <colWidth>173</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>GridColumn3</colName>\r\n    <colVisibleIndex>2</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n</ArrayOfColumn>','JACKY','2024-02-29 13:01:56','JACKY','2024-02-29 13:01:56',5),
 (15,'frmrentallistitem-GridView1','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<ArrayOfColumn xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\">\r\n  <Column>\r\n    <colName>GridColumn1</colName>\r\n    <colVisibleIndex>0</colVisibleIndex>\r\n    <colWidth>50</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>GridColumn2</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>GridColumn3</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colnamabarang</colName>\r\n    <colVisibleIndex>1</colVisibleIndex>\r\n    <colWidth>230</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>GridColumn5</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>GridColumn6</colName>\r\n    <colVisibleIndex>2</colVisibleIndex>\r\n    <colWidth>130</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>GridColumn7</colName>\r\n    <colVisibleIndex>3</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>GridColumn8</colName>\r\n    <colVisibleIndex>4</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>GridColumn9</colName>\r\n    <colVisibleIndex>5</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>GridColumn10</colName>\r\n    <colVisibleIndex>6</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>GridColumn11</colName>\r\n    <colVisibleIndex>7</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>GridColumn12</colName>\r\n    <colVisibleIndex>8</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>GridColumn13</colName>\r\n    <colVisibleIndex>9</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>GridColumn14</colName>\r\n    <colVisibleIndex>10</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>GridColumn15</colName>\r\n    <colVisibleIndex>11</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>GridColumn16</colName>\r\n    <colVisibleIndex>12</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>GridColumn17</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>GridColumn18</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>GridColumn19</colName>\r\n    <colVisibleIndex>-1</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n</ArrayOfColumn>','USER','2024-03-12 11:22:57','USER','2024-03-12 11:23:29',5),
 (16,'frmassetadd-GridView3','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<ArrayOfColumn xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\">\r\n  <Column>\r\n    <colName>colid</colName>\r\n    <colVisibleIndex>0</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colnoclb</colName>\r\n    <colVisibleIndex>2</colVisibleIndex>\r\n    <colWidth>130</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colnotransmutasimasuk</colName>\r\n    <colVisibleIndex>3</colVisibleIndex>\r\n    <colWidth>130</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colnotransmutasikeluar</colName>\r\n    <colVisibleIndex>4</colVisibleIndex>\r\n    <colWidth>130</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colisTerjual</colName>\r\n    <colVisibleIndex>5</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colnotranspo</colName>\r\n    <colVisibleIndex>6</colVisibleIndex>\r\n    <colWidth>130</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colnotransdo</colName>\r\n    <colVisibleIndex>7</colVisibleIndex>\r\n    <colWidth>130</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colduedatedo</colName>\r\n    <colVisibleIndex>8</colVisibleIndex>\r\n    <colWidth>110</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coljatuhtempoDO</colName>\r\n    <colVisibleIndex>9</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coljatuhtempoDOdbl</colName>\r\n    <colVisibleIndex>10</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coltanggalmulaido</colName>\r\n    <colVisibleIndex>11</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colkodecustomerdo</colName>\r\n    <colVisibleIndex>12</colVisibleIndex>\r\n    <colWidth>200</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colcustomerdo</colName>\r\n    <colVisibleIndex>13</colVisibleIndex>\r\n    <colWidth>200</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colstatusrental</colName>\r\n    <colVisibleIndex>14</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colnotransreceive</colName>\r\n    <colVisibleIndex>15</colVisibleIndex>\r\n    <colWidth>130</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colkodemesin</colName>\r\n    <colVisibleIndex>16</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colkodemesin2</colName>\r\n    <colVisibleIndex>17</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colnamamesin</colName>\r\n    <colVisibleIndex>1</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colkodesupplier</colName>\r\n    <colVisibleIndex>18</colVisibleIndex>\r\n    <colWidth>200</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colnamasupplier</colName>\r\n    <colVisibleIndex>19</colVisibleIndex>\r\n    <colWidth>200</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colkodebrand</colName>\r\n    <colVisibleIndex>20</colVisibleIndex>\r\n    <colWidth>130</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coltanggal</colName>\r\n    <colVisibleIndex>21</colVisibleIndex>\r\n    <colWidth>110</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colharga</colName>\r\n    <colVisibleIndex>22</colVisibleIndex>\r\n    <colWidth>120</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colnoseri</colName>\r\n    <colVisibleIndex>23</colVisibleIndex>\r\n    <colWidth>130</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colkodebarcode</colName>\r\n    <colVisibleIndex>24</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coljenis</colName>\r\n    <colVisibleIndex>25</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colbanyaksusut</colName>\r\n    <colVisibleIndex>26</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colsusutbulan</colName>\r\n    <colVisibleIndex>27</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coltotalsusut</colName>\r\n    <colVisibleIndex>28</colVisibleIndex>\r\n    <colWidth>120</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colnilaisusut</colName>\r\n    <colVisibleIndex>29</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colsisanilai</colName>\r\n    <colVisibleIndex>30</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coltotalsusutbulan</colName>\r\n    <colVisibleIndex>31</colVisibleIndex>\r\n    <colWidth>120</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colidprasset</colName>\r\n    <colVisibleIndex>32</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colprasset</colName>\r\n    <colVisibleIndex>33</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colidprcashbank</colName>\r\n    <colVisibleIndex>34</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colprcashbank</colName>\r\n    <colVisibleIndex>35</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colidprkodeasset</colName>\r\n    <colVisibleIndex>36</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colprkodeasset</colName>\r\n    <colVisibleIndex>37</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colidprakumulasi</colName>\r\n    <colVisibleIndex>38</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colprakumulasi</colName>\r\n    <colVisibleIndex>39</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colcatatan</colName>\r\n    <colVisibleIndex>40</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colkodegudang</colName>\r\n    <colVisibleIndex>41</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colkodegroup</colName>\r\n    <colVisibleIndex>42</colVisibleIndex>\r\n    <colWidth>130</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colnamagroup</colName>\r\n    <colVisibleIndex>43</colVisibleIndex>\r\n    <colWidth>130</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colsewatahun</colName>\r\n    <colVisibleIndex>44</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colsewabulan</colName>\r\n    <colVisibleIndex>45</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colsewahari</colName>\r\n    <colVisibleIndex>46</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colsewajam</colName>\r\n    <colVisibleIndex>47</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colstatusori</colName>\r\n    <colVisibleIndex>48</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colstatus</colName>\r\n    <colVisibleIndex>49</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coluserreq</colName>\r\n    <colVisibleIndex>50</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coljamreq</colName>\r\n    <colVisibleIndex>51</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coluserapr</colName>\r\n    <colVisibleIndex>52</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coljamapr</colName>\r\n    <colVisibleIndex>53</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coluserrec</colName>\r\n    <colVisibleIndex>54</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coljamrec</colName>\r\n    <colVisibleIndex>55</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coluserpost</colName>\r\n    <colVisibleIndex>56</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coljampost</colName>\r\n    <colVisibleIndex>57</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coluserupdpost</colName>\r\n    <colVisibleIndex>58</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colstatusfn</colName>\r\n    <colVisibleIndex>59</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coljamupdpost</colName>\r\n    <colVisibleIndex>60</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colperiodereceive</colName>\r\n    <colVisibleIndex>61</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coldtpemb</colName>\r\n    <colVisibleIndex>62</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n</ArrayOfColumn>','JACKY','2024-04-15 16:16:54','JACKY','2024-04-15 16:16:59',5),
 (17,'frmassetpoadd-GridView2','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<ArrayOfColumn xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\">\r\n  <Column>\r\n    <colName>colchk</colName>\r\n    <colVisibleIndex>0</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colkodemesin1</colName>\r\n    <colVisibleIndex>1</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colkodeclb</colName>\r\n    <colVisibleIndex>2</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colnoclb</colName>\r\n    <colVisibleIndex>3</colVisibleIndex>\r\n    <colWidth>130</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colharga1</colName>\r\n    <colVisibleIndex>4</colVisibleIndex>\r\n    <colWidth>120</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>coldiscount1</colName>\r\n    <colVisibleIndex>5</colVisibleIndex>\r\n    <colWidth>120</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colnoseri</colName>\r\n    <colVisibleIndex>6</colVisibleIndex>\r\n    <colWidth>130</colWidth>\r\n  </Column>\r\n</ArrayOfColumn>','JACKY','2024-04-15 16:31:03','JACKY','2024-04-15 16:31:28',5),
 (18,'frmlisthakuser-GridView2','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<ArrayOfColumn xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\">\r\n  <Column>\r\n    <colName>colchk</colName>\r\n    <colVisibleIndex>0</colVisibleIndex>\r\n    <colWidth>29</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colusername</colName>\r\n    <colVisibleIndex>1</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n  <Column>\r\n    <colName>colhak</colName>\r\n    <colVisibleIndex>2</colVisibleIndex>\r\n    <colWidth>100</colWidth>\r\n  </Column>\r\n</ArrayOfColumn>','JACKY','2024-04-16 08:44:14','JACKY','2024-04-16 08:44:14',5),
 (19,'frmlisthakuser-GridView1','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<ArrayOfColumn xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\">\r\n  <Column>\r\n    <colName>colKeterangan</colName>\r\n    <colVisibleIndex>0</colVisibleIndex>\r\n    <colWidth>301</colWidth>\r\n  </Column>\r\n</ArrayOfColumn>','JACKY','2024-04-16 08:44:19','JACKY','2024-04-16 08:44:19',5);
/*!40000 ALTER TABLE `tblgridlayout` ENABLE KEYS */;


--
-- Definition of table `tblgroup`
--

DROP TABLE IF EXISTS `tblgroup`;
CREATE TABLE `tblgroup` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `kodegroup` varchar(50) NOT NULL DEFAULT '',
  `namagroup` varchar(225) NOT NULL DEFAULT '',
  `userin` varchar(100) NOT NULL DEFAULT '',
  `jam` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupt` varchar(100) NOT NULL DEFAULT '',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `isshown` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblgroup`
--

/*!40000 ALTER TABLE `tblgroup` DISABLE KEYS */;
INSERT INTO `tblgroup` (`id`,`kodegroup`,`namagroup`,`userin`,`jam`,`userupt`,`jamupt`,`isshown`,`status`) VALUES 
 (1,'GRP0001','Kategori A','JACKY','2024-02-28 16:40:27','JACKY','2024-02-28 16:40:27',0,5);
/*!40000 ALTER TABLE `tblgroup` ENABLE KEYS */;


--
-- Definition of table `tblgroup2`
--

DROP TABLE IF EXISTS `tblgroup2`;
CREATE TABLE `tblgroup2` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `kodegroup` varchar(50) NOT NULL DEFAULT '',
  `namagroup` varchar(50) NOT NULL DEFAULT '',
  `userin` varchar(50) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupt` varchar(50) NOT NULL DEFAULT '',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `kodegroup2` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblgroup2`
--

/*!40000 ALTER TABLE `tblgroup2` DISABLE KEYS */;
INSERT INTO `tblgroup2` (`id`,`kodegroup`,`namagroup`,`userin`,`jamin`,`userupt`,`jamupt`,`status`,`kodegroup2`) VALUES 
 (1,'GRP0001','Jenis A','JACKY','2024-02-28 16:41:03','JACKY','2024-02-28 16:41:03',5,'GRP020001');
/*!40000 ALTER TABLE `tblgroup2` ENABLE KEYS */;


--
-- Definition of table `tblgroup3`
--

DROP TABLE IF EXISTS `tblgroup3`;
CREATE TABLE `tblgroup3` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `kodegroup` varchar(50) NOT NULL DEFAULT '',
  `namagroup` varchar(50) NOT NULL DEFAULT '',
  `userin` varchar(50) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupt` varchar(50) NOT NULL DEFAULT '',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `kodegroup2` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblgroup3`
--

/*!40000 ALTER TABLE `tblgroup3` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblgroup3` ENABLE KEYS */;


--
-- Definition of table `tblgroupuser`
--

DROP TABLE IF EXISTS `tblgroupuser`;
CREATE TABLE `tblgroupuser` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `group` varchar(100) NOT NULL DEFAULT '',
  `keterangan` varchar(100) NOT NULL DEFAULT '',
  `userlevel` varchar(130) NOT NULL DEFAULT '',
  `maxdisc` double DEFAULT '0',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `jamupd` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userin` varchar(155) NOT NULL DEFAULT '',
  `userupd` varchar(155) NOT NULL DEFAULT '',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblgroupuser`
--

/*!40000 ALTER TABLE `tblgroupuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblgroupuser` ENABLE KEYS */;


--
-- Definition of table `tblgudang`
--

DROP TABLE IF EXISTS `tblgudang`;
CREATE TABLE `tblgudang` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `kode` varchar(100) NOT NULL DEFAULT '',
  `nama` varchar(100) NOT NULL DEFAULT '0',
  `koderak` varchar(125) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `kode` (`kode`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblgudang`
--

/*!40000 ALTER TABLE `tblgudang` DISABLE KEYS */;
INSERT INTO `tblgudang` (`id`,`kode`,`nama`,`koderak`) VALUES 
 (1,'GD0001','Gudang A','RAK0001');
/*!40000 ALTER TABLE `tblgudang` ENABLE KEYS */;


--
-- Definition of table `tblhakuser`
--

DROP TABLE IF EXISTS `tblhakuser`;
CREATE TABLE `tblhakuser` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `kodehak` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(255) NOT NULL DEFAULT '',
  `akses` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblhakuser`
--

/*!40000 ALTER TABLE `tblhakuser` DISABLE KEYS */;
INSERT INTO `tblhakuser` (`id`,`kodehak`,`username`,`akses`) VALUES 
 (1,'SetHak','jacky',1),
 (2,'SetHak','admin',1),
 (3,'SetHak','Operator',0),
 (4,'SetHak','Krywn1',0),
 (5,'UserOffice','jacky',1),
 (6,'UserOffice','admin',1),
 (7,'UserOffice','Operator',0),
 (8,'UserOffice','Krywn1',0),
 (9,'KodeHakReceive','jacky',1),
 (10,'KodeHakReceive','admin',1),
 (11,'KodeHakReceive','Operator',0),
 (12,'KodeHakReceive','Krywn1',0),
 (13,'SetHak','Wellson',0),
 (14,'UserOffice','Wellson',0),
 (15,'KodeHakReceive','Wellson',0);
/*!40000 ALTER TABLE `tblhakuser` ENABLE KEYS */;


--
-- Definition of table `tblhubung`
--

DROP TABLE IF EXISTS `tblhubung`;
CREATE TABLE `tblhubung` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `idvendor` int(50) NOT NULL DEFAULT '0',
  `nama` varchar(100) NOT NULL DEFAULT '',
  `alamat` text,
  `notelp` int(50) NOT NULL DEFAULT '0',
  `hubungan` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblhubung`
--

/*!40000 ALTER TABLE `tblhubung` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblhubung` ENABLE KEYS */;


--
-- Definition of table `tblhutang`
--

DROP TABLE IF EXISTS `tblhutang`;
CREATE TABLE `tblhutang` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `tipetrans` varchar(50) NOT NULL DEFAULT '',
  `notrans` varchar(50) NOT NULL DEFAULT '',
  `harga` double DEFAULT '0',
  `idmu` double DEFAULT '0',
  `kurs` double DEFAULT '0',
  `jatuhtempo` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblhutang`
--

/*!40000 ALTER TABLE `tblhutang` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblhutang` ENABLE KEYS */;


--
-- Definition of table `tblinkpr`
--

DROP TABLE IF EXISTS `tblinkpr`;
CREATE TABLE `tblinkpr` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblinkpr`
--

/*!40000 ALTER TABLE `tblinkpr` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblinkpr` ENABLE KEYS */;


--
-- Definition of table `tblinvoice`
--

DROP TABLE IF EXISTS `tblinvoice`;
CREATE TABLE `tblinvoice` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(50) NOT NULL DEFAULT '',
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `kodepelanggan` varchar(25) NOT NULL DEFAULT '',
  `kodesales` varchar(50) NOT NULL DEFAULT '',
  `ccy` varchar(10) NOT NULL DEFAULT '',
  `kurs` double DEFAULT '0',
  `harga` double DEFAULT '0',
  `discount` double DEFAULT '0',
  `kodetax` varchar(10) NOT NULL DEFAULT '',
  `tax` double DEFAULT '0',
  `retur` double DEFAULT '0',
  `deposit` double DEFAULT '0',
  `total` double DEFAULT '0',
  `term` int(10) NOT NULL DEFAULT '0',
  `catatan` text,
  `catatan2` text NOT NULL,
  `catatan3` text NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT '',
  `userin` varchar(25) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupt` varchar(25) NOT NULL DEFAULT '',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblinvoice`
--

/*!40000 ALTER TABLE `tblinvoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblinvoice` ENABLE KEYS */;


--
-- Definition of table `tblinvoiced`
--

DROP TABLE IF EXISTS `tblinvoiced`;
CREATE TABLE `tblinvoiced` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(50) NOT NULL DEFAULT '',
  `nobukti` varchar(50) NOT NULL DEFAULT '',
  `jenistrans` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblinvoiced`
--

/*!40000 ALTER TABLE `tblinvoiced` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblinvoiced` ENABLE KEYS */;


--
-- Definition of table `tbljabatan`
--

DROP TABLE IF EXISTS `tbljabatan`;
CREATE TABLE `tbljabatan` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `kode` varchar(25) NOT NULL DEFAULT '',
  `nama` varchar(100) NOT NULL DEFAULT '',
  `islocked` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbljabatan`
--

/*!40000 ALTER TABLE `tbljabatan` DISABLE KEYS */;
INSERT INTO `tbljabatan` (`id`,`kode`,`nama`,`islocked`) VALUES 
 (1,'SL','Sales',1),
 (2,'SP','Supir',1),
 (3,'HL','Helper',1),
 (4,'CL','Collector',1),
 (5,'AD','Admin',1);
/*!40000 ALTER TABLE `tbljabatan` ENABLE KEYS */;


--
-- Definition of table `tbljamsewa`
--

DROP TABLE IF EXISTS `tbljamsewa`;
CREATE TABLE `tbljamsewa` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `kodemesin` varchar(50) NOT NULL DEFAULT '',
  `jamsewa` double DEFAULT '0',
  `totaljam` double DEFAULT '0',
  `keterangan` text,
  `status` varchar(10) NOT NULL DEFAULT '',
  `userin` varchar(50) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupt` varchar(50) NOT NULL DEFAULT '',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `timein` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `timeout` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `operator` varchar(125) NOT NULL DEFAULT '',
  `noinv` varchar(125) NOT NULL DEFAULT '',
  `projek` varchar(125) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbljamsewa`
--

/*!40000 ALTER TABLE `tbljamsewa` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbljamsewa` ENABLE KEYS */;


--
-- Definition of table `tbljenis`
--

DROP TABLE IF EXISTS `tbljenis`;
CREATE TABLE `tbljenis` (
  `idjenis` int(10) NOT NULL AUTO_INCREMENT,
  `kode` varchar(15) DEFAULT NULL,
  `nama` varchar(255) NOT NULL DEFAULT '',
  `status` int(15) NOT NULL DEFAULT '20',
  PRIMARY KEY (`idjenis`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbljenis`
--

/*!40000 ALTER TABLE `tbljenis` DISABLE KEYS */;
INSERT INTO `tbljenis` (`idjenis`,`kode`,`nama`,`status`) VALUES 
 (1,'JN0001','Stock',20),
 (2,'JN0002','Servis/Non-Stock',20);
/*!40000 ALTER TABLE `tbljenis` ENABLE KEYS */;


--
-- Definition of table `tbljenispemb`
--

DROP TABLE IF EXISTS `tbljenispemb`;
CREATE TABLE `tbljenispemb` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `jenis` varchar(50) NOT NULL DEFAULT '',
  `kodejenis` varchar(50) NOT NULL DEFAULT '',
  `entryby` varchar(50) NOT NULL DEFAULT '',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `entrydate` date DEFAULT NULL,
  `entrytime` time DEFAULT NULL,
  `lasteditby` varchar(50) NOT NULL DEFAULT '',
  `lasteditdate` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `lastedittime` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbljenispemb`
--

/*!40000 ALTER TABLE `tbljenispemb` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbljenispemb` ENABLE KEYS */;


--
-- Definition of table `tbljenispenj`
--

DROP TABLE IF EXISTS `tbljenispenj`;
CREATE TABLE `tbljenispenj` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `jenis` varchar(50) NOT NULL DEFAULT '',
  `kodejenis` varchar(50) NOT NULL DEFAULT '',
  `nopenj` varchar(50) NOT NULL DEFAULT '',
  `entryby` varchar(50) NOT NULL DEFAULT '',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `entrydate` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `entrytime` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `lasteditby` varchar(50) NOT NULL DEFAULT '',
  `lasteditdate` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `lastedittime` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  PRIMARY KEY (`id`),
  KEY `kodejenis` (`kodejenis`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbljenispenj`
--

/*!40000 ALTER TABLE `tbljenispenj` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbljenispenj` ENABLE KEYS */;


--
-- Definition of table `tbljenistransaksi`
--

DROP TABLE IF EXISTS `tbljenistransaksi`;
CREATE TABLE `tbljenistransaksi` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `kodetransaksi` varchar(45) NOT NULL DEFAULT '',
  `nama` varchar(100) NOT NULL DEFAULT '',
  `kodedepan` varchar(45) NOT NULL DEFAULT '',
  `pakaitahun` tinyint(1) NOT NULL DEFAULT '0',
  `pakaibulan` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `tbljenistransaksi` (`kodetransaksi`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbljenistransaksi`
--

/*!40000 ALTER TABLE `tbljenistransaksi` DISABLE KEYS */;
INSERT INTO `tbljenistransaksi` (`id`,`kodetransaksi`,`nama`,`kodedepan`,`pakaitahun`,`pakaibulan`) VALUES 
 (45,'1001','PO','PO',1,1),
 (46,'1005','Pembelian','PB',1,1),
 (47,'1090','Orderan','OR',1,1),
 (48,'1050','Penjualan','IV',1,1),
 (49,'1022','Project','PRO',1,1),
 (50,'1040','Retur Pembelian','RB',1,1),
 (51,'1020','Retur Penjualan','RP',1,1),
 (52,'1060','Pengeluaran Project','KP',1,1),
 (53,'1003','Penerimaan Barang','PB',1,1),
 (54,'1006','Pembelian No PO','PN',1,1),
 (55,'8000','Pembayaran Hutang','AP',1,1),
 (56,'1030','Stock Opname','SO',1,1),
 (57,'1070','Ganti Gudang','GG',1,1),
 (58,'1041','Retur Pembelian No PO','RN',1,1),
 (59,'1081','Mutasi Masuk','MM',1,1),
 (60,'1082','Mutasi Keluar','MK',1,1),
 (61,'E1000','Invoice','IV',1,1),
 (62,'8001','Piutang','ST',1,1),
 (63,'PO001','PO Penjualan','POJ',1,1),
 (64,'R1001','PO2','RO',1,1),
 (65,'P1001','Penerimaan PO','RC',1,1),
 (66,'P10501','Penjualan Non Pajak Piutang','IV',1,1),
 (67,'P10502','Penjualan Pajak Piutang','IV',1,1),
 (68,'P1050','Penjualan Pajak Cash','IV',1,1),
 (69,'PREPO1','Pre PO','PP',1,1),
 (70,'1091','Quotation','QN',1,1),
 (71,'BY001','Biaya','BY',1,1),
 (72,'B1111','Pelunasan','CP',1,1),
 (73,'B1111s','Pelunasan','SP',1,1),
 (74,'OTI','OTI','OTI',1,1),
 (75,'cashbonmulti','Cashbon Multiple','CM',1,1),
 (76,'CB0001','Cash Bank','CB',1,1),
 (77,'2001','Downpayment Supplier','DPS',1,1),
 (78,'cashbonmultipaid','Cashbon Multiple','CMP',1,1),
 (79,'2021','Downpayment Supplier Return','RTS',1,1),
 (80,'2002','Downpayment Customer','DPC',1,1),
 (81,'2022','Downpayment Customer Return','RTC',1,1),
 (82,'RPAR','Repost RAR','RAR',1,1),
 (83,'OICM','Other Income','OI',1,1),
 (84,'SQ','Sales Quotation','SQ',1,1),
 (85,'RPAP','Repost AP','AP',1,1),
 (86,'STOKZERO','STOKZERO','STOKZERO',1,1),
 (87,'APDI','Part Assemble','AS',1,1),
 (88,'QPRJ','Quotation Project','QP',1,1),
 (89,'1999','Saldo Awal','SA',1,1),
 (90,'1910','Kas Masuk','KM',1,1),
 (91,'1920','Kas Keluar','KK',1,1),
 (92,'2031','Debit Note Cust','DNC',1,1),
 (93,'2032','Credit Note Cust','CNC',1,1),
 (94,'2033','Debit Note Sup','DNS',1,1),
 (95,'2034','Credit Note Sup','CNS',1,1),
 (96,'1111','Jurnal Umum','JM',1,1),
 (97,'9000','Penerimaan Piutang','AR',1,1),
 (98,'9999','Closing','CL',1,1),
 (99,'9991','HPP','JHPP',1,1),
 (100,'9992','Laba','JPL',1,1),
 (101,'5001','Asset Purchase Order','APO',1,1),
 (102,'3001','Rental Quotation','QR',1,1),
 (103,'3031','Rental Sales Order','RSO',1,1),
 (104,'3041','Rental Delivery Order','RDO',1,1),
 (105,'3051','Sell Asset','RSA',1,1),
 (106,'3011','Asset','ENG',1,1),
 (107,'7001','Transfer Kas','TFK',1,1),
 (108,'8500','Receive Asset','RA',1,1),
 (109,'5501','Maintenance','MT',1,1),
 (110,'8600','Rental Invoice','INV',1,1),
 (111,'6001','Rental Mutasi Masuk','RMM',1,1),
 (112,'6002','Rental Mutasi Keluar','RMK',1,1),
 (113,'5002','Asset Sementara','ASM',1,1),
 (114,'9600','Rental Asset Invoice','RAI',1,1),
 (115,'5003','Rental Bayar Sewa','RBS',1,1);
/*!40000 ALTER TABLE `tbljenistransaksi` ENABLE KEYS */;


--
-- Definition of table `tbljoblist`
--

DROP TABLE IF EXISTS `tbljoblist`;
CREATE TABLE `tbljoblist` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(50) NOT NULL DEFAULT '',
  `notransmaintenance` varchar(50) NOT NULL DEFAULT '',
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `status` varchar(50) NOT NULL DEFAULT '',
  `userin` varchar(50) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupt` varchar(50) NOT NULL DEFAULT '',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbljoblist`
--

/*!40000 ALTER TABLE `tbljoblist` DISABLE KEYS */;
INSERT INTO `tbljoblist` (`id`,`notrans`,`notransmaintenance`,`tanggal`,`status`,`userin`,`jamin`,`userupt`,`jamupt`) VALUES 
 (1,'RJL00001','RMMT00001','2024-04-16 08:58:36','19','JACKY','2024-04-16 08:58:36','JACKY','2024-04-16 08:58:36');
/*!40000 ALTER TABLE `tbljoblist` ENABLE KEYS */;


--
-- Definition of table `tbljoblistd`
--

DROP TABLE IF EXISTS `tbljoblistd`;
CREATE TABLE `tbljoblistd` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(50) NOT NULL DEFAULT '',
  `notransmt` varchar(50) NOT NULL DEFAULT '',
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `kodepic` varchar(50) NOT NULL DEFAULT '',
  `keterangan` text NOT NULL,
  `userin` varchar(50) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbljoblistd`
--

/*!40000 ALTER TABLE `tbljoblistd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbljoblistd` ENABLE KEYS */;


--
-- Definition of table `tbljurnal`
--

DROP TABLE IF EXISTS `tbljurnal`;
CREATE TABLE `tbljurnal` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `idtrans` int(25) NOT NULL DEFAULT '0',
  `nobukti` varchar(25) NOT NULL DEFAULT '',
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `catatan` text,
  `jenistrans` varchar(50) NOT NULL DEFAULT '',
  `status` int(10) NOT NULL DEFAULT '0',
  `userin` varchar(50) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupt` varchar(50) NOT NULL DEFAULT '',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `cancelreason` text,
  `idvendor` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbljurnal`
--

/*!40000 ALTER TABLE `tbljurnal` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbljurnal` ENABLE KEYS */;


--
-- Definition of table `tbljurnald`
--

DROP TABLE IF EXISTS `tbljurnald`;
CREATE TABLE `tbljurnald` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `idjurnal` int(15) NOT NULL DEFAULT '0',
  `idmu` int(15) NOT NULL DEFAULT '0',
  `idcoa` int(15) NOT NULL DEFAULT '0',
  `dbcr` varchar(25) NOT NULL DEFAULT '',
  `kurs` double DEFAULT '0',
  `catatan` text,
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `nilai` double DEFAULT NULL,
  `nilai2` double DEFAULT NULL,
  `nilai3` double DEFAULT NULL,
  `jenistrans` varchar(50) NOT NULL DEFAULT '',
  `remarkcancel` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbljurnald`
--

/*!40000 ALTER TABLE `tbljurnald` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbljurnald` ENABLE KEYS */;


--
-- Definition of table `tblkaryawan`
--

DROP TABLE IF EXISTS `tblkaryawan`;
CREATE TABLE `tblkaryawan` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `kodekaryawan` varchar(30) NOT NULL DEFAULT '',
  `nama` varchar(100) NOT NULL DEFAULT '',
  `alamat` text,
  `kodejabatan` varchar(75) NOT NULL DEFAULT '',
  `komisi` double DEFAULT '0',
  `telepon` varchar(25) NOT NULL DEFAULT '',
  `nonaktif` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `catatan` text,
  `userin` varchar(50) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupt` varchar(50) NOT NULL DEFAULT '',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `status` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblkaryawan`
--

/*!40000 ALTER TABLE `tblkaryawan` DISABLE KEYS */;
INSERT INTO `tblkaryawan` (`id`,`kodekaryawan`,`nama`,`alamat`,`kodejabatan`,`komisi`,`telepon`,`nonaktif`,`catatan`,`userin`,`jamin`,`userupt`,`jamupt`,`status`) VALUES 
 (1,'KYW0001','OPerator A','Alamat Kary','SL, SP, HL, CL, AD',0,'','1111-11-11 00:00:00','catnatnan','JACKY','2024-02-28 18:21:35','JACKY','2024-02-28 18:21:36',5),
 (2,'KYW0002','karyawan','','',0,'','1111-11-11 00:00:00','','JACKY','2024-03-12 10:00:02','JACKY','2024-03-12 10:00:02',5);
/*!40000 ALTER TABLE `tblkaryawan` ENABLE KEYS */;


--
-- Definition of table `tblkas`
--

DROP TABLE IF EXISTS `tblkas`;
CREATE TABLE `tblkas` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(50) NOT NULL DEFAULT '',
  `nobukti` varchar(50) NOT NULL DEFAULT '',
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `kodeclient` varchar(30) NOT NULL DEFAULT '',
  `catatan` text,
  `remarkcancel` text,
  `jenistrans` varchar(50) NOT NULL DEFAULT '',
  `tipeclient` varchar(5) NOT NULL DEFAULT '',
  `idpr` varchar(15) NOT NULL DEFAULT '',
  `amount` double DEFAULT '0',
  `status` varchar(5) NOT NULL DEFAULT '',
  `userin` varchar(50) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupt` varchar(50) NOT NULL DEFAULT '',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblkas`
--

/*!40000 ALTER TABLE `tblkas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblkas` ENABLE KEYS */;


--
-- Definition of table `tblkasd`
--

DROP TABLE IF EXISTS `tblkasd`;
CREATE TABLE `tblkasd` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(50) NOT NULL DEFAULT '',
  `idpr` varchar(50) NOT NULL DEFAULT '',
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `ccy` varchar(50) NOT NULL DEFAULT '',
  `kurs` double DEFAULT '0',
  `catatan` text,
  `amount` double DEFAULT '0',
  `amounteqv` double DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblkasd`
--

/*!40000 ALTER TABLE `tblkasd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblkasd` ENABLE KEYS */;


--
-- Definition of table `tblkaskeluard`
--

DROP TABLE IF EXISTS `tblkaskeluard`;
CREATE TABLE `tblkaskeluard` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `idkk` int(15) NOT NULL DEFAULT '0',
  `idmu` int(15) NOT NULL DEFAULT '0',
  `idcoa` int(15) NOT NULL DEFAULT '0',
  `dbcr` varchar(25) NOT NULL DEFAULT '',
  `kurs` double DEFAULT '0',
  `catatan` varchar(150) NOT NULL DEFAULT '',
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `nilai` double DEFAULT NULL,
  `nilai2` double DEFAULT NULL,
  `nilai3` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblkaskeluard`
--

/*!40000 ALTER TABLE `tblkaskeluard` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblkaskeluard` ENABLE KEYS */;


--
-- Definition of table `tblkaskeluarh`
--

DROP TABLE IF EXISTS `tblkaskeluarh`;
CREATE TABLE `tblkaskeluarh` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `idpemb` int(25) NOT NULL DEFAULT '0',
  `nobukti` varchar(25) NOT NULL DEFAULT '',
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `idvendor` int(10) NOT NULL DEFAULT '0',
  `catatan` varchar(150) NOT NULL DEFAULT '',
  `statusid` int(10) NOT NULL DEFAULT '0',
  `ispenj` int(5) NOT NULL DEFAULT '0',
  `isretur` tinyint(1) NOT NULL DEFAULT '0',
  `jenistrans` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblkaskeluarh`
--

/*!40000 ALTER TABLE `tblkaskeluarh` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblkaskeluarh` ENABLE KEYS */;


--
-- Definition of table `tblkonflink`
--

DROP TABLE IF EXISTS `tblkonflink`;
CREATE TABLE `tblkonflink` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL DEFAULT '',
  `kodecoa` varchar(100) NOT NULL DEFAULT '',
  `userin` varchar(100) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupt` varchar(100) NOT NULL DEFAULT '',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblkonflink`
--

/*!40000 ALTER TABLE `tblkonflink` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblkonflink` ENABLE KEYS */;


--
-- Definition of table `tblkurs`
--

DROP TABLE IF EXISTS `tblkurs`;
CREATE TABLE `tblkurs` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `namamu` varchar(30) NOT NULL DEFAULT '',
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `pukul` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `kursbeli` double DEFAULT '0',
  `kursjual1` double DEFAULT '0',
  `kursjual2` double DEFAULT '0',
  `kursjual3` double DEFAULT NULL,
  `kursjual4` double DEFAULT '0',
  `kursjual5` double DEFAULT '0',
  `kurspajak` double DEFAULT '0',
  `kursbuku` double DEFAULT '0',
  `userin` varchar(30) NOT NULL DEFAULT '',
  `entrydate` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupt` varchar(30) NOT NULL DEFAULT '',
  `lastentrydate` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblkurs`
--

/*!40000 ALTER TABLE `tblkurs` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblkurs` ENABLE KEYS */;


--
-- Definition of table `tbllibur`
--

DROP TABLE IF EXISTS `tbllibur`;
CREATE TABLE `tbllibur` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `liburan` varchar(50) NOT NULL DEFAULT '',
  `userin` varchar(50) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupt` varchar(50) NOT NULL DEFAULT '',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `status` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbllibur`
--

/*!40000 ALTER TABLE `tbllibur` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbllibur` ENABLE KEYS */;


--
-- Definition of table `tbllinkpr`
--

DROP TABLE IF EXISTS `tbllinkpr`;
CREATE TABLE `tbllinkpr` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `kode` varchar(15) NOT NULL DEFAULT '',
  `linkper` varchar(255) NOT NULL DEFAULT '',
  `jenistrans` varchar(50) NOT NULL DEFAULT '',
  `iskredit` tinyint(1) NOT NULL DEFAULT '0',
  `subgroup` varchar(50) NOT NULL DEFAULT '',
  `idpr` int(25) NOT NULL DEFAULT '0',
  `ccy` varchar(125) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `tbllinkpr` (`kode`,`linkper`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbllinkpr`
--

/*!40000 ALTER TABLE `tbllinkpr` DISABLE KEYS */;
INSERT INTO `tbllinkpr` (`id`,`kode`,`linkper`,`jenistrans`,`iskredit`,`subgroup`,`idpr`,`ccy`) VALUES 
 (1,'SP1','Persediaan','',0,'',20,'IDR'),
 (2,'SP2','Out (Rusak/Hilang) Aktiva Tetap','',0,'',0,'IDR'),
 (3,'SP3','Laba (Rugi) Ditahan ','',0,'',0,'IDR'),
 (4,'SP4','Laba (Rugi) Periode Sebelumnya','',0,'',0,'IDR'),
 (5,'SP5','Laba (Rugi) Periode Berjalan','',0,'',0,'IDR'),
 (6,'SP6','Ikhtisar Laba (Rugi)','',0,'',0,'IDR'),
 (7,'SP7','Penarikan Selisih Kurs','',0,'',0,'IDR'),
 (8,'SP8','Perantara Jurnal Transaksi','',0,'',154,'IDR'),
 (9,'SP9','Perkiraan Sementara (Unassign)','',0,'',83,'IDR'),
 (10,'SP10','Pembelian Cash Tanpa Item','1005',0,'Cash',0,'IDR'),
 (11,'SP11','Pembelian Cash Tanpa Item [Discount]','1005',1,'Cash',0,'IDR'),
 (12,'SP12','Pembelian Cash Tanpa Item [Tax-PPN]','1005',0,'Cash',0,'IDR'),
 (13,'SP13','Pembelian Cash','1005',0,'Cash',0,'IDR'),
 (14,'SP14','Pembelian Cash [Discount]','1005',1,'Cash',0,'IDR'),
 (15,'SP15','Pembelian Cash [Tax-PPN]','1005',0,'Cash',0,'IDR'),
 (16,'SP16','Pembelian Cash Non-Stock Item','1005',0,'Cash',0,'IDR'),
 (17,'SP17','Pembelian Cash Non-Stock Item [Discount]','1005',1,'Cash',0,'IDR'),
 (18,'SP18','Pembelian Cash Non-Stock Item [Tax-PPN]','1005',0,'Cash',0,'IDR'),
 (19,'SP19','Pembelian Credit Tanpa Item','1005',0,'Credit',0,'IDR'),
 (20,'SP20','Pembelian Credit Tanpa Item [Discount]','1005',1,'Credit',0,'IDR'),
 (21,'SP21','Pembelian Credit Tanpa item [Tax-PPN]','1005',0,'Credit',0,'IDR'),
 (22,'SP22','Hutang Pembelian Credit Tanpa Item','1005',1,'Credit',0,'IDR'),
 (23,'SP23','Pembelian Credit','1005',0,'Credit',0,'IDR'),
 (24,'SP24','Pembelian Credit [Discount]','1005',1,'Credit',0,'IDR'),
 (25,'SP25','Pembelian Credit [Tax-PPN]','1005',0,'Credit',0,'IDR'),
 (26,'SP26','Hutang Pembelian Credit','1005',1,'Credit',0,'IDR'),
 (27,'SP27','Hutang Pembelian Credit *2','1005',1,'Credit',0,'IDR'),
 (28,'SP28','Pembelian Credit Non-Stock Item','1005',0,'Credit',0,'IDR'),
 (29,'SP29','Pembelian Credit Non-Stock Item [Discount]','1005',1,'Credit',0,'IDR'),
 (30,'SP30','Pembelian Credit Non-Stock Item [Tax-PPN]','1005',0,'Credit',0,'IDR'),
 (31,'SP31','Hutang Pembelian Credit Nonstock Item','1005',1,'Credit',0,'IDR'),
 (32,'SP32','Hutang Pembelian Credit *2 Non-Stock Item','1005',1,'Credit',0,'IDR'),
 (33,'SP33','Retur Pembelian Cash','1005',1,'Retur Cash',0,'IDR'),
 (34,'SP34','Retur Pembelian Cash [Discount]','1005',0,'Retur Cash',0,'IDR'),
 (35,'SP35','Retur Pembelian Cash [Tax-PPN]','1005',1,'Retur Cash',0,'IDR'),
 (36,'SP36','Retur Pembelian Cash Non-Stock Item','1005',1,'Retur Cash',0,'IDR'),
 (37,'SP37','Retur Pembelian Cash Non-Stock Item [Discount]','1005',0,'Retur Cash',0,'IDR'),
 (38,'SP38','Retur Pembelian Cash Non-Stock Item [Tax-PPN]','1005',1,'Retur Cash',0,'IDR'),
 (39,'SP39','Retur Pembelian Credit','1005',1,'Retur Credit',0,'IDR'),
 (40,'SP40','Retur Pembelian Credit [Discount]','1005',0,'Retur Credit',0,'IDR'),
 (41,'SP41','Retur Pembelian Credit [Tax-PPN]','1005',1,'Retur Credit',0,'IDR'),
 (42,'SP42','Hutang Retur Pembelian Credit','1005',0,'Retur Credit',0,'IDR'),
 (43,'SP43','Retur Pembelian Credit Non-Stock Item','1005',1,'Retur Credit',0,'IDR'),
 (44,'SP44','Retur Pembelian Credit Non-Stock Item [Discount]','1005',0,'Retur Credit',0,'IDR'),
 (45,'SP45','Retur Pembelian Credit Non-Stock Item [Tax-PPN]','1005',1,'Retur Credit',0,'IDR'),
 (46,'SP46','Hutang Retur Pembelian Credit Non-Stock Item','1005',0,'Retur Credit',0,'IDR'),
 (47,'SP47','Debit Note Hutang Tanpa Item','1005',1,'Debit Note',0,'IDR'),
 (48,'SP48','Hutang Debit Note Hutang Tanpa Item','1005',0,'Debit Note',0,'IDR'),
 (49,'SP49','Debit Note Hutang Pembelian','1005',1,'Debit Note',0,'IDR'),
 (50,'SP50','Hutang Debit Note Hutang Pembelian','1005',0,'Debit Note',0,'IDR'),
 (51,'SP51','Debit Note Hutang Pembelian Non-Stock Item','1005',1,'Debit Note',0,'IDR'),
 (52,'SP52','Hutang Debit Note Hutang Pembelian Non-Stock Item','1005',0,'Debit Note',0,'IDR'),
 (53,'SP53','Credit Note Hutang Tanpa Item','1005',0,'Credit Note',0,'IDR'),
 (54,'SP54','Hutang Credit Note Hutang Tanpa Item','1005',1,'Credit Note',0,'IDR'),
 (55,'SP55','Credit Note Hutang Pembelian','1005',0,'Credit Note',0,'IDR'),
 (56,'SP56','Hutang Credit Note Hutang Pembelian','1005',1,'Credit Note',0,'IDR'),
 (57,'SP57','Credit Note Hutang Pembelian Non-Stock Item','1005',0,'Credit Note',0,'IDR'),
 (58,'SP58','Hutang Credit Note Hutang Pembelian Non-Stock Item','1005',1,'Credit Note',0,'IDR'),
 (59,'SP59','Deposit Pembelian','1005',0,'Lainnya',0,'IDR'),
 (60,'SP60','Denda Pembayaran Hutang','1005',0,'Lainnya',0,'IDR'),
 (61,'SP61','Discount Pembayaran Hutang','1005',1,'Lainnya',0,'IDR'),
 (62,'SP62','Penjualan Eceran Tanpa Item','1050',1,'Eceran',0,'IDR'),
 (63,'SP63','Penjualan Eceran Tanpa Item [Discount]','1050',0,'Eceran',0,'IDR'),
 (64,'SP64','Penjualan Eceran Tanpa Item [Tax-PPN]','1050',1,'Eceran',0,'IDR'),
 (65,'SP65','Penjualan Eceran','1050',1,'Eceran',0,'IDR'),
 (66,'SP66','Penjualan Eceran [Discount]','1050',0,'Eceran',0,'IDR'),
 (67,'SP67','Penjualan Eceran [Tax-PPN]','1050',1,'Eceran',0,'IDR'),
 (68,'SP68','Penjualan Eceran Non-Stock Item','1050',1,'Eceran',0,'IDR'),
 (69,'SP69','Penjualan Eceran Non-Stock Item  [Discount]','1050',0,'Eceran',0,'IDR'),
 (70,'SP70','Penjualan Eceran Non-Stock Item [Tax-PPN]','1050',1,'Eceran',0,'IDR'),
 (71,'SP71','Penjualan Cash Tanpa Item','1050',1,'Cash',0,'IDR'),
 (72,'SP72','Penjualan Cash Tanpa Item [Discount]','1050',0,'Cash',0,'IDR'),
 (73,'SP73','Penjualan Cash Tanpa item [Tax-PPN]','1050',1,'Cash',0,'IDR'),
 (74,'SP74','Penjualan Cash','1050',1,'Cash',0,'IDR'),
 (75,'SP75','Penjualan Cash [Discount]','1050',0,'Cash',0,'IDR'),
 (76,'SP76','Penjualan Cash [Tax-PPN]','1050',1,'Cash',0,'IDR'),
 (77,'SP77','Penjualan Cash Non-Stock Item','1050',1,'Cash',0,'IDR'),
 (78,'SP78','Penjualan Cash Non-Stock Item [Discount]','1050',0,'Cash',0,'IDR'),
 (79,'SP79','Penjualan Cash Non-Stock Item [Tax-PPN]','1050',1,'Cash',0,'IDR'),
 (80,'SP80','Penjualan Credit Tanpa Item','1050',1,'Credit',0,'IDR'),
 (81,'SP81','Penjualan Credit Tanpa Item [Discount]','1050',0,'Credit',0,'IDR'),
 (82,'SP82','Penjualan Credit Tanpa Item [Tax-PPN]','1050',1,'Credit',0,'IDR'),
 (83,'SP83','Piutang Penjualan Credit Tanpa Item','1050',0,'Credit',0,'IDR'),
 (84,'SP84','Penjualan Credit','1050',1,'Credit',0,'IDR'),
 (85,'SP85','Penjualan Credit [Discount]','1050',0,'Credit',0,'IDR'),
 (86,'SP86','Penjualan Credit [Tax-PPN]','1050',1,'Credit',0,'IDR'),
 (87,'SP87','Piutang Penjualan Credit','1050',0,'Credit',0,'IDR'),
 (88,'SP88','Penjualan Credit Non-Stock Item','1050',1,'Credit',0,'IDR'),
 (89,'SP89','Penjualan Credit Non-Stock Item [Discount]','1050',0,'Credit',0,'IDR'),
 (90,'SP90','Penjualan Credit Non-Stock Item [Tax-PPN]','1050',1,'Credit',0,'IDR'),
 (91,'SP91','Piutang Penjualan Credit Non-Stock Item','1050',0,'Credit',0,'IDR'),
 (92,'SP92','Retur Penjualan Cash','1050',0,'Retur Cash',0,'IDR'),
 (93,'SP93','Retur Penjualan Cash [Discount]','1050',1,'Retur Cash',0,'IDR'),
 (94,'SP94','Retur Penjualan Cash [Tax-PPN]','1050',0,'Retur Cash',0,'IDR'),
 (95,'SP95','Retur Penjualan Cash [Item Rusak - HPP]','1050',0,'Retur Cash',0,'IDR'),
 (96,'SP96','Retur Penjualan Cash [ltem Rusak - Cost]','1050',0,'Retur Cash',0,'IDR'),
 (97,'SP97','Retur Penjualan Cash Non-Stock Item','1050',0,'Retur Cash',0,'IDR'),
 (98,'SP98','Retur Penjualan Cash Non-Stock Item [Discount]','1050',1,'Retur Cash',0,'IDR'),
 (99,'SP99','Retur Penjualan Cash Non-Stock Item [Tax-PPN]','1050',0,'Retur Cash',0,'IDR'),
 (100,'SP100','Retur Penjualan Credit','1050',0,'Retur Credit',0,'IDR'),
 (101,'SP101','Retur Penjualan Credit [Discount]','1050',1,'Retur Credit',0,'IDR'),
 (102,'SP102','Retur Penjualan Credl [Tax-PPN]','1050',0,'Retur Credit',0,'IDR'),
 (103,'SP103','Retur Penjualan Credit [Item Rusak - HPP]','1050',0,'Retur Credit',0,'IDR'),
 (104,'SP104','Retur Penjualan Credit [Item Rusak - Cost]','1050',0,'Retur Credit',0,'IDR'),
 (105,'SP105','Piutang Retur Perjualan Credit','1050',1,'Retur Credit',0,'IDR'),
 (106,'SP106','Retur Penjualan Credit Non-Stock Item','1050',0,'Retur Credit',0,'IDR'),
 (107,'SP107','Retur Penjualan Credit Non-Stock Item [Discount]','1050',1,'Retur Credit',0,'IDR'),
 (108,'SP108','Retur Penjualan Credit Non-Stock Item [Tax-PPN]','1050',0,'Retur Credit',0,'IDR'),
 (109,'SP109','Piutang Retur Perjualan Credit Non-Stock Item','1050',1,'Retur Credit',0,'IDR'),
 (110,'SP110','Debit Note Piutang Tanpa Item','1050',1,'Debit Note',0,'IDR'),
 (111,'SP111','Piutang Debit Note Piutang Tanpa Item','1050',0,'Debit Note',0,'IDR'),
 (112,'SP112','Debit Note Piutang Penjualan','1050',1,'Debit Note',0,'IDR'),
 (113,'SP113','Piutang Debit Note Piutang Penjualan','1050',0,'Debit Note',0,'IDR'),
 (114,'SP114','CJebit Note Piutang Penjualan Non-Stock Item','1050',1,'Debit Note',0,'IDR'),
 (115,'SP115','Piutang Debit Note Piutang Penjualan Non-Stock Item','1050',0,'Debit Note',0,'IDR'),
 (116,'SP116','Credit Note Piutang Tanpa Item','1050',0,'Credit Note',0,'IDR'),
 (117,'SP117','Piutang Credit Note Piutang Tanpa Item','1050',1,'Credit Note',0,'IDR'),
 (118,'SP118','Credit Note Piutang Penjualan','1050',0,'Credit Note',0,'IDR'),
 (119,'SP119','Piutang Credit Note Piutang Penjualan','1050',1,'Credit Note',0,'IDR'),
 (120,'SP120','Credit Note Piutang Penjualan Non-Stock Item','1050',0,'Credit Note',0,'IDR'),
 (121,'SP121','Piutang Credit Note Piutang Penjualan Non-Stock Item','1050',1,'Credit Note',0,'IDR'),
 (122,'SP122','Deposit Penjualan','1050',1,'Lainnya',0,'IDR'),
 (123,'SP123','Piutang Invoice Statement Penjualan','1050',0,'Lainnya',0,'IDR'),
 (124,'SP124','Invoice Statement Penjualan [Discount-Global]','1050',0,'Lainnya',0,'IDR'),
 (125,'SP125','Denda Penerimaan Piutang','1050',1,'Lainnya',0,'IDR'),
 (126,'SP126','Discount Penerimaan Piutang','1050',0,'Lainnya',0,'IDR'),
 (127,'SP127','Hold/Pending Penerimaan Piutang','1050',0,'Lainnya',0,'IDR'),
 (128,'SP128','Brg Masuk Lainnya (HPP #Acc)','Lainnya',0,'',0,'IDR'),
 (129,'SP129','Brg Masuk Lainnya (Cost #Acc)','Lainnya',0,'',0,'IDR'),
 (130,'SP130','Brg Keluar Lainnya (HPP #Acc)','Lainnya',0,'',0,'IDR'),
 (131,'SP131','Brg Keluar Lainnya (Cost #Acc)','Lainnya',0,'',0,'IDR'),
 (132,'SP132','Produksi (Tambah HPP)','Lainnya',0,'',0,'IDR'),
 (133,'SP133','Produksi (Kurang HPP #Acc)','Lainnya',0,'',0,'IDR'),
 (134,'SP134','Brg Transfer/Un (+ HPP #Acc)','Lainnya',0,'',0,'IDR'),
 (135,'SP135','Brg Transfer/Un (- HPP #Acc)','Lainnya',0,'',0,'IDR'),
 (136,'SP136','HPP','',0,'',0,'IDR'),
 (137,'SP137','Rental Delivery Order - Kredit','3041',1,'Delivery Order',1,'IDR'),
 (138,'SP138','Rental Delivery Order - Debit','3041',1,'Delivery Order',1,'IDR'),
 (139,'SP139','Rental Delivery Order - Discount Per Item','3041',1,'Delivery Order',1,'IDR'),
 (140,'SP140','Rental Delivery Order - Discount','3041',1,'Delivery Order',1,'IDR'),
 (141,'SP141','Receive Asset','8500',1,'Receive Asset',1,'IDR'),
 (142,'SP142','Hutang Receive Asset','8500',1,'Receive Asset',1,'IDR'),
 (143,'SP143','Receive Asset - Discount','8500',1,'Receive Asset',1,'IDR'),
 (144,'SP144','Receive Asset - Biaya Tambahan','8500',1,'Receive Asset',1,'IDR'),
 (145,'SP145','Rental Delivery Order - Biaya Tambahan','3041',1,'Delivery Order',1,'IDR'),
 (146,'SP146','Receive Asset - Acumulated Depreciation','8500',1,'Receive Asset',1,'IDR'),
 (147,'SP147','Receive Asset - Depreciation Expense','8500',1,'Receive Asset',1,'IDR'),
 (148,'SP148','Sparepart Maintenance Asset','5501',1,'Lainnya',166,'IDR'),
 (149,'SP149','Sparepart Maintenance Asset','5501',0,'Lainnya',17,'IDR'),
 (150,'SP150','Receive Asset - Asset Account','8500',1,'Receive Asset',1,'IDR'),
 (162,'SP162','Jasa Maintenance Asset','5501',0,'Lainnya',1,'IDR');
/*!40000 ALTER TABLE `tbllinkpr` ENABLE KEYS */;


--
-- Definition of table `tbllisthak`
--

DROP TABLE IF EXISTS `tbllisthak`;
CREATE TABLE `tbllisthak` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `kodehak` varchar(255) NOT NULL DEFAULT '',
  `keterangan` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbllisthak`
--

/*!40000 ALTER TABLE `tbllisthak` DISABLE KEYS */;
INSERT INTO `tbllisthak` (`id`,`kodehak`,`keterangan`) VALUES 
 (1,'SetHak','Set Hak user'),
 (2,'UserOffice','User Office'),
 (3,'KodeHakReceive','Tampil Biaya Receive');
/*!40000 ALTER TABLE `tbllisthak` ENABLE KEYS */;


--
-- Definition of table `tbllistpayment`
--

DROP TABLE IF EXISTS `tbllistpayment`;
CREATE TABLE `tbllistpayment` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(255) NOT NULL DEFAULT '',
  `payment` varchar(100) NOT NULL DEFAULT '',
  `debit` varchar(100) NOT NULL DEFAULT '',
  `kredit` varchar(100) NOT NULL DEFAULT '',
  `outstanding` varchar(100) NOT NULL DEFAULT '',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `isarap` tinyint(1) NOT NULL DEFAULT '0',
  `kodeccy` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbllistpayment`
--

/*!40000 ALTER TABLE `tbllistpayment` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbllistpayment` ENABLE KEYS */;


--
-- Definition of table `tbllogprint`
--

DROP TABLE IF EXISTS `tbllogprint`;
CREATE TABLE `tbllogprint` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `nourut` int(11) NOT NULL DEFAULT '0',
  `notrans` varchar(255) NOT NULL DEFAULT '',
  `typetrans` varchar(255) NOT NULL DEFAULT '',
  `userin` varchar(255) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbllogprint`
--

/*!40000 ALTER TABLE `tbllogprint` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbllogprint` ENABLE KEYS */;


--
-- Definition of table `tblmaintenance`
--

DROP TABLE IF EXISTS `tblmaintenance`;
CREATE TABLE `tblmaintenance` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(25) NOT NULL DEFAULT '',
  `kodemesin` varchar(50) NOT NULL DEFAULT '',
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `keterangan` text,
  `brpkalisekali` double DEFAULT '0',
  `userin` varchar(50) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupt` varchar(50) NOT NULL DEFAULT '',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `status` varchar(5) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmaintenance`
--

/*!40000 ALTER TABLE `tblmaintenance` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblmaintenance` ENABLE KEYS */;


--
-- Definition of table `tblmaintenancejasa`
--

DROP TABLE IF EXISTS `tblmaintenancejasa`;
CREATE TABLE `tblmaintenancejasa` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(50) NOT NULL DEFAULT '',
  `keterangan` text,
  `qty` double DEFAULT '0',
  `unit` double DEFAULT '0',
  `harga` double DEFAULT '0',
  `total` double DEFAULT '0',
  `iscredit` tinyint(1) NOT NULL DEFAULT '0',
  `idpr` int(15) NOT NULL DEFAULT '0',
  `payment` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmaintenancejasa`
--

/*!40000 ALTER TABLE `tblmaintenancejasa` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblmaintenancejasa` ENABLE KEYS */;


--
-- Definition of table `tblmaintenancesparepart`
--

DROP TABLE IF EXISTS `tblmaintenancesparepart`;
CREATE TABLE `tblmaintenancesparepart` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(50) NOT NULL DEFAULT '',
  `kodebarang` varchar(50) NOT NULL DEFAULT '',
  `qty` double DEFAULT '0',
  `unit` double DEFAULT '0',
  `harga` double DEFAULT '0',
  `total` double DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmaintenancesparepart`
--

/*!40000 ALTER TABLE `tblmaintenancesparepart` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblmaintenancesparepart` ENABLE KEYS */;


--
-- Definition of table `tblmu`
--

DROP TABLE IF EXISTS `tblmu`;
CREATE TABLE `tblmu` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `kode` varchar(30) NOT NULL DEFAULT '',
  `nama` varchar(50) NOT NULL DEFAULT '',
  `simbol` varchar(10) NOT NULL DEFAULT '',
  `kurs` double DEFAULT '0',
  `userin` varchar(50) NOT NULL DEFAULT '',
  `entrydate` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupt` varchar(50) NOT NULL DEFAULT '',
  `lasteditdate` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `status` tinyint(4) DEFAULT NULL,
  `trblngsen` varchar(50) NOT NULL DEFAULT '',
  `trblngmu` varchar(50) NOT NULL DEFAULT '',
  `ismudasar` tinyint(1) NOT NULL DEFAULT '0',
  `autokm` varchar(100) NOT NULL DEFAULT '',
  `autokmper` varchar(100) NOT NULL DEFAULT '',
  `autokk` varchar(100) NOT NULL DEFAULT '',
  `autokkper` varchar(100) NOT NULL DEFAULT '',
  `desimal` int(30) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmu`
--

/*!40000 ALTER TABLE `tblmu` DISABLE KEYS */;
INSERT INTO `tblmu` (`id`,`kode`,`nama`,`simbol`,`kurs`,`userin`,`entrydate`,`jamin`,`userupt`,`lasteditdate`,`jamupt`,`status`,`trblngsen`,`trblngmu`,`ismudasar`,`autokm`,`autokmper`,`autokk`,`autokkper`,`desimal`) VALUES 
 (1,'IDR','Indonesia Rupiah','',1,'JACKY','2024-03-12 00:00:00','2024-03-12 12:51:37','JACKY','2024-03-12 00:00:00','1111-11-11 00:00:00',5,'0','0',1,'','','','',0);
/*!40000 ALTER TABLE `tblmu` ENABLE KEYS */;


--
-- Definition of table `tblmultilinkper`
--

DROP TABLE IF EXISTS `tblmultilinkper`;
CREATE TABLE `tblmultilinkper` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `ccy` varchar(100) NOT NULL DEFAULT '',
  `kodepr` varchar(100) NOT NULL DEFAULT '',
  `idpr` int(25) NOT NULL DEFAULT '0',
  `userin` varchar(100) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupt` varchar(100) NOT NULL DEFAULT '',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmultilinkper`
--

/*!40000 ALTER TABLE `tblmultilinkper` DISABLE KEYS */;
INSERT INTO `tblmultilinkper` (`id`,`ccy`,`kodepr`,`idpr`,`userin`,`jamin`,`userupt`,`jamupt`) VALUES 
 (1,'IDR','SP1',0,'JACKY','2024-02-17 17:19:27','JACKY','2024-02-17 17:19:27'),
 (2,'IDR','SP10',166,'JACKY','2024-02-17 17:19:27','JACKY','2024-02-17 17:19:27'),
 (3,'IDR','SP100',0,'JACKY','2024-02-17 17:19:27','JACKY','2024-02-17 17:19:27'),
 (4,'IDR','SP101',0,'JACKY','2024-02-17 17:19:27','JACKY','2024-02-17 17:19:27'),
 (5,'IDR','SP102',0,'JACKY','2024-02-17 17:19:27','JACKY','2024-02-17 17:19:27'),
 (6,'IDR','SP103',0,'JACKY','2024-02-17 17:19:27','JACKY','2024-02-17 17:19:27'),
 (7,'IDR','SP104',0,'JACKY','2024-02-17 17:19:27','JACKY','2024-02-17 17:19:27'),
 (8,'IDR','SP105',0,'JACKY','2024-02-17 17:19:27','JACKY','2024-02-17 17:19:27'),
 (9,'IDR','SP106',0,'JACKY','2024-02-17 17:19:27','JACKY','2024-02-17 17:19:27'),
 (10,'IDR','SP107',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (11,'IDR','SP108',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (12,'IDR','SP109',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (13,'IDR','SP11',22,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (14,'IDR','SP110',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (15,'IDR','SP111',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (16,'IDR','SP112',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (17,'IDR','SP113',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (18,'IDR','SP114',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (19,'IDR','SP115',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (20,'IDR','SP116',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (21,'IDR','SP117',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (22,'IDR','SP118',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (23,'IDR','SP119',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (24,'IDR','SP12',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (25,'IDR','SP120',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (26,'IDR','SP121',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (27,'IDR','SP122',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (28,'IDR','SP123',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (29,'IDR','SP124',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (30,'IDR','SP125',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (31,'IDR','SP126',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (32,'IDR','SP127',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (33,'IDR','SP128',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (34,'IDR','SP129',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (35,'IDR','SP13',166,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (36,'IDR','SP130',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (37,'IDR','SP131',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (38,'IDR','SP132',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (39,'IDR','SP133',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (40,'IDR','SP134',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (41,'IDR','SP135',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (42,'IDR','SP136',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (43,'IDR','SP137',173,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (44,'IDR','SP138',17,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (45,'IDR','SP139',174,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (46,'IDR','SP14',22,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (47,'IDR','SP140',174,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (48,'IDR','SP15',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (49,'IDR','SP16',166,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (50,'IDR','SP17',22,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (51,'IDR','SP18',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (52,'IDR','SP19',166,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (53,'IDR','SP2',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (54,'IDR','SP20',22,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (55,'IDR','SP21',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (56,'IDR','SP22',94,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (57,'IDR','SP23',166,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (58,'IDR','SP24',22,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (59,'IDR','SP25',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (60,'IDR','SP26',94,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (61,'IDR','SP27',94,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (62,'IDR','SP28',166,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (63,'IDR','SP29',22,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (64,'IDR','SP3',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (65,'IDR','SP30',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (66,'IDR','SP31',94,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (67,'IDR','SP32',94,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (68,'IDR','SP33',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (69,'IDR','SP34',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (70,'IDR','SP35',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (71,'IDR','SP36',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (72,'IDR','SP37',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (73,'IDR','SP38',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (74,'IDR','SP39',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (75,'IDR','SP4',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (76,'IDR','SP40',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (77,'IDR','SP41',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (78,'IDR','SP42',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (79,'IDR','SP43',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (80,'IDR','SP44',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (81,'IDR','SP45',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (82,'IDR','SP46',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (83,'IDR','SP47',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (84,'IDR','SP48',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (85,'IDR','SP49',1,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (86,'IDR','SP5',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (87,'IDR','SP50',94,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (88,'IDR','SP51',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (89,'IDR','SP52',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (90,'IDR','SP53',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (91,'IDR','SP54',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (92,'IDR','SP55',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (93,'IDR','SP56',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (94,'IDR','SP57',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (95,'IDR','SP58',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (96,'IDR','SP59',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (97,'IDR','SP6',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (98,'IDR','SP60',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (99,'IDR','SP61',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (100,'IDR','SP62',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (101,'IDR','SP63',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (102,'IDR','SP64',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (103,'IDR','SP65',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (104,'IDR','SP66',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (105,'IDR','SP67',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (106,'IDR','SP68',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (107,'IDR','SP69',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (108,'IDR','SP7',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (109,'IDR','SP70',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (110,'IDR','SP71',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (111,'IDR','SP72',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (112,'IDR','SP73',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (113,'IDR','SP74',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (114,'IDR','SP75',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (115,'IDR','SP76',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (116,'IDR','SP77',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (117,'IDR','SP78',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (118,'IDR','SP79',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (119,'IDR','SP8',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (120,'IDR','SP80',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (121,'IDR','SP81',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (122,'IDR','SP82',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (123,'IDR','SP83',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (124,'IDR','SP84',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (125,'IDR','SP85',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (126,'IDR','SP86',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (127,'IDR','SP87',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (128,'IDR','SP88',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (129,'IDR','SP89',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (130,'IDR','SP9',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (131,'IDR','SP90',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (132,'IDR','SP91',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (133,'IDR','SP92',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (134,'IDR','SP93',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (135,'IDR','SP94',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (136,'IDR','SP95',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (137,'IDR','SP96',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (138,'IDR','SP97',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (139,'IDR','SP98',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (140,'IDR','SP99',0,'JACKY','2024-02-17 17:19:28','JACKY','2024-02-17 17:19:28'),
 (141,'IDR','SP141',169,'JACKY','2024-02-28 17:23:14','JACKY','2024-02-28 17:23:14'),
 (142,'IDR','SP142',94,'JACKY','2024-02-28 17:23:14','JACKY','2024-02-28 17:23:14'),
 (143,'IDR','SP143',16,'JACKY','2024-02-28 17:23:14','JACKY','2024-02-28 17:23:14'),
 (144,'IDR','SP144',172,'JACKY','2024-02-28 17:23:14','JACKY','2024-02-28 17:23:14'),
 (145,'IDR','SP145',172,'JACKY','2024-02-28 17:23:14','JACKY','2024-02-28 17:23:14'),
 (146,'IDR','SP146',170,'JACKY','2024-02-28 17:23:14','JACKY','2024-02-28 17:23:14'),
 (147,'IDR','SP147',171,'JACKY','2024-02-28 17:23:14','JACKY','2024-02-28 17:23:14'),
 (148,'IDR','SP150',169,'JACKY','2024-02-29 13:00:45','JACKY','2024-02-29 13:00:45'),
 (149,'IDR','SP151',169,'JACKY','2024-03-12 12:51:37','JACKY','2024-03-12 12:51:37'),
 (150,'IDR','SP152',169,'JACKY','2024-03-12 12:51:37','JACKY','2024-03-12 12:51:37'),
 (151,'IDR','SP153',174,'JACKY','2024-03-12 12:51:37','JACKY','2024-03-12 12:51:37'),
 (152,'IDR','SP154',154,'JACKY','2024-03-12 12:51:37','JACKY','2024-03-12 12:51:37'),
 (153,'IDR','SP155',174,'JACKY','2024-03-12 12:51:37','JACKY','2024-03-12 12:51:37'),
 (154,'IDR','SP156',0,'JACKY','2024-04-20 13:19:43','JACKY','2024-04-20 13:19:43'),
 (155,'IDR','SP148',166,'JACKY','2024-04-22 10:15:52','JACKY','2024-04-22 10:15:52'),
 (156,'IDR','SP149',113,'JACKY','2024-04-22 10:15:52','JACKY','2024-04-22 10:15:52'),
 (157,'IDR','SP157',0,'JACKY','2024-04-22 14:03:33','JACKY','2024-04-22 14:03:33'),
 (158,'IDR','SP158',0,'JACKY','2024-04-22 14:03:33','JACKY','2024-04-22 14:03:33'),
 (159,'IDR','SP159',0,'JACKY','2024-04-22 14:03:33','JACKY','2024-04-22 14:03:33'),
 (160,'IDR','SP160',0,'JACKY','2024-04-22 14:03:33','JACKY','2024-04-22 14:03:33'),
 (161,'IDR','SP161',0,'JACKY','2024-04-22 14:03:33','JACKY','2024-04-22 14:03:33'),
 (162,'IDR','SP162',113,'JACKY','2024-04-23 08:51:59','JACKY','2024-04-23 08:51:59');
/*!40000 ALTER TABLE `tblmultilinkper` ENABLE KEYS */;


--
-- Definition of table `tblmutasikeluar`
--

DROP TABLE IF EXISTS `tblmutasikeluar`;
CREATE TABLE `tblmutasikeluar` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `idpr` varchar(30) NOT NULL DEFAULT '',
  `notrans` varchar(15) NOT NULL DEFAULT '',
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `kodegudang` varchar(100) NOT NULL DEFAULT '',
  `kodegroup` varchar(30) NOT NULL DEFAULT '',
  `total` double DEFAULT '0',
  `catatan` varchar(100) NOT NULL DEFAULT '',
  `userin` varchar(50) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupt` varchar(50) NOT NULL DEFAULT '',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `remarkcancel` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmutasikeluar`
--

/*!40000 ALTER TABLE `tblmutasikeluar` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblmutasikeluar` ENABLE KEYS */;


--
-- Definition of table `tblmutasikeluard`
--

DROP TABLE IF EXISTS `tblmutasikeluard`;
CREATE TABLE `tblmutasikeluard` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(15) NOT NULL DEFAULT '',
  `kodegudang` varchar(30) NOT NULL DEFAULT '',
  `kodebarang` varchar(30) NOT NULL DEFAULT '',
  `satuan` varchar(25) NOT NULL DEFAULT '',
  `qty` double DEFAULT '0',
  `qtysatuan` double DEFAULT '0',
  `qtyori` double DEFAULT '0',
  `catatan` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmutasikeluard`
--

/*!40000 ALTER TABLE `tblmutasikeluard` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblmutasikeluard` ENABLE KEYS */;


--
-- Definition of table `tblmutasimasuk`
--

DROP TABLE IF EXISTS `tblmutasimasuk`;
CREATE TABLE `tblmutasimasuk` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `idpr` varchar(30) NOT NULL DEFAULT '',
  `notrans` varchar(15) NOT NULL DEFAULT '',
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `kodegudang` varchar(100) NOT NULL DEFAULT '',
  `kodegroup` varchar(30) NOT NULL DEFAULT '',
  `total` double DEFAULT '0',
  `catatan` varchar(50) NOT NULL DEFAULT '',
  `userin` varchar(50) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupt` varchar(50) NOT NULL DEFAULT '',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `remarkcancel` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmutasimasuk`
--

/*!40000 ALTER TABLE `tblmutasimasuk` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblmutasimasuk` ENABLE KEYS */;


--
-- Definition of table `tblmutasimasukd`
--

DROP TABLE IF EXISTS `tblmutasimasukd`;
CREATE TABLE `tblmutasimasukd` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(50) NOT NULL DEFAULT '',
  `kodegudang` varchar(30) NOT NULL DEFAULT '',
  `kodebarang` varchar(30) NOT NULL DEFAULT '',
  `satuan` varchar(25) NOT NULL DEFAULT '',
  `qty` double DEFAULT '0',
  `qtysatuan` double DEFAULT '0',
  `qtyori` double DEFAULT '0',
  `hargapokok` double DEFAULT '0',
  `catatan` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmutasimasukd`
--

/*!40000 ALTER TABLE `tblmutasimasukd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblmutasimasukd` ENABLE KEYS */;


--
-- Definition of table `tblnegara`
--

DROP TABLE IF EXISTS `tblnegara`;
CREATE TABLE `tblnegara` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `negara` varchar(50) NOT NULL DEFAULT '',
  `kodenegara` varchar(50) NOT NULL DEFAULT '',
  `userin` varchar(30) DEFAULT NULL,
  `entrydate` datetime DEFAULT NULL,
  `jamin` datetime DEFAULT NULL,
  `userupt` varchar(30) DEFAULT NULL,
  `lasteditdate` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `jamupt` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblnegara`
--

/*!40000 ALTER TABLE `tblnegara` DISABLE KEYS */;
INSERT INTO `tblnegara` (`id`,`negara`,`kodenegara`,`userin`,`entrydate`,`jamin`,`userupt`,`lasteditdate`,`jamupt`,`status`) VALUES 
 (1,'Indonesia','NGR0001','JACKY',NULL,'2024-02-28 17:16:27','JACKY','1111-11-11 00:00:00','2024-02-28 17:16:27',5);
/*!40000 ALTER TABLE `tblnegara` ENABLE KEYS */;


--
-- Definition of table `tblowner`
--

DROP TABLE IF EXISTS `tblowner`;
CREATE TABLE `tblowner` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `owner` varchar(50) NOT NULL DEFAULT '',
  `gfpos` varchar(50) NOT NULL DEFAULT '',
  `kode` varchar(50) NOT NULL DEFAULT '',
  `userin` varchar(50) NOT NULL DEFAULT '',
  `jamin` time DEFAULT NULL,
  `entrydate` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupt` varchar(50) NOT NULL DEFAULT '',
  `jamupt` time DEFAULT NULL,
  `lastentrydate` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblowner`
--

/*!40000 ALTER TABLE `tblowner` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblowner` ENABLE KEYS */;


--
-- Definition of table `tblpajak`
--

DROP TABLE IF EXISTS `tblpajak`;
CREATE TABLE `tblpajak` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `kode` varchar(30) NOT NULL DEFAULT '',
  `nama` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpajak`
--

/*!40000 ALTER TABLE `tblpajak` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpajak` ENABLE KEYS */;


--
-- Definition of table `tblpelanggan`
--

DROP TABLE IF EXISTS `tblpelanggan`;
CREATE TABLE `tblpelanggan` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `alamat` text,
  `telp` varchar(100) DEFAULT NULL,
  `telp2` varchar(100) DEFAULT NULL,
  `telp3` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL DEFAULT '',
  `web` varchar(100) NOT NULL DEFAULT '',
  `hub` varchar(100) DEFAULT NULL,
  `hub2` varchar(100) DEFAULT NULL,
  `hub3` varchar(100) DEFAULT NULL,
  `term` varchar(50) NOT NULL DEFAULT '',
  `termeom` int(10) NOT NULL DEFAULT '0',
  `fax` varchar(50) NOT NULL DEFAULT '',
  `statusid` tinyint(4) NOT NULL DEFAULT '0',
  `chkpr` tinyint(1) NOT NULL DEFAULT '0',
  `chkgb` tinyint(1) NOT NULL DEFAULT '0',
  `chkpenj` tinyint(1) NOT NULL DEFAULT '0',
  `chkblck` tinyint(1) NOT NULL DEFAULT '0',
  `chklmt` tinyint(1) NOT NULL DEFAULT '0',
  `chkpsonal` tinyint(1) NOT NULL DEFAULT '0',
  `noktp` int(50) NOT NULL DEFAULT '0',
  `iddaerah` int(10) NOT NULL DEFAULT '0',
  `daerah2` varchar(100) NOT NULL DEFAULT '',
  `npwp` varchar(50) NOT NULL DEFAULT '',
  `pemnpwp` varchar(50) NOT NULL DEFAULT '',
  `almatnpwp` varchar(100) NOT NULL DEFAULT '',
  `kodepelanggan` varchar(30) NOT NULL DEFAULT '',
  `kodenegara` varchar(50) NOT NULL DEFAULT '',
  `glbdisc1` double DEFAULT '0',
  `glbdisc2` double DEFAULT '0',
  `ccydisc` varchar(30) NOT NULL DEFAULT '',
  `ccylimit` varchar(30) NOT NULL DEFAULT '',
  `limittemp` varchar(30) NOT NULL DEFAULT '',
  `jmlahnmorinvlimtempo` varchar(30) NOT NULL DEFAULT '',
  `jmlahnmorinvlim` varchar(30) NOT NULL DEFAULT '',
  `maxterm` int(30) NOT NULL DEFAULT '0',
  `kodepos` varchar(50) NOT NULL DEFAULT '',
  `userupt` varchar(45) NOT NULL DEFAULT '',
  `userin` varchar(45) NOT NULL DEFAULT '',
  `jam` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  PRIMARY KEY (`id`),
  KEY `kodepelanggan` (`kodepelanggan`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpelanggan`
--

/*!40000 ALTER TABLE `tblpelanggan` DISABLE KEYS */;
INSERT INTO `tblpelanggan` (`id`,`nama`,`title`,`alamat`,`telp`,`telp2`,`telp3`,`email`,`web`,`hub`,`hub2`,`hub3`,`term`,`termeom`,`fax`,`statusid`,`chkpr`,`chkgb`,`chkpenj`,`chkblck`,`chklmt`,`chkpsonal`,`noktp`,`iddaerah`,`daerah2`,`npwp`,`pemnpwp`,`almatnpwp`,`kodepelanggan`,`kodenegara`,`glbdisc1`,`glbdisc2`,`ccydisc`,`ccylimit`,`limittemp`,`jmlahnmorinvlimtempo`,`jmlahnmorinvlim`,`maxterm`,`kodepos`,`userupt`,`userin`,`jam`,`jamupt`) VALUES 
 (1,'Pelanggan A','Bpk','Alamat pel','','','','','','','','','0',0,'0',5,1,0,0,0,0,0,0,0,'','','Pelanggan A','','PLG020001','NGR0001',0,0,'0','0','0','0','0',0,'1911','JACKY','JACKY','2024-02-28 17:37:05','2024-02-28 17:37:05');
/*!40000 ALTER TABLE `tblpelanggan` ENABLE KEYS */;


--
-- Definition of table `tblpelunasanhutang`
--

DROP TABLE IF EXISTS `tblpelunasanhutang`;
CREATE TABLE `tblpelunasanhutang` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `tipetrans` varchar(50) NOT NULL DEFAULT '',
  `no` varchar(50) NOT NULL DEFAULT '',
  `notrans` varchar(50) NOT NULL DEFAULT '',
  `idvendor` int(50) NOT NULL DEFAULT '0',
  `harga` double DEFAULT '0',
  `idmu` int(50) NOT NULL DEFAULT '0',
  `kurs` double DEFAULT '0',
  `catatan` text,
  `status` int(5) NOT NULL DEFAULT '0',
  `userin` varchar(50) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupt` varchar(50) NOT NULL DEFAULT '',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpelunasanhutang`
--

/*!40000 ALTER TABLE `tblpelunasanhutang` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpelunasanhutang` ENABLE KEYS */;


--
-- Definition of table `tblpelunasanhutangd`
--

DROP TABLE IF EXISTS `tblpelunasanhutangd`;
CREATE TABLE `tblpelunasanhutangd` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `jenistrans` varchar(10) NOT NULL DEFAULT '',
  `notrans` varchar(25) NOT NULL DEFAULT '',
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `idmu` int(10) NOT NULL DEFAULT '0',
  `idvendor` int(10) NOT NULL DEFAULT '0',
  `discount` double DEFAULT '0',
  `bayar` double DEFAULT '0',
  `total` double DEFAULT '0',
  `sisahutang` double DEFAULT '0',
  `kurs` double DEFAULT '0',
  `catatan` text,
  `totalakhir` double DEFAULT '0',
  `tgllunas` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpelunasanhutangd`
--

/*!40000 ALTER TABLE `tblpelunasanhutangd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpelunasanhutangd` ENABLE KEYS */;


--
-- Definition of table `tblpembayaranhutang`
--

DROP TABLE IF EXISTS `tblpembayaranhutang`;
CREATE TABLE `tblpembayaranhutang` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `notrans` varchar(50) NOT NULL DEFAULT '',
  `kodevendor` varchar(50) NOT NULL DEFAULT '',
  `harga` double DEFAULT '0',
  `ccy` varchar(50) NOT NULL DEFAULT '',
  `kurs` double DEFAULT '0',
  `catatan` varchar(50) NOT NULL DEFAULT '',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `userin` varchar(50) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupt` varchar(50) NOT NULL DEFAULT '',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `remarkcancel` varchar(50) DEFAULT NULL,
  `ccy2` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpembayaranhutang`
--

/*!40000 ALTER TABLE `tblpembayaranhutang` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpembayaranhutang` ENABLE KEYS */;


--
-- Definition of table `tblpembayaranhutangd`
--

DROP TABLE IF EXISTS `tblpembayaranhutangd`;
CREATE TABLE `tblpembayaranhutangd` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(50) NOT NULL DEFAULT '',
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `jenistrans` varchar(50) NOT NULL DEFAULT '',
  `nobukti` varchar(50) NOT NULL DEFAULT '',
  `ccy` varchar(50) NOT NULL DEFAULT '',
  `kurs` varchar(50) NOT NULL DEFAULT '',
  `harga` double DEFAULT '0',
  `discount` double DEFAULT '0',
  `total` double DEFAULT '0',
  `sisahutang` double DEFAULT '0',
  `idpr` varchar(25) NOT NULL DEFAULT '',
  `catatan` varchar(100) NOT NULL DEFAULT '',
  `totaleqv` double DEFAULT '0',
  `tgllunas` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpembayaranhutangd`
--

/*!40000 ALTER TABLE `tblpembayaranhutangd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpembayaranhutangd` ENABLE KEYS */;


--
-- Definition of table `tblpembelian`
--

DROP TABLE IF EXISTS `tblpembelian`;
CREATE TABLE `tblpembelian` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(50) NOT NULL DEFAULT '',
  `kodevendor` varchar(10) NOT NULL DEFAULT '',
  `kodegudang` varchar(25) NOT NULL DEFAULT '',
  `norefretur` varchar(75) NOT NULL DEFAULT '',
  `nobukti` varchar(75) NOT NULL DEFAULT '',
  `kodepo` varchar(25) NOT NULL DEFAULT '',
  `kodejenis` varchar(15) NOT NULL DEFAULT '',
  `kodetax` varchar(25) NOT NULL DEFAULT '',
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `tanggal2` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `ccy` varchar(5) NOT NULL DEFAULT '',
  `kurs` double DEFAULT '0',
  `harga` double DEFAULT '0',
  `discount` double DEFAULT '0',
  `discpers` double DEFAULT '0',
  `tax` double DEFAULT '0',
  `taxpers` double DEFAULT '0',
  `total` double DEFAULT '0',
  `term` int(10) NOT NULL DEFAULT '0',
  `catatan` text,
  `catatan2` text NOT NULL,
  `catatan3` text NOT NULL,
  `nofakpjk` varchar(25) NOT NULL DEFAULT '',
  `iscredit` tinyint(1) NOT NULL DEFAULT '0',
  `remarkcancel` text,
  `isretur` tinyint(1) NOT NULL DEFAULT '0',
  `isnonstock` tinyint(1) NOT NULL DEFAULT '0',
  `status` varchar(5) NOT NULL DEFAULT '',
  `userin` varchar(25) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupt` varchar(25) NOT NULL DEFAULT '',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  PRIMARY KEY (`id`),
  KEY `notrans` (`notrans`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpembelian`
--

/*!40000 ALTER TABLE `tblpembelian` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpembelian` ENABLE KEYS */;


--
-- Definition of table `tblpembeliand`
--

DROP TABLE IF EXISTS `tblpembeliand`;
CREATE TABLE `tblpembeliand` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `idpr` varchar(15) NOT NULL DEFAULT '',
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `kodegudang` varchar(25) NOT NULL DEFAULT '',
  `nobukti` varchar(75) NOT NULL DEFAULT '',
  `notrans` varchar(25) NOT NULL DEFAULT '',
  `kodebarang` varchar(25) NOT NULL DEFAULT '',
  `ccy` varchar(10) NOT NULL DEFAULT '',
  `qty` double DEFAULT '0',
  `satuan` varchar(15) DEFAULT NULL,
  `qtysatuan` double DEFAULT '0',
  `qtyori` double DEFAULT '0',
  `harga` double DEFAULT '0',
  `hargaeqv` double DEFAULT '0',
  `discount` double DEFAULT '0',
  `discpers` double DEFAULT '0',
  `total` double DEFAULT '0',
  `catatan` text,
  `isretur` tinyint(1) NOT NULL DEFAULT '0',
  `isdirect` tinyint(1) NOT NULL DEFAULT '0',
  `status` double DEFAULT '0',
  `isnonstock` tinyint(1) NOT NULL DEFAULT '0',
  `keterangan` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `kodegudang` (`kodegudang`),
  KEY `notrans` (`notrans`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpembeliand`
--

/*!40000 ALTER TABLE `tblpembeliand` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpembeliand` ENABLE KEYS */;


--
-- Definition of table `tblpembelianh`
--

DROP TABLE IF EXISTS `tblpembelianh`;
CREATE TABLE `tblpembelianh` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(225) NOT NULL,
  `idvendor` int(4) NOT NULL,
  `idgudang` int(4) DEFAULT NULL,
  `idpo` int(4) NOT NULL,
  `tanggal1` datetime NOT NULL,
  `tanggal2` datetime NOT NULL,
  `idmu` int(4) NOT NULL,
  `nilaimu` double NOT NULL,
  `nilaimu2` double NOT NULL,
  `nilaimu3` double NOT NULL,
  `disc` double NOT NULL,
  `discpers` double NOT NULL,
  `jenispajak` varchar(25) NOT NULL DEFAULT '',
  `pajak` double NOT NULL,
  `pajakpers` double NOT NULL,
  `credit` varchar(100) NOT NULL,
  `totharga` double NOT NULL,
  `totdisc` double NOT NULL,
  `totretur` double NOT NULL,
  `adjustment` double NOT NULL,
  `total` double NOT NULL,
  `deposit` double NOT NULL,
  `iscash` int(10) NOT NULL DEFAULT '0',
  `catatan` text,
  `nofakpjk` varchar(20) NOT NULL DEFAULT '',
  `tglfakpjk` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `status` int(10) NOT NULL DEFAULT '0',
  `userin` varchar(100) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupt` varchar(100) NOT NULL DEFAULT '',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `cancelreason` text,
  `idjenis` int(50) NOT NULL DEFAULT '0',
  `kurs` double DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpembelianh`
--

/*!40000 ALTER TABLE `tblpembelianh` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpembelianh` ENABLE KEYS */;


--
-- Definition of trigger `instblpembelianh`
--

DROP TRIGGER /*!50030 IF EXISTS */ `instblpembelianh`;

DELIMITER $$

CREATE DEFINER = `root`@`%` TRIGGER `instblpembelianh` AFTER INSERT ON `tblpembelianh` FOR EACH ROW BEGIN
            INSERT INTO tbltranslog (userin, jamin, tblname, notrans, status)
            VALUES (NEW.userin, NEW.jamin, 'tblpembelianh', NEW.id, 5);
            END $$

DELIMITER ;

--
-- Definition of trigger `updtblpembelianh`
--

DROP TRIGGER /*!50030 IF EXISTS */ `updtblpembelianh`;

DELIMITER $$

CREATE DEFINER = `root`@`%` TRIGGER `updtblpembelianh` AFTER UPDATE ON `tblpembelianh` FOR EACH ROW BEGIN
            INSERT INTO tbltranslog (userin, jamin, tblname, notrans, status)
            VALUES (NEW.userin, NEW.jamin, 'tblpembelianh', NEW.id, 1);
            END $$

DELIMITER ;

--
-- Definition of table `tblpembulatan`
--

DROP TABLE IF EXISTS `tblpembulatan`;
CREATE TABLE `tblpembulatan` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `dari` double DEFAULT '0',
  `hingga` double DEFAULT '0',
  `bulat` double DEFAULT '0',
  `untuk` varchar(50) NOT NULL DEFAULT '',
  `userin` varchar(30) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `entrytime` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `namamupemb` varchar(30) NOT NULL DEFAULT '',
  `userupt` varchar(30) NOT NULL DEFAULT '',
  `jamupt` varchar(30) NOT NULL DEFAULT '',
  `lastentrytime` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpembulatan`
--

/*!40000 ALTER TABLE `tblpembulatan` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpembulatan` ENABLE KEYS */;


--
-- Definition of table `tblpenerimaanpiutang`
--

DROP TABLE IF EXISTS `tblpenerimaanpiutang`;
CREATE TABLE `tblpenerimaanpiutang` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `notrans` varchar(50) NOT NULL DEFAULT '',
  `kodepelanggan` varchar(50) NOT NULL DEFAULT '',
  `harga` double DEFAULT '0',
  `ccy` varchar(50) NOT NULL DEFAULT '',
  `kurs` double DEFAULT '0',
  `catatan` varchar(50) NOT NULL DEFAULT '',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `userin` varchar(50) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupt` varchar(50) NOT NULL DEFAULT '',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `remarkcancel` varchar(50) DEFAULT NULL,
  `ccy2` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpenerimaanpiutang`
--

/*!40000 ALTER TABLE `tblpenerimaanpiutang` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpenerimaanpiutang` ENABLE KEYS */;


--
-- Definition of table `tblpenerimaanpiutangd`
--

DROP TABLE IF EXISTS `tblpenerimaanpiutangd`;
CREATE TABLE `tblpenerimaanpiutangd` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(50) NOT NULL DEFAULT '',
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `jenistrans` varchar(50) NOT NULL DEFAULT '',
  `nobukti` varchar(50) NOT NULL DEFAULT '',
  `ccy` varchar(50) NOT NULL DEFAULT '',
  `kurs` varchar(50) NOT NULL DEFAULT '',
  `harga` double DEFAULT '0',
  `discount` double DEFAULT '0',
  `total` double DEFAULT '0',
  `sisapiutang` double DEFAULT '0',
  `idpr` varchar(25) NOT NULL DEFAULT '',
  `catatan` varchar(100) NOT NULL DEFAULT '',
  `totaleqv` double DEFAULT '0',
  `tgllunas` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpenerimaanpiutangd`
--

/*!40000 ALTER TABLE `tblpenerimaanpiutangd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpenerimaanpiutangd` ENABLE KEYS */;


--
-- Definition of table `tblpenjualan`
--

DROP TABLE IF EXISTS `tblpenjualan`;
CREATE TABLE `tblpenjualan` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(225) NOT NULL DEFAULT '',
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `kodeso` varchar(100) NOT NULL DEFAULT '',
  `kodepo` varchar(100) NOT NULL DEFAULT '',
  `kodepelanggan` varchar(100) NOT NULL DEFAULT '',
  `kodegudang` varchar(100) NOT NULL DEFAULT '',
  `kodejenis` varchar(100) NOT NULL DEFAULT '',
  `kodesales` varchar(100) NOT NULL DEFAULT '',
  `divisi` varchar(50) NOT NULL DEFAULT '',
  `jenispenj` varchar(50) NOT NULL DEFAULT '',
  `kodetax` varchar(100) NOT NULL DEFAULT '',
  `norefretur` varchar(100) NOT NULL DEFAULT '',
  `nobukti` varchar(75) NOT NULL DEFAULT '',
  `ccy` varchar(100) NOT NULL DEFAULT '',
  `kurs` double DEFAULT '0',
  `harga` double DEFAULT '0',
  `discount` double DEFAULT '0',
  `discpers` double DEFAULT '0',
  `tax` double DEFAULT '0',
  `taxpers` double DEFAULT '0',
  `total` double DEFAULT '0',
  `deposit` double DEFAULT '0',
  `term` int(10) NOT NULL DEFAULT '0',
  `catatan` text,
  `catatan2` text NOT NULL,
  `catatan3` text NOT NULL,
  `remarkcancel` text,
  `isretur` tinyint(1) NOT NULL DEFAULT '0',
  `komisisales` double DEFAULT '0',
  `iscredit` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `userin` varchar(100) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupt` varchar(50) NOT NULL DEFAULT '',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpenjualan`
--

/*!40000 ALTER TABLE `tblpenjualan` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpenjualan` ENABLE KEYS */;


--
-- Definition of table `tblpenjualand`
--

DROP TABLE IF EXISTS `tblpenjualand`;
CREATE TABLE `tblpenjualand` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `nobukti` varchar(30) NOT NULL DEFAULT '',
  `notrans` varchar(225) NOT NULL DEFAULT '',
  `idpr` varchar(10) NOT NULL DEFAULT '',
  `kodebarang` varchar(100) NOT NULL DEFAULT '',
  `kodegudang` varchar(25) NOT NULL DEFAULT '',
  `satuan` varchar(50) NOT NULL DEFAULT '',
  `qty` double DEFAULT '0',
  `qtysatuan` double DEFAULT '0',
  `qtyori` double DEFAULT '0',
  `satuanbonus` varchar(5) NOT NULL DEFAULT '',
  `qtybonus` double DEFAULT '0',
  `qtybonussatuan` double DEFAULT '0',
  `qtybonusori` double DEFAULT '0',
  `harga` double DEFAULT '0',
  `hargaeqv` double DEFAULT '0',
  `discnilai` double DEFAULT '0',
  `discount` double DEFAULT '0',
  `discpers` double DEFAULT '0',
  `total` double DEFAULT '0',
  `isdirect` tinyint(1) NOT NULL DEFAULT '0',
  `catatan` text,
  `isnonstock` tinyint(1) NOT NULL DEFAULT '0',
  `keterangan` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpenjualand`
--

/*!40000 ALTER TABLE `tblpenjualand` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpenjualand` ENABLE KEYS */;


--
-- Definition of table `tblperpanjangsewa`
--

DROP TABLE IF EXISTS `tblperpanjangsewa`;
CREATE TABLE `tblperpanjangsewa` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(125) NOT NULL DEFAULT '',
  `notransasm` varchar(125) NOT NULL DEFAULT '',
  `kodemesin` varchar(125) NOT NULL DEFAULT '',
  `kodevendor` varchar(125) NOT NULL DEFAULT '',
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `period` double DEFAULT '0',
  `satuan` varchar(125) NOT NULL DEFAULT '',
  `hargaawal` double DEFAULT '0',
  `diskon` double DEFAULT '0',
  `harga` double DEFAULT '0',
  `userin` varchar(125) NOT NULL DEFAULT '',
  `userupt` varchar(125) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `status` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblperpanjangsewa`
--

/*!40000 ALTER TABLE `tblperpanjangsewa` DISABLE KEYS */;
INSERT INTO `tblperpanjangsewa` (`id`,`notrans`,`notransasm`,`kodemesin`,`kodevendor`,`tanggal`,`period`,`satuan`,`hargaawal`,`diskon`,`harga`,`userin`,`userupt`,`jamin`,`jamupt`,`status`) VALUES 
 (1,'PPS24040001','ASM24040001','ENG00002','','2024-04-26 16:10:20',3,'Month',3000000,200000,2800000,'JACKY','JACKY','2024-04-26 16:10:42','2024-04-26 16:10:42','5');
/*!40000 ALTER TABLE `tblperpanjangsewa` ENABLE KEYS */;


--
-- Definition of table `tblpindahgudang`
--

DROP TABLE IF EXISTS `tblpindahgudang`;
CREATE TABLE `tblpindahgudang` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(30) NOT NULL DEFAULT '',
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `kodegudangdari` varchar(30) NOT NULL DEFAULT '',
  `kodegudangke` varchar(30) NOT NULL DEFAULT '',
  `catatan` text NOT NULL,
  `nama` varchar(30) NOT NULL DEFAULT '',
  `divisi` varchar(30) NOT NULL DEFAULT '',
  `userin` varchar(50) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupt` varchar(50) NOT NULL DEFAULT '',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpindahgudang`
--

/*!40000 ALTER TABLE `tblpindahgudang` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpindahgudang` ENABLE KEYS */;


--
-- Definition of table `tblpindahgudangd`
--

DROP TABLE IF EXISTS `tblpindahgudangd`;
CREATE TABLE `tblpindahgudangd` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(50) NOT NULL DEFAULT '',
  `kodebarang` varchar(50) NOT NULL DEFAULT '',
  `namabarang` varchar(50) NOT NULL DEFAULT '',
  `jumlah` double DEFAULT '0',
  `satuan` varchar(30) NOT NULL DEFAULT '',
  `catatan` text NOT NULL,
  `catatannama` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpindahgudangd`
--

/*!40000 ALTER TABLE `tblpindahgudangd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpindahgudangd` ENABLE KEYS */;


--
-- Definition of table `tblpo`
--

DROP TABLE IF EXISTS `tblpo`;
CREATE TABLE `tblpo` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `tanggalpo` datetime NOT NULL DEFAULT '2011-11-11 12:00:00',
  `tanggal` datetime NOT NULL DEFAULT '2011-11-11 12:00:00',
  `idvendor` varchar(100) NOT NULL DEFAULT '',
  `idmu` varchar(100) NOT NULL DEFAULT '',
  `discount` double NOT NULL DEFAULT '0',
  `discountpers` double NOT NULL DEFAULT '0',
  `catatan` text,
  `idpjk` varchar(100) NOT NULL DEFAULT '',
  `pjkpers` double NOT NULL DEFAULT '0',
  `pjk` double NOT NULL DEFAULT '0',
  `totalharga` double NOT NULL DEFAULT '0',
  `userupt` varchar(45) NOT NULL DEFAULT 'user',
  `userin` varchar(45) NOT NULL DEFAULT 'user',
  `jam` datetime NOT NULL DEFAULT '2011-11-11 11:11:11',
  `jamupt` datetime NOT NULL DEFAULT '2011-11-11 11:11:11',
  `statusid` int(11) NOT NULL DEFAULT '1',
  `cancel_reason` text,
  `notrans` varchar(50) NOT NULL DEFAULT '',
  `idjenispemb` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpo`
--

/*!40000 ALTER TABLE `tblpo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpo` ENABLE KEYS */;


--
-- Definition of trigger `instblpo`
--

DROP TRIGGER /*!50030 IF EXISTS */ `instblpo`;

DELIMITER $$

CREATE DEFINER = `root`@`%` TRIGGER `instblpo` AFTER INSERT ON `tblpo` FOR EACH ROW BEGIN
                INSERT INTO tbltranslog (userin, jamin, tblname, notrans, status)
                VALUES (NEW.userin, NEW.jam, 'tblpo', NEW.id, 5);
            END $$

DELIMITER ;

--
-- Definition of trigger `updtblpo`
--

DROP TRIGGER /*!50030 IF EXISTS */ `updtblpo`;

DELIMITER $$

CREATE DEFINER = `root`@`%` TRIGGER `updtblpo` AFTER UPDATE ON `tblpo` FOR EACH ROW BEGIN
                INSERT INTO tbltranslog (userin, jamin, tblname, notrans, status)
                VALUES (NEW.userin, NEW.jam, 'tblpo', NEW.id, 1);
            END $$

DELIMITER ;

--
-- Definition of table `tblpod`
--

DROP TABLE IF EXISTS `tblpod`;
CREATE TABLE `tblpod` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `idpo` varchar(100) NOT NULL DEFAULT '0',
  `idbarang` varchar(100) NOT NULL DEFAULT '',
  `qty` int(100) NOT NULL DEFAULT '0',
  `idsatuan` varchar(10) NOT NULL DEFAULT '',
  `harga` double NOT NULL DEFAULT '0',
  `harga2` double NOT NULL DEFAULT '0',
  `discpers1` double NOT NULL DEFAULT '0',
  `discpers2` double NOT NULL DEFAULT '0',
  `discpers3` double NOT NULL DEFAULT '0',
  `discnilai` double NOT NULL DEFAULT '0',
  `catatan` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpod`
--

/*!40000 ALTER TABLE `tblpod` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpod` ENABLE KEYS */;


--
-- Definition of table `tblpostfinance`
--

DROP TABLE IF EXISTS `tblpostfinance`;
CREATE TABLE `tblpostfinance` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(155) NOT NULL DEFAULT '',
  `kodemesin` varchar(255) NOT NULL DEFAULT '',
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `harga` double DEFAULT '0',
  `banyaksusut` double DEFAULT '0',
  `susutbulan` double DEFAULT '0',
  `kodesup` varchar(155) NOT NULL DEFAULT '',
  `idprasset` varchar(10) NOT NULL DEFAULT '',
  `idprcashbank` varchar(10) NOT NULL DEFAULT '',
  `idprkodeasset` varchar(10) NOT NULL DEFAULT '',
  `idprakumulasi` varchar(10) NOT NULL DEFAULT '',
  `status` varchar(5) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpostfinance`
--

/*!40000 ALTER TABLE `tblpostfinance` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpostfinance` ENABLE KEYS */;


--
-- Definition of table `tblpostonline`
--

DROP TABLE IF EXISTS `tblpostonline`;
CREATE TABLE `tblpostonline` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `imagedata` longblob,
  `userpost` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpostonline`
--

/*!40000 ALTER TABLE `tblpostonline` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpostonline` ENABLE KEYS */;


--
-- Definition of table `tblpotongsewa`
--

DROP TABLE IF EXISTS `tblpotongsewa`;
CREATE TABLE `tblpotongsewa` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(125) NOT NULL DEFAULT '',
  `notransasm` varchar(125) NOT NULL DEFAULT '',
  `kodemesin` varchar(125) NOT NULL DEFAULT '',
  `kodevendor` varchar(125) NOT NULL DEFAULT '',
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `period` double DEFAULT '0',
  `keterangan` text NOT NULL,
  `satuan` varchar(125) NOT NULL DEFAULT '',
  `userin` varchar(125) NOT NULL DEFAULT '',
  `userupt` varchar(125) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `status` varchar(55) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpotongsewa`
--

/*!40000 ALTER TABLE `tblpotongsewa` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpotongsewa` ENABLE KEYS */;


--
-- Definition of table `tblpromosi`
--

DROP TABLE IF EXISTS `tblpromosi`;
CREATE TABLE `tblpromosi` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `catatan` text,
  `daritgl` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `smptgl` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `drijam` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `smpjam` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `senin` tinyint(1) NOT NULL DEFAULT '0',
  `selasa` tinyint(1) NOT NULL DEFAULT '0',
  `rabu` tinyint(1) NOT NULL DEFAULT '0',
  `kamis` tinyint(1) NOT NULL DEFAULT '0',
  `jumat` tinyint(1) NOT NULL DEFAULT '0',
  `sabtu` tinyint(1) NOT NULL DEFAULT '0',
  `libur` tinyint(1) NOT NULL DEFAULT '0',
  `penjeceran` tinyint(1) NOT NULL DEFAULT '0',
  `penjcash` tinyint(1) NOT NULL DEFAULT '0',
  `penjcr` tinyint(1) NOT NULL DEFAULT '0',
  `userin` varchar(50) NOT NULL DEFAULT '',
  `userupt` varchar(50) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `kode` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpromosi`
--

/*!40000 ALTER TABLE `tblpromosi` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpromosi` ENABLE KEYS */;


--
-- Definition of table `tblpromosid`
--

DROP TABLE IF EXISTS `tblpromosid`;
CREATE TABLE `tblpromosid` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `kode` varchar(50) NOT NULL DEFAULT '',
  `mu` varchar(30) NOT NULL DEFAULT '',
  `hargadari` double DEFAULT '0',
  `hargasmp` double DEFAULT '0',
  `discpers` double DEFAULT '0',
  `discnilai` double DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpromosid`
--

/*!40000 ALTER TABLE `tblpromosid` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpromosid` ENABLE KEYS */;


--
-- Definition of table `tblpromosidivisi`
--

DROP TABLE IF EXISTS `tblpromosidivisi`;
CREATE TABLE `tblpromosidivisi` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `kode` varchar(30) NOT NULL DEFAULT '',
  `divisi` varchar(30) NOT NULL DEFAULT '',
  `ischk` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpromosidivisi`
--

/*!40000 ALTER TABLE `tblpromosidivisi` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpromosidivisi` ENABLE KEYS */;


--
-- Definition of table `tblpromosikomputer`
--

DROP TABLE IF EXISTS `tblpromosikomputer`;
CREATE TABLE `tblpromosikomputer` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `kode` varchar(30) NOT NULL DEFAULT '',
  `komputer` varchar(50) NOT NULL DEFAULT '',
  `isallcomputer` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpromosikomputer`
--

/*!40000 ALTER TABLE `tblpromosikomputer` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpromosikomputer` ENABLE KEYS */;


--
-- Definition of table `tblpurchaseorder`
--

DROP TABLE IF EXISTS `tblpurchaseorder`;
CREATE TABLE `tblpurchaseorder` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(25) NOT NULL DEFAULT '',
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `tanggaltutup` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `kodevendor` varchar(15) NOT NULL DEFAULT '',
  `kodejenis` varchar(50) DEFAULT NULL,
  `ccy` varchar(10) NOT NULL DEFAULT '',
  `kurs` double DEFAULT '0',
  `harga` double DEFAULT '0',
  `discount` double DEFAULT '0',
  `discpers` double DEFAULT '0',
  `kodetax` varchar(10) NOT NULL DEFAULT '',
  `tax` double DEFAULT '0',
  `taxpers` double DEFAULT '0',
  `total` double DEFAULT '0',
  `catatan` text,
  `catatan2` text NOT NULL,
  `catatan3` text NOT NULL,
  `remarkcancel` text,
  `status` varchar(5) NOT NULL DEFAULT '',
  `userin` varchar(25) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupt` varchar(25) NOT NULL DEFAULT '',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `iscetakqty` tinyint(1) NOT NULL DEFAULT '0',
  `iscetakprice` tinyint(1) NOT NULL DEFAULT '0',
  `kodegudang` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpurchaseorder`
--

/*!40000 ALTER TABLE `tblpurchaseorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpurchaseorder` ENABLE KEYS */;


--
-- Definition of table `tblpurchaseorderd`
--

DROP TABLE IF EXISTS `tblpurchaseorderd`;
CREATE TABLE `tblpurchaseorderd` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(25) NOT NULL DEFAULT '',
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `kodebarang` varchar(25) NOT NULL DEFAULT '',
  `kodegudang` varchar(50) NOT NULL DEFAULT '',
  `satuan` varchar(5) NOT NULL DEFAULT '',
  `qty` double DEFAULT '0',
  `qtysatuan` double DEFAULT '0',
  `qtyori` double DEFAULT '0',
  `satuanbonus` varchar(5) NOT NULL DEFAULT '',
  `qtybonus` double DEFAULT '0',
  `qtybonussatuan` double DEFAULT '0',
  `qtybonusori` double DEFAULT '0',
  `hargasatuan` double DEFAULT '0',
  `harga` double DEFAULT '0',
  `discountnilai` double DEFAULT '0',
  `discount1` double DEFAULT '0',
  `discpers1` double DEFAULT '0',
  `discount2` double DEFAULT '0',
  `discpers2` double DEFAULT '0',
  `discount3` double DEFAULT '0',
  `discpers3` double DEFAULT '0',
  `totaldisc` double DEFAULT '0',
  `total` double DEFAULT '0',
  `catatan` text,
  `status` varchar(5) NOT NULL DEFAULT '',
  `keterangan` varchar(50) NOT NULL DEFAULT '',
  `isnonstock` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpurchaseorderd`
--

/*!40000 ALTER TABLE `tblpurchaseorderd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpurchaseorderd` ENABLE KEYS */;


--
-- Definition of table `tblquotation`
--

DROP TABLE IF EXISTS `tblquotation`;
CREATE TABLE `tblquotation` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(225) NOT NULL DEFAULT '',
  `ref` varchar(225) NOT NULL DEFAULT '',
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `tanggalvalidity` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `tanggaldelivery` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `kodepelanggan` varchar(100) NOT NULL DEFAULT '',
  `kodekirim` varchar(100) NOT NULL DEFAULT '',
  `kodesales` varchar(100) NOT NULL DEFAULT '',
  `ccy` varchar(100) NOT NULL DEFAULT '',
  `kurs` double DEFAULT '0',
  `harga` double DEFAULT '0',
  `discount` double DEFAULT '0',
  `discpers` double DEFAULT '0',
  `total` double DEFAULT '0',
  `payterm` varchar(100) NOT NULL DEFAULT '',
  `delivery` varchar(100) NOT NULL DEFAULT '',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `tender` varchar(100) NOT NULL DEFAULT '',
  `warranty` varchar(100) NOT NULL DEFAULT '',
  `catatan` text,
  `remarkcancel` text,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `userin` varchar(100) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupt` varchar(50) NOT NULL DEFAULT '',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `rate` varchar(50) NOT NULL DEFAULT '',
  `deliver` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `notrans` (`notrans`),
  KEY `kodepelanggan` (`kodepelanggan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblquotation`
--

/*!40000 ALTER TABLE `tblquotation` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblquotation` ENABLE KEYS */;


--
-- Definition of table `tblquotationd`
--

DROP TABLE IF EXISTS `tblquotationd`;
CREATE TABLE `tblquotationd` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(50) DEFAULT NULL,
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `kodebarang` varchar(100) NOT NULL DEFAULT '',
  `satuan` varchar(50) NOT NULL DEFAULT '',
  `qty` double DEFAULT '0',
  `qtysatuan` double DEFAULT '0',
  `qtyori` double DEFAULT '0',
  `satuanbonus` varchar(5) NOT NULL DEFAULT '',
  `qtybonus` double DEFAULT '0',
  `qtybonussatuan` double DEFAULT '0',
  `qtybonusori` double DEFAULT '0',
  `hargasatuan` double DEFAULT '0',
  `harga` double DEFAULT '0',
  `discount` double DEFAULT '0',
  `discpers` double DEFAULT '0',
  `total` double DEFAULT '0',
  `catatan` text,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `kodegudang` varchar(50) NOT NULL DEFAULT '',
  `isnonstock` tinyint(1) NOT NULL DEFAULT '0',
  `keterangan` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblquotationd`
--

/*!40000 ALTER TABLE `tblquotationd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblquotationd` ENABLE KEYS */;


--
-- Definition of table `tblrak`
--

DROP TABLE IF EXISTS `tblrak`;
CREATE TABLE `tblrak` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `kode` varchar(125) NOT NULL DEFAULT '',
  `nama` varchar(125) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblrak`
--

/*!40000 ALTER TABLE `tblrak` DISABLE KEYS */;
INSERT INTO `tblrak` (`id`,`kode`,`nama`) VALUES 
 (1,'RAK0001','Rak A');
/*!40000 ALTER TABLE `tblrak` ENABLE KEYS */;


--
-- Definition of table `tblrentalaksesoris`
--

DROP TABLE IF EXISTS `tblrentalaksesoris`;
CREATE TABLE `tblrentalaksesoris` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(50) NOT NULL DEFAULT '',
  `jenistrans` varchar(50) NOT NULL DEFAULT '',
  `kodebarang` varchar(50) NOT NULL DEFAULT '',
  `qty` double DEFAULT '0',
  `satuan` varchar(50) NOT NULL DEFAULT '',
  `harga` double DEFAULT '0',
  `discount` double DEFAULT '0',
  `total` double DEFAULT '0',
  `idpr` varchar(10) NOT NULL DEFAULT '',
  `keterangan` varchar(100) NOT NULL DEFAULT '',
  `isnonstock` tinyint(1) NOT NULL DEFAULT '0',
  `catatan` text NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT '',
  `userin` varchar(50) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupt` varchar(50) NOT NULL DEFAULT '',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblrentalaksesoris`
--

/*!40000 ALTER TABLE `tblrentalaksesoris` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblrentalaksesoris` ENABLE KEYS */;


--
-- Definition of table `tblrentalbarang`
--

DROP TABLE IF EXISTS `tblrentalbarang`;
CREATE TABLE `tblrentalbarang` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `kodebarang` varchar(50) NOT NULL DEFAULT '',
  `kodebarang2` varchar(50) NOT NULL DEFAULT '',
  `namabarang` varchar(150) NOT NULL DEFAULT '',
  `kodevendor` varchar(50) NOT NULL DEFAULT '',
  `kodegroup` varchar(50) NOT NULL DEFAULT '',
  `sat1` varchar(10) NOT NULL DEFAULT '',
  `sat2` varchar(10) NOT NULL DEFAULT '',
  `sat3` varchar(10) NOT NULL DEFAULT '',
  `sat4` varchar(10) NOT NULL DEFAULT '',
  `sat5` varchar(10) NOT NULL DEFAULT '',
  `isi2` double DEFAULT '0',
  `isi3` double DEFAULT '0',
  `isi4` double DEFAULT '0',
  `isi5` double DEFAULT '0',
  `catatan` text,
  `kubikasi` double DEFAULT '0',
  `berat` double DEFAULT '0',
  `size` varchar(50) NOT NULL DEFAULT '',
  `status` varchar(5) NOT NULL DEFAULT '',
  `userin` varchar(50) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupt` varchar(50) NOT NULL DEFAULT '',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblrentalbarang`
--

/*!40000 ALTER TABLE `tblrentalbarang` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblrentalbarang` ENABLE KEYS */;


--
-- Definition of table `tblrentaldeliveryorder`
--

DROP TABLE IF EXISTS `tblrentaldeliveryorder`;
CREATE TABLE `tblrentaldeliveryorder` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(50) NOT NULL DEFAULT '',
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `kodepelanggan` varchar(50) NOT NULL DEFAULT '',
  `harga` double DEFAULT '0',
  `expense` double DEFAULT '0',
  `discount` double DEFAULT '0',
  `discpers` double DEFAULT '0',
  `total` double DEFAULT '0',
  `catatan` text,
  `remarkcancel` text,
  `status` varchar(5) NOT NULL DEFAULT '',
  `userin` varchar(50) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupt` varchar(50) NOT NULL DEFAULT '',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblrentaldeliveryorder`
--

/*!40000 ALTER TABLE `tblrentaldeliveryorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblrentaldeliveryorder` ENABLE KEYS */;


--
-- Definition of table `tblrentaldeliveryorderd`
--

DROP TABLE IF EXISTS `tblrentaldeliveryorderd`;
CREATE TABLE `tblrentaldeliveryorderd` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(50) NOT NULL DEFAULT '',
  `kodemesin` varchar(50) NOT NULL DEFAULT '',
  `period` double DEFAULT '0',
  `satuan` varchar(15) NOT NULL DEFAULT '',
  `harga` double DEFAULT '0',
  `discount` double DEFAULT '0',
  `discpers` double DEFAULT '0',
  `total` double DEFAULT '0',
  `notransso` varchar(100) NOT NULL DEFAULT '',
  `statusrental` varchar(50) NOT NULL DEFAULT '',
  `userfinish` varchar(255) NOT NULL DEFAULT '',
  `jamfinish` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `subtotal` double DEFAULT '0',
  `discperperiode` double DEFAULT '0',
  `jatuhtempo` date DEFAULT NULL,
  `catatanitem` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblrentaldeliveryorderd`
--

/*!40000 ALTER TABLE `tblrentaldeliveryorderd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblrentaldeliveryorderd` ENABLE KEYS */;


--
-- Definition of table `tblrentalinvoice`
--

DROP TABLE IF EXISTS `tblrentalinvoice`;
CREATE TABLE `tblrentalinvoice` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(155) NOT NULL DEFAULT '',
  `notransinv` varchar(255) NOT NULL DEFAULT '',
  `nobukti` varchar(155) NOT NULL DEFAULT '',
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `harga` double DEFAULT '0',
  `period` double DEFAULT '0',
  `discount` double DEFAULT '0',
  `kodemesin` varchar(125) NOT NULL DEFAULT '',
  `namamesin` varchar(125) NOT NULL DEFAULT '',
  `satuan` varchar(255) NOT NULL DEFAULT '',
  `isasset` tinyint(1) NOT NULL DEFAULT '0',
  `kodecust` varchar(255) NOT NULL DEFAULT '',
  `status` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblrentalinvoice`
--

/*!40000 ALTER TABLE `tblrentalinvoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblrentalinvoice` ENABLE KEYS */;


--
-- Definition of table `tblrentaljual`
--

DROP TABLE IF EXISTS `tblrentaljual`;
CREATE TABLE `tblrentaljual` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(50) NOT NULL DEFAULT '',
  `kodeasset` varchar(50) NOT NULL DEFAULT '',
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `periode` varchar(15) NOT NULL DEFAULT '',
  `catatan` text NOT NULL,
  `amount` double DEFAULT '0',
  `banyakkalisusut` double DEFAULT '0',
  `tanggalmulai` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `kodesup` varchar(50) NOT NULL DEFAULT '',
  `idprasset` varchar(50) NOT NULL DEFAULT '',
  `idprsusut` varchar(50) NOT NULL DEFAULT '',
  `idprbiayasusut` varchar(50) NOT NULL DEFAULT '',
  `idprcashbank` varchar(50) NOT NULL DEFAULT '',
  `idprpendapatan` varchar(50) NOT NULL DEFAULT '',
  `idprjual` varchar(50) NOT NULL DEFAULT '',
  `total` double DEFAULT '0',
  `remarkcancel` text NOT NULL,
  `hargajual` double DEFAULT '0',
  `status` varchar(5) NOT NULL DEFAULT '',
  `userin` varchar(50) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupt` varchar(50) NOT NULL DEFAULT '',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `statusjual` varchar(5) NOT NULL DEFAULT '',
  `userjual` varchar(50) NOT NULL DEFAULT '',
  `jamjual` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblrentaljual`
--

/*!40000 ALTER TABLE `tblrentaljual` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblrentaljual` ENABLE KEYS */;


--
-- Definition of table `tblrentalmutasikeluar`
--

DROP TABLE IF EXISTS `tblrentalmutasikeluar`;
CREATE TABLE `tblrentalmutasikeluar` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(155) NOT NULL DEFAULT '',
  `nobukti` varchar(155) NOT NULL DEFAULT '',
  `kodevendor` varchar(155) NOT NULL DEFAULT '',
  `harga` double DEFAULT '0',
  `discount` double DEFAULT '0',
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `keterangan` text NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT '',
  `remarkcancel` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblrentalmutasikeluar`
--

/*!40000 ALTER TABLE `tblrentalmutasikeluar` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblrentalmutasikeluar` ENABLE KEYS */;


--
-- Definition of table `tblrentalmutasikeluard`
--

DROP TABLE IF EXISTS `tblrentalmutasikeluard`;
CREATE TABLE `tblrentalmutasikeluard` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(255) NOT NULL DEFAULT '',
  `qty` double DEFAULT '0',
  `satuan` varchar(125) NOT NULL DEFAULT '',
  `harga` double DEFAULT '0',
  `discount` double DEFAULT '0',
  `kodemesin` varchar(125) NOT NULL DEFAULT '',
  `kodemesin2` varchar(125) NOT NULL DEFAULT '',
  `namamesin` varchar(255) NOT NULL DEFAULT '',
  `nokodeclb` varchar(125) NOT NULL DEFAULT '',
  `kodesupplier` varchar(255) NOT NULL DEFAULT '',
  `catatan` text NOT NULL,
  `noseri` varchar(125) NOT NULL DEFAULT '',
  `sewatahun` double DEFAULT '0',
  `sewabulan` double DEFAULT '0',
  `sewahari` double DEFAULT '0',
  `sewajam` double DEFAULT '0',
  `remarkcancel` text NOT NULL,
  `userin` varchar(255) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupt` varchar(255) NOT NULL DEFAULT '',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `kodebarcode` varchar(155) NOT NULL DEFAULT '',
  `jenis` varchar(255) NOT NULL DEFAULT '',
  `rak` varchar(255) NOT NULL DEFAULT '',
  `brand` varchar(255) NOT NULL DEFAULT '',
  `kategori` varchar(255) NOT NULL DEFAULT '',
  `gudang` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblrentalmutasikeluard`
--

/*!40000 ALTER TABLE `tblrentalmutasikeluard` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblrentalmutasikeluard` ENABLE KEYS */;


--
-- Definition of table `tblrentalmutasimasuk`
--

DROP TABLE IF EXISTS `tblrentalmutasimasuk`;
CREATE TABLE `tblrentalmutasimasuk` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(255) NOT NULL DEFAULT '',
  `nobukti` varchar(255) NOT NULL DEFAULT '',
  `kodevendor` varchar(255) NOT NULL DEFAULT '',
  `harga` double DEFAULT '0',
  `discount` double DEFAULT '0',
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `keterangan` text NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT '',
  `remarkcancel` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblrentalmutasimasuk`
--

/*!40000 ALTER TABLE `tblrentalmutasimasuk` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblrentalmutasimasuk` ENABLE KEYS */;


--
-- Definition of table `tblrentalmutasimasukd`
--

DROP TABLE IF EXISTS `tblrentalmutasimasukd`;
CREATE TABLE `tblrentalmutasimasukd` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(155) NOT NULL DEFAULT '',
  `qty` double DEFAULT '0',
  `isdetail` tinyint(1) NOT NULL DEFAULT '0',
  `satuan` varchar(125) NOT NULL DEFAULT '',
  `harga` double DEFAULT '0',
  `discount` double DEFAULT '0',
  `kodemesin` varchar(255) NOT NULL DEFAULT '',
  `kodemesin2` varchar(255) NOT NULL DEFAULT '',
  `nokodeclb` varchar(255) NOT NULL DEFAULT '',
  `namamesin` varchar(255) NOT NULL DEFAULT '',
  `kodesupplier` varchar(255) NOT NULL DEFAULT '',
  `rak` varchar(255) NOT NULL DEFAULT '',
  `catatan` varchar(255) NOT NULL DEFAULT '',
  `gudang` varchar(255) NOT NULL DEFAULT '',
  `kategori` varchar(255) NOT NULL DEFAULT '',
  `jenis` varchar(255) NOT NULL DEFAULT '',
  `kodebarcode` varchar(255) NOT NULL DEFAULT '',
  `noseri` varchar(255) NOT NULL DEFAULT '',
  `sewatahun` double DEFAULT '0',
  `sewabulan` double DEFAULT '0',
  `sewahari` double DEFAULT '0',
  `sewajam` double DEFAULT '0',
  `remarkcancel` text NOT NULL,
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userin` varchar(125) NOT NULL DEFAULT '',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupt` varchar(125) NOT NULL DEFAULT '',
  `kodebrand` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblrentalmutasimasukd`
--

/*!40000 ALTER TABLE `tblrentalmutasimasukd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblrentalmutasimasukd` ENABLE KEYS */;


--
-- Definition of table `tblrentalquotation`
--

DROP TABLE IF EXISTS `tblrentalquotation`;
CREATE TABLE `tblrentalquotation` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(50) NOT NULL DEFAULT '',
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `kodepelanggan` varchar(50) NOT NULL DEFAULT '',
  `harga` double DEFAULT '0',
  `discount` double DEFAULT '0',
  `total` double DEFAULT '0',
  `period` double DEFAULT '0',
  `satuan` varchar(50) NOT NULL DEFAULT '',
  `catatan` text,
  `remarkreject` text,
  `iscredit` tinyint(1) NOT NULL DEFAULT '0',
  `status` varchar(5) NOT NULL DEFAULT '',
  `userin` varchar(50) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupt` varchar(50) NOT NULL DEFAULT '',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userapr` varchar(50) NOT NULL DEFAULT '',
  `jamapr` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `remarkcancel` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblrentalquotation`
--

/*!40000 ALTER TABLE `tblrentalquotation` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblrentalquotation` ENABLE KEYS */;


--
-- Definition of table `tblrentalquotationd`
--

DROP TABLE IF EXISTS `tblrentalquotationd`;
CREATE TABLE `tblrentalquotationd` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(50) NOT NULL DEFAULT '',
  `kodemesin` varchar(50) NOT NULL DEFAULT '',
  `tanggalakhir` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `harga` double DEFAULT '0',
  `discount` double DEFAULT '0',
  `discpers` double DEFAULT '0',
  `total` double DEFAULT '0',
  `qty` double DEFAULT '0',
  `satuan` varchar(50) NOT NULL DEFAULT '',
  `period` double DEFAULT '0',
  `catatanitem` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblrentalquotationd`
--

/*!40000 ALTER TABLE `tblrentalquotationd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblrentalquotationd` ENABLE KEYS */;


--
-- Definition of table `tblrentalreceive`
--

DROP TABLE IF EXISTS `tblrentalreceive`;
CREATE TABLE `tblrentalreceive` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(255) NOT NULL DEFAULT '',
  `notransdo` varchar(100) NOT NULL DEFAULT '',
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `kodevendor` varchar(100) NOT NULL DEFAULT '',
  `notranspo` varchar(150) NOT NULL DEFAULT '',
  `harga` double DEFAULT '0',
  `discount` double DEFAULT '0',
  `tax` double DEFAULT '0',
  `total` double DEFAULT '0',
  `catatan` text NOT NULL,
  `remarkcancel` text NOT NULL,
  `userin` varchar(150) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupd` varchar(150) NOT NULL DEFAULT '',
  `jamupd` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `ccy` varchar(50) NOT NULL DEFAULT '',
  `kurs` double DEFAULT '0',
  `remarkedit` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblrentalreceive`
--

/*!40000 ALTER TABLE `tblrentalreceive` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblrentalreceive` ENABLE KEYS */;


--
-- Definition of table `tblrentalreceived`
--

DROP TABLE IF EXISTS `tblrentalreceived`;
CREATE TABLE `tblrentalreceived` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(255) NOT NULL DEFAULT '',
  `notransasset` varchar(255) NOT NULL DEFAULT '',
  `notranspo` varchar(50) NOT NULL DEFAULT '',
  `kodevendor` varchar(50) NOT NULL DEFAULT '',
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `kodemesin` varchar(255) NOT NULL DEFAULT '',
  `qty` double DEFAULT '0',
  `satuan` varchar(255) NOT NULL DEFAULT '',
  `harga` double DEFAULT '0',
  `hargaeqv` double DEFAULT '0',
  `discount` double DEFAULT '0',
  `total` double DEFAULT '0',
  `catatan` text NOT NULL,
  `tanggalfinance` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `hargafinance` double DEFAULT '0',
  `banyaksusut` double DEFAULT '0',
  `susutbulan` double DEFAULT '0',
  `kodesup` varchar(155) NOT NULL DEFAULT '',
  `idprasset` varchar(10) NOT NULL DEFAULT '',
  `idprcashbank` varchar(10) NOT NULL DEFAULT '',
  `idprkodeasset` varchar(10) NOT NULL DEFAULT '',
  `idprakumulasi` varchar(10) NOT NULL DEFAULT '',
  `status` varchar(5) NOT NULL DEFAULT '',
  `periode` double DEFAULT '0',
  `unit` varchar(50) NOT NULL DEFAULT '',
  `discpersinv` double DEFAULT '0',
  `discountinv` double DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblrentalreceived`
--

/*!40000 ALTER TABLE `tblrentalreceived` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblrentalreceived` ENABLE KEYS */;


--
-- Definition of table `tblrentalsalesorder`
--

DROP TABLE IF EXISTS `tblrentalsalesorder`;
CREATE TABLE `tblrentalsalesorder` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(50) NOT NULL DEFAULT '',
  `kodepelanggan` varchar(50) NOT NULL DEFAULT '',
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `harga` double DEFAULT '0',
  `discount` double DEFAULT '0',
  `total` double DEFAULT '0',
  `catatan` text,
  `remarkreject` text,
  `remarkcancel` text,
  `status` varchar(5) NOT NULL DEFAULT '',
  `statusdo` varchar(100) NOT NULL DEFAULT '',
  `userin` varchar(50) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupt` varchar(50) NOT NULL DEFAULT '',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userapr` varchar(50) NOT NULL DEFAULT '',
  `jamapr` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userfns` varchar(50) NOT NULL DEFAULT '',
  `jamfns` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblrentalsalesorder`
--

/*!40000 ALTER TABLE `tblrentalsalesorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblrentalsalesorder` ENABLE KEYS */;


--
-- Definition of table `tblrentalsalesorderd`
--

DROP TABLE IF EXISTS `tblrentalsalesorderd`;
CREATE TABLE `tblrentalsalesorderd` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(50) NOT NULL DEFAULT '',
  `kodemesin` varchar(50) NOT NULL DEFAULT '',
  `tanggalakhir` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `harga` double DEFAULT '0',
  `discount` double DEFAULT '0',
  `discpers` double DEFAULT '0',
  `subtotal` double DEFAULT '0',
  `period` double DEFAULT '0',
  `satuan` varchar(10) NOT NULL DEFAULT '',
  `total` double DEFAULT '0',
  `discountinv` double DEFAULT '0',
  `discpersinv` double DEFAULT '0',
  `qty` double DEFAULT '0',
  `catatanitem` text NOT NULL,
  `noref` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblrentalsalesorderd`
--

/*!40000 ALTER TABLE `tblrentalsalesorderd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblrentalsalesorderd` ENABLE KEYS */;


--
-- Definition of table `tblreport`
--

DROP TABLE IF EXISTS `tblreport`;
CREATE TABLE `tblreport` (
  `urut` int(11) NOT NULL AUTO_INCREMENT,
  `namafile` varchar(255) NOT NULL DEFAULT '',
  `textfile` longtext NOT NULL,
  PRIMARY KEY (`urut`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblreport`
--

/*!40000 ALTER TABLE `tblreport` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblreport` ENABLE KEYS */;


--
-- Definition of table `tblreportsync`
--

DROP TABLE IF EXISTS `tblreportsync`;
CREATE TABLE `tblreportsync` (
  `urut` int(11) NOT NULL AUTO_INCREMENT,
  `namafile` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`urut`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblreportsync`
--

/*!40000 ALTER TABLE `tblreportsync` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblreportsync` ENABLE KEYS */;


--
-- Definition of table `tblreturpemb`
--

DROP TABLE IF EXISTS `tblreturpemb`;
CREATE TABLE `tblreturpemb` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `mlk` varchar(10) NOT NULL DEFAULT '',
  `notrans` varchar(50) NOT NULL DEFAULT '',
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `idvendor` int(10) NOT NULL DEFAULT '0',
  `kurs` double DEFAULT '0',
  `idmu` int(10) NOT NULL DEFAULT '0',
  `harga` double DEFAULT '0',
  `discount` double DEFAULT '0',
  `pjk` double DEFAULT '0',
  `pjkpers` double DEFAULT '0',
  `total` double DEFAULT '0',
  `catatan` text,
  `idpemb` varchar(50) NOT NULL DEFAULT '',
  `status` int(50) NOT NULL DEFAULT '0',
  `userin` varchar(50) NOT NULL DEFAULT '',
  `userupt` varchar(50) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `iscash` tinyint(1) NOT NULL DEFAULT '0',
  `idgudang` int(10) NOT NULL DEFAULT '0',
  `idtipe` int(10) NOT NULL DEFAULT '0',
  `idpembpot` varchar(50) NOT NULL DEFAULT '',
  `cancelreason` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblreturpemb`
--

/*!40000 ALTER TABLE `tblreturpemb` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblreturpemb` ENABLE KEYS */;


--
-- Definition of table `tblreturpembd`
--

DROP TABLE IF EXISTS `tblreturpembd`;
CREATE TABLE `tblreturpembd` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `idrb` int(50) NOT NULL DEFAULT '0',
  `idbarang` int(50) NOT NULL DEFAULT '0',
  `qty` int(50) NOT NULL DEFAULT '0',
  `idsatuan` int(50) NOT NULL DEFAULT '0',
  `harga` double DEFAULT '0',
  `discount` double DEFAULT '0',
  `total` double DEFAULT '0',
  `catatan` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblreturpembd`
--

/*!40000 ALTER TABLE `tblreturpembd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblreturpembd` ENABLE KEYS */;


--
-- Definition of table `tblreturpenj`
--

DROP TABLE IF EXISTS `tblreturpenj`;
CREATE TABLE `tblreturpenj` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `mlk` varchar(10) NOT NULL DEFAULT '',
  `notrans` varchar(50) NOT NULL DEFAULT '',
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `idvendor` int(10) NOT NULL DEFAULT '0',
  `kurs` double DEFAULT '0',
  `idmu` int(10) NOT NULL DEFAULT '0',
  `harga` double DEFAULT '0',
  `discount` double DEFAULT '0',
  `pjk` double DEFAULT '0',
  `pjkpers` double DEFAULT '0',
  `total` double DEFAULT '0',
  `catatan` text,
  `idpenj` varchar(50) NOT NULL DEFAULT '',
  `status` int(50) NOT NULL DEFAULT '0',
  `userin` varchar(50) NOT NULL DEFAULT '',
  `userupt` varchar(50) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `iscash` tinyint(1) NOT NULL DEFAULT '0',
  `idgudang` int(10) NOT NULL DEFAULT '0',
  `idtipe` int(10) NOT NULL DEFAULT '0',
  `idpenjpot` varchar(50) NOT NULL DEFAULT '',
  `cancelreason` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblreturpenj`
--

/*!40000 ALTER TABLE `tblreturpenj` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblreturpenj` ENABLE KEYS */;


--
-- Definition of table `tblreturpenjd`
--

DROP TABLE IF EXISTS `tblreturpenjd`;
CREATE TABLE `tblreturpenjd` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `idrj` int(50) NOT NULL DEFAULT '0',
  `idbarang` int(50) NOT NULL DEFAULT '0',
  `qty` int(50) NOT NULL DEFAULT '0',
  `idsatuan` int(50) NOT NULL DEFAULT '0',
  `harga` double DEFAULT '0',
  `discount` double DEFAULT '0',
  `total` double DEFAULT '0',
  `catatan` text,
  `isredirect` tinyint(1) NOT NULL DEFAULT '0',
  `rusakqty` double DEFAULT '0',
  `idrusaksatuan` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblreturpenjd`
--

/*!40000 ALTER TABLE `tblreturpenjd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblreturpenjd` ENABLE KEYS */;


--
-- Definition of table `tblsalesorder`
--

DROP TABLE IF EXISTS `tblsalesorder`;
CREATE TABLE `tblsalesorder` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(50) DEFAULT NULL,
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `tanggalkirim` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `tanggaltutup` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `kodepo` varchar(100) NOT NULL DEFAULT '',
  `kodepelanggan` varchar(100) NOT NULL DEFAULT '',
  `kodesales` varchar(100) NOT NULL DEFAULT '',
  `kodejenis` varchar(100) NOT NULL DEFAULT '',
  `kodetax` varchar(100) NOT NULL DEFAULT '',
  `ccy` varchar(100) NOT NULL DEFAULT '',
  `kurs` double DEFAULT '0',
  `satuan` varchar(50) NOT NULL DEFAULT '',
  `harga` double DEFAULT '0',
  `discount` double DEFAULT '0',
  `discpers` double DEFAULT '0',
  `tax` double DEFAULT '0',
  `taxpers` double DEFAULT '0',
  `total` double DEFAULT '0',
  `catatan` text,
  `catatan2` text NOT NULL,
  `remarkcancel` text,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `userin` varchar(100) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupt` varchar(50) NOT NULL DEFAULT '',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsalesorder`
--

/*!40000 ALTER TABLE `tblsalesorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblsalesorder` ENABLE KEYS */;


--
-- Definition of table `tblsalesorderd`
--

DROP TABLE IF EXISTS `tblsalesorderd`;
CREATE TABLE `tblsalesorderd` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(225) NOT NULL DEFAULT '',
  `kodegudang` varchar(30) NOT NULL DEFAULT '',
  `kodebarang` varchar(100) NOT NULL DEFAULT '',
  `satuan` varchar(50) NOT NULL DEFAULT '',
  `qty` double DEFAULT '0',
  `qtysatuan` double DEFAULT '0',
  `qtyori` double DEFAULT '0',
  `satuanbonus` varchar(5) NOT NULL DEFAULT '',
  `qtybonus` double DEFAULT '0',
  `qtybonussatuan` double DEFAULT '0',
  `qtybonusori` double DEFAULT '0',
  `harga` double DEFAULT '0',
  `discount` double DEFAULT '0',
  `discpers` double DEFAULT '0',
  `total` double DEFAULT '0',
  `catatan` text,
  `isnonstock` tinyint(1) NOT NULL DEFAULT '0',
  `keterangan` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsalesorderd`
--

/*!40000 ALTER TABLE `tblsalesorderd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblsalesorderd` ENABLE KEYS */;


--
-- Definition of table `tblsavemenu`
--

DROP TABLE IF EXISTS `tblsavemenu`;
CREATE TABLE `tblsavemenu` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `form` varchar(100) NOT NULL DEFAULT '',
  `menu` varchar(100) NOT NULL DEFAULT '',
  `nilai` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsavemenu`
--

/*!40000 ALTER TABLE `tblsavemenu` DISABLE KEYS */;
INSERT INTO `tblsavemenu` (`id`,`form`,`menu`,`nilai`) VALUES 
 (1,'frmgfpembelian','TampilDataBatalSajaToolStripMenuItem',0),
 (3,'frmgfpembelian','SembunyikanDataBatalToolStripMenuItem',0),
 (4,'frmgfpembelian','TampilDataTerisiFakturPajakToolStripMenuItem',0),
 (5,'frmgfpembelian','TampilDataBelumTerisiFakturPajakToolStripMenuItem',0),
 (6,'frmgf','TampilDataBatalSajaToolStripMenuItem',0),
 (7,'frmgf','SembunyikanDataBatalToolStripMenuItem',1),
 (8,'frmdeposit','TampilDataBatalSajaToolStripMenuItem',0),
 (9,'frmdeposit','SembunyikanDataBatalToolStripMenuItem',0);
/*!40000 ALTER TABLE `tblsavemenu` ENABLE KEYS */;


--
-- Definition of table `tblstatusrental`
--

DROP TABLE IF EXISTS `tblstatusrental`;
CREATE TABLE `tblstatusrental` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `kodemesin` varchar(50) NOT NULL DEFAULT '',
  `status` varchar(5) NOT NULL DEFAULT '',
  `userin` varchar(50) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupt` varchar(50) NOT NULL DEFAULT '',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstatusrental`
--

/*!40000 ALTER TABLE `tblstatusrental` DISABLE KEYS */;
INSERT INTO `tblstatusrental` (`id`,`kodemesin`,`status`,`userin`,`jamin`,`userupt`,`jamupt`) VALUES 
 (1,'ENG00001','23','JACKY','2024-04-16 08:56:23','JACKY','2024-04-30 13:41:23'),
 (2,'ENG00002','23','JACKY','2024-04-16 09:03:56','JACKY','2024-04-30 13:41:10'),
 (3,'ENG00003','22','JACKY','2024-04-16 09:21:26','JACKY','2024-04-16 09:21:26');
/*!40000 ALTER TABLE `tblstatusrental` ENABLE KEYS */;


--
-- Definition of table `tblstockdetail`
--

DROP TABLE IF EXISTS `tblstockdetail`;
CREATE TABLE `tblstockdetail` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `notrans` varchar(25) NOT NULL DEFAULT '',
  `nobukti` varchar(75) NOT NULL DEFAULT '',
  `kodegudang` varchar(25) NOT NULL DEFAULT '',
  `jenistrans` varchar(25) NOT NULL DEFAULT '',
  `kodeclient` varchar(25) NOT NULL DEFAULT '',
  `jenisclient` varchar(5) NOT NULL DEFAULT '',
  `kodebarang` varchar(25) NOT NULL DEFAULT '',
  `qty` double DEFAULT '0',
  `satuan` varchar(15) NOT NULL DEFAULT '',
  `qtysatuan` double DEFAULT '0',
  `qtyori` double DEFAULT '0',
  `cogs` double DEFAULT '0',
  `done` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstockdetail`
--

/*!40000 ALTER TABLE `tblstockdetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblstockdetail` ENABLE KEYS */;


--
-- Definition of table `tblstockdetail2`
--

DROP TABLE IF EXISTS `tblstockdetail2`;
CREATE TABLE `tblstockdetail2` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(15) NOT NULL DEFAULT '',
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `jenistrans` varchar(15) NOT NULL DEFAULT '',
  `kodeclient` varchar(25) NOT NULL DEFAULT '',
  `jenisclient` varchar(5) NOT NULL DEFAULT '',
  `kodegudang` varchar(20) NOT NULL DEFAULT '',
  `kodebarang` varchar(25) NOT NULL DEFAULT '',
  `satuan` varchar(15) NOT NULL DEFAULT '',
  `qty` double DEFAULT '0',
  `qtysatuan` double DEFAULT '0',
  `qtyori` double DEFAULT '0',
  `amount` double DEFAULT '0',
  `cogs` double DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstockdetail2`
--

/*!40000 ALTER TABLE `tblstockdetail2` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblstockdetail2` ENABLE KEYS */;


--
-- Definition of table `tblsubinfo`
--

DROP TABLE IF EXISTS `tblsubinfo`;
CREATE TABLE `tblsubinfo` (
  `urut` int(50) NOT NULL AUTO_INCREMENT,
  `kodebarang` varchar(100) NOT NULL DEFAULT '',
  `idbarang` varchar(50) DEFAULT NULL,
  `ket1` text,
  `ket2` text,
  `ket3` text,
  `ket4` text,
  PRIMARY KEY (`urut`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubinfo`
--

/*!40000 ALTER TABLE `tblsubinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblsubinfo` ENABLE KEYS */;


--
-- Definition of table `tblsync`
--

DROP TABLE IF EXISTS `tblsync`;
CREATE TABLE `tblsync` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `urutan` int(15) NOT NULL DEFAULT '0',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `query` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=531 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsync`
--

/*!40000 ALTER TABLE `tblsync` DISABLE KEYS */;
INSERT INTO `tblsync` (`id`,`urutan`,`jamin`,`query`) VALUES 
 (1,1,'2023-09-21 15:12:27',NULL),
 (2,2,'2023-09-21 15:15:24',NULL),
 (3,3,'2023-09-21 15:28:46',NULL),
 (4,4,'2023-09-21 16:26:04',NULL),
 (5,5,'2023-09-21 16:27:31',NULL),
 (6,6,'2023-09-22 09:55:21',NULL),
 (7,7,'2023-09-22 13:55:47',NULL),
 (8,8,'2023-09-22 14:04:16',NULL),
 (9,9,'2023-09-26 14:46:45',NULL),
 (10,10,'2023-09-27 13:47:37',NULL),
 (11,11,'2023-09-29 08:50:18',NULL),
 (12,12,'2023-09-29 08:50:18',NULL),
 (13,13,'2023-09-29 08:50:18',NULL),
 (14,14,'2023-09-29 08:56:00',NULL),
 (15,15,'2023-09-29 09:29:34',NULL),
 (16,16,'2023-09-29 23:34:09',NULL),
 (17,17,'2023-09-30 11:39:52',NULL),
 (18,18,'2023-09-30 11:49:05',NULL),
 (19,19,'2023-10-02 09:05:06',NULL),
 (20,20,'2023-10-02 15:46:58',NULL),
 (21,21,'2023-10-03 11:39:37',NULL),
 (22,22,'2023-10-03 11:44:08',NULL),
 (23,23,'2023-10-03 11:46:00',NULL),
 (24,24,'2023-10-03 13:45:14',NULL),
 (25,25,'2023-10-04 17:00:06',NULL),
 (26,26,'2023-10-05 14:20:52',NULL),
 (27,27,'2023-10-05 17:01:39',NULL),
 (28,28,'2023-10-06 08:48:04',NULL),
 (29,29,'2023-10-06 09:25:28',NULL),
 (30,30,'2023-10-06 09:27:27',NULL),
 (31,31,'2023-10-06 09:33:49',NULL),
 (32,32,'2023-10-06 09:36:00',NULL),
 (33,33,'2023-10-06 09:36:45',NULL),
 (34,34,'2023-10-06 10:33:44',NULL),
 (35,35,'2023-10-06 13:20:33',NULL),
 (36,36,'2023-10-06 15:24:23',NULL),
 (37,37,'2023-10-06 15:25:41',NULL),
 (38,38,'2023-10-07 08:59:04',NULL),
 (39,39,'2023-10-07 09:10:25',NULL),
 (40,40,'2023-10-07 09:49:43',NULL),
 (41,41,'2023-10-07 10:00:13',NULL),
 (42,42,'2023-10-07 11:40:48',NULL),
 (43,43,'2023-10-07 11:54:06',NULL),
 (44,44,'2023-10-07 11:55:21',NULL),
 (45,45,'2023-10-07 12:07:31',NULL),
 (46,46,'2023-10-07 14:48:03',NULL),
 (47,47,'2023-10-07 15:59:48',NULL),
 (48,48,'2023-10-07 17:21:56',NULL),
 (49,49,'2023-10-09 08:57:31',NULL),
 (50,50,'2023-10-09 09:59:50',NULL),
 (51,51,'2023-10-09 10:14:16',NULL),
 (52,52,'2023-10-09 10:18:43',NULL),
 (53,53,'2023-10-09 10:24:40',NULL),
 (54,54,'2023-10-09 10:38:06',NULL),
 (55,55,'2023-10-09 10:49:22',NULL),
 (56,56,'2023-10-09 10:59:43',NULL),
 (57,57,'2023-10-09 11:06:43',NULL),
 (59,58,'2023-10-09 11:42:46',NULL),
 (60,59,'2023-10-09 11:50:09',NULL),
 (61,60,'2023-10-09 11:53:29',NULL),
 (62,61,'2023-10-09 12:13:34',NULL),
 (63,62,'2023-10-09 12:13:34',NULL),
 (64,63,'2023-10-09 13:06:55',NULL),
 (65,64,'2023-10-09 15:00:22',NULL),
 (66,65,'2023-10-09 15:04:31',NULL),
 (67,66,'2023-10-09 15:04:31',NULL),
 (68,67,'2023-10-10 08:48:28',NULL),
 (69,68,'2023-10-10 09:09:44',NULL),
 (70,69,'2023-10-10 11:44:41',NULL),
 (71,70,'2023-10-10 11:48:03',NULL),
 (72,71,'2023-10-10 11:52:16',NULL),
 (73,72,'2023-10-10 11:57:53',NULL),
 (74,73,'2023-10-10 13:42:19',NULL),
 (75,74,'2023-10-10 13:43:50',NULL),
 (76,75,'2023-10-10 14:55:11',NULL),
 (77,76,'2023-10-10 16:30:32',NULL),
 (78,77,'2023-10-10 16:38:44',NULL),
 (79,78,'2023-10-10 16:57:31',NULL),
 (80,79,'2023-10-10 17:00:04',NULL),
 (81,80,'2023-10-11 08:43:14',NULL),
 (82,81,'2023-10-11 08:58:56',NULL),
 (83,82,'2023-10-11 09:00:07',NULL),
 (84,83,'2023-10-11 10:07:03',NULL),
 (85,84,'2023-10-11 11:07:47',NULL),
 (86,85,'2023-10-11 11:09:30',NULL),
 (87,86,'2023-10-11 13:08:56',NULL),
 (88,87,'2023-10-11 14:26:45',NULL),
 (89,88,'2023-10-11 14:28:15',NULL),
 (90,89,'2023-10-11 14:34:24',NULL),
 (91,90,'2023-10-11 15:06:34',NULL),
 (92,91,'2023-10-11 15:07:54',NULL),
 (93,92,'2023-10-11 16:00:01',NULL),
 (94,93,'2023-10-11 16:08:27',NULL),
 (95,94,'2023-10-11 16:14:17',NULL),
 (96,95,'2023-10-12 00:10:40',NULL),
 (97,96,'2023-10-12 00:12:02',NULL),
 (98,97,'2023-10-12 08:20:31',NULL),
 (99,98,'2023-10-12 08:51:17',NULL),
 (100,99,'2023-10-12 08:57:38',NULL),
 (101,100,'2023-10-12 09:05:37',NULL),
 (102,101,'2023-10-12 10:02:55',NULL),
 (103,102,'2023-10-12 10:27:48',NULL),
 (104,103,'2023-10-12 10:53:34',NULL),
 (105,104,'2023-10-12 11:13:59',NULL),
 (106,105,'2023-10-12 11:17:27',NULL),
 (107,106,'2023-10-12 13:17:08',NULL),
 (108,107,'2023-10-12 13:18:13',NULL),
 (109,108,'2023-10-12 13:28:20',NULL),
 (110,109,'2023-10-12 13:36:14',NULL),
 (111,110,'2023-10-12 13:54:17',NULL),
 (112,111,'2023-10-12 15:32:44',NULL),
 (113,112,'2023-10-12 15:35:33',NULL),
 (114,113,'2023-10-13 10:25:49',NULL),
 (115,114,'2023-10-13 11:11:38',NULL),
 (116,115,'2023-10-13 14:03:02',NULL),
 (117,116,'2023-10-13 15:34:15',NULL),
 (118,117,'2023-10-13 15:46:11',NULL),
 (119,118,'2023-10-13 16:25:10',NULL),
 (120,119,'2023-10-16 11:38:14',NULL),
 (121,120,'2023-10-16 14:36:07',NULL),
 (122,121,'2023-10-17 09:25:21',NULL),
 (123,122,'2023-10-17 13:19:40',NULL),
 (124,123,'2023-10-18 10:51:56',NULL),
 (125,124,'2023-10-18 12:27:22',NULL),
 (126,125,'2023-10-18 12:28:39',NULL),
 (127,126,'2023-10-18 13:26:57',NULL),
 (128,127,'2023-10-18 15:32:46',NULL),
 (129,128,'2023-10-18 22:40:04',NULL),
 (130,129,'2023-10-18 23:04:40',NULL),
 (131,130,'2023-10-18 23:07:20',NULL),
 (132,131,'2023-10-18 23:15:26',NULL),
 (133,132,'2023-10-19 09:17:28',NULL),
 (134,133,'2023-10-19 09:42:59',NULL),
 (135,134,'2023-10-19 15:00:25',NULL),
 (136,135,'2023-10-19 16:47:53',NULL),
 (137,136,'2023-10-20 09:58:16',NULL),
 (138,137,'2023-10-20 10:00:20',' ALTER TABLE tblsync ADD COLUMN query text '),
 (139,138,'2023-10-20 11:39:40',NULL),
 (140,139,'2023-10-20 11:52:30',NULL),
 (141,140,'2023-10-20 14:32:44',NULL),
 (142,141,'2023-10-21 10:40:45',' ALTER TABLE tbldeposit ADD COLUMN jamupt datetime not null default \'1111-11-11 00:00:00\''),
 (143,142,'2023-10-21 11:03:01','UPDATE tbljenistransaksi set kodetransaksi = \'2001\' WHERE nama = \'Downpayment Supplier\';\r\n                          UPDATE tbljenistransaksi set kodetransaksi = \'2002\' WHERE nama = \'Downpayment Customer\';\r\n                          UPDATE tbljenistransaksi set kodetransaksi = \'2021\' WHERE nama = \'Downpayment Supplier Return\';\r\n                          UPDATE tbljenistransaksi set kodetransaksi = \'2022\' WHERE nama = \'Downpayment Customer Return\';'),
 (144,143,'2023-10-21 16:19:45',' ALTER TABLE tbllinkpr ADD COLUMN jamupt datetime not null default \'1111-11-11 00:00:00\''),
 (145,144,'2023-10-21 16:25:13',' ALTER TABLE tbllinkpr ADD COLUMN linkper varchar(50)  after id '),
 (146,145,'2023-10-21 16:47:05',' ALTER TABLE tblinkpr ADD COLUMN group varchar(50) not null default \'\' after idpr '),
 (147,146,'2023-10-21 16:50:02',' ALTER TABLE tbllinkpr ADD COLUMN subgroup varchar(50) not null default \'\''),
 (148,147,'2023-10-21 18:26:07',' ALTER TABLE tblkasd ADD COLUMN amounteqv double default 0'),
 (149,148,'2023-10-23 08:23:48','INSERT INTO tbllinkpr(linkper, idpr, ccy, jenistrans, iskredit, subgroup) VALUES \r\n                                            (\'Persediaan\',,\'IDR\',,0), \r\n                                            (\'Rugi Rusak / Hilang Aktiva Tetap\',,\'IDR\',,0), \r\n                                            (\'Laba (Rugi) Ditahan\',,\'IDR\',,0), \r\n                                            (\'Laba (Rugi) Periode Sebelumnya\',,\'IDR\',,0), \r\n                                            (\'Laba (Rugi) Periode Berjalan\',,\'IDR\',,0), \r\n                                            (\'Ikhtisar Laba (Rugi)\',,\'IDR\',,0),\r\n                                            (\'Penarikan Selisih Kurs\',,\'IDR\',,0), \r\n                                            (\'Perkiraan Perantara\',,\'IDR\',,0), \r\n                                            (\'Perkiraan Unassign\',,\'IDR\',,0), \r\n\r\n                                            (\'Pembelian Cash Tanpa Item\',\'18\',\'IDR\',\'1005\',0, \'cash\'), \r\n                                            (\'Pembelian Cash Tanpa Item\',\'Potongan Pembelian IDR\',\'IDR\',\'1005\',1, \'cash\'), \r\n                                            (\'Pembelian Cash Tanpa Item [Tax-PPN]\',\'PPN Masukan IDR\',\'IDR\',\'1005\',0, \'cash\'), \r\n                                            (\'Pembelian Cash\',\'18\',\'IDR\',\'1005\',1, \'cash\'), \r\n                                            (\'Pembelian Cash Tanpa Item\',\'Potongan Pembelian IDR\',\'IDR\',\'1005\',1, \'cash\'), \r\n                                            (\'Pembelian Cash Tanpa Item [Tax-PPN]\',\'PPN Masukan IDR\',\'IDR\',\'1005\',0, \'cash\'), \r\n                                            (\'Pembelian Cash\',\'18\',\'IDR\',\'1005\',1, \'cash\'), \r\n                                            (\'Pembelian Cash [Discount]\',\'Potongan Pembelian IDR\',\'IDR\',\'1005\',1, \'cash\'), \r\n                                            (\'Pembelian Cash [Tax-PPN]\',\'PPN Masukan IDR\',\'IDR\',\'1005\',0, \'cash\'), \r\n\r\n                                            (\'Penjualan Eceran Tanpa Item\',\'11\',\'IDR\',\'1050\',1, \'eceran\'), \r\n                                            (\'Penjualan Eceran Tanpa Item [Discount]\',\'Potongan Penjualan IDR\',\'IDR\',\'1050\',0, \'eceran\'), \r\n                                            (\'Penjualan Eceran Tanpa Item [Tax-PPN]\',\'PPN Potongan IDR\',\'IDR\',\'1050\',1, \'eceran\'), \r\n                                            (\'Penjualan Eceran\',\'11\',\'IDR\',\'1050\',1, \'eceran\'), \r\n                                            (\'Penjualan Eceran [Discount]\',\'Potongan Penjualan IDR\',\'IDR\',\'1050\',0, \'eceran\'), \r\n                                            (\'Penjualan Eceran [Tax-PPN]\',\'PPN Keluaran IDR\',\'IDR\',\'1050\',1, \'eceran\'), \r\n                                            (\'Penjualan Eceran Non-Stock Item\',\'11\',\'IDR\',\'1050\',1, \'eceran\'), \r\n                                            (\'Penjualan Eceran Non-Stock Item [Discount]\',\'Potongan Penjualan IDR\',\'IDR\',\'1050\',0, \'eceran\'), \r\n                                            (\'Penjualan Eceran Non-Stock Item [Tax-PPN]\',\'PPN Keluaran IDR\',\'IDR\',\'1050\',1, \'eceran\'), \r\n\r\n                                            (\'Pembelian Credit Tanpa Item\',\'18\',\'IDR\',\'1005\',0,\'Credit\'), \r\n                                            (\'Pembelian Credit Tanpa Item [Discount]\',\'Potongan Pembelian IDR\',\'IDR\',\'1005\',1,\'Credit\'), \r\n                                            (\'Pembelian Credit Tanpa Item [Tax-PPN]\',\'PPN Masukan IDR\',\'IDR\',\'1005\',0,\'Credit\'), \r\n                                            (\'Hutang Pembelian Credit Tanpa Item\',\'94\',\'IDR\',\'1005\',1,\'Credit\'), \r\n                                            (\'Pembelian Credit\',\'18\',\'IDR\',\'1005\',0,\'Credit\'), \r\n                                            (\'Pembelian Credit [Discount]\',\'Potongan Pembelian IDR\',\'IDR\',\'1005\',1,\'Credit\'), \r\n                                            (\'Pembelian Credit [Tax-PPN]\',\'PPN Masukan IDR\',\'IDR\',\'1005\',0,\'Credit\'), \r\n                                            (\'Hutang Pembelian Credit\',\'94\',\'IDR\',\'1005\',1,\'Credit\'), \r\n                                            (\'Hutang Pembelian Credit *2\',\'94\',\'IDR\',\'1005\',1,\'Credit\'), \r\n                                            (\'Pembelian Credit Non-Stock Item\',\'18\',\'IDR\',\'1005\',1,\'Credit\'), \r\n                                            (\'Pembelian Credit Non-Stock Item [Discount]\',\'Potongan Pembelian IDR\',\'IDR\',\'1005\',1,\'Credit\'), \r\n                                            (\'Pembelian Credit Non-Stock Item [Tax-PPN]\',\'PPN Masukan IDR\',\'IDR\',\'1005\',0,\'Credit\'), \r\n                                            (\'Hutang Pembelian Credit Non-Stock Item\',\'94\',\'IDR\',\'1005\',1,\'Credit\'), \r\n                                            (\'Hutang Pembelian Credit *2 Non-Stock Item\',\'94\',\'IDR\',\'1005\',1,\'Credit\'), \r\n\r\n                                            (\'Retur Pembelian Cash\',\'Retur Pembelian IDR\',\'IDR\',\'1005\',1,\'Retur Cash\'), \r\n                                            (\'Retur Pembelian Cash [Discount]\',\'Retur Pembelian IDR\',\'IDR\',\'1005\',0,\'Retur Cash),\r\n                                            (\'Retur Pembelian Cash [Tax-PPN]\',\'PPN Masukan IDR\',\'IDR\',\'1005\',1,\'Retur Cash\'), \r\n                                            (\'Retur Pembelian Pembelian Cash Non-Stock Item\',\'Retur Pembelian IDR\',\'IDR\',\'1005\',1,\'Retur Cash\'), \r\n                                            (\'Retur Pembelian Cash Non-Stock Item [Discount]\',\'Retur Pembelian IDR\',\'IDR\',\'1005\',0,\'Retur Cash\'), \r\n                                            (\'Retur Pembelian Cash Non-Stock Item [Tax-PPN]\',\'PPN Masukan IDR\',\'IDR\',\'1005\',1,\'Retur Cash\'), \r\n\r\n                                            (\'Retur Pembelian Credit\',\'Retur Pembelian IDR\',\'IDR\',\'1005\',1,\'Retur Credit\'), \r\n                                            (\'Retur Pembelian Credit [Discount]\',\'Retur Pembelian IDR\',\'IDR\',\'1005\',0,\'Retur Credit\'), \r\n                                            (\'Retur Pembelian Credit [Tax-PPN]\',\'PPN Masukan IDR\',\'IDR\',\'1005\',1,\'Retur Credit\'), \r\n                                            (\'Hutang Retur Pembelian Credit\',\'94\',\'IDR\',\'1005\',0,\'Retur Credit\'), \r\n                                            (\'Retur Pembelian Credit Non-Stock Item\',\'Retur Pembelian IDR\',\'IDR\',\'1005\',1,\'Retur Credit\'), \r\n                                            (\'Retur Pembelian Credit Non-Stock Item [Discount]\',\'Retur Pembelian IDR\',\'IDR\',\'1005\',0,\'Retur Credit\'), \r\n                                            (\'Retur Pembelian Credit Non-Stock Item [Tax-PPN]\',\'PPN Masukan IDR\',\'IDR\',\'1005\',1,\'Retur Credit\'), \r\n                                            (\'Hutang Retur Pembelian Credit Non-Stock Item\',\'94\',\'IDR\',\'1005\',0,\'Retur Credit\'), \r\n\r\n                                            (\'Debit Note Hutang Tanpa Item\',\'Potongan Pembelian IDR\',\'IDR\',\'1005\',1,\'Debit Note\'), \r\n                                            (\'Hutang Debit Note Hutang Tanpa Item\',\'94\',\'IDR\',\'1005\',0,\'Debit Note\'), \r\n                                            (\'Debit Note Hutang Pembelian\',\'Potongan Pembelian IDR\',\'IDR\',\'1005\',1,\'Debit Note\'), \r\n                                            (\'Hutang Debit Note Hutang Pembelian\',\'94\',\'IDR\',\'1005\',0,\'Debit Note\'), \r\n                                            (\'Debit Note Hutang Pembelian Non-Stock Item\',\'Potongan Pembelian IDR\',\'IDR\',\'1005\',1,\'Debit Note\'), \r\n                                            (\'Hutang Debit Note Hutang Pembelian Non-Stock Item\',\'94\',\'IDR\',\'1005\',0,\'Debit Note\'), \r\n\r\n                                            (\'Credit NOte Hutang Tanpa Item\',\'36\',\'IDR\',\'1005\',0,\'Credit Note\'), \r\n                                            (\'Hutang Credit Note Hutang Tanpa Item\',\'94\',\'IDR\',\'1005\',1,\'Credit Note\'), \r\n                                            (\'Credit Note Hutang Pembelian\',\'36\',\'IDR\',\'1005\',0,\'Credit Note\'), \r\n                                            (\'Hutang Credit Note Hutang Pembelian\',\'94\',\'IDR\',\'1005\',1,\'Credit Note\'), \r\n                                            (\'Credit NOte Hutang Pembelian Non-Stock Item\',\'36\',\'IDR\',\'1005\',0,\'Credit Note\'), \r\n                                            (\'Hutang Credit Note Hutang Pembelian Non-Stock Item\',\'94\',\'IDR\',\'1005\',1,\'Credit Note\'), \r\n\r\n                                            (\'Deposit Pembelian\',\'25\',\'IDR\',\'1005\',0,\'Pembelian Lainnya\'), \r\n                                            (\'Denda Pembayaran\',\'Denda Pembayaran Hutang IDR\',\'IDR\',\'1005\',0,\'Pembelian Lainnya\'), \r\n                                            (\'Hutang\',\'Potongan Pembelian IDR\',\'IDR\',\'1005\',1,\'Pembelian Lainnya\'), \r\n\r\n                                            (\'Penjualan Cash Tanpa Item\',\'11\',\'IDR\',\'1050\',1,\'Cash\'), \r\n                                            (\'Penjualan Cash Tanpa Item [Discount]\',\'Potongan Penjualan IDR\',\'IDR\',\'1050\',0,\'Cash\'), \r\n                                            (\'Penjualan Cash Tanpa Item [Tax-PPN]\',\'PPN Keluaran IDR\',\'IDR\',\'1050\',1,\'Cash\'), \r\n                                            (\'Penjualan Cash\',\'11\',\'IDR\',\'1050\',1,\'Cash\'), \r\n                                            (\'Penjualan Cash [Discount]\',\'Potongan Penjualan IDR\',\'IDR\',\'1050\',0,\'Cash\'), \r\n                                            (\'Penjualan Cash [Tax-PPN]\',\'PPN Keluaran IDR\',\'IDR\',\'1050\',1,\'Cash\'), \r\n                                            (\'Penjualan Cash Non-Stock Item\',\'11\',\'IDR\',\'1050\',1,\'Cash\'), \r\n                                            (\'Penjualan Cash Non-Stock Item [Discount]\',\'Potongan Penjualan IDR\',\'IDR\',\'1050\',0,\'Cash\'), \r\n                                            (\'Penjualan Cash Non-Stock Item [Tax-PPN]\',\'PPN Keluaran IDR\',\'IDR\',\'1050\',1,\'Cash\'), \r\n\r\n                                            (\'Penjualan Credit Tanpa Item\',\'11\',\'IDR\',\'1050\',1,\'Credit\'), \r\n                                            (\'Penjualan Credit Tanpa Item [Discount]\',\'Potongan Penjualan IDR\',\'IDR\',\'1050\',0,\'Credit\'), \r\n                                            (\'Penjualan Credit Tanpa Item [Tax-PPN]\',\'PPN Keluaran IDR\',\'IDR\',\'1050\',1,\'Credit\'), \r\n                                            (\'Piutang Penjualan Credit Tanpa Item\',\'17\',\'IDR\',\'1050\',1,\'Credit\'), \r\n                                            (\'Penjualan Credit\',\'11\',\'IDR\',\'1050\',1,\'Credit\'), \r\n                                            (\'Penjualan Credit [Discount]\',\'Potongan Penjualan IDR\',\'IDR\',\'1050\',0,\'Credit\'), \r\n                                            (\'Penjualan Credit [Tax-PPN]\',\'PPN Keluaran IDR\',\'IDR\',\'1050\',1,\'Credit\'), \r\n                                            (\'Piutang Penjualan Credit\',\'17\',\'IDR\',\'1050\',0,\'Credit\'), \r\n                                            (\'Penjualan Credit Non-Stock Item\',\'11\',\'IDR\',\'1050\',0,\'Credit\'), \r\n                                            (\'Penjualan Credit Non-Stock Item [Discount]\',\'Potongan Penjualan IDR\',\'IDR\',\'1050\',1,\'Credit\'), \r\n                                            (\'Penjualan Credit Non-Stock Item [Tax-PPN]\',\'PPN Keluaran IDR\',\'IDR\',\'1050\',1,\'Credit\'), \r\n                                            (\'Piutang Penjualan Credit Non-Stock Item\',\'17\',\'IDR\',\'1050\',0,\'Credit\'), \r\n\r\n                                            (\'Retur Penjualan Cash\',\'15\',\'IDR\',\'1050\',0,\'Retur Cash\'), \r\n                                            (\'Retur Penjualan Cash [Discount]\',\'15\',\'IDR\',\'1050\',1,\'Retur Cash\'), \r\n                                            (\'Retur Penjualan Cash [Tax-PPN]\',\'PPN Keluaran IDR\',\'IDR\',\'1050\',0,\'Retur Cash\'), \r\n                                            (\'Retur Penjualan Cash [Item Rusak - HPP]\',\'#Koreksi Stock (Retur Penj Rusak)\',\'IDR\',\'1050\',0,\'Retur Cash\'), \r\n                                            (\'Retur Penjualan Cash [Item Rusak - Cost]\', \'Koreksi Stock (Retur Penj Rusak)\', \'IDR\', \'1050\', 0, \'Retur Cash\'),\r\n                                            (\'Retur Penjualan Cash Non-Stock Item\', \'15\', \'IDR\', \'1050\', 0, \'Retur Cash\'),\r\n                                            (\'Retur Penjualan Cash Non-Stock Item [Discount]\', \'15\', \'IDR\', \'1050\', 1, \'Retur Cash\'),\r\n                                            (\'Retur Penjualan Cash Non-Stock Item [Tax-PPN]\', \'PPN Keluaran IDR\', \'IDR\', \'1050\', 0, \'Retur Cash\'),\r\n\r\n                                            (\'Retur Penjualan Credit\', \'Retur Penjualan IDR\', \'IDR\', \'1050\', 0, \'Retur Credit\'),\r\n                                            (\'Retur Penjualan Credit [Discount]\', \'Retur Penjualan IDR\', \'IDR\', \'1050\', 1, \'Retur Credit\'),\r\n                                            (\'Retur Penjualan Credit [Tax-PPN]\', \'PPN Keluaran IDR\', \'IDR\', \'1050\', 0, \'Retur Credit\'),\r\n                                            (\'Retur Penjualan [Item Rusak - HPP]\', \'#Koreksi Stock (Retur Penj Rusak)\', \'IDR\', \'1050\', 0, \'Retur Credit\'),\r\n                                            (\'Retur Penjualan Credit [Item Rusak - Cost]\', \'Koreksi Stock (Retur Penj Rusak)\', \'IDR\', \'1050\', 0, \'Retur Credit\'),\r\n                                            (\'Piutang Retur Penjualan Credit\', \'17\', \'IDR\', \'1050\', 1, \'Retur Credit\'),\r\n                                            (\'Retur Penjualan Credit Non-Stock Item\', \'15\',\'IDR\', \'1050\', 0, \'Retur Credit\'),\r\n                                            (\'Retur Penjualan Credit Non-Stock Item [Discount]\', \'15\', \'IDR\', \'1050\', 0, \'Retur Credit\') '),
 (150,149,'2023-10-23 08:23:48',' ALTER TABLE tblkas ADD COLUMN tipeclient varchar(5) not null default \'\''),
 (151,150,'2023-10-23 08:27:26','INSERT INTO tbllinkpr(linkper, idpr, ccy, jenistrans, iskredit, subgroup) VALUES \r\n                                            (\'Persediaan\',,\'IDR\',,0), \r\n                                            (\'Rugi Rusak / Hilang Aktiva Tetap\',,\'IDR\',,0), \r\n                                            (\'Laba (Rugi) Ditahan\',,\'IDR\',,0), \r\n                                            (\'Laba (Rugi) Periode Sebelumnya\',,\'IDR\',,0), \r\n                                            (\'Laba (Rugi) Periode Berjalan\',,\'IDR\',,0), \r\n                                            (\'Ikhtisar Laba (Rugi)\',,\'IDR\',,0),\r\n                                            (\'Penarikan Selisih Kurs\',,\'IDR\',,0), \r\n                                            (\'Perkiraan Perantara\',,\'IDR\',,0), \r\n                                            (\'Perkiraan Unassign\',,\'IDR\',,0), \r\n\r\n                                            (\'Pembelian Cash Tanpa Item\',\'18\',\'IDR\',\'1005\',0, \'cash\'), \r\n                                            (\'Pembelian Cash Tanpa Item\',\'Potongan Pembelian IDR\',\'IDR\',\'1005\',1, \'cash\'), \r\n                                            (\'Pembelian Cash Tanpa Item [Tax-PPN]\',\'PPN Masukan IDR\',\'IDR\',\'1005\',0, \'cash\'), \r\n                                            (\'Pembelian Cash\',\'18\',\'IDR\',\'1005\',1, \'cash\'), \r\n                                            (\'Pembelian Cash Tanpa Item\',\'Potongan Pembelian IDR\',\'IDR\',\'1005\',1, \'cash\'), \r\n                                            (\'Pembelian Cash Tanpa Item [Tax-PPN]\',\'PPN Masukan IDR\',\'IDR\',\'1005\',0, \'cash\'), \r\n                                            (\'Pembelian Cash\',\'18\',\'IDR\',\'1005\',1, \'cash\'), \r\n                                            (\'Pembelian Cash [Discount]\',\'Potongan Pembelian IDR\',\'IDR\',\'1005\',1, \'cash\'), \r\n                                            (\'Pembelian Cash [Tax-PPN]\',\'PPN Masukan IDR\',\'IDR\',\'1005\',0, \'cash\'), \r\n\r\n                                            (\'Penjualan Eceran Tanpa Item\',\'11\',\'IDR\',\'1050\',1, \'eceran\'), \r\n                                            (\'Penjualan Eceran Tanpa Item [Discount]\',\'Potongan Penjualan IDR\',\'IDR\',\'1050\',0, \'eceran\'), \r\n                                            (\'Penjualan Eceran Tanpa Item [Tax-PPN]\',\'PPN Potongan IDR\',\'IDR\',\'1050\',1, \'eceran\'), \r\n                                            (\'Penjualan Eceran\',\'11\',\'IDR\',\'1050\',1, \'eceran\'), \r\n                                            (\'Penjualan Eceran [Discount]\',\'Potongan Penjualan IDR\',\'IDR\',\'1050\',0, \'eceran\'), \r\n                                            (\'Penjualan Eceran [Tax-PPN]\',\'PPN Keluaran IDR\',\'IDR\',\'1050\',1, \'eceran\'), \r\n                                            (\'Penjualan Eceran Non-Stock Item\',\'11\',\'IDR\',\'1050\',1, \'eceran\'), \r\n                                            (\'Penjualan Eceran Non-Stock Item [Discount]\',\'Potongan Penjualan IDR\',\'IDR\',\'1050\',0, \'eceran\'), \r\n                                            (\'Penjualan Eceran Non-Stock Item [Tax-PPN]\',\'PPN Keluaran IDR\',\'IDR\',\'1050\',1, \'eceran\'), \r\n\r\n                                            (\'Pembelian Credit Tanpa Item\',\'18\',\'IDR\',\'1005\',0,\'Credit\'), \r\n                                            (\'Pembelian Credit Tanpa Item [Discount]\',\'Potongan Pembelian IDR\',\'IDR\',\'1005\',1,\'Credit\'), \r\n                                            (\'Pembelian Credit Tanpa Item [Tax-PPN]\',\'PPN Masukan IDR\',\'IDR\',\'1005\',0,\'Credit\'), \r\n                                            (\'Hutang Pembelian Credit Tanpa Item\',\'94\',\'IDR\',\'1005\',1,\'Credit\'), \r\n                                            (\'Pembelian Credit\',\'18\',\'IDR\',\'1005\',0,\'Credit\'), \r\n                                            (\'Pembelian Credit [Discount]\',\'Potongan Pembelian IDR\',\'IDR\',\'1005\',1,\'Credit\'), \r\n                                            (\'Pembelian Credit [Tax-PPN]\',\'PPN Masukan IDR\',\'IDR\',\'1005\',0,\'Credit\'), \r\n                                            (\'Hutang Pembelian Credit\',\'94\',\'IDR\',\'1005\',1,\'Credit\'), \r\n                                            (\'Hutang Pembelian Credit *2\',\'94\',\'IDR\',\'1005\',1,\'Credit\'), \r\n                                            (\'Pembelian Credit Non-Stock Item\',\'18\',\'IDR\',\'1005\',1,\'Credit\'), \r\n                                            (\'Pembelian Credit Non-Stock Item [Discount]\',\'Potongan Pembelian IDR\',\'IDR\',\'1005\',1,\'Credit\'), \r\n                                            (\'Pembelian Credit Non-Stock Item [Tax-PPN]\',\'PPN Masukan IDR\',\'IDR\',\'1005\',0,\'Credit\'), \r\n                                            (\'Hutang Pembelian Credit Non-Stock Item\',\'94\',\'IDR\',\'1005\',1,\'Credit\'), \r\n                                            (\'Hutang Pembelian Credit *2 Non-Stock Item\',\'94\',\'IDR\',\'1005\',1,\'Credit\'), \r\n\r\n                                            (\'Retur Pembelian Cash\',\'Retur Pembelian IDR\',\'IDR\',\'1005\',1,\'Retur Cash\'), \r\n                                            (\'Retur Pembelian Cash [Discount]\',\'Retur Pembelian IDR\',\'IDR\',\'1005\',0,\'Retur Cash),\r\n                                            (\'Retur Pembelian Cash [Tax-PPN]\',\'PPN Masukan IDR\',\'IDR\',\'1005\',1,\'Retur Cash\'), \r\n                                            (\'Retur Pembelian Pembelian Cash Non-Stock Item\',\'Retur Pembelian IDR\',\'IDR\',\'1005\',1,\'Retur Cash\'), \r\n                                            (\'Retur Pembelian Cash Non-Stock Item [Discount]\',\'Retur Pembelian IDR\',\'IDR\',\'1005\',0,\'Retur Cash\'), \r\n                                            (\'Retur Pembelian Cash Non-Stock Item [Tax-PPN]\',\'PPN Masukan IDR\',\'IDR\',\'1005\',1,\'Retur Cash\'), \r\n\r\n                                            (\'Retur Pembelian Credit\',\'Retur Pembelian IDR\',\'IDR\',\'1005\',1,\'Retur Credit\'), \r\n                                            (\'Retur Pembelian Credit [Discount]\',\'Retur Pembelian IDR\',\'IDR\',\'1005\',0,\'Retur Credit\'), \r\n                                            (\'Retur Pembelian Credit [Tax-PPN]\',\'PPN Masukan IDR\',\'IDR\',\'1005\',1,\'Retur Credit\'), \r\n                                            (\'Hutang Retur Pembelian Credit\',\'94\',\'IDR\',\'1005\',0,\'Retur Credit\'), \r\n                                            (\'Retur Pembelian Credit Non-Stock Item\',\'Retur Pembelian IDR\',\'IDR\',\'1005\',1,\'Retur Credit\'), \r\n                                            (\'Retur Pembelian Credit Non-Stock Item [Discount]\',\'Retur Pembelian IDR\',\'IDR\',\'1005\',0,\'Retur Credit\'), \r\n                                            (\'Retur Pembelian Credit Non-Stock Item [Tax-PPN]\',\'PPN Masukan IDR\',\'IDR\',\'1005\',1,\'Retur Credit\'), \r\n                                            (\'Hutang Retur Pembelian Credit Non-Stock Item\',\'94\',\'IDR\',\'1005\',0,\'Retur Credit\'), \r\n\r\n                                            (\'Debit Note Hutang Tanpa Item\',\'Potongan Pembelian IDR\',\'IDR\',\'1005\',1,\'Debit Note\'), \r\n                                            (\'Hutang Debit Note Hutang Tanpa Item\',\'94\',\'IDR\',\'1005\',0,\'Debit Note\'), \r\n                                            (\'Debit Note Hutang Pembelian\',\'Potongan Pembelian IDR\',\'IDR\',\'1005\',1,\'Debit Note\'), \r\n                                            (\'Hutang Debit Note Hutang Pembelian\',\'94\',\'IDR\',\'1005\',0,\'Debit Note\'), \r\n                                            (\'Debit Note Hutang Pembelian Non-Stock Item\',\'Potongan Pembelian IDR\',\'IDR\',\'1005\',1,\'Debit Note\'), \r\n                                            (\'Hutang Debit Note Hutang Pembelian Non-Stock Item\',\'94\',\'IDR\',\'1005\',0,\'Debit Note\'), \r\n\r\n                                            (\'Credit NOte Hutang Tanpa Item\',\'36\',\'IDR\',\'1005\',0,\'Credit Note\'), \r\n                                            (\'Hutang Credit Note Hutang Tanpa Item\',\'94\',\'IDR\',\'1005\',1,\'Credit Note\'), \r\n                                            (\'Credit Note Hutang Pembelian\',\'36\',\'IDR\',\'1005\',0,\'Credit Note\'), \r\n                                            (\'Hutang Credit Note Hutang Pembelian\',\'94\',\'IDR\',\'1005\',1,\'Credit Note\'), \r\n                                            (\'Credit NOte Hutang Pembelian Non-Stock Item\',\'36\',\'IDR\',\'1005\',0,\'Credit Note\'), \r\n                                            (\'Hutang Credit Note Hutang Pembelian Non-Stock Item\',\'94\',\'IDR\',\'1005\',1,\'Credit Note\'), \r\n\r\n                                            (\'Deposit Pembelian\',\'25\',\'IDR\',\'1005\',0,\'Pembelian Lainnya\'), \r\n                                            (\'Denda Pembayaran\',\'Denda Pembayaran Hutang IDR\',\'IDR\',\'1005\',0,\'Pembelian Lainnya\'), \r\n                                            (\'Hutang\',\'Potongan Pembelian IDR\',\'IDR\',\'1005\',1,\'Pembelian Lainnya\'), \r\n\r\n                                            (\'Penjualan Cash Tanpa Item\',\'11\',\'IDR\',\'1050\',1,\'Cash\'), \r\n                                            (\'Penjualan Cash Tanpa Item [Discount]\',\'Potongan Penjualan IDR\',\'IDR\',\'1050\',0,\'Cash\'), \r\n                                            (\'Penjualan Cash Tanpa Item [Tax-PPN]\',\'PPN Keluaran IDR\',\'IDR\',\'1050\',1,\'Cash\'), \r\n                                            (\'Penjualan Cash\',\'11\',\'IDR\',\'1050\',1,\'Cash\'), \r\n                                            (\'Penjualan Cash [Discount]\',\'Potongan Penjualan IDR\',\'IDR\',\'1050\',0,\'Cash\'), \r\n                                            (\'Penjualan Cash [Tax-PPN]\',\'PPN Keluaran IDR\',\'IDR\',\'1050\',1,\'Cash\'), \r\n                                            (\'Penjualan Cash Non-Stock Item\',\'11\',\'IDR\',\'1050\',1,\'Cash\'), \r\n                                            (\'Penjualan Cash Non-Stock Item [Discount]\',\'Potongan Penjualan IDR\',\'IDR\',\'1050\',0,\'Cash\'), \r\n                                            (\'Penjualan Cash Non-Stock Item [Tax-PPN]\',\'PPN Keluaran IDR\',\'IDR\',\'1050\',1,\'Cash\'), \r\n\r\n                                            (\'Penjualan Credit Tanpa Item\',\'11\',\'IDR\',\'1050\',1,\'Credit\'), \r\n                                            (\'Penjualan Credit Tanpa Item [Discount]\',\'Potongan Penjualan IDR\',\'IDR\',\'1050\',0,\'Credit\'), \r\n                                            (\'Penjualan Credit Tanpa Item [Tax-PPN]\',\'PPN Keluaran IDR\',\'IDR\',\'1050\',1,\'Credit\'), \r\n                                            (\'Piutang Penjualan Credit Tanpa Item\',\'17\',\'IDR\',\'1050\',1,\'Credit\'), \r\n                                            (\'Penjualan Credit\',\'11\',\'IDR\',\'1050\',1,\'Credit\'), \r\n                                            (\'Penjualan Credit [Discount]\',\'Potongan Penjualan IDR\',\'IDR\',\'1050\',0,\'Credit\'), \r\n                                            (\'Penjualan Credit [Tax-PPN]\',\'PPN Keluaran IDR\',\'IDR\',\'1050\',1,\'Credit\'), \r\n                                            (\'Piutang Penjualan Credit\',\'17\',\'IDR\',\'1050\',0,\'Credit\'), \r\n                                            (\'Penjualan Credit Non-Stock Item\',\'11\',\'IDR\',\'1050\',0,\'Credit\'), \r\n                                            (\'Penjualan Credit Non-Stock Item [Discount]\',\'Potongan Penjualan IDR\',\'IDR\',\'1050\',1,\'Credit\'), \r\n                                            (\'Penjualan Credit Non-Stock Item [Tax-PPN]\',\'PPN Keluaran IDR\',\'IDR\',\'1050\',1,\'Credit\'), \r\n                                            (\'Piutang Penjualan Credit Non-Stock Item\',\'17\',\'IDR\',\'1050\',0,\'Credit\'), \r\n\r\n                                            (\'Retur Penjualan Cash\',\'15\',\'IDR\',\'1050\',0,\'Retur Cash\'), \r\n                                            (\'Retur Penjualan Cash [Discount]\',\'15\',\'IDR\',\'1050\',1,\'Retur Cash\'), \r\n                                            (\'Retur Penjualan Cash [Tax-PPN]\',\'PPN Keluaran IDR\',\'IDR\',\'1050\',0,\'Retur Cash\'), \r\n                                            (\'Retur Penjualan Cash [Item Rusak - HPP]\',\'#Koreksi Stock (Retur Penj Rusak)\',\'IDR\',\'1050\',0,\'Retur Cash\'), \r\n                                            (\'Retur Penjualan Cash [Item Rusak - Cost]\', \'Koreksi Stock (Retur Penj Rusak)\', \'IDR\', \'1050\', 0, \'Retur Cash\'),\r\n                                            (\'Retur Penjualan Cash Non-Stock Item\', \'15\', \'IDR\', \'1050\', 0, \'Retur Cash\'),\r\n                                            (\'Retur Penjualan Cash Non-Stock Item [Discount]\', \'15\', \'IDR\', \'1050\', 1, \'Retur Cash\'),\r\n                                            (\'Retur Penjualan Cash Non-Stock Item [Tax-PPN]\', \'PPN Keluaran IDR\', \'IDR\', \'1050\', 0, \'Retur Cash\'),\r\n\r\n                                            (\'Retur Penjualan Credit\', \'Retur Penjualan IDR\', \'IDR\', \'1050\', 0, \'Retur Credit\'),\r\n                                            (\'Retur Penjualan Credit [Discount]\', \'Retur Penjualan IDR\', \'IDR\', \'1050\', 1, \'Retur Credit\'),\r\n                                            (\'Retur Penjualan Credit [Tax-PPN]\', \'PPN Keluaran IDR\', \'IDR\', \'1050\', 0, \'Retur Credit\'),\r\n                                            (\'Retur Penjualan [Item Rusak - HPP]\', \'#Koreksi Stock (Retur Penj Rusak)\', \'IDR\', \'1050\', 0, \'Retur Credit\'),\r\n                                            (\'Retur Penjualan Credit [Item Rusak - Cost]\', \'Koreksi Stock (Retur Penj Rusak)\', \'IDR\', \'1050\', 0, \'Retur Credit\'),\r\n                                            (\'Piutang Retur Penjualan Credit\', \'17\', \'IDR\', \'1050\', 1, \'Retur Credit\'),\r\n                                            (\'Retur Penjualan Credit Non-Stock Item\', \'15\',\'IDR\', \'1050\', 0, \'Retur Credit\'),\r\n                                            (\'Retur Penjualan Credit Non-Stock Item [Discount]\', \'15\', \'IDR\', \'1050\', 0, \'Retur Credit\') '),
 (152,151,'2023-10-23 08:39:09',''),
 (153,152,'2023-10-23 09:25:44',''),
 (154,153,'2023-10-23 11:09:19',' ALTER TABLE tblkas ADD COLUMN jamupt datetime not null default \'1111-11-11 00:00:00\''),
 (155,154,'2023-10-23 16:27:22','ALTER TABLE tbldeposit\r\n                    CHANGE COLUMN kodevendor kodeclient varchar(50) not null default \'\';'),
 (156,155,'2023-10-23 17:05:21','ALTER TABLE tbldeposit\r\n                    CHANGE COLUMN notranspemb noref varchar(50) not null default \'\';'),
 (157,156,'2023-10-24 11:57:18',' ALTER TABLE tbldeposit ADD COLUMN kodesales varchar(15) not null default \'\' after kodeclient '),
 (158,157,'2023-10-24 15:29:29','truncate table tbllinkpr'),
 (159,158,'2023-10-25 08:50:58',' ALTER TABLE tbldebitnoted ADD COLUMN catatan text '),
 (160,159,'2023-10-25 09:48:53','INSERT INTO tbljenistransaksi (kodetransaksi, nama, kodedepan, pakaitahun, pakaibulan)\r\n                            VALUES\r\n                              (\'2031\', \'Debit Note Cust\', \'DNC\', \'1\', \'1\'),\r\n                              (\'2032\', \'Credit Note Cust\', \'CNC\', \'1\', \'1\'),\r\n                              (\'2033\', \'Debit Note Sup\', \'DNS\', \'1\', \'1\'),\r\n                              (\'2034\', \'Credit Note Sup\', \'CNS\', \'1\', \'1\')'),
 (161,160,'2023-10-25 15:22:53',' ALTER TABLE tbldaerah ADD COLUMN status tinyint(4) not null default 0 after lastedittime '),
 (162,161,'2023-10-25 15:31:54',' alter table tbldaerah set entrydate = NULL and lastedittime = NULL where nama like \'Batam\'; \r\n                            ALTER TABLE tbldaerah modify entrytime datetime; \r\n                            ALTER TABLE tbldaerah modify lastedittime datetime;'),
 (163,162,'2023-10-25 15:33:32',' delete from tbldaerah where id = 0; \r\n                            ALTER TABLE tbldaerah modify entrytime datetime; \r\n                            ALTER TABLE tbldaerah modify lastedittime datetime;'),
 (164,163,'2023-10-25 15:45:55','truncate table tbldaerah;\r\n                            ALTER TABLE tbldaerah\r\n                            MODIFY id INT AUTO_INCREMENT;\r\n                            '),
 (165,164,'2023-10-25 15:48:08','INSERT INTO tbldaerah(kode2, kode, nama, nama2, entryby, entrydate, entrytime, lasteditby, lasteditdate, lastedittime, status) VALUES\r\n                        (\'\', \'DAE0006\', \'Batam\', \'\', \'JACKY\', \'2023-10-25 15:41:58\', \'2023-10-25 15:41:58\', \'JACKY\', \'2023-10-25 15:41:58\', \'2023-10-25 15:41:58\', 0),\r\n                        (\'\', \'DAE0001\', \'Daerah 1\', \'\', \'\', \'1111-11-11 00:00:00\', NULL, \'\', \'1111-11-11 00:00:00\', NULL, 0),\r\n                        (\'\', \'DAE0002\', \'Daerah 2\', \'\', \'\', \'1111-11-11 00:00:00\', NULL, \'\', \'1111-11-11 00:00:00\', NULL, 5),\r\n                        (\'\', \'DAE0003\', \'Daerah 3\', \'\', \'\', \'1111-11-11 00:00:00\', NULL, \'\', \'1111-11-11 00:00:00\', NULL, 0),\r\n                        (\'\', \'DAE0004\', \'Daerah 4\', \'\', \'\', \'1111-11-11 00:00:00\', NULL, \'\', \'1111-11-11 00:00:00\', NULL, 0),\r\n                        (\'\', \'DAE0005\', \'Daerah 5\', \'\', \'\', \'1111-11-11 00:00:00\', NULL, \'\', \'1111-11-11 00:00:00\', NULL, 0);'),
 (166,165,'2023-10-26 09:19:23','update tbltipepembelian set kode = \'TPB0001\' where id = 1'),
 (167,166,'2023-10-26 09:53:31',' ALTER TABLE tbldebitnote ADD COLUMN jenistrans VARCHAR(30) not null default \'\' after notrans '),
 (168,167,'2023-10-26 12:01:15',' ALTER TABLE tbldebitnote ADD COLUMN remarkcancel text  after catatan '),
 (169,168,'2023-10-26 13:10:56',' ALTER TABLE tbldebitnote ADD COLUMN jamupt datetime not null default \'1111-11-11 00:00:00\''),
 (170,169,'2023-10-26 14:05:01',' ALTER TABLE tbldebitnote ADD COLUMN ismasukhpp tinyint(1) not null default 0 after remarkcancel '),
 (171,170,'2023-10-26 14:23:51',''),
 (172,171,'2023-10-26 15:17:55',' ALTER TABLE tbldivisi ADD COLUMN jamupt datetime not null default \'1111-11-11 00:00:00\' after lastentrydate '),
 (173,172,'2023-10-26 15:21:44',' ALTER TABLE tbldivisi ADD COLUMN status tinyint(4) not null default 0'),
 (174,173,'2023-10-26 17:10:58','Update tbllinkpr set kode = \'SP\' + id'),
 (175,174,'2023-10-26 17:12:03','UPDATE tbllinkpr\r\n                        SET kode = CONCAT(\'SP\', id);'),
 (176,175,'2023-10-27 10:39:35',' ALTER TABLE tblpurchaseorder ADD COLUMN kurs Double default 0 after ccy '),
 (177,176,'2023-10-27 10:58:08','ALTER TABLE tbldebitnote\r\n                    CHANGE COLUMN notransorder notransorder varchar(30) not null default \'\';'),
 (178,177,'2023-10-27 14:31:17',' ALTER TABLE tblpurchaseorderd ADD COLUMN kodegudang varchar(50) not null default \'\' after kodebarang '),
 (179,178,'2023-10-27 15:38:19',' ALTER TABLE tbldivisi ADD COLUMN divisi varchar(50) not null default \'\' after id '),
 (180,179,'2023-10-27 15:42:10',' ALTER TABLE tbldivisi ADD COLUMN ischecked tinyint(1) not null default 0 after status '),
 (181,180,'2023-10-27 16:04:41',' ALTER TABLE tbldivisi ADD COLUMN kode varchar(30) not null default \'\' after divisi '),
 (182,181,'2023-10-27 16:21:23','CREATE TABLE tblcreditnote (\r\n                              id int(50) NOT NULL AUTO_INCREMENT,\r\n                              notrans varchar(50) NOT NULL DEFAULT \'\',\r\n                              jenistrans varchar(30) NOT NULL DEFAULT \'\',\r\n                              tanggal datetime NOT NULL DEFAULT \'1111-11-11 00:00:00\',\r\n                              tanggal2 datetime NOT NULL DEFAULT \'1111-11-11 00:00:00\',\r\n                              kodeclient varchar(15) NOT NULL DEFAULT \'\',\r\n                              jenisclient varchar(15) NOT NULL DEFAULT \'\',\r\n                              kodegudang varchar(15) NOT NULL DEFAULT \'\',\r\n                              noref varchar(30) NOT NULL DEFAULT \'\',\r\n                              notransorder varchar(30) NOT NULL DEFAULT \'\',\r\n                              ccy varchar(15) NOT NULL DEFAULT \'\',\r\n                              kurs double DEFAULT 0,\r\n                              harga double DEFAULT 0,\r\n                              discount double DEFAULT 0,\r\n                              discpers double DEFAULT 0,\r\n                              total double DEFAULT 0,\r\n                              term int(10) NOT NULL DEFAULT 0,\r\n                              catatan text DEFAULT NULL,\r\n                              remarkcancel text DEFAULT NULL,\r\n                              ismasukhpp tinyint(1) NOT NULL DEFAULT 0,\r\n                              idprdb varchar(10) NOT NULL DEFAULT \'\',\r\n                              idprcr varchar(10) NOT NULL DEFAULT \'\',\r\n                              status varchar(15) NOT NULL DEFAULT \'\',\r\n                              userin varchar(50) NOT NULL DEFAULT \'\',\r\n                              jamin datetime NOT NULL DEFAULT \'1111-11-11 00:00:00\',\r\n                              userupt varchar(50) NOT NULL DEFAULT \'\',\r\n                              jamupt datetime NOT NULL DEFAULT \'1111-11-11 00:00:00\',\r\n                              PRIMARY KEY (id)\r\n                        );\r\n                          CREATE TABLE tblcreditnoted (\r\n                              id int(50) NOT NULL AUTO_INCREMENT,\r\n                              notrans varchar(50) NOT NULL DEFAULT \'\',\r\n                              idpr varchar(15) NOT NULL DEFAULT \'\',\r\n                              kodegudang varchar(50) NOT NULL DEFAULT \'\',\r\n                              kodebarang varchar(50) NOT NULL DEFAULT \'\',\r\n                              ccy varchar(15) NOT NULL DEFAULT \'\',\r\n                              kurs double DEFAULT 0,\r\n                              satuan varchar(50) NOT NULL DEFAULT \'\',\r\n                              qty double DEFAULT 0,\r\n                              qtysatuan double DEFAULT 0,\r\n                              qtyori double DEFAULT 0,\r\n                              hargasatuan double DEFAULT 0,\r\n                              harga double DEFAULT 0,\r\n                              discount double DEFAULT 0,\r\n                              discpers double DEFAULT 0,\r\n                              total double DEFAULT 0,\r\n                              catatan text DEFAULT NULL,\r\n                              PRIMARY KEY (id)\r\n                            );'),
 (183,182,'2023-10-28 09:07:55','alter table tbldivisi modify hargajual VARCHAR(50);\r\n                            alter table tbldivisi modify hargajual VARCHAR(50);'),
 (184,183,'2023-10-28 09:09:03','alter table tbldivisi modify kelhargajual VARCHAR(50);'),
 (185,184,'2023-10-28 09:39:42',' ALTER TABLE tbljenispenj ADD COLUMN status tinyint(4) not null default 0 after entryby '),
 (186,185,'2023-10-28 09:52:11','update tblsalesorder set kurs = 1'),
 (187,186,'2023-10-28 13:36:27',''),
 (188,187,'2023-10-28 13:40:27','alter table tbllinkpr modify linkper text;'),
 (189,188,'2023-10-28 13:40:27','INSERT INTO tbllinkpr (linkper, idpr, ccy, jenistrans, iskredit, subgroup)\r\n                            values (\'Piutang Debit Note Piutang Penjualan Non-Stock Item\', \'Piutang Usaha IDR\', \'IDR\', \'1050\', 0, \'Debit Note\');'),
 (190,189,'2023-10-28 13:44:20','update tbllinkpr set kode = \'SP116\' where id = 134;\r\nupdate tbllinkpr set kode = \'SP117\' where id = 135;\r\nupdate tbllinkpr set kode = \'SP118\' where id = 136;\r\nupdate tbllinkpr set kode = \'SP119\' where id = 137;\r\nupdate tbllinkpr set kode = \'SP120\' where id = 138;\r\nupdate tbllinkpr set kode = \'SP121\' where id = 139;'),
 (191,190,'2023-10-28 13:50:10','INSERT INTO tbllinkpr(kode,linkper,idpr,ccy,jenistrans, iskredit, subgroup) values \r\n                        (\'SP122\',\'Credit Note Piutang Tanpa Item\', \'Potongan Penjualan IDR\', \'IDR\', \'1050\', 0, \'Credit Note\'),\r\n                        (\'SP123\',\'Piutang Credit Note Piutang Tanpa Item\', \'Piutang Usaha IDR\', \'IDR\', \'1050\', 1, \'Credit Note\'),\r\n                        (\'SP124\',\'Credit Note Piutang Penjualan\', \'Potongan Penjualan IDR\', \'IDR\', \'1050\', 0, \'Credit Note\'),\r\n                        (\'SP125\',\'Piutang Credit Note Piutang Penjualan\', \'Piutang Usaha IDR\', \'IDR\', \'1050\', 1, \'Credit Note\'),\r\n                        (\'SP126\',\'Credit Note Piutang Non-Stock Item\', \'Potongan Penjualan IDR\', \'IDR\', \'1050\', 0, \'Credit Note\'),\r\n                        (\'SP127\',\'Piutang Credit Note Piutang Penjualan Non-Stock Item\', \'Piutang Usaha IDR\', \'IDR\', \'1050\', 1, \'Credit Note\');'),
 (192,191,'2023-10-28 13:58:03',''),
 (193,192,'2023-10-28 17:00:36',' ALTER TABLE tblowner ADD COLUMN status tinyint(4) not null default 0'),
 (194,193,'2023-10-29 13:07:26',' ALTER TABLE tblpenjualan ADD COLUMN deposit double default 0 after total '),
 (195,194,'2023-10-29 13:17:55',' ALTER TABLE tblpenjualand ADD COLUMN idpr varchar(10) not null default \'\' after notrans '),
 (196,195,'2023-10-29 13:25:45',' ALTER TABLE tblpenjualand ADD COLUMN kodegudang varchar(25) not null default \'\' after kodebarang '),
 (197,196,'2023-10-29 17:07:34',' ALTER TABLE tblcreditnote ADD COLUMN sales varchar(50) not null default \'\' after divisi '),
 (198,197,'2023-10-29 18:11:14',' ALTER TABLE tbldebitnote ADD COLUMN sales varchar(50) not null default \'\' after divisi '),
 (199,198,'2023-10-30 10:53:50',''),
 (200,199,'2023-10-30 11:36:47',' ALTER TABLE tblpenjualan ADD COLUMN jenispenj VARCHAR(50) not null default \'\' after divisi '),
 (201,200,'2023-10-31 08:16:49',' ALTER TABLE tbllibur ADD COLUMN status VARCHAR(50) not null default \'\''),
 (202,201,'2023-10-31 12:08:32','INSERT INTO tblcoa (idpr, kode, nama, ccy, statusid, acctype, jenis, amount, kurs, userin)\r\n                            VALUES\r\n                              (\'155\', \'1111\', \'Jurnal Umum\', \'IDR\', \'5\', \'1000\',\'1\',\'0\',\'0\',\'JACKY\')'),
 (203,202,'2023-10-31 13:01:53','INSERT INTO tbljenistransaksi (kodetransaksi, nama, kodedepan, pakaitahun, pakaibulan)\r\n                            VALUES\r\n                              (\'1111\', \'Jurnal Umum\', \'JM\', \'1\',\'1\')'),
 (204,203,'2023-10-31 13:12:17','DELETE FROM tblcoa WHERE id= 155 '),
 (205,204,'2023-10-31 15:18:24',' ALTER TABLE tblpembelian ADD COLUMN isnonstock tinyint not null default 0 after isretur '),
 (206,205,'2023-10-31 15:20:11','ALTER TABLE tblpembelian\r\n                    CHANGE COLUMN isnonstock isnonstock tinyint(1) not null default 0;'),
 (207,206,'2023-11-01 10:01:13',' ALTER TABLE tblstockdetail2 ADD COLUMN cogs double default 0'),
 (208,207,'2023-11-01 11:09:36',' ALTER TABLE tblstockdetail2 ADD COLUMN kodegudang varchar(20) not null default \'\' after jenistrans '),
 (209,208,'2023-11-01 13:24:18','ALTER TABLE tblbarang\r\n                    CHANGE COLUMN notranspemb notranspemb varchar(25) not null default \'\';'),
 (210,209,'2023-11-01 13:26:48','ALTER TABLE tblbarang\r\n                    CHANGE COLUMN notranspemb notranspemb varchar(25) not null default \'\';'),
 (211,210,'2023-11-01 15:21:16',' ALTER TABLE tblpenerimaanhutang ADD COLUMN cancelreason VARCHAR(50) not null default \'\''),
 (212,211,'2023-11-01 16:14:12',' ALTER TABLE tblpembayaranhutang ADD COLUMN cancelreason VARCHAR(50) not null default \'\''),
 (213,212,'2023-11-01 16:49:11','update tbljenistransaksi set nama = \'Repost RAR\' where id = \'82\'; \r\n                            insert into tbljenistransaksi values (97, \'9000\', \'Penerimaan Piutang\', \'AR\', 1, 1);'),
 (214,213,'2023-11-01 16:50:22','update tbljenistransaksi set kodedepan = \'RAR\' where nama = \'Repost RAR\' '),
 (215,214,'2023-11-01 17:07:55','select urutan from tblsync order by id desc limit 1'),
 (216,215,'2023-11-01 17:11:08',''),
 (217,216,'2023-11-01 17:19:35',''),
 (218,217,'2023-11-02 08:07:52','alter table tblpenerimaanpiutang  drop column nobukti;'),
 (219,218,'2023-11-02 08:15:22',' ALTER TABLE tblpenerimaanpiutangd ADD COLUMN tgllunas datetime not null default \'1111-11-11 00:00:00\''),
 (220,219,'2023-11-02 09:00:16','alter table tblpenerimaanpiutangd change column tangga tanggal datetime;\r\n                            alter table tblpembayaranhutangd change column tangga tanggal datetime;'),
 (221,220,'2023-11-02 11:25:47','ALTER TABLE tblpembelian\r\n                    CHANGE COLUMN kodegudang kodegudang varchar(25) not null default \'\';'),
 (222,221,'2023-11-02 11:29:35','ALTER TABLE tblstockdetail\r\n                    CHANGE COLUMN kodegudang kodegudang varchar(25) not null default \'\';'),
 (223,222,'2023-11-02 15:42:00',' ALTER TABLE tblstockdetail ADD COLUMN qtyori double default 0'),
 (224,223,'2023-11-03 09:59:33',' ALTER TABLE tblfile ADD COLUMN kodebarang VARCHAR(100) not null default \'\' after id '),
 (225,224,'2023-11-03 11:51:29','ALTER TABLE tblpenerimaanpiutangd\r\n                    CHANGE COLUMN tanggal tanggal datetime not null default \'1111-11-11 00:00:00\';'),
 (226,225,'2023-11-03 16:37:30',' ALTER TABLE tblpembayaranhutangd ADD COLUMN sisahutang double default 0 after total '),
 (227,226,'2023-11-04 09:22:06',' ALTER TABLE tblpembayaranhutangd ADD COLUMN idpr varchar(25) not null default \'\' after sisahutang '),
 (228,227,'2023-11-04 14:38:22','truncate table tblpenerimaanpiutang;\r\n                            truncate table tblpenerimaanpiutangd;'),
 (229,228,'2023-11-04 14:39:42','truncate table tblpenerimaanpiutang;\r\n                            truncate table tblpenerimaanpiutangd;'),
 (230,229,'2023-11-05 21:21:51',' ALTER TABLE tblpenerimaanpiutangd ADD COLUMN idpr varchar(25) not null default \'\' after sisapiutang '),
 (231,230,'2023-11-06 09:44:20','alter table tbltrans modify notrans varchar(50);\r\n                            alter table tbltransd modify notrans varchar(50);'),
 (232,231,'2023-11-06 09:47:54','ALTER TABLE tbltransd modify nobukti varchar(50);'),
 (233,232,'2023-11-07 14:54:03','ALTER TABLE tblbarang\r\n                    MODIFY defaultlaporan varchar(15) not null default \'\';'),
 (234,233,'2023-11-09 11:44:13',' ALTER TABLE tblstockdetail2 ADD COLUMN jenisclient varchar(5) not null default \'\' after kodeclient '),
 (235,234,'2023-11-09 14:42:40','Update into tbljenistransaksi set kodetransaksi = \'1091\' where nama = \'Quotation\''),
 (236,235,'2023-11-10 11:45:03','ALTER TABLE tblpelanggan\r\n                    MODIFY fax varchar(50) not null default \'\';'),
 (237,236,'2023-11-11 08:35:49','SELECT table_name\r\n                    FROM information_schema.columns\r\n                    WHERE table_name = \'tblkas\' \r\n                    and table_schema = \'gf2\'\r\n                    and column_name = \'jenistrans\''),
 (238,237,'2023-11-11 08:51:23',' ALTER TABLE tblkas ADD COLUMN amount double default 0 after tipeclient '),
 (239,238,'2023-11-11 13:05:18',' ALTER TABLE tblkas ADD COLUMN idpr varchar(15) not null default \'\' after tipeclient '),
 (240,239,'2023-11-13 16:06:48','ALTER TABLE tblkaryawan\r\n                    MODIFY telepon varchar(25) not null default \'\';'),
 (241,240,'2023-11-14 14:09:44',' ALTER TABLE tblpembeliand ADD COLUMN kodegudang varchar(25) not null default \'\' after tanggal '),
 (242,241,'2023-11-15 19:57:55',' ALTER TABLE tblmutasimasukd ADD COLUMN qtyori double default 0 after qtysatuan '),
 (243,242,'2023-11-15 19:57:55','ALTER TABLE tblmutasimasuk\r\n                    DROP Column entrydate ;'),
 (244,243,'2023-11-15 19:57:55',' ALTER TABLE tblmutasimasuk ADD COLUMN total double default 0 after kodegroup '),
 (245,244,'2023-11-15 19:58:49',' ALTER TABLE tblmutasikeluar ADD COLUMN total double default 0 after kodegroup '),
 (246,245,'2023-11-15 19:58:49','ALTER TABLE tblmutasikeluard\r\n                    MODIFY notrans varchar(15) not null default \'\';'),
 (247,246,'2023-11-16 12:07:08','ALTER TABLE tblmutasikeluard\r\n                    DROP Column hargapokok ;'),
 (248,247,'2023-11-16 12:07:08',' ALTER TABLE tblgroup ADD COLUMN jamupt datetime not null default \'1111-11-11 00:00:00\''),
 (249,248,'2023-11-16 12:12:03',' ALTER TABLE tblgroup ADD COLUMN status tinyint(4) not null default 0'),
 (250,249,'2023-11-16 14:03:19',' ALTER TABLE tblclosing ADD COLUMN jamin datetime not null default \'1111-11-11 00:00:00\''),
 (251,250,'2023-11-16 14:11:02',' ALTER TABLE tblstockdetail ADD COLUMN cogs double default 0'),
 (252,251,'2023-11-17 11:23:08','Insert into tbljenistransaksi(kodetransaksi, nama, kodedepan, pakaitahun, pakaibulan) values(\'9999\',\'Closing\',\'CL\',1,1)'),
 (253,252,'2023-11-17 11:24:01','Insert into tbljenistransaksi(kodetransaksi, nama, kodedepan, pakaitahun, pakaibulan) values(\'9999\',\'Closing\',\'CL\',1,1)'),
 (254,253,'2023-11-17 11:59:35',' ALTER TABLE tblclosing ADD COLUMN notrans varchar(25) not null default \'\' after id '),
 (255,254,'2023-11-17 14:20:20','CREATE INDEX tblcoa ON tblcoa (idpr, nama, acctype, jenis);'),
 (256,255,'2023-11-17 14:28:03','CREATE INDEX tbljenistransaksi ON tbljenistransaksi (kodetransaksi);'),
 (257,256,'2023-11-18 10:49:28','ALTER TABLE tbllinkpr\r\n                    MODIFY linkper varchar(255) not null default \'\';'),
 (258,257,'2023-11-18 10:53:08','CREATE INDEX tbllinkpr ON tbllinkpr (kode, linkper, idpr);'),
 (259,258,'2023-11-18 13:19:55','truncate table tblclosing;'),
 (260,259,'2023-11-20 13:22:35','update tbljenistransaksi set kodedepan = \'JHPP\' where kodetransaksi = \'9999\' '),
 (261,260,'2023-11-20 13:22:35','insert into tbllinkpr(kode,linkper,idpr,ccy,jenistrans,iskredit,userin,jamin,userupt,jamupt,subgroup) values(\'SP136\',\'HPP\',\'\',\'IDR\',\'\',0,\'JACKY\',\'2023-11-20 13:22:35\', \'JACKY\',\'2023-11-20 13:22:35\', \'\')'),
 (262,261,'2023-11-20 13:22:35',' update tbljenistransaksi set kodedepan = \'CL\' where nama = \'Closing\';\r\n                            insert into tbljenistransaksi values(99, \'9991\',\'HPP\',\'JHPP\',1,1),(100, \'9992\',\'Laba\',\'JPL\',1,1);'),
 (263,262,'2023-11-22 11:33:15','update tblcoa set idpr = \'153\' where kode = \'9999\' and nama = \'Perkiraan Perantara\';'),
 (264,263,'2023-11-22 13:34:28',' ALTER TABLE tbldaftarhutangd ADD COLUMN jamupt datetime '),
 (265,264,'2023-11-22 14:32:13',' ALTER TABLE tbldaftarhutangd ADD COLUMN status tinyint(4) '),
 (266,265,'2023-11-22 14:32:13',' ALTER TABLE tbldaftarhutangd ADD COLUMN jenistrans varchar(50) '),
 (267,266,'2023-11-22 14:48:25',' ALTER TABLE tbldaftarhutangd ADD COLUMN tgllunas datetime '),
 (268,267,'2023-11-22 15:57:53',' ALTER TABLE tbldaftarhutang ADD COLUMN kurs double  after ccy '),
 (269,268,'2023-11-22 16:02:19',' ALTER TABLE tbldaftarhutang ADD COLUMN jamupt datetime '),
 (270,269,'2023-11-22 16:09:29','ALTER TABLE tbldaftarhutang\r\n                    DROP Column status ;'),
 (271,270,'2023-11-22 16:12:12',' ALTER TABLE tbldaftarhutang ADD COLUMN kodevendor varchar(50)  after ccy '),
 (272,271,'2023-11-22 16:34:14','ALTER TABLE tbldaftarhutangd\r\n                    DROP Column status ;'),
 (273,272,'2023-11-22 16:38:37',' ALTER TABLE tbldaftarhutangd ADD COLUMN jatuhtempodate datetime '),
 (274,273,'2023-11-22 17:04:44','ALTER TABLE tbldaftarhutang\r\n                    DROP Column kodevendor ;'),
 (275,274,'2023-11-23 11:51:29',' ALTER TABLE tbldaftarpiutang ADD COLUMN status tinyint(4) '),
 (276,275,'2023-11-23 11:55:27',' ALTER TABLE tbldaftarpiutangd ADD COLUMN kodepelanggan varchar(50) '),
 (277,276,'2023-11-23 13:57:10',' ALTER TABLE tblinvoiced ADD COLUMN jenistrans varchar(50) not null default \'\''),
 (278,277,'2023-11-23 15:09:17',' ALTER TABLE tblinvoice ADD COLUMN kodesales varchar(50) not null default \'\' after kodepelanggan '),
 (279,278,'2023-11-23 15:40:06',''),
 (280,279,'2023-11-23 15:41:01',' ALTER TABLE tbldaftarpiutangd ADD COLUMN kodepelanggan varchar(50) not null default \'\''),
 (281,280,'2023-11-23 15:44:36','ALTER TABLE tbldaftarhutang\r\n                    CHANGE COLUMN jamin jamin datetime not null default \'1111-11-11 00:00:00\';'),
 (282,281,'2023-11-23 15:45:50',' ALTER TABLE tblinvoice ADD COLUMN kodetax varchar(10) not null default \'\' after discount '),
 (283,282,'2023-11-24 15:55:30',' ALTER TABLE tbltrans ADD COLUMN keterangan varchar(150) not null default \'\' after tanggal '),
 (284,283,'2023-11-25 10:20:09',' ALTER TABLE tblaktivatetap ADD COLUMN status tinyint(4) not null default 0'),
 (285,284,'2023-11-25 18:15:49','ALTER TABLE tblaktivatetap\r\n                    CHANGE COLUMN outacc outacc double default 0;'),
 (286,285,'2023-11-25 23:12:58',' ALTER TABLE tblaktivatetap ADD COLUMN sub varchar(50) not null default \'\''),
 (287,286,'2023-11-25 23:16:45','ALTER TABLE tblaktivatetap\r\n                    CHANGE COLUMN sub subgroup varchar(50) not null default \'\';'),
 (288,287,'2023-11-27 09:01:19','ALTER TABLE tblaktivatetap\r\n                    CHANGE COLUMN usia usia double default 0;'),
 (289,288,'2023-11-27 09:23:15','ALTER TABLE tblaktivatetap\r\n                    CHANGE COLUMN perssusut perssusut double default 0;'),
 (290,289,'2023-11-28 12:03:35',' ALTER TABLE tblaktivatetap ADD COLUMN lkstatus varchar(50) not null default \'\''),
 (291,290,'2023-11-28 12:03:35',' ALTER TABLE tblquotation ADD COLUMN rate varchar(50) not null default \'\''),
 (292,291,'2023-11-28 12:03:35',' ALTER TABLE tblquotation ADD COLUMN deliver varchar(50) not null default \'\''),
 (293,292,'2023-11-28 12:03:35',' ALTER TABLE tblquotationd ADD COLUMN kodegudang varchar(50) not null default \'\''),
 (294,293,'2023-11-28 15:31:12',' ALTER TABLE tblstockdetail ADD COLUMN done tinyint(1) not null default 1 '),
 (295,294,'2023-11-30 14:06:40',' ALTER TABLE tblvendor ADD COLUMN negara varchar(50) not null default \'\' after daerah '),
 (296,295,'2023-11-30 14:06:45',' ALTER TABLE tblasset ADD COLUMN jamupdpost datetime not null default \'1111-11-11 00:00:00\''),
 (297,296,'2023-12-06 13:50:48',' ALTER TABLE tblgf ADD COLUMN kodegudang varchar(50) not null default \'\''),
 (298,297,'2023-12-06 13:50:48','drop table tblgf'),
 (299,298,'2023-12-06 13:50:52',' ALTER TABLE tblassetpo ADD COLUMN jamappr datetime not null default \'1111-11-11 00:00:00\''),
 (300,299,'2023-12-06 13:50:52',' ALTER TABLE tblassetpo ADD COLUMN iscredit tinyint(1) not null default 0 after remarkcancel '),
 (301,300,'2023-12-06 13:50:54',' ALTER TABLE tblassetpod ADD COLUMN total double default 0'),
 (302,301,'2023-12-06 13:50:54','Insert into tbljenistransaksi(kodetransaksi, nama, kodedepan, pakaitahun, pakaibulan) values(5001,\'Asset Purchase Order\', \'APO\', 1,1)'),
 (303,302,'2023-12-06 13:50:54',' ALTER TABLE tblassetpo ADD COLUMN kodevendor varchar(25) not null default \'\' after tanggal '),
 (304,303,'2023-12-06 13:50:55',' ALTER TABLE tblassetpo ADD COLUMN remarkreject text  after remarkcancel '),
 (305,304,'2023-12-06 13:50:55',' ALTER TABLE tblassetpo ADD COLUMN remarkedit text  after catatan '),
 (306,305,'2023-12-06 13:50:58',' ALTER TABLE tbljamsewa ADD COLUMN jamupt datetime not null default \'1111-11-11 00:00:00\''),
 (307,306,'2023-12-06 13:50:58',' ALTER TABLE tblgroup ADD COLUMN kodegroup2 varchar(50) not null default \'\' after status '),
 (308,307,'2023-12-06 13:51:00','ALTER TABLE tblgroup\r\n                    DROP Column kodegroup2 ;'),
 (309,308,'2023-12-06 13:51:00',' ALTER TABLE tblgroup2 ADD COLUMN kodegroup2 varchar(50) not null default \'\''),
 (310,309,'2023-12-06 13:51:00',' ALTER TABLE tbljamsewa ADD COLUMN sisajam double default 0 after totaljam '),
 (311,310,'2023-12-06 13:51:01',' ALTER TABLE tblmaintenancejasa ADD COLUMN iscredit tinyint(1) not null default 0'),
 (312,311,'2023-12-06 13:51:03',' ALTER TABLE tblmaintenancesparepart ADD COLUMN total double default 0'),
 (313,312,'2023-12-06 13:51:04',' ALTER TABLE tbldomaintenance ADD COLUMN status varchar(5) not null default \'\''),
 (314,313,'2023-12-06 13:51:04','ALTER TABLE tbldomaintenance\r\n                    CHANGE COLUMN urutmaintain idmaintenance varchar(25) not null default \'\';'),
 (315,314,'2023-12-11 10:00:54',' ALTER TABLE tblbarang ADD COLUMN kodegroup3 varchar(30) not null default \'\' after kodegroup2 '),
 (316,315,'2023-12-11 10:00:55',' ALTER TABLE tblpromosi ADD COLUMN discnilai double default 0'),
 (317,316,'2023-12-11 10:00:55',' ALTER TABLE tblpurchaseorderd ADD COLUMN nonstocknama varchar(50) not null default \'\''),
 (318,317,'2023-12-11 10:00:55','ALTER TABLE tblpurchaseorderd\r\n                    CHANGE COLUMN nonstocknama keterangan varchar(50) not null default \'\';'),
 (319,318,'2023-12-11 10:00:55',' ALTER TABLE tblpenjualand ADD COLUMN keterangan varchar(50) not null default \'\''),
 (320,319,'2023-12-11 10:00:55',' ALTER TABLE tblpembeliand ADD COLUMN keterangan varchar(50) not null default \'\''),
 (321,320,'2023-12-11 10:00:55',' ALTER TABLE tbldebitnoted ADD COLUMN keterangan varchar(50) not null default \'\''),
 (322,321,'2023-12-11 10:00:55',' ALTER TABLE tblcreditnoted ADD COLUMN keterangan varchar(50) not null default \'\''),
 (323,322,'2023-12-11 10:00:55',' ALTER TABLE tblquotationd ADD COLUMN keterangan varchar(50) not null default \'\''),
 (324,323,'2023-12-11 10:00:55',' ALTER TABLE tblsalesorderd ADD COLUMN keterangan varchar(50) not null default \'\''),
 (325,324,'2023-12-11 10:00:56',' ALTER TABLE tblrentalquotationd ADD COLUMN period double default 0'),
 (326,325,'2023-12-11 10:00:56',' ALTER TABLE tblpromosikomputer ADD COLUMN isallcomputer tinyint(1) not null default 0'),
 (327,326,'2023-12-11 10:00:57',' ALTER TABLE tblrentalbarang ADD COLUMN jamupt datetime not null default \'1111-11-11 00:00:00\''),
 (328,327,'2023-12-11 10:00:59',' ALTER TABLE tblrentalsalesorderd ADD COLUMN total double default 0'),
 (329,328,'2023-12-11 10:00:59','insert into tbljenistransaksi(kodetransaksi, nama, kodedepan, pakaitahun, pakaibulan) values(\'3031\',\'Rental Sales Order\', \'RSO\',1,1)'),
 (330,329,'2023-12-12 09:53:36','ALTER TABLE tblpromosi\r\n                    DROP Column discnilai ;'),
 (331,330,'2023-12-12 09:53:36','insert into tblcomp2(nama,nilai,tipe,`group`,indo,english) values(\'Background path\',\'C:\\Users\\FUJITSU\\Documents\\GF Homan System\\Image Resource/bg.jpg\', \'string\',\'Setting\',\'Background Utama\', \'Main Background\')'),
 (332,331,'2023-12-12 09:53:36','delete from tblcomp2 where nama = \'Background path\';\r\n                            insert into tblcomp2(nama,nilai,tipe,`group`,indo,english) values(\'Background path\',\'C:\\\\Users\\\\FUJITSU\\\\Documents\\\\GF Homan System\\\\Image Resource\\\\bg.jpg\', \'string\',\'Setting\',\'Background Utama\', \'Main Background\')'),
 (333,332,'2023-12-14 20:29:31','insert into tbljenistransaksi(kodetransaksi, nama, kodedepan, pakaitahun, pakaibulan) values(\'3041\',\'Rental Delivery Order\', \'RDO\',1,1)');
INSERT INTO `tblsync` (`id`,`urutan`,`jamin`,`query`) VALUES 
 (334,333,'2023-12-14 20:29:31',' ALTER TABLE tblcomp2 ADD COLUMN isdefault tinyint(1) not null default 0'),
 (335,334,'2023-12-14 20:29:31',' ALTER TABLE tblrentaldeliveryorderd ADD COLUMN total double default 0'),
 (336,335,'2023-12-14 20:29:31',' ALTER TABLE tblrentaldeliveryorder ADD COLUMN remarkcancel text  after catatan '),
 (337,336,'2023-12-14 20:29:31',' ALTER TABLE tblrentaldeliveryorderd ADD COLUMN tanggalakhir datetime not null default \'1111-11-11 00:00:00\' after notrans '),
 (338,337,'2023-12-14 20:29:31','ALTER TABLE tblrentaldeliveryorderd\r\n                    DROP Column tanggalakhir ;'),
 (339,338,'2024-01-02 10:06:14',' ALTER TABLE tblpindahgudangd ADD COLUMN catatannama text not null'),
 (340,339,'2024-01-02 10:06:14',' ALTER TABLE tblpindahgudangd ADD COLUMN notrans varchar(50) not null default \'\' after id '),
 (341,340,'2024-01-02 10:06:15',' ALTER TABLE tblrentalbarang ADD COLUMN size varchar(50) not null default \'\' after berat '),
 (342,341,'2024-01-02 10:06:15',' ALTER TABLE tbllistpayment ADD COLUMN defaults tinyint(1) not null default 0'),
 (343,342,'2024-01-02 10:06:15','ALTER TABLE tbllistpayment\r\n                    CHANGE COLUMN defaults isdefault tinyint(1) not null default 0;'),
 (344,343,'2024-01-02 10:06:15','SELECT table_name\r\n                    FROM information_schema.columns\r\n                    WHERE table_name = \'tbllistpayment\' \r\n                    and table_schema = \'gf2\'\r\n                    and column_name = \'payment\''),
 (345,344,'2024-01-02 10:06:15',' ALTER TABLE tblmaintenancejasa ADD COLUMN payment varchar(100) not null default \'\''),
 (346,345,'2024-01-02 10:06:15',' ALTER TABLE tblexpenses ADD COLUMN jamupt datetime not null default \'1111-11-11 00:00:00\''),
 (347,346,'2024-01-02 10:06:15',' ALTER TABLE tbllistpayment ADD COLUMN kodeccy varchar(50) not null default \'\''),
 (348,347,'2024-01-02 10:06:15',' ALTER TABLE tblrentalquotation ADD COLUMN remarkcancel varchar(255) not null default \'\''),
 (349,348,'2024-01-02 10:06:15',' ALTER TABLE tblfile ADD COLUMN kodeimg varchar(255) not null default \'\' after idbarang '),
 (350,349,'2024-01-02 10:06:15',' ALTER TABLE tblrentalsalesorderd ADD COLUMN qty double default 0'),
 (351,350,'2024-01-02 10:06:15','Insert into tbljenistransaksi(kodetransaksi, nama, kodedepan, pakaitahun, pakaibulan) values(\'3051\',\'Sell Asset\',\'RSA\',1,1)'),
 (352,351,'2024-01-02 10:06:16',' ALTER TABLE tblrentaljual ADD COLUMN jamjual datetime not null default \'1111-11-11 00:00:00\''),
 (353,352,'2024-01-02 10:06:16','ALTER TABLE tblasset\r\n                    CHANGE COLUMN kodevendor kodesupplier varchar(50) not null default \'\';'),
 (354,353,'2024-01-02 10:06:16','ALTER TABLE tblrentaljual\r\n                    CHANGE COLUMN kodebarang kodeasset varchar(50) not null default \'\';'),
 (355,354,'2024-01-02 10:06:16','Insert into tbljenistransaksi(kodetransaksi, nama, kodedepan, pakaitahun, pakaibulan) values(\'3011\',\'Asset\',\'ENG\',1,1)'),
 (356,355,'2024-01-02 10:06:16',' ALTER TABLE tblasset ADD COLUMN remarkcancel text not null after status '),
 (357,356,'2024-01-02 10:06:17',' ALTER TABLE tblfeedback ADD COLUMN jamlapor datetime not null default \'1111-11-11 00:00:00\''),
 (358,357,'2024-01-02 10:06:17',' ALTER TABLE tblpostonline ADD COLUMN userpost varchar(255) not null default \'\''),
 (359,358,'2024-01-02 10:06:17',' ALTER TABLE tblmaintenance ADD COLUMN notrans varchar(25) not null default \'\' after id '),
 (360,359,'2024-01-02 10:06:17',' ALTER TABLE tblfilerental ADD COLUMN catatan text not null'),
 (361,360,'2024-01-02 10:06:17',' ALTER TABLE tblcommentd ADD COLUMN jamkirim datetime not null default \'1111-11-11 00:00:00\''),
 (362,361,'2024-01-02 10:06:17',' ALTER TABLE tblfilerental ADD COLUMN isspec tinyint(1) not null default 0'),
 (363,362,'2024-01-02 10:06:18',' ALTER TABLE tblpembayaranhutang ADD COLUMN ccy2 varchar(50) not null default \'\''),
 (364,363,'2024-01-02 10:06:18','  \n                    INSERT INTO TBLlinkpr (kode, linkper, idpr, ccy, jenistrans, iskredit,userin,jamin,userupt,jamupt,subgroup)\n                      VALUES\n                      (\'SP137\',\'Rental Delivery Order Cash - Kredit\',1,\'IDR\',\'3041\',1,\'JACKY\',NOW(),\'JACKY\',NOW(), \'Delivery Order\'),\n                      (\'SP138\',\'Rental Delivery Order Cash - Debit\',1,\'IDR\',\'3041\',1,\'JACKY\',NOW(),\'JACKY\',NOW(), \'Delivery Order\'),\n                      (\'SP139\',\'Rental Delivery Order Credit - Kredit\',1,\'IDR\',\'3041\',1,\'JACKY\',NOW(),\'JACKY\',NOW(), \'Delivery Order\'),\n                      (\'SP140\',\'Rental Delivery Order Credit - Debit\',1,\'IDR\',\'3041\',1,\'JACKY\',NOW(),\'JACKY\',NOW(), \'Delivery Order\')'),
 (365,364,'2024-01-03 13:57:26','ALTER TABLE tbldebitnoted\r\n                    CHANGE COLUMN keterangan keterangan Varchar(255) not null default \'\';'),
 (366,365,'2024-01-14 02:25:30',' ALTER TABLE tblexeupdate ADD COLUMN userpost varchar(255) not null default \'\''),
 (367,366,'2024-01-14 02:25:30',' ALTER TABLE tblexeupdate ADD COLUMN kode varchar(255) not null default \'\''),
 (368,367,'2024-01-14 02:25:30','truncate tblexeupdate;'),
 (369,368,'2024-01-14 02:25:30',' ALTER TABLE tblexeupdate ADD COLUMN jamin datetime not null default \'1111-11-11 00:00:00\''),
 (370,369,'2024-01-14 02:25:30',' ALTER TABLE tblexeupdate ADD COLUMN sources VARCHAR(50) not null default \'\''),
 (371,370,'2024-01-14 02:25:31',' ALTER TABLE tblbarang ADD COLUMN size varchar(50) not null default \'\''),
 (372,371,'2024-01-14 02:25:31',' ALTER TABLE tblbrand ADD COLUMN status tinyint(4) not null default 0'),
 (373,372,'2024-01-14 02:25:31',' ALTER TABLE tblasset ADD COLUMN kodebrand varchar(100) not null default \'\''),
 (374,373,'2024-01-14 02:25:31',' ALTER TABLE tbluser ADD COLUMN jatuhtempo double default 0'),
 (375,374,'2024-01-14 02:25:31',' ALTER TABLE tbluser ADD COLUMN status tinyint(4) not null default 0'),
 (376,375,'2024-01-14 02:25:31',' ALTER TABLE tbluser ADD COLUMN lastlogin datetime not null default \'1111-11-11 00:00:00\''),
 (377,376,'2024-01-14 02:25:31',' ALTER TABLE tbluser ADD COLUMN jamupd datetime not null default \'1111-11-11 00:00:00\''),
 (378,377,'2024-01-14 02:25:31',' ALTER TABLE tbluser ADD COLUMN jatuhtempo2 double default 0'),
 (379,378,'2024-01-14 02:25:31',''),
 (380,379,'2024-01-14 02:25:31',' ALTER TABLE tblgroupuser ADD COLUMN maxdisc double default 0'),
 (381,380,'2024-01-14 02:25:31',' ALTER TABLE tblgroupuser ADD COLUMN status tinyint(4) not null default 0'),
 (382,381,'2024-01-14 02:25:32',' ALTER TABLE tblrentalreceived ADD COLUMN idprakumulasi varchar(10) not null default \'\''),
 (383,382,'2024-01-14 02:25:32',' ALTER TABLE tblrentalreceived ADD COLUMN kodevendor varchar(50) not null default \'\' after notrans '),
 (384,383,'2024-01-14 02:25:32',' ALTER TABLE tblrentalreceived ADD COLUMN catatan text not null after total '),
 (385,384,'2024-01-14 02:25:32',' ALTER TABLE tblpostfinance ADD COLUMN status varchar(5) not null default \'\''),
 (386,385,'2024-01-14 02:25:32','ALTER TABLE tblrentalreceived\r\n                    DROP Column notransdo ;'),
 (387,386,'2024-01-14 02:25:32',' ALTER TABLE tblrentalreceive ADD COLUMN remarkedit text not null'),
 (388,387,'2024-01-14 02:25:32','ALTER TABLE tblasset\r\n                    DROP Column idprakumulasi ;'),
 (389,388,'2024-01-14 12:32:35',' ALTER TABLE tblstatusrental ADD COLUMN jamupt datetime not null default \'1111-11-11 00:00:00\''),
 (390,389,'2024-01-17 16:33:07',' ALTER TABLE tblasset ADD COLUMN kodebarcode varchar(125) not null default \'\' after jenis '),
 (391,390,'2024-01-17 16:33:07',' ALTER TABLE tblasset ADD COLUMN noseri varchar(125) not null default \'\' after kodebarcode '),
 (392,391,'2024-01-17 16:33:07',' ALTER TABLE tblrak ADD COLUMN nama varchar(125) not null default \'\''),
 (393,392,'2024-01-17 16:33:07',' ALTER TABLE tbljamsewa ADD COLUMN noinv varchar(125) not null default \'\''),
 (394,393,'2024-01-17 16:33:07',' ALTER TABLE tbljamsewa ADD COLUMN projek varchar(125) not null default \'\''),
 (395,394,'2024-01-17 16:33:08','ALTER TABLE tbljamsewa\r\n                    DROP Column sisajam ;'),
 (396,395,'2024-02-16 22:01:51',' ALTER TABLE tbllogprint ADD COLUMN jamin datetime not null default \'1111-11-11 00:00:00\''),
 (397,396,'2024-02-16 22:01:51',' ALTER TABLE tbluser ADD COLUMN kodeval varchar(255) not null default \'\''),
 (398,397,'2024-02-16 22:01:51','CREATE INDEX notrans ON tbltransd (notrans);'),
 (399,398,'2024-02-16 22:01:51','CREATE INDEX notrans ON tblpembelian (notrans);'),
 (400,399,'2024-02-16 22:01:51','CREATE INDEX kodejenis ON tbljenispenj (kodejenis);'),
 (401,400,'2024-02-16 22:01:51','CREATE INDEX notrans ON tblquotation (notrans);'),
 (402,401,'2024-02-16 22:01:51','CREATE INDEX kodepelanggan ON tblquotation (kodepelanggan);'),
 (403,402,'2024-02-16 22:01:52',' ALTER TABLE tblpembelian ADD COLUMN catatan3 text not null after catatan2 '),
 (404,403,'2024-02-16 22:01:52',' ALTER TABLE tblpurchaseorder ADD COLUMN catatan3 text not null after catatan2 '),
 (405,404,'2024-02-16 22:01:52',' ALTER TABLE tblcreditnote ADD COLUMN catatan2 text not null after catatan '),
 (406,405,'2024-02-16 22:01:52',' ALTER TABLE tbldeposit ADD COLUMN catatan3 Text not null after catatan2 '),
 (407,406,'2024-02-16 22:01:52',' ALTER TABLE tblsalesorder ADD COLUMN catatan2 text not null after catatan '),
 (408,407,'2024-02-16 22:01:52',' ALTER TABLE tblpenjualan ADD COLUMN catatan3 text not null after catatan2 '),
 (409,408,'2024-02-16 22:01:52',' ALTER TABLE tblinvoice ADD COLUMN catatan3 text not null after catatan2 '),
 (410,409,'2024-02-16 22:01:52','CREATE INDEX tanggal ON tbltransd (tanggal);'),
 (411,410,'2024-02-16 22:01:52',' ALTER TABLE tbltransferkas ADD COLUMN isKeTujuan tinyint(1) not null default 0'),
 (412,411,'2024-02-16 22:01:52','INSERT INTO tbljenistransaksi (kodetransaksi, nama, kodedepan, pakaitahun, pakaibulan)\r\n                            VALUES (\'7001\', \'Transfer Kas\', \'TFK\', \'1\', \'1\')'),
 (413,412,'2024-02-16 22:01:52',' ALTER TABLE tbltransferkas ADD COLUMN kurske double default 0 after ccyke '),
 (414,413,'2024-02-16 22:01:52',' ALTER TABLE tbltransferkas ADD COLUMN status varchar(5) not null default \'\''),
 (415,414,'2024-02-16 22:01:52',' ALTER TABLE tbltransferkas ADD COLUMN remarkcancel text not null after isKeTujuan '),
 (416,415,'2024-02-16 22:01:52',' ALTER TABLE tblpostfinance ADD COLUMN kodemesin varchar(255) not null default \'\' after notrans '),
 (417,416,'2024-02-16 22:01:53',' ALTER TABLE tblrentalreceived ADD COLUMN status varchar(5) not null default \'\''),
 (418,417,'2024-02-16 22:01:53',' ALTER TABLE tblmultilinkper ADD COLUMN jamupt datetime not null default \'1111-11-11 00:00:00\''),
 (419,418,'2024-02-16 22:01:54','ALTER TABLE tbllinkpr\r\n                    DROP Column jamin ;'),
 (420,419,'2024-02-16 22:01:54',' ALTER TABLE tbllinkpr ADD COLUMN ccy varchar(125) not null default \'\''),
 (421,420,'2024-02-16 22:01:54',' ALTER TABLE tblassetpod ADD COLUMN period double default 0 after satuan '),
 (422,421,'2024-02-16 22:01:54',' ALTER TABLE tblassetpod ADD COLUMN lokasi varchar(125) not null default \'\' after kodemesin '),
 (423,422,'2024-02-16 22:01:54',' ALTER TABLE tblrentaldeliveryorderd ADD COLUMN notransso varchar(100) not null default \'\''),
 (424,423,'2024-02-16 22:01:54',' ALTER TABLE tblrentalsalesorder ADD COLUMN statusdo varchar(100) not null default \'\' after status '),
 (425,424,'2024-02-16 22:01:54','ALTER TABLE tblrentaldeliveryorder\r\n                    DROP Column noref ;'),
 (426,425,'2024-02-17 17:41:22',' ALTER TABLE tblbiayatambahan ADD COLUMN idpr varchar(25) not null default \'\''),
 (427,426,'2024-02-17 22:53:54',' ALTER TABLE tblrentaldeliveryorder ADD COLUMN expense double default 0 after harga '),
 (428,427,'2024-02-17 22:53:54',' ALTER TABLE tblrentalreceive ADD COLUMN expense double default 0 after harga '),
 (429,428,'2024-02-18 11:51:14','INSERT INTO tbljenistransaksi (kodetransaksi, nama, kodedepan, pakaitahun, pakaibulan)\r\n                            VALUES (\'8500\', \'Receive Kas\', \'RA\', \'1\', \'1\')'),
 (430,429,'2024-02-18 11:56:44','\r\n                        INSERT INTO tbllinkpr(id, kode, linkper, jenistrans, iskredit, subgroup, idpr, ccy) VALUES\r\n                            (141, \'SP141\', \'Receive Asset\', \'8500\', 1, \'Receive Asset\', 1, \'IDR\'),\r\n                            (142, \'SP142\', \'Hutang Receive Asset\', \'8500\', 1, \'Receive Asset\', 1, \'IDR\'),\r\n                            (143, \'SP143\', \'Receive Asset - Discount\', \'8500\', 1, \'Receive Asset\', 1, \'IDR\'),\r\n                            (144, \'SP144\', \'Receive Asset - Biaya Tambahan\', \'8500\', 1, \'Receive Asset\', 1, \'IDR\');\r\n                        '),
 (431,430,'2024-02-18 14:42:15','\r\n                        INSERT INTO tbllinkpr(id, kode, linkper, jenistrans, iskredit, subgroup, idpr, ccy) VALUES\r\n                            (145, \'SP145\', \'Rental Delivery Order - Biaya Tambahan\', \'3041\', 1, \'Delivery Order\', 1, \'IDR\');\r\n                        '),
 (432,431,'2024-02-18 22:34:12','ALTER TABLE tblrentalreceive\r\n                    DROP Column expense ;'),
 (433,432,'2024-02-18 22:34:12',' ALTER TABLE tblbiyatambahan ADD COLUMN status varchar(10) not null default \'\''),
 (434,433,'2024-02-20 13:39:11',' ALTER TABLE tblbiayatambahan ADD COLUMN status varchar(10) not null default \'\''),
 (435,434,'2024-02-20 13:39:11',' ALTER TABLE tbltransd ADD COLUMN jenistrans varchar(25) not null default \'\' after id '),
 (436,435,'2024-02-20 13:39:11',' ALTER TABLE tblrentalsalesorderd ADD COLUMN discpersinv double default 0 after discountinv '),
 (437,436,'2024-02-20 22:51:03',' ALTER TABLE tblrentaldeliveryorderd ADD COLUMN jamin datetime not null default \'1111-11-11 00:00:00\''),
 (438,437,'2024-02-20 22:51:03','ALTER TABLE tblrentalreceive\r\n                    DROP Column discount ;'),
 (439,438,'2024-02-20 22:51:03',' ALTER TABLE tblrentalreceived ADD COLUMN unit varchar(50) not null default \'\''),
 (440,439,'2024-02-21 03:33:18',' ALTER TABLE tblrentalreceived ADD COLUMN discountinv double default 0'),
 (441,440,'2024-02-21 03:33:18',' ALTER TABLE tblrentaldeliveryorderd ADD COLUMN subtotal double default 0'),
 (442,441,'2024-02-21 03:33:18',' ALTER TABLE tblrentaldeliveryorderd ADD COLUMN discperperiode double default 0'),
 (443,442,'2024-02-28 16:39:08',' ALTER TABLE tblrentaldeliveryorderd ADD COLUMN jatuhtempo date '),
 (444,443,'2024-02-28 16:39:08',' ALTER TABLE tblassepod ADD COLUMN catatanitem text not null'),
 (445,444,'2024-02-28 16:39:09',' ALTER TABLE tblassetpod ADD COLUMN catatanitem text not null'),
 (446,445,'2024-02-28 16:39:09',' ALTER TABLE tblrentalreceived ADD COLUMN catatanitem text not null'),
 (447,446,'2024-02-28 16:39:09',' ALTER TABLE tblrentalquotationd ADD COLUMN catatanitem text not null'),
 (448,447,'2024-02-28 16:39:10',' ALTER TABLE tblrentalsalesorderd ADD COLUMN catatanitem text not null'),
 (449,448,'2024-02-28 16:39:10',' ALTER TABLE tblrentaldeliveryorderd ADD COLUMN catatanitem text not null'),
 (450,449,'2024-02-28 16:39:10','INSERT INTO tbllinkpr(id, kode, linkper, jenistrans, iskredit, subgroup, idpr, ccy) VALUES \n                            (145, \'SP145\', \'Receive Asset - Asset Account\', \'8500\', 1, \'Receive Asset\', 1, \'IDR\'),\n                            (146, \'SP146\', \'Receive Asset - Acumulated Depreciation\', \'8500\', 1, \'Receive Asset\', 1, \'IDR\'),\n                            (147, \'SP147\', \'Receive Asset - Depreciation Expense\', \'8500\', 1, \'Receive Asset\', 1, \'IDR\');'),
 (451,450,'2024-02-28 16:39:11',' ALTER TABLE tblasset ADD COLUMN jampembelian date '),
 (452,451,'2024-02-28 16:39:12','SELECT table_name\r\n                    FROM information_schema.columns\r\n                    WHERE table_name = \'tblrentalaksesoris\' \r\n                    and table_schema = \'gf3\'\r\n                    and column_name = \'jamupt\''),
 (453,452,'2024-02-28 16:39:12','SELECT table_name\r\n                    FROM information_schema.columns\r\n                    WHERE table_name = \'tblrentalaksesoris\' \r\n                    and table_schema = \'gf3\'\r\n                    and column_name = \'jenistrans\''),
 (454,453,'2024-02-28 16:39:13','ALTER TABLE tblasset\r\n                    DROP Column jampembelian ;'),
 (455,454,'2024-02-28 16:39:13','SELECT table_name\r\n                    FROM information_schema.columns\r\n                    WHERE table_name = \'tblrentalinvoice\' \r\n                    and table_schema = \'gf3\'\r\n                    and column_name = \'kodecust\''),
 (456,455,'2024-02-28 16:39:13',' ALTER TABLE tblasset ADD COLUMN nokodeclb varchar(255) not null default \'\' after kodemesin2 '),
 (457,456,'2024-02-28 16:39:14',' ALTER TABLE tblrentalreceived ADD COLUMN notranspo varchar(50) not null default \'\' after notrans '),
 (458,457,'2024-02-28 16:39:15',' ALTER TABLE tbldeposit ADD COLUMN idpr varchar(10) not null default \'\' after isrefund '),
 (459,458,'2024-02-28 16:39:15','ALTER TABLE tblrentalreceived\r\n                    DROP Column catatanitem ;'),
 (460,459,'2024-02-28 16:39:16',' ALTER TABLE tblasset ADD COLUMN rak varchar(255) not null default \'\' after kodesupplier '),
 (461,460,'2024-02-28 16:39:16',' ALTER TABLE tblbarang ADD COLUMN jenisitem varchar(255) not null default \'\''),
 (462,461,'2024-02-28 16:39:17','SELECT table_name\r\n                    FROM information_schema.columns\r\n                    WHERE table_name = \'tblhakuser\' \r\n                    and table_schema = \'gf3\'\r\n                    and column_name = \'akses\''),
 (463,462,'2024-02-28 16:39:17',' ALTER TABLE tbluser ADD COLUMN token varchar(10) not null default \'\' after idakses '),
 (464,463,'2024-02-29 08:23:20',' ALTER TABLE tblrentalinvoice ADD COLUMN notransinv varchar(255) not null default \'\' after notrans '),
 (465,464,'2024-02-29 08:23:20',' ALTER TABLE tbldomaintenance ADD COLUMN kodepic varchar(25) not null default \'\' after tanggal '),
 (466,465,'2024-02-29 08:23:20','INSERT INTO tbljenistransaksi (kodetransaksi, nama, kodedepan, pakaitahun, pakaibulan)\r\n                            VALUES (\'5501\', \'Maintenance\', \'MT\', \'1\', \'1\')'),
 (467,466,'2024-02-29 08:23:20','INSERT INTO tbllinkpr(kode, linkper, jenistrans, iskredit, subgroup, idpr, ccy) VALUES \n                            (\'SP148\', \'Maintenance Asset\', \'5501\', 1, \'Maintenance Asset\', \'166\', \'IDR\'),\n                            (\'SP149\', \'Piutang Maintenance Asset\', \'5501\', 1, \'Maintenance Asset\', \'17\', \'IDR\');'),
 (468,467,'2024-02-29 08:23:20','INSERT INTO tbljenistransaksi (kodetransaksi, nama, kodedepan, pakaitahun, pakaibulan)\r\n                            VALUES (\'8600\', \'Rental Invoice\', \'INV\', 1, 1)'),
 (469,468,'2024-03-01 09:40:56',' ALTER TABLE tblrentalinvoice ADD COLUMN status varchar(10) not null default \'\''),
 (470,469,'2024-03-12 07:52:17',' ALTER TABLE tblrentallideveyrorderd ADD COLUMN isfinish tinyint(1) not null default 0'),
 (471,470,'2024-03-12 07:52:17',' ALTER TABLE tblrentalsalesorderd ADD COLUMN isfinish tinyint(1) not null default 0'),
 (472,471,'2024-03-12 07:52:17','ALTER TABLE tblrentalsalesorderd\r\n                    DROP Column isfinish ;'),
 (473,472,'2024-03-12 07:52:17','ALTER TABLE tblrentalsalesorder\r\n                    DROP Column discpers ;'),
 (474,473,'2024-03-12 07:52:17',' ALTER TABLE tblrentalsalesorderd ADD COLUMN noref varchar(255) not null default \'\''),
 (475,474,'2024-03-12 07:52:17',' ALTER TABLE tbltranslog ADD COLUMN keterangan varchar(255) not null default \'\''),
 (476,475,'2024-03-12 07:52:17',' ALTER TABLE tblrentaljoblist ADD COLUMN status varchar(10) not null default \'\''),
 (477,476,'2024-03-12 07:52:17',' ALTER TABLE tblrentaljoblist ADD COLUMN notrans varchar(125) not null default \'\' after projek '),
 (478,477,'2024-03-12 07:52:17',' ALTER TABLE tblassetpod ADD COLUMN isdetail tinyint(1) not null default 0'),
 (479,478,'2024-03-12 07:52:18',' ALTER TABLE tbldomaintenance ADD COLUMN jammt datetime not null default \'1111-11-11 00:00:00\''),
 (480,479,'2024-03-12 07:52:18',' ALTER TABLE tbldomaintenance ADD COLUMN kodemesin varchar(50) not null default \'\' after notrans '),
 (481,480,'2024-03-12 07:52:18',' ALTER TABLE tblasset ADD COLUMN notransmk varchar(125) not null default \'\''),
 (482,481,'2024-03-12 07:52:18',' ALTER TABLE tbljoblistd ADD COLUMN notransmt varchar(50) not null default \'\' after notrans '),
 (483,482,'2024-03-12 07:52:18',' ALTER TABLE tblrentalmutasimasuk ADD COLUMN userupt varchar(155) not null default \'\''),
 (484,483,'2024-03-12 07:52:18','INSERT INTO tbllinkpr(kode, linkper, jenistrans, iskredit, subgroup, idpr, ccy) VALUES \n                            (\'SP150\', \'Mutasi Masuk\', \'6001\', 1, \'Rental Mutasi\', \'155\', \'IDR\'),\n                            (\'SP151\', \'Mutasi Keluar\', \'6002\', 1, \'Rental Mutasi\', \'154\', \'IDR\');'),
 (485,484,'2024-03-12 07:52:19','ALTER TABLE tblrentalmutasimasuk\r\n                    DROP Column jamupt ;'),
 (486,485,'2024-03-12 07:52:19',' ALTER TABLE tbluser ADD COLUMN kodekaryawan varchar(50) not null default \'\' after kode '),
 (487,486,'2024-03-12 07:52:19','INSERT INTO tbllinkpr(kode, linkper, jenistrans, iskredit, subgroup, idpr, ccy) VALUES \r\n                            (\'SP152\', \'Mutasi Masuk Debit\', \'6001\', 0, \'Rental Mutasi\', \'1\', \'IDR\'),\r\n                            (\'SP153\', \'Mutasi Masuk Discount\', \'6001\', 1, \'Rental Mutasi\', \'1\', \'IDR\');'),
 (488,487,'2024-03-12 07:52:19',' ALTER TABLE tblrentalmutasikeluard ADD COLUMN gudang varchar(255) not null default \'\''),
 (489,488,'2024-03-12 07:52:20','INSERT INTO tbllinkpr(kode, linkper, jenistrans, iskredit, subgroup, idpr, ccy) VALUES \r\n                    (\'SP154\', \'Mutasi Keluar Debit\', \'6001\', 0, \'Rental Mutasi\', \'1\', \'IDR\'),\r\n                    (\'SP155\', \'Mutasi Keluar Discount\', \'6001\', 1, \'Rental Mutasi\', \'1\', \'IDR\');'),
 (490,489,'2024-03-12 07:52:20',' ALTER TABLE tblrentalmutasikeluar ADD COLUMN discount double default 0 after harga '),
 (491,490,'2024-03-12 07:52:20',' ALTER TABLE tblrentalmutasimasuk ADD COLUMN remarkcancel text not null'),
 (492,491,'2024-03-12 11:11:04','UPDATE tbllinkpr set subgroup = \'Lainnya\' where kode in (\'SP148\')'),
 (493,492,'2024-03-12 11:32:25',' ALTER TABLE tblrentalmutasikeluard ADD COLUMN qty double default 0 after notrans '),
 (494,493,'2024-04-15 15:59:45','INSERT INTO tbllinkpr(kode, linkper, jenistrans, iskredit, subgroup, idpr, ccy) VALUES \r\n                    (\'SP156\', \'Asset Rusak\', \'3011\', 0, \'Lainnya\', \'1\', \'IDR\')'),
 (495,494,'2024-04-23 10:30:50',' ALTER TABLE tblrentalmutasikeluard ADD COLUMN satuan varchar(125) not null default \'\' after qty '),
 (496,495,'2024-04-23 10:30:50',' ALTER TABLE tblrentalmutasimasukd ADD COLUMN isdetail tinyint(1) not null default 0 after qty '),
 (497,496,'2024-04-23 10:30:50',' ALTER TABLE tblasset ADD COLUMN harga double default 0 after noseri '),
 (498,497,'2024-04-23 10:30:50','SELECT table_name\r\n                    FROM information_schema.columns\r\n                    WHERE table_name = \'tblassetsementarad\' \r\n                    and table_schema = \'gf4\'\r\n                    and column_name = \'isdetail\''),
 (499,498,'2024-04-23 10:30:50','insert into tbljenistransaksi(kodetransaksi, nama, kodedepan, pakaitahun, pakaibulan) values \r\n                           (\'5002\', \'Asset Sementara\', \'ASM\', 1, 1)'),
 (500,499,'2024-04-23 10:30:50','ALTER TABLE tblassetsementarad\r\n                    DROP Column discpersinv ;'),
 (501,500,'2024-04-23 10:30:50','ALTER TABLE tblassetsementara\r\n                    DROP Column term ;'),
 (502,501,'2024-04-23 10:30:50','ALTER TABLE tblassetsementarad\r\n                    DROP Column taxpers ;'),
 (503,502,'2024-04-23 10:30:50','insert into tbljenistransaksi(kodetransaksi, nama, kodedepan, pakaitahun, pakaibulan) values \r\n                           (\'9600\', \'Rental Asset Invoice\', \'RAI\', 1, 1)'),
 (504,503,'2024-04-23 10:30:50',' ALTER TABLE tblrentalinvoice ADD COLUMN isasset tinyint(1) not null default 0 after satuan '),
 (505,504,'2024-04-23 10:30:50','INSERT INTO tbllinkpr(id, kode, linkper, jenistrans, iskredit, subgroup, idpr, ccy) VALUES \r\n                        (158, \'SP157\', \'Rental Asset Sementara - Kredit\', \'9600\', 1, \'Asset Sementara\', 1, \'IDR\'),\r\n                        (159, \'SP158\', \'Rental Asset Sementara - Debit\', \'9600\', 1, \'Asset Sementara\', 1, \'IDR\'),\r\n                        (160, \'SP159\', \'Rental Asset Sementara - Discount Per Item\', \'9600\', 1, \'Asset Sementara\', 1, \'IDR\'),\r\n                        (161, \'SP160\', \'Rental Asset Sementara - Discount\', \'9600\', 1, \'Asset Sementara\', 1, \'IDR\'),\r\n                        (162, \'SP161\', \'Rental Asset Sementara - Biaya Tambahan\', \'9600\', 1, \'Delivery Order\', 1, \'IDR\')'),
 (506,505,'2024-04-23 10:30:51',' ALTER TABLE tblrentalreceived ADD COLUMN notransasset varchar(255) not null default \'\' after notrans '),
 (507,506,'2024-04-23 10:30:51','INSERT INTO tbllinkpr(kode, linkper, jenistrans, iskredit, subgroup, idpr, ccy) VALUES \r\n                            (\'SP162\', \'Jasa Maintenance Asset\', \'5501\', 0, \'Lainnya\', 1, \'IDR\');'),
 (508,507,'2024-04-24 08:26:52',' ALTER TABLE tblasset ADD COLUMN isam tinyint(1) not null default 0 after ismm '),
 (509,508,'2024-04-24 08:26:52',' ALTER TABLE tblrentalreceive ADD COLUMN discount double default 0 after harga '),
 (510,509,'2024-04-26 16:17:38','ALTER TABLE tblassetsementara\r\n                    DROP Column taxpers ;'),
 (511,510,'2024-04-26 16:17:38',' ALTER TABLE tblmaintenancejasa ADD COLUMN idpr int(15) not null default 0 after iscredit '),
 (512,511,'2024-04-26 16:17:38',' ALTER TABLE tblassetsementara ADD COLUMN discpers double default 0'),
 (513,512,'2024-04-26 16:17:38',' ALTER TABLE tblassetsementara ADD COLUMN taxpers double default 0'),
 (514,513,'2024-04-26 16:17:38','ALTER TABLE tblassetsementara\r\n                    DROP Column expense ;'),
 (515,514,'2024-04-26 16:17:39','SELECT table_name\r\n                    FROM information_schema.columns\r\n                    WHERE table_name = \'tblbayarsewa\' \r\n                    and table_schema = \'gf3\'\r\n                    and column_name = \'status\''),
 (516,515,'2024-04-26 16:17:39','SELECT table_name\r\n                    FROM information_schema.columns\r\n                    WHERE table_name = \'tblbayarsewa\' \r\n                    and table_schema = \'gf3\'\r\n                    and column_name = \'satuan\''),
 (517,516,'2024-04-26 16:17:39','SELECT table_name\r\n                    FROM information_schema.columns\r\n                    WHERE table_name = \'tblbayarsewa\' \r\n                    and table_schema = \'gf3\'\r\n                    and column_name = \'kodevendor\''),
 (518,517,'2024-04-26 16:17:39','SELECT table_name\r\n                    FROM information_schema.columns\r\n                    WHERE table_name = \'tblbayarsewa\' \r\n                    and table_schema = \'gf3\'\r\n                    and column_name = \'notransinv\''),
 (519,518,'2024-04-26 16:17:39','insert into tbljenistransaksi(id, kodetransaksi, nama, kodedepan, pakaitahun, pakaibulan) values\r\n                            (\'115\', \'5003\', \'Rental Bayar Sewa\', \'RBS\', 1, 1);'),
 (520,519,'2024-04-26 16:17:39','SELECT table_name\r\n                    FROM information_schema.columns\r\n                    WHERE table_name = \'tblbayarsewa\' \r\n                    and table_schema = \'gf3\'\r\n                    and column_name = \'notrans\''),
 (521,520,'2024-04-26 16:17:39',' ALTER TABLE tbllinkpayment ADD COLUMN notrans varchar(255) not null default \'\' after id '),
 (522,521,'2024-04-26 16:17:39',' ALTER TABLE tbllistpayment ADD COLUMN notrans varchar(255) not null default \'\' after id '),
 (523,522,'2024-04-26 16:17:39',' ALTER TABLE tbldomaintenance ADD COLUMN rejectremark text not null'),
 (524,523,'2024-04-30 13:39:14','SELECT table_name\r\n                    FROM information_schema.columns\r\n                    WHERE table_name = \'tblbayarsewa\' \r\n                    and table_schema = \'gf3\'\r\n                    and column_name = \'notransasm\''),
 (525,524,'2024-04-30 13:39:14','SELECT table_name\r\n                    FROM information_schema.columns\r\n                    WHERE table_name = \'tblperpanjangsewa\' \r\n                    and table_schema = \'gf3\'\r\n                    and column_name = \'status\''),
 (526,525,'2024-04-30 13:39:14','SELECT table_name\r\n                    FROM information_schema.columns\r\n                    WHERE table_name = \'tblperpanjangsewa\' \r\n                    and table_schema = \'gf3\'\r\n                    and column_name = \'kodemesin\''),
 (527,526,'2024-04-30 13:39:14',' ALTER TABLE tblperpanjangsewa ADD COLUMN kodevendor varchar(125) not null default \'\' after kodemesin '),
 (528,527,'2024-04-30 13:39:14','SELECT table_name\r\n                    FROM information_schema.columns\r\n                    WHERE table_name = \'tblpotongsewa\' \r\n                    and table_schema = \'gf3\'\r\n                    and column_name = \'status\''),
 (529,528,'2024-04-30 13:39:14',' ALTER TABLE tbldomaintenance ADD COLUMN jamapprove datetime not null default \'1111-11-11 00:00:00\''),
 (530,529,'2024-04-30 13:39:14',' ALTER TABLE tblassetsementarad ADD COLUMN userfinish varchar(155) not null default \'\'');
/*!40000 ALTER TABLE `tblsync` ENABLE KEYS */;


--
-- Definition of table `tbltipepembelian`
--

DROP TABLE IF EXISTS `tbltipepembelian`;
CREATE TABLE `tbltipepembelian` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `kode` varchar(30) NOT NULL DEFAULT '',
  `nama` varchar(100) NOT NULL DEFAULT '',
  `userin` varchar(100) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltipepembelian`
--

/*!40000 ALTER TABLE `tbltipepembelian` DISABLE KEYS */;
INSERT INTO `tbltipepembelian` (`id`,`kode`,`nama`,`userin`,`jamin`) VALUES 
 (1,'TPB0001','Pembelian Barang','JACKY','2023-09-14 00:00:00');
/*!40000 ALTER TABLE `tbltipepembelian` ENABLE KEYS */;


--
-- Definition of table `tbltipepenjualan`
--

DROP TABLE IF EXISTS `tbltipepenjualan`;
CREATE TABLE `tbltipepenjualan` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `kode` varchar(100) NOT NULL DEFAULT '',
  `nama` varchar(100) NOT NULL DEFAULT '',
  `userin` varchar(100) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltipepenjualan`
--

/*!40000 ALTER TABLE `tbltipepenjualan` DISABLE KEYS */;
INSERT INTO `tbltipepenjualan` (`id`,`kode`,`nama`,`userin`,`jamin`) VALUES 
 (1,'PJ0001','Penjualan Barang','JACKY','2023-09-01 09:38:41');
/*!40000 ALTER TABLE `tbltipepenjualan` ENABLE KEYS */;


--
-- Definition of table `tbltrans`
--

DROP TABLE IF EXISTS `tbltrans`;
CREATE TABLE `tbltrans` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(50) DEFAULT NULL,
  `jenistrans` varchar(25) NOT NULL DEFAULT '',
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `keterangan` varchar(150) NOT NULL DEFAULT '',
  `catatan` text,
  `remarkcancel` text,
  `status` varchar(5) NOT NULL DEFAULT '',
  `userin` varchar(25) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupt` varchar(25) NOT NULL DEFAULT '',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tbltrans` (`notrans`,`jenistrans`),
  KEY `notrans` (`notrans`),
  KEY `tanggal` (`tanggal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltrans`
--

/*!40000 ALTER TABLE `tbltrans` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltrans` ENABLE KEYS */;


--
-- Definition of table `tbltransd`
--

DROP TABLE IF EXISTS `tbltransd`;
CREATE TABLE `tbltransd` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `jenistrans` varchar(25) NOT NULL DEFAULT '',
  `notrans` varchar(50) DEFAULT NULL,
  `nobukti` varchar(50) DEFAULT NULL,
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `idpr` varchar(25) NOT NULL DEFAULT '',
  `ccy` varchar(10) NOT NULL DEFAULT '',
  `deskripsi` text,
  `amount` double DEFAULT '0',
  `kodeclient` varchar(25) NOT NULL DEFAULT '',
  `tipetrans` varchar(5) NOT NULL DEFAULT '',
  `jenisclient` varchar(5) NOT NULL DEFAULT '',
  `kurs` double DEFAULT '0',
  `status` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `tbltransd` (`notrans`,`idpr`,`amount`,`kodeclient`,`tipetrans`),
  KEY `notrans` (`notrans`),
  KEY `tanggal` (`tanggal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltransd`
--

/*!40000 ALTER TABLE `tbltransd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltransd` ENABLE KEYS */;


--
-- Definition of table `tbltransferkas`
--

DROP TABLE IF EXISTS `tbltransferkas`;
CREATE TABLE `tbltransferkas` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(25) NOT NULL DEFAULT '',
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `catatan` text NOT NULL,
  `idprdariacc` varchar(25) NOT NULL DEFAULT '',
  `catatandari` text NOT NULL,
  `tanggaldari` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `nominal` double DEFAULT '0',
  `kurs` double DEFAULT '0',
  `ccy` varchar(15) NOT NULL DEFAULT '',
  `idprdaribiaya` varchar(25) NOT NULL DEFAULT '',
  `nominalbiaya` double DEFAULT '0',
  `kursbiaya` double DEFAULT '0',
  `ccybiaya` varchar(15) NOT NULL DEFAULT '',
  `idprkeacc` varchar(25) NOT NULL DEFAULT '',
  `ccyke` varchar(25) NOT NULL DEFAULT '',
  `kurske` double DEFAULT '0',
  `catatanke` text NOT NULL,
  `tanggalke` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `isKeTujuan` tinyint(1) NOT NULL DEFAULT '0',
  `remarkcancel` text NOT NULL,
  `userin` varchar(150) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupt` varchar(150) NOT NULL DEFAULT '',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `status` varchar(5) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltransferkas`
--

/*!40000 ALTER TABLE `tbltransferkas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltransferkas` ENABLE KEYS */;


--
-- Definition of table `tbltranslog`
--

DROP TABLE IF EXISTS `tbltranslog`;
CREATE TABLE `tbltranslog` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(255) NOT NULL DEFAULT '',
  `kodedepan` varchar(255) NOT NULL DEFAULT '',
  `tanggal` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userin` varchar(255) NOT NULL DEFAULT '',
  `jamupt` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userupt` varchar(255) NOT NULL DEFAULT '',
  `statusid` int(11) NOT NULL DEFAULT '0',
  `keterangan` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltranslog`
--

/*!40000 ALTER TABLE `tbltranslog` DISABLE KEYS */;
INSERT INTO `tbltranslog` (`id`,`notrans`,`kodedepan`,`tanggal`,`userin`,`jamupt`,`userupt`,`statusid`,`keterangan`) VALUES 
 (1,'ENG00002','Asset Request','2024-04-30 13:41:00','JACKY','2024-04-30 13:41:00','JACKY',20,''),
 (2,'ENG00002','Asset Request','2024-04-30 13:41:06','JACKY','2024-04-30 13:41:06','JACKY',1,'Update Asset Status'),
 (3,'ENG00002','Asset Request','2024-04-30 13:41:08','JACKY','2024-04-30 13:41:08','JACKY',1,'Update Asset Status'),
 (4,'ENG00002','Asset Request','2024-04-30 13:41:10','JACKY','2024-04-30 13:41:10','JACKY',1,'Update Asset Status'),
 (5,'ENG00001','Asset Request','2024-04-30 13:41:20','JACKY','2024-04-30 13:41:20','JACKY',1,'Update Asset Status'),
 (6,'ENG00001','Asset Request','2024-04-30 13:41:21','JACKY','2024-04-30 13:41:21','JACKY',1,'Update Asset Status'),
 (7,'ENG00001','Asset Request','2024-04-30 13:41:23','JACKY','2024-04-30 13:41:23','JACKY',1,'Update Asset Status');
/*!40000 ALTER TABLE `tbltranslog` ENABLE KEYS */;


--
-- Definition of table `tbluser`
--

DROP TABLE IF EXISTS `tbluser`;
CREATE TABLE `tbluser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `katasandi` varchar(255) DEFAULT NULL,
  `idakses` int(2) NOT NULL DEFAULT '0',
  `token` varchar(10) NOT NULL DEFAULT '',
  `kode` varchar(50) NOT NULL DEFAULT '',
  `kodekaryawan` varchar(50) NOT NULL DEFAULT '',
  `pemilik` varchar(100) NOT NULL DEFAULT '',
  `pelanggan` varchar(100) NOT NULL DEFAULT '',
  `groupuser` varchar(50) NOT NULL DEFAULT '',
  `hargajual` varchar(100) NOT NULL DEFAULT '',
  `sales` varchar(50) NOT NULL DEFAULT '',
  `chk1` tinyint(1) NOT NULL DEFAULT '0',
  `chk2` tinyint(1) NOT NULL DEFAULT '0',
  `chk3` tinyint(1) NOT NULL DEFAULT '0',
  `crccy` varchar(50) NOT NULL DEFAULT '',
  `lembarjatuhtempo` double DEFAULT '0',
  `discjatuhtempo` double DEFAULT '0',
  `discjatuhtempo2` double DEFAULT '0',
  `lembarjatuhtempo2` double DEFAULT '0',
  `unvalidated` double DEFAULT '0',
  `maxcrd` double DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `lastlogin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `userin` varchar(100) NOT NULL DEFAULT '',
  `userupd` varchar(100) NOT NULL DEFAULT '',
  `jamin` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `jamupd` datetime NOT NULL DEFAULT '1111-11-11 00:00:00',
  `jatuhtempo2` double DEFAULT '0',
  `jatuhtempo` double DEFAULT '0',
  `kodeval` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=910;

--
-- Dumping data for table `tbluser`
--

/*!40000 ALTER TABLE `tbluser` DISABLE KEYS */;
INSERT INTO `tbluser` (`id`,`nama`,`katasandi`,`idakses`,`token`,`kode`,`kodekaryawan`,`pemilik`,`pelanggan`,`groupuser`,`hargajual`,`sales`,`chk1`,`chk2`,`chk3`,`crccy`,`lembarjatuhtempo`,`discjatuhtempo`,`discjatuhtempo2`,`lembarjatuhtempo2`,`unvalidated`,`maxcrd`,`status`,`lastlogin`,`userin`,`userupd`,`jamin`,`jamupd`,`jatuhtempo2`,`jatuhtempo`,`kodeval`) VALUES 
 (1,'jacky','123',1,'','USR0001','','','','','','',0,0,0,'',0,0,0,0,0,0,0,'2024-05-02 09:34:40','','','1111-11-11 00:00:00','1111-11-11 00:00:00',0,0,''),
 (3,'admin','123',1,'','USR0003','','','','','','',0,0,0,'',0,0,0,0,0,0,0,'1111-11-11 00:00:00','','','1111-11-11 00:00:00','1111-11-11 00:00:00',0,0,''),
 (4,'Operator','123',0,'','USR0004','KYW0001','Operator','PLG020001','','---','',0,0,0,'',0,0,0,0,0,0,5,'2024-03-12 11:13:26','JACKY','JACKY','2024-03-12 10:05:26','2024-04-16 08:40:35',0,0,'operator'),
 (5,'Krywn1','123',0,'','USR00004','KYW0002','Karyawan','PLG020001','','---','',0,0,0,'',0,0,0,0,0,0,5,'2024-04-16 08:54:10','JACKY','JACKY','2024-04-16 08:31:07','2024-04-16 08:42:07',0,0,'karyawan'),
 (6,'Wellson','test123',0,'','USR0005','','JACKY','','','---','',0,0,0,'',0,0,0,0,0,0,5,'2024-05-02 09:37:15','JACKY','','2024-05-02 09:35:38','1111-11-11 00:00:00',0,0,'');
/*!40000 ALTER TABLE `tbluser` ENABLE KEYS */;


--
-- Definition of table `tblvendor`
--

DROP TABLE IF EXISTS `tblvendor`;
CREATE TABLE `tblvendor` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `kodevendor` varchar(15) NOT NULL DEFAULT '',
  `nama` varchar(150) NOT NULL DEFAULT '',
  `alamat` text,
  `kodepos` varchar(5) NOT NULL DEFAULT '0',
  `daerah` varchar(50) NOT NULL DEFAULT '',
  `negara` varchar(50) NOT NULL DEFAULT '',
  `npwp` varchar(100) NOT NULL DEFAULT '0',
  `telpon` varchar(100) NOT NULL DEFAULT '',
  `telpon2` varchar(100) NOT NULL DEFAULT '',
  `telpon3` varchar(100) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `idrekening` int(100) NOT NULL DEFAULT '0',
  `term` varchar(100) DEFAULT NULL,
  `maxcrdccy` varchar(10) DEFAULT NULL,
  `maxkrd` int(100) NOT NULL DEFAULT '0',
  `idpajakmu` varchar(10) NOT NULL DEFAULT '',
  `pajakpers1` double DEFAULT '0',
  `pajakpers2` double DEFAULT '0',
  `email` varchar(150) NOT NULL DEFAULT '',
  `ispo` tinyint(1) NOT NULL DEFAULT '0',
  `ispmbcash` tinyint(1) NOT NULL DEFAULT '0',
  `ispmbcrd` tinyint(1) NOT NULL DEFAULT '0',
  `isrtpmbcash` tinyint(1) NOT NULL DEFAULT '0',
  `isrtpmbcrd` tinyint(1) NOT NULL DEFAULT '0',
  `islstprce` tinyint(1) NOT NULL DEFAULT '0',
  `website` varchar(150) NOT NULL DEFAULT '',
  `idkelompok` int(150) NOT NULL DEFAULT '0',
  `idkelompok2` int(150) NOT NULL DEFAULT '0',
  `ccy` varchar(5) DEFAULT NULL,
  `idkategori` int(50) NOT NULL DEFAULT '0',
  `userupt` varchar(45) NOT NULL DEFAULT 'user',
  `userin` varchar(45) NOT NULL DEFAULT 'user',
  `jam` datetime NOT NULL DEFAULT '2011-11-11 11:11:11',
  `jamupt` datetime NOT NULL DEFAULT '2011-11-11 11:11:11',
  `statusid` int(11) NOT NULL DEFAULT '1',
  `rekening1` varchar(100) NOT NULL DEFAULT '',
  `rekening2` varchar(100) NOT NULL DEFAULT '',
  `rekening3` varchar(100) NOT NULL DEFAULT '',
  `hubungi1` varchar(50) NOT NULL DEFAULT '',
  `hubungi2` varchar(50) NOT NULL DEFAULT '',
  `hubungi3` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvendor`
--

/*!40000 ALTER TABLE `tblvendor` DISABLE KEYS */;
INSERT INTO `tblvendor` (`id`,`kodevendor`,`nama`,`alamat`,`kodepos`,`daerah`,`negara`,`npwp`,`telpon`,`telpon2`,`telpon3`,`fax`,`idrekening`,`term`,`maxcrdccy`,`maxkrd`,`idpajakmu`,`pajakpers1`,`pajakpers2`,`email`,`ispo`,`ispmbcash`,`ispmbcrd`,`isrtpmbcash`,`isrtpmbcrd`,`islstprce`,`website`,`idkelompok`,`idkelompok2`,`ccy`,`idkategori`,`userupt`,`userin`,`jam`,`jamupt`,`statusid`,`rekening1`,`rekening2`,`rekening3`,`hubungi1`,`hubungi2`,`hubungi3`) VALUES 
 (1,'VND0001','Vendor A','Alamat A\r\n','29111','','NGR0001','ASD.12z.12.df','08912919','','','081212',0,'0','1',0,'1',0,0,'',1,1,1,1,1,0,'',0,0,NULL,0,'JACKY','JACKY','2024-02-28 17:17:19','2024-02-28 17:17:19',5,'','','','','','');
/*!40000 ALTER TABLE `tblvendor` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
