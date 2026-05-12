#
# TABLE STRUCTURE FOR: acc_coa
#

DROP TABLE IF EXISTS `acc_coa`;

CREATE TABLE `acc_coa` (
  `HeadCode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `HeadName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `PHeadName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `HeadLevel` int(11) NOT NULL,
  `IsActive` tinyint(1) NOT NULL,
  `IsTransaction` tinyint(1) NOT NULL,
  `IsGL` tinyint(1) NOT NULL,
  `HeadType` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `IsBudget` tinyint(1) NOT NULL,
  `IsDepreciation` tinyint(1) NOT NULL,
  `DepreciationRate` decimal(18,2) NOT NULL,
  `CreateBy` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CreateDate` datetime NOT NULL,
  `UpdateBy` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `UpdateDate` datetime NOT NULL,
  PRIMARY KEY (`HeadName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('10203000007', '-0', 'Customer Receivable', '4', '1', '1', '0', 'A', '0', '0', '0.00', '1', '2025-11-18 10:29:15', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('10203000006', 'Berhe-26', 'Customer Receivable', '4', '1', '1', '0', 'A', '0', '0', '0.00', '1', '2025-10-28 17:33:11', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('10203000005', 'tesfuuu-25', 'Customer Receivable', '4', '1', '1', '0', 'A', '0', '0', '0.00', '4', '2025-10-28 09:11:14', '', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: acc_transaction
#

DROP TABLE IF EXISTS `acc_transaction`;

CREATE TABLE `acc_transaction` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VNo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Vtype` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VDate` date DEFAULT NULL,
  `COAID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Narration` text COLLATE utf8_unicode_ci,
  `Debit` decimal(18,2) DEFAULT NULL,
  `Credit` decimal(18,2) DEFAULT NULL,
  `IsPosted` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreateBy` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UpdateDate` datetime DEFAULT NULL,
  `IsAppove` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1353 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('624', '20251021204232', 'Purchase', '2025-10-21', '10107', 'Inventory Debit For Purchase No20251021204232', '10000.00', '0.00', '1', '4', '2025-10-21 20:42:32', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('625', '20251021204232', 'Purchase', '2025-10-21', '402', 'Company Credit For Purchase No20251021204232', '10000.00', '0.00', '1', '4', '2025-10-21 20:42:32', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('626', '20251021204232', 'Purchase', '2025-10-21', '1020101', 'Cash in Hand For Purchase No20251021204232', '0.00', '10000.00', '1', '4', '2025-10-21 20:42:32', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('627', '20251021204319', 'Purchase', '2025-10-21', '10107', 'Inventory Debit For Purchase No20251021204319', '7500.00', '0.00', '1', '4', '2025-10-21 20:43:19', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('628', '20251021204319', 'Purchase', '2025-10-21', '402', 'Company Credit For Purchase No20251021204319', '7500.00', '0.00', '1', '4', '2025-10-21 20:43:19', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('629', '20251021204319', 'Purchase', '2025-10-21', '1020101', 'Cash in Hand For Purchase No20251021204319', '0.00', '7500.00', '1', '4', '2025-10-21 20:43:19', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('630', '4495478736', 'INVOICE', '2025-10-21', '10107', 'Inventory credit For Invoice No4495478736', '0.00', '2000.00', '1', '4', '2025-10-21 20:45:52', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('631', '4495478736', 'INVOICE', '2025-10-21', '10203000001', 'Customer debit For Invoice No4495478736', '4000.00', '0.00', '1', '4', '2025-10-21 20:45:52', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('632', '4495478736', 'INVOICE', '2025-10-21', '304', 'Customer debit For Invoice No4495478736', '0.00', '4000.00', '1', '4', '2025-10-21 20:45:52', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('633', '4495478736', 'INVOICE', '2025-10-21', '10203000001', 'Customer credit for Paid Amount For Invoice No4495478736', '0.00', '3000.00', '1', '4', '2025-10-21 20:45:52', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('634', '4495478736', 'INVOICE', '2025-10-21', '1020101', 'Cash in Hand For Invoice No4495478736', '3000.00', '0.00', '1', '4', '2025-10-21 20:45:52', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('635', '20251021211224', 'Purchase', '2025-10-21', '10107', 'Inventory Debit For Purchase No20251021211224', '4000.00', '0.00', '1', '5', '2025-10-21 21:12:24', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('636', '20251021211224', 'Purchase', '2025-10-21', '402', 'Company Credit For Purchase No20251021211224', '4000.00', '0.00', '1', '5', '2025-10-21 21:12:24', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('637', '20251021211224', 'Purchase', '2025-10-21', '1020101', 'Cash in Hand For Purchase No20251021211224', '0.00', '4000.00', '1', '5', '2025-10-21 21:12:24', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('638', '20251021212854', 'Purchase', '2025-10-21', '10107', 'Inventory Debit For Purchase No20251021212854', '20000.00', '0.00', '1', '5', '2025-10-21 21:28:54', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('639', '20251021212854', 'Purchase', '2025-10-21', '402', 'Company Credit For Purchase No20251021212854', '20000.00', '0.00', '1', '5', '2025-10-21 21:28:54', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('640', '20251021212854', 'Purchase', '2025-10-21', '1020101', 'Cash in Hand For Purchase No20251021212854', '0.00', '20000.00', '1', '5', '2025-10-21 21:28:54', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('641', '9974128881', 'INVOICE', '2025-10-21', '10107', 'Inventory credit For Invoice No9974128881', '0.00', '8250.00', '1', '5', '2025-10-21 21:33:06', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('642', '9974128881', 'INVOICE', '2025-10-21', '10203000002', 'Customer debit For Invoice No9974128881', '33000.00', '0.00', '1', '5', '2025-10-21 21:33:06', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('643', '9974128881', 'INVOICE', '2025-10-21', '304', 'Customer debit For Invoice No9974128881', '0.00', '33000.00', '1', '5', '2025-10-21 21:33:06', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('644', '9974128881', 'INVOICE', '2025-10-21', '10203000002', 'Customer credit for Paid Amount For Invoice No9974128881', '0.00', '33000.00', '1', '5', '2025-10-21 21:33:06', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('645', '9974128881', 'INVOICE', '2025-10-21', '1020101', 'Cash in Hand For Invoice No9974128881', '33000.00', '0.00', '1', '5', '2025-10-21 21:33:06', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('646', '20251022045031', 'Purchase', '2025-10-22', '10107', 'Inventory Debit For Purchase No20251022045031', '300.00', '0.00', '1', '4', '2025-10-22 04:50:31', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('647', '20251022045031', 'Purchase', '2025-10-22', '402', 'Company Credit For Purchase No20251022045031', '300.00', '0.00', '1', '4', '2025-10-22 04:50:31', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('648', '20251022045031', 'Purchase', '2025-10-22', '1020101', 'Cash in Hand For Purchase No20251022045031', '0.00', '300.00', '1', '4', '2025-10-22 04:50:31', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('649', '2811964254', 'INVOICE', '2025-10-22', '10107', 'Inventory credit For Invoice No2811964254', '0.00', '433.33', '1', '4', '2025-10-22 05:02:26', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('650', '2811964254', 'INVOICE', '2025-10-22', '10203000001', 'Customer debit For Invoice No2811964254', '200.00', '0.00', '1', '4', '2025-10-22 05:02:26', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('651', '2811964254', 'INVOICE', '2025-10-22', '304', 'Customer debit For Invoice No2811964254', '0.00', '200.00', '1', '4', '2025-10-22 05:02:26', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('652', '2811964254', 'INVOICE', '2025-10-22', '10203000001', 'Customer credit for Paid Amount For Invoice No2811964254', '0.00', '200.00', '1', '4', '2025-10-22 05:02:26', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('653', '2811964254', 'INVOICE', '2025-10-22', '1020101', 'Cash in Hand For Invoice No2811964254', '200.00', '0.00', '1', '4', '2025-10-22 05:02:26', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('654', '4133936794', 'INVOICE', '2025-10-22', '10107', 'Inventory credit For Invoice No4133936794', '0.00', '1500.00', '1', '4', '2025-10-22 05:14:39', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('655', '4133936794', 'INVOICE', '2025-10-22', '10203000001', 'Customer debit For Invoice No4133936794', '2000.00', '0.00', '1', '4', '2025-10-22 05:14:39', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('656', '4133936794', 'INVOICE', '2025-10-22', '304', 'Customer debit For Invoice No4133936794', '0.00', '2000.00', '1', '4', '2025-10-22 05:14:39', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('657', '4133936794', 'INVOICE', '2025-10-22', '10203000001', 'Customer credit for Paid Amount For Invoice No4133936794', '0.00', '2000.00', '1', '4', '2025-10-22 05:14:39', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('658', '4133936794', 'INVOICE', '2025-10-22', '1020101', 'Cash in Hand For Invoice No4133936794', '2000.00', '0.00', '1', '4', '2025-10-22 05:14:39', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('659', '6525643585', 'INVOICE', '2025-10-22', '10107', 'Inventory credit For Invoice No6525643585', '0.00', '433.33', '1', '1', '2025-10-22 05:50:07', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('660', '6525643585', 'INVOICE', '2025-10-22', '10203000001', 'Customer debit For Invoice No6525643585', '400.00', '0.00', '1', '1', '2025-10-22 05:50:07', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('661', '6525643585', 'INVOICE', '2025-10-22', '304', 'Customer debit For Invoice No6525643585', '0.00', '400.00', '1', '1', '2025-10-22 05:50:07', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('662', '6525643585', 'INVOICE', '2025-10-22', '10203000001', 'Customer credit for Paid Amount For Invoice No6525643585', '0.00', '1400.00', '1', '1', '2025-10-22 05:50:07', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('663', '6525643585', 'INVOICE', '2025-10-22', '1020101', 'Cash in Hand For Invoice No6525643585', '1400.00', '0.00', '1', '1', '2025-10-22 05:50:07', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('664', '7873169566', 'INVOICE', '2025-10-22', '10107', 'Inventory credit For Invoice No7873169566', '0.00', '833.33', '1', '4', '2025-10-22 05:53:38', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('665', '7873169566', 'INVOICE', '2025-10-22', '10203000001', 'Customer debit For Invoice No7873169566', '3000.00', '0.00', '1', '4', '2025-10-22 05:53:38', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('666', '7873169566', 'INVOICE', '2025-10-22', '304', 'Customer debit For Invoice No7873169566', '0.00', '3000.00', '1', '4', '2025-10-22 05:53:38', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('667', '7873169566', 'INVOICE', '2025-10-22', '10203000001', 'Customer credit for Paid Amount For Invoice No7873169566', '0.00', '3000.00', '1', '4', '2025-10-22 05:53:38', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('668', '7873169566', 'INVOICE', '2025-10-22', '1020101', 'Cash in Hand For Invoice No7873169566', '3000.00', '0.00', '1', '4', '2025-10-22 05:53:38', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('669', '6879871776', 'INVOICE', '2025-10-22', '10107', 'Inventory credit For Invoice No6879871776', '0.00', '375.00', '1', '1', '2025-10-22 08:36:41', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('670', '6879871776', 'INVOICE', '2025-10-22', '10203000001', 'Customer debit For Invoice No6879871776', '400.00', '0.00', '1', '1', '2025-10-22 08:36:41', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('671', '6879871776', 'INVOICE', '2025-10-22', '304', 'Customer debit For Invoice No6879871776', '0.00', '400.00', '1', '1', '2025-10-22 08:36:41', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('672', '6879871776', 'INVOICE', '2025-10-22', '10203000001', 'Customer credit for Paid Amount For Invoice No6879871776', '0.00', '400.00', '1', '1', '2025-10-22 08:36:41', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('673', '6879871776', 'INVOICE', '2025-10-22', '1020101', 'Cash in Hand For Invoice No6879871776', '400.00', '0.00', '1', '1', '2025-10-22 08:36:41', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('679', 'CHV-1', 'AD', '2025-10-22', '1020101', 'Cash Adjustment ', '100.00', '0.00', '1', '1', '2025-10-22 08:43:18', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('680', 'October 2025', 'Salary', '2025-10-22', '502040001', 'Employee Salary Generate Month ofOctober 2025', '0.00', '35000.00', '1', '1', '2025-10-22 09:01:44', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('681', '1', 'Salary', '2025-10-22', '1020101', 'Cash in hand Credit For Employee Salary for October 2025', '0.00', '35000.00', '1', 'Millaw alazer', '2025-10-22 09:02:25', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('682', '1', 'Salary', '2025-10-22', '404', 'Salary paid ForOctober 2025', '35000.00', '0.00', '1', 'Millaw alazer', '2025-10-22 09:02:25', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('683', '1', 'Salary', '2025-10-22', '502040001', 'Salary paid ForOctober 2025', '35000.00', '0.00', '1', 'Millaw alazer', '2025-10-22 09:02:25', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('684', '20251022090502', 'Expense', '2025-10-22', '402', 'Transport Expense 20251022090502', '100.00', '0.00', '1', '1', '2025-10-22 09:05:02', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('685', '20251022090502', 'Expense', '2025-10-22', '1020101', 'Transport Expense20251022090502', '0.00', '100.00', '1', '1', '2025-10-22 09:05:02', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('686', '1', 'Purcahse Assets', '2025-10-22', '405', 'Purchase Assets Purchase No.1', '0.00', '400.00', '1', '1', '2025-10-22 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('687', '1', 'Assets', '2025-10-22', '10107', 'Inventory Debit For Purchase Assets Purchase No1', '0.00', '400.00', '1', '1', '2025-10-22 09:11:18', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('688', '1', 'Assets', '2025-10-22', '50205000001', 'Purchase Assets Purchase No.1', '0.00', '400.00', '1', '1', '2025-10-22 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('689', '1', 'Assets', '2025-10-22', '10107', 'Inventory Debit For Purchase Assets Purchase No1', '400.00', '0.00', '1', '1', '2025-10-22 09:11:18', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('690', '1', 'Purcahse Assets', '2025-10-22', '50205000001', 'Purchase Assets Purchase No.1', '400.00', '0.00', '1', '1', '2025-10-22 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('691', '1', 'Purcahse Assets', '2025-10-22', '1020101', 'Cash in Hand For Voucher No1', '0.00', '400.00', '1', '1', '2025-10-22 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('697', 'October 2025', 'Salary', '2025-10-22', '502040001', 'Employee Salary Generate Month ofOctober 2025', '0.00', '35000.00', '1', '4', '2025-10-22 11:02:31', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('698', 'October 2025', 'Salary', '2025-10-22', '502040002', 'Employee Salary Generate Month ofOctober 2025', '0.00', '40000.00', '1', '4', '2025-10-22 11:02:31', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('699', '3', 'Salary', '2025-10-22', '1020101', 'Cash in hand Credit For Employee Salary for October 2025', '0.00', '40000.00', '1', 'Tesfahun Kalayou', '2025-10-22 11:02:58', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('700', '3', 'Salary', '2025-10-22', '404', 'Salary paid ForOctober 2025', '40000.00', '0.00', '1', 'Tesfahun Kalayou', '2025-10-22 11:02:58', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('701', '3', 'Salary', '2025-10-22', '502040002', 'Salary paid ForOctober 2025', '40000.00', '0.00', '1', 'Tesfahun Kalayou', '2025-10-22 11:02:58', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('702', '20251022110402', 'Expense', '2025-10-22', '401', 'Delivery Expense 20251022110402', '100.00', '0.00', '1', '4', '2025-10-22 11:04:02', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('703', '20251022110402', 'Expense', '2025-10-22', '1020101', 'Delivery Expense20251022110402', '0.00', '100.00', '1', '4', '2025-10-22 11:04:02', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('704', '2', 'Purcahse Assets', '2025-10-22', '405', 'Purchase Assets Purchase No.2', '0.00', '600.00', '1', '4', '2025-10-22 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('705', '2', 'Assets', '2025-10-22', '10107', 'Inventory Debit For Purchase Assets Purchase No2', '0.00', '600.00', '1', '4', '2025-10-22 11:05:30', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('706', '2', 'Assets', '2025-10-22', '50205000001', 'Purchase Assets Purchase No.2', '0.00', '600.00', '1', '4', '2025-10-22 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('707', '2', 'Assets', '2025-10-22', '10107', 'Inventory Debit For Purchase Assets Purchase No2', '600.00', '0.00', '1', '4', '2025-10-22 11:05:30', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('708', '2', 'Purcahse Assets', '2025-10-22', '50205000001', 'Purchase Assets Purchase No.2', '600.00', '0.00', '1', '4', '2025-10-22 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('709', '2', 'Purcahse Assets', '2025-10-22', '1020101', 'Cash in Hand For Voucher No2', '0.00', '600.00', '1', '4', '2025-10-22 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('710', 'serv-20251022113646', 'SERVICE', '2025-10-22', '305', 'Service Income For SERVICE Noserv-20251022113646', '0.00', '800.00', '1', '4', '2025-10-22 11:36:46', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('711', 'serv-20251022113646', 'SERVICE', '2025-10-22', '10203000001', 'Customer debit For service Noserv-20251022113646', '800.00', '0.00', '1', '4', '2025-10-22 11:36:46', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('712', 'serv-20251022113646', 'SERVICE', '2025-10-22', '10203000001', 'Customer credit for Paid Amount For Service Noserv-20251022113646', '0.00', '800.00', '1', '4', '2025-10-22 11:36:46', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('713', 'serv-20251022113646', 'SERVICE', '2025-10-22', '1020101', 'Cash in Hand For SERVICE Noserv-20251022113646', '800.00', '0.00', '1', '4', '2025-10-22 11:36:46', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('714', '20251022115349', 'Expense', '2025-10-22', '402', 'Transport Expense 20251022115349', '80.00', '0.00', '1', '1', '2025-10-22 11:53:49', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('715', '20251022115349', 'Expense', '2025-10-22', '102010201', 'CBE Expense 20251022115349', '0.00', '80.00', '1', '1', '2025-10-22 11:53:49', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('716', 'serv-20251022120421', 'SERVICE', '2025-10-22', '305', 'Service Income For SERVICE Noserv-20251022120421', '0.00', '1000.00', '1', '1', '2025-10-22 12:04:21', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('717', 'serv-20251022120421', 'SERVICE', '2025-10-22', '10203000001', 'Customer debit For service Noserv-20251022120421', '1000.00', '0.00', '1', '1', '2025-10-22 12:04:21', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('718', 'serv-20251022120421', 'SERVICE', '2025-10-22', '10203000001', 'Customer credit for Paid Amount For Service Noserv-20251022120421', '0.00', '1000.00', '1', '1', '2025-10-22 12:04:21', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('719', 'serv-20251022120421', 'SERVICE', '2025-10-22', '1020101', 'Cash in Hand For SERVICE Noserv-20251022120421', '1000.00', '0.00', '1', '1', '2025-10-22 12:04:21', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('720', '6338458387', 'INVOICE', '2025-10-22', '10107', 'Inventory credit For Invoice No6338458387', '0.00', '375.00', '1', '1', '2025-10-22 12:07:59', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('721', '6338458387', 'INVOICE', '2025-10-22', '10203000001', 'Customer debit For Invoice No6338458387', '400.00', '0.00', '1', '1', '2025-10-22 12:07:59', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('722', '6338458387', 'INVOICE', '2025-10-22', '304', 'Customer debit For Invoice No6338458387', '0.00', '400.00', '1', '1', '2025-10-22 12:07:59', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('723', '6338458387', 'INVOICE', '2025-10-22', '10203000001', 'Customer credit for Paid Amount For Invoice No6338458387', '0.00', '400.00', '1', '1', '2025-10-22 12:07:59', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('724', '6338458387', 'INVOICE', '2025-10-22', '1020101', 'Cash in Hand For Invoice No6338458387', '400.00', '0.00', '1', '1', '2025-10-22 12:07:59', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('727', 'serv-20251022121224', 'SERVICE', '2025-10-22', '305', 'Service Income For SERVICE Noserv-20251022121224', '0.00', '1000.00', '1', '1', '2025-10-22 12:12:24', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('728', 'serv-20251022121224', 'SERVICE', '2025-10-22', '10203000001', 'Customer debit For service Noserv-20251022121224', '1000.00', '0.00', '1', '1', '2025-10-22 12:12:24', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('729', '8459314136', 'INVOICE', '2025-10-22', '10107', 'Inventory credit For Invoice No8459314136', '0.00', '750.00', '1', '1', '2025-10-22 12:25:55', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('730', '8459314136', 'INVOICE', '2025-10-22', '10203000002', 'Customer debit For Invoice No8459314136', '800.00', '0.00', '1', '1', '2025-10-22 12:25:55', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('731', '8459314136', 'INVOICE', '2025-10-22', '304', 'Customer debit For Invoice No8459314136', '0.00', '800.00', '1', '1', '2025-10-22 12:25:55', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('732', '8459314136', 'INVOICE', '2025-10-22', '10203000002', 'Customer credit for Paid Amount For Invoice No8459314136', '0.00', '1500.00', '1', '1', '2025-10-22 12:25:55', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('733', '8459314136', 'INVOICE', '2025-10-22', '102010201', 'Paid amount for Invoice No 8459314136', '1500.00', '0.00', '1', '1', '2025-10-22 12:25:55', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('734', '20251025030109', 'Purchase', '2025-10-25', '10107', 'Inventory Debit For Purchase No20251025030109', '2500.00', '0.00', '1', '1', '2025-10-25 03:01:09', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('735', '20251025030109', 'Purchase', '2025-10-25', '402', 'Company Credit For Purchase No20251025030109', '2500.00', '0.00', '1', '1', '2025-10-25 03:01:09', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('736', '20251025030109', 'Purchase', '2025-10-25', '1020101', 'Cash in Hand For Purchase No20251025030109', '0.00', '2500.00', '1', '1', '2025-10-25 03:01:09', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('737', '8793821353', 'INVOICE', '2025-10-25', '10107', 'Inventory credit For Invoice No8793821353', '0.00', '1250.00', '1', '1', '2025-10-25 03:05:04', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('738', '8793821353', 'INVOICE', '2025-10-25', '10203000002', 'Customer debit For Invoice No8793821353', '2500.00', '0.00', '1', '1', '2025-10-25 03:05:04', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('739', '8793821353', 'INVOICE', '2025-10-25', '304', 'Customer debit For Invoice No8793821353', '0.00', '2500.00', '1', '1', '2025-10-25 03:05:04', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('740', '8793821353', 'INVOICE', '2025-10-25', '10203000002', 'Customer credit for Paid Amount For Invoice No8793821353', '0.00', '2500.00', '1', '1', '2025-10-25 03:05:04', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('741', '8793821353', 'INVOICE', '2025-10-25', '1020101', 'Cash in Hand For Invoice No8793821353', '2500.00', '0.00', '1', '1', '2025-10-25 03:05:04', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('742', '20251025034357', 'Purchase', '2025-10-25', '10107', 'Inventory Debit For Purchase No20251025034357', '45000.00', '0.00', '1', '4', '2025-10-25 03:43:57', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('743', '20251025034357', 'Purchase', '2025-10-25', '402', 'Company Credit For Purchase No20251025034357', '45000.00', '0.00', '1', '4', '2025-10-25 03:43:57', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('744', '20251025034357', 'Purchase', '2025-10-25', '1020101', 'Cash in Hand For Purchase No20251025034357', '0.00', '45000.00', '1', '4', '2025-10-25 03:43:57', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('745', '6117396514', 'INVOICE', '2025-10-25', '10107', 'Inventory credit For Invoice No6117396514', '0.00', '31875.00', '1', '4', '2025-10-25 03:44:32', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('746', '6117396514', 'INVOICE', '2025-10-25', '10203000002', 'Customer debit For Invoice No6117396514', '51000.00', '0.00', '1', '4', '2025-10-25 03:44:32', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('747', '6117396514', 'INVOICE', '2025-10-25', '304', 'Customer debit For Invoice No6117396514', '0.00', '51000.00', '1', '4', '2025-10-25 03:44:32', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('748', '6117396514', 'INVOICE', '2025-10-25', '10203000002', 'Customer credit for Paid Amount For Invoice No6117396514', '0.00', '51000.00', '1', '4', '2025-10-25 03:44:32', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('749', '6117396514', 'INVOICE', '2025-10-25', '1020101', 'Cash in Hand For Invoice No6117396514', '51000.00', '0.00', '1', '4', '2025-10-25 03:44:32', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('750', '20251025050230', 'Purchase', '2025-10-25', '10107', 'Inventory Debit For Purchase No20251025050230', '70200.00', '0.00', '1', '4', '2025-10-25 05:02:30', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('751', '20251025050230', 'Purchase', '2025-10-25', '402', 'Company Credit For Purchase No20251025050230', '70200.00', '0.00', '1', '4', '2025-10-25 05:02:30', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('752', '20251025050230', 'Purchase', '2025-10-25', '1020101', 'Cash in Hand For Purchase No20251025050230', '0.00', '70200.00', '1', '4', '2025-10-25 05:02:30', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('753', 'CHV-2', 'AD', '2025-10-25', '1020101', 'Cash Adjustment ', '100.00', '0.00', '1', '1', '2025-10-25 07:53:46', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('754', '20251025123637', 'Purchase', '2025-10-25', '10107', 'Inventory Debit For Purchase No20251025123637', '6000.00', '0.00', '1', '1', '2025-10-25 12:36:37', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('755', '20251025123637', 'Purchase', '2025-10-25', '402', 'Company Credit For Purchase No20251025123637', '6000.00', '0.00', '1', '1', '2025-10-25 12:36:37', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('756', '20251025123637', 'Purchase', '2025-10-25', '1020101', 'Cash in Hand For Purchase No20251025123637', '0.00', '6000.00', '1', '1', '2025-10-25 12:36:37', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('757', '20251025124042', 'Purchase', '2025-10-25', '10107', 'Inventory Debit For Purchase No20251025124042', '5000.00', '0.00', '1', '1', '2025-10-25 12:40:42', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('758', '20251025124042', 'Purchase', '2025-10-25', '402', 'Company Credit For Purchase No20251025124042', '5000.00', '0.00', '1', '1', '2025-10-25 12:40:42', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('759', '20251025124042', 'Purchase', '2025-10-25', '1020101', 'Cash in Hand For Purchase No20251025124042', '0.00', '5000.00', '1', '1', '2025-10-25 12:40:42', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('760', '20251025124300', 'Purchase', '2025-10-25', '10107', 'Inventory Debit For Purchase No20251025124300', '22500.00', '0.00', '1', '1', '2025-10-25 12:43:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('761', '20251025124300', 'Purchase', '2025-10-25', '402', 'Company Credit For Purchase No20251025124300', '22500.00', '0.00', '1', '1', '2025-10-25 12:43:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('762', '20251025124300', 'Purchase', '2025-10-25', '1020101', 'Cash in Hand For Purchase No20251025124300', '0.00', '22500.00', '1', '1', '2025-10-25 12:43:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('763', '3569761764', 'INVOICE', '2025-10-25', '10107', 'Inventory credit For Invoice No3569761764', '0.00', '24187.50', '1', '1', '2025-10-25 13:19:34', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('764', '3569761764', 'INVOICE', '2025-10-25', '10203000002', 'Customer debit For Invoice No3569761764', '5580000.00', '0.00', '1', '1', '2025-10-25 13:19:34', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('765', '3569761764', 'INVOICE', '2025-10-25', '304', 'Customer debit For Invoice No3569761764', '0.00', '5580000.00', '1', '1', '2025-10-25 13:19:34', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('766', '3569761764', 'INVOICE', '2025-10-25', '10203000002', 'Customer credit for Paid Amount For Invoice No3569761764', '0.00', '5579800.00', '1', '1', '2025-10-25 13:19:34', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('767', '3569761764', 'INVOICE', '2025-10-25', '1020101', 'Cash in Hand For Invoice No3569761764', '5579800.00', '0.00', '1', '1', '2025-10-25 13:19:34', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('768', '20251025141735', 'Purchase', '2025-10-25', '10107', 'Inventory Debit For Purchase No20251025141735', '1000.00', '0.00', '1', '1', '2025-10-25 14:17:35', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('769', '20251025141735', 'Purchase', '2025-10-25', '402', 'Company Credit For Purchase No20251025141735', '1000.00', '0.00', '1', '1', '2025-10-25 14:17:35', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('770', '20251025141735', 'Purchase', '2025-10-25', '1020101', 'Cash in Hand For Purchase No20251025141735', '0.00', '1000.00', '1', '1', '2025-10-25 14:17:35', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('771', '20251025142253', 'Purchase', '2025-10-25', '10107', 'Inventory Debit For Purchase No20251025142253', '1000.00', '0.00', '1', '1', '2025-10-25 14:22:53', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('772', '20251025142253', 'Purchase', '2025-10-25', '402', 'Company Credit For Purchase No20251025142253', '1000.00', '0.00', '1', '1', '2025-10-25 14:22:53', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('773', '20251025142253', 'Purchase', '2025-10-25', '1020101', 'Cash in Hand For Purchase No20251025142253', '0.00', '1000.00', '1', '1', '2025-10-25 14:22:53', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('774', '2', 'Salary', '2025-10-25', '1020101', 'Cash in hand Credit For Employee Salary for October 2025', '0.00', '35000.00', '1', 'Millaw alazer', '2025-10-25 15:34:10', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('775', '2', 'Salary', '2025-10-25', '404', 'Salary paid ForOctober 2025', '35000.00', '0.00', '1', 'Millaw alazer', '2025-10-25 15:34:10', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('776', '2', 'Salary', '2025-10-25', '502040001', 'Salary paid ForOctober 2025', '35000.00', '0.00', '1', 'Millaw alazer', '2025-10-25 15:34:10', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('777', '2', 'Salary', '2025-10-25', '1020101', 'Cash in hand Credit For Employee Salary for October 2025', '0.00', '35000.00', '1', 'Millaw alazer', '2025-10-25 15:36:01', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('778', '2', 'Salary', '2025-10-25', '404', 'Salary paid ForOctober 2025', '35000.00', '0.00', '1', 'Millaw alazer', '2025-10-25 15:36:01', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('779', '2', 'Salary', '2025-10-25', '502040001', 'Salary paid ForOctober 2025', '35000.00', '0.00', '1', 'Millaw alazer', '2025-10-25 15:36:01', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('780', '3', 'Purcahse Assets', '2025-10-25', '405', 'Purchase Assets Purchase No.3', '0.00', '36600.00', '1', '1', '2025-10-25 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('781', '3', 'Assets', '2025-10-25', '10107', 'Inventory Debit For Purchase Assets Purchase No3', '0.00', '36600.00', '1', '1', '2025-10-25 17:56:01', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('782', '3', 'Assets', '2025-10-25', '10107', 'Inventory Debit For Purchase Assets Purchase No3', '36600.00', '0.00', '1', '1', '2025-10-25 17:56:01', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('783', '3', 'Purcahse Assets', '2025-10-25', '1020101', 'Cash in Hand For Voucher No3', '0.00', '36600.00', '1', '1', '2025-10-25 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('784', '20251025184432', 'Purchase', '2025-10-25', '10107', 'Inventory Debit For Purchase No20251025184432', '6000.00', '0.00', '1', '1', '2025-10-25 18:44:32', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('785', '20251025184432', 'Purchase', '2025-10-25', '402', 'Company Credit For Purchase No20251025184432', '6000.00', '0.00', '1', '1', '2025-10-25 18:44:32', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('786', '20251025184432', 'Purchase', '2025-10-25', '1020101', 'Cash in Hand For Purchase No20251025184432', '0.00', '6000.00', '1', '1', '2025-10-25 18:44:32', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('787', '20251025184524', 'Purchase', '2025-10-25', '10107', 'Inventory Debit For Purchase No20251025184524', '8000.00', '0.00', '1', '1', '2025-10-25 18:45:24', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('788', '20251025184524', 'Purchase', '2025-10-25', '402', 'Company Credit For Purchase No20251025184524', '8000.00', '0.00', '1', '1', '2025-10-25 18:45:24', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('789', '20251025184524', 'Purchase', '2025-10-25', '1020101', 'Cash in Hand For Purchase No20251025184524', '0.00', '8000.00', '1', '1', '2025-10-25 18:45:24', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('790', '20251025184631', 'Purchase', '2025-10-25', '10107', 'Inventory Debit For Purchase No20251025184631', '22100.00', '0.00', '1', '1', '2025-10-25 18:46:31', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('791', '20251025184631', 'Purchase', '2025-10-25', '402', 'Company Credit For Purchase No20251025184631', '22100.00', '0.00', '1', '1', '2025-10-25 18:46:31', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('792', '20251025184631', 'Purchase', '2025-10-25', '1020101', 'Cash in Hand For Purchase No20251025184631', '0.00', '22100.00', '1', '1', '2025-10-25 18:46:31', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('793', '20251025184830', 'Purchase', '2025-10-25', '10107', 'Inventory Debit For Purchase No20251025184830', '500.00', '0.00', '1', '1', '2025-10-25 18:48:30', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('794', '20251025184830', 'Purchase', '2025-10-25', '402', 'Company Credit For Purchase No20251025184830', '500.00', '0.00', '1', '1', '2025-10-25 18:48:30', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('795', '20251025184830', 'Purchase', '2025-10-25', '1020101', 'Cash in Hand For Purchase No20251025184830', '0.00', '500.00', '1', '1', '2025-10-25 18:48:30', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('796', '20251025185254', 'Purchase', '2025-10-25', '10107', 'Inventory Debit For Purchase No20251025185254', '6000.00', '0.00', '1', '1', '2025-10-25 18:52:54', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('797', '20251025185254', 'Purchase', '2025-10-25', '402', 'Company Credit For Purchase No20251025185254', '6000.00', '0.00', '1', '1', '2025-10-25 18:52:54', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('798', '20251025185254', 'Purchase', '2025-10-25', '1020101', 'Cash in Hand For Purchase No20251025185254', '0.00', '6000.00', '1', '1', '2025-10-25 18:52:54', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('799', '20251025190819', 'Purchase', '2025-10-25', '10107', 'Inventory Debit For Purchase No20251025190819', '24000.00', '0.00', '1', '1', '2025-10-25 19:08:19', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('800', '20251025190819', 'Purchase', '2025-10-25', '402', 'Company Credit For Purchase No20251025190819', '24000.00', '0.00', '1', '1', '2025-10-25 19:08:19', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('801', '20251025190819', 'Purchase', '2025-10-25', '1020101', 'Cash in Hand For Purchase No20251025190819', '0.00', '24000.00', '1', '1', '2025-10-25 19:08:19', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('802', '20251025193115', 'Purchase', '2025-10-25', '10107', 'Inventory Debit For Purchase No20251025193115', '60000.00', '0.00', '1', '1', '2025-10-25 19:31:15', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('803', '20251025193115', 'Purchase', '2025-10-25', '402', 'Company Credit For Purchase No20251025193115', '60000.00', '0.00', '1', '1', '2025-10-25 19:31:15', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('804', '20251025193115', 'Purchase', '2025-10-25', '1020101', 'Cash in Hand For Purchase No20251025193115', '0.00', '60000.00', '1', '1', '2025-10-25 19:31:15', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('805', '20251025193821', 'Purchase', '2025-10-25', '10107', 'Inventory Debit For Purchase No20251025193821', '40000.00', '0.00', '1', '1', '2025-10-25 19:38:21', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('806', '20251025193821', 'Purchase', '2025-10-25', '402', 'Company Credit For Purchase No20251025193821', '40000.00', '0.00', '1', '1', '2025-10-25 19:38:21', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('807', '20251025193821', 'Purchase', '2025-10-25', '1020101', 'Cash in Hand For Purchase No20251025193821', '0.00', '40000.00', '1', '1', '2025-10-25 19:38:21', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('811', '20251025213214', 'Purchase', '2025-10-25', '10107', 'Inventory Debit For Purchase No20251025213214', '100000.00', '0.00', '1', '1', '2025-10-25 21:32:14', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('812', '20251025213214', 'Purchase', '2025-10-25', '402', 'Company Credit For Purchase No20251025213214', '100000.00', '0.00', '1', '1', '2025-10-25 21:32:14', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('813', '20251025213214', 'Purchase', '2025-10-25', '1020101', 'Cash in Hand For Purchase No20251025213214', '0.00', '100000.00', '1', '1', '2025-10-25 21:32:14', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('814', '3194886228', 'INVOICE', '2025-10-25', '10107', 'Inventory credit For Invoice No3194886228', '0.00', '50000.00', '1', '1', '2025-10-25 21:32:50', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('815', '3194886228', 'INVOICE', '2025-10-25', '10203000002', 'Customer debit For Invoice No3194886228', '60000.00', '0.00', '1', '1', '2025-10-25 21:32:50', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('816', '3194886228', 'INVOICE', '2025-10-25', '304', 'Customer debit For Invoice No3194886228', '0.00', '60000.00', '1', '1', '2025-10-25 21:32:50', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('817', '3194886228', 'INVOICE', '2025-10-25', '10203000002', 'Customer credit for Paid Amount For Invoice No3194886228', '0.00', '60000.00', '1', '1', '2025-10-25 21:32:50', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('818', '3194886228', 'INVOICE', '2025-10-25', '1020101', 'Cash in Hand For Invoice No3194886228', '60000.00', '0.00', '1', '1', '2025-10-25 21:32:50', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('819', '20251025214330', 'Purchase', '2025-10-25', '10107', 'Inventory Debit For Purchase No20251025214330', '25000.00', '0.00', '1', '1', '2025-10-25 21:43:30', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('820', '20251025214330', 'Purchase', '2025-10-25', '402', 'Company Credit For Purchase No20251025214330', '25000.00', '0.00', '1', '1', '2025-10-25 21:43:30', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('821', '20251025214330', 'Purchase', '2025-10-25', '1020101', 'Cash in Hand For Purchase No20251025214330', '0.00', '25000.00', '1', '1', '2025-10-25 21:43:30', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('822', '5943859461', 'INVOICE', '2025-10-25', '10107', 'Inventory credit For Invoice No5943859461', '0.00', '50000.00', '1', '1', '2025-10-25 21:54:48', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('823', '5943859461', 'INVOICE', '2025-10-25', '10203000002', 'Customer debit For Invoice No5943859461', '60000.00', '0.00', '1', '1', '2025-10-25 21:54:48', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('824', '5943859461', 'INVOICE', '2025-10-25', '304', 'Customer debit For Invoice No5943859461', '0.00', '60000.00', '1', '1', '2025-10-25 21:54:48', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('825', '4597778769', 'INVOICE', '2025-10-25', '10107', 'Inventory credit For Invoice No4597778769', '0.00', '6000.00', '1', '1', '2025-10-25 21:59:36', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('826', '4597778769', 'INVOICE', '2025-10-25', '10203000002', 'Customer debit For Invoice No4597778769', '-52800.00', '0.00', '1', '1', '2025-10-25 21:59:36', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('827', '4597778769', 'INVOICE', '2025-10-25', '304', 'Customer debit For Invoice No4597778769', '0.00', '-52800.00', '1', '1', '2025-10-25 21:59:36', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('828', '1868679384', 'INVOICE', '2025-10-25', '10107', 'Inventory credit For Invoice No1868679384', '0.00', '6000.00', '1', '1', '2025-10-25 22:03:12', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('829', '1868679384', 'INVOICE', '2025-10-25', '10203000002', 'Customer debit For Invoice No1868679384', '7200.00', '0.00', '1', '1', '2025-10-25 22:03:12', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('830', '1868679384', 'INVOICE', '2025-10-25', '304', 'Customer debit For Invoice No1868679384', '0.00', '7200.00', '1', '1', '2025-10-25 22:03:12', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('831', '1868679384', 'INVOICE', '2025-10-25', '10203000002', 'Customer credit for Paid Amount For Invoice No1868679384', '0.00', '14400.00', '1', '1', '2025-10-25 22:03:12', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('832', '1868679384', 'INVOICE', '2025-10-25', '1020101', 'Cash in Hand For Invoice No1868679384', '14400.00', '0.00', '1', '1', '2025-10-25 22:03:12', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('833', '3486287814', 'INVOICE', '2025-10-25', '10107', 'Inventory credit For Invoice No3486287814', '0.00', '6000.00', '1', '1', '2025-10-25 22:09:38', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('834', '3486287814', 'INVOICE', '2025-10-25', '10203000002', 'Customer debit For Invoice No3486287814', '7200.00', '0.00', '1', '1', '2025-10-25 22:09:38', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('835', '3486287814', 'INVOICE', '2025-10-25', '304', 'Customer debit For Invoice No3486287814', '0.00', '7200.00', '1', '1', '2025-10-25 22:09:38', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('842', '4679361876', 'INVOICE', '2025-10-25', '10107', 'Inventory credit For Invoice No4679361876', '0.00', '6000.00', '1', '1', '2025-10-25 22:21:01', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('843', '4679361876', 'INVOICE', '2025-10-25', '10203000002', 'Customer debit For Invoice No4679361876', '7200.00', '0.00', '1', '1', '2025-10-25 22:21:01', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('844', '4679361876', 'INVOICE', '2025-10-25', '304', 'Customer debit For Invoice No4679361876', '0.00', '7200.00', '1', '1', '2025-10-25 22:21:01', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('918', '5485733253', 'INVOICE', '2025-10-25', '10107', 'Inventory credit For Invoice No5485733253', '0.00', '6000.00', '1', '1', '2025-10-25 23:54:41', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('919', '5485733253', 'INVOICE', '2025-10-25', '10203000002', 'Customer debit For Invoice No5485733253', '13200.00', '0.00', '1', '1', '2025-10-25 23:54:41', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('920', '5485733253', 'INVOICE', '2025-10-25', '304', 'Customer debit For Invoice No5485733253', '0.00', '13200.00', '1', '1', '2025-10-25 23:54:41', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('921', '6618669817', 'INVOICE', '2025-10-25', '10107', 'Inventory credit For Invoice No6618669817', '0.00', '6000.00', '1', '1', '2025-10-25 23:56:09', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('922', '6618669817', 'INVOICE', '2025-10-25', '10203000002', 'Customer debit For Invoice No6618669817', '15600.00', '0.00', '1', '1', '2025-10-25 23:56:09', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('923', '6618669817', 'INVOICE', '2025-10-25', '304', 'Customer debit For Invoice No6618669817', '0.00', '15600.00', '1', '1', '2025-10-25 23:56:09', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('924', '2366238961', 'INVOICE', '2025-10-26', '10107', 'Inventory credit For Invoice No2366238961', '0.00', '6000.00', '1', '1', '2025-10-26 00:04:23', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('925', '2366238961', 'INVOICE', '2025-10-26', '10203000002', 'Customer debit For Invoice No2366238961', '13200.00', '0.00', '1', '1', '2025-10-26 00:04:23', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('926', '2366238961', 'INVOICE', '2025-10-26', '304', 'Customer debit For Invoice No2366238961', '0.00', '13200.00', '1', '1', '2025-10-26 00:04:23', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('930', '5311921215', 'INVOICE', '2025-10-26', '10107', 'Inventory credit For Invoice No5311921215', '0.00', '6000.00', '1', '1', '2025-10-26 00:12:29', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('931', '5311921215', 'INVOICE', '2025-10-26', '10203000002', 'Customer debit For Invoice No5311921215', '7200.00', '0.00', '1', '1', '2025-10-26 00:12:29', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('932', '5311921215', 'INVOICE', '2025-10-26', '304', 'Customer debit For Invoice No5311921215', '0.00', '7200.00', '1', '1', '2025-10-26 00:12:29', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('933', '1285941325', 'INVOICE', '2025-10-26', '10107', 'Inventory credit For Invoice No1285941325', '0.00', '30000.00', '1', '1', '2025-10-26 00:13:40', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('934', '1285941325', 'INVOICE', '2025-10-26', '10203000002', 'Customer debit For Invoice No1285941325', '36000.00', '0.00', '1', '1', '2025-10-26 00:13:40', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('935', '1285941325', 'INVOICE', '2025-10-26', '304', 'Customer debit For Invoice No1285941325', '0.00', '36000.00', '1', '1', '2025-10-26 00:13:40', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('936', '20251026051426', 'Purchase', '2025-10-26', '10107', 'Inventory Debit For Purchase No20251026051426', '10000.00', '0.00', '1', '1', '2025-10-26 05:14:26', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('937', '20251026051426', 'Purchase', '2025-10-26', '402', 'Company Credit For Purchase No20251026051426', '10000.00', '0.00', '1', '1', '2025-10-26 05:14:26', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('938', '20251026051426', 'Purchase', '2025-10-26', '1020101', 'Cash in Hand For Purchase No20251026051426', '0.00', '10000.00', '1', '1', '2025-10-26 05:14:26', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('939', '20251026053242', 'Purchase', '2025-10-26', '10107', 'Inventory Debit For Purchase No20251026053242', '60000.00', '0.00', '1', '1', '2025-10-26 05:32:42', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('940', '20251026053242', 'Purchase', '2025-10-26', '402', 'Company Credit For Purchase No20251026053242', '60000.00', '0.00', '1', '1', '2025-10-26 05:32:42', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('941', '20251026053242', 'Purchase', '2025-10-26', '1020101', 'Cash in Hand For Purchase No20251026053242', '0.00', '60000.00', '1', '1', '2025-10-26 05:32:42', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('942', '20251026053725', 'Purchase', '2025-10-26', '10107', 'Inventory Debit For Purchase No20251026053725', '400.00', '0.00', '1', '1', '2025-10-26 05:37:25', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('943', '20251026053725', 'Purchase', '2025-10-26', '402', 'Company Credit For Purchase No20251026053725', '400.00', '0.00', '1', '1', '2025-10-26 05:37:25', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('944', '20251026054211', 'Purchase', '2025-10-26', '10107', 'Inventory Debit For Purchase No20251026054211', '10000.00', '0.00', '1', '1', '2025-10-26 05:42:11', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('945', '20251026054211', 'Purchase', '2025-10-26', '402', 'Company Credit For Purchase No20251026054211', '10000.00', '0.00', '1', '1', '2025-10-26 05:42:11', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('946', '20251026054211', 'Purchase', '2025-10-26', '1020101', 'Cash in Hand For Purchase No20251026054211', '0.00', '10000.00', '1', '1', '2025-10-26 05:42:11', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('977', '6511833836', 'INVOICE', '2025-10-26', '10107', 'Inventory credit For Invoice No6511833836', '0.00', '1542.86', '1', '1', '2025-10-26 09:11:18', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('978', '6511833836', 'INVOICE', '2025-10-26', '10203000002', 'Customer debit For Invoice No6511833836', '2400.00', '0.00', '1', '1', '2025-10-26 09:11:18', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('979', '6511833836', 'INVOICE', '2025-10-26', '304', 'Customer debit For Invoice No6511833836', '0.00', '2400.00', '1', '1', '2025-10-26 09:11:18', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('992', '1827181655', 'INVOICE', '2025-10-26', '10107', 'Inventory credit For Invoice No1827181655', '0.00', '1928.57', '1', '1', '2025-10-26 09:35:55', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('993', '1827181655', 'INVOICE', '2025-10-26', '10203000002', 'Customer debit For Invoice No1827181655', '3000.00', '0.00', '1', '1', '2025-10-26 09:35:55', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('994', '1827181655', 'INVOICE', '2025-10-26', '304', 'Customer debit For Invoice No1827181655', '0.00', '3000.00', '1', '1', '2025-10-26 09:35:55', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1015', 'serv-20251026114913', 'SERVICE', '2025-10-26', '305', 'Service Income For SERVICE Noserv-20251026114913', '0.00', '5000.00', '1', '1', '2025-10-26 11:49:13', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1016', 'serv-20251026114913', 'SERVICE', '2025-10-26', '10203000003', 'Customer debit For service Noserv-20251026114913', '5000.00', '0.00', '1', '1', '2025-10-26 11:49:13', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1017', 'serv-20251026114913', 'SERVICE', '2025-10-26', '10203000003', 'Customer credit for Paid Amount For Service Noserv-20251026114913', '0.00', '1000.00', '1', '1', '2025-10-26 11:49:13', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1018', 'serv-20251026114913', 'SERVICE', '2025-10-26', '1020101', 'Cash in Hand For SERVICE Noserv-20251026114913', '1000.00', '0.00', '1', '1', '2025-10-26 11:49:13', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1021', 'serv-20251026114759', 'SERVICE', '2025-10-26', '305', 'Service Income For SERVICE Noserv-20251026114759', '0.00', '3000.00', '1', '1', '2025-10-26 11:50:59', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1022', '2538563975', 'INVOICE', '2025-10-26', '10107', 'Inventory credit For Invoice No2538563975', '0.00', '1928.57', '1', '1', '2025-10-26 11:54:03', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1023', '2538563975', 'INVOICE', '2025-10-26', '10203000003', 'Customer debit For Invoice No2538563975', '3000.00', '0.00', '1', '1', '2025-10-26 11:54:03', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1024', '2538563975', 'INVOICE', '2025-10-26', '304', 'Customer debit For Invoice No2538563975', '0.00', '3000.00', '1', '1', '2025-10-26 11:54:03', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1027', 'serv-20251026121442', 'SERVICE', '2025-10-26', '305', 'Service Income For SERVICE Noserv-20251026121442', '0.00', '2000.00', '1', '1', '2025-10-26 12:15:44', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1028', 'serv-20251026121442', 'SERVICE', '2025-10-26', '1020101', 'Cash in Hand For SERVICE Noserv-20251026121442', '0.00', '0.00', '1', '1', '2025-10-26 12:15:44', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1029', '6183326132', 'INVOICE', '2025-10-26', '10107', 'Inventory credit For Invoice No6183326132', '0.00', '9642.86', '1', '1', '2025-10-26 12:19:16', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1030', '6183326132', 'INVOICE', '2025-10-26', '10203000003', 'Customer debit For Invoice No6183326132', '15000.00', '0.00', '1', '1', '2025-10-26 12:19:16', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1031', '6183326132', 'INVOICE', '2025-10-26', '304', 'Customer debit For Invoice No6183326132', '0.00', '15000.00', '1', '1', '2025-10-26 12:19:16', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1032', '4725963786', 'INVOICE', '2025-10-26', '10107', 'Inventory credit For Invoice No4725963786', '0.00', '9257.14', '1', '1', '2025-10-26 12:19:57', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1033', '4725963786', 'INVOICE', '2025-10-26', '10203000003', 'Customer debit For Invoice No4725963786', '14400.00', '0.00', '1', '1', '2025-10-26 12:19:57', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1034', '4725963786', 'INVOICE', '2025-10-26', '304', 'Customer debit For Invoice No4725963786', '0.00', '14400.00', '1', '1', '2025-10-26 12:19:57', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1037', 'serv-20251026122219', 'SERVICE', '2025-10-26', '305', 'Service Income For SERVICE Noserv-20251026122219', '0.00', '2000.00', '1', '1', '2025-10-26 12:28:59', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1038', 'serv-20251026122219', 'SERVICE', '2025-10-26', '1020101', 'Cash in Hand For SERVICE Noserv-20251026122219', '0.00', '0.00', '1', '1', '2025-10-26 12:28:59', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1039', '1958438615', 'INVOICE', '2025-10-27', '10107', 'Inventory credit For Invoice No1958438615', '0.00', '385.71', '1', '1', '2025-10-27 04:58:52', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1040', '1958438615', 'INVOICE', '2025-10-27', '10203000003', 'Customer debit For Invoice No1958438615', '600.00', '0.00', '1', '1', '2025-10-27 04:58:52', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1041', '1958438615', 'INVOICE', '2025-10-27', '304', 'Customer debit For Invoice No1958438615', '0.00', '600.00', '1', '1', '2025-10-27 04:58:52', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1042', '2575563122', 'INVOICE', '2025-10-27', '10107', 'Inventory credit For Invoice No2575563122', '0.00', '771.43', '1', '1', '2025-10-27 08:02:34', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1043', '2575563122', 'INVOICE', '2025-10-27', '10203000003', 'Customer debit For Invoice No2575563122', '1200.00', '0.00', '1', '1', '2025-10-27 08:02:34', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1044', '2575563122', 'INVOICE', '2025-10-27', '304', 'Customer debit For Invoice No2575563122', '0.00', '1200.00', '1', '1', '2025-10-27 08:02:34', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1045', '2832776733', 'INVOICE', '2025-10-27', '10107', 'Inventory credit For Invoice No2832776733', '0.00', '771.43', '1', '1', '2025-10-27 08:02:53', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1046', '2832776733', 'INVOICE', '2025-10-27', '10203000003', 'Customer debit For Invoice No2832776733', '1200.00', '0.00', '1', '1', '2025-10-27 08:02:53', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1047', '2832776733', 'INVOICE', '2025-10-27', '304', 'Customer debit For Invoice No2832776733', '0.00', '1200.00', '1', '1', '2025-10-27 08:02:53', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1054', '4356144821', 'INVOICE', '2025-10-27', '10107', 'Inventory credit For Invoice No4356144821', '0.00', '7714.29', '1', '1', '2025-10-27 08:51:34', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1055', '4356144821', 'INVOICE', '2025-10-27', '10203000001', 'Customer debit For Invoice No4356144821', '12000.00', '0.00', '1', '1', '2025-10-27 08:51:34', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1056', '4356144821', 'INVOICE', '2025-10-27', '304', 'Customer debit For Invoice No4356144821', '0.00', '12000.00', '1', '1', '2025-10-27 08:51:34', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1061', 'serv-20251027085406', 'SERVICE', '2025-10-27', '305', 'Service Income For SERVICE Noserv-20251027085406', '0.00', '2000.00', '1', '1', '2025-10-27 08:54:23', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1062', 'serv-20251027085406', 'SERVICE', '2025-10-27', '1020101', 'Cash in Hand For SERVICE Noserv-20251027085406', '0.00', '0.00', '1', '1', '2025-10-27 08:54:23', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1063', '6839241794', 'INVOICE', '2025-10-27', '10107', 'Inventory credit For Invoice No6839241794', '0.00', '3857.14', '1', '1', '2025-10-27 08:58:42', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1064', '6839241794', 'INVOICE', '2025-10-27', '10203000001', 'Customer debit For Invoice No6839241794', '6000.00', '0.00', '1', '1', '2025-10-27 08:58:42', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1065', '6839241794', 'INVOICE', '2025-10-27', '304', 'Customer debit For Invoice No6839241794', '0.00', '6000.00', '1', '1', '2025-10-27 08:58:42', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1068', 'serv-20251027085952', 'SERVICE', '2025-10-27', '305', 'Service Income For SERVICE Noserv-20251027085952', '0.00', '2000.00', '1', '1', '2025-10-27 09:01:24', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1069', 'serv-20251027085952', 'SERVICE', '2025-10-27', '1020101', 'Cash in Hand For SERVICE Noserv-20251027085952', '0.00', '0.00', '1', '1', '2025-10-27 09:01:24', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1098', 'serv-20251027090317', 'SERVICE', '2025-10-27', '305', 'Service Income For SERVICE Noserv-20251027090317', '0.00', NULL, '1', '1', '2025-10-27 09:31:40', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1099', 'serv-20251027093401', 'SERVICE', '2025-10-27', '305', 'Service Income For SERVICE Noserv-20251027093401', '0.00', '2000.00', '1', '1', '2025-10-27 09:34:01', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1100', 'serv-20251027093401', 'SERVICE', '2025-10-27', '10203000001', 'Customer debit For service Noserv-20251027093401', '2000.00', '0.00', '1', '1', '2025-10-27 09:34:01', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1101', '9788567831', 'INVOICE', '2025-10-27', '10107', 'Inventory credit For Invoice No9788567831', '0.00', '4628.57', '1', '1', '2025-10-27 09:38:19', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1102', '9788567831', 'INVOICE', '2025-10-27', '10203000001', 'Customer debit For Invoice No9788567831', '7200.00', '0.00', '1', '1', '2025-10-27 09:38:19', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1103', '9788567831', 'INVOICE', '2025-10-27', '304', 'Customer debit For Invoice No9788567831', '0.00', '7200.00', '1', '1', '2025-10-27 09:38:19', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1116', '20251027103453', 'Purchase', '2025-10-27', '10107', 'Inventory Debit For Purchase No20251027103453', '10000.00', '0.00', '1', '1', '2025-10-27 10:34:53', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1117', '20251027103453', 'Purchase', '2025-10-27', '402', 'Company Credit For Purchase No20251027103453', '10000.00', '0.00', '1', '1', '2025-10-27 10:34:53', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1118', '20251027103453', 'Purchase', '2025-10-27', '1020101', 'Cash in Hand For Purchase No20251027103453', '0.00', '10000.00', '1', '1', '2025-10-27 10:34:53', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1122', '9422899228', 'INVOICE', '2025-10-27', '10107', 'Inventory credit For Invoice No9422899228', '0.00', '4000.00', '1', '1', '2025-10-27 10:38:20', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1123', '9422899228', 'INVOICE', '2025-10-27', '10203000001', 'Customer debit For Invoice No9422899228', '4800.00', '0.00', '1', '1', '2025-10-27 10:38:20', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1124', '9422899228', 'INVOICE', '2025-10-27', '304', 'Customer debit For Invoice No9422899228', '0.00', '4800.00', '1', '1', '2025-10-27 10:38:20', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1125', '9422899228', 'INVOICE', '2025-10-27', '10203000001', 'Customer credit for Paid Amount For Invoice No9422899228', '0.00', '2000.00', '1', '1', '2025-10-27 10:38:20', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1126', '9422899228', 'INVOICE', '2025-10-27', '1020101', 'Cash in Hand For Invoice No9422899228', '2000.00', '0.00', '1', '1', '2025-10-27 10:38:20', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1127', '20251027103952', 'Expense', '2025-10-27', '1020101', 'Delivery Expense20251027103952', '0.00', '2000.00', '1', '1', '2025-10-27 10:39:52', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1128', '4', 'Salary', '2025-10-27', '1020101', 'Cash in hand Credit For Employee Salary for October 2025', '0.00', '35000.00', '1', 'Millaw alazer', '2025-10-27 10:41:31', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1129', '4', 'Salary', '2025-10-27', '404', 'Salary paid ForOctober 2025', '35000.00', '0.00', '1', 'Millaw alazer', '2025-10-27 10:41:31', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1136', '20251028041725', 'Purchase', '2025-10-28', '10107', 'Inventory Debit For Purchase No20251028041725', '2000.00', '0.00', '1', '1', '2025-10-28 04:17:25', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1137', '20251028041725', 'Purchase', '2025-10-28', '402', 'Company Credit For Purchase No20251028041725', '2000.00', '0.00', '1', '1', '2025-10-28 04:17:25', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1138', '20251028041725', 'Purchase', '2025-10-28', '1020101', 'Cash in Hand For Purchase No20251028041725', '0.00', '2000.00', '1', '1', '2025-10-28 04:17:25', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1142', '9387274198', 'INVOICE', '2025-10-28', '10107', 'Inventory credit For Invoice No9387274198', '0.00', '466.67', '1', '1', '2025-10-28 04:36:34', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1143', '9387274198', 'INVOICE', '2025-10-28', '10203000002', 'Customer debit For Invoice No9387274198', '1000.00', '0.00', '1', '1', '2025-10-28 04:36:34', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1144', '9387274198', 'INVOICE', '2025-10-28', '304', 'Customer debit For Invoice No9387274198', '0.00', '1000.00', '1', '1', '2025-10-28 04:36:34', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1145', '9387274198', 'INVOICE', '2025-10-28', '10203000002', 'Customer credit for Paid Amount For Invoice No9387274198', '0.00', '200.00', '1', '1', '2025-10-28 04:36:34', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1146', '9387274198', 'INVOICE', '2025-10-28', '1020101', 'Cash in Hand For Invoice No9387274198', '200.00', '0.00', '1', '1', '2025-10-28 04:36:34', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1147', '9777117757', 'INVOICE', '2025-10-28', '10107', 'Inventory credit For Invoice No9777117757', '0.00', '466.67', '1', '1', '2025-10-28 04:39:11', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1148', '9777117757', 'INVOICE', '2025-10-28', '10203000002', 'Customer debit For Invoice No9777117757', '1000.00', '0.00', '1', '1', '2025-10-28 04:39:11', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1149', '9777117757', 'INVOICE', '2025-10-28', '304', 'Customer debit For Invoice No9777117757', '0.00', '1000.00', '1', '1', '2025-10-28 04:39:11', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1150', '9777117757', 'INVOICE', '2025-10-28', '10203000002', 'Customer credit for Paid Amount For Invoice No9777117757', '0.00', '500.00', '1', '1', '2025-10-28 04:39:11', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1151', '9777117757', 'INVOICE', '2025-10-28', '1020101', 'Cash in Hand For Invoice No9777117757', '500.00', '0.00', '1', '1', '2025-10-28 04:39:11', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1175', 'M4RAMMTE6M', 'PR Balance', '2025-10-28', '10203000004', 'Customer debit For Transaction NoM4RAMMTE6M', '4000.00', '0.00', '1', '1', '2025-10-28 07:39:08', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1176', 'M4RAMMTE6M', 'PR Balance', '2025-10-28', '10107', 'Inventory credit For Old sale For24', '0.00', '4000.00', '1', '1', '2025-10-28 07:39:08', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1182', '20251028074746', 'Purchase', '2025-10-28', '10107', 'Inventory Debit For Purchase No20251028074746', '0.00', '0.00', '1', '1', '2025-10-28 07:47:46', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1183', '20251028074746', 'Purchase', '2025-10-28', '402', 'Company Credit For Purchase No20251028074746', '0.00', '0.00', '1', '1', '2025-10-28 07:47:46', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1184', '20251028074746', 'Purchase', '2025-10-28', '1020101', 'Cash in Hand For Purchase No20251028074746', '0.00', '0.00', '1', '1', '2025-10-28 07:47:46', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1185', '6512144665', 'INVOICE', '2025-10-28', '10107', 'Inventory credit For Invoice No6512144665', '0.00', '0.00', '1', '1', '2025-10-28 07:48:45', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1186', '6512144665', 'INVOICE', '2025-10-28', '10203000004', 'Customer debit For Invoice No6512144665', '0.00', '0.00', '1', '1', '2025-10-28 07:48:45', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1187', '6512144665', 'INVOICE', '2025-10-28', '304', 'Customer debit For Invoice No6512144665', '0.00', '0.00', '1', '1', '2025-10-28 07:48:45', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1188', '6512144665', 'INVOICE', '2025-10-28', '10203000004', 'Customer credit for Paid Amount For Invoice No6512144665', '0.00', '3000.00', '1', '1', '2025-10-28 07:48:45', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1189', '6512144665', 'INVOICE', '2025-10-28', '1020101', 'Cash in Hand For Invoice No6512144665', '3000.00', '0.00', '1', '1', '2025-10-28 07:48:45', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1190', '4964323215', 'INVOICE', '2025-10-28', '10107', 'Inventory credit For Invoice No4964323215', '0.00', '466.67', '1', '1', '2025-10-28 07:54:39', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1191', '4964323215', 'INVOICE', '2025-10-28', '10203000004', 'Customer debit For Invoice No4964323215', '1000.00', '0.00', '1', '1', '2025-10-28 07:54:39', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1192', '4964323215', 'INVOICE', '2025-10-28', '304', 'Customer debit For Invoice No4964323215', '0.00', '1000.00', '1', '1', '2025-10-28 07:54:39', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1193', '4964323215', 'INVOICE', '2025-10-28', '10203000004', 'Customer credit for Paid Amount For Invoice No4964323215', '0.00', '100.00', '1', '1', '2025-10-28 07:54:39', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1194', '4964323215', 'INVOICE', '2025-10-28', '1020101', 'Cash in Hand For Invoice No4964323215', '100.00', '0.00', '1', '1', '2025-10-28 07:54:39', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1195', '7423844131', 'INVOICE', '2025-10-28', '10107', 'Inventory credit For Invoice No7423844131', '0.00', '700.00', '1', '1', '2025-10-28 07:57:09', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1196', '7423844131', 'INVOICE', '2025-10-28', '10203000004', 'Customer debit For Invoice No7423844131', '1500.00', '0.00', '1', '1', '2025-10-28 07:57:09', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1197', '7423844131', 'INVOICE', '2025-10-28', '304', 'Customer debit For Invoice No7423844131', '0.00', '1500.00', '1', '1', '2025-10-28 07:57:09', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1198', '7423844131', 'INVOICE', '2025-10-28', '10203000004', 'Customer credit for Paid Amount For Invoice No7423844131', '0.00', '2000.00', '1', '1', '2025-10-28 07:57:09', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1199', '7423844131', 'INVOICE', '2025-10-28', '1020101', 'Cash in Hand For Invoice No7423844131', '2000.00', '0.00', '1', '1', '2025-10-28 07:57:09', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1200', '2691758843', 'INVOICE', '2025-10-28', '10107', 'Inventory credit For Invoice No2691758843', '0.00', '0.00', '1', '1', '2025-10-28 07:58:38', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1201', '2691758843', 'INVOICE', '2025-10-28', '10203000004', 'Customer debit For Invoice No2691758843', '0.00', '0.00', '1', '1', '2025-10-28 07:58:38', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1202', '2691758843', 'INVOICE', '2025-10-28', '304', 'Customer debit For Invoice No2691758843', '0.00', '0.00', '1', '1', '2025-10-28 07:58:38', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1203', '2691758843', 'INVOICE', '2025-10-28', '10203000004', 'Customer credit for Paid Amount For Invoice No2691758843', '0.00', '400.00', '1', '1', '2025-10-28 07:58:38', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1204', '2691758843', 'INVOICE', '2025-10-28', '1020101', 'Cash in Hand For Invoice No2691758843', '400.00', '0.00', '1', '1', '2025-10-28 07:58:38', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1221', '3978452185', 'INVOICE', '2025-10-28', '10107', 'Inventory credit For Invoice No3978452185', '0.00', '233.33', '1', '1', '2025-10-28 08:09:16', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1222', '3978452185', 'INVOICE', '2025-10-28', '10203000004', 'Customer debit For Invoice No3978452185', '500.00', '0.00', '1', '1', '2025-10-28 08:09:16', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1223', '3978452185', 'INVOICE', '2025-10-28', '304', 'Customer debit For Invoice No3978452185', '0.00', '500.00', '1', '1', '2025-10-28 08:09:16', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1224', '3978452185', 'INVOICE', '2025-10-28', '10203000004', 'Customer credit for Paid Amount For Invoice No3978452185', '0.00', '100.00', '1', '1', '2025-10-28 08:09:16', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1225', '3978452185', 'INVOICE', '2025-10-28', '1020101', 'Cash in Hand For Invoice No3978452185', '100.00', '0.00', '1', '1', '2025-10-28 08:09:16', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1228', '4138875749', 'INVOICE', '2025-10-28', '10107', 'Inventory credit For Invoice No4138875749', '0.00', '233.33', '1', '1', '2025-10-28 08:13:34', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1229', '4138875749', 'INVOICE', '2025-10-28', '10203000004', 'Customer debit For Invoice No4138875749', '500.00', '0.00', '1', '1', '2025-10-28 08:13:34', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1230', '4138875749', 'INVOICE', '2025-10-28', '304', 'Customer debit For Invoice No4138875749', '0.00', '500.00', '1', '1', '2025-10-28 08:13:34', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1231', '4138875749', 'INVOICE', '2025-10-28', '10203000004', 'Customer credit for Paid Amount For Invoice No4138875749', '0.00', '100.00', '1', '1', '2025-10-28 08:13:34', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1232', '4138875749', 'INVOICE', '2025-10-28', '1020101', 'Cash in Hand For Invoice No4138875749', '100.00', '0.00', '1', '1', '2025-10-28 08:13:34', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1247', '7364919532', 'INVOICE', '2025-10-28', '10107', 'Inventory credit For Invoice No7364919532', '0.00', '0.00', '1', '1', '2025-10-28 08:40:48', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1248', '7364919532', 'INVOICE', '2025-10-28', '10203000004', 'Customer debit For Invoice No7364919532', '0.00', '0.00', '1', '1', '2025-10-28 08:40:48', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1249', '7364919532', 'INVOICE', '2025-10-28', '304', 'Customer debit For Invoice No7364919532', '0.00', '0.00', '1', '1', '2025-10-28 08:40:48', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1250', '7364919532', 'INVOICE', '2025-10-28', '10203000004', 'Customer credit for Paid Amount For Invoice No7364919532', '0.00', '333.00', '1', '1', '2025-10-28 08:40:48', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1251', '7364919532', 'INVOICE', '2025-10-28', '1020101', 'Cash in Hand For Invoice No7364919532', '333.00', '0.00', '1', '1', '2025-10-28 08:40:48', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1252', '20251028090422', 'Purchase', '2025-10-28', '10107', 'Inventory Debit For Purchase No20251028090422', '1000.00', '0.00', '1', '4', '2025-10-28 09:04:22', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1253', '20251028090422', 'Purchase', '2025-10-28', '402', 'Company Credit For Purchase No20251028090422', '1000.00', '0.00', '1', '4', '2025-10-28 09:04:22', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1254', '20251028090422', 'Purchase', '2025-10-28', '1020101', 'Cash in Hand For Purchase No20251028090422', '0.00', '1000.00', '1', '4', '2025-10-28 09:04:22', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1255', '20251028090510', 'Purchase', '2025-10-28', '10107', 'Inventory Debit For Purchase No20251028090510', '4000.00', '0.00', '1', '4', '2025-10-28 09:05:10', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1256', '20251028090510', 'Purchase', '2025-10-28', '402', 'Company Credit For Purchase No20251028090510', '4000.00', '0.00', '1', '4', '2025-10-28 09:05:10', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1257', '20251028090510', 'Purchase', '2025-10-28', '1020101', 'Cash in Hand For Purchase No20251028090510', '0.00', '4000.00', '1', '4', '2025-10-28 09:05:10', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1258', '6455493533', 'INVOICE', '2025-10-28', '10107', 'Inventory credit For Invoice No6455493533', '0.00', '450.00', '1', '4', '2025-10-28 09:11:50', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1259', '6455493533', 'INVOICE', '2025-10-28', '10203000005', 'Customer debit For Invoice No6455493533', '1600.00', '0.00', '1', '4', '2025-10-28 09:11:50', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1260', '6455493533', 'INVOICE', '2025-10-28', '304', 'Customer debit For Invoice No6455493533', '0.00', '1600.00', '1', '4', '2025-10-28 09:11:50', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1261', '6455493533', 'INVOICE', '2025-10-28', '10203000005', 'Customer credit for Paid Amount For Invoice No6455493533', '0.00', '1000.00', '1', '4', '2025-10-28 09:11:50', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1262', '6455493533', 'INVOICE', '2025-10-28', '1020101', 'Cash in Hand For Invoice No6455493533', '1000.00', '0.00', '1', '4', '2025-10-28 09:11:50', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1263', '3116441982', 'INVOICE', '2025-10-28', '10107', 'Inventory credit For Invoice No3116441982', '0.00', '450.00', '1', '1', '2025-10-28 10:48:23', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1264', '3116441982', 'INVOICE', '2025-10-28', '10203000005', 'Customer debit For Invoice No3116441982', '3000.00', '0.00', '1', '1', '2025-10-28 10:48:23', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1265', '3116441982', 'INVOICE', '2025-10-28', '304', 'Customer debit For Invoice No3116441982', '0.00', '3000.00', '1', '1', '2025-10-28 10:48:23', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1266', '3116441982', 'INVOICE', '2025-10-28', '10203000005', 'Customer credit for Paid Amount For Invoice No3116441982', '0.00', '1000.00', '1', '1', '2025-10-28 10:48:23', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1267', '7', 'Salary', '2025-10-28', '1020101', 'Cash in hand Credit For Employee Salary for September 2025', '0.00', '40000.00', '1', 'Tesfahun Kalayou', '2025-10-28 13:13:31', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1268', '7', 'Salary', '2025-10-28', '404', 'Salary paid ForSeptember 2025', '40000.00', '0.00', '1', 'Tesfahun Kalayou', '2025-10-28 13:13:31', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1269', '20251028011406', 'Expense', '2025-10-28', '1020101', 'Delivery Expense20251028011406', '0.00', '1000.00', '1', '4', '2025-10-28 13:14:06', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1270', '4', 'Purcahse Assets', '2025-10-28', '405', 'Purchase Assets Purchase No.4', '0.00', '2400.00', '1', '4', '2025-10-28 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1271', '4', 'Assets', '2025-10-28', '10107', 'Inventory Debit For Purchase Assets Purchase No4', '0.00', '2400.00', '1', '4', '2025-10-28 13:15:26', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1272', '4', 'Assets', '2025-10-28', '10107', 'Inventory Debit For Purchase Assets Purchase No4', '2400.00', '0.00', '1', '4', '2025-10-28 13:15:26', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1273', '4', 'Purcahse Assets', '2025-10-28', '1020101', 'Cash in Hand For Voucher No4', '0.00', '2400.00', '1', '4', '2025-10-28 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1274', 'serv-20251028011752', 'SERVICE', '2025-10-28', '305', 'Service Income For SERVICE Noserv-20251028011752', '0.00', '4000.00', '1', '4', '2025-10-28 13:17:52', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1275', 'serv-20251028011752', 'SERVICE', '2025-10-28', '10203000005', 'Customer debit For service Noserv-20251028011752', '4000.00', '0.00', '1', '4', '2025-10-28 13:17:52', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1276', 'serv-20251028011752', 'SERVICE', '2025-10-28', '10203000005', 'Customer credit for Paid Amount For Service Noserv-20251028011752', '0.00', '2600.00', '1', '4', '2025-10-28 13:17:52', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1277', 'serv-20251028011752', 'SERVICE', '2025-10-28', '1020101', 'Cash in Hand For SERVICE Noserv-20251028011752', '2600.00', '0.00', '1', '4', '2025-10-28 13:17:52', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1278', '20251028132927', 'Purchase', '2025-10-28', '10107', 'Inventory Debit For Purchase No20251028132927', '1200.00', '0.00', '1', '1', '2025-10-28 13:29:27', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1279', '20251028132927', 'Purchase', '2025-10-28', '402', 'Company Credit For Purchase No20251028132927', '1200.00', '0.00', '1', '1', '2025-10-28 13:29:27', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1280', '20251028132927', 'Purchase', '2025-10-28', '1020101', 'Cash in Hand For Purchase No20251028132927', '0.00', '1200.00', '1', '1', '2025-10-28 13:29:27', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1289', 'serv-20251028053956', 'SERVICE', '2025-10-28', '305', 'Service Income For SERVICE Noserv-20251028053956', '0.00', '2000.00', '1', '1', '2025-10-28 17:40:54', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1290', 'serv-20251028053956', 'SERVICE', '2025-10-28', '1020101', 'Cash in Hand For SERVICE Noserv-20251028053956', '1000.00', '0.00', '1', '1', '2025-10-28 17:40:54', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1291', '2611824439', 'INVOICE', '2025-10-29', '10107', 'Inventory credit For Invoice No2611824439', '0.00', '3375.00', '1', '1', '2025-10-29 03:07:25', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1292', '2611824439', 'INVOICE', '2025-10-29', '10203000006', 'Customer debit For Invoice No2611824439', '7500.00', '0.00', '1', '1', '2025-10-29 03:07:25', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1293', '2611824439', 'INVOICE', '2025-10-29', '304', 'Customer debit For Invoice No2611824439', '0.00', '7500.00', '1', '1', '2025-10-29 03:07:25', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1300', '7956397188', 'INVOICE', '2025-10-29', '10107', 'Inventory credit For Invoice No7956397188', '0.00', '2250.00', '1', '1', '2025-10-29 03:11:45', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1301', '7956397188', 'INVOICE', '2025-10-29', '10203000006', 'Customer debit For Invoice No7956397188', '5000.00', '0.00', '1', '1', '2025-10-29 03:11:45', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1302', '7956397188', 'INVOICE', '2025-10-29', '304', 'Customer debit For Invoice No7956397188', '0.00', '5000.00', '1', '1', '2025-10-29 03:11:45', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1329', '8412577392', 'INVOICE', '2025-10-29', '10107', 'Inventory credit For Invoice No8412577392', '0.00', '2700.00', '1', '1', '2025-10-29 03:39:02', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1330', '8412577392', 'INVOICE', '2025-10-29', '10203000006', 'Customer debit For Invoice No8412577392', '6000.00', '0.00', '1', '1', '2025-10-29 03:39:02', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1331', '8412577392', 'INVOICE', '2025-10-29', '304', 'Customer debit For Invoice No8412577392', '0.00', '6000.00', '1', '1', '2025-10-29 03:39:02', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1332', 'serv-20251029033952', 'SERVICE', '2025-10-29', '305', 'Service Income For SERVICE Noserv-20251029033952', '0.00', '2000.00', '1', '1', '2025-10-29 03:39:52', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1333', 'serv-20251029033952', 'SERVICE', '2025-10-29', '10203000006', 'Customer debit For service Noserv-20251029033952', '2000.00', '0.00', '1', '1', '2025-10-29 03:39:52', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1334', '9239322484', 'INVOICE', '2025-10-29', '10107', 'Inventory credit For Invoice No9239322484', '0.00', '2250.00', '1', '1', '2025-10-29 03:41:47', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1335', '9239322484', 'INVOICE', '2025-10-29', '10203000006', 'Customer debit For Invoice No9239322484', '6000.00', '0.00', '1', '1', '2025-10-29 03:41:47', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1336', '9239322484', 'INVOICE', '2025-10-29', '304', 'Customer debit For Invoice No9239322484', '0.00', '6000.00', '1', '1', '2025-10-29 03:41:47', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1337', 'serv-20251029034211', 'SERVICE', '2025-10-29', '305', 'Service Income For SERVICE Noserv-20251029034211', '0.00', '2000.00', '1', '1', '2025-10-29 03:42:11', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1338', 'serv-20251029034211', 'SERVICE', '2025-10-29', '10203000006', 'Customer debit For service Noserv-20251029034211', '2000.00', '0.00', '1', '1', '2025-10-29 03:42:11', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1339', '6642217559', 'INVOICE', '2025-10-29', '10107', 'Inventory credit For Invoice No6642217559', '0.00', '450.00', '1', '1', '2025-10-29 03:48:16', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1340', '6642217559', 'INVOICE', '2025-10-29', '10203000006', 'Customer debit For Invoice No6642217559', '1200.00', '0.00', '1', '1', '2025-10-29 03:48:16', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1341', '6642217559', 'INVOICE', '2025-10-29', '304', 'Customer debit For Invoice No6642217559', '0.00', '1200.00', '1', '1', '2025-10-29 03:48:16', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1348', 'serv-20251029035034', 'SERVICE', '2025-10-29', '305', 'Service Income For SERVICE Noserv-20251029035034', '0.00', '2000.00', '1', '1', '2025-10-29 04:05:43', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1349', 'serv-20251029035034', 'SERVICE', '2025-10-29', '1020101', 'Cash in Hand For SERVICE Noserv-20251029035034', '2000.00', '0.00', '1', '1', '2025-10-29 04:05:43', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1350', '7571992811', 'INVOICE', '2025-10-29', '10107', 'Inventory credit For Invoice No7571992811', '0.00', '1200.00', '1', '1', '2025-10-29 04:13:31', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1351', '7571992811', 'INVOICE', '2025-10-29', '10203000006', 'Customer debit For Invoice No7571992811', '6000.00', '0.00', '1', '1', '2025-10-29 04:13:31', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1352', '7571992811', 'INVOICE', '2025-10-29', '304', 'Customer debit For Invoice No7571992811', '0.00', '6000.00', '1', '1', '2025-10-29 04:13:31', NULL, NULL, '1');


#
# TABLE STRUCTURE FOR: asset_purchase
#

DROP TABLE IF EXISTS `asset_purchase`;

CREATE TABLE `asset_purchase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p_date` date NOT NULL,
  `stock_id` int(11) NOT NULL,
  `supplier_id` varchar(30) NOT NULL,
  `grand_total` float NOT NULL,
  `payment_type` tinyint(4) DEFAULT NULL,
  `bank_id` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `asset_purchase` (`id`, `p_date`, `stock_id`, `supplier_id`, `grand_total`, `payment_type`, `bank_id`) VALUES ('1', '2025-10-22', '81', 'OGQFWB9DOPWLXMKADP3G', '400', '1', '');
INSERT INTO `asset_purchase` (`id`, `p_date`, `stock_id`, `supplier_id`, `grand_total`, `payment_type`, `bank_id`) VALUES ('2', '2025-10-22', '82', 'OGQFWB9DOPWLXMKADP3G', '600', '1', '');
INSERT INTO `asset_purchase` (`id`, `p_date`, `stock_id`, `supplier_id`, `grand_total`, `payment_type`, `bank_id`) VALUES ('3', '2025-10-25', '81', 'S6MTVXPX6N5846XBLOGS', '36600', '1', '');
INSERT INTO `asset_purchase` (`id`, `p_date`, `stock_id`, `supplier_id`, `grand_total`, `payment_type`, `bank_id`) VALUES ('4', '2025-10-28', '82', 'S6MTVXPX6N5846XBLOGS', '2400', '1', '');


#
# TABLE STRUCTURE FOR: attendance
#

DROP TABLE IF EXISTS `attendance`;

CREATE TABLE `attendance` (
  `att_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `sign_in` varchar(30) NOT NULL,
  `sign_out` varchar(30) NOT NULL,
  `staytime` varchar(30) NOT NULL,
  PRIMARY KEY (`att_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO `attendance` (`att_id`, `employee_id`, `date`, `sign_in`, `sign_out`, `staytime`) VALUES ('3', '1', '2025-10-23', '02:55:45 am', '02:57:46 am', '00:02:01');
INSERT INTO `attendance` (`att_id`, `employee_id`, `date`, `sign_in`, `sign_out`, `staytime`) VALUES ('4', '1', '2025-10-24', '02:56:59 am', '06:00:00 am', '03:03:01');
INSERT INTO `attendance` (`att_id`, `employee_id`, `date`, `sign_in`, `sign_out`, `staytime`) VALUES ('5', '2', '2025-10-23', '03:16:58 am', '03:18:46 am', '00:01:48');
INSERT INTO `attendance` (`att_id`, `employee_id`, `date`, `sign_in`, `sign_out`, `staytime`) VALUES ('6', '1', '2025-10-27', '03:40:36 pm', '03:40:39 pm', '00:00:03');
INSERT INTO `attendance` (`att_id`, `employee_id`, `date`, `sign_in`, `sign_out`, `staytime`) VALUES ('7', '2', '2025-10-28', '06:10:31 pm', '', '');


#
# TABLE STRUCTURE FOR: bank_add
#

DROP TABLE IF EXISTS `bank_add`;

CREATE TABLE `bank_add` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_id` varchar(50) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `ac_name` varchar(250) DEFAULT NULL,
  `ac_number` varchar(250) DEFAULT NULL,
  `branch` varchar(250) DEFAULT NULL,
  `signature_pic` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `bank_add` (`id`, `bank_id`, `bank_name`, `ac_name`, `ac_number`, `branch`, `signature_pic`, `status`) VALUES ('1', 'KCDZZ5UYEG', 'CBE', 'Alazer Milaw', '1000839000', 'mekelle', NULL, '1');


#
# TABLE STRUCTURE FOR: bank_summary
#

DROP TABLE IF EXISTS `bank_summary`;

CREATE TABLE `bank_summary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_id` varchar(50) DEFAULT NULL,
  `description` text,
  `deposite_id` varchar(250) DEFAULT NULL,
  `date` varchar(250) DEFAULT NULL,
  `ac_type` varchar(50) DEFAULT NULL,
  `dr` decimal(12,2) DEFAULT '0.00',
  `cr` decimal(10,2) DEFAULT '0.00',
  `ammount` decimal(12,2) DEFAULT '0.00',
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `bank_summary` (`id`, `bank_id`, `description`, `deposite_id`, `date`, `ac_type`, `dr`, `cr`, `ammount`, `status`) VALUES ('3', 'KCDZZ5UYEG', 'product sale', '8459314136', '2025-10-22 12:25:55', 'Debit(+)', '1500.00', NULL, '1500.00', '1');
INSERT INTO `bank_summary` (`id`, `bank_id`, `description`, `deposite_id`, `date`, `ac_type`, `dr`, `cr`, `ammount`, `status`) VALUES ('4', 'KCDZZ5UYEG', 'product sale', '3116441982', '2025-10-28 10:48:23', 'Debit(+)', '1000.00', NULL, '1000.00', '1');


#
# TABLE STRUCTURE FOR: candidate_report
#

DROP TABLE IF EXISTS `candidate_report`;

CREATE TABLE `candidate_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

INSERT INTO `candidate_report` (`id`, `company_id`, `job_id`, `candidate_id`, `status`, `created_at`) VALUES ('1', '1', '2', '2', '6', '2025-11-19 08:35:54');
INSERT INTO `candidate_report` (`id`, `company_id`, `job_id`, `candidate_id`, `status`, `created_at`) VALUES ('2', '1', '2', '2', '0', '2025-11-19 12:12:37');
INSERT INTO `candidate_report` (`id`, `company_id`, `job_id`, `candidate_id`, `status`, `created_at`) VALUES ('3', '1', '2', '2', '2', '2025-11-19 12:12:43');
INSERT INTO `candidate_report` (`id`, `company_id`, `job_id`, `candidate_id`, `status`, `created_at`) VALUES ('4', '1', '2', '4', '2', '2025-12-08 08:02:18');
INSERT INTO `candidate_report` (`id`, `company_id`, `job_id`, `candidate_id`, `status`, `created_at`) VALUES ('5', '1', '2', '3', '0', '2025-12-08 08:02:22');
INSERT INTO `candidate_report` (`id`, `company_id`, `job_id`, `candidate_id`, `status`, `created_at`) VALUES ('6', '1', '2', '3', '1', '2025-12-08 08:02:25');
INSERT INTO `candidate_report` (`id`, `company_id`, `job_id`, `candidate_id`, `status`, `created_at`) VALUES ('7', '3', '4', '4', '3', '2025-12-08 08:04:13');
INSERT INTO `candidate_report` (`id`, `company_id`, `job_id`, `candidate_id`, `status`, `created_at`) VALUES ('8', '3', '4', '2', '5', '2025-12-08 08:04:18');
INSERT INTO `candidate_report` (`id`, `company_id`, `job_id`, `candidate_id`, `status`, `created_at`) VALUES ('9', '1', '2', '3', '3', '2025-12-17 16:39:06');
INSERT INTO `candidate_report` (`id`, `company_id`, `job_id`, `candidate_id`, `status`, `created_at`) VALUES ('10', '1', '2', '3', '4', '2025-12-17 16:39:09');
INSERT INTO `candidate_report` (`id`, `company_id`, `job_id`, `candidate_id`, `status`, `created_at`) VALUES ('11', '3', '4', '4', '5', '2025-12-18 03:37:54');
INSERT INTO `candidate_report` (`id`, `company_id`, `job_id`, `candidate_id`, `status`, `created_at`) VALUES ('12', '3', '4', '3', '3', '2025-12-18 03:38:00');


#
# TABLE STRUCTURE FOR: candidates
#

DROP TABLE IF EXISTS `candidates`;

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seeker_id` int(11) DEFAULT NULL,
  `full_name` varchar(150) NOT NULL,
  `sex` enum('Male','Female','Other') NOT NULL,
  `dob_ethiopian` text NOT NULL,
  `age` int(11) NOT NULL,
  `total_family_size` int(11) NOT NULL,
  `hh_male` int(11) DEFAULT '0',
  `hh_female` int(11) DEFAULT '0',
  `household_type` enum('IDP','Host') DEFAULT NULL,
  `disability_status` enum('Yes','No') DEFAULT 'No',
  `disability_male` int(11) DEFAULT '0',
  `disability_female` int(11) DEFAULT '0',
  `phone_number` varchar(20) NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `location` int(11) NOT NULL,
  `woreda` varchar(255) NOT NULL,
  `tabia` varchar(255) NOT NULL,
  `education_level` int(11) NOT NULL,
  `field_of_study` int(11) NOT NULL,
  `gpa` double NOT NULL,
  `qualification_skills` text NOT NULL,
  `graduated_year` int(11) NOT NULL,
  `experience` int(11) NOT NULL,
  `resume` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone_number` (`phone_number`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO `candidates` (`id`, `seeker_id`, `full_name`, `sex`, `dob_ethiopian`, `age`, `total_family_size`, `hh_male`, `hh_female`, `household_type`, `disability_status`, `disability_male`, `disability_female`, `phone_number`, `email`, `location`, `woreda`, `tabia`, `education_level`, `field_of_study`, `gpa`, `qualification_skills`, `graduated_year`, `experience`, `resume`, `created_at`, `status`) VALUES ('2', NULL, 'Mekelle', 'Male', '0000-00-00', '25', '0', '0', '0', '', 'No', '0', '0', '09422457896', 'aynalemfifi21@gmail.com', '8', '', '', '3', '4', '3', '', '0', '7', '1a5e0b072769bbfba3369411ed345535.pdf', '2025-11-18 12:04:18', '5');
INSERT INTO `candidates` (`id`, `seeker_id`, `full_name`, `sex`, `dob_ethiopian`, `age`, `total_family_size`, `hh_male`, `hh_female`, `household_type`, `disability_status`, `disability_male`, `disability_female`, `phone_number`, `email`, `location`, `woreda`, `tabia`, `education_level`, `field_of_study`, `gpa`, `qualification_skills`, `graduated_year`, `experience`, `resume`, `created_at`, `status`) VALUES ('3', NULL, 'hhh', 'Female', '0000-00-00', '23', '0', '0', '0', '', 'No', '0', '0', '0914223121', 'aynalemfifi21@gmail.com', '8', '', '', '3', '4', '3.6', '', '0', '6', 'fcf7bd7be4dda686ef385374b21b9219.pdf', '2025-11-18 12:06:21', '4');
INSERT INTO `candidates` (`id`, `seeker_id`, `full_name`, `sex`, `dob_ethiopian`, `age`, `total_family_size`, `hh_male`, `hh_female`, `household_type`, `disability_status`, `disability_male`, `disability_female`, `phone_number`, `email`, `location`, `woreda`, `tabia`, `education_level`, `field_of_study`, `gpa`, `qualification_skills`, `graduated_year`, `experience`, `resume`, `created_at`, `status`) VALUES ('4', '10000', 'hhhh', 'Male', '1989-02-21', '21', '78', '7', '7', 'IDP', 'Yes', '1', '2', '67676', 'aynalemfifi21@gmail.com', '8', 'yu', 'hj', '3', '5', '7', 'hh', '77', '7', '', '2025-11-28 10:05:40', '5');


#
# TABLE STRUCTURE FOR: ci_sessions
#

DROP TABLE IF EXISTS `ci_sessions`;

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: company
#

DROP TABLE IF EXISTS `company`;

CREATE TABLE `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(300) NOT NULL,
  `sector` varchar(255) DEFAULT NULL,
  `no_emp` int(11) DEFAULT NULL,
  `company_size` varchar(50) DEFAULT NULL,
  `operation_since` int(11) DEFAULT NULL,
  `description_services_products` text,
  `mission_vision_statement` text,
  `phone_number` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `address` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `company_name` (`company_name`),
  UNIQUE KEY `phone_number` (`phone_number`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO `company` (`id`, `company_name`, `sector`, `no_emp`, `company_size`, `operation_since`, `description_services_products`, `mission_vision_statement`, `phone_number`, `email`, `website`, `address`, `status`) VALUES ('1', 'Betey Digital Technologies', NULL, NULL, NULL, NULL, NULL, NULL, '0942245789', 'betey@gmail.com', NULL, 'mekelle', '1');
INSERT INTO `company` (`id`, `company_name`, `sector`, `no_emp`, `company_size`, `operation_since`, `description_services_products`, `mission_vision_statement`, `phone_number`, `email`, `website`, `address`, `status`) VALUES ('2', 'Betey Digital Technologiess', 'technology', '67', 'Large', '1983', 'BAs', 'hgsaHS', '09422457898', 'aynalemfifi21@gmail.com', 'https://chatgpt.com/c/6929514e-9d4c-8333-981f-3e6563de588d', 'mekelle', '1');
INSERT INTO `company` (`id`, `company_name`, `sector`, `no_emp`, `company_size`, `operation_since`, `description_services_products`, `mission_vision_statement`, `phone_number`, `email`, `website`, `address`, `status`) VALUES ('3', 'oscar', 'promotional services', '3', 'Small', '1989', 'jhahsdg', 'gcjhcgxcgh', '09144324356', 'meles@gmail.com', 'https://oscarjobs.net/', 'mekelle,tigray', '1');


#
# TABLE STRUCTURE FOR: company_information
#

DROP TABLE IF EXISTS `company_information`;

CREATE TABLE `company_information` (
  `company_id` varchar(50) NOT NULL,
  `company_name` varchar(250) NOT NULL,
  `tin_number` varchar(300) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `website` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `company_information` (`company_id`, `company_name`, `tin_number`, `email`, `address`, `mobile`, `website`, `status`) VALUES ('', 'T-stock', '7765525', 'haftomk2004@gmail.com', 'Mekelle', '942245789', '', '1');


#
# TABLE STRUCTURE FOR: currency_tbl
#

DROP TABLE IF EXISTS `currency_tbl`;

CREATE TABLE `currency_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `currency_name` varchar(50) NOT NULL,
  `icon` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `currency_tbl` (`id`, `currency_name`, `icon`) VALUES ('1', 'birr', 'birr');
INSERT INTO `currency_tbl` (`id`, `currency_name`, `icon`) VALUES ('2', 'Azerbaijan Manat', 'dolar');


#
# TABLE STRUCTURE FOR: customer_information
#

DROP TABLE IF EXISTS `customer_information`;

CREATE TABLE `customer_information` (
  `customer_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(255) DEFAULT NULL,
  `stock_id` int(11) NOT NULL,
  `tin_number` varchar(30) DEFAULT NULL,
  `vat_number` varchar(30) DEFAULT NULL,
  `customer_address` varchar(255) NOT NULL,
  `house_number` varchar(30) DEFAULT NULL,
  `customer_mobile` varchar(100) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

INSERT INTO `customer_information` (`customer_id`, `customer_name`, `stock_id`, `tin_number`, `vat_number`, `customer_address`, `house_number`, `customer_mobile`, `customer_email`, `status`) VALUES ('25', 'tesfuuu', '82', '', '', '', '', '', '', '1');
INSERT INTO `customer_information` (`customer_id`, `customer_name`, `stock_id`, `tin_number`, `vat_number`, `customer_address`, `house_number`, `customer_mobile`, `customer_email`, `status`) VALUES ('26', 'Berhe', '81', '', '', '', '', '', '', '1');


#
# TABLE STRUCTURE FOR: customer_ledger
#

DROP TABLE IF EXISTS `customer_ledger`;

CREATE TABLE `customer_ledger` (
  `transaction_id` varchar(100) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `stock_id` int(11) NOT NULL,
  `invoice_no` bigint(20) DEFAULT NULL,
  `receipt_no` varchar(50) DEFAULT NULL,
  `amount` decimal(12,2) DEFAULT '0.00',
  `description` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `cheque_no` varchar(255) NOT NULL,
  `date` varchar(50) NOT NULL,
  `status` int(2) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `d_c` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `receipt_no` (`receipt_no`),
  KEY `receipt_no_2` (`receipt_no`),
  KEY `receipt_no_3` (`receipt_no`),
  KEY `receipt_no_4` (`receipt_no`)
) ENGINE=MyISAM AUTO_INCREMENT=733 DEFAULT CHARSET=utf8;

INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `stock_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `id`, `d_c`) VALUES ('SGU1A1X9VB', '0', '0', '0', NULL, NULL, 'Previous adjustment with software', 'NA', 'NA', '2025-11-18', '1', '732', 'd');
INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `stock_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `id`, `d_c`) VALUES ('UAY942GBXESNVKR', '26', '81', NULL, '3HPCS166UT', '6000.00', 'Medicine Received By Customer', '1', '', '2025-10-29', '1', '731', 'd');
INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `stock_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `id`, `d_c`) VALUES ('UAY942GBXESNVKR', '26', '81', '7571992811', NULL, '0.00', 'Cash Paid By Customer', '', '', '2025-10-29', '1', '730', 'c');
INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `stock_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `id`, `d_c`) VALUES ('W1U2W36Y72AVXG8', '26', '0', '0', 'BOECFI9L7J', '2000.00', 'Paid by customer', '1', '', '2025-10-29', '1', '729', 'c');
INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `stock_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `id`, `d_c`) VALUES ('W1U2W36Y72AVXG8', '26', '0', '0', NULL, '2000.00', 'Service ', '', '', '2025-10-29', '1', '728', 'd');
INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `stock_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `id`, `d_c`) VALUES ('C9OL7W3VKXQWKH6', '26', '81', '6642217559', NULL, '0.00', 'Cash Paid By Customer', '', '', '2025-10-29', '1', '720', 'c');
INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `stock_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `id`, `d_c`) VALUES ('C9OL7W3VKXQWKH6', '26', '81', NULL, 'HUE7D1G9SH', '1200.00', 'Medicine Received By Customer', '1', '', '2025-10-29', '1', '721', 'd');


#
# TABLE STRUCTURE FOR: daily_closing
#

DROP TABLE IF EXISTS `daily_closing`;

CREATE TABLE `daily_closing` (
  `closing_id` varchar(255) NOT NULL,
  `last_day_closing` float NOT NULL,
  `cash_in` float NOT NULL,
  `cash_out` float NOT NULL,
  `date` varchar(50) NOT NULL,
  `amount` float NOT NULL,
  `adjustment` float NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`closing_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: designation
#

DROP TABLE IF EXISTS `designation`;

CREATE TABLE `designation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(150) NOT NULL,
  `details` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `designation` (`id`, `designation`, `details`) VALUES ('1', 'Sales Manager', '');
INSERT INTO `designation` (`id`, `designation`, `details`) VALUES ('2', 'CEO', '');


#
# TABLE STRUCTURE FOR: educational_level
#

DROP TABLE IF EXISTS `educational_level`;

CREATE TABLE `educational_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(300) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `level` (`level`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO `educational_level` (`id`, `level`, `status`) VALUES ('3', 'Degree', '1');


#
# TABLE STRUCTURE FOR: employee_history
#

DROP TABLE IF EXISTS `employee_history`;

CREATE TABLE `employee_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `stock_id` int(11) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `rate_type` int(11) NOT NULL,
  `hrate` float NOT NULL,
  `email` varchar(50) NOT NULL,
  `blood_group` varchar(10) NOT NULL,
  `address_line_1` text NOT NULL,
  `address_line_2` text NOT NULL,
  `image` text,
  `country` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `zip` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO `employee_history` (`id`, `first_name`, `last_name`, `stock_id`, `designation`, `phone`, `rate_type`, `hrate`, `email`, `blood_group`, `address_line_1`, `address_line_2`, `image`, `country`, `city`, `zip`) VALUES ('1', 'ayda', 'Markos', '81', '1', '0927779173', '2', '35000', 'alazermilaw@gmail.com', '', '7777', '', '', 'Ethiopia', 'Mekelle', '1111');
INSERT INTO `employee_history` (`id`, `first_name`, `last_name`, `stock_id`, `designation`, `phone`, `rate_type`, `hrate`, `email`, `blood_group`, `address_line_1`, `address_line_2`, `image`, `country`, `city`, `zip`) VALUES ('2', 'Alazer', 'Markos', '82', '2', '0927779171', '2', '40000', 'alazermilaw@gmail.com', '', '777755', '', '', 'Ethiopia', 'Mekelle', '1111');
INSERT INTO `employee_history` (`id`, `first_name`, `last_name`, `stock_id`, `designation`, `phone`, `rate_type`, `hrate`, `email`, `blood_group`, `address_line_1`, `address_line_2`, `image`, `country`, `city`, `zip`) VALUES ('3', 'Mikiale', 'kiros', '87', '5', '0914223121', '2', '10000', 'tesfu@gmail.com', '', 'mekelle', '', '', 'Ethiopia', 'Mekelle', '7000');


#
# TABLE STRUCTURE FOR: employee_salary_payment
#

DROP TABLE IF EXISTS `employee_salary_payment`;

CREATE TABLE `employee_salary_payment` (
  `emp_sal_pay_id` int(11) NOT NULL AUTO_INCREMENT,
  `generate_id` int(11) NOT NULL,
  `employee_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `total_salary` decimal(18,2) NOT NULL DEFAULT '0.00',
  `total_working_minutes` varchar(50) CHARACTER SET latin1 NOT NULL,
  `working_period` varchar(50) CHARACTER SET latin1 NOT NULL,
  `payment_due` varchar(50) CHARACTER SET latin1 NOT NULL,
  `payment_date` varchar(50) CHARACTER SET latin1 NOT NULL,
  `paid_by` varchar(50) CHARACTER SET latin1 NOT NULL,
  `salary_month` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`emp_sal_pay_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO `employee_salary_payment` (`emp_sal_pay_id`, `generate_id`, `employee_id`, `total_salary`, `total_working_minutes`, `working_period`, `payment_due`, `payment_date`, `paid_by`, `salary_month`) VALUES ('4', '7', '1', '35000.00', '3.08', '3', 'paid', '2025-10-27', 'Millaw alazer', 'October 2025');
INSERT INTO `employee_salary_payment` (`emp_sal_pay_id`, `generate_id`, `employee_id`, `total_salary`, `total_working_minutes`, `working_period`, `payment_due`, `payment_date`, `paid_by`, `salary_month`) VALUES ('5', '7', '2', '40000.00', '0.03', '1', '', '', '', 'October 2025');
INSERT INTO `employee_salary_payment` (`emp_sal_pay_id`, `generate_id`, `employee_id`, `total_salary`, `total_working_minutes`, `working_period`, `payment_due`, `payment_date`, `paid_by`, `salary_month`) VALUES ('6', '8', '1', '35000.00', '0.00', '0', '', '', '', 'September 2025');
INSERT INTO `employee_salary_payment` (`emp_sal_pay_id`, `generate_id`, `employee_id`, `total_salary`, `total_working_minutes`, `working_period`, `payment_due`, `payment_date`, `paid_by`, `salary_month`) VALUES ('7', '8', '2', '40000.00', '0.00', '0', 'paid', '2025-10-28', 'Tesfahun Kalayou', 'September 2025');


#
# TABLE STRUCTURE FOR: employee_salary_setup
#

DROP TABLE IF EXISTS `employee_salary_setup`;

CREATE TABLE `employee_salary_setup` (
  `e_s_s_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `sal_type` varchar(30) NOT NULL,
  `salary_type_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `create_date` date DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `update_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `gross_salary` float NOT NULL,
  PRIMARY KEY (`e_s_s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `employee_salary_setup` (`e_s_s_id`, `employee_id`, `sal_type`, `salary_type_id`, `amount`, `create_date`, `update_date`, `update_id`, `gross_salary`) VALUES ('1', '1', '2', '0', '0.00', '2025-10-22', NULL, '', '35000');
INSERT INTO `employee_salary_setup` (`e_s_s_id`, `employee_id`, `sal_type`, `salary_type_id`, `amount`, `create_date`, `update_date`, `update_id`, `gross_salary`) VALUES ('2', '2', '2', '0', '0.00', '2025-10-22', NULL, '', '40000');
INSERT INTO `employee_salary_setup` (`e_s_s_id`, `employee_id`, `sal_type`, `salary_type_id`, `amount`, `create_date`, `update_date`, `update_id`, `gross_salary`) VALUES ('3', '1', '2', '0', '0.00', '2025-10-27', NULL, '', '35000');
INSERT INTO `employee_salary_setup` (`e_s_s_id`, `employee_id`, `sal_type`, `salary_type_id`, `amount`, `create_date`, `update_date`, `update_id`, `gross_salary`) VALUES ('4', '2', '2', '0', '0.00', '2025-10-28', NULL, '', '40000');


#
# TABLE STRUCTURE FOR: expense
#

DROP TABLE IF EXISTS `expense`;

CREATE TABLE `expense` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `type` varchar(100) NOT NULL,
  `voucher_no` varchar(50) NOT NULL,
  `amount` float NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO `expense` (`id`, `stock_id`, `date`, `type`, `voucher_no`, `amount`, `description`) VALUES ('4', '81', '2025-10-27', 'Delivery', '20251027103952', '2000', '');
INSERT INTO `expense` (`id`, `stock_id`, `date`, `type`, `voucher_no`, `amount`, `description`) VALUES ('5', '82', '2025-10-28', 'Delivery', '20251028011406', '1000', '');


#
# TABLE STRUCTURE FOR: expense_item
#

DROP TABLE IF EXISTS `expense_item`;

CREATE TABLE `expense_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `expense_item_name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `expense_item` (`id`, `expense_item_name`) VALUES ('1', 'Delivery');
INSERT INTO `expense_item` (`id`, `expense_item_name`) VALUES ('2', 'Transport');


#
# TABLE STRUCTURE FOR: field_of_study
#

DROP TABLE IF EXISTS `field_of_study`;

CREATE TABLE `field_of_study` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field` varchar(300) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `field` (`field`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO `field_of_study` (`id`, `field`, `status`) VALUES ('4', 'Computer science', '1');
INSERT INTO `field_of_study` (`id`, `field`, `status`) VALUES ('5', 'It', '1');


#
# TABLE STRUCTURE FOR: fixed_assets
#

DROP TABLE IF EXISTS `fixed_assets`;

CREATE TABLE `fixed_assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_code` varchar(50) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `insert_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `fixed_assets` (`id`, `item_code`, `item_name`, `price`, `insert_date`) VALUES ('1', '111', 'furniture', '300', '2025-10-22');


#
# TABLE STRUCTURE FOR: invoice
#

DROP TABLE IF EXISTS `invoice`;

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint(20) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `total_amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `invoice` bigint(20) DEFAULT NULL,
  `total_discount` decimal(10,2) DEFAULT '0.00' COMMENT 'total invoice discount',
  `invoice_discount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `total_tax` decimal(10,2) DEFAULT '0.00',
  `prevous_due` decimal(10,2) NOT NULL DEFAULT '0.00',
  `sales_by` varchar(30) DEFAULT NULL,
  `invoice_details` varchar(200) DEFAULT NULL,
  `status` int(2) NOT NULL,
  `payment_type` int(11) NOT NULL DEFAULT '1',
  `bank_id` varchar(30) DEFAULT NULL,
  `stock_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=160 DEFAULT CHARSET=utf8;

INSERT INTO `invoice` (`id`, `invoice_id`, `customer_id`, `date`, `total_amount`, `invoice`, `total_discount`, `invoice_discount`, `total_tax`, `prevous_due`, `sales_by`, `invoice_details`, `status`, `payment_type`, `bank_id`, `stock_id`) VALUES ('157', '9239322484', '26', '2025-10-29', '6000.00', '1000', '0.00', '0.00', '0.00', '0.00', '1', '', '1', '1', NULL, '81');
INSERT INTO `invoice` (`id`, `invoice_id`, `customer_id`, `date`, `total_amount`, `invoice`, `total_discount`, `invoice_discount`, `total_tax`, `prevous_due`, `sales_by`, `invoice_details`, `status`, `payment_type`, `bank_id`, `stock_id`) VALUES ('158', '6642217559', '26', '2025-10-29', '1200.00', '1001', '0.00', '0.00', '0.00', '0.00', '1', '', '1', '1', NULL, '81');
INSERT INTO `invoice` (`id`, `invoice_id`, `customer_id`, `date`, `total_amount`, `invoice`, `total_discount`, `invoice_discount`, `total_tax`, `prevous_due`, `sales_by`, `invoice_details`, `status`, `payment_type`, `bank_id`, `stock_id`) VALUES ('159', '7571992811', '26', '2025-10-29', '6000.00', '1002', '0.00', '0.00', '0.00', '1200.00', '1', '', '1', '1', NULL, '81');


#
# TABLE STRUCTURE FOR: invoice_details
#

DROP TABLE IF EXISTS `invoice_details`;

CREATE TABLE `invoice_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_details_id` varchar(30) NOT NULL,
  `invoice_id` bigint(20) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `batch_id` varchar(30) NOT NULL,
  `expiry_date` date NOT NULL,
  `cartoon` float DEFAULT NULL,
  `quantity` float NOT NULL,
  `rate` decimal(12,2) DEFAULT NULL,
  `manufacturer_rate` decimal(10,2) DEFAULT NULL,
  `total_price` decimal(12,2) DEFAULT NULL,
  `discount` decimal(12,0) DEFAULT NULL,
  `tax` decimal(10,2) DEFAULT NULL,
  `paid_amount` decimal(12,0) DEFAULT NULL,
  `due_amount` decimal(10,2) DEFAULT NULL,
  `status` int(2) NOT NULL,
  `pinvoice_id` varchar(300) NOT NULL,
  `stock_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=244 DEFAULT CHARSET=utf8;

INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `product_id`, `batch_id`, `expiry_date`, `cartoon`, `quantity`, `rate`, `manufacturer_rate`, `total_price`, `discount`, `tax`, `paid_amount`, `due_amount`, `status`, `pinvoice_id`, `stock_id`) VALUES ('243', '654524615514458', '7571992811', '89734557', '1', '2074-12-31', NULL, '12', '500.00', '100.00', '6000.00', '0', '0.00', '0', '7200.00', '1', 'INV08', '81');


#
# TABLE STRUCTURE FOR: jobs
#

DROP TABLE IF EXISTS `jobs`;

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `job_title` varchar(255) NOT NULL,
  `positions` int(11) NOT NULL,
  `sex` enum('Male','Female','Both','Other') NOT NULL,
  `age_operator` varchar(5) NOT NULL,
  `age_value` int(11) NOT NULL,
  `location` text NOT NULL,
  `education_level` int(11) NOT NULL,
  `field_of_study` text NOT NULL,
  `gpa_operator` varchar(5) NOT NULL,
  `gpa_value` decimal(4,2) NOT NULL,
  `experience_operator` varchar(5) NOT NULL,
  `experience_value` int(11) NOT NULL,
  `Skills` text NOT NULL,
  `employment_type` varchar(300) NOT NULL,
  `employment_period` varchar(300) NOT NULL,
  `work_location` varchar(300) NOT NULL,
  `special_skill` varchar(300) NOT NULL,
  `salary` varchar(300) NOT NULL,
  `job_start_date` date NOT NULL,
  `job_end_date` date NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO `jobs` (`id`, `company_id`, `job_title`, `positions`, `sex`, `age_operator`, `age_value`, `location`, `education_level`, `field_of_study`, `gpa_operator`, `gpa_value`, `experience_operator`, `experience_value`, `Skills`, `employment_type`, `employment_period`, `work_location`, `special_skill`, `salary`, `job_start_date`, `job_end_date`, `created_at`, `updated_at`) VALUES ('3', '1', 'Developer', '3', 'Both', '>=', '45', '[\"9\"]', '3', '[\"5\"]', '>=', '3.80', '>=', '5', 'Java,Excel', 'Part-time', '6 month', 'Site', 'Autocad', '2000-5000', '2025-11-28', '2025-12-06', '2025-11-28 11:04:27', '2025-12-18 03:36:08');
INSERT INTO `jobs` (`id`, `company_id`, `job_title`, `positions`, `sex`, `age_operator`, `age_value`, `location`, `education_level`, `field_of_study`, `gpa_operator`, `gpa_value`, `experience_operator`, `experience_value`, `Skills`, `employment_type`, `employment_period`, `work_location`, `special_skill`, `salary`, `job_start_date`, `job_end_date`, `created_at`, `updated_at`) VALUES ('4', '3', 'software Developer', '3', 'Both', '>=', '1', '[\"8\",\"9\",\"10\"]', '3', '[\"4\",\"5\"]', '>', '0.00', '>', '0', 'java,excel', 'Full-time', '5', 'Site', '676722', '5000-9000', '2025-12-01', '2025-12-27', '2025-12-08 08:00:25', '2025-12-08 08:01:58');


#
# TABLE STRUCTURE FOR: language
#

DROP TABLE IF EXISTS `language`;

CREATE TABLE `language` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `phrase` text NOT NULL,
  `english` text,
  `bangla` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1044 DEFAULT CHARSET=utf8;

INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('1', 'user_profile', 'User Profile', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('2', 'setting', 'Web Setting', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('3', 'language', 'Language', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('4', 'manage_users', 'Manage Users', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('5', 'add_user', 'Add User', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('6', 'manage_company', 'Manage Company', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('7', 'web_settings', 'Software Settings', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('8', 'manage_accounts', 'Manage Accounts', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('9', 'create_accounts', 'Create Accounts', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('10', 'manage_bank', 'Manage Bank', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('11', 'add_new_bank', 'Add New Bank', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('12', 'settings', 'Settings', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('13', 'closing_report', 'Closing Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('14', 'closing', 'Closing', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('15', 'cheque_manager', 'Cheque Manager', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('16', 'accounts_summary', 'Accounts Summary', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('17', 'expense', 'Expense', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('18', 'income', 'Income', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('19', 'accounts', 'Accounts', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('20', 'stock_report', 'Stock Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('21', 'stock', 'Stock', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('22', 'pos_invoice', 'POS Invoice', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('23', 'manage_invoice', 'Manage Invoice ', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('24', 'new_invoice', 'New Invoice', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('25', 'invoice', 'Invoice', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('26', 'manage_purchase', 'Manage Purchase', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('27', 'add_purchase', 'Add Purchase', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('28', 'purchase', 'Purchase', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('29', 'paid_customer', 'Paid Customer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('30', 'manage_customer', 'Manage Customer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('31', 'add_customer', 'Add Customer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('32', 'customer', 'Customer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('33', 'manufacturer_payment_actual', 'Manufacturer Payment Actual', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('34', 'manufacturer_sales_summary', 'Manufacturer  Sales Summary', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('35', 'manufacturer_sales_details', 'Manufacturer Sales Details', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('36', 'manufacturer_ledger', 'Manufacturer Ledger', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('37', 'manage_manufacturer', 'Manage Manufacturer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('38', 'add_manufacturer', 'Add Manufacturer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('39', 'manufacturer', 'Manufacturer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('40', 'product_statement', 'Medicine Statement', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('41', 'manage_product', 'Manage Medicine', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('42', 'add_product', 'Add Medicine', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('43', 'product', 'Medicine', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('44', 'manage_category', 'Manage Category', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('45', 'add_category', 'Add Category', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('46', 'category', 'Category', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('47', 'sales_report_product_wise', 'Sales Report (Medicine Wise)', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('48', 'purchase_report', 'Purchase Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('49', 'sales_report', 'Sales Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('50', 'todays_report', 'Todays Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('51', 'report', 'Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('52', 'dashboard', 'Dashboard', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('53', 'online', 'Online', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('54', 'logout', 'Logout', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('56', 'total_purchase', 'Total Purchase', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('57', 'total_amount', 'Total Amount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('58', 'manufacturer_name', 'Manufacturer  Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('59', 'invoice_no', 'Invoice No', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('60', 'purchase_date', 'Purchase Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('61', 'todays_purchase_report', 'Todays Purchase Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('62', 'total_sales', 'Total Sales', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('63', 'customer_name', 'Customer Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('64', 'sales_date', 'Sales Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('65', 'todays_sales_report', 'Todays Sales Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('66', 'home', 'Home', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('67', 'todays_sales_and_purchase_report', 'Todays sales and purchase report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('68', 'total_ammount', 'Total Amount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('69', 'rate', 'Unit Price', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('70', 'product_model', 'Medicine Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('71', 'product_name', 'Medicine Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('72', 'search', 'Search', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('73', 'end_date', 'End Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('74', 'start_date', 'Start Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('75', 'total_purchase_report', 'Total Purchase Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('76', 'total_sales_report', 'Total Sales Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('77', 'total_seles', 'Total Sales', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('78', 'all_stock_report', 'All Stock Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('79', 'search_by_product', 'Search By Medicine', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('80', 'date', 'Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('81', 'print', 'Print', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('82', 'stock_date', 'Stock Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('83', 'print_date', 'Print Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('84', 'sales', 'Sales', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('85', 'price', 'Price', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('86', 'sl', 'S.NO', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('87', 'add_new_category', 'Add new category', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('88', 'category_name', 'Category Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('89', 'save', 'Save', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('90', 'delete', 'Delete', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('91', 'update', 'Update', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('92', 'action', 'Action', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('93', 'manage_your_category', 'Manage your category ', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('94', 'category_edit', 'Category Edit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('95', 'status', 'Status', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('96', 'active', 'Active', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('97', 'inactive', 'Inactive', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('98', 'save_changes', 'Save Changes', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('99', 'save_and_add_another', 'Save And Add Another', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('100', 'model', 'equipment Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('101', 'manufacturer_price', 'Manufacturer Price', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('102', 'sell_price', 'Sell Price', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('103', 'image', 'Image', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('104', 'select_one', 'Select One', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('105', 'details', 'Details', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('106', 'new_product', 'New Medicine', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('107', 'add_new_product', 'Add new medicine', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('108', 'barcode', 'Barcode', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('109', 'qr_code', 'Qr-Code', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('110', 'product_details', 'Medicine Details', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('111', 'manage_your_product', 'Manage your medicine', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('112', 'product_edit', 'Medicine Edit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('113', 'edit_your_product', 'Edit your medicine', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('114', 'cancel', 'Cancel', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('115', 'incl_vat', 'Incl. Vat', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('116', 'money', 'Dollar', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('117', 'grand_total', 'Grand Total', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('118', 'quantity', 'QTY.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('119', 'product_report', 'Medicine Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('120', 'product_sales_and_purchase_report', 'Medicine sales and purchase report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('121', 'previous_stock', 'Previous Stock', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('122', 'out', 'Out', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('123', 'in', 'In', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('124', 'to', 'To', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('125', 'previous_balance', 'Previous Balance', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('126', 'customer_address', 'Customer Address', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('127', 'customer_mobile', 'Customer Mobile', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('128', 'customer_email', 'Customer Email', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('129', 'add_new_customer', 'Add new customer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('130', 'balance', 'Balance', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('131', 'mobile', 'Mobile', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('132', 'address', 'Address', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('133', 'manage_your_customer', 'Manage your customer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('134', 'customer_edit', 'Customer Edit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('135', 'paid_customer_list', 'Paid Customer List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('136', 'ammount', 'Total Price', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('137', 'customer_ledger', 'Customer Ledger', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('138', 'manage_customer_ledger', 'Manage Customer Ledger', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('139', 'customer_information', 'Customer Information', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('140', 'debit_ammount', 'Debit Amount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('141', 'credit_ammount', 'Credit Amount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('142', 'balance_ammount', 'Balance Amount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('143', 'receipt_no', 'Receipt NO', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('144', 'description', 'Description', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('145', 'debit', 'Debit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('146', 'credit', 'Credit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('147', 'item_information', 'Item Information', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('148', 'total', 'Total', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('149', 'please_select_manufacturer', 'Please Select Manufacturer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('150', 'submit', 'Submit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('151', 'submit_and_add_another', 'Submit And Add Another One', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('152', 'add_new_item', 'Add New Item', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('153', 'manage_your_purchase', 'Manage your purchase', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('154', 'purchase_edit', 'Purchase Edit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('155', 'purchase_ledger', 'Purchase Ledger', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('156', 'invoice_information', 'Invoice Information', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('157', 'paid_ammount', 'Paid Amount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('158', 'discount', 'Discount / Pcs.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('159', 'save_and_paid', 'Save And Paid', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('160', 'payee_name', 'Payee Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('161', 'manage_your_invoice', 'Manage your invoice', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('162', 'invoice_edit', 'Invoice Edit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('163', 'new_pos_invoice', 'New POS invoice', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('164', 'add_new_pos_invoice', 'Add new pos invoice', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('165', 'product_id', 'Medicine ID', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('166', 'paid_amount', 'Paid Amount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('167', 'authorised_by', 'Authorised By', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('168', 'checked_by', 'Checked By', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('169', 'received_by', 'Received By', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('170', 'prepared_by', 'Prepared By', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('171', 'memo_no', 'Memo No', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('172', 'website', 'Website', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('173', 'email', 'Email', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('174', 'invoice_details', 'Invoice Details', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('175', 'reset', 'Reset', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('176', 'payment_account', 'Payment Account', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('177', 'bank_name', 'Bank Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('178', 'cheque_or_pay_order_no', 'Cheque/Pay Order No', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('179', 'payment_type', 'Payment Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('180', 'payment_from', 'Payment From', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('181', 'payment_date', 'Payment Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('182', 'add_income', 'Add Income', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('183', 'cash', 'Cash', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('184', 'cheque', 'Cheque', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('185', 'pay_order', 'Pay Order', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('186', 'payment_to', 'Payment To', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('187', 'total_expense_ammount', 'Total Expense Amount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('188', 'transections', 'Transactions', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('189', 'accounts_name', 'Accounts Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('190', 'outflow_report', 'Expense Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('191', 'inflow_report', 'Income Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('192', 'all', 'All', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('193', 'account', 'Account', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('194', 'from', 'From', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('195', 'account_summary_report', 'Account Summary Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('196', 'search_by_date', 'Search By Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('197', 'cheque_no', 'Cheque No', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('198', 'name', 'Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('199', 'closing_account', 'Closing Account', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('200', 'close_your_account', 'Close your account', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('201', 'last_day_closing', 'Last Day Closing', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('202', 'cash_in', 'Cash In', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('203', 'cash_out', 'Cash Out', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('204', 'cash_in_hand', 'Cash In Hand', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('205', 'add_new_bank', 'Add New Bank', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('206', 'day_closing', 'Day Closing', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('207', 'account_closing_report', 'Account Closing Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('208', 'last_day_ammount', 'Last Day Amount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('209', 'adjustment', 'Adjustment', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('210', 'pay_type', 'Pay Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('211', 'customer_or_manufacturer', 'Customer,Manufacturer Or Others', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('212', 'transection_id', 'Transactions ID', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('213', 'accounts_summary_report', 'Accounts Summary Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('214', 'bank_list', 'Bank List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('215', 'bank_edit', 'Bank Edit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('216', 'debit_plus', 'Debit (+)', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('217', 'credit_minus', 'Credit (-)', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('218', 'account_name', 'Account Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('219', 'account_type', 'Account Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('220', 'account_real_name', 'Account Real Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('221', 'manage_account', 'Manage Account', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('222', 'company_name', 'Company Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('223', 'edit_your_company_information', 'Edit your company information', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('224', 'company_edit', 'Company Edit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('225', 'admin', 'Admin', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('226', 'user', 'User', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('227', 'password', 'Password', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('228', 'last_name', 'Last Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('229', 'first_name', 'First Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('230', 'add_new_user_information', 'Add new user information', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('231', 'user_type', 'User Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('232', 'user_edit', 'User Edit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('233', 'rtr', 'RTR', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('234', 'ltr', 'LTR', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('235', 'ltr_or_rtr', 'LTR/RTR', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('236', 'footer_text', 'Footer Text', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('237', 'favicon', 'Favicon', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('238', 'logo', 'Logo', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('239', 'update_setting', 'Update Setting', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('240', 'update_your_web_setting', 'Update your Web setting', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('241', 'login', 'Login', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('242', 'your_strong_password', 'Your strong password', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('243', 'your_unique_email', 'Your unique email', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('244', 'please_enter_your_login_information', 'Please enter your login information.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('245', 'update_profile', 'Update Profile', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('246', 'your_profile', 'Your Profile', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('247', 're_type_password', 'Re-Type Password', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('248', 'new_password', 'New Password', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('249', 'old_password', 'Old Password', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('250', 'new_information', 'New Information', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('251', 'old_information', 'Old Information', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('252', 'change_your_information', 'Change your information', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('253', 'change_your_profile', 'Change your profile', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('254', 'profile', 'Profile', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('255', 'wrong_username_or_password', 'Wrong User Name Or Password !', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('256', 'successfully_updated', 'Successfully Updated.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('257', 'blank_field_does_not_accept', 'Blank Field Does Not Accept !', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('258', 'successfully_changed_password', 'Successfully changed password.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('259', 'you_are_not_authorised_person', 'You are not authorised person !', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('260', 'password_and_repassword_does_not_match', 'Passwor and re-password does not match !', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('261', 'new_password_at_least_six_character', 'New Password At Least 6 Character.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('262', 'you_put_wrong_email_address', 'You put wrong email address !', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('263', 'cheque_ammount_asjusted', 'Cheque amount adjusted.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('264', 'successfully_payment_paid', 'Successfully Payment Paid.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('265', 'successfully_added', 'Successfully Added.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('266', 'successfully_updated_2_closing_ammount_not_changeale', 'Successfully Updated -2. Note: Closing Amount Not Changeable.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('267', 'successfully_payment_received', 'Successfully Payment Received.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('268', 'already_inserted', 'Already Inserted !', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('269', 'successfully_delete', 'Successfully Delete.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('270', 'successfully_created', 'Successfully Created.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('271', 'logo_not_uploaded', 'Logo not uploaded !', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('272', 'favicon_not_uploaded', 'Favicon not uploaded !', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('273', 'manufacturer_mobile', 'Manufacturer  Mobile', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('274', 'manufacturer_address', 'Manufacturer  Address', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('275', 'manufacturer_details', 'Manufacturer Details', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('276', 'add_new_manufacturer', 'Add New Manufacturer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('277', 'manage_suppiler', 'Manage Manufacturer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('278', 'manage_your_manufacturer', 'Manage your Manufacturer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('279', 'manage_manufacturer_ledger', 'Manage Manufacturer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('280', 'invoice_id', 'Invoice ID', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('281', 'deposite_id', 'Deposit ID', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('282', 'manufacturer_actual_ledger', 'Manufacturer Actual Ledger', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('283', 'manufacturer_information', 'Manufacturer Information', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('284', 'event', 'Event', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('285', 'add_new_income', 'Add New Income', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('286', 'add_expese', 'Add Expense', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('287', 'add_new_expense', 'Add New Expense', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('288', 'total_income_ammount', 'Total Income Amount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('289', 'create_new_invoice', 'Create New Invoice', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('290', 'create_pos_invoice', 'Create POS Invoice', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('291', 'total_profit', 'Total Profit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('292', 'monthly_progress_report', 'Monthly Progress Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('293', 'total_invoice', 'Total Invoice', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('294', 'account_summary', 'Account Summary', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('295', 'total_manufacturer', 'Total manufacturer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('296', 'total_product', 'Total Medicine', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('297', 'total_customer', 'Total Customer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('298', 'manufacturer_edit', 'Manufacturer Edit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('299', 'add_new_invoice', 'Add New Invoice', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('300', 'add_new_purchase', 'Add new purchase', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('301', 'currency', 'Currency', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('302', 'currency_position', 'Currency Position', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('303', 'left', 'Left', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('304', 'right', 'Right', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('305', 'add_tax', 'Add Tax', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('306', 'manage_tax', 'Manage Tax', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('307', 'add_new_tax', 'Add new tax', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('308', 'enter_tax', 'Enter Tax', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('309', 'already_exists', 'Already Exists !', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('310', 'successfully_inserted', 'Successfully Inserted.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('311', 'tax', 'Tax', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('312', 'tax_edit', 'Tax Edit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('313', 'product_not_added', 'Medicine not added !', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('314', 'total_tax', 'Total Tax', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('315', 'manage_your_manufacturer_details', 'Manage your Manufacturer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('316', 'invoice_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s                                       standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('317', 'thank_you_for_choosing_us', 'Thank you very much for choosing us.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('318', 'billing_date', 'Billing Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('319', 'billing_to', 'Billing To', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('320', 'billing_from', 'Billing From', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('321', 'you_cant_delete_this_product', 'Sorry !!  You can\'t delete this medicine.This medicine already used in calculation system!', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('322', 'old_customer', 'Old Customer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('323', 'new_customer', 'New Customer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('324', 'new_manufacturer', 'New Manufacturer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('325', 'old_manufacturer', 'Old Manufacturer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('326', 'credit_customer', 'Credit Customer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('327', 'account_already_exists', 'This Account Already Exists !', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('328', 'edit_income', 'Edit Income', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('329', 'you_are_not_access_this_part', 'You are not authorised person !', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('330', 'account_edit', 'Account Edit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('331', 'due', 'Due', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('332', 'expense_edit', 'Expense Edit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('333', 'please_select_customer', 'Please select customer !', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('334', 'profit_report', 'Profit Report (Invoice Wise)', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('335', 'total_profit_report', 'Total profit report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('336', 'please_enter_valid_captcha', 'Please enter valid captcha.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('337', 'category_not_selected', 'Category not selected.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('338', 'manufacturer_not_selected', 'Manufacturer not selected.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('339', 'please_select_product', 'Please select medicine', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('340', 'product_model_already_exist', 'Medicine model already exist !', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('341', 'invoice_logo', 'Invoice Logo', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('342', 'available_quantity', 'Available Quantity', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('343', 'you_can_not_buy_greater_than_available_quantity', 'You can not select grater than availale quantity !', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('344', 'customer_details', 'Customer details', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('345', 'manage_customer_details', 'Manage customer details.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('346', 'box_size', 'Box size', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('347', 'exp_date', 'EXP.Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('348', 'product_location', 'Medicine  Shelf', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('349', 'generic_name', 'Generic name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('350', 'payment_method', 'Payment Method', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('351', 'card_no', 'Card no', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('352', 'medicine', 'Lab equipment', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('353', 'medicine_search', 'equipment Search', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('354', 'what_you_search', 'Enter what you search', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('355', 'company', 'Company', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('356', 'customer_search', 'Customer search', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('357', 'invoice_search', 'Invoice search', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('358', 'purchase_search', 'Purchase search', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('359', 'daily_closing_report', 'Daily closing report.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('360', 'closing_search_report', 'Closing Search Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('361', 'category_list', 'Category List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('362', 'company_list', 'Company List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('363', 'customers_list', 'Customer List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('364', 'credit_customer_list', 'Credit Customer List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('365', 'previous_balance_adjustment', 'Previous Balance Adjustment', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('366', 'invoice_list', 'Invoice List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('367', 'add_pos_invoice', 'Add POS Invoice', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('368', 'add_invoice', 'Add Invoice', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('369', 'product_list', 'Medicine List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('370', 'purchases_list', 'Purchase List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('371', 'purchase_list', 'Purchase List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('372', 'stock_list', 'Stock List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('373', 'all_report', 'All Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('374', 'daily_sales_report', 'Daily sales Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('375', 'product_wise_sales_report', 'Medicine Wise Sales Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('376', 'bank_update', 'Bank Update', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('377', 'account_list', 'Account List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('378', 'manufacturer_list', 'Manufacturer  List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('379', 'manufacturer_search_item', 'Manufacturer  Search Item', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('380', 'user_list', 'User List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('381', 'user_search_item', 'User Search Item', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('382', 'change_password', 'Change Password', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('383', 'admin_login_area', 'Admin Login Area', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('384', 'accounts_inflow_form', 'Account Inflow Form', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('385', 'accounts_outflow_form', 'Accounts Outflow Form', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('386', 'accounts_tax_form', 'Accounts Tax Form', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('387', 'accounts_manage_tax', 'Accounts Manage Tax', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('388', 'accounts_tax_edit', 'Accounts Tax Edit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('389', 'accounts_summary_data', 'Accounts Summary Data', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('390', 'accounts_details_data', 'Accounts Details Data', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('391', 'datewise_summary_data', 'Datewise Summary Data', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('392', 'accounts_cheque_manager', 'Account Cheque Manager', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('393', 'accounts_edit_data', 'Accounts Edit Data', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('394', 'print_barcode', 'Print Barcode', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('395', 'print_qrcode', 'Print Qrcode', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('396', 'add_new_account', 'Add New Account', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('397', 'table_edit', 'Table Edit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('398', 'secret_key', 'Secret Key', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('399', 'site_key', 'Site Key', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('400', 'captcha', 'Captcha', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('401', 'please_add_walking_customer_for_default_customer', 'Please add walking customer for default customer. ', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('402', 'barcode_qrcode_scan_here', 'Barcode Or QRcode scan here', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('403', 'manage_your_credit_customer', 'Manage your credit customer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('404', 'unit', 'Unit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('405', 'total_discount', 'Total Discount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('406', 'meter_m', 'Meter (M)', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('407', 'piece_pc', 'Piece (Pc)', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('408', 'kilogram_kg', 'Kilogram (Kg)', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('409', 'import_product_csv', 'Import Medicine (CSV)', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('410', 'close', 'Close', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('411', 'csv_file_informaion', 'File Information (CSV)', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('412', 'download_example_file', 'Download Example File', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('413', 'upload_csv_file', 'Upload CSV File', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('414', 'manufacturer_id', 'Manufacturer ID', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('415', 'category_id', 'Category ID', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('416', 'are_you_sure_to_delete', 'Are you sure,want to delete ?', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('417', 'stock_report_manufacturer_wise', 'Stock Report (Manufacturer Wise)', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('418', 'stock_report_product_wise', 'Stock Report (Medicine Wise)', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('419', 'select_manufacturer', 'Select Manufacturer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('420', 'select_product', 'Select Medicine ', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('421', 'phone', 'Phone', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('422', 'in_quantity', 'In Quantity', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('423', 'out_quantity', 'Sold QTY', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('424', 'in_taka', 'In Taka', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('425', 'out_taka', 'Out Taka', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('426', 'data_synchronizer', 'Data Synchronizer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('427', 'synchronize', 'Synchronize', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('428', 'backup_restore', 'Backup And Restore', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('429', 'synchronizer_setting', 'Synchronizer Setting', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('430', 'backup_and_restore', 'Backup And Restore', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('431', 'hostname', 'Host Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('432', 'username', 'User Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('433', 'ftp_port', 'FTP Port', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('434', 'ftp_debug', 'FTP Debug', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('435', 'project_root', 'Project Root', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('436', 'internet_connection', 'Internet connection', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('437', 'ok', 'Ok', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('438', 'not_available', 'Not available', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('439', 'outgoing_file', 'Outgoing File', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('440', 'available', 'Available', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('441', 'incoming_file', 'Incoming file', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('442', 'data_upload_to_server', 'Data upload to server', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('443', 'download_data_from_server', 'Download data from server', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('444', 'data_import_to_database', 'Data import to database', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('445', 'please_wait', 'Please Wait', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('446', 'ooops_something_went_wrong', 'Ooops something went wrong', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('447', 'file_information', 'File Information', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('448', 'size', 'Size', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('449', 'backup_date', 'Backup date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('450', 'backup_now', 'Backup Now', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('451', 'are_you_sure', 'Are you sure ?', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('452', 'download', 'Downlaod', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('453', 'database_backup', 'Database Backup', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('454', 'backup_successfully', 'Backup Successfully', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('455', 'please_try_again', 'Please Try Again', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('456', 'restore_successfully', 'Restore successfully', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('457', 'download_successfully', 'Download Successfully', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('458', 'delete_successfully', 'Delete Successfully', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('459', 'ftp_setting', 'FTP Setting', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('460', 'save_successfully', 'Save successfully', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('461', 'upload_successfully', 'Upload successfully.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('462', 'unable_to_upload_file_please_check_configuration', 'unable to upload file please check configuration.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('463', 'please_configure_synchronizer_settings', 'Please Configure Synchronizer Settings ', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('464', 'unable_to_download_file_please_check_configuration', 'Unable To Download File,Please Check Configuration.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('465', 'data_import_first', 'Data Import First', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('466', 'data_import_successfully', 'Data Import Successfully', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('467', 'unable_to_import_data_please_check_config_or_sql_file', 'Unable to import data please check config or sql file.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('468', 'restore_now', 'Restore Now', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('469', 'out_of_stock', 'Out Of Stock', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('470', 'others', 'Others', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('471', 'shelf', 'Shelf', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('472', 'discount_type', 'Discount Type ', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('473', 'discount_percentage', 'Discount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('474', 'fixed_dis', 'Fixed Dis', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('475', 'full_paid', 'Full Paid', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('476', 'available_qnty', 'Ava.Qty', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('477', 'stock_ctn', 'Stock/Qnt', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('478', 'sale_price', 'Sale Price', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('479', 'manufacturer_rate', 'Manufacturer  Price', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('480', 'please_upload_image_type', 'Sorry!!! Please Upload jpg,jpeg,png,gif typeimage', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('481', 'ml', 'Milli liter(ml)', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('482', 'mg', 'Milli Gram(mg)', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('483', 'you_can_not_buy_greater_than_available_qnty', 'You can not sale more than available quantity ! please purchase this Product', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('484', 'due_amount', 'Due Amount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('485', 'return_invoice', 'Return Invoice', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('486', 'sold_qty', 'Sold Qty', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('487', 'ret_quantity', 'Return QTY', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('488', 'deduction', 'Deduction', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('489', 'return', 'Return', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('490', 'note', 'Return Reasone', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('491', 'usablilties', 'Return Usability', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('492', 'adjs_with_stck', 'Adjust With Stock', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('493', 'return_to_manufacturer', 'Return To Manufacturer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('494', 'wastage', 'Wastage', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('495', 'to_deduction', 'Total Deduction', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('496', 'nt_return', 'Net Return', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('497', 'return_id', 'Return Id', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('498', 'return_details', 'Return Details', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('499', 'add_return', 'Add Return', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('500', 'return_list', 'Return List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('501', 'stock_return_list', 'Stock Return List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('502', 'wastage_return_list', 'Wastage Return List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('503', 'check_return', 'Check Return', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('504', 'quantity_must_be_fillup', 'Return Quantity Must be Fill Up', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('505', 'expeire_date', 'Expiry  date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('506', 'batch_id', 'Batch ID', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('507', 'manufacturer_return_list', 'Manufacturer  Return List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('508', 'c_r_slist', 'Customer Return List ', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('509', 'manufacturer_return', 'Manufacturer  Return List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('510', 'wastage_list', 'Wastage List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('511', 'in_qnty', 'In Quantity', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('512', 'out_qnty', 'Sold QTY', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('513', 'stock_sale', 'Stock Sell Price', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('514', 'add_product_csv', 'Import Medicine (CSV)', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('515', 'purchase_id', 'Purchase ID', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('516', 'add_payment', 'Add Payment', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('517', 'add_new_payment', 'Add new Payment', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('518', 'transaction', 'Transaction', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('519', 'manage_transaction', 'Manage Transaction', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('520', 'choose_transaction', 'Choose Transaction', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('521', 'receipt', 'Receipt', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('522', 'payment', 'Payment', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('523', 'transaction_categry', 'Transaction Category', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('524', 'transaction_mood', 'Transaction Mood', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('525', 'payment_amount', 'Payment Amount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('526', 'receipt_amount', 'Receipt Amount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('527', 'daily_summary', 'Daily Summary', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('528', 'daily_cash_flow', 'Daily  Cashflow', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('529', 'custom_report', 'Custom Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('530', 'root_account', 'Root Account', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('531', 'office', 'Office', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('532', 'loan', 'Loan', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('533', 'successfully_saved', 'Successfully Saved', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('534', 'bank', 'Bank', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('535', 'bank_transaction', 'Bank Transaction', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('536', 'office_loan', 'Office Loan', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('537', 'add_person', 'Add Person', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('538', 'manage_loan', 'Manage Person', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('539', 'add_loan', 'Add Loan', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('540', 'ac_name', 'Account Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('541', 'ac_no', 'Account No', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('542', 'branch', 'Branch', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('543', 'signature_pic', 'Signature ', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('544', 'withdraw_deposite_id', 'Withdraw Deposit ID', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('545', 'select_report', 'Select Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('546', 'per_qty', 'Purchase Qty', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('547', 'stock_report_batch_wise', 'Stock Report(Batch Wise)', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('548', 'box', 'Box', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('549', 'gram', 'Gram', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('550', 'profit_report_manufacturer_wise', 'Profit/Loss Report(Manufacturer)', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('551', 'calculate', 'Calculate', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('552', 'profit_report_product_wise', 'Profit/Loss  Report Product Wise', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('553', 'view_report', 'View Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('554', 'report_for', 'Report For', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('555', 'total_sale_qty', 'Total Sale QTY', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('556', 'total_purchase_pric', 'Total purchase Price', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('557', 'total_sale', 'Total Sale', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('558', 'net_profit', 'Net Profit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('559', 'loss', 'Loss', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('560', 'product_type', 'Medicine Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('561', 'add_type', 'Add Medicine Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('562', 'add_new_type', 'Add New Medicine  Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('563', 'type', 'Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('564', 'type_name', 'Type Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('565', 'manage_type', 'Manage Medicine Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('566', 'type_id', 'Type Id', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('567', 'type_edit', 'Edit Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('568', 'profitloss', 'profit/Loss', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('569', 'manufacturer_wise', 'Manufacturer Wise', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('570', 'product_wise', 'Medicine Wise', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('571', 'medicine_info', 'lab equipment Information', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('572', 'choose_another_invno', 'Choose Another Invoice No !!', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('573', 'return_manufacturers', 'Return Manufacturers', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('574', 'return_manufacturer', 'Return Manufacturers', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('575', 'please_input_correct_invoice_no', 'Please Input Correct Invoice No', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('576', 'stock_purchase_price', 'Stock Purchase Price', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('577', 'manufacturer_returns', 'Manufacturer  Return ', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('578', 'invoice_discount', 'Invoice Discount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('579', 'qty', 'Qty', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('580', 'discounts', 'Discount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('581', 'sub_total', 'Sub Total', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('582', 'paid', 'Paid', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('583', 'change', 'Change', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('584', 'purchase_price', 'Purchase Price', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('585', 'expiry', 'Expiry', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('586', 'batch', 'Batch', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('587', 'role_permission', 'Role Permission', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('588', 'user_assign_role', 'Assign  User Role', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('589', 'permission', 'Permission', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('590', 'personal_loan', 'Personal Loan', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('591', 'role_name', 'Role Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('592', 'create', 'Create', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('593', 'read', 'Read', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('594', 'add_role', 'Add Role', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('595', 'You do not have permission to access. Please contact with administrator.', 'You do not have permission to access. Please contact with administrator.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('596', 'role_permission_added_successfully', 'Role Permission Added successfully.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('597', 'role_list', 'Role List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('598', 'role_permission_updated_successfully', 'Role Permission Updated Successfully.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('599', 'add_phrase', 'Add Phrase', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('600', 'language_home', 'Language Home', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('601', 'phrase_edit', 'Phrase Edit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('602', 'no_role_selected', 'No Role Selected', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('603', 'category_added_successfully', 'Category added successfully', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('604', 'category_already_exist', 'Category already exist', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('605', 'select_manufacturer', 'Select Manufacturer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('607', 'select_tax', 'Select Tax', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('608', 'must_input_numbers', 'Must input numbers', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('609', 'please_check_your_price', 'Please Check Your Price', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('610', 'your_profit_is', 'Your Profit is', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('611', 'failed', 'Failed', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('612', 'you_have_reached_the_limit_of_adding', 'You have reached the limit of adding', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('613', 'inputs', 'inputs', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('614', 'expiry_date_should_be_greater_than_puchase_date', 'Expiry Date should be greater than Puchase Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('615', 'expiry_date_should_be_greater_than_puchase_date', 'Expiry Date should be greater than Puchase Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('616', 'product_name', 'Medicine Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('617', 'total_quantity', 'Total Quantity', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('618', 'rates', 'Rate', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('619', 'total_amount', 'Total Amount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('621', 'receipt_detail', 'Receipt Detail', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('622', 'amount', 'Amount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('623', 'save_and_add_another_one', 'Save and add another one', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('624', 'checque_number', 'Checque Number', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('625', 'edit_receipt', 'Edit Receipt', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('626', 'receipt_list', 'Receipt List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('627', 'search_by_customer_name', 'Search By Customer Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('628', 'actions', 'Actions', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('629', 'no_data_found', 'No Data Found', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('630', 'edit', 'Edit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('631', 'product_not_found', 'Medicine  not found', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('632', 'request_failed_please_check_your_code_and_try_again', 'Request Failed, Please check your code and try again', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('633', 'You_can_not_return_more_than_sold_quantity', 'You Can Not Return More than Sold quantity', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('634', 'you_can_not_return_less_than_1', 'You Can Not Return Less than 1', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('635', 'transection_details', 'Transection Details', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('636', 'transection_details_datewise', 'Transection  Details Datewise', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('637', 'transection_id', 'Transactions ID', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('638', 'select_option', 'Select Option', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('639', 'loan_list', 'Loan List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('640', 'todays_details', 'Todays Details', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('641', 'transaction_details', 'Transaction Details', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('642', 'person_id', 'Person ID', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('643', 'total_transection', 'Total Transection', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('644', 'transaction_id', 'Transaction ID', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('645', 'transection_report', 'Transection Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('646', 'add_transection', 'Add Transection', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('647', 'manage_transection', 'Manage Transection', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('648', 'select_id', 'Select ID', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('649', 'choose_transection', 'Choose Transection', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('650', 'update_transection', 'Update Transection', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('651', 'manufacturer_all', 'Manufacturer All', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('652', 'select_all', 'Select All', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('653', 'all', 'All', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('654', 'max_rate', 'Max Rate', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('655', 'min_rate', 'Min Rate', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('656', 'average_rate', 'Average Rate', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('657', 'date_expired_please_choose_another.', 'Date Expired!! Please Choose another', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('658', 'your_medicine_is_date_expiry_Please_choose_another', 'Your Medicine is Date Expiry !! Please Choose another', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('659', 'meno', 'MEMO', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('660', 'out_of_stock_and_date_expired_medicine', 'Out of Stock and Date Expired Medicine', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('661', 'edit_profile', 'Edit Profile', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('662', 'deposit_detail', 'Deposit detail', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('663', 'new_deposit', 'New Deposit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('664', 'edit_deposit', 'Edit Deposit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('665', 'select_customer', 'Select Customer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('666', 'draw', 'Draw', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('667', 'deposit', 'Deposit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('668', 'select_type', 'Select Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('669', 'transaction_type', 'Transaction Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('670', 'cash', 'Cash', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('671', 'select_bank', 'Select Bank', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('672', 'drawing', 'Drawing', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('673', 'expenses', 'Expenses', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('674', 'banking', 'Banking', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('675', 'daily_closing', 'Daily Closing', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('676', 'title', 'Title', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('677', 'error_get_data_from_ajax', 'Error get data from ajax', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('678', 'toggle_navigation', 'Toggle Navigation', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('679', 'this_product_not_found', 'This Medicine  Not Found !', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('680', 'search_by_date_from', 'Search By Date: From', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('681', 'manufacturer_sales_report', 'Manufacturer Sales Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('682', 'transection', 'Transection', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('683', 'transection_mood', 'Transection Mood', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('684', 'transection_categry', 'Transection Categry', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('685', 'export_csv', 'Export CSV', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('686', 'select manufacturer', 'Select Manufacturer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('687', 'customer_return', 'Customer Return', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('688', 'return_form', 'Return Form', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('689', 'data_not_found', 'Data Not Found', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('690', 'export_csv', 'Export CSV', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('691', 'manage_person', 'Manage Person', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('692', 'backup', 'Back Up', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('693', 'total_balance', 'Total Balance', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('694', 'product_id_model_manufacturer_id_can_not_null', 'Medicine Id & Medicine Type & Manufacturer Id Can not be Blank', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('695', 'product_name_can_not_be_null', 'Medicine  Name can Not be Blank', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('696', 'product_model_can_not_be_null', 'Medicine  Model Can Not be Blank', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('697', 'sms', 'SMS', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('698', 'sms_configure', 'Sms Configuration', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('699', 'url', 'Url', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('700', 'sender_id', 'Sender ID', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('701', 'api_key', 'Api Key', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('702', 'barcode_or_qrcode', 'Barcode Or QRcode ', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('703', 'currency_name', 'Currency Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('704', 'add_currency', 'Add Currency', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('705', 'currency_icon', 'Currency Icon', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('706', 'currency_list', 'Currency List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('707', 'import', 'Import', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('708', 'c_o_a', 'Chart Of Account', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('709', 'supplier_payment', 'Supplier Payment', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('710', 'customer_receive', 'Customer Receive', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('711', 'debit_voucher', 'Debit Voucher', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('712', 'credit_voucher', 'Credit voucher', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('713', 'voucher_approval', 'Voucher Approval', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('714', 'contra_voucher', 'Contra Voucher', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('715', 'journal_voucher', 'Journal Voucher', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('716', 'voucher_report', 'Voucher Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('717', 'cash_book', 'Cash Book', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('718', 'inventory_ledger', 'Inventory Ledger', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('719', 'bank_book', 'Bank Book', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('720', 'general_ledger', 'General Ledger', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('721', 'trial_balance', 'Trial Balance', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('722', 'profit_loss_report', 'Profit Loss Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('723', 'cash_flow', 'Cash Flow', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('724', 'coa_print', 'COA Print', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('725', 'manufacturer_payment', 'Manufacturer Payment', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('726', 'add_more', 'Add More', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('727', 'code', 'Code', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('728', 'remark', 'Transaction Details', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('729', 'voucher_no', 'Voucher NO', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('730', 'accounts_tree_view', 'Accounts Tree view', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('731', 'find', 'Find', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('732', 'voucher_type', 'Voucher Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('733', 'particulars', 'Particulars', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('734', 'cash_flow_statement', 'Cash Flow Statement', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('735', 'amount_in_dollar', 'Amount In Dollar', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('736', 'opening_cash_and_equivalent', 'Opening Cash and Equivalent', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('737', 'with_details', 'With Details', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('738', 'transaction_head', 'Transaction Head', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('739', 'gl_head', 'General Ledger Head', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('740', 'no_report', 'No Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('741', 'pre_balance', 'Pre Balance', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('742', 'current_balance', 'Current Balance', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('743', 'from_date', 'From Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('744', 'to_date', 'To Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('745', 'profit_loss', 'Profit Loss Statement', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('746', 'add_expense_item', 'Add Expense Item', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('747', 'manage_expense_item', 'Manage Expense Item', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('748', 'add_expense', 'Add Expense', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('749', 'manage_expense', 'Manage Expense', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('750', 'expense_statement', 'Expense Statement', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('751', 'expense_type', 'Expense Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('752', 'expense_item_name', 'Expense Item Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('753', 'opening_balance', 'Opening Balance', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('754', 'tax_settings', 'Tax Settings', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('755', 'add_incometax', 'Add Income Tax', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('756', 'manage_income_tax', 'Manage Income tax', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('757', 'tax_report', 'Tax Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('758', 'invoice_wise_tax_report', 'Invoice Wise Tax Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('759', 'number_of_tax', 'Number of Tax', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('760', 'default_value', 'Default Value', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('761', 'reg_no', 'Registration No', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('762', 'tax_name', 'Tax Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('763', 'service_id', 'Service Id', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('764', 'service', 'Service', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('765', 'add_service', 'Add Service', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('766', 'manage_service', 'Manage Service', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('767', 'service_invoice', 'Service Invoice', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('768', 'manage_service_invoice', 'Manage Service Invoice', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('769', 'service_name', 'Service Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('770', 'charge', 'Charge', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('771', 'add', 'Add', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('772', 'previous', 'Previous', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('773', 'net_total', 'Net Total', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('774', 'hanging_over', 'Estimated Time Of Departure', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('775', 'service_discount', 'Service Discount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('776', 'hrm', 'HRM', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('777', 'add_designation', 'Add Designation', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('778', 'manage_designation', 'Manage Designation', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('779', 'add_employee', 'Add Employee', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('780', 'manage_employee', 'Manage Employee', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('781', 'attendance', 'Attendance', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('782', 'add_attendance', 'Add Attendance', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('783', 'manage_attendance', 'Manage Attendance', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('784', 'attendance_report', 'Attendance Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('785', 'payroll', 'Payroll', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('786', 'add_benefits', 'Add Benefits', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('787', 'manage_benefits', 'Manage Benefits', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('788', 'add_salary_setup', 'Add Salary Setup', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('789', 'manage_salary_setup', 'Manage Salary Setup', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('790', 'salary_generate', 'Salary Generate', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('791', 'manage_salary_generate', 'Manage Salary Generate', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('792', 'salary_payment', 'Salary Payment', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('793', 'designation', 'Designation', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('794', 'rate_type', 'Rate Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('795', 'hour_rate_or_salary', 'Hourly Rate/Salary', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('796', 'blood_group', 'Blood Group', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('797', 'address_line_1', 'Address Line 1', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('798', 'address_line_2', 'Address Line 2', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('799', 'picture', 'Picture', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('800', 'country', 'Country', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('801', 'city', 'City', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('802', 'zip', 'Zip code', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('803', 'single_checkin', 'Single Check In', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('804', 'bulk_checkin', 'Bulk Check In', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('805', 'checkin', 'Check In', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('806', 'employee_name', 'Employee Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('807', 'check_in', 'Check In', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('808', 'checkout', 'Check Out', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('809', 'confirm_clock', 'Confirm Clock', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('810', 'stay', 'Stay', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('811', 'download_sample_file', 'Download Sample File', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('812', 'employee', 'Employee', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('813', 'sign_in', 'Check In', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('814', 'sign_out', 'Check  Out', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('815', 'staytime', 'Stay Time', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('816', 'benefits_list', 'Benefit List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('817', 'benefits', 'Benefits', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('818', 'benefit_type', 'Benefit Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('819', 'salary_benefits', 'Salary Benefits', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('820', 'salary_benefits_type', 'Salary Benefits Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('821', 'hourly', 'Hourly', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('822', 'salary', 'Salary', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('823', 'timezone', 'Time Zone', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('824', 'request', 'Request', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('825', 'datewise_report', 'Date Wise Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('826', 'work_hour', 'Work Hours', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('827', 'employee_wise_report', 'Employee Wise Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('828', 'date_in_time_report', 'In Time Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('829', 'successfully_checkout', 'Successfully Checked Out', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('830', 'setup_tax', 'Setup Tax', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('831', 'start_amount', 'Start Amount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('832', 'end_amount', 'End Amount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('833', 'tax_rate', 'Tax Rate', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('834', 'setup', 'Setup', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('835', 'income_tax_updateform', 'Income Tax Update Form', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('836', 'salary_type', 'Salary Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('837', 'addition', 'Addition', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('838', 'gross_salary', 'Gross Salary', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('839', 'set', 'Set', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('840', 'salary_month', 'Salary Month', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('841', 'generate', 'Generate ', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('842', 'total_salary', 'Total Salary', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('843', 'total_working_minutes', 'Total Working Hours', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('844', 'working_period', 'Total Working Days', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('845', 'paid_by', 'Paid By', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('846', 'pay_now', 'Pay Now ?', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('847', 'confirm', 'Confirm', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('848', 'generate_by', 'Generate By', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('849', 'gui_pos', 'GUI POS', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('850', 'add_fixed_assets', 'Add Fixed Assets', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('851', 'fixed_assets_list', 'Fixed Asset List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('852', 'fixed_assets_purchase', 'Purchase Fixed Assets', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('853', 'fixed_assets_purchase_manage', 'Fixed Assets Purchase List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('854', 'fixed_assets', 'Fixed Assets', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('855', 'item_code', 'Item code', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('856', 'item_name', 'Item Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('857', 'opening_assets', 'Assets Qty', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('858', 'edit_fixed_asset', 'Edit Fixed Assets', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('859', 'save_change', 'Save Change', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('860', 'in_word', 'In Word', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('861', 'purchase_pad_print', 'Purchase Pad Print', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('862', 'fixed_assets_purchase_details', 'Fixed Assets Purchase Details', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('863', 'manage_language', 'Manage Language', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('864', 'person_edit', 'Person Edit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('865', 'person_ledger', 'Person Ledger', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('866', 'medicine_name', 'equipment Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('867', 'unit_list', 'Unit List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('868', 'add_unit', 'Add Unit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('869', 'edit_unit', 'Edit Unit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('870', 'unit_name', 'Unit Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('871', 'unit_not_selected', 'Unit did not Selected', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('872', 'supplier', 'Supplier', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('873', 'add_supplier', 'Add Supplier', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('874', 'manage_supplier', 'Manage Supplier', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('875', 'supplier_ledger', 'Supplier Ledger', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('876', 'supplier_sales_details', 'Supplier Sales Details', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('877', 'purchase_detail', 'Purchase details', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('878', 'purchase_information', 'Purchase Information', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('879', 'account_head', 'Account Head', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('880', 'transaction_date', 'Transaction Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('881', 'approved', 'Approve', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('882', 'date_wise_report', 'Date Wise Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('883', 'time_wise_report', 'Time Wise Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('884', 'report_date', 'Report Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('885', 's_time', 'Start Time', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('886', 'e_time', 'End Time', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('887', 'basic', 'Basic', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('888', 'supplier_name', 'Supplier Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('889', 'supplier_mobile', 'Supplier Mobile', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('890', 'supplier_address', 'Supplier Address', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('891', 'supplier_details', 'Supplier Details', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('892', 'select_supplier', 'Select Supplier', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('893', 'accounts_report', 'Accounts Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('894', 'account_code', 'Account Code', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('895', 'human_resource_management', 'Human Resource ', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('896', 'menu_name', 'Menu Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('897', 'head_of_account', 'Account Head', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('898', 'successfully_approved', 'Successfully Approved', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('899', 'supplier_edit', 'Supplier Edit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('900', 'supplier_id', 'Supplier ID', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('901', 'strength', 'Strength', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('902', 'out_of_date', 'Out Of Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('903', 'dis', 'Dis', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('904', 'date_expired_please_choose_another', 'Date Expire Please Choose another', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('905', 'expired', 'Expired', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('906', 'cash_adjustment', 'Cash Adjustment', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('907', 'adjustment_type', 'Adjustment Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('908', 'item_code', 'Item Code', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('909', 'batch_number', 'Batch NO', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('910', 'uom', 'UOM', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('911', 'vat', 'VAT', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('912', 'tin', 'Tin Number', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('913', 'vatt', 'Vat Number', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('914', 'ho', 'House Number', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('915', 'grand_selling', 'Total Grand Amount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('916', 'total_purchase_price', 'Total Purchase Price', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('917', 'grand_profit', 'Grand Profit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('918', 'profit_selling', 'Total Paid Amount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('919', 'paid_profit', 'Paid Profit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('920', 'manufacturer_total', 'Manufacturer Total', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('921', 'total_paid_salary', 'Total Paid Salary', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('922', 'net_grand_and_paid_profit', 'Net Grand and Paid Profit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('923', 'inv_id', 'INV Id', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('924', 'inv_due', 'Invoice Due', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('925', 'detail_pur', 'Detail Purchase', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('926', 'expense_report', 'Expense Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('927', 'expense_detail', 'Expense Details', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('928', 'grand_paid_profit', 'Grand/Paid Profit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('929', 'create_stock', 'Create Stock', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('930', 'manage_report', 'Manage Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('931', 'stock', 'Stock', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('932', 'add_stock', 'Add Stock', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('933', 'stock_name', 'Stock Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('934', 'stock_address', 'Stock Address', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('935', 'assign_users', 'Assign Users', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('936', 'manage_your_stocks', 'Manage Your Stocks', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('937', 'manage_stock', 'Manage Stock', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('938', 'created_at', 'Created At', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('939', 'update_stock', 'Update Stock', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('940', 'select_stock', 'Select Stock', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('941', 'please_select_stock', 'Please select Stock First', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('942', 'make_sure_you_are_selected_stock_and_manufacturer', 'Make Sure You Are Selected Stock and Manufacturer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('943', 'sales_by', 'Sales By', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('944', 'stock_transfer', 'Stock Transfer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('945', 'from_stock', 'From Stock', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('946', 'to_stock', 'To Stock', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('947', 'transfer_quantity', 'Transfer Quantity', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('948', 'stock_transfer_history', 'Stock Transfer History', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('949', 'transfered_product', 'Transfered Product', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('950', 'received_product', 'Received Product', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('951', 'transfer_qty', 'Transfer Qty', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('952', 'service_name', 'Service Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('953', 'created_by', 'Createad By', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('954', 'candidate', 'Candidate', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('955', 'add_candidate', 'Add Candidate', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('956', 'manage_candidate', 'Manage Candidates', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('957', 'add_company', 'Add Company', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('958', 'add_employer', 'Add Employer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('959', 'manage_employer', 'Manage Employers', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('960', 'employer', 'Employer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('961', 'manage_educational_level', 'Manage Education Levels', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('962', 'add_educational_level', 'Add Education Level', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('963', 'educational_level', 'Education Levels', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('964', 'field_of_study', 'Fields of Study', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('965', 'add_field_of_study', 'Add Field of Study', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('966', 'manage_field_of_study', 'manage_fields_of_study', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('967', 'zone', 'Zone', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('968', 'add_zone', 'Add Zone', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('969', 'manage_zone', 'Manage Zones', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('970', 'job', 'Jobs', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('971', 'add_job', 'Add Jobs', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('972', 'manage_job', 'Manage Jobs', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('973', 'add_new_zone', 'Add New Zone', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('974', 'zone_name', 'Zone Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('975', 'zone_id', 'Zone Id', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('976', 'edit_zone', 'Edit Zone', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('977', 'update_zone', 'Update Zone', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('978', 'edit_field_of_study', 'Edit Field of Study', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('979', 'phone_number', 'Phone Number', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('980', 'edit_employer', 'Edit Employer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('981', 'full_name', 'Full Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('982', 'sex', 'Sex', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('983', 'age', 'Age', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('985', 'location', 'Location', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('986', 'gpa', 'GPA', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('987', 'total_experience', 'Total Experience', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('988', 'resume', 'Resume', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('989', 'add_new_candidate', 'Add New Candidate', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('990', 'edit_candidate', 'Edit Candidate', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('991', 'update_candidate_information', 'Update Candidate Information', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('992', 'download_current_resume', 'Download Current Resume', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('993', 'add_job', 'Add Job', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('994', 'total_employer', 'Total Employer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('995', 'total_candidate', 'Total Candidate', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('996', 'total_shortlisted', 'Total Shortlisted', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('997', 'total_interviewed', 'Total Interviewed', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('998', 'total_hired', 'Total Hired', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('999', 'total_rejected', 'Total Rejected', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('1000', 'edit_job', 'Edit Job', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('1001', 'matched_candidates', 'Matched Candidets', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('1002', 'shortlisted_report', 'Shortlisted Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('1003', 'interviewed_report', 'Interviewed Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('1004', 'hired_report', 'Hired Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('1005', 'rejected_report', 'Rejected Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('1006', 'show_shortlisted_report', 'Show Shortlisted Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('1007', 'sno', 'SNO', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('1008', 'company_id', 'Company Id', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('1009', 'total_jobs_posted', 'Total Job Posted', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('1010', 'shortlisted_products_report', 'Shortlisted Products Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('1011', 'shortlisted_candidate_detail', 'shortlisted candidate detail', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('1012', 'interviewed_report', 'Interviewed Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('1013', 'show_hired_report', 'Show Hired Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('1014', 'show_rejected_report', 'Show Rejected Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('1015', 'sector', 'Industry/Sector', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('1016', 'no_emp', 'Number Employees', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('1017', 'company_size', 'Company Size', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('1018', 'operation_since', 'Year Operation Since', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('1019', 'description_services_products', 'Description Services Products', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('1020', 'mission_vision_statement', 'Mission Vision Statement', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('1021', 'website', 'Website', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('1022', 'add_banner', 'Add Banner', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('1023', 'banners', 'Banners', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('1024', 'manage_banners', 'Manage Banners', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('1025', 'about_us', 'About Us', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('1026', 'manage_about_us', 'Manage About Us', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('1027', 'services', 'Services', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('1028', 'add_services', 'Add service', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('1029', 'manage_services', 'Manage Services', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('1030', 'why_choose_us', 'Why Choose Us', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('1031', 'add_feature', 'Add Feature', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('1032', 'manage_features', 'Manage Features', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('1033', 'team_members', 'Team Members', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('1034', 'add_member', 'Add Member', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('1035', 'manage_members', 'Manage Members', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('1036', 'research_and_evaluation', 'Research and Evaluation', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('1037', 'add_research', 'Add Research', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('1038', 'manage_research', 'Manage Research', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('1039', 'experience', 'Experience', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('1040', 'add_experience', 'Add Experience', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('1041', 'manage_experience', 'Manage Experience', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('1042', 'contact_info', 'Contact Info', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('1043', 'manage_contact', 'Manage contact', NULL);


#
# TABLE STRUCTURE FOR: manufacturer_information
#

DROP TABLE IF EXISTS `manufacturer_information`;

CREATE TABLE `manufacturer_information` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `manufacturer_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `details` varchar(255) NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO `manufacturer_information` (`manufacturer_id`, `manufacturer_name`, `address`, `mobile`, `details`, `status`) VALUES ('6', 'import plc', '', '', '', '1');
INSERT INTO `manufacturer_information` (`manufacturer_id`, `manufacturer_name`, `address`, `mobile`, `details`, `status`) VALUES ('7', 'adiss plc', '', '', '', '1');


#
# TABLE STRUCTURE FOR: manufacturer_ledger
#

DROP TABLE IF EXISTS `manufacturer_ledger`;

CREATE TABLE `manufacturer_ledger` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(100) NOT NULL,
  `stock_id` int(11) NOT NULL,
  `manufacturer_id` bigint(20) NOT NULL,
  `chalan_no` varchar(100) DEFAULT NULL,
  `deposit_no` varchar(50) DEFAULT NULL,
  `amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `description` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `cheque_no` varchar(255) NOT NULL,
  `date` varchar(50) NOT NULL,
  `status` int(2) NOT NULL,
  `d_c` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `receipt_no` (`deposit_no`),
  KEY `receipt_no_2` (`deposit_no`),
  KEY `receipt_no_3` (`deposit_no`),
  KEY `receipt_no_4` (`deposit_no`)
) ENGINE=MyISAM AUTO_INCREMENT=225 DEFAULT CHARSET=utf8;

INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `stock_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('206', '20251026051426', '81', '7', '6070', NULL, '10000.00', 'Purchase From Manufacturer. ', '', '', '2025-10-26', '1', 'c');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `stock_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('207', '20251026051426', '81', '7', '6070', NULL, '10000.00', 'Purchase From Manufacturer. ', '', '', '2025-10-26', '1', 'd');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `stock_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('208', '20251026053242', '81', '6', '9090', NULL, '60000.00', 'Purchase From Manufacturer. ', '', '', '2025-10-26', '1', 'c');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `stock_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('209', '20251026053242', '81', '6', '9090', NULL, '60000.00', 'Purchase From Manufacturer. ', '', '', '2025-10-26', '1', 'd');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `stock_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('210', '20251026053725', '81', '6', '656', NULL, '400.00', 'Purchase From Manufacturer. ', '', '', '2025-10-26', '1', 'c');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `stock_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('211', '20251026054211', '81', '7', '8989', NULL, '10000.00', 'Purchase From Manufacturer. ', '', '', '2025-10-26', '1', 'c');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `stock_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('212', '20251026054211', '81', '7', '8989', NULL, '10000.00', 'Purchase From Manufacturer. ', '', '', '2025-10-26', '1', 'd');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `stock_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('213', '20251027103453', '81', '6', '1221', NULL, '10000.00', 'Purchase From Manufacturer. ', '', '', '2025-10-27', '1', 'c');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `stock_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('214', '20251027103453', '81', '6', '1221', NULL, '10000.00', 'Purchase From Manufacturer. ', '', '', '2025-10-27', '1', 'd');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `stock_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('215', '20251028041725', '81', '6', '9990', NULL, '2000.00', 'Purchase From Manufacturer. ', '', '', '2025-10-28', '1', 'c');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `stock_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('216', '20251028041725', '81', '6', '9990', NULL, '2000.00', 'Purchase From Manufacturer. ', '', '', '2025-10-28', '1', 'd');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `stock_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('217', '20251028074746', '81', '6', '343', NULL, '0.00', 'Purchase From Manufacturer. ', '', '', '2025-10-28', '1', 'c');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `stock_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('218', '20251028074746', '81', '6', '343', NULL, '0.00', 'Purchase From Manufacturer. ', '', '', '2025-10-28', '1', 'd');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `stock_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('219', '20251028090422', '82', '6', '888', NULL, '1000.00', 'Purchase From Manufacturer. ', '', '', '2025-10-28', '1', 'c');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `stock_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('220', '20251028090422', '82', '6', '888', NULL, '1000.00', 'Purchase From Manufacturer. ', '', '', '2025-10-28', '1', 'd');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `stock_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('221', '20251028090510', '82', '6', '8884', NULL, '4000.00', 'Purchase From Manufacturer. ', '', '', '2025-10-28', '1', 'c');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `stock_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('222', '20251028090510', '82', '6', '8884', NULL, '4000.00', 'Purchase From Manufacturer. ', '', '', '2025-10-28', '1', 'd');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `stock_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('223', '20251028132927', '81', '6', '558', NULL, '1200.00', 'Purchase From Manufacturer. ', '', '', '2025-10-28', '1', 'c');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `stock_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('224', '20251028132927', '81', '6', '558', NULL, '1200.00', 'Purchase From Manufacturer. ', '', '', '2025-10-28', '1', 'd');


#
# TABLE STRUCTURE FOR: module
#

DROP TABLE IF EXISTS `module`;

CREATE TABLE `module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` text,
  `image` varchar(255) NOT NULL,
  `directory` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES ('16', 'Settings', '', '', 'settings', '1');
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES ('17', 'Jobs', NULL, '', 'jobs', '1');
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES ('18', 'candidate', NULL, '', 'candidate', '1');
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES ('19', 'Employer', NULL, '', 'employer', '1');
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES ('20', 'Educational Level', NULL, '', 'educational_level', '1');
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES ('21', 'Fields of Study', NULL, '', 'field_of_study', '1');
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES ('22', 'zones', NULL, '', 'zones', '1');
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES ('23', 'Report', NULL, '', 'report', '1');


#
# TABLE STRUCTURE FOR: payroll_tax_setup
#

DROP TABLE IF EXISTS `payroll_tax_setup`;

CREATE TABLE `payroll_tax_setup` (
  `tax_setup_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `start_amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `end_amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `rate` decimal(12,2) NOT NULL DEFAULT '0.00',
  `status` varchar(30) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`tax_setup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: person_information
#

DROP TABLE IF EXISTS `person_information`;

CREATE TABLE `person_information` (
  `person_id` varchar(50) NOT NULL,
  `person_name` varchar(50) NOT NULL,
  `person_phone` varchar(50) NOT NULL,
  `person_address` text NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: person_ledger
#

DROP TABLE IF EXISTS `person_ledger`;

CREATE TABLE `person_ledger` (
  `transaction_id` varchar(50) NOT NULL,
  `person_id` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `debit` decimal(12,2) NOT NULL DEFAULT '0.00',
  `credit` decimal(10,2) NOT NULL DEFAULT '0.00',
  `details` text NOT NULL,
  `status` int(11) NOT NULL COMMENT '1=no paid,2=paid',
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: personal_loan
#

DROP TABLE IF EXISTS `personal_loan`;

CREATE TABLE `personal_loan` (
  `per_loan_id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(30) NOT NULL,
  `person_id` varchar(30) NOT NULL,
  `debit` varchar(20) NOT NULL,
  `credit` float NOT NULL,
  `date` varchar(30) NOT NULL,
  `details` varchar(100) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1=no paid,2=paid',
  PRIMARY KEY (`per_loan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: pesonal_loan_information
#

DROP TABLE IF EXISTS `pesonal_loan_information`;

CREATE TABLE `pesonal_loan_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` varchar(50) NOT NULL,
  `person_name` varchar(50) NOT NULL,
  `person_phone` varchar(30) NOT NULL,
  `person_address` text NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: product_category
#

DROP TABLE IF EXISTS `product_category`;

CREATE TABLE `product_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('1', 'RDT', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('2', 'Lab Equipment\'s ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('3', 'Chemistry Reagent ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('4', 'Medication ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('5', 'CBC Diluent ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('6', 'Finecare Reagent ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('7', 'Centrifuge Machine ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('8', 'Maglumi Reagent ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('9', 'Lyse ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('10', 'Probe Cleanser ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('11', 'Tubes', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('12', 'Glucose Strip', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('13', 'Glove ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('14', 'Plaster ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('15', 'Microscope ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('16', 'Serology Test ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('17', 'Lancet ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('18', 'Surgical blood ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('19', 'Slides ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('20', 'IV Set', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('21', 'IV Cannula ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('22', 'Wooden Stick ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('23', 'Chemicals', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('24', 'Instrument ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('25', 'Tips', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('26', 'Ultrasound Jell', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('27', 'Cotton ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('28', 'Safety Box', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('29', 'Cut Gut ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('30', 'Gauze ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('31', 'CUP', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('32', 'FBD', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('33', 'Mask', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('34', 'Vida Lab Reagent', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('35', 'Blood Group ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('36', 'Grand Water ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('37', 'Oil  Immersion ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('38', 'Fluid ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('39', 'Micro Bids', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('40', 'Veda Lab ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('41', 'CBC Machine ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('42', 'Electrolyte ', '1');


#
# TABLE STRUCTURE FOR: product_information
#

DROP TABLE IF EXISTS `product_information`;

CREATE TABLE `product_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` varchar(30) NOT NULL,
  `category_id` varchar(50) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `generic_name` varchar(250) NOT NULL,
  `strength` varchar(250) NOT NULL,
  `box_size` varchar(30) NOT NULL,
  `product_location` varchar(50) NOT NULL,
  `price` varchar(20) NOT NULL,
  `tax` varchar(20) DEFAULT NULL,
  `product_model` varchar(50) DEFAULT NULL,
  `manufacturer_id` bigint(20) NOT NULL,
  `manufacturer_price` decimal(10,2) DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `product_details` varchar(250) DEFAULT NULL,
  `image` text NOT NULL,
  `status` int(11) NOT NULL,
  `tax0` text,
  `tax1` text,
  `tax2` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=latin1;

INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('125', '26595527', '', 'computer', 'c', '', '', '', '1000', '0', 'RDT', '7', '500.00', 'PCS', '', 'http://localhost/sheba_international/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('126', '44497568', '0', 'printer', 'p', 's', '1', '', '2000', '0', 'RDT', '6', '1000.00', 'Pcs', '', 'http://localhost/sheba_international/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('127', '28455766', '', 'Credit Customer', 'C', '', '', '', '0', '0', 'Finecare', '6', '0.00', 'PCS', '', 'http://localhost/sheba_international/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('128', '89734557', '', 'book', 'b', '', '', '', '300', '0', 'Finecare', '6', '100.00', 'PCS', '', 'http://localhost/sheba_international/my-assets/image/product.png', '1', '0', '0', '0');


#
# TABLE STRUCTURE FOR: product_purchase
#

DROP TABLE IF EXISTS `product_purchase`;

CREATE TABLE `product_purchase` (
  `chalan_no` varchar(100) NOT NULL,
  `manufacturer_id` varchar(100) NOT NULL,
  `stock_id` int(11) NOT NULL,
  `grand_total_amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `total_discount` decimal(10,2) DEFAULT '0.00',
  `purchase_date` varchar(50) NOT NULL,
  `purchase_details` text NOT NULL,
  `status` int(2) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_id` varchar(30) NOT NULL,
  `bank_id` varchar(30) DEFAULT NULL,
  `payment_type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

INSERT INTO `product_purchase` (`chalan_no`, `manufacturer_id`, `stock_id`, `grand_total_amount`, `total_discount`, `purchase_date`, `purchase_details`, `status`, `id`, `purchase_id`, `bank_id`, `payment_type`) VALUES ('1221', '6', '81', '10000.00', NULL, '2025-10-27', '', '1', '80', '20251027103453', '', '1');
INSERT INTO `product_purchase` (`chalan_no`, `manufacturer_id`, `stock_id`, `grand_total_amount`, `total_discount`, `purchase_date`, `purchase_details`, `status`, `id`, `purchase_id`, `bank_id`, `payment_type`) VALUES ('9990', '6', '81', '1700.00', NULL, '2025-10-28', '', '1', '81', '20251028041725', '', '1');
INSERT INTO `product_purchase` (`chalan_no`, `manufacturer_id`, `stock_id`, `grand_total_amount`, `total_discount`, `purchase_date`, `purchase_details`, `status`, `id`, `purchase_id`, `bank_id`, `payment_type`) VALUES ('9991', '6', '82', '300.00', NULL, '2025-10-28', '1', '1', '82', '20251028041726', '', '1');
INSERT INTO `product_purchase` (`chalan_no`, `manufacturer_id`, `stock_id`, `grand_total_amount`, `total_discount`, `purchase_date`, `purchase_details`, `status`, `id`, `purchase_id`, `bank_id`, `payment_type`) VALUES ('343', '6', '81', '0.00', NULL, '2025-10-28', '', '1', '83', '20251028074746', '', '1');
INSERT INTO `product_purchase` (`chalan_no`, `manufacturer_id`, `stock_id`, `grand_total_amount`, `total_discount`, `purchase_date`, `purchase_details`, `status`, `id`, `purchase_id`, `bank_id`, `payment_type`) VALUES ('888', '6', '82', '800.00', NULL, '2025-10-28', '', '1', '84', '20251028090422', '', '1');
INSERT INTO `product_purchase` (`chalan_no`, `manufacturer_id`, `stock_id`, `grand_total_amount`, `total_discount`, `purchase_date`, `purchase_details`, `status`, `id`, `purchase_id`, `bank_id`, `payment_type`) VALUES ('8884', '6', '82', '4000.00', NULL, '2025-10-28', '', '1', '85', '20251028090510', '', '1');
INSERT INTO `product_purchase` (`chalan_no`, `manufacturer_id`, `stock_id`, `grand_total_amount`, `total_discount`, `purchase_date`, `purchase_details`, `status`, `id`, `purchase_id`, `bank_id`, `payment_type`) VALUES ('9992', '6', '81', '200.00', NULL, '2025-10-28', '1', '1', '86', '20251028090511', '', '1');
INSERT INTO `product_purchase` (`chalan_no`, `manufacturer_id`, `stock_id`, `grand_total_amount`, `total_discount`, `purchase_date`, `purchase_details`, `status`, `id`, `purchase_id`, `bank_id`, `payment_type`) VALUES ('558', '6', '81', '1200.00', NULL, '2025-10-28', '', '1', '87', '20251028132927', '', '1');


#
# TABLE STRUCTURE FOR: product_purchase_details
#

DROP TABLE IF EXISTS `product_purchase_details`;

CREATE TABLE `product_purchase_details` (
  `purchase_detail_id` varchar(100) NOT NULL,
  `purchase_id` varchar(100) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `quantity` decimal(12,2) NOT NULL DEFAULT '0.00',
  `rate` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `sell_price` decimal(10,0) NOT NULL,
  `discount` decimal(10,2) DEFAULT '0.00',
  `batch_id` varchar(25) NOT NULL,
  `expeire_date` varchar(30) NOT NULL,
  `status` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` varchar(300) NOT NULL,
  `stock_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=275 DEFAULT CHARSET=utf8;

INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`, `stock_id`) VALUES ('XYUFJjY5KOSiUuF', '20251027103453', '26595527', '20.00', '500.00', '10000.00', '600', NULL, '1212', '2075-01-01', '1', '267', 'INV01', '81');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`, `stock_id`) VALUES ('EOjxxJlyZe5nhmR', '20251028041725', '26595527', '17.00', '100.00', '1700.00', '500', NULL, '1', '2075-01-01', '1', '268', 'INV02', '81');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`, `stock_id`) VALUES ('6900366966a25', '20251028041726', '26595527', '3.00', '100.00', '300.00', '500', NULL, '1', '2075-01-01', '1', '269', 'INV03', '82');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`, `stock_id`) VALUES ('SAM3l5r5FSPKEUW', '20251028074746', '28455766', '20.00', '0.00', '0.00', '0', NULL, '1', '2075-01-01', '1', '270', 'INV04', '81');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`, `stock_id`) VALUES ('ZcyFDEfGs41fTSN', '20251028090422', '89734557', '8.00', '100.00', '800.00', '500', NULL, '1', '2075-01-01', '1', '271', 'INV05', '82');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`, `stock_id`) VALUES ('eYRctd71r0Cps5I', '20251028090510', '26595527', '20.00', '200.00', '4000.00', '800', NULL, '1', '2025-10-30', '1', '272', 'INV06', '82');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`, `stock_id`) VALUES ('6900b5957b841', '20251028090511', '89734557', '2.00', '100.00', '200.00', '500', NULL, '1', '2075-01-01', '1', '273', 'INV07', '81');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`, `stock_id`) VALUES ('Kez18QR5xhDdEOA', '20251028132927', '89734557', '12.00', '100.00', '1200.00', '500', NULL, '1', '2075-01-01', '1', '274', 'INV08', '81');


#
# TABLE STRUCTURE FOR: product_return
#

DROP TABLE IF EXISTS `product_return`;

CREATE TABLE `product_return` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` varchar(30) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  `invoice_id` varchar(20) NOT NULL,
  `purchase_id` varchar(30) DEFAULT NULL,
  `date_purchase` varchar(20) NOT NULL,
  `date_return` varchar(30) NOT NULL,
  `byy_qty` decimal(12,2) NOT NULL DEFAULT '0.00',
  `ret_qty` decimal(10,2) NOT NULL DEFAULT '0.00',
  `customer_id` varchar(20) NOT NULL,
  `manufacturer_id` varchar(30) NOT NULL,
  `product_rate` decimal(12,2) NOT NULL DEFAULT '0.00',
  `deduction` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_deduct` decimal(12,2) NOT NULL DEFAULT '0.00',
  `total_tax` decimal(12,2) NOT NULL DEFAULT '0.00',
  `total_ret_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `net_total_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `reason` text NOT NULL,
  `usablity` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO `product_return` (`id`, `return_id`, `product_id`, `invoice_id`, `purchase_id`, `date_purchase`, `date_return`, `byy_qty`, `ret_qty`, `customer_id`, `manufacturer_id`, `product_rate`, `deduction`, `total_deduct`, `total_tax`, `total_ret_amount`, `net_total_amount`, `reason`, `usablity`) VALUES ('1', '174993454439391', '26595527', '6614595147', NULL, '2025-10-26', '2025-10-26', '2.00', '2.00', '19', '', '600.00', '0.00', '0.00', '0.00', '1200.00', '1200.00', '', '1');


#
# TABLE STRUCTURE FOR: product_service
#

DROP TABLE IF EXISTS `product_service`;

CREATE TABLE `product_service` (
  `service_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `charge` decimal(10,2) NOT NULL DEFAULT '0.00',
  `tax0` text,
  `tax1` text,
  `tax2` text,
  PRIMARY KEY (`service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `product_service` (`service_id`, `service_name`, `description`, `charge`, `tax0`, `tax1`, `tax2`) VALUES ('1', 'YEARLY SERVICE ', '', '1000.00', '0', '0', '0');
INSERT INTO `product_service` (`service_id`, `service_name`, `description`, `charge`, `tax0`, `tax1`, `tax2`) VALUES ('2', 'lab ma', '', '1000.00', '0', '0', '0');
INSERT INTO `product_service` (`service_id`, `service_name`, `description`, `charge`, `tax0`, `tax1`, `tax2`) VALUES ('3', 'maintenacw', '', '200.00', '0', '0', '0');
INSERT INTO `product_service` (`service_id`, `service_name`, `description`, `charge`, `tax0`, `tax1`, `tax2`) VALUES ('4', 'credit Customer', '', '0.00', '0', '0', '0');


#
# TABLE STRUCTURE FOR: product_type
#

DROP TABLE IF EXISTS `product_type`;

CREATE TABLE `product_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` varchar(255) DEFAULT NULL,
  `type_name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

INSERT INTO `product_type` (`id`, `type_id`, `type_name`, `status`) VALUES ('1', 'ND1OKNBTD1516Q2', 'Finecare', '1');
INSERT INTO `product_type` (`id`, `type_id`, `type_name`, `status`) VALUES ('2', 'E7YEL8AUGSLEAHO', 'RDT', '1');
INSERT INTO `product_type` (`id`, `type_id`, `type_name`, `status`) VALUES ('3', 'OVNVU3NP73YPN1S', 'Syringe ', '1');
INSERT INTO `product_type` (`id`, `type_id`, `type_name`, `status`) VALUES ('4', 'QH7KJKMMET1GPH9', 'Chemical ', '1');
INSERT INTO `product_type` (`id`, `type_id`, `type_name`, `status`) VALUES ('5', '8T9JDTETVIKP93V', 'Tube', '1');
INSERT INTO `product_type` (`id`, `type_id`, `type_name`, `status`) VALUES ('6', '1ZQBIM2NEO6JFB9', 'Medication ', '1');
INSERT INTO `product_type` (`id`, `type_id`, `type_name`, `status`) VALUES ('7', '1K49F7OOLF8VPNG', 'Cotton', '1');
INSERT INTO `product_type` (`id`, `type_id`, `type_name`, `status`) VALUES ('8', 'N4EVJMZ5SOGS1MJ', 'Glove ', '1');
INSERT INTO `product_type` (`id`, `type_id`, `type_name`, `status`) VALUES ('9', 'E8RXIVSMR8E4O2W', 'CBC  Diluent ', '1');
INSERT INTO `product_type` (`id`, `type_id`, `type_name`, `status`) VALUES ('10', 'RW6BG7EZS22VGH6', 'Serology Test ', '1');
INSERT INTO `product_type` (`id`, `type_id`, `type_name`, `status`) VALUES ('11', 'NHMSBZWVW9SIW76', 'Instrument ', '1');
INSERT INTO `product_type` (`id`, `type_id`, `type_name`, `status`) VALUES ('12', 'LJW65QVSH1M1VN7', 'Plaster ', '1');
INSERT INTO `product_type` (`id`, `type_id`, `type_name`, `status`) VALUES ('13', 'LSJXCEKT536X4AY', 'Gauze ', '1');
INSERT INTO `product_type` (`id`, `type_id`, `type_name`, `status`) VALUES ('14', '88QPFCN5CZ3WYLC', 'Tips', '1');
INSERT INTO `product_type` (`id`, `type_id`, `type_name`, `status`) VALUES ('15', 'BK228SMYXPFUD2E', 'Set ', '1');
INSERT INTO `product_type` (`id`, `type_id`, `type_name`, `status`) VALUES ('16', '9IQD4WJ2P2EQSVJ', 'IV Cannula ', '1');
INSERT INTO `product_type` (`id`, `type_id`, `type_name`, `status`) VALUES ('17', 'RB7SEKJO1AK5Y4I', 'Glucose Strip', '1');
INSERT INTO `product_type` (`id`, `type_id`, `type_name`, `status`) VALUES ('18', 'CXN4RU3K6F7BGLM', 'Materials', '1');


#
# TABLE STRUCTURE FOR: role_permission
#

DROP TABLE IF EXISTS `role_permission`;

CREATE TABLE `role_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_module_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `create` tinyint(1) DEFAULT NULL,
  `read` tinyint(1) DEFAULT NULL,
  `update` tinyint(1) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_module_id` (`fk_module_id`),
  KEY `fk_user_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2248 DEFAULT CHARSET=utf8;

INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1783', '1', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1784', '2', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1785', '3', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1786', '4', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1787', '27', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1788', '28', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1789', '29', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1790', '30', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1791', '22', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1792', '23', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1793', '24', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1794', '25', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1795', '26', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1796', '105', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1797', '106', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1798', '31', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1799', '32', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1800', '33', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1801', '34', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1802', '35', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1803', '36', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1804', '77', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1805', '80', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1806', '114', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1807', '115', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1808', '116', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1809', '117', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1810', '60', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1811', '61', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1812', '62', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1813', '63', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1814', '81', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1815', '82', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1816', '83', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1817', '84', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1818', '85', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1819', '111', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1820', '112', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1821', '5', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1822', '6', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1823', '7', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1824', '8', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1825', '9', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1826', '10', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1827', '11', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1828', '12', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1829', '13', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1830', '14', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1831', '15', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1832', '16', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1833', '17', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1834', '18', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1835', '19', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1836', '20', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1837', '21', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1838', '110', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1839', '86', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1840', '87', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1841', '88', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1842', '72', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1843', '73', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1844', '74', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1845', '75', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1846', '76', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1847', '37', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1848', '38', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1849', '39', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1850', '40', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1851', '41', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1852', '42', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1853', '43', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1854', '44', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1855', '45', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1856', '46', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1857', '47', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1858', '48', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1859', '49', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1860', '50', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1861', '51', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1862', '52', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1863', '53', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1864', '54', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1865', '55', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1866', '56', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1867', '57', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1868', '58', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1869', '89', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1870', '90', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1871', '91', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1872', '92', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1873', '93', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1874', '94', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1875', '113', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1876', '107', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1877', '108', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1878', '109', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1879', '68', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1880', '69', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1881', '70', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1882', '71', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1883', '64', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1884', '65', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1885', '66', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1886', '67', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1887', '59', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1888', '95', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1889', '96', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1890', '97', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1891', '98', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1892', '99', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1893', '100', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1894', '101', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1895', '102', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1896', '103', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1897', '104', '6', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('2223', '95', '7', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('2224', '96', '7', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('2225', '97', '7', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('2226', '98', '7', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('2227', '99', '7', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('2228', '100', '7', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('2229', '101', '7', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('2230', '102', '7', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('2231', '118', '7', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('2232', '119', '7', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('2233', '122', '7', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('2234', '123', '7', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('2235', '140', '7', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('2236', '126', '7', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('2237', '127', '7', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('2238', '130', '7', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('2239', '131', '7', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('2240', '132', '7', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('2241', '133', '7', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('2242', '134', '7', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('2243', '135', '7', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('2244', '136', '7', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('2245', '137', '7', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('2246', '138', '7', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('2247', '139', '7', '0', '0', '0', '0');


#
# TABLE STRUCTURE FOR: salary_sheet_generate
#

DROP TABLE IF EXISTS `salary_sheet_generate`;

CREATE TABLE `salary_sheet_generate` (
  `ssg_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `stock_id` int(11) NOT NULL,
  `name` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `gdate` varchar(30) DEFAULT NULL,
  `start_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `end_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `generate_by` varchar(30) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`ssg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO `salary_sheet_generate` (`ssg_id`, `stock_id`, `name`, `gdate`, `start_date`, `end_date`, `generate_by`) VALUES ('1', '0', NULL, 'October 2025', '2025-10-1', '2025-10-31', 'T - Stock');
INSERT INTO `salary_sheet_generate` (`ssg_id`, `stock_id`, `name`, `gdate`, `start_date`, `end_date`, `generate_by`) VALUES ('2', '0', NULL, 'September 2025', '2025-9-1', '2025-9-30', 'T - Stock');
INSERT INTO `salary_sheet_generate` (`ssg_id`, `stock_id`, `name`, `gdate`, `start_date`, `end_date`, `generate_by`) VALUES ('3', '2', NULL, 'October 2025', '2025-10-1', '2025-10-31', 'T - Stock');
INSERT INTO `salary_sheet_generate` (`ssg_id`, `stock_id`, `name`, `gdate`, `start_date`, `end_date`, `generate_by`) VALUES ('4', '6', NULL, 'October 2025', '2025-10-1', '2025-10-31', 'Ttt alazer');
INSERT INTO `salary_sheet_generate` (`ssg_id`, `stock_id`, `name`, `gdate`, `start_date`, `end_date`, `generate_by`) VALUES ('6', '82', NULL, 'October 2025', '2025-10-1', '2025-10-31', 'Tesfahun Kalayou');
INSERT INTO `salary_sheet_generate` (`ssg_id`, `stock_id`, `name`, `gdate`, `start_date`, `end_date`, `generate_by`) VALUES ('7', '81', NULL, 'October 2025', '2025-10-1', '2025-10-31', 'Millaw alazer');
INSERT INTO `salary_sheet_generate` (`ssg_id`, `stock_id`, `name`, `gdate`, `start_date`, `end_date`, `generate_by`) VALUES ('8', '82', NULL, 'September 2025', '2025-9-1', '2025-9-30', 'Tesfahun Kalayou');


#
# TABLE STRUCTURE FOR: salary_type
#

DROP TABLE IF EXISTS `salary_type`;

CREATE TABLE `salary_type` (
  `salary_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `sal_name` varchar(100) NOT NULL,
  `salary_type` varchar(50) NOT NULL,
  `status` varchar(30) NOT NULL,
  PRIMARY KEY (`salary_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: sec_role
#

DROP TABLE IF EXISTS `sec_role`;

CREATE TABLE `sec_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO `sec_role` (`id`, `type`) VALUES ('6', 'admin');
INSERT INTO `sec_role` (`id`, `type`) VALUES ('7', 'data_clerk');


#
# TABLE STRUCTURE FOR: sec_userrole
#

DROP TABLE IF EXISTS `sec_userrole`;

CREATE TABLE `sec_userrole` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `roleid` int(11) NOT NULL,
  `createby` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `createdate` datetime DEFAULT NULL,
  UNIQUE KEY `ID` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `sec_userrole` (`id`, `user_id`, `roleid`, `createby`, `createdate`) VALUES ('1', '3', '1', '1', '2025-08-19 10:51:18');
INSERT INTO `sec_userrole` (`id`, `user_id`, `roleid`, `createby`, `createdate`) VALUES ('2', '5', '2', '1', '2025-08-25 06:00:46');
INSERT INTO `sec_userrole` (`id`, `user_id`, `roleid`, `createby`, `createdate`) VALUES ('3', '4', '3', '1', '2025-08-25 06:00:52');
INSERT INTO `sec_userrole` (`id`, `user_id`, `roleid`, `createby`, `createdate`) VALUES ('4', '6', '7', '1', '2025-12-18 02:27:15');


#
# TABLE STRUCTURE FOR: service_invoice
#

DROP TABLE IF EXISTS `service_invoice`;

CREATE TABLE `service_invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_no` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `employee_id` varchar(50) NOT NULL,
  `customer_id` varchar(30) NOT NULL,
  `total_amount` decimal(20,2) NOT NULL DEFAULT '0.00',
  `total_discount` decimal(20,2) NOT NULL DEFAULT '0.00',
  `invoice_discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_tax` decimal(10,2) NOT NULL DEFAULT '0.00',
  `paid_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `due_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `shipping_cost` decimal(10,2) NOT NULL DEFAULT '0.00',
  `previous` decimal(10,2) NOT NULL DEFAULT '0.00',
  `details` varchar(250) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO `service_invoice` (`id`, `voucher_no`, `date`, `employee_id`, `customer_id`, `total_amount`, `total_discount`, `invoice_discount`, `total_tax`, `paid_amount`, `due_amount`, `shipping_cost`, `previous`, `details`, `user_id`) VALUES ('8', 'serv-20251029035034', '2025-10-29', '1', '26', '2000.00', '0.00', '0.00', '0.00', '2000.00', '1200.00', '0.00', '1200.00', 'Service Invoice', '0');


#
# TABLE STRUCTURE FOR: service_invoice_details
#

DROP TABLE IF EXISTS `service_invoice_details`;

CREATE TABLE `service_invoice_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NOT NULL,
  `service_inv_id` varchar(30) NOT NULL,
  `qty` decimal(10,2) NOT NULL DEFAULT '0.00',
  `charge` decimal(10,2) NOT NULL DEFAULT '0.00',
  `discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;

INSERT INTO `service_invoice_details` (`id`, `service_id`, `service_inv_id`, `qty`, `charge`, `discount`, `discount_amount`, `total`) VALUES ('103', '1', 'serv-20251029035034', '2.00', '1000.00', '0.00', '0.00', '2000.00');


#
# TABLE STRUCTURE FOR: sms_settings
#

DROP TABLE IF EXISTS `sms_settings`;

CREATE TABLE `sms_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(100) NOT NULL,
  `sender_id` varchar(100) NOT NULL,
  `api_key` varchar(100) NOT NULL,
  `isinvoice` int(11) NOT NULL DEFAULT '0',
  `ispurchase` int(11) NOT NULL DEFAULT '0',
  `isservice` int(11) NOT NULL DEFAULT '0',
  `ispayment` int(11) NOT NULL DEFAULT '0',
  `isreceive` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `sms_settings` (`id`, `url`, `sender_id`, `api_key`, `isinvoice`, `ispurchase`, `isservice`, `ispayment`, `isreceive`) VALUES ('1', 'http://sms.demo.com/smsapi', '88018471369884', 'C20029865c42c504afc7113.77492546', '0', '0', '0', '0', '0');


#
# TABLE STRUCTURE FOR: stock
#

DROP TABLE IF EXISTS `stock`;

CREATE TABLE `stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_name` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `assign_users` text,
  `created_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=latin1;

INSERT INTO `stock` (`id`, `stock_name`, `address`, `assign_users`, `created_at`) VALUES ('81', 'Maichew branch', 'maichew', '[\"1\"]', '2025-10-28');
INSERT INTO `stock` (`id`, `stock_name`, `address`, `assign_users`, `created_at`) VALUES ('82', 'Mekelle branch', 'mekelle ', '[\"4\"]', '2025-10-28');


#
# TABLE STRUCTURE FOR: stock_fixed_asset
#

DROP TABLE IF EXISTS `stock_fixed_asset`;

CREATE TABLE `stock_fixed_asset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_id` int(11) NOT NULL,
  `item_code` varchar(50) NOT NULL,
  `qty` float NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO `stock_fixed_asset` (`id`, `purchase_id`, `item_code`, `qty`, `price`) VALUES ('1', '1', '505050', '200', '300');
INSERT INTO `stock_fixed_asset` (`id`, `purchase_id`, `item_code`, `qty`, `price`) VALUES ('2', '1', '111', '1', '400');
INSERT INTO `stock_fixed_asset` (`id`, `purchase_id`, `item_code`, `qty`, `price`) VALUES ('3', '2', '111', '2', '300');
INSERT INTO `stock_fixed_asset` (`id`, `purchase_id`, `item_code`, `qty`, `price`) VALUES ('4', '3', '111', '122', '300');
INSERT INTO `stock_fixed_asset` (`id`, `purchase_id`, `item_code`, `qty`, `price`) VALUES ('5', '4', '111', '8', '300');


#
# TABLE STRUCTURE FOR: stock_transfers
#

DROP TABLE IF EXISTS `stock_transfers`;

CREATE TABLE `stock_transfers` (
  `transfer_id` int(11) NOT NULL AUTO_INCREMENT,
  `from_stock_id` int(11) NOT NULL,
  `to_stock_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `batch_id` varchar(50) NOT NULL,
  `invoice_id` varchar(50) NOT NULL,
  `chalan_no` varchar(300) NOT NULL,
  `available_qty` decimal(10,2) NOT NULL,
  `transfer_qty` decimal(10,2) NOT NULL,
  `transfer_note` text,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`transfer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `stock_transfers` (`transfer_id`, `from_stock_id`, `to_stock_id`, `product_id`, `batch_id`, `invoice_id`, `chalan_no`, `available_qty`, `transfer_qty`, `transfer_note`, `created_by`, `created_at`) VALUES ('1', '81', '82', '26595527', '1', 'INV02', '9990', '20.00', '3.00', '', '1', '2025-10-28 04:20:09');
INSERT INTO `stock_transfers` (`transfer_id`, `from_stock_id`, `to_stock_id`, `product_id`, `batch_id`, `invoice_id`, `chalan_no`, `available_qty`, `transfer_qty`, `transfer_note`, `created_by`, `created_at`) VALUES ('2', '82', '81', '89734557', '1', 'INV05', '888', '10.00', '2.00', '', '4', '2025-10-28 13:22:45');


#
# TABLE STRUCTURE FOR: sub_module
#

DROP TABLE IF EXISTS `sub_module`;

CREATE TABLE `sub_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `directory` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=latin1;

INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('95', '16', 'Add User', '', '', 'add_user', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('96', '16', 'Manage Users', '', '', 'manage_users', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('97', '16', 'Lanaguage', '', '', 'language', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('98', '16', 'Currency', '', '', 'currency', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('99', '16', 'Web Setting', '', '', 'soft_setting', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('100', '16', 'Add Role', '', '', 'add_role', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('101', '16', 'Role List', '', '', 'role_list', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('102', '16', 'Assign User Role', '', '', 'user_assign_role', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('118', '17', 'Manage Jobs', '', '', 'manage_job', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('119', '17', 'Add Jobs', '', '', 'add_job', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('122', '18', 'Add Candidate', '', '', 'add_candidate', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('123', '18', 'Manage Candidate', '', '', 'manage_candidate', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('126', '19', 'Add Empployer', '', '', 'add_empployer', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('127', '19', 'Manage Employer', '', '', 'manage_employer', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('130', '20', 'Add Educational Level', '', '', 'add_educational_level', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('131', '20', 'Manage Educational Level', '', '', 'manage_educational_level', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('132', '21', 'Add Field Of Study', '', '', 'add_field_of_study', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('133', '21', 'Manage Field Of Study', '', '', 'manage_field_of_study', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('134', '22', 'Add zone', '', '', 'add_zone', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('135', '22', 'Manage Zone', '', '', 'manage_zone', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('136', '23', 'Shortlisted Report', '', '', 'shortlisted_report', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('137', '23', 'Interviewed Report', '', '', 'interviewed_report', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('138', '23', 'Hired Report', '', '', 'hired_report', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('139', '23', 'Rejected Report', '', '', 'rejected_report', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('140', '18', 'Filter candidates', '', '', 'filter_candidates', '1');


#
# TABLE STRUCTURE FOR: supplier_information
#

DROP TABLE IF EXISTS `supplier_information`;

CREATE TABLE `supplier_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_id` varchar(100) NOT NULL,
  `supplier_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `details` varchar(255) NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `supplier_information` (`id`, `supplier_id`, `supplier_name`, `address`, `mobile`, `details`, `status`) VALUES ('1', 'S6MTVXPX6N5846XBLOGS', 'ADISS SUPLL', '', '', '', '1');
INSERT INTO `supplier_information` (`id`, `supplier_id`, `supplier_name`, `address`, `mobile`, `details`, `status`) VALUES ('2', 'OGQFWB9DOPWLXMKADP3G', 'Furniture suplier', '', '', '', '1');


#
# TABLE STRUCTURE FOR: supplier_ledger
#

DROP TABLE IF EXISTS `supplier_ledger`;

CREATE TABLE `supplier_ledger` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(100) NOT NULL,
  `supplier_id` varchar(100) NOT NULL,
  `chalan_no` varchar(100) DEFAULT NULL,
  `deposit_no` varchar(50) DEFAULT NULL,
  `amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `description` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `cheque_no` varchar(255) NOT NULL,
  `date` varchar(50) NOT NULL,
  `status` int(2) NOT NULL,
  `d_c` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

INSERT INTO `supplier_ledger` (`id`, `transaction_id`, `supplier_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('1', '1', 'S6MTVXPX6N5846XBLOGS', '202510191945', NULL, '60000.00', '', '', '', '2025-10-19', '1', 'c');
INSERT INTO `supplier_ledger` (`id`, `transaction_id`, `supplier_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('2', '1', 'S6MTVXPX6N5846XBLOGS', '202510191945', NULL, '60000.00', '', '', '', '2025-10-19', '1', 'd');
INSERT INTO `supplier_ledger` (`id`, `transaction_id`, `supplier_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('3', '1', 'OGQFWB9DOPWLXMKADP3G', '202510220911', NULL, '400.00', '', '', '', '2025-10-22', '1', 'c');
INSERT INTO `supplier_ledger` (`id`, `transaction_id`, `supplier_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('4', '1', 'OGQFWB9DOPWLXMKADP3G', '202510220911', NULL, '400.00', '', '', '', '2025-10-22', '1', 'd');
INSERT INTO `supplier_ledger` (`id`, `transaction_id`, `supplier_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('5', '2', 'OGQFWB9DOPWLXMKADP3G', '202510221105', NULL, '600.00', '', '', '', '2025-10-22', '1', 'c');
INSERT INTO `supplier_ledger` (`id`, `transaction_id`, `supplier_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('6', '2', 'OGQFWB9DOPWLXMKADP3G', '202510221105', NULL, '600.00', '', '', '', '2025-10-22', '1', 'd');
INSERT INTO `supplier_ledger` (`id`, `transaction_id`, `supplier_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('7', '3', 'S6MTVXPX6N5846XBLOGS', '202510251756', NULL, '36600.00', '', '', '', '2025-10-25', '1', 'c');
INSERT INTO `supplier_ledger` (`id`, `transaction_id`, `supplier_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('8', '3', 'S6MTVXPX6N5846XBLOGS', '202510251756', NULL, '36600.00', '', '', '', '2025-10-25', '1', 'd');
INSERT INTO `supplier_ledger` (`id`, `transaction_id`, `supplier_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('9', '4', 'S6MTVXPX6N5846XBLOGS', '202510281315', NULL, '2400.00', '', '', '', '2025-10-28', '1', 'c');
INSERT INTO `supplier_ledger` (`id`, `transaction_id`, `supplier_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('10', '4', 'S6MTVXPX6N5846XBLOGS', '202510281315', NULL, '2400.00', '', '', '', '2025-10-28', '1', 'd');


#
# TABLE STRUCTURE FOR: synchronizer_setting
#

DROP TABLE IF EXISTS `synchronizer_setting`;

CREATE TABLE `synchronizer_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `port` varchar(10) NOT NULL,
  `debug` varchar(10) NOT NULL,
  `project_root` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tax_collection
#

DROP TABLE IF EXISTS `tax_collection`;

CREATE TABLE `tax_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `customer_id` varchar(30) NOT NULL,
  `relation_id` varchar(30) NOT NULL,
  `tax0` text,
  `tax1` text,
  `tax2` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=344 DEFAULT CHARSET=utf8;

INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('1', '2025-07-16', '1', '5247351359', NULL, NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('2', '2025-07-16', '1', '1935352534', NULL, NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('3', '2025-07-31', '2', '7784677163', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('4', '2025-07-31', '1', '7741148249', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('5', '2025-07-31', '1', '8234742463', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('8', '2025-07-31', '1', '3952363222', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('10', '2025-07-31', '1', '5635685645', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('11', '2025-07-31', '1', '6173575641', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('12', '2025-07-31', '1', '2399641192', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('13', '2025-07-31', '1', '9194955997', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('14', '2025-07-31', '1', '1292749434', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('15', '2025-07-31', '1', '8144493413', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('16', '2025-07-31', '1', '6162327188', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('17', '2025-07-31', '1', '3272568797', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('18', '2025-07-31', '1', '8633983145', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('19', '2025-07-31', '1', '7958836427', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('20', '2025-08-01', '1', '3437553829', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('21', '2025-08-01', '1', '3416358999', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('22', '2025-08-01', '1', '1828712927', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('23', '2025-08-01', '1', '4618887976', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('24', '2025-08-01', '1', '8998772616', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('25', '2025-08-01', '1', '9119287572', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('26', '2025-08-01', '1', '1472235217', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('27', '2025-08-01', '1', '6197149656', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('28', '2025-08-01', '1', '5875959626', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('29', '2025-08-01', '1', '5794198627', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('30', '2025-08-01', '1', '2456426478', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('31', '2025-08-01', '1', '4976868621', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('32', '2025-08-01', '1', '9616745934', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('33', '2025-08-01', '1', '8873354913', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('34', '2025-08-01', '1', '5435719828', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('35', '2025-08-01', '1', '8121868252', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('36', '2025-08-01', '1', '5673634891', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('37', '2025-08-01', '1', '4494661686', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('38', '2025-08-01', '1', '3487246323', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('39', '2025-08-01', '1', '9773552183', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('40', '2025-08-02', '3', '9531863124', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('41', '2025-08-02', '3', '2999272936', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('42', '2025-08-19', '1', '9219197765', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('43', '2025-08-19', '3', '1519539456', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('44', '2025-08-19', '3', '5539129265', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('45', '2025-08-19', '3', '5544422543', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('46', '2025-09-09', '5', '7431945468', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('47', '2025-09-13', '6', '7337376655', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('48', '2025-09-13', '7', '7358559413', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('49', '2025-09-13', '8', '6971575623', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('50', '2025-09-16', '9', '9536329322', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('51', '2025-09-16', '10', '3612578812', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('52', '2025-09-16', '11', '3164929197', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('53', '2025-09-19', '13', '6369481177', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('54', '2025-09-19', '14', '6542877568', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('55', '2025-09-19', '15', '4546727184', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('56', '2025-10-17', '4', '8866183933', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('57', '2025-10-17', '4', '7854746814', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('58', '2025-10-17', '4', '9242865853', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('59', '2025-10-17', '4', '4974949523', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('60', '2025-10-17', '4', '2313748167', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('61', '2025-10-17', '4', '5541931933', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('62', '2025-10-17', '4', '4581123337', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('63', '2025-10-17', '4', '5131257688', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('64', '2025-10-17', '4', '4678487651', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('65', '2025-10-17', '17', '8719256233', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('69', '2025-10-18', '4', '5564139416', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('70', '2025-10-18', '4', '9288499222', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('71', '2025-10-18', '4', '4986184842', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('72', '2025-10-18', '4', 'serv-20251018080525', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('73', '2025-10-19', '4', 'serv-20251019082146', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('74', '2025-10-19', '4', 'serv-20251019083035', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('75', '2025-10-20', '4', '2351833516', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('76', '2025-10-20', '4', '7832762925', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('78', '2025-10-20', '4', '1835537987', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('81', '2025-10-20', '4', '7321594452', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('83', '2025-10-20', '4', '5765825476', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('88', '2025-10-20', '5', 'serv-20251020024154', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('91', '2025-10-20', '5', 'serv-20251020030912', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('92', '2025-10-20', '5', 'serv-20251020031135', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('93', '2025-10-20', '4', '7875181873', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('94', '2025-10-20', '4', '2131973699', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('95', '2025-10-20', '5', 'serv-20251020032624', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('96', '2025-10-20', '4', 'serv-20251020040502', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('97', '2025-10-21', '18', '4495478736', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('98', '2025-10-21', '19', '9974128881', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('99', '2025-10-22', '18', '2811964254', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('100', '2025-10-22', '18', '4133936794', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('101', '2025-10-22', '18', '6525643585', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('102', '2025-10-22', '18', '7873169566', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('103', '2025-10-22', '18', '6879871776', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('107', '2025-10-22', '18', '2932823614', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('109', '2025-10-22', '18', '5791126186', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('110', '2025-10-22', '18', 'serv-20251022113646', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('111', '2025-10-22', '18', 'serv-20251022120421', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('112', '2025-10-22', '18', '6338458387', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('114', '2025-10-22', '18', 'serv-20251022121224', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('115', '2025-10-22', '19', '8459314136', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('117', '2025-10-22', '19', '3673749129', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('118', '2025-10-25', '19', '8793821353', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('119', '2025-10-25', '19', '6117396514', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('120', '2025-10-25', '19', '3569761764', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('121', '2025-10-25', '19', '3194886228', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('122', '2025-10-25', '19', '5943859461', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('123', '2025-10-25', '19', '4597778769', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('124', '2025-10-25', '19', '1868679384', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('125', '2025-10-25', '19', '3486287814', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('127', '2025-10-25', '19', '2895532975', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('129', '2025-10-25', '19', '6241828768', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('130', '2025-10-25', '19', '4679361876', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('133', '2025-10-25', '19', '3128738841', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('135', '2025-10-25', '19', '5764199242', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('137', '2025-10-25', '19', '1643449273', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('139', '2025-10-25', '19', '8184719263', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('141', '2025-10-25', '19', '5163239914', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('144', '2025-10-25', '19', '7892218713', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('147', '2025-10-25', '19', '7318913322', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('150', '2025-10-25', '19', '7369434879', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('152', '2025-10-25', '19', '1474671739', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('154', '2025-10-25', '19', '5726481817', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('156', '2025-10-25', '19', '1946564955', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('159', '2025-10-25', '19', '2954426964', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('162', '2025-10-25', '19', '9223372793', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('164', '2025-10-25', '19', '5322376842', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('166', '2025-10-25', '19', '8151895277', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('168', '2025-10-25', '19', '5942792926', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('170', '2025-10-25', '19', '5283717667', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('172', '2025-10-25', '19', '4919434235', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('174', '2025-10-25', '19', '8684162844', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('176', '2025-10-25', '19', '5726966718', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('178', '2025-10-25', '19', '5995771385', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('179', '2025-10-25', '19', '5485733253', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('180', '2025-10-25', '19', '6618669817', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('181', '2025-10-26', '19', '2366238961', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('184', '2025-10-26', '19', '9236565927', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('185', '2025-10-26', '19', '5311921215', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('186', '2025-10-26', '19', '1285941325', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('191', '2025-10-26', '19', 'serv-20251026083336', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('195', '2025-10-26', '19', 'serv-20251026082224', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('199', '2025-10-26', '19', '6614595147', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('201', '2025-10-26', '19', '6511833836', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('204', '2025-10-22', '19', 'serv-20251022120941', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('205', '2025-10-26', '19', 'serv-20251026082936', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('209', '2025-10-26', '19', '9961193979', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('210', '2025-10-26', '19', 'serv-20251026083518', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('211', '2025-10-26', '19', 'serv-20251026084841', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('213', '2025-10-26', '19', '1827181655', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('215', '2025-10-26', '19', 'serv-20251026093942', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('218', '2025-10-26', '19', 'serv-20251026093458', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('219', '2025-10-26', '19', 'serv-20251026093813', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('221', '2025-10-26', '20', 'serv-20251026101519', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('223', '2025-10-26', '20', 'serv-20251026114913', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('225', '2025-10-26', '20', 'serv-20251026114759', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('226', '2025-10-26', '20', '2538563975', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('227', '2025-10-26', '20', '4596243242', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('229', '2025-10-26', '20', 'serv-20251026121442', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('230', '2025-10-26', '20', '6183326132', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('231', '2025-10-26', '20', '4725963786', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('233', '2025-10-26', '20', 'serv-20251026122219', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('234', '2025-10-27', '20', '1958438615', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('235', '2025-10-27', '20', '2575563122', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('236', '2025-10-27', '20', '2832776733', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('237', '2025-10-27', '21', 'serv-20251027084750', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('239', '2025-10-27', '21', 'serv-20251027084936', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('240', '2025-10-27', '21', '4356144821', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('241', '2025-10-27', '21', 'serv-20251027085236', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('243', '2025-10-27', '21', 'serv-20251027085406', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('244', '2025-10-27', '21', '6839241794', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('246', '2025-10-27', '21', 'serv-20251027085952', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('261', '2025-10-27', '21', 'serv-20251027090317', NULL, NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('262', '2025-10-27', '21', 'serv-20251027093401', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('263', '2025-10-27', '21', '9788567831', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('271', '2025-10-27', '21', '5895566879', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('272', '2025-10-27', '21', '9422899228', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('273', '2025-10-27', '21', 'serv-20251027104334', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('275', '2025-10-27', '21', 'serv-20251027093949', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('278', '2025-10-28', '22', '9137466177', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('279', '2025-10-28', '22', '9387274198', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('280', '2025-10-28', '22', '9777117757', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('282', '2025-10-28', '22', 'serv-20251028044252', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('286', '2025-10-28', '23', 'serv-20251028044830', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('287', '2025-10-28', '23', '9927199615', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('288', '2025-10-28', '23', 'serv-20251028073706', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('290', '2025-10-28', '24', '6512144665', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('291', '2025-10-28', '24', '3783464734', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('292', '2025-10-28', '24', '4964323215', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('293', '2025-10-28', '24', '7423844131', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('294', '2025-10-28', '24', '2691758843', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('295', '2025-10-28', '24', 'serv-20251028080052', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('296', '2025-10-28', '24', 'serv-20251028080318', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('297', '2025-10-28', '24', 'serv-20251028080603', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('299', '2025-10-28', '24', '3978452185', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('300', '2025-10-28', '24', 'serv-20251028080757', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('301', '2025-10-28', '24', '4138875749', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('302', '2025-10-28', '24', 'serv-20251028081735', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('303', '2025-10-28', '24', 'serv-20251028083227', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('304', '2025-10-28', '24', 'serv-20251028083501', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('305', '2025-10-28', '24', 'serv-20251028083912', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('306', '2025-10-28', '24', '7364919532', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('307', '2025-10-28', '25', '6455493533', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('308', '2025-10-28', '25', '3116441982', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('309', '2025-10-28', '25', 'serv-20251028011752', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('310', '2025-10-28', '24', 'serv-20251028014426', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('313', '2025-10-28', '26', '3858346259', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('315', '2025-10-28', '26', 'serv-20251028053956', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('316', '2025-10-29', '26', '2611824439', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('319', '2025-10-29', '26', 'serv-20251029030802', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('320', '2025-10-29', '26', '7956397188', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('333', '2025-10-29', '26', 'serv-20251029031247', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('334', '2025-10-29', '26', '8412577392', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('335', '2025-10-29', '26', 'serv-20251029033952', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('336', '2025-10-29', '26', '9239322484', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('337', '2025-10-29', '26', 'serv-20251029034211', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('338', '2025-10-29', '26', '6642217559', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('342', '2025-10-29', '26', 'serv-20251029035034', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('343', '2025-10-29', '26', '7571992811', '0.00', NULL, NULL);


#
# TABLE STRUCTURE FOR: tax_information
#

DROP TABLE IF EXISTS `tax_information`;

CREATE TABLE `tax_information` (
  `tax_id` varchar(15) NOT NULL,
  `tax` float DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`tax_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tax_settings
#

DROP TABLE IF EXISTS `tax_settings`;

CREATE TABLE `tax_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `default_value` float NOT NULL,
  `tax_name` varchar(250) NOT NULL,
  `nt` int(11) NOT NULL,
  `reg_no` varchar(100) DEFAULT NULL,
  `is_show` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `tax_settings` (`id`, `default_value`, `tax_name`, `nt`, `reg_no`, `is_show`) VALUES ('1', '0', 'vat', '1', '1', '1');


#
# TABLE STRUCTURE FOR: unit
#

DROP TABLE IF EXISTS `unit`;

CREATE TABLE `unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unit_name` varchar(200) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

INSERT INTO `unit` (`id`, `unit_name`, `status`) VALUES ('1', 'PCS', '1');
INSERT INTO `unit` (`id`, `unit_name`, `status`) VALUES ('2', 'xx', '1');
INSERT INTO `unit` (`id`, `unit_name`, `status`) VALUES ('3', 'Box', '1');
INSERT INTO `unit` (`id`, `unit_name`, `status`) VALUES ('4', 'Pack', '1');
INSERT INTO `unit` (`id`, `unit_name`, `status`) VALUES ('5', 'Pcs', '1');
INSERT INTO `unit` (`id`, `unit_name`, `status`) VALUES ('6', 'Vial ', '1');
INSERT INTO `unit` (`id`, `unit_name`, `status`) VALUES ('7', 'Ampule ', '1');
INSERT INTO `unit` (`id`, `unit_name`, `status`) VALUES ('8', 'Bag', '1');
INSERT INTO `unit` (`id`, `unit_name`, `status`) VALUES ('9', 'Bottle ', '1');
INSERT INTO `unit` (`id`, `unit_name`, `status`) VALUES ('10', 'Dozen ', '1');
INSERT INTO `unit` (`id`, `unit_name`, `status`) VALUES ('11', 'Cartoon  ', '1');
INSERT INTO `unit` (`id`, `unit_name`, `status`) VALUES ('12', 'Jar', '1');
INSERT INTO `unit` (`id`, `unit_name`, `status`) VALUES ('13', 'Roll', '1');
INSERT INTO `unit` (`id`, `unit_name`, `status`) VALUES ('14', 'lyse', '1');


#
# TABLE STRUCTURE FOR: user_login
#

DROP TABLE IF EXISTS `user_login`;

CREATE TABLE `user_login` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` int(2) DEFAULT NULL,
  `security_code` varchar(255) DEFAULT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO `user_login` (`user_id`, `username`, `password`, `user_type`, `security_code`, `status`) VALUES ('1', 'oscarpromotion@gmail.com', 'a34f755cb63521554298debfab64af93', '1', NULL, '1');
INSERT INTO `user_login` (`user_id`, `username`, `password`, `user_type`, `security_code`, `status`) VALUES ('6', 'winta@gmail.com', '5049651dfdfc76b37835ce2f902be122', NULL, NULL, '1');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `last_name` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  `logo` varchar(250) DEFAULT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO `users` (`user_id`, `last_name`, `first_name`, `gender`, `date_of_birth`, `logo`, `status`) VALUES ('1', 'International Inc.', 'Sheba', NULL, NULL, 'http://localhost/oscar_promotion/assets/dist/img/profile_picture/86a5a65e1aa8afbb467591f0f776f5ec.png', '1');
INSERT INTO `users` (`user_id`, `last_name`, `first_name`, `gender`, `date_of_birth`, `logo`, `status`) VALUES ('6', 'mekonen', 'winta', NULL, NULL, 'http://localhost/oscar_promotion/assets/dist/img/profile_picture/82123407383c8dd628ca21520ce34c1d.jpg', '1');


#
# TABLE STRUCTURE FOR: web_setting
#

DROP TABLE IF EXISTS `web_setting`;

CREATE TABLE `web_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `logo` varchar(255) DEFAULT NULL,
  `invoice_logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `timezone` varchar(200) DEFAULT NULL,
  `currency_position` varchar(10) DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `rtr` varchar(255) DEFAULT NULL,
  `captcha` int(11) DEFAULT '1' COMMENT '0=active,1=inactive',
  `site_key` varchar(250) DEFAULT NULL,
  `secret_key` varchar(250) DEFAULT NULL,
  `discount_type` int(11) DEFAULT '1',
  PRIMARY KEY (`setting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `web_setting` (`setting_id`, `logo`, `invoice_logo`, `favicon`, `currency`, `timezone`, `currency_position`, `footer_text`, `language`, `rtr`, `captcha`, `site_key`, `secret_key`, `discount_type`) VALUES ('1', 'http://localhost/sheba_international/./my-assets/image/logo/981ec4e5d09a65da3358cbc16555e97c.PNG', 'http://softest8.bdtask.com/pharmacysasmodel/my-assets/image/logo/ef9ff92adbea3b2d1afe4cfa8b02c04c.png', 'http://softest8.bdtask.com/pharmacysasmodel/my-assets/image/logo/ba8f3211bb73f7bcc05f7a3b5b91aef6.png', 'birr', 'Asia/Dhaka', '0', 'CopyrightÂ© 2019 tesfu. All rights reserved.', 'english', '0', '1', '', '', '1');


#
# TABLE STRUCTURE FOR: zone
#

DROP TABLE IF EXISTS `zone`;

CREATE TABLE `zone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(300) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zone_name` (`zone_name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

INSERT INTO `zone` (`id`, `zone_name`, `status`) VALUES ('8', 'Mekelle', '1');
INSERT INTO `zone` (`id`, `zone_name`, `status`) VALUES ('9', 'Adigrat', '1');
INSERT INTO `zone` (`id`, `zone_name`, `status`) VALUES ('10', 'mmm', '1');


