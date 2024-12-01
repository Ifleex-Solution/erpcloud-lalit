#
# TABLE STRUCTURE FOR: acc_coa
#

DROP TABLE IF EXISTS `acc_coa`;

CREATE TABLE `acc_coa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `HeadCode` int(11) NOT NULL,
  `HeadName` varchar(100) NOT NULL,
  `PHeadName` varchar(200) NOT NULL,
  `PHeadCode` varchar(50) DEFAULT NULL,
  `HeadLevel` int(11) NOT NULL,
  `IsActive` tinyint(1) NOT NULL,
  `IsTransaction` tinyint(1) NOT NULL,
  `IsGL` tinyint(1) NOT NULL,
  `isCashNature` int(11) NOT NULL DEFAULT 0,
  `isBankNature` int(11) NOT NULL DEFAULT 0,
  `HeadType` char(1) NOT NULL,
  `IsBudget` tinyint(1) NOT NULL,
  `IsDepreciation` tinyint(1) NOT NULL,
  `customer_id` varchar(50) DEFAULT NULL,
  `supplier_id` varchar(50) DEFAULT NULL,
  `bank_id` varchar(100) DEFAULT NULL,
  `service_id` varchar(50) DEFAULT NULL,
  `DepreciationRate` decimal(18,2) NOT NULL,
  `CreateBy` varchar(50) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `UpdateBy` varchar(50) NOT NULL,
  `UpdateDate` datetime NOT NULL,
  `isSubType` int(11) NOT NULL DEFAULT 0,
  `subType` int(11) NOT NULL DEFAULT 1,
  `isStock` int(11) NOT NULL DEFAULT 0,
  `isFixedAssetSch` int(11) NOT NULL DEFAULT 0,
  `noteNo` varchar(20) DEFAULT NULL,
  `assetCode` varchar(20) DEFAULT NULL,
  `depCode` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `HeadCode` (`HeadCode`),
  KEY `HeadName` (`HeadName`),
  KEY `customer_id` (`customer_id`),
  KEY `supplier_id` (`supplier_id`),
  KEY `service_id` (`service_id`),
  KEY `PHeadName` (`PHeadName`),
  KEY `HeadLevel` (`HeadLevel`),
  KEY `IsTransaction` (`IsTransaction`),
  KEY `IsGL` (`IsGL`),
  KEY `IsBudget` (`IsBudget`),
  KEY `IsDepreciation` (`IsDepreciation`),
  KEY `isCashNature` (`isCashNature`),
  KEY `isBankNature` (`isBankNature`)
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('8', '50202', 'Accounts Payable', 'Current Liabilities', '502', '3', '1', '0', '1', '0', '0', 'L', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-05-17 12:52:17', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('10', '1', 'Assets', 'COA', '0', '1', '1', '0', '0', '0', '0', 'A', '0', '0', NULL, NULL, NULL, NULL, '0.00', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', '', '', '');
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('13', '10201', 'Cash', 'Current Asset', '102', '3', '1', '0', '0', '0', '0', 'A', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 12:07:11', '0', '2015-10-15 15:57:55', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('15', '1020101', 'Cash In Hand', 'Cash', '10201', '4', '1', '1', '1', '1', '0', 'A', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-12 08:16:03', '0', '2016-05-23 12:05:43', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('16', '102', 'Current Asset', 'Assets', '1', '2', '1', '0', '0', '0', '0', 'A', '0', '0', NULL, NULL, NULL, NULL, '0.00', '0', '0000-00-00 00:00:00', '0', '2018-07-07 11:23:00', '0', '1', '0', '0', '', '', '');
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('17', '502', 'Current Liabilities', 'Liabilities', '5', '2', '1', '0', '0', '0', '0', 'L', '0', '0', NULL, NULL, NULL, NULL, '0.00', '0', '2014-08-30 13:18:20', '0', '2015-10-15 19:49:21', '0', '1', '0', '0', '', '', '');
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('23', '401', 'Cost of Goods Solds', 'Expenses', '4', '2', '1', '1', '1', '0', '0', 'E', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-02 10:28:34', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', '', '', '');
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('24', '2', 'Shareholder\'s Equity', 'COA', '0', '1', '1', '0', '0', '0', '0', 'L', '0', '0', NULL, NULL, NULL, NULL, '0.00', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', '', '', '');
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('25', '4', 'Expenses', 'COA', '0', '1', '1', '0', '0', '0', '0', 'E', '0', '0', NULL, NULL, NULL, NULL, '0.00', '2', '2019-11-24 05:45:24', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', '', '', '');
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('26', '101', 'Fixed Assets', 'Assets', '1', '2', '1', '0', '0', '0', '0', 'A', '0', '0', NULL, NULL, NULL, NULL, '0.00', '0', '0000-00-00 00:00:00', '0', '2015-10-15 15:29:11', '0', '1', '0', '0', '', '', '');
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('27', '402', 'Over Head Cost', 'Expenses', '4', '2', '1', '1', '1', '0', '0', 'E', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-04 10:01:58', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', '', '', '');
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('29', '3', 'Income', 'COA', '0', '1', '1', '0', '0', '0', '0', 'I', '0', '0', NULL, NULL, NULL, NULL, '0.00', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', '', '', '');
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('30', '5', 'Liabilities', 'COA', '0', '1', '1', '0', '0', '0', '0', 'L', '0', '0', NULL, NULL, NULL, NULL, '0.00', '0', '2013-07-04 12:32:07', '0', '2015-10-15 19:46:54', '0', '1', '0', '0', '', '', '');
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('31', '501', 'Long Term Liabilities', 'Liabilities', '5', '2', '1', '0', '0', '0', '0', 'L', '0', '0', NULL, NULL, NULL, NULL, '0.00', '0', '2014-08-30 13:18:20', '0', '2015-10-15 19:49:21', '0', '1', '0', '0', '', '', '');
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('33', '301', 'Direct Income', 'Income', '3', '2', '1', '1', '1', '0', '0', 'I', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-02 10:31:45', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', '', '', '');
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('35', '302', 'Indirect Income', 'Income', '3', '2', '1', '1', '1', '0', '0', 'I', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-02 10:55:45', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', '', '', '');
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('36', '5020201', 'Supplier Payable', 'Accounts Payable', '50202', '4', '1', '0', '1', '0', '0', 'L', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-05-17 12:52:44', '0', '0000-00-00 00:00:00', '1', '4', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('41', '10203', 'Prepaid Expenses', 'Current Asset', '102', '3', '1', '0', '0', '0', '0', 'A', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 06:45:19', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('43', '10204', 'Inventory', 'Current Asset', '102', '3', '1', '0', '0', '0', '0', 'A', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 06:48:32', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('44', '50203', 'Accrued Expenses', 'Current Liabilities', '502', '3', '1', '0', '0', '0', '0', 'L', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 06:50:20', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('46', '50101', 'Long-Term Debt', 'Long Term Liabilities', '501', '3', '1', '0', '0', '0', '0', 'L', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 06:51:45', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('47', '50102', 'Other Long-Term  Liabilities', 'Long Term Liabilities', '501', '3', '1', '0', '0', '0', '0', 'L', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 06:53:04', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('48', '201', 'Equity', 'Shareholder\'s Equity', '2', '2', '1', '0', '0', '0', '0', 'L', '0', '0', NULL, NULL, NULL, NULL, '0.00', '0', '2022-04-10 06:56:38', '0', '2022-04-10 06:56:38', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('49', '20101', 'Equity Capital', 'Equity', '201', '3', '1', '0', '0', '0', '0', 'L', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-05-17 12:31:33', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('50', '20102', 'Retained Earnings', 'Equity', '201', '3', '1', '0', '0', '0', '0', 'L', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 07:01:45', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('51', '10101', 'Property & Equipment', 'Fixed Assets', '101', '3', '1', '0', '0', '0', '0', 'A', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 11:35:53', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('52', '10102', 'Goodwills', 'Fixed Assets', '101', '3', '1', '0', '0', '0', '0', 'A', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-23 06:47:21', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('54', '30102', 'Reimbursement Income', 'Direct Income', '301', '3', '1', '0', '0', '0', '0', 'I', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 08:09:02', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('55', '40101', 'Cost of Goods Sold', 'Cost of Goods Solds', '401', '3', '1', '0', '0', '0', '0', 'E', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 08:13:52', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('56', '40102', 'Job Expenses', 'Cost of Goods Solds', '401', '3', '1', '0', '0', '0', '0', 'E', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 08:14:18', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('57', '40201', 'Automobile', 'Over Head Cost', '402', '3', '1', '0', '0', '0', '0', 'E', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 08:14:37', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('58', '40202', 'Bank Service Charges', 'Over Head Cost', '402', '3', '1', '0', '0', '0', '0', 'E', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 08:15:32', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('59', '40203', 'Insurance', 'Over Head Cost', '402', '3', '1', '0', '0', '0', '0', 'E', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 08:15:58', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('60', '40204', 'Interest Expenses', 'Over Head Cost', '402', '3', '1', '0', '0', '0', '0', 'E', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 08:16:36', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('61', '40205', 'Payroll Expenses', 'Over Head Cost', '402', '3', '1', '0', '0', '0', '0', 'E', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 08:17:08', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('62', '40206', 'Postage', 'Over Head Cost', '402', '3', '1', '0', '0', '0', '0', 'E', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 08:17:26', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('63', '40207', 'Professional Fees', 'Over Head Cost', '402', '3', '1', '0', '0', '0', '0', 'E', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 08:17:55', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('64', '40208', 'Repairs', 'Over Head Cost', '402', '3', '1', '0', '0', '0', '0', 'E', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 08:18:38', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('65', '40209', 'Tools and Macchnery', 'Over Head Cost', '402', '3', '1', '0', '0', '0', '0', 'E', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 08:28:02', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('66', '40210', 'Utilities', 'Over Head Cost', '402', '3', '1', '0', '0', '0', '0', 'E', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 08:28:42', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('67', '4021001', 'Electic Bill', 'Utilities', '40210', '4', '1', '0', '0', '0', '0', 'E', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 09:05:45', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('68', '4021002', 'House Rent', 'Utilities', '40210', '4', '1', '0', '0', '0', '0', 'E', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 09:06:05', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('69', '10205', 'Cash at Bank', 'Current Asset', '102', '3', '1', '0', '0', '0', '0', 'A', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-05-17 12:44:19', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('75', '1010201', 'Goodwill', 'Goodwills', '10102', '4', '1', '0', '0', '0', '0', 'A', '0', '0', NULL, NULL, NULL, NULL, '15.00', '1', '2022-04-23 06:45:48', '0', '0000-00-00 00:00:00', '0', '1', '0', '1', NULL, 'GD001', NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('77', '5020401', 'property sales', 'Unearned Revenue', '50204', '4', '1', '0', '0', '0', '0', 'L', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 11:40:48', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('78', '5010101', 'Debts', 'Long-Term Debt', '50101', '4', '1', '0', '0', '0', '0', 'L', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 11:41:49', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('79', '5010201', 'Other Long-Term  Liabilities', 'Other Long-Term  Liabilities', '50102', '4', '1', '0', '0', '0', '0', 'L', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 11:42:03', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('80', '2010101', 'Capital Fund', 'Equity Capital', '20101', '4', '1', '0', '0', '0', '0', 'L', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 11:42:36', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('81', '2010201', 'Current year Profit & Loss', 'Retained Earnings', '20102', '4', '1', '0', '0', '0', '0', 'L', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 11:42:53', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('82', '2010202', 'Last year Profit & Loss', 'Retained Earnings', '20102', '4', '1', '0', '0', '0', '0', 'L', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 11:43:03', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('84', '50201', 'Provisions', 'Current Liabilities', '502', '3', '1', '0', '0', '0', '0', 'L', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 11:46:00', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('85', '5020104', 'Depreciation of Goodwill', 'Depreciations', '50205', '4', '1', '0', '0', '0', '0', 'L', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-23 06:47:07', '0', '0000-00-00 00:00:00', '0', '1', '0', '1', NULL, NULL, 'GD001');
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('86', '50204', 'Unearned Revenue', 'Current Liabilities', '502', '3', '1', '0', '0', '0', '0', 'L', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-05-17 12:53:09', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('88', '10206', 'Advance', 'Current Asset', '102', '3', '1', '0', '0', '0', '0', 'A', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-11 11:56:56', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('89', '1020601', 'Advance against Employee', 'Advance', '10206', '4', '1', '0', '0', '0', '0', 'A', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-11 11:57:18', '0', '0000-00-00 00:00:00', '1', '2', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('90', '1020602', 'Advance Against Customer', 'Advance', '10206', '4', '1', '0', '0', '0', '0', 'A', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-11 11:57:35', '0', '0000-00-00 00:00:00', '1', '3', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('91', '1020102', 'Petty Cash', 'Cash', '10201', '4', '1', '0', '0', '1', '0', 'A', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-12 08:16:19', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('94', '40301', 'Purchase Account', 'Purchase Accounts', '402', '3', '1', '0', '0', '0', '0', 'E', '0', '0', NULL, NULL, NULL, NULL, '0.00', '0', '2022-04-16 10:31:43', '0', '2022-04-16 10:31:43', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('95', '4030102', 'Purchase', 'Purchase Account', '40201', '4', '1', '0', '0', '0', '0', 'E', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-16 10:33:59', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('96', '30103', 'Sales Accounts', 'Direct Income', '301', '3', '1', '0', '0', '0', '0', 'I', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-16 10:34:37', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('97', '3010301', 'Sales Account', 'Sales Accounts', '30103', '4', '1', '0', '0', '0', '0', 'I', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-16 10:34:57', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('99', '4020501', 'Salary Expense', 'Payroll Expenses', '40205', '4', '1', '0', '0', '0', '0', 'E', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-20 06:24:08', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('104', '5020102', 'Provision for npf contribution', 'Provisions', '50201', '4', '1', '0', '0', '0', '0', 'L', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-05-10 06:19:45', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('106', '5020101', 'Provision for State Income Tax', 'Provisions', '50201', '4', '1', '0', '0', '0', '0', 'L', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-26 06:44:29', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('107', '40211', 'State Income Tax', 'Over Head Cost', '402', '3', '1', '0', '0', '0', '0', 'E', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-26 06:44:46', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('108', '4021101', 'State Income Tax', 'State Income Tax', '40211', '4', '1', '0', '0', '0', '0', 'E', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-26 06:45:00', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('110', '40212', 'Employeer ICF Expense', 'Over Head Cost', '402', '3', '1', '0', '0', '0', '0', 'E', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-05-10 06:35:37', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('111', '4021201', 'Employeer 1% ICF Expense', 'Employeer ICF Expense', '40212', '4', '1', '0', '0', '0', '0', 'E', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-05-17 11:34:02', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('112', '50205', 'Depreciations', 'Current Liabilities', '502', '3', '1', '0', '0', '0', '0', 'L', '0', '0', NULL, NULL, NULL, NULL, '0.00', '0', '2022-05-10 09:35:15', '0', '2022-05-10 09:35:15', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('191', '4020502', 'Employee 5 % NPF Expenses', 'Payroll Expenses', '40205', '4', '1', '0', '0', '0', '0', 'E', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-05-17 11:32:14', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('192', '4020503', 'Employee 10 % NPF Expenses', 'Payroll Expenses', '40205', '4', '1', '0', '0', '0', '0', 'E', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-05-17 11:32:36', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('221', '50206', 'Aoounts pay by name supplier', 'Current Liabilities', '502', '3', '1', '0', '0', '0', '0', 'L', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-06-13 11:51:32', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('229', '10208', 'Accounts Receivable', 'Current Asset', '102', '3', '1', '0', '0', '0', '0', 'A', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-06-16 07:05:42', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('230', '1020801', 'Customer Receivable', 'Accounts Receivable', '10208', '4', '1', '0', '0', '0', '0', 'A', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-06-16 07:07:17', '0', '0000-00-00 00:00:00', '1', '3', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('231', '1020802', 'Employee Receivable', 'Accounts Receivable', '10208', '4', '1', '0', '0', '0', '0', 'A', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-06-16 07:06:58', '0', '0000-00-00 00:00:00', '1', '2', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('232', '1020401', 'Inventory account', 'Inventory', '10204', '4', '1', '0', '0', '0', '0', 'A', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-06-15 07:53:16', '', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('233', '4010101', 'Cost of Goods Sold Account', 'Cost of Goods Sold', '40101', '4', '1', '0', '0', '0', '0', 'E', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-06-15 08:58:18', '', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('234', '30104', 'Service Accounts', 'Direct Income', '301', '3', '1', '0', '0', '0', '0', 'I', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-06-15 16:23:37', '', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('235', '3010401', 'Service Account', 'Service Accounts', '30104', '4', '1', '0', '0', '0', '0', 'I', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2022-06-15 16:24:11', '', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('236', '1020501', 'Commercial Bank', 'Cash at Bank', '10205', '4', '1', '0', '0', '0', '1', 'A', '0', '0', '0', '0', '0', '0', '0.00', '1', '2024-03-04 20:43:07', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', '0', '0', '0');
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('237', '1020502', 'Bank of Ceylon', 'Cash at Bank', '10205', '4', '1', '0', '0', '0', '1', 'A', '0', '0', '0', '0', '0', '0', '0.00', '1', '2024-03-04 20:44:39', '0', '0000-00-00 00:00:00', '0', '1', '0', '0', '0', '0', '0');
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('238', '30201', 'Other Income', 'Indirect Income', '302', '3', '1', '0', '0', '0', '0', 'I', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2024-06-17 18:03:21', '', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('239', '3020101', 'House Rent Income', 'Other Income', '30201', '4', '1', '0', '0', '0', '0', 'I', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2024-06-17 18:03:34', '', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('240', '1020103', '3rd party cheque', 'Cash', '10201', '4', '1', '0', '0', '1', '0', 'A', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2024-06-18 14:31:19', '', '0000-00-00 00:00:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('242', '1020803', 'Debtors', 'Accounts Receivable', '10208', '4', '1', '0', '0', '0', '0', 'A', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2024-07-05 16:58:44', '', '0000-00-00 00:00:00', '1', '7', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('243', '5020202', 'Creditors', 'Accounts Payable', '50202', '4', '1', '0', '0', '0', '0', 'L', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2024-07-05 16:59:16', '', '0000-00-00 00:00:00', '1', '8', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('244', '2116000001', '1-', 'Employee Ledger', NULL, '4', '1', '1', '0', '0', '0', 'L', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2024-08-23 15:38:58', '1', '2024-09-07 08:20:57', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('245', '2116000002', '2-', 'Employee Ledger', NULL, '4', '1', '1', '0', '0', '0', 'L', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2024-09-01 20:33:54', '1', '2024-09-07 08:20:00', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('246', '2116000003', '3-', 'Employee Ledger', NULL, '4', '1', '1', '0', '0', '0', 'L', '0', '0', NULL, NULL, NULL, NULL, '0.00', '30292', '2024-09-05 18:45:27', '1', '2024-09-07 08:19:20', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('247', '2116000004', '4-', 'Employee Ledger', NULL, '4', '1', '1', '0', '0', '0', 'L', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2024-09-07 08:21:52', '1', '2024-09-07 08:22:13', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('248', '2116000005', '5-', 'Employee Ledger', NULL, '4', '1', '1', '0', '0', '0', 'L', '0', '0', NULL, NULL, NULL, NULL, '0.00', '1', '2024-09-07 08:23:42', '1', '2024-09-07 08:23:52', '0', '1', '0', '0', NULL, NULL, NULL);
INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES ('249', '2116000006', '6-', 'Employee Ledger', NULL, '4', '1', '1', '0', '0', '0', 'L', '0', '0', NULL, NULL, NULL, NULL, '0.00', '476756', '2024-10-22 13:51:46', '476756', '2024-10-22 13:51:59', '0', '1', '0', '0', NULL, NULL, NULL);


#
# TABLE STRUCTURE FOR: acc_monthly_balance
#

DROP TABLE IF EXISTS `acc_monthly_balance`;

CREATE TABLE `acc_monthly_balance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fyear` int(11) NOT NULL,
  `COAID` int(11) NOT NULL,
  `balance1` decimal(18,2) NOT NULL DEFAULT 0.00,
  `balance2` decimal(18,2) NOT NULL DEFAULT 0.00,
  `balance3` decimal(18,2) NOT NULL DEFAULT 0.00,
  `balance4` decimal(18,2) NOT NULL DEFAULT 0.00,
  `balance5` decimal(18,2) NOT NULL DEFAULT 0.00,
  `balance6` decimal(18,2) NOT NULL DEFAULT 0.00,
  `balance7` decimal(18,2) NOT NULL DEFAULT 0.00,
  `balance8` decimal(18,2) NOT NULL DEFAULT 0.00,
  `balance9` decimal(18,2) NOT NULL DEFAULT 0.00,
  `balance10` decimal(18,2) NOT NULL DEFAULT 0.00,
  `balance11` decimal(18,2) NOT NULL DEFAULT 0.00,
  `balance12` decimal(18,2) NOT NULL DEFAULT 0.00,
  `totalBalance` decimal(18,2) NOT NULL DEFAULT 0.00,
  `updatedDate` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `acc_monthly_balance` (`id`, `fyear`, `COAID`, `balance1`, `balance2`, `balance3`, `balance4`, `balance5`, `balance6`, `balance7`, `balance8`, `balance9`, `balance10`, `balance11`, `balance12`, `totalBalance`, `updatedDate`) VALUES ('1', '1', '1020101', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '496300.00', '0.00', '0.00', '0.00', '0.00', '2024-09-14 01:52:26');
INSERT INTO `acc_monthly_balance` (`id`, `fyear`, `COAID`, `balance1`, `balance2`, `balance3`, `balance4`, `balance5`, `balance6`, `balance7`, `balance8`, `balance9`, `balance10`, `balance11`, `balance12`, `totalBalance`, `updatedDate`) VALUES ('2', '1', '3010301', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '496300.00', '0.00', '0.00', '0.00', '0.00', '2024-09-14 01:52:26');


#
# TABLE STRUCTURE FOR: acc_opening_balance
#

DROP TABLE IF EXISTS `acc_opening_balance`;

CREATE TABLE `acc_opening_balance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fyear` int(11) NOT NULL,
  `COAID` int(11) NOT NULL,
  `subType` int(11) NOT NULL DEFAULT 1,
  `subCode` int(11) DEFAULT NULL,
  `Debit` decimal(10,0) NOT NULL,
  `Credit` decimal(10,0) NOT NULL,
  `openDate` date NOT NULL,
  `CreateBy` int(11) NOT NULL,
  `CreateDate` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `COAID` (`COAID`),
  KEY `year` (`fyear`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# TABLE STRUCTURE FOR: acc_predefine_account
#

DROP TABLE IF EXISTS `acc_predefine_account`;

CREATE TABLE `acc_predefine_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cashCode` int(11) NOT NULL,
  `bankCode` int(11) NOT NULL,
  `advance` int(11) NOT NULL,
  `fixedAsset` int(11) NOT NULL,
  `purchaseCode` int(11) NOT NULL,
  `salesCode` int(11) NOT NULL,
  `serviceCode` int(11) NOT NULL,
  `customerCode` int(11) NOT NULL,
  `supplierCode` int(11) NOT NULL,
  `costs_of_good_solds` int(11) NOT NULL,
  `vat` int(11) NOT NULL,
  `tax` int(11) NOT NULL,
  `inventoryCode` int(11) NOT NULL,
  `CPLCode` int(11) NOT NULL,
  `LPLCode` int(11) NOT NULL,
  `salary_code` int(11) DEFAULT NULL,
  `emp_npf_contribution` int(11) DEFAULT NULL,
  `empr_npf_contribution` int(11) DEFAULT NULL,
  `emp_icf_contribution` int(11) DEFAULT NULL,
  `empr_icf_contribution` int(11) DEFAULT NULL,
  `prov_state_tax` int(11) NOT NULL,
  `state_tax` int(11) NOT NULL,
  `prov_npfcode` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `COAID` (`cashCode`),
  KEY `cashCode` (`cashCode`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `acc_predefine_account` (`id`, `cashCode`, `bankCode`, `advance`, `fixedAsset`, `purchaseCode`, `salesCode`, `serviceCode`, `customerCode`, `supplierCode`, `costs_of_good_solds`, `vat`, `tax`, `inventoryCode`, `CPLCode`, `LPLCode`, `salary_code`, `emp_npf_contribution`, `empr_npf_contribution`, `emp_icf_contribution`, `empr_icf_contribution`, `prov_state_tax`, `state_tax`, `prov_npfcode`) VALUES ('2', '10201', '10205', '10206', '101', '1020401', '3010301', '3010401', '1020801', '5020201', '4010101', '0', '4021101', '1020401', '2010201', '2010202', '4020501', '4020502', '4020503', '4021201', '0', '5020101', '4021101', '5020102');


#
# TABLE STRUCTURE FOR: acc_subcode
#

DROP TABLE IF EXISTS `acc_subcode`;

CREATE TABLE `acc_subcode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subTypeId` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `referenceNo` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) NOT NULL,
  `created_date` date NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `subTypeId` (`subTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `acc_subcode` (`id`, `subTypeId`, `name`, `referenceNo`, `status`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES ('1', '4', 'Cash Purchase', '1', '1', '0', '2024-03-04', '0', '2024-03-05 00:38:52');
INSERT INTO `acc_subcode` (`id`, `subTypeId`, `name`, `referenceNo`, `status`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES ('2', '3', 'Cash Sale', '1', '1', '0', '2024-03-04', '0', '2024-03-05 00:39:44');
INSERT INTO `acc_subcode` (`id`, `subTypeId`, `name`, `referenceNo`, `status`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES ('3', '3', 'Cash Service', '2', '1', '0', '2024-03-04', '0', '2024-03-05 01:11:15');
INSERT INTO `acc_subcode` (`id`, `subTypeId`, `name`, `referenceNo`, `status`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES ('4', '3', 'Credit Customer', '3', '1', '0', '2024-06-17', '0', '2024-06-17 22:40:34');
INSERT INTO `acc_subcode` (`id`, `subTypeId`, `name`, `referenceNo`, `status`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES ('5', '4', 'Credit Supplier', '3', '1', '0', '2024-06-17', '0', '2024-06-17 22:40:45');
INSERT INTO `acc_subcode` (`id`, `subTypeId`, `name`, `referenceNo`, `status`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES ('6', '3', 'Testing Debtor', '4', '1', '0', '2024-06-21', '0', '2024-06-21 23:23:13');
INSERT INTO `acc_subcode` (`id`, `subTypeId`, `name`, `referenceNo`, `status`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES ('7', '3', 'Customer X', '5', '1', '0', '2024-06-23', '0', '2024-06-23 22:26:28');
INSERT INTO `acc_subcode` (`id`, `subTypeId`, `name`, `referenceNo`, `status`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES ('8', '4', 'Supplier X', '4', '1', '0', '2024-06-23', '0', '2024-06-23 22:32:01');
INSERT INTO `acc_subcode` (`id`, `subTypeId`, `name`, `referenceNo`, `status`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES ('9', '6', 'Agent 1', '0', '1', '1', '2024-07-03', '0', '2024-07-04 00:08:34');
INSERT INTO `acc_subcode` (`id`, `subTypeId`, `name`, `referenceNo`, `status`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES ('10', '6', 'Agent 2', '0', '1', '1', '2024-07-03', '0', '2024-07-04 00:08:50');
INSERT INTO `acc_subcode` (`id`, `subTypeId`, `name`, `referenceNo`, `status`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES ('17', '7', 'Debtor Test 01', '0', '1', '1', '2024-07-05', '0', '2024-07-05 22:31:33');
INSERT INTO `acc_subcode` (`id`, `subTypeId`, `name`, `referenceNo`, `status`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES ('18', '7', 'Debtor Test 02', '0', '1', '1', '2024-07-05', '0', '2024-07-05 22:31:42');
INSERT INTO `acc_subcode` (`id`, `subTypeId`, `name`, `referenceNo`, `status`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES ('19', '8', 'Creditor Test 01', '0', '1', '1', '2024-07-05', '0', '2024-07-05 22:31:58');
INSERT INTO `acc_subcode` (`id`, `subTypeId`, `name`, `referenceNo`, `status`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES ('20', '8', 'Creditor Test 02', '0', '1', '1', '2024-07-05', '0', '2024-07-05 22:32:08');
INSERT INTO `acc_subcode` (`id`, `subTypeId`, `name`, `referenceNo`, `status`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES ('21', '2', 'Jagan Magan', '1', '1', '0', '2024-08-23', '0', '2024-08-23 21:08:58');
INSERT INTO `acc_subcode` (`id`, `subTypeId`, `name`, `referenceNo`, `status`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES ('22', '2', 'Jagan ', '2', '1', '0', '2024-09-01', '0', '2024-09-02 02:03:54');
INSERT INTO `acc_subcode` (`id`, `subTypeId`, `name`, `referenceNo`, `status`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES ('23', '2', 'Jagan Brother ', '3', '1', '0', '2024-09-05', '0', '2024-09-06 00:15:27');
INSERT INTO `acc_subcode` (`id`, `subTypeId`, `name`, `referenceNo`, `status`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES ('24', '2', 'Gopinath Jeyarajah', '4', '1', '0', '2024-09-07', '0', '2024-09-07 13:51:52');
INSERT INTO `acc_subcode` (`id`, `subTypeId`, `name`, `referenceNo`, `status`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES ('25', '2', 'Kaveri Kannan', '5', '1', '0', '2024-09-07', '0', '2024-09-07 13:53:42');
INSERT INTO `acc_subcode` (`id`, `subTypeId`, `name`, `referenceNo`, `status`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES ('26', '2', '099 Test', '6', '1', '0', '2024-10-22', '0', '2024-10-22 19:21:46');


#
# TABLE STRUCTURE FOR: acc_subtype
#

DROP TABLE IF EXISTS `acc_subtype`;

CREATE TABLE `acc_subtype` (
  `id` int(11) NOT NULL,
  `subtypeName` varchar(200) NOT NULL,
  `staus` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `acc_subtype` (`id`, `subtypeName`, `staus`, `created_by`, `created_date`) VALUES ('1', 'None', '1', '1', '2022-04-05 10:19:27');
INSERT INTO `acc_subtype` (`id`, `subtypeName`, `staus`, `created_by`, `created_date`) VALUES ('2', 'Employee', '1', '1', '2022-04-06 08:14:48');
INSERT INTO `acc_subtype` (`id`, `subtypeName`, `staus`, `created_by`, `created_date`) VALUES ('3', 'Customer', '1', '1', '2022-04-10 08:49:22');
INSERT INTO `acc_subtype` (`id`, `subtypeName`, `staus`, `created_by`, `created_date`) VALUES ('4', 'Supplier', '1', '1', '2022-04-10 08:49:22');
INSERT INTO `acc_subtype` (`id`, `subtypeName`, `staus`, `created_by`, `created_date`) VALUES ('6', 'Agent', '1', '1', '2022-04-10 08:50:12');
INSERT INTO `acc_subtype` (`id`, `subtypeName`, `staus`, `created_by`, `created_date`) VALUES ('7', 'Debtors', '1', '1', '2024-07-05 21:54:30');
INSERT INTO `acc_subtype` (`id`, `subtypeName`, `staus`, `created_by`, `created_date`) VALUES ('8', 'Creditors', '1', '1', '2024-07-05 21:54:30');


#
# TABLE STRUCTURE FOR: acc_transaction
#

DROP TABLE IF EXISTS `acc_transaction`;

CREATE TABLE `acc_transaction` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `vid` int(11) NOT NULL,
  `fyear` int(11) NOT NULL,
  `VNo` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Vtype` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `referenceNo` varchar(20) DEFAULT NULL,
  `VDate` date DEFAULT NULL,
  `COAID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Narration` text CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `chequeNo` varchar(30) DEFAULT NULL,
  `chequeDate` date DEFAULT NULL,
  `isHonour` int(11) DEFAULT NULL,
  `ledgerComment` varchar(100) NOT NULL DEFAULT '0',
  `Debit` decimal(18,2) DEFAULT NULL,
  `Credit` decimal(18,2) DEFAULT NULL,
  `StoreID` int(11) NOT NULL DEFAULT 0,
  `IsPosted` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `is_opening` int(11) NOT NULL DEFAULT 0,
  `CreateBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `UpdateDate` datetime DEFAULT NULL,
  `IsAppove` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `RevCodde` bigint(20) NOT NULL,
  `subType` int(11) NOT NULL DEFAULT 1,
  `subCode` int(11) DEFAULT NULL,
  UNIQUE KEY `ID` (`ID`),
  KEY `COAID` (`COAID`),
  KEY `VNo` (`VNo`),
  KEY `RevCodde` (`RevCodde`),
  KEY `subType` (`subType`),
  KEY `subCode` (`subCode`),
  KEY `referenceNo` (`referenceNo`),
  KEY `vid` (`vid`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('1', '1', '1', 'CV-1', 'CV', '1000', '2024-09-07', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '2000.00', '0.00', '0', '1', '0', '976196', '2024-09-07 15:43:31', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('2', '1', '1', 'CV-1', 'CV', '1000', '2024-09-07', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '2000.00', '0', '1', '0', '976196', '2024-09-07 15:43:31', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('3', '2', '1', 'CV-2', 'CV', '1000', '2024-09-07', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '3500.00', '0.00', '0', '1', '0', '976196', '2024-09-07 15:43:50', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('4', '2', '1', 'CV-2', 'CV', '1000', '2024-09-07', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '3500.00', '0', '1', '0', '976196', '2024-09-07 15:43:50', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('5', '3', '1', 'CV-3', 'CV', '1001', '2024-09-07', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '3500.00', '0.00', '0', '1', '0', '896413', '2024-09-07 16:07:19', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('6', '3', '1', 'CV-3', 'CV', '1001', '2024-09-07', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '3500.00', '0', '1', '0', '896413', '2024-09-07 16:07:19', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('7', '4', '1', 'CV-4', 'CV', '1001', '2024-09-07', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '17500.00', '0.00', '0', '1', '0', '896413', '2024-09-07 16:07:46', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('8', '4', '1', 'CV-4', 'CV', '1001', '2024-09-07', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '17500.00', '0', '1', '0', '896413', '2024-09-07 16:07:46', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('9', '5', '1', 'CV-5', 'CV', '1002', '2024-09-07', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '1200.00', '0.00', '0', '1', '0', '896413', '2024-09-07 16:08:00', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('10', '5', '1', 'CV-5', 'CV', '1002', '2024-09-07', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '1200.00', '0', '1', '0', '896413', '2024-09-07 16:08:00', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('11', '6', '1', 'CV-6', 'CV', '1003', '2024-09-07', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '1400.00', '0.00', '0', '1', '0', '896413', '2024-09-07 16:10:34', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('12', '6', '1', 'CV-6', 'CV', '1003', '2024-09-07', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '1400.00', '0', '1', '0', '896413', '2024-09-07 16:10:34', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('13', '7', '1', 'CV-7', 'CV', '1004', '2024-09-07', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '7000.00', '0.00', '0', '1', '0', '896413', '2024-09-07 16:13:19', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('14', '7', '1', 'CV-7', 'CV', '1004', '2024-09-07', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '7000.00', '0', '1', '0', '896413', '2024-09-07 16:13:19', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('15', '8', '1', 'CV-8', 'CV', '1005', '2024-09-07', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '400.00', '0.00', '0', '1', '0', '896413', '2024-09-07 16:14:31', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('16', '8', '1', 'CV-8', 'CV', '1005', '2024-09-07', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '400.00', '0', '1', '0', '896413', '2024-09-07 16:14:31', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('17', '9', '1', 'CV-9', 'CV', '1006', '2024-09-07', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '5000.00', '0.00', '0', '1', '0', '896413', '2024-09-07 16:54:21', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('18', '9', '1', 'CV-9', 'CV', '1006', '2024-09-07', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '5000.00', '0', '1', '0', '896413', '2024-09-07 16:54:21', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('19', '10', '1', 'CV-10', 'CV', '1002', '2024-09-07', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '5000.00', '0.00', '0', '1', '0', '896413', '2024-09-07 16:54:35', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('20', '10', '1', 'CV-10', 'CV', '1002', '2024-09-07', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '5000.00', '0', '1', '0', '896413', '2024-09-07 16:54:35', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('21', '11', '1', 'CV-11', 'CV', '1007', '2024-09-07', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '5000.00', '0.00', '0', '1', '0', '896413', '2024-09-07 16:54:50', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('22', '11', '1', 'CV-11', 'CV', '1007', '2024-09-07', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '5000.00', '0', '1', '0', '896413', '2024-09-07 16:54:50', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('23', '12', '1', 'CV-12', 'CV', '1008', '2024-09-07', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '1200.00', '0.00', '0', '1', '0', '896413', '2024-09-07 16:58:57', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('24', '12', '1', 'CV-12', 'CV', '1008', '2024-09-07', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '1200.00', '0', '1', '0', '896413', '2024-09-07 16:58:57', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('25', '13', '1', 'CV-13', 'CV', '1003', '2024-09-07', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '300.00', '0.00', '0', '1', '0', '896413', '2024-09-07 16:59:29', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('26', '13', '1', 'CV-13', 'CV', '1003', '2024-09-07', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '300.00', '0', '1', '0', '896413', '2024-09-07 16:59:29', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('27', '14', '1', 'CV-14', 'CV', '1004', '2024-09-07', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '8000.00', '0.00', '0', '1', '0', '896413', '2024-09-07 16:59:59', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('28', '14', '1', 'CV-14', 'CV', '1004', '2024-09-07', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '8000.00', '0', '1', '0', '896413', '2024-09-07 16:59:59', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('29', '15', '1', 'CV-15', 'CV', '1009', '2024-09-07', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '3500.00', '0.00', '0', '1', '0', '896413', '2024-09-07 17:00:31', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('30', '15', '1', 'CV-15', 'CV', '1009', '2024-09-07', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '3500.00', '0', '1', '0', '896413', '2024-09-07 17:00:31', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('31', '16', '1', 'CV-16', 'CV', '1010', '2024-09-07', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '1400.00', '0.00', '0', '1', '0', '896413', '2024-09-07 17:08:10', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('32', '16', '1', 'CV-16', 'CV', '1010', '2024-09-07', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '1400.00', '0', '1', '0', '896413', '2024-09-07 17:08:10', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('33', '17', '1', 'CV-17', 'CV', '1011', '2024-09-08', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '28700.00', '0.00', '0', '1', '0', '399685', '2024-09-08 00:27:17', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('34', '17', '1', 'CV-17', 'CV', '1011', '2024-09-08', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '28700.00', '0', '1', '0', '399685', '2024-09-08 00:27:17', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('35', '18', '1', 'CV-18', 'CV', '1005', '2024-09-08', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '24900.00', '0.00', '0', '1', '0', '399685', '2024-09-08 00:27:45', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('36', '18', '1', 'CV-18', 'CV', '1005', '2024-09-08', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '24900.00', '0', '1', '0', '399685', '2024-09-08 00:27:45', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('37', '19', '1', 'CV-19', 'CV', '1006', '2024-09-08', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '25200.00', '0.00', '0', '1', '0', '399685', '2024-09-08 00:28:03', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('38', '19', '1', 'CV-19', 'CV', '1006', '2024-09-08', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '25200.00', '0', '1', '0', '399685', '2024-09-08 00:28:03', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('39', '20', '1', 'CV-20', 'CV', '1000', '2024-09-08', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '2000.00', '0.00', '0', '1', '0', '1', '2024-09-08 00:52:29', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('40', '20', '1', 'CV-20', 'CV', '1000', '2024-09-08', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '2000.00', '0', '1', '0', '1', '2024-09-08 00:52:29', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('41', '21', '1', 'CV-21', 'CV', '1010', '2024-09-08', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '1400.00', '0.00', '0', '1', '0', '1', '2024-09-08 00:54:01', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('42', '21', '1', 'CV-21', 'CV', '1010', '2024-09-08', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '1400.00', '0', '1', '0', '1', '2024-09-08 00:54:01', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('43', '22', '1', 'CV-22', 'CV', '1009', '2024-09-08', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '3500.00', '0.00', '0', '1', '0', '1', '2024-09-08 00:54:15', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('44', '22', '1', 'CV-22', 'CV', '1009', '2024-09-08', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '3500.00', '0', '1', '0', '1', '2024-09-08 00:54:15', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('45', '23', '1', 'CV-23', 'CV', '1008', '2024-09-08', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '1200.00', '0.00', '0', '1', '0', '1', '2024-09-08 00:54:29', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('46', '23', '1', 'CV-23', 'CV', '1008', '2024-09-08', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '1200.00', '0', '1', '0', '1', '2024-09-08 00:54:29', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('47', '24', '1', 'CV-24', 'CV', '1007', '2024-09-08', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '5000.00', '0.00', '0', '1', '0', '1', '2024-09-08 00:54:47', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('48', '24', '1', 'CV-24', 'CV', '1007', '2024-09-08', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '5000.00', '0', '1', '0', '1', '2024-09-08 00:54:47', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('49', '25', '1', 'CV-25', 'CV', '1006', '2024-09-08', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '5000.00', '0.00', '0', '1', '0', '1', '2024-09-08 00:55:03', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('50', '25', '1', 'CV-25', 'CV', '1006', '2024-09-08', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '5000.00', '0', '1', '0', '1', '2024-09-08 00:55:03', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('51', '26', '1', 'CV-26', 'CV', '1005', '2024-09-08', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '400.00', '0.00', '0', '1', '0', '1', '2024-09-08 00:55:17', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('52', '26', '1', 'CV-26', 'CV', '1005', '2024-09-08', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '400.00', '0', '1', '0', '1', '2024-09-08 00:55:17', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('53', '27', '1', 'CV-27', 'CV', '1004', '2024-09-08', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '7000.00', '0.00', '0', '1', '0', '1', '2024-09-08 00:55:31', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('54', '27', '1', 'CV-27', 'CV', '1004', '2024-09-08', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '7000.00', '0', '1', '0', '1', '2024-09-08 00:55:31', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('55', '28', '1', 'CV-28', 'CV', '1003', '2024-09-08', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '1400.00', '0.00', '0', '1', '0', '1', '2024-09-08 00:55:49', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('56', '28', '1', 'CV-28', 'CV', '1003', '2024-09-08', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '1400.00', '0', '1', '0', '1', '2024-09-08 00:55:49', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('57', '29', '1', 'CV-29', 'CV', '1002', '2024-09-08', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '1200.00', '0.00', '0', '1', '0', '1', '2024-09-08 00:56:02', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('58', '29', '1', 'CV-29', 'CV', '1002', '2024-09-08', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '1200.00', '0', '1', '0', '1', '2024-09-08 00:56:02', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('59', '30', '1', 'CV-30', 'CV', '1001', '2024-09-08', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '3500.00', '0.00', '0', '1', '0', '1', '2024-09-08 00:56:17', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('60', '30', '1', 'CV-30', 'CV', '1001', '2024-09-08', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '3500.00', '0', '1', '0', '1', '2024-09-08 00:56:17', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('61', '31', '1', 'CV-31', 'CV', '1004', '2024-09-08', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '8000.00', '0.00', '0', '1', '0', '1', '2024-09-08 00:56:49', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('62', '31', '1', 'CV-31', 'CV', '1004', '2024-09-08', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '8000.00', '0', '1', '0', '1', '2024-09-08 00:56:49', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('63', '32', '1', 'CV-32', 'CV', '1003', '2024-09-08', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '300.00', '0.00', '0', '1', '0', '1', '2024-09-08 00:57:05', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('64', '32', '1', 'CV-32', 'CV', '1003', '2024-09-08', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '300.00', '0', '1', '0', '1', '2024-09-08 00:57:05', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('65', '33', '1', 'CV-33', 'CV', '1002', '2024-09-08', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '5000.00', '0.00', '0', '1', '0', '1', '2024-09-08 00:57:22', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('66', '33', '1', 'CV-33', 'CV', '1002', '2024-09-08', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '5000.00', '0', '1', '0', '1', '2024-09-08 00:57:22', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('67', '34', '1', 'CV-34', 'CV', '1001', '2024-09-08', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '17500.00', '0.00', '0', '1', '0', '1', '2024-09-08 00:57:48', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('68', '34', '1', 'CV-34', 'CV', '1001', '2024-09-08', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '17500.00', '0', '1', '0', '1', '2024-09-08 00:57:48', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('69', '35', '1', 'CV-35', 'CV', '1000', '2024-09-08', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '3500.00', '0.00', '0', '1', '0', '1', '2024-09-08 00:58:13', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('70', '35', '1', 'CV-35', 'CV', '1000', '2024-09-08', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '3500.00', '0', '1', '0', '1', '2024-09-08 00:58:13', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('71', '36', '1', 'CV-36', 'CV', '1012', '2024-09-08', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '48700.00', '0.00', '0', '1', '0', '1', '2024-09-08 11:44:01', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('72', '36', '1', 'CV-36', 'CV', '1012', '2024-09-08', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '48700.00', '0', '1', '0', '1', '2024-09-08 11:44:01', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('73', '37', '1', 'CV-37', 'CV', '1012', '2024-09-08', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '48700.00', '0.00', '0', '1', '0', '1', '2024-09-08 23:44:08', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('74', '37', '1', 'CV-37', 'CV', '1012', '2024-09-08', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '48700.00', '0', '1', '0', '1', '2024-09-08 23:44:08', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('75', '38', '1', 'CV-38', 'CV', '1011', '2024-09-08', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '28700.00', '0.00', '0', '1', '0', '1', '2024-09-08 23:44:31', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('76', '38', '1', 'CV-38', 'CV', '1011', '2024-09-08', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '28700.00', '0', '1', '0', '1', '2024-09-08 23:44:31', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('77', '39', '1', 'CV-39', 'CV', '1010', '2024-09-08', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '1400.00', '0.00', '0', '1', '0', '1', '2024-09-08 23:44:50', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('78', '39', '1', 'CV-39', 'CV', '1010', '2024-09-08', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '1400.00', '0', '1', '0', '1', '2024-09-08 23:44:50', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('79', '40', '1', 'CV-40', 'CV', '1009', '2024-09-08', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '3500.00', '0.00', '0', '1', '0', '1', '2024-09-08 23:45:06', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('80', '40', '1', 'CV-40', 'CV', '1009', '2024-09-08', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '3500.00', '0', '1', '0', '1', '2024-09-08 23:45:06', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('81', '41', '1', 'CV-41', 'CV', '1008', '2024-09-08', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '1200.00', '0.00', '0', '1', '0', '1', '2024-09-08 23:45:31', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('82', '41', '1', 'CV-41', 'CV', '1008', '2024-09-08', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '1200.00', '0', '1', '0', '1', '2024-09-08 23:45:31', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('83', '42', '1', 'CV-42', 'CV', '1007', '2024-09-08', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '5000.00', '0.00', '0', '1', '0', '1', '2024-09-08 23:45:48', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('84', '42', '1', 'CV-42', 'CV', '1007', '2024-09-08', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '5000.00', '0', '1', '0', '1', '2024-09-08 23:45:48', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('85', '43', '1', 'CV-43', 'CV', '1006', '2024-09-08', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '5000.00', '0.00', '0', '1', '0', '1', '2024-09-08 23:46:03', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('86', '43', '1', 'CV-43', 'CV', '1006', '2024-09-08', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '5000.00', '0', '1', '0', '1', '2024-09-08 23:46:03', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('87', '44', '1', 'CV-44', 'CV', '1005', '2024-09-08', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '400.00', '0.00', '0', '1', '0', '1', '2024-09-08 23:46:21', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('88', '44', '1', 'CV-44', 'CV', '1005', '2024-09-08', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '400.00', '0', '1', '0', '1', '2024-09-08 23:46:21', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('89', '45', '1', 'CV-45', 'CV', '1000', '2024-09-09', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '3500.00', '0.00', '0', '1', '0', '1', '2024-09-09 00:27:37', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('90', '45', '1', 'CV-45', 'CV', '1000', '2024-09-09', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '3500.00', '0', '1', '0', '1', '2024-09-09 00:27:37', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('91', '46', '1', 'CV-46', 'CV', '1001', '2024-09-09', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '17500.00', '0.00', '0', '1', '0', '1', '2024-09-09 00:28:07', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('92', '46', '1', 'CV-46', 'CV', '1001', '2024-09-09', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '17500.00', '0', '1', '0', '1', '2024-09-09 00:28:07', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('93', '47', '1', 'CV-47', 'CV', '1002', '2024-09-09', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '5000.00', '0.00', '0', '1', '0', '1', '2024-09-09 00:28:33', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('94', '47', '1', 'CV-47', 'CV', '1002', '2024-09-09', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '5000.00', '0', '1', '0', '1', '2024-09-09 00:28:33', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('95', '48', '1', 'CV-48', 'CV', '1003', '2024-09-09', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '300.00', '0.00', '0', '1', '0', '1', '2024-09-09 00:28:57', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('96', '48', '1', 'CV-48', 'CV', '1003', '2024-09-09', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '300.00', '0', '1', '0', '1', '2024-09-09 00:28:57', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('97', '49', '1', 'CV-49', 'CV', '1004', '2024-09-09', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '8000.00', '0.00', '0', '1', '0', '1', '2024-09-09 00:29:07', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('98', '49', '1', 'CV-49', 'CV', '1004', '2024-09-09', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '8000.00', '0', '1', '0', '1', '2024-09-09 00:29:07', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('99', '50', '1', 'CV-50', 'CV', '1005', '2024-09-09', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '24900.00', '0.00', '0', '1', '0', '1', '2024-09-09 00:29:40', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('100', '50', '1', 'CV-50', 'CV', '1005', '2024-09-09', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '24900.00', '0', '1', '0', '1', '2024-09-09 00:29:40', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('101', '51', '1', 'CV-51', 'CV', '1006', '2024-09-09', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '25200.00', '0.00', '0', '1', '0', '1', '2024-09-09 00:29:52', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('102', '51', '1', 'CV-51', 'CV', '1006', '2024-09-09', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '25200.00', '0', '1', '0', '1', '2024-09-09 00:29:52', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('103', '52', '1', 'CV-52', 'CV', '1013', '2024-09-09', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '8900.00', '0.00', '0', '1', '0', '1', '2024-09-09 18:19:48', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('104', '52', '1', 'CV-52', 'CV', '1013', '2024-09-09', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '8900.00', '0', '1', '0', '1', '2024-09-09 18:19:48', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('105', '53', '1', 'CV-53', 'CV', '1007', '2024-09-09', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '12200.00', '0.00', '0', '1', '0', '1', '2024-09-09 18:21:42', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('106', '53', '1', 'CV-53', 'CV', '1007', '2024-09-09', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '12200.00', '0', '1', '0', '1', '2024-09-09 18:21:42', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('107', '54', '1', 'CV-54', 'CV', '1014', '2024-09-09', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '4500.00', '0.00', '0', '1', '0', '1', '2024-09-09 20:31:21', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('108', '54', '1', 'CV-54', 'CV', '1014', '2024-09-09', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '4500.00', '0', '1', '0', '1', '2024-09-09 20:31:21', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('109', '55', '1', 'CV-55', 'CV', '1015', '2024-09-09', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '10500.00', '0.00', '0', '1', '0', '1', '2024-09-09 20:34:56', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('110', '55', '1', 'CV-55', 'CV', '1015', '2024-09-09', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '10500.00', '0', '1', '0', '1', '2024-09-09 20:34:56', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('111', '56', '1', 'CV-56', 'CV', '1016', '2024-09-14', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '14400.00', '0.00', '0', '1', '0', '1', '2024-09-14 13:13:45', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('112', '56', '1', 'CV-56', 'CV', '1016', '2024-09-14', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '14400.00', '0', '1', '0', '1', '2024-09-14 13:13:45', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('113', '57', '1', 'CV-57', 'CV', '1017', '2024-09-14', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '6400.00', '0.00', '0', '1', '0', '1', '2024-09-14 13:14:39', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('114', '57', '1', 'CV-57', 'CV', '1017', '2024-09-14', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '6400.00', '0', '1', '0', '1', '2024-09-14 13:14:39', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('115', '58', '1', 'CV-58', 'CV', '1018', '2024-09-14', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '400.00', '0.00', '0', '1', '0', '1', '2024-09-14 13:51:49', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('116', '58', '1', 'CV-58', 'CV', '1018', '2024-09-14', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '400.00', '0', '1', '0', '1', '2024-09-14 13:51:49', NULL, NULL, '1', '1020101', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('117', '59', '1', 'CV-59', 'CV', '1008', '2024-09-14', '1020101', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '1400.00', '0.00', '0', '1', '0', '1', '2024-09-14 13:52:26', NULL, NULL, '1', '3010301', '1', NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES ('118', '59', '1', 'CV-59', 'CV', '1008', '2024-09-14', '3010301', 'Sales Voucher', '', NULL, '0', 'Sales Voucher for customer', '0.00', '1400.00', '0', '1', '0', '1', '2024-09-14 13:52:26', NULL, NULL, '1', '1020101', '1', NULL);


#
# TABLE STRUCTURE FOR: acc_vaucher
#

DROP TABLE IF EXISTS `acc_vaucher`;

CREATE TABLE `acc_vaucher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fyear` int(11) NOT NULL,
  `VNo` varchar(50) NOT NULL,
  `Vtype` varchar(50) NOT NULL,
  `referenceNo` varchar(50) DEFAULT NULL,
  `VDate` date NOT NULL,
  `COAID` int(11) NOT NULL,
  `Narration` varchar(255) DEFAULT NULL,
  `chequeno` varchar(30) DEFAULT NULL,
  `chequeDate` date DEFAULT NULL,
  `isHonour` int(11) NOT NULL DEFAULT 0,
  `ledgerComment` varchar(255) DEFAULT NULL,
  `Debit` decimal(18,2) NOT NULL DEFAULT 0.00,
  `Credit` decimal(18,2) NOT NULL DEFAULT 0.00,
  `RevCodde` int(11) NOT NULL,
  `subType` int(11) NOT NULL DEFAULT 1,
  `subCode` int(11) DEFAULT NULL,
  `isApproved` int(11) NOT NULL DEFAULT 0,
  `CreateBy` int(11) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `UpdateBy` int(11) DEFAULT NULL,
  `UpdateDate` datetime DEFAULT NULL,
  `approvedBy` int(11) DEFAULT NULL,
  `approvedDate` datetime DEFAULT NULL,
  `isyearClosed` tinyint(1) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0 = non yet transfer to transation,  1 = Tranfer to transition',
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `VNo` (`VNo`),
  KEY `fyear` (`fyear`),
  KEY `VDate` (`VDate`),
  KEY `COAID` (`COAID`),
  KEY `RevCodde` (`RevCodde`),
  KEY `subType` (`subType`),
  KEY `subCode` (`subCode`),
  KEY `referenceNo` (`referenceNo`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('1', '1', 'CV-1', 'CV', '1000', '2024-09-07', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '2000.00', '0.00', '3010301', '1', NULL, '1', '976196', '2024-09-07 15:43:31', NULL, NULL, '976196', '2024-09-07 15:43:31', '0', '1', 'A');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('2', '1', 'CV-2', 'CV', '1000', '2024-09-07', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '3500.00', '0.00', '3010301', '1', NULL, '1', '976196', '2024-09-07 15:43:50', NULL, NULL, '976196', '2024-09-07 15:43:50', '0', '1', 'B');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('3', '1', 'CV-3', 'CV', '1001', '2024-09-07', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '3500.00', '0.00', '3010301', '1', NULL, '1', '896413', '2024-09-07 16:07:19', NULL, NULL, '896413', '2024-09-07 16:07:19', '0', '1', 'A');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('4', '1', 'CV-4', 'CV', '1001', '2024-09-07', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '17500.00', '0.00', '3010301', '1', NULL, '1', '896413', '2024-09-07 16:07:46', NULL, NULL, '896413', '2024-09-07 16:07:46', '0', '1', 'B');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('5', '1', 'CV-5', 'CV', '1002', '2024-09-07', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '1200.00', '0.00', '3010301', '1', NULL, '1', '896413', '2024-09-07 16:08:00', NULL, NULL, '896413', '2024-09-07 16:08:00', '0', '1', 'A');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('6', '1', 'CV-6', 'CV', '1003', '2024-09-07', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '1400.00', '0.00', '3010301', '1', NULL, '1', '896413', '2024-09-07 16:10:34', NULL, NULL, '896413', '2024-09-07 16:10:34', '0', '1', 'A');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('7', '1', 'CV-7', 'CV', '1004', '2024-09-07', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '7000.00', '0.00', '3010301', '1', NULL, '1', '896413', '2024-09-07 16:13:19', NULL, NULL, '896413', '2024-09-07 16:13:19', '0', '1', 'A');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('8', '1', 'CV-8', 'CV', '1005', '2024-09-07', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '400.00', '0.00', '3010301', '1', NULL, '1', '896413', '2024-09-07 16:14:31', NULL, NULL, '896413', '2024-09-07 16:14:31', '0', '1', 'A');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('9', '1', 'CV-9', 'CV', '1006', '2024-09-07', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '5000.00', '0.00', '3010301', '1', NULL, '1', '896413', '2024-09-07 16:54:21', NULL, NULL, '896413', '2024-09-07 16:54:21', '0', '1', 'A');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('10', '1', 'CV-10', 'CV', '1002', '2024-09-07', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '5000.00', '0.00', '3010301', '1', NULL, '1', '896413', '2024-09-07 16:54:35', NULL, NULL, '896413', '2024-09-07 16:54:35', '0', '1', 'B');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('11', '1', 'CV-11', 'CV', '1007', '2024-09-07', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '5000.00', '0.00', '3010301', '1', NULL, '1', '896413', '2024-09-07 16:54:50', NULL, NULL, '896413', '2024-09-07 16:54:50', '0', '1', 'A');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('12', '1', 'CV-12', 'CV', '1008', '2024-09-07', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '1200.00', '0.00', '3010301', '1', NULL, '1', '896413', '2024-09-07 16:58:57', NULL, NULL, '896413', '2024-09-07 16:58:57', '0', '1', 'A');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('13', '1', 'CV-13', 'CV', '1003', '2024-09-07', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '300.00', '0.00', '3010301', '1', NULL, '1', '896413', '2024-09-07 16:59:29', NULL, NULL, '896413', '2024-09-07 16:59:29', '0', '1', 'B');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('14', '1', 'CV-14', 'CV', '1004', '2024-09-07', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '8000.00', '0.00', '3010301', '1', NULL, '1', '896413', '2024-09-07 16:59:59', NULL, NULL, '896413', '2024-09-07 16:59:59', '0', '1', 'B');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('15', '1', 'CV-15', 'CV', '1009', '2024-09-07', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '3500.00', '0.00', '3010301', '1', NULL, '1', '896413', '2024-09-07 17:00:31', NULL, NULL, '896413', '2024-09-07 17:00:31', '0', '1', 'A');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('16', '1', 'CV-16', 'CV', '1010', '2024-09-07', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '1400.00', '0.00', '3010301', '1', NULL, '1', '896413', '2024-09-07 17:08:10', NULL, NULL, '896413', '2024-09-07 17:08:10', '0', '1', 'A');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('17', '1', 'CV-17', 'CV', '1011', '2024-09-08', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '28700.00', '0.00', '3010301', '1', NULL, '1', '399685', '2024-09-08 00:27:17', NULL, NULL, '399685', '2024-09-08 00:27:17', '0', '1', 'A');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('18', '1', 'CV-18', 'CV', '1005', '2024-09-08', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '24900.00', '0.00', '3010301', '1', NULL, '1', '399685', '2024-09-08 00:27:45', NULL, NULL, '399685', '2024-09-08 00:27:45', '0', '1', 'B');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('19', '1', 'CV-19', 'CV', '1006', '2024-09-08', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '25200.00', '0.00', '3010301', '1', NULL, '1', '399685', '2024-09-08 00:28:03', NULL, NULL, '399685', '2024-09-08 00:28:03', '0', '1', 'B');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('20', '1', 'CV-20', 'CV', '1000', '2024-09-08', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '2000.00', '0.00', '3010301', '1', NULL, '1', '1', '2024-09-08 00:52:29', NULL, NULL, '1', '2024-09-08 00:52:29', '0', '1', '');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('21', '1', 'CV-21', 'CV', '1010', '2024-09-08', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '1400.00', '0.00', '3010301', '1', NULL, '1', '1', '2024-09-08 00:54:01', NULL, NULL, '1', '2024-09-08 00:54:01', '0', '1', '');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('22', '1', 'CV-22', 'CV', '1009', '2024-09-08', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '3500.00', '0.00', '3010301', '1', NULL, '1', '1', '2024-09-08 00:54:15', NULL, NULL, '1', '2024-09-08 00:54:15', '0', '1', '');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('23', '1', 'CV-23', 'CV', '1008', '2024-09-08', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '1200.00', '0.00', '3010301', '1', NULL, '1', '1', '2024-09-08 00:54:29', NULL, NULL, '1', '2024-09-08 00:54:29', '0', '1', '');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('24', '1', 'CV-24', 'CV', '1007', '2024-09-08', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '5000.00', '0.00', '3010301', '1', NULL, '1', '1', '2024-09-08 00:54:47', NULL, NULL, '1', '2024-09-08 00:54:47', '0', '1', '');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('25', '1', 'CV-25', 'CV', '1006', '2024-09-08', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '5000.00', '0.00', '3010301', '1', NULL, '1', '1', '2024-09-08 00:55:03', NULL, NULL, '1', '2024-09-08 00:55:03', '0', '1', '');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('26', '1', 'CV-26', 'CV', '1005', '2024-09-08', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '400.00', '0.00', '3010301', '1', NULL, '1', '1', '2024-09-08 00:55:17', NULL, NULL, '1', '2024-09-08 00:55:17', '0', '1', '');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('27', '1', 'CV-27', 'CV', '1004', '2024-09-08', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '7000.00', '0.00', '3010301', '1', NULL, '1', '1', '2024-09-08 00:55:31', NULL, NULL, '1', '2024-09-08 00:55:31', '0', '1', '');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('28', '1', 'CV-28', 'CV', '1003', '2024-09-08', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '1400.00', '0.00', '3010301', '1', NULL, '1', '1', '2024-09-08 00:55:49', NULL, NULL, '1', '2024-09-08 00:55:49', '0', '1', '');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('29', '1', 'CV-29', 'CV', '1002', '2024-09-08', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '1200.00', '0.00', '3010301', '1', NULL, '1', '1', '2024-09-08 00:56:02', NULL, NULL, '1', '2024-09-08 00:56:02', '0', '1', '');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('30', '1', 'CV-30', 'CV', '1001', '2024-09-08', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '3500.00', '0.00', '3010301', '1', NULL, '1', '1', '2024-09-08 00:56:17', NULL, NULL, '1', '2024-09-08 00:56:17', '0', '1', '');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('31', '1', 'CV-31', 'CV', '1004', '2024-09-08', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '8000.00', '0.00', '3010301', '1', NULL, '1', '1', '2024-09-08 00:56:49', NULL, NULL, '1', '2024-09-08 00:56:49', '0', '1', '');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('32', '1', 'CV-32', 'CV', '1003', '2024-09-08', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '300.00', '0.00', '3010301', '1', NULL, '1', '1', '2024-09-08 00:57:05', NULL, NULL, '1', '2024-09-08 00:57:05', '0', '1', '');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('33', '1', 'CV-33', 'CV', '1002', '2024-09-08', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '5000.00', '0.00', '3010301', '1', NULL, '1', '1', '2024-09-08 00:57:22', NULL, NULL, '1', '2024-09-08 00:57:22', '0', '1', '');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('34', '1', 'CV-34', 'CV', '1001', '2024-09-08', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '17500.00', '0.00', '3010301', '1', NULL, '1', '1', '2024-09-08 00:57:48', NULL, NULL, '1', '2024-09-08 00:57:48', '0', '1', '');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('35', '1', 'CV-35', 'CV', '1000', '2024-09-08', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '3500.00', '0.00', '3010301', '1', NULL, '1', '1', '2024-09-08 00:58:13', NULL, NULL, '1', '2024-09-08 00:58:13', '0', '1', '');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('36', '1', 'CV-36', 'CV', '1012', '2024-09-08', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '48700.00', '0.00', '3010301', '1', NULL, '1', '1', '2024-09-08 11:44:01', NULL, NULL, '1', '2024-09-08 11:44:01', '0', '1', 'A');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('37', '1', 'CV-37', 'CV', '1012', '2024-09-08', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '48700.00', '0.00', '3010301', '1', NULL, '1', '1', '2024-09-08 23:44:08', NULL, NULL, '1', '2024-09-08 23:44:08', '0', '1', '');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('38', '1', 'CV-38', 'CV', '1011', '2024-09-08', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '28700.00', '0.00', '3010301', '1', NULL, '1', '1', '2024-09-08 23:44:31', NULL, NULL, '1', '2024-09-08 23:44:31', '0', '1', '');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('39', '1', 'CV-39', 'CV', '1010', '2024-09-08', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '1400.00', '0.00', '3010301', '1', NULL, '1', '1', '2024-09-08 23:44:50', NULL, NULL, '1', '2024-09-08 23:44:50', '0', '1', '');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('40', '1', 'CV-40', 'CV', '1009', '2024-09-08', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '3500.00', '0.00', '3010301', '1', NULL, '1', '1', '2024-09-08 23:45:06', NULL, NULL, '1', '2024-09-08 23:45:06', '0', '1', '');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('41', '1', 'CV-41', 'CV', '1008', '2024-09-08', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '1200.00', '0.00', '3010301', '1', NULL, '1', '1', '2024-09-08 23:45:31', NULL, NULL, '1', '2024-09-08 23:45:31', '0', '1', '');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('42', '1', 'CV-42', 'CV', '1007', '2024-09-08', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '5000.00', '0.00', '3010301', '1', NULL, '1', '1', '2024-09-08 23:45:48', NULL, NULL, '1', '2024-09-08 23:45:48', '0', '1', '');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('43', '1', 'CV-43', 'CV', '1006', '2024-09-08', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '5000.00', '0.00', '3010301', '1', NULL, '1', '1', '2024-09-08 23:46:03', NULL, NULL, '1', '2024-09-08 23:46:03', '0', '1', '');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('44', '1', 'CV-44', 'CV', '1005', '2024-09-08', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '400.00', '0.00', '3010301', '1', NULL, '1', '1', '2024-09-08 23:46:21', NULL, NULL, '1', '2024-09-08 23:46:21', '0', '1', '');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('45', '1', 'CV-45', 'CV', '1000', '2024-09-09', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '3500.00', '0.00', '3010301', '1', NULL, '1', '1', '2024-09-09 00:27:37', NULL, NULL, '1', '2024-09-09 00:27:37', '0', '1', '');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('46', '1', 'CV-46', 'CV', '1001', '2024-09-09', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '17500.00', '0.00', '3010301', '1', NULL, '1', '1', '2024-09-09 00:28:07', NULL, NULL, '1', '2024-09-09 00:28:07', '0', '1', '');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('47', '1', 'CV-47', 'CV', '1002', '2024-09-09', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '5000.00', '0.00', '3010301', '1', NULL, '1', '1', '2024-09-09 00:28:33', NULL, NULL, '1', '2024-09-09 00:28:33', '0', '1', '');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('48', '1', 'CV-48', 'CV', '1003', '2024-09-09', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '300.00', '0.00', '3010301', '1', NULL, '1', '1', '2024-09-09 00:28:57', NULL, NULL, '1', '2024-09-09 00:28:57', '0', '1', '');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('49', '1', 'CV-49', 'CV', '1004', '2024-09-09', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '8000.00', '0.00', '3010301', '1', NULL, '1', '1', '2024-09-09 00:29:07', NULL, NULL, '1', '2024-09-09 00:29:07', '0', '1', '');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('50', '1', 'CV-50', 'CV', '1005', '2024-09-09', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '24900.00', '0.00', '3010301', '1', NULL, '1', '1', '2024-09-09 00:29:40', NULL, NULL, '1', '2024-09-09 00:29:40', '0', '1', '');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('51', '1', 'CV-51', 'CV', '1006', '2024-09-09', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '25200.00', '0.00', '3010301', '1', NULL, '1', '1', '2024-09-09 00:29:52', NULL, NULL, '1', '2024-09-09 00:29:52', '0', '1', '');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('52', '1', 'CV-52', 'CV', '1013', '2024-09-09', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '8900.00', '0.00', '3010301', '1', NULL, '1', '1', '2024-09-09 18:19:48', NULL, NULL, '1', '2024-09-09 18:19:48', '0', '1', 'A');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('53', '1', 'CV-53', 'CV', '1007', '2024-09-09', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '12200.00', '0.00', '3010301', '1', NULL, '1', '1', '2024-09-09 18:21:42', NULL, NULL, '1', '2024-09-09 18:21:42', '0', '1', 'B');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('54', '1', 'CV-54', 'CV', '1014', '2024-09-09', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '4500.00', '0.00', '3010301', '1', NULL, '1', '1', '2024-09-09 20:31:21', NULL, NULL, '1', '2024-09-09 20:31:21', '0', '1', 'A');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('55', '1', 'CV-55', 'CV', '1015', '2024-09-09', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '10500.00', '0.00', '3010301', '1', NULL, '1', '1', '2024-09-09 20:34:56', NULL, NULL, '1', '2024-09-09 20:34:56', '0', '1', 'A');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('56', '1', 'CV-56', 'CV', '1016', '2024-09-14', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '14400.00', '0.00', '3010301', '1', NULL, '1', '1', '2024-09-14 13:13:45', NULL, NULL, '1', '2024-09-14 13:13:45', '0', '1', 'A');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('57', '1', 'CV-57', 'CV', '1017', '2024-09-14', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '6400.00', '0.00', '3010301', '1', NULL, '1', '1', '2024-09-14 13:14:39', NULL, NULL, '1', '2024-09-14 13:14:39', '0', '1', 'A');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('58', '1', 'CV-58', 'CV', '1018', '2024-09-14', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '400.00', '0.00', '3010301', '1', NULL, '1', '1', '2024-09-14 13:51:49', NULL, NULL, '1', '2024-09-14 13:51:49', '0', '1', 'A');
INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`, `type`) VALUES ('59', '1', 'CV-59', 'CV', '1008', '2024-09-14', '1020101', 'Sales Voucher', NULL, NULL, '0', 'Sales Voucher for customer', '1400.00', '0.00', '3010301', '1', NULL, '1', '1', '2024-09-14 13:52:26', NULL, NULL, '1', '2024-09-14 13:52:26', '0', '1', 'B');


#
# TABLE STRUCTURE FOR: activity_logs
#

DROP TABLE IF EXISTS `activity_logs`;

CREATE TABLE `activity_logs` (
  `activity_id` int(11) NOT NULL,
  `user_id` varchar(11) NOT NULL COMMENT 'for employee , it will save employee_id',
  `type` varchar(30) NOT NULL COMMENT 'ticket, employee, attendnace etc.',
  `action` varchar(15) NOT NULL COMMENT 'create, update, delete',
  `action_id` varchar(15) NOT NULL,
  `table_name` varchar(30) DEFAULT NULL,
  `slug` varchar(150) NOT NULL,
  `form_data` text DEFAULT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1=created, 2=updated, 3=deleted	'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'financial_year', 'create', '1', 'financial_year', 'financial_year', '{\"yearName\":\"2024\",\"startDate\":\"2024-01-01\",\"endDate\":\"2024-12-31\",\"status\":\"1\",\"created_by\":\"1\",\"created_date\":\"2024-03-04 08:01:24\"}', '2024-03-05 00:31:24', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_transation', 'create', '1', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"1\",\"fyear\":\"1\",\"VNo\":\"CV-1\",\"Vtype\":\"CV\",\"referenceNo\":\"1004\",\"VDate\":\"2024-09-01\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"6000.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-01 00:21:12\"}', '2024-09-01 00:21:12', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_reversetransa', 'create', '2', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"1\",\"fyear\":\"1\",\"VNo\":\"CV-1\",\"Vtype\":\"CV\",\"referenceNo\":\"1004\",\"VDate\":\"2024-09-01\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"6000.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-01 00:21:12\"}', '2024-09-01 00:21:12', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_transation', 'create', '3', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"2\",\"fyear\":\"1\",\"VNo\":\"CV-2\",\"Vtype\":\"CV\",\"referenceNo\":\"1003\",\"VDate\":\"2024-09-02\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"7500.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-02 02:04:21\"}', '2024-09-02 02:04:21', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_reversetransa', 'create', '4', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"2\",\"fyear\":\"1\",\"VNo\":\"CV-2\",\"Vtype\":\"CV\",\"referenceNo\":\"1003\",\"VDate\":\"2024-09-02\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"7500.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-02 02:04:21\"}', '2024-09-02 02:04:21', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_transation', 'create', '5', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"3\",\"fyear\":\"1\",\"VNo\":\"CV-3\",\"Vtype\":\"CV\",\"referenceNo\":\"1005\",\"VDate\":\"2024-09-02\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"2000.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-02 02:05:23\"}', '2024-09-02 02:05:23', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_reversetransa', 'create', '6', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"3\",\"fyear\":\"1\",\"VNo\":\"CV-3\",\"Vtype\":\"CV\",\"referenceNo\":\"1005\",\"VDate\":\"2024-09-02\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"2000.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-02 02:05:23\"}', '2024-09-02 02:05:23', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_transation', 'create', '7', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"4\",\"fyear\":\"1\",\"VNo\":\"CV-4\",\"Vtype\":\"CV\",\"referenceNo\":\"1006\",\"VDate\":\"2024-09-04\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"550000.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-04 21:18:52\"}', '2024-09-04 21:18:52', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_reversetransa', 'create', '8', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"4\",\"fyear\":\"1\",\"VNo\":\"CV-4\",\"Vtype\":\"CV\",\"referenceNo\":\"1006\",\"VDate\":\"2024-09-04\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"550000.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-04 21:18:52\"}', '2024-09-04 21:18:52', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_transation', 'create', '9', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"5\",\"fyear\":\"1\",\"VNo\":\"CV-5\",\"Vtype\":\"CV\",\"referenceNo\":\"1004\",\"VDate\":\"2024-09-04\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"7500.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-04 21:56:43\"}', '2024-09-04 21:56:43', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_reversetransa', 'create', '10', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"5\",\"fyear\":\"1\",\"VNo\":\"CV-5\",\"Vtype\":\"CV\",\"referenceNo\":\"1004\",\"VDate\":\"2024-09-04\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"7500.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-04 21:56:43\"}', '2024-09-04 21:56:43', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_transation', 'create', '11', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"6\",\"fyear\":\"1\",\"VNo\":\"CV-6\",\"Vtype\":\"CV\",\"referenceNo\":\"1007\",\"VDate\":\"2024-09-04\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"2000.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-04 21:57:10\"}', '2024-09-04 21:57:10', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_reversetransa', 'create', '12', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"6\",\"fyear\":\"1\",\"VNo\":\"CV-6\",\"Vtype\":\"CV\",\"referenceNo\":\"1007\",\"VDate\":\"2024-09-04\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"2000.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-04 21:57:10\"}', '2024-09-04 21:57:10', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '976196', 'approved_vaucher_transation', 'create', '13', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"7\",\"fyear\":\"1\",\"VNo\":\"CV-7\",\"Vtype\":\"CV\",\"referenceNo\":\"1005\",\"VDate\":\"2024-09-05\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"250000.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"976196\",\"CreateDate\":\"2024-09-05 23:13:22\"}', '2024-09-05 23:13:22', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '976196', 'approved_vaucher_reversetransa', 'create', '14', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"7\",\"fyear\":\"1\",\"VNo\":\"CV-7\",\"Vtype\":\"CV\",\"referenceNo\":\"1005\",\"VDate\":\"2024-09-05\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"250000.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"976196\",\"CreateDate\":\"2024-09-05 23:13:22\"}', '2024-09-05 23:13:22', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '976196', 'approved_vaucher_transation', 'create', '15', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"8\",\"fyear\":\"1\",\"VNo\":\"CV-8\",\"Vtype\":\"CV\",\"referenceNo\":\"1006\",\"VDate\":\"2024-09-05\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"400000.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"976196\",\"CreateDate\":\"2024-09-05 23:13:42\"}', '2024-09-05 23:13:42', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '976196', 'approved_vaucher_reversetransa', 'create', '16', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"8\",\"fyear\":\"1\",\"VNo\":\"CV-8\",\"Vtype\":\"CV\",\"referenceNo\":\"1006\",\"VDate\":\"2024-09-05\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"400000.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"976196\",\"CreateDate\":\"2024-09-05 23:13:42\"}', '2024-09-05 23:13:42', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '976196', 'approved_vaucher_transation', 'create', '17', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"9\",\"fyear\":\"1\",\"VNo\":\"CV-9\",\"Vtype\":\"CV\",\"referenceNo\":\"1008\",\"VDate\":\"2024-09-05\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"3500.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"976196\",\"CreateDate\":\"2024-09-05 23:31:19\"}', '2024-09-05 23:31:19', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '976196', 'approved_vaucher_reversetransa', 'create', '18', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"9\",\"fyear\":\"1\",\"VNo\":\"CV-9\",\"Vtype\":\"CV\",\"referenceNo\":\"1008\",\"VDate\":\"2024-09-05\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"3500.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"976196\",\"CreateDate\":\"2024-09-05 23:31:19\"}', '2024-09-05 23:31:19', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '976196', 'approved_vaucher_transation', 'create', '19', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"10\",\"fyear\":\"1\",\"VNo\":\"CV-10\",\"Vtype\":\"CV\",\"referenceNo\":\"1009\",\"VDate\":\"2024-09-05\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"454500.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"976196\",\"CreateDate\":\"2024-09-05 23:32:10\"}', '2024-09-05 23:32:10', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '976196', 'approved_vaucher_reversetransa', 'create', '20', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"10\",\"fyear\":\"1\",\"VNo\":\"CV-10\",\"Vtype\":\"CV\",\"referenceNo\":\"1009\",\"VDate\":\"2024-09-05\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"454500.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"976196\",\"CreateDate\":\"2024-09-05 23:32:10\"}', '2024-09-05 23:32:10', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_transation', 'create', '1', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"1\",\"fyear\":\"1\",\"VNo\":\"CV-1\",\"Vtype\":\"CV\",\"referenceNo\":\"1000\",\"VDate\":\"2024-09-06\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"3200.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-06 20:15:05\"}', '2024-09-06 20:15:06', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_reversetransa', 'create', '2', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"1\",\"fyear\":\"1\",\"VNo\":\"CV-1\",\"Vtype\":\"CV\",\"referenceNo\":\"1000\",\"VDate\":\"2024-09-06\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"3200.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-06 20:15:05\"}', '2024-09-06 20:15:06', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '976196', 'approved_vaucher_transation', 'create', '1', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"1\",\"fyear\":\"1\",\"VNo\":\"CV-1\",\"Vtype\":\"CV\",\"referenceNo\":\"1000\",\"VDate\":\"2024-09-07\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"2000.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"976196\",\"CreateDate\":\"2024-09-07 15:43:31\"}', '2024-09-07 15:43:31', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '976196', 'approved_vaucher_reversetransa', 'create', '2', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"1\",\"fyear\":\"1\",\"VNo\":\"CV-1\",\"Vtype\":\"CV\",\"referenceNo\":\"1000\",\"VDate\":\"2024-09-07\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"2000.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"976196\",\"CreateDate\":\"2024-09-07 15:43:31\"}', '2024-09-07 15:43:31', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '976196', 'approved_vaucher_transation', 'create', '3', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"2\",\"fyear\":\"1\",\"VNo\":\"CV-2\",\"Vtype\":\"CV\",\"referenceNo\":\"1000\",\"VDate\":\"2024-09-07\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"3500.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"976196\",\"CreateDate\":\"2024-09-07 15:43:50\"}', '2024-09-07 15:43:50', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '976196', 'approved_vaucher_reversetransa', 'create', '4', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"2\",\"fyear\":\"1\",\"VNo\":\"CV-2\",\"Vtype\":\"CV\",\"referenceNo\":\"1000\",\"VDate\":\"2024-09-07\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"3500.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"976196\",\"CreateDate\":\"2024-09-07 15:43:50\"}', '2024-09-07 15:43:50', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '896413', 'approved_vaucher_transation', 'create', '5', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"3\",\"fyear\":\"1\",\"VNo\":\"CV-3\",\"Vtype\":\"CV\",\"referenceNo\":\"1001\",\"VDate\":\"2024-09-07\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"3500.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"896413\",\"CreateDate\":\"2024-09-07 16:07:19\"}', '2024-09-07 16:07:19', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '896413', 'approved_vaucher_reversetransa', 'create', '6', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"3\",\"fyear\":\"1\",\"VNo\":\"CV-3\",\"Vtype\":\"CV\",\"referenceNo\":\"1001\",\"VDate\":\"2024-09-07\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"3500.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"896413\",\"CreateDate\":\"2024-09-07 16:07:19\"}', '2024-09-07 16:07:19', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '896413', 'approved_vaucher_transation', 'create', '7', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"4\",\"fyear\":\"1\",\"VNo\":\"CV-4\",\"Vtype\":\"CV\",\"referenceNo\":\"1001\",\"VDate\":\"2024-09-07\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"17500.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"896413\",\"CreateDate\":\"2024-09-07 16:07:46\"}', '2024-09-07 16:07:46', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '896413', 'approved_vaucher_reversetransa', 'create', '8', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"4\",\"fyear\":\"1\",\"VNo\":\"CV-4\",\"Vtype\":\"CV\",\"referenceNo\":\"1001\",\"VDate\":\"2024-09-07\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"17500.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"896413\",\"CreateDate\":\"2024-09-07 16:07:46\"}', '2024-09-07 16:07:46', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '896413', 'approved_vaucher_transation', 'create', '9', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"5\",\"fyear\":\"1\",\"VNo\":\"CV-5\",\"Vtype\":\"CV\",\"referenceNo\":\"1002\",\"VDate\":\"2024-09-07\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"1200.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"896413\",\"CreateDate\":\"2024-09-07 16:08:00\"}', '2024-09-07 16:08:00', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '896413', 'approved_vaucher_reversetransa', 'create', '10', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"5\",\"fyear\":\"1\",\"VNo\":\"CV-5\",\"Vtype\":\"CV\",\"referenceNo\":\"1002\",\"VDate\":\"2024-09-07\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"1200.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"896413\",\"CreateDate\":\"2024-09-07 16:08:00\"}', '2024-09-07 16:08:00', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '896413', 'approved_vaucher_transation', 'create', '11', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"6\",\"fyear\":\"1\",\"VNo\":\"CV-6\",\"Vtype\":\"CV\",\"referenceNo\":\"1003\",\"VDate\":\"2024-09-07\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"1400.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"896413\",\"CreateDate\":\"2024-09-07 16:10:34\"}', '2024-09-07 16:10:34', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '896413', 'approved_vaucher_reversetransa', 'create', '12', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"6\",\"fyear\":\"1\",\"VNo\":\"CV-6\",\"Vtype\":\"CV\",\"referenceNo\":\"1003\",\"VDate\":\"2024-09-07\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"1400.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"896413\",\"CreateDate\":\"2024-09-07 16:10:34\"}', '2024-09-07 16:10:34', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '896413', 'approved_vaucher_transation', 'create', '13', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"7\",\"fyear\":\"1\",\"VNo\":\"CV-7\",\"Vtype\":\"CV\",\"referenceNo\":\"1004\",\"VDate\":\"2024-09-07\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"7000.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"896413\",\"CreateDate\":\"2024-09-07 16:13:19\"}', '2024-09-07 16:13:19', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '896413', 'approved_vaucher_reversetransa', 'create', '14', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"7\",\"fyear\":\"1\",\"VNo\":\"CV-7\",\"Vtype\":\"CV\",\"referenceNo\":\"1004\",\"VDate\":\"2024-09-07\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"7000.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"896413\",\"CreateDate\":\"2024-09-07 16:13:19\"}', '2024-09-07 16:13:19', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '896413', 'approved_vaucher_transation', 'create', '15', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"8\",\"fyear\":\"1\",\"VNo\":\"CV-8\",\"Vtype\":\"CV\",\"referenceNo\":\"1005\",\"VDate\":\"2024-09-07\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"400.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"896413\",\"CreateDate\":\"2024-09-07 16:14:31\"}', '2024-09-07 16:14:31', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '896413', 'approved_vaucher_reversetransa', 'create', '16', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"8\",\"fyear\":\"1\",\"VNo\":\"CV-8\",\"Vtype\":\"CV\",\"referenceNo\":\"1005\",\"VDate\":\"2024-09-07\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"400.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"896413\",\"CreateDate\":\"2024-09-07 16:14:31\"}', '2024-09-07 16:14:31', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '896413', 'approved_vaucher_transation', 'create', '17', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"9\",\"fyear\":\"1\",\"VNo\":\"CV-9\",\"Vtype\":\"CV\",\"referenceNo\":\"1006\",\"VDate\":\"2024-09-07\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"5000.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"896413\",\"CreateDate\":\"2024-09-07 16:54:21\"}', '2024-09-07 16:54:21', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '896413', 'approved_vaucher_reversetransa', 'create', '18', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"9\",\"fyear\":\"1\",\"VNo\":\"CV-9\",\"Vtype\":\"CV\",\"referenceNo\":\"1006\",\"VDate\":\"2024-09-07\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"5000.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"896413\",\"CreateDate\":\"2024-09-07 16:54:21\"}', '2024-09-07 16:54:21', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '896413', 'approved_vaucher_transation', 'create', '19', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"10\",\"fyear\":\"1\",\"VNo\":\"CV-10\",\"Vtype\":\"CV\",\"referenceNo\":\"1002\",\"VDate\":\"2024-09-07\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"5000.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"896413\",\"CreateDate\":\"2024-09-07 16:54:35\"}', '2024-09-07 16:54:35', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '896413', 'approved_vaucher_reversetransa', 'create', '20', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"10\",\"fyear\":\"1\",\"VNo\":\"CV-10\",\"Vtype\":\"CV\",\"referenceNo\":\"1002\",\"VDate\":\"2024-09-07\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"5000.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"896413\",\"CreateDate\":\"2024-09-07 16:54:35\"}', '2024-09-07 16:54:35', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '896413', 'approved_vaucher_transation', 'create', '21', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"11\",\"fyear\":\"1\",\"VNo\":\"CV-11\",\"Vtype\":\"CV\",\"referenceNo\":\"1007\",\"VDate\":\"2024-09-07\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"5000.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"896413\",\"CreateDate\":\"2024-09-07 16:54:50\"}', '2024-09-07 16:54:50', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '896413', 'approved_vaucher_reversetransa', 'create', '22', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"11\",\"fyear\":\"1\",\"VNo\":\"CV-11\",\"Vtype\":\"CV\",\"referenceNo\":\"1007\",\"VDate\":\"2024-09-07\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"5000.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"896413\",\"CreateDate\":\"2024-09-07 16:54:50\"}', '2024-09-07 16:54:50', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '896413', 'approved_vaucher_transation', 'create', '23', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"12\",\"fyear\":\"1\",\"VNo\":\"CV-12\",\"Vtype\":\"CV\",\"referenceNo\":\"1008\",\"VDate\":\"2024-09-07\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"1200.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"896413\",\"CreateDate\":\"2024-09-07 16:58:57\"}', '2024-09-07 16:58:57', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '896413', 'approved_vaucher_reversetransa', 'create', '24', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"12\",\"fyear\":\"1\",\"VNo\":\"CV-12\",\"Vtype\":\"CV\",\"referenceNo\":\"1008\",\"VDate\":\"2024-09-07\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"1200.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"896413\",\"CreateDate\":\"2024-09-07 16:58:57\"}', '2024-09-07 16:58:57', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '896413', 'approved_vaucher_transation', 'create', '25', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"13\",\"fyear\":\"1\",\"VNo\":\"CV-13\",\"Vtype\":\"CV\",\"referenceNo\":\"1003\",\"VDate\":\"2024-09-07\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"300.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"896413\",\"CreateDate\":\"2024-09-07 16:59:29\"}', '2024-09-07 16:59:29', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '896413', 'approved_vaucher_reversetransa', 'create', '26', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"13\",\"fyear\":\"1\",\"VNo\":\"CV-13\",\"Vtype\":\"CV\",\"referenceNo\":\"1003\",\"VDate\":\"2024-09-07\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"300.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"896413\",\"CreateDate\":\"2024-09-07 16:59:29\"}', '2024-09-07 16:59:29', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '896413', 'approved_vaucher_transation', 'create', '27', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"14\",\"fyear\":\"1\",\"VNo\":\"CV-14\",\"Vtype\":\"CV\",\"referenceNo\":\"1004\",\"VDate\":\"2024-09-07\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"8000.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"896413\",\"CreateDate\":\"2024-09-07 16:59:59\"}', '2024-09-07 16:59:59', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '896413', 'approved_vaucher_reversetransa', 'create', '28', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"14\",\"fyear\":\"1\",\"VNo\":\"CV-14\",\"Vtype\":\"CV\",\"referenceNo\":\"1004\",\"VDate\":\"2024-09-07\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"8000.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"896413\",\"CreateDate\":\"2024-09-07 16:59:59\"}', '2024-09-07 16:59:59', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '896413', 'approved_vaucher_transation', 'create', '29', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"15\",\"fyear\":\"1\",\"VNo\":\"CV-15\",\"Vtype\":\"CV\",\"referenceNo\":\"1009\",\"VDate\":\"2024-09-07\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"3500.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"896413\",\"CreateDate\":\"2024-09-07 17:00:31\"}', '2024-09-07 17:00:31', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '896413', 'approved_vaucher_reversetransa', 'create', '30', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"15\",\"fyear\":\"1\",\"VNo\":\"CV-15\",\"Vtype\":\"CV\",\"referenceNo\":\"1009\",\"VDate\":\"2024-09-07\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"3500.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"896413\",\"CreateDate\":\"2024-09-07 17:00:31\"}', '2024-09-07 17:00:32', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '896413', 'approved_vaucher_transation', 'create', '31', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"16\",\"fyear\":\"1\",\"VNo\":\"CV-16\",\"Vtype\":\"CV\",\"referenceNo\":\"1010\",\"VDate\":\"2024-09-07\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"1400.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"896413\",\"CreateDate\":\"2024-09-07 17:08:10\"}', '2024-09-07 17:08:10', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '896413', 'approved_vaucher_reversetransa', 'create', '32', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"16\",\"fyear\":\"1\",\"VNo\":\"CV-16\",\"Vtype\":\"CV\",\"referenceNo\":\"1010\",\"VDate\":\"2024-09-07\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"1400.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"896413\",\"CreateDate\":\"2024-09-07 17:08:10\"}', '2024-09-07 17:08:10', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '399685', 'approved_vaucher_transation', 'create', '33', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"17\",\"fyear\":\"1\",\"VNo\":\"CV-17\",\"Vtype\":\"CV\",\"referenceNo\":\"1011\",\"VDate\":\"2024-09-08\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"28700.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"399685\",\"CreateDate\":\"2024-09-08 00:27:17\"}', '2024-09-08 00:27:17', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '399685', 'approved_vaucher_reversetransa', 'create', '34', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"17\",\"fyear\":\"1\",\"VNo\":\"CV-17\",\"Vtype\":\"CV\",\"referenceNo\":\"1011\",\"VDate\":\"2024-09-08\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"28700.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"399685\",\"CreateDate\":\"2024-09-08 00:27:17\"}', '2024-09-08 00:27:17', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '399685', 'approved_vaucher_transation', 'create', '35', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"18\",\"fyear\":\"1\",\"VNo\":\"CV-18\",\"Vtype\":\"CV\",\"referenceNo\":\"1005\",\"VDate\":\"2024-09-08\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"24900.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"399685\",\"CreateDate\":\"2024-09-08 00:27:45\"}', '2024-09-08 00:27:45', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '399685', 'approved_vaucher_reversetransa', 'create', '36', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"18\",\"fyear\":\"1\",\"VNo\":\"CV-18\",\"Vtype\":\"CV\",\"referenceNo\":\"1005\",\"VDate\":\"2024-09-08\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"24900.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"399685\",\"CreateDate\":\"2024-09-08 00:27:45\"}', '2024-09-08 00:27:45', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '399685', 'approved_vaucher_transation', 'create', '37', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"19\",\"fyear\":\"1\",\"VNo\":\"CV-19\",\"Vtype\":\"CV\",\"referenceNo\":\"1006\",\"VDate\":\"2024-09-08\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"25200.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"399685\",\"CreateDate\":\"2024-09-08 00:28:03\"}', '2024-09-08 00:28:03', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '399685', 'approved_vaucher_reversetransa', 'create', '38', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"19\",\"fyear\":\"1\",\"VNo\":\"CV-19\",\"Vtype\":\"CV\",\"referenceNo\":\"1006\",\"VDate\":\"2024-09-08\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"25200.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"399685\",\"CreateDate\":\"2024-09-08 00:28:03\"}', '2024-09-08 00:28:03', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_transation', 'create', '39', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"20\",\"fyear\":\"1\",\"VNo\":\"CV-20\",\"Vtype\":\"CV\",\"referenceNo\":\"1000\",\"VDate\":\"2024-09-08\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"2000.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-08 00:52:29\"}', '2024-09-08 00:52:29', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_reversetransa', 'create', '40', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"20\",\"fyear\":\"1\",\"VNo\":\"CV-20\",\"Vtype\":\"CV\",\"referenceNo\":\"1000\",\"VDate\":\"2024-09-08\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"2000.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-08 00:52:29\"}', '2024-09-08 00:52:29', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_transation', 'create', '41', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"21\",\"fyear\":\"1\",\"VNo\":\"CV-21\",\"Vtype\":\"CV\",\"referenceNo\":\"1010\",\"VDate\":\"2024-09-08\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"1400.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-08 00:54:01\"}', '2024-09-08 00:54:01', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_reversetransa', 'create', '42', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"21\",\"fyear\":\"1\",\"VNo\":\"CV-21\",\"Vtype\":\"CV\",\"referenceNo\":\"1010\",\"VDate\":\"2024-09-08\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"1400.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-08 00:54:01\"}', '2024-09-08 00:54:01', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_transation', 'create', '43', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"22\",\"fyear\":\"1\",\"VNo\":\"CV-22\",\"Vtype\":\"CV\",\"referenceNo\":\"1009\",\"VDate\":\"2024-09-08\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"3500.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-08 00:54:15\"}', '2024-09-08 00:54:15', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_reversetransa', 'create', '44', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"22\",\"fyear\":\"1\",\"VNo\":\"CV-22\",\"Vtype\":\"CV\",\"referenceNo\":\"1009\",\"VDate\":\"2024-09-08\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"3500.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-08 00:54:15\"}', '2024-09-08 00:54:15', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_transation', 'create', '45', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"23\",\"fyear\":\"1\",\"VNo\":\"CV-23\",\"Vtype\":\"CV\",\"referenceNo\":\"1008\",\"VDate\":\"2024-09-08\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"1200.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-08 00:54:29\"}', '2024-09-08 00:54:29', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_reversetransa', 'create', '46', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"23\",\"fyear\":\"1\",\"VNo\":\"CV-23\",\"Vtype\":\"CV\",\"referenceNo\":\"1008\",\"VDate\":\"2024-09-08\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"1200.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-08 00:54:29\"}', '2024-09-08 00:54:29', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_transation', 'create', '47', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"24\",\"fyear\":\"1\",\"VNo\":\"CV-24\",\"Vtype\":\"CV\",\"referenceNo\":\"1007\",\"VDate\":\"2024-09-08\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"5000.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-08 00:54:47\"}', '2024-09-08 00:54:47', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_reversetransa', 'create', '48', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"24\",\"fyear\":\"1\",\"VNo\":\"CV-24\",\"Vtype\":\"CV\",\"referenceNo\":\"1007\",\"VDate\":\"2024-09-08\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"5000.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-08 00:54:47\"}', '2024-09-08 00:54:47', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_transation', 'create', '49', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"25\",\"fyear\":\"1\",\"VNo\":\"CV-25\",\"Vtype\":\"CV\",\"referenceNo\":\"1006\",\"VDate\":\"2024-09-08\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"5000.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-08 00:55:03\"}', '2024-09-08 00:55:03', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_reversetransa', 'create', '50', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"25\",\"fyear\":\"1\",\"VNo\":\"CV-25\",\"Vtype\":\"CV\",\"referenceNo\":\"1006\",\"VDate\":\"2024-09-08\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"5000.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-08 00:55:03\"}', '2024-09-08 00:55:03', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_transation', 'create', '51', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"26\",\"fyear\":\"1\",\"VNo\":\"CV-26\",\"Vtype\":\"CV\",\"referenceNo\":\"1005\",\"VDate\":\"2024-09-08\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"400.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-08 00:55:17\"}', '2024-09-08 00:55:17', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_reversetransa', 'create', '52', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"26\",\"fyear\":\"1\",\"VNo\":\"CV-26\",\"Vtype\":\"CV\",\"referenceNo\":\"1005\",\"VDate\":\"2024-09-08\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"400.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-08 00:55:17\"}', '2024-09-08 00:55:17', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_transation', 'create', '53', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"27\",\"fyear\":\"1\",\"VNo\":\"CV-27\",\"Vtype\":\"CV\",\"referenceNo\":\"1004\",\"VDate\":\"2024-09-08\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"7000.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-08 00:55:31\"}', '2024-09-08 00:55:31', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_reversetransa', 'create', '54', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"27\",\"fyear\":\"1\",\"VNo\":\"CV-27\",\"Vtype\":\"CV\",\"referenceNo\":\"1004\",\"VDate\":\"2024-09-08\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"7000.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-08 00:55:31\"}', '2024-09-08 00:55:31', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_transation', 'create', '55', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"28\",\"fyear\":\"1\",\"VNo\":\"CV-28\",\"Vtype\":\"CV\",\"referenceNo\":\"1003\",\"VDate\":\"2024-09-08\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"1400.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-08 00:55:49\"}', '2024-09-08 00:55:49', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_reversetransa', 'create', '56', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"28\",\"fyear\":\"1\",\"VNo\":\"CV-28\",\"Vtype\":\"CV\",\"referenceNo\":\"1003\",\"VDate\":\"2024-09-08\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"1400.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-08 00:55:49\"}', '2024-09-08 00:55:49', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_transation', 'create', '57', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"29\",\"fyear\":\"1\",\"VNo\":\"CV-29\",\"Vtype\":\"CV\",\"referenceNo\":\"1002\",\"VDate\":\"2024-09-08\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"1200.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-08 00:56:02\"}', '2024-09-08 00:56:02', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_reversetransa', 'create', '58', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"29\",\"fyear\":\"1\",\"VNo\":\"CV-29\",\"Vtype\":\"CV\",\"referenceNo\":\"1002\",\"VDate\":\"2024-09-08\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"1200.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-08 00:56:02\"}', '2024-09-08 00:56:02', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_transation', 'create', '59', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"30\",\"fyear\":\"1\",\"VNo\":\"CV-30\",\"Vtype\":\"CV\",\"referenceNo\":\"1001\",\"VDate\":\"2024-09-08\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"3500.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-08 00:56:17\"}', '2024-09-08 00:56:17', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_reversetransa', 'create', '60', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"30\",\"fyear\":\"1\",\"VNo\":\"CV-30\",\"Vtype\":\"CV\",\"referenceNo\":\"1001\",\"VDate\":\"2024-09-08\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"3500.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-08 00:56:17\"}', '2024-09-08 00:56:17', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_transation', 'create', '61', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"31\",\"fyear\":\"1\",\"VNo\":\"CV-31\",\"Vtype\":\"CV\",\"referenceNo\":\"1004\",\"VDate\":\"2024-09-08\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"8000.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-08 00:56:49\"}', '2024-09-08 00:56:49', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_reversetransa', 'create', '62', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"31\",\"fyear\":\"1\",\"VNo\":\"CV-31\",\"Vtype\":\"CV\",\"referenceNo\":\"1004\",\"VDate\":\"2024-09-08\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"8000.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-08 00:56:49\"}', '2024-09-08 00:56:49', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_transation', 'create', '63', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"32\",\"fyear\":\"1\",\"VNo\":\"CV-32\",\"Vtype\":\"CV\",\"referenceNo\":\"1003\",\"VDate\":\"2024-09-08\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"300.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-08 00:57:05\"}', '2024-09-08 00:57:05', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_reversetransa', 'create', '64', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"32\",\"fyear\":\"1\",\"VNo\":\"CV-32\",\"Vtype\":\"CV\",\"referenceNo\":\"1003\",\"VDate\":\"2024-09-08\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"300.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-08 00:57:05\"}', '2024-09-08 00:57:05', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_transation', 'create', '65', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"33\",\"fyear\":\"1\",\"VNo\":\"CV-33\",\"Vtype\":\"CV\",\"referenceNo\":\"1002\",\"VDate\":\"2024-09-08\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"5000.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-08 00:57:22\"}', '2024-09-08 00:57:22', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_reversetransa', 'create', '66', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"33\",\"fyear\":\"1\",\"VNo\":\"CV-33\",\"Vtype\":\"CV\",\"referenceNo\":\"1002\",\"VDate\":\"2024-09-08\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"5000.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-08 00:57:22\"}', '2024-09-08 00:57:22', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_transation', 'create', '67', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"34\",\"fyear\":\"1\",\"VNo\":\"CV-34\",\"Vtype\":\"CV\",\"referenceNo\":\"1001\",\"VDate\":\"2024-09-08\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"17500.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-08 00:57:48\"}', '2024-09-08 00:57:48', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_reversetransa', 'create', '68', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"34\",\"fyear\":\"1\",\"VNo\":\"CV-34\",\"Vtype\":\"CV\",\"referenceNo\":\"1001\",\"VDate\":\"2024-09-08\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"17500.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-08 00:57:48\"}', '2024-09-08 00:57:48', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_transation', 'create', '69', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"35\",\"fyear\":\"1\",\"VNo\":\"CV-35\",\"Vtype\":\"CV\",\"referenceNo\":\"1000\",\"VDate\":\"2024-09-08\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"3500.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-08 00:58:13\"}', '2024-09-08 00:58:13', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_reversetransa', 'create', '70', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"35\",\"fyear\":\"1\",\"VNo\":\"CV-35\",\"Vtype\":\"CV\",\"referenceNo\":\"1000\",\"VDate\":\"2024-09-08\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"3500.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-08 00:58:13\"}', '2024-09-08 00:58:13', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_transation', 'create', '71', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"36\",\"fyear\":\"1\",\"VNo\":\"CV-36\",\"Vtype\":\"CV\",\"referenceNo\":\"1012\",\"VDate\":\"2024-09-08\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"48700.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-08 11:44:01\"}', '2024-09-08 11:44:01', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_reversetransa', 'create', '72', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"36\",\"fyear\":\"1\",\"VNo\":\"CV-36\",\"Vtype\":\"CV\",\"referenceNo\":\"1012\",\"VDate\":\"2024-09-08\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"48700.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-08 11:44:01\"}', '2024-09-08 11:44:01', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_transation', 'create', '73', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"37\",\"fyear\":\"1\",\"VNo\":\"CV-37\",\"Vtype\":\"CV\",\"referenceNo\":\"1012\",\"VDate\":\"2024-09-08\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"48700.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-08 23:44:08\"}', '2024-09-08 23:44:08', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_reversetransa', 'create', '74', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"37\",\"fyear\":\"1\",\"VNo\":\"CV-37\",\"Vtype\":\"CV\",\"referenceNo\":\"1012\",\"VDate\":\"2024-09-08\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"48700.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-08 23:44:08\"}', '2024-09-08 23:44:08', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_transation', 'create', '75', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"38\",\"fyear\":\"1\",\"VNo\":\"CV-38\",\"Vtype\":\"CV\",\"referenceNo\":\"1011\",\"VDate\":\"2024-09-08\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"28700.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-08 23:44:31\"}', '2024-09-08 23:44:31', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_reversetransa', 'create', '76', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"38\",\"fyear\":\"1\",\"VNo\":\"CV-38\",\"Vtype\":\"CV\",\"referenceNo\":\"1011\",\"VDate\":\"2024-09-08\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"28700.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-08 23:44:31\"}', '2024-09-08 23:44:31', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_transation', 'create', '77', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"39\",\"fyear\":\"1\",\"VNo\":\"CV-39\",\"Vtype\":\"CV\",\"referenceNo\":\"1010\",\"VDate\":\"2024-09-08\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"1400.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-08 23:44:50\"}', '2024-09-08 23:44:50', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_reversetransa', 'create', '78', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"39\",\"fyear\":\"1\",\"VNo\":\"CV-39\",\"Vtype\":\"CV\",\"referenceNo\":\"1010\",\"VDate\":\"2024-09-08\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"1400.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-08 23:44:50\"}', '2024-09-08 23:44:50', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_transation', 'create', '79', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"40\",\"fyear\":\"1\",\"VNo\":\"CV-40\",\"Vtype\":\"CV\",\"referenceNo\":\"1009\",\"VDate\":\"2024-09-08\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"3500.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-08 23:45:06\"}', '2024-09-08 23:45:06', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_reversetransa', 'create', '80', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"40\",\"fyear\":\"1\",\"VNo\":\"CV-40\",\"Vtype\":\"CV\",\"referenceNo\":\"1009\",\"VDate\":\"2024-09-08\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"3500.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-08 23:45:06\"}', '2024-09-08 23:45:06', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_transation', 'create', '81', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"41\",\"fyear\":\"1\",\"VNo\":\"CV-41\",\"Vtype\":\"CV\",\"referenceNo\":\"1008\",\"VDate\":\"2024-09-08\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"1200.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-08 23:45:31\"}', '2024-09-08 23:45:31', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_reversetransa', 'create', '82', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"41\",\"fyear\":\"1\",\"VNo\":\"CV-41\",\"Vtype\":\"CV\",\"referenceNo\":\"1008\",\"VDate\":\"2024-09-08\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"1200.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-08 23:45:31\"}', '2024-09-08 23:45:31', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_transation', 'create', '83', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"42\",\"fyear\":\"1\",\"VNo\":\"CV-42\",\"Vtype\":\"CV\",\"referenceNo\":\"1007\",\"VDate\":\"2024-09-08\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"5000.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-08 23:45:48\"}', '2024-09-08 23:45:48', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_reversetransa', 'create', '84', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"42\",\"fyear\":\"1\",\"VNo\":\"CV-42\",\"Vtype\":\"CV\",\"referenceNo\":\"1007\",\"VDate\":\"2024-09-08\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"5000.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-08 23:45:48\"}', '2024-09-08 23:45:48', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_transation', 'create', '85', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"43\",\"fyear\":\"1\",\"VNo\":\"CV-43\",\"Vtype\":\"CV\",\"referenceNo\":\"1006\",\"VDate\":\"2024-09-08\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"5000.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-08 23:46:03\"}', '2024-09-08 23:46:03', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_reversetransa', 'create', '86', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"43\",\"fyear\":\"1\",\"VNo\":\"CV-43\",\"Vtype\":\"CV\",\"referenceNo\":\"1006\",\"VDate\":\"2024-09-08\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"5000.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-08 23:46:03\"}', '2024-09-08 23:46:03', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_transation', 'create', '87', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"44\",\"fyear\":\"1\",\"VNo\":\"CV-44\",\"Vtype\":\"CV\",\"referenceNo\":\"1005\",\"VDate\":\"2024-09-08\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"400.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-08 23:46:21\"}', '2024-09-08 23:46:21', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_reversetransa', 'create', '88', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"44\",\"fyear\":\"1\",\"VNo\":\"CV-44\",\"Vtype\":\"CV\",\"referenceNo\":\"1005\",\"VDate\":\"2024-09-08\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"400.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-08 23:46:21\"}', '2024-09-08 23:46:21', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_transation', 'create', '89', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"45\",\"fyear\":\"1\",\"VNo\":\"CV-45\",\"Vtype\":\"CV\",\"referenceNo\":\"1000\",\"VDate\":\"2024-09-09\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"3500.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-09 00:27:37\"}', '2024-09-09 00:27:37', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_reversetransa', 'create', '90', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"45\",\"fyear\":\"1\",\"VNo\":\"CV-45\",\"Vtype\":\"CV\",\"referenceNo\":\"1000\",\"VDate\":\"2024-09-09\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"3500.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-09 00:27:37\"}', '2024-09-09 00:27:37', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_transation', 'create', '91', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"46\",\"fyear\":\"1\",\"VNo\":\"CV-46\",\"Vtype\":\"CV\",\"referenceNo\":\"1001\",\"VDate\":\"2024-09-09\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"17500.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-09 00:28:07\"}', '2024-09-09 00:28:07', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_reversetransa', 'create', '92', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"46\",\"fyear\":\"1\",\"VNo\":\"CV-46\",\"Vtype\":\"CV\",\"referenceNo\":\"1001\",\"VDate\":\"2024-09-09\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"17500.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-09 00:28:07\"}', '2024-09-09 00:28:07', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_transation', 'create', '93', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"47\",\"fyear\":\"1\",\"VNo\":\"CV-47\",\"Vtype\":\"CV\",\"referenceNo\":\"1002\",\"VDate\":\"2024-09-09\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"5000.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-09 00:28:33\"}', '2024-09-09 00:28:33', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_reversetransa', 'create', '94', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"47\",\"fyear\":\"1\",\"VNo\":\"CV-47\",\"Vtype\":\"CV\",\"referenceNo\":\"1002\",\"VDate\":\"2024-09-09\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"5000.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-09 00:28:33\"}', '2024-09-09 00:28:33', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_transation', 'create', '95', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"48\",\"fyear\":\"1\",\"VNo\":\"CV-48\",\"Vtype\":\"CV\",\"referenceNo\":\"1003\",\"VDate\":\"2024-09-09\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"300.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-09 00:28:57\"}', '2024-09-09 00:28:57', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_reversetransa', 'create', '96', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"48\",\"fyear\":\"1\",\"VNo\":\"CV-48\",\"Vtype\":\"CV\",\"referenceNo\":\"1003\",\"VDate\":\"2024-09-09\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"300.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-09 00:28:57\"}', '2024-09-09 00:28:57', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_transation', 'create', '97', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"49\",\"fyear\":\"1\",\"VNo\":\"CV-49\",\"Vtype\":\"CV\",\"referenceNo\":\"1004\",\"VDate\":\"2024-09-09\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"8000.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-09 00:29:07\"}', '2024-09-09 00:29:07', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_reversetransa', 'create', '98', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"49\",\"fyear\":\"1\",\"VNo\":\"CV-49\",\"Vtype\":\"CV\",\"referenceNo\":\"1004\",\"VDate\":\"2024-09-09\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"8000.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-09 00:29:07\"}', '2024-09-09 00:29:07', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_transation', 'create', '99', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"50\",\"fyear\":\"1\",\"VNo\":\"CV-50\",\"Vtype\":\"CV\",\"referenceNo\":\"1005\",\"VDate\":\"2024-09-09\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"24900.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-09 00:29:40\"}', '2024-09-09 00:29:40', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_reversetransa', 'create', '100', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"50\",\"fyear\":\"1\",\"VNo\":\"CV-50\",\"Vtype\":\"CV\",\"referenceNo\":\"1005\",\"VDate\":\"2024-09-09\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"24900.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-09 00:29:40\"}', '2024-09-09 00:29:40', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_transation', 'create', '101', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"51\",\"fyear\":\"1\",\"VNo\":\"CV-51\",\"Vtype\":\"CV\",\"referenceNo\":\"1006\",\"VDate\":\"2024-09-09\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"25200.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-09 00:29:52\"}', '2024-09-09 00:29:52', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_reversetransa', 'create', '102', 'acc_transaction', 'invoice/invoice/bdtask_update_invoice', '{\"vid\":\"51\",\"fyear\":\"1\",\"VNo\":\"CV-51\",\"Vtype\":\"CV\",\"referenceNo\":\"1006\",\"VDate\":\"2024-09-09\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"25200.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-09 00:29:52\"}', '2024-09-09 00:29:52', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_transation', 'create', '103', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"52\",\"fyear\":\"1\",\"VNo\":\"CV-52\",\"Vtype\":\"CV\",\"referenceNo\":\"1013\",\"VDate\":\"2024-09-09\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"8900.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-09 18:19:48\"}', '2024-09-09 18:19:48', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_reversetransa', 'create', '104', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"52\",\"fyear\":\"1\",\"VNo\":\"CV-52\",\"Vtype\":\"CV\",\"referenceNo\":\"1013\",\"VDate\":\"2024-09-09\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"8900.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-09 18:19:48\"}', '2024-09-09 18:19:48', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_transation', 'create', '105', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"53\",\"fyear\":\"1\",\"VNo\":\"CV-53\",\"Vtype\":\"CV\",\"referenceNo\":\"1007\",\"VDate\":\"2024-09-09\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"12200.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-09 18:21:42\"}', '2024-09-09 18:21:42', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_reversetransa', 'create', '106', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"53\",\"fyear\":\"1\",\"VNo\":\"CV-53\",\"Vtype\":\"CV\",\"referenceNo\":\"1007\",\"VDate\":\"2024-09-09\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"12200.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-09 18:21:42\"}', '2024-09-09 18:21:42', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_transation', 'create', '107', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"54\",\"fyear\":\"1\",\"VNo\":\"CV-54\",\"Vtype\":\"CV\",\"referenceNo\":\"1014\",\"VDate\":\"2024-09-09\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"4500.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-09 20:31:21\"}', '2024-09-09 20:31:21', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_reversetransa', 'create', '108', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"54\",\"fyear\":\"1\",\"VNo\":\"CV-54\",\"Vtype\":\"CV\",\"referenceNo\":\"1014\",\"VDate\":\"2024-09-09\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"4500.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-09 20:31:21\"}', '2024-09-09 20:31:21', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_transation', 'create', '109', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"55\",\"fyear\":\"1\",\"VNo\":\"CV-55\",\"Vtype\":\"CV\",\"referenceNo\":\"1015\",\"VDate\":\"2024-09-09\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"10500.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-09 20:34:56\"}', '2024-09-09 20:34:56', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_reversetransa', 'create', '110', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"55\",\"fyear\":\"1\",\"VNo\":\"CV-55\",\"Vtype\":\"CV\",\"referenceNo\":\"1015\",\"VDate\":\"2024-09-09\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"10500.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-09 20:34:56\"}', '2024-09-09 20:34:56', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_transation', 'create', '111', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"56\",\"fyear\":\"1\",\"VNo\":\"CV-56\",\"Vtype\":\"CV\",\"referenceNo\":\"1016\",\"VDate\":\"2024-09-14\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"14400.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-14 13:13:45\"}', '2024-09-14 13:13:45', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_reversetransa', 'create', '112', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"56\",\"fyear\":\"1\",\"VNo\":\"CV-56\",\"Vtype\":\"CV\",\"referenceNo\":\"1016\",\"VDate\":\"2024-09-14\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"14400.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-14 13:13:45\"}', '2024-09-14 13:13:45', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_transation', 'create', '113', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"57\",\"fyear\":\"1\",\"VNo\":\"CV-57\",\"Vtype\":\"CV\",\"referenceNo\":\"1017\",\"VDate\":\"2024-09-14\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"6400.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-14 13:14:39\"}', '2024-09-14 13:14:39', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_reversetransa', 'create', '114', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"57\",\"fyear\":\"1\",\"VNo\":\"CV-57\",\"Vtype\":\"CV\",\"referenceNo\":\"1017\",\"VDate\":\"2024-09-14\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"6400.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-14 13:14:39\"}', '2024-09-14 13:14:39', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_transation', 'create', '115', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"58\",\"fyear\":\"1\",\"VNo\":\"CV-58\",\"Vtype\":\"CV\",\"referenceNo\":\"1018\",\"VDate\":\"2024-09-14\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"400.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-14 13:51:49\"}', '2024-09-14 13:51:49', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_reversetransa', 'create', '116', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"58\",\"fyear\":\"1\",\"VNo\":\"CV-58\",\"Vtype\":\"CV\",\"referenceNo\":\"1018\",\"VDate\":\"2024-09-14\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"400.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-14 13:51:49\"}', '2024-09-14 13:51:49', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_transation', 'create', '117', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"59\",\"fyear\":\"1\",\"VNo\":\"CV-59\",\"Vtype\":\"CV\",\"referenceNo\":\"1008\",\"VDate\":\"2024-09-14\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"1400.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-14 13:52:26\"}', '2024-09-14 13:52:26', '1');
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES ('0', '1', 'approved_vaucher_reversetransa', 'create', '118', 'acc_transaction', 'invoice/invoice/bdtask_manual_possales_insert', '{\"vid\":\"59\",\"fyear\":\"1\",\"VNo\":\"CV-59\",\"Vtype\":\"CV\",\"referenceNo\":\"1008\",\"VDate\":\"2024-09-14\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"1400.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2024-09-14 13:52:26\"}', '2024-09-14 13:52:26', '1');


#
# TABLE STRUCTURE FOR: app_setting
#

DROP TABLE IF EXISTS `app_setting`;

CREATE TABLE `app_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `localhserver` varchar(250) DEFAULT NULL,
  `onlineserver` varchar(250) DEFAULT NULL,
  `hotspot` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `app_setting` (`id`, `localhserver`, `onlineserver`, `hotspot`) VALUES ('1', 'https://demo.bdtask.com', 'https://demo.bdtask.com', 'https://demo.bdtask.com');


#
# TABLE STRUCTURE FOR: bank_add
#

DROP TABLE IF EXISTS `bank_add`;

CREATE TABLE `bank_add` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_id` varchar(255) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `ac_name` varchar(250) DEFAULT NULL,
  `ac_number` varchar(250) DEFAULT NULL,
  `branch` varchar(250) DEFAULT NULL,
  `signature_pic` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `bank_add` (`id`, `bank_id`, `bank_name`, `ac_name`, `ac_number`, `branch`, `signature_pic`, `status`) VALUES ('1', '1', 'Commercial Bank', 'Demo Company', '123456789', 'Kotahena', '', '1');
INSERT INTO `bank_add` (`id`, `bank_id`, `bank_name`, `ac_name`, `ac_number`, `branch`, `signature_pic`, `status`) VALUES ('2', 'IM2YUXMNIV', 'Bank of Ceylon', 'Demo Company', '123456789', 'Wellawatta', '', '1');


#
# TABLE STRUCTURE FOR: brandcode
#

DROP TABLE IF EXISTS `brandcode`;

CREATE TABLE `brandcode` (
  `brandcode_id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_code` varchar(255) NOT NULL,
  `brandcode_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`brandcode_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `brandcode` (`brandcode_id`, `brand_code`, `brandcode_name`, `status`) VALUES ('1', '000001', 'No Brand', '1');
INSERT INTO `brandcode` (`brandcode_id`, `brand_code`, `brandcode_name`, `status`) VALUES ('2', '000002', 'Emeraled', '1');
INSERT INTO `brandcode` (`brandcode_id`, `brand_code`, `brandcode_name`, `status`) VALUES ('3', '000003', 'Crocodile', '1');
INSERT INTO `brandcode` (`brandcode_id`, `brand_code`, `brandcode_name`, `status`) VALUES ('4', '000004', 'Bobby', '1');
INSERT INTO `brandcode` (`brandcode_id`, `brand_code`, `brandcode_name`, `status`) VALUES ('5', '000005', 'Senorita', '1');
INSERT INTO `brandcode` (`brandcode_id`, `brand_code`, `brandcode_name`, `status`) VALUES ('6', '000006', 'Vinolia', '1');
INSERT INTO `brandcode` (`brandcode_id`, `brand_code`, `brandcode_name`, `status`) VALUES ('7', '000007', 'Ebony', '1');
INSERT INTO `brandcode` (`brandcode_id`, `brand_code`, `brandcode_name`, `status`) VALUES ('8', '000007', 'Denzo', '1');


#
# TABLE STRUCTURE FOR: company_information
#

DROP TABLE IF EXISTS `company_information`;

CREATE TABLE `company_information` (
  `company_id` varchar(250) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `website` varchar(50) NOT NULL,
  `vat_no` varchar(50) DEFAULT NULL,
  `cr_no` varchar(50) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `company_information` (`company_id`, `company_name`, `email`, `address`, `mobile`, `website`, `vat_no`, `cr_no`, `status`) VALUES ('1', 'Demo Company', 'demo.company@mail.com', 'Demo No, Demo Street,\r\nDemo City.\r\n', '94112345678', 'https://www.democompany.com/', 'XXXXXXXXXX', 'XXXXXXXXXX', '1');


#
# TABLE STRUCTURE FOR: countercode
#

DROP TABLE IF EXISTS `countercode`;

CREATE TABLE `countercode` (
  `countercode_id` int(11) NOT NULL AUTO_INCREMENT,
  `counter_code` varchar(255) NOT NULL,
  `countercode_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`countercode_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `countercode` (`countercode_id`, `counter_code`, `countercode_name`, `status`) VALUES ('1', '000001', 'Shirt Counter', '1');
INSERT INTO `countercode` (`countercode_id`, `counter_code`, `countercode_name`, `status`) VALUES ('2', '000002', 'Shalwar Counter', '1');
INSERT INTO `countercode` (`countercode_id`, `counter_code`, `countercode_name`, `status`) VALUES ('3', '000003', 'Saree Counter', '1');
INSERT INTO `countercode` (`countercode_id`, `counter_code`, `countercode_name`, `status`) VALUES ('4', '000004', 'G Floor Counter', '1');


#
# TABLE STRUCTURE FOR: currency_tbl
#

DROP TABLE IF EXISTS `currency_tbl`;

CREATE TABLE `currency_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `currency_name` varchar(50) NOT NULL,
  `icon` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `currency_tbl` (`id`, `currency_name`, `icon`) VALUES ('2', 'USD', '$');
INSERT INTO `currency_tbl` (`id`, `currency_name`, `icon`) VALUES ('3', 'LKR', 'LKR');


#
# TABLE STRUCTURE FOR: customer_information
#

DROP TABLE IF EXISTS `customer_information`;

CREATE TABLE `customer_information` (
  `customer_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_address` varchar(255) DEFAULT NULL,
  `address2` text NOT NULL,
  `customer_mobile` varchar(100) DEFAULT NULL,
  `customer_email` varchar(100) DEFAULT NULL,
  `email_address` varchar(200) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `fax` varchar(100) DEFAULT NULL,
  `city` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `country` varchar(250) DEFAULT NULL,
  `status` int(11) NOT NULL COMMENT '1=paid,2=credit',
  `create_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `create_by` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `customer_information` (`customer_id`, `customer_name`, `customer_address`, `address2`, `customer_mobile`, `customer_email`, `email_address`, `contact`, `phone`, `fax`, `city`, `state`, `zip`, `country`, `status`, `create_date`, `create_by`) VALUES ('1', 'Cash Sale', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2024-03-05 00:39:15', '1');
INSERT INTO `customer_information` (`customer_id`, `customer_name`, `customer_address`, `address2`, `customer_mobile`, `customer_email`, `email_address`, `contact`, `phone`, `fax`, `city`, `state`, `zip`, `country`, `status`, `create_date`, `create_by`) VALUES ('2', 'Cash Service', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2024-03-05 01:11:15', '1');


#
# TABLE STRUCTURE FOR: designation
#

DROP TABLE IF EXISTS `designation`;

CREATE TABLE `designation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(150) NOT NULL,
  `details` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `designation` (`id`, `designation`, `details`) VALUES ('1', 'sales man', '');
INSERT INTO `designation` (`id`, `designation`, `details`) VALUES ('2', 'Manager', '');
INSERT INTO `designation` (`id`, `designation`, `details`) VALUES ('3', 'Assistant Manager', '');


#
# TABLE STRUCTURE FOR: email_config
#

DROP TABLE IF EXISTS `email_config`;

CREATE TABLE `email_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `protocol` text NOT NULL,
  `smtp_host` text NOT NULL,
  `smtp_port` text NOT NULL,
  `smtp_user` varchar(35) NOT NULL,
  `smtp_pass` varchar(35) NOT NULL,
  `mailtype` varchar(30) DEFAULT NULL,
  `isinvoice` tinyint(4) NOT NULL,
  `isservice` tinyint(4) NOT NULL,
  `isquotation` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `email_config` (`id`, `protocol`, `smtp_host`, `smtp_port`, `smtp_user`, `smtp_pass`, `mailtype`, `isinvoice`, `isservice`, `isquotation`) VALUES ('1', 'ssmtp', 'ssl://ssmtp.gmail.com', '25', 'info@eholol.com', 'demo123456', 'html', '0', '0', '0');


#
# TABLE STRUCTURE FOR: emp
#

DROP TABLE IF EXISTS `emp`;

CREATE TABLE `emp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint(20) NOT NULL,
  `employee_id` bigint(20) NOT NULL,
  `date` varchar(50) DEFAULT NULL,
  `total_amount` decimal(18,2) NOT NULL DEFAULT 0.00,
  `paid_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `due_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `prevous_due` decimal(20,2) NOT NULL DEFAULT 0.00,
  `shipping_cost` decimal(10,2) NOT NULL DEFAULT 0.00,
  `invoice` bigint(20) NOT NULL,
  `offline_invoice_no` bigint(20) DEFAULT NULL,
  `invoice_discount` decimal(10,2) DEFAULT 0.00 COMMENT 'invoice discount',
  `total_discount` decimal(10,2) DEFAULT 0.00 COMMENT 'total invoice discount',
  `total_vat_amnt` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT 'total invoice vat',
  `total_tax` decimal(10,2) DEFAULT 0.00,
  `ret_adjust_amnt` decimal(10,2) DEFAULT NULL,
  `returnable_amount` decimal(10,2) DEFAULT NULL,
  `sales_by` varchar(50) NOT NULL,
  `delivery_note` text DEFAULT NULL,
  `invoice_details` text NOT NULL,
  `is_credit` tinyint(4) DEFAULT NULL,
  `is_fixed` int(11) NOT NULL DEFAULT 0,
  `is_dynamic` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL,
  `bank_id` varchar(30) DEFAULT NULL,
  `payment_type` int(11) NOT NULL,
  `is_online` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `employee_id` (`employee_id`),
  KEY `invoice_id` (`invoice_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

#
# TABLE STRUCTURE FOR: emp_details
#

DROP TABLE IF EXISTS `emp_details`;

CREATE TABLE `emp_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_details_id` varchar(100) NOT NULL,
  `invoice_id` varchar(100) NOT NULL,
  `ret_invoice_id` bigint(20) DEFAULT NULL,
  `product_id` varchar(30) NOT NULL,
  `serial_no` varchar(30) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `quantity` decimal(10,2) DEFAULT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `batch_id` varchar(30) DEFAULT NULL,
  `supplier_rate` float DEFAULT NULL,
  `total_price` decimal(12,2) DEFAULT NULL,
  `commisionmode` varchar(255) NOT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `discount_per` varchar(15) DEFAULT NULL,
  `vat_amnt` decimal(10,2) DEFAULT NULL,
  `vat_amnt_per` varchar(15) DEFAULT NULL,
  `tax` decimal(10,2) DEFAULT NULL,
  `paid_amount` decimal(12,0) DEFAULT NULL,
  `due_amount` decimal(10,2) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `dis_type` varchar(255) NOT NULL,
  `employeeId` int(11) NOT NULL,
  `meter` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `invoice_id` (`invoice_id`),
  KEY `product_id` (`product_id`),
  KEY `employeeId` (`employeeId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

#
# TABLE STRUCTURE FOR: employee_history
#

DROP TABLE IF EXISTS `employee_history`;

CREATE TABLE `employee_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `rate_type` int(11) NOT NULL,
  `hrate` float NOT NULL,
  `email` varchar(50) NOT NULL,
  `blood_group` varchar(10) NOT NULL,
  `address_line_1` text NOT NULL,
  `address_line_2` text NOT NULL,
  `image` text DEFAULT NULL,
  `country` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `zip` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `employee_history` (`id`, `first_name`, `last_name`, `designation`, `phone`, `rate_type`, `hrate`, `email`, `blood_group`, `address_line_1`, `address_line_2`, `image`, `country`, `city`, `zip`) VALUES ('1', '006', 'Depak', '2', '', '0', '0', '', '', '', '', '', '', '', '');
INSERT INTO `employee_history` (`id`, `first_name`, `last_name`, `designation`, `phone`, `rate_type`, `hrate`, `email`, `blood_group`, `address_line_1`, `address_line_2`, `image`, `country`, `city`, `zip`) VALUES ('2', '004', 'Chockalingam', '3', '', '0', '0', '', '', '', '', '', '', '', '');
INSERT INTO `employee_history` (`id`, `first_name`, `last_name`, `designation`, `phone`, `rate_type`, `hrate`, `email`, `blood_group`, `address_line_1`, `address_line_2`, `image`, `country`, `city`, `zip`) VALUES ('3', '003', 'Balakrishna', '1', '', '0', '0', '', '', '', '', '', '', '', '');
INSERT INTO `employee_history` (`id`, `first_name`, `last_name`, `designation`, `phone`, `rate_type`, `hrate`, `email`, `blood_group`, `address_line_1`, `address_line_2`, `image`, `country`, `city`, `zip`) VALUES ('4', '002', 'Jeyarajah', '1', '', '0', '0', '', '', '', '', '', '', '', '');
INSERT INTO `employee_history` (`id`, `first_name`, `last_name`, `designation`, `phone`, `rate_type`, `hrate`, `email`, `blood_group`, `address_line_1`, `address_line_2`, `image`, `country`, `city`, `zip`) VALUES ('5', '001', 'Kaveri', '1', '', '0', '0', '', '', '', '', '', '', '', '');


#
# TABLE STRUCTURE FOR: financial_year
#

DROP TABLE IF EXISTS `financial_year`;

CREATE TABLE `financial_year` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yearName` varchar(30) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `isCloseReq` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1=active, 0=closed, 2=pending',
  `created_by` int(6) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(6) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `financial_year` (`id`, `yearName`, `startDate`, `endDate`, `isCloseReq`, `status`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES ('1', '2024', '2024-01-01', '2024-12-31', '0', '1', '1', '2024-03-04 08:01:24', NULL, NULL);


#
# TABLE STRUCTURE FOR: invoice
#

DROP TABLE IF EXISTS `invoice`;

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint(20) NOT NULL,
  `employee_id` bigint(20) NOT NULL,
  `date` varchar(50) DEFAULT NULL,
  `total_amount` decimal(18,2) NOT NULL DEFAULT 0.00,
  `paid_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `due_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `prevous_due` decimal(20,2) NOT NULL DEFAULT 0.00,
  `shipping_cost` decimal(10,2) NOT NULL DEFAULT 0.00,
  `invoice` bigint(20) NOT NULL,
  `offline_invoice_no` bigint(20) DEFAULT NULL,
  `invoice_discount` decimal(10,2) DEFAULT 0.00 COMMENT 'invoice discount',
  `total_discount` decimal(10,2) DEFAULT 0.00 COMMENT 'total invoice discount',
  `total_vat_amnt` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT 'total invoice vat',
  `total_tax` decimal(10,2) DEFAULT 0.00,
  `ret_adjust_amnt` decimal(10,2) DEFAULT NULL,
  `returnable_amount` decimal(10,2) DEFAULT NULL,
  `sales_by` varchar(50) NOT NULL,
  `delivery_note` text DEFAULT NULL,
  `invoice_details` text NOT NULL,
  `is_credit` tinyint(4) DEFAULT NULL,
  `is_fixed` int(11) NOT NULL DEFAULT 0,
  `is_dynamic` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL,
  `bank_id` varchar(30) DEFAULT NULL,
  `payment_type` int(11) NOT NULL,
  `is_online` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`employee_id`),
  KEY `invoice_id` (`invoice_id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `invoice` (`id`, `invoice_id`, `employee_id`, `date`, `total_amount`, `paid_amount`, `due_amount`, `prevous_due`, `shipping_cost`, `invoice`, `offline_invoice_no`, `invoice_discount`, `total_discount`, `total_vat_amnt`, `total_tax`, `ret_adjust_amnt`, `returnable_amount`, `sales_by`, `delivery_note`, `invoice_details`, `is_credit`, `is_fixed`, `is_dynamic`, `status`, `bank_id`, `payment_type`, `is_online`) VALUES ('1', '1000', '0', '2024-10-20', '8804.00', '0.00', '0.00', '0.00', '0.00', '0', NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '', NULL, '', NULL, '0', '0', '1', NULL, '0', '1');
INSERT INTO `invoice` (`id`, `invoice_id`, `employee_id`, `date`, `total_amount`, `paid_amount`, `due_amount`, `prevous_due`, `shipping_cost`, `invoice`, `offline_invoice_no`, `invoice_discount`, `total_discount`, `total_vat_amnt`, `total_tax`, `ret_adjust_amnt`, `returnable_amount`, `sales_by`, `delivery_note`, `invoice_details`, `is_credit`, `is_fixed`, `is_dynamic`, `status`, `bank_id`, `payment_type`, `is_online`) VALUES ('2', '1001', '0', '2024-10-21', '18950.00', '0.00', '0.00', '0.00', '0.00', '0', NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '', NULL, '', NULL, '0', '0', '1', NULL, '0', '1');
INSERT INTO `invoice` (`id`, `invoice_id`, `employee_id`, `date`, `total_amount`, `paid_amount`, `due_amount`, `prevous_due`, `shipping_cost`, `invoice`, `offline_invoice_no`, `invoice_discount`, `total_discount`, `total_vat_amnt`, `total_tax`, `ret_adjust_amnt`, `returnable_amount`, `sales_by`, `delivery_note`, `invoice_details`, `is_credit`, `is_fixed`, `is_dynamic`, `status`, `bank_id`, `payment_type`, `is_online`) VALUES ('3', '1002', '0', '2024-10-21', '17500.00', '0.00', '0.00', '0.00', '0.00', '0', NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '', NULL, '', NULL, '0', '0', '1', NULL, '0', '1');
INSERT INTO `invoice` (`id`, `invoice_id`, `employee_id`, `date`, `total_amount`, `paid_amount`, `due_amount`, `prevous_due`, `shipping_cost`, `invoice`, `offline_invoice_no`, `invoice_discount`, `total_discount`, `total_vat_amnt`, `total_tax`, `ret_adjust_amnt`, `returnable_amount`, `sales_by`, `delivery_note`, `invoice_details`, `is_credit`, `is_fixed`, `is_dynamic`, `status`, `bank_id`, `payment_type`, `is_online`) VALUES ('4', '1003', '0', '2024-10-21', '-8080.00', '0.00', '0.00', '0.00', '0.00', '0', NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '', NULL, '', NULL, '0', '0', '1', NULL, '0', '1');
INSERT INTO `invoice` (`id`, `invoice_id`, `employee_id`, `date`, `total_amount`, `paid_amount`, `due_amount`, `prevous_due`, `shipping_cost`, `invoice`, `offline_invoice_no`, `invoice_discount`, `total_discount`, `total_vat_amnt`, `total_tax`, `ret_adjust_amnt`, `returnable_amount`, `sales_by`, `delivery_note`, `invoice_details`, `is_credit`, `is_fixed`, `is_dynamic`, `status`, `bank_id`, `payment_type`, `is_online`) VALUES ('5', '1004', '0', '2024-10-21', '2500.00', '0.00', '0.00', '0.00', '0.00', '0', NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '', NULL, '', NULL, '0', '0', '1', NULL, '0', '1');
INSERT INTO `invoice` (`id`, `invoice_id`, `employee_id`, `date`, `total_amount`, `paid_amount`, `due_amount`, `prevous_due`, `shipping_cost`, `invoice`, `offline_invoice_no`, `invoice_discount`, `total_discount`, `total_vat_amnt`, `total_tax`, `ret_adjust_amnt`, `returnable_amount`, `sales_by`, `delivery_note`, `invoice_details`, `is_credit`, `is_fixed`, `is_dynamic`, `status`, `bank_id`, `payment_type`, `is_online`) VALUES ('6', '1005', '0', '2024-10-21', '5750.00', '0.00', '0.00', '0.00', '0.00', '0', NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '', NULL, '', NULL, '0', '0', '1', NULL, '0', '1');
INSERT INTO `invoice` (`id`, `invoice_id`, `employee_id`, `date`, `total_amount`, `paid_amount`, `due_amount`, `prevous_due`, `shipping_cost`, `invoice`, `offline_invoice_no`, `invoice_discount`, `total_discount`, `total_vat_amnt`, `total_tax`, `ret_adjust_amnt`, `returnable_amount`, `sales_by`, `delivery_note`, `invoice_details`, `is_credit`, `is_fixed`, `is_dynamic`, `status`, `bank_id`, `payment_type`, `is_online`) VALUES ('7', '1006', '0', '2024-10-21', '5750.00', '0.00', '0.00', '0.00', '0.00', '0', NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '', NULL, '', NULL, '0', '0', '1', NULL, '0', '1');
INSERT INTO `invoice` (`id`, `invoice_id`, `employee_id`, `date`, `total_amount`, `paid_amount`, `due_amount`, `prevous_due`, `shipping_cost`, `invoice`, `offline_invoice_no`, `invoice_discount`, `total_discount`, `total_vat_amnt`, `total_tax`, `ret_adjust_amnt`, `returnable_amount`, `sales_by`, `delivery_note`, `invoice_details`, `is_credit`, `is_fixed`, `is_dynamic`, `status`, `bank_id`, `payment_type`, `is_online`) VALUES ('8', '1007', '0', '2024-10-21', '0.00', '0.00', '0.00', '0.00', '0.00', '0', NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '', NULL, '', NULL, '0', '0', '1', NULL, '0', '1');
INSERT INTO `invoice` (`id`, `invoice_id`, `employee_id`, `date`, `total_amount`, `paid_amount`, `due_amount`, `prevous_due`, `shipping_cost`, `invoice`, `offline_invoice_no`, `invoice_discount`, `total_discount`, `total_vat_amnt`, `total_tax`, `ret_adjust_amnt`, `returnable_amount`, `sales_by`, `delivery_note`, `invoice_details`, `is_credit`, `is_fixed`, `is_dynamic`, `status`, `bank_id`, `payment_type`, `is_online`) VALUES ('9', '1008', '0', '2024-10-21', '-2750.00', '0.00', '0.00', '0.00', '0.00', '0', NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '', NULL, '', NULL, '0', '0', '1', NULL, '0', '1');
INSERT INTO `invoice` (`id`, `invoice_id`, `employee_id`, `date`, `total_amount`, `paid_amount`, `due_amount`, `prevous_due`, `shipping_cost`, `invoice`, `offline_invoice_no`, `invoice_discount`, `total_discount`, `total_vat_amnt`, `total_tax`, `ret_adjust_amnt`, `returnable_amount`, `sales_by`, `delivery_note`, `invoice_details`, `is_credit`, `is_fixed`, `is_dynamic`, `status`, `bank_id`, `payment_type`, `is_online`) VALUES ('10', '1009', '0', '2024-10-21', '38200.00', '0.00', '0.00', '0.00', '0.00', '0', NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '', NULL, '', NULL, '0', '0', '1', NULL, '0', '1');
INSERT INTO `invoice` (`id`, `invoice_id`, `employee_id`, `date`, `total_amount`, `paid_amount`, `due_amount`, `prevous_due`, `shipping_cost`, `invoice`, `offline_invoice_no`, `invoice_discount`, `total_discount`, `total_vat_amnt`, `total_tax`, `ret_adjust_amnt`, `returnable_amount`, `sales_by`, `delivery_note`, `invoice_details`, `is_credit`, `is_fixed`, `is_dynamic`, `status`, `bank_id`, `payment_type`, `is_online`) VALUES ('11', '1010', '0', '2024-10-21', '-3200.00', '0.00', '0.00', '0.00', '0.00', '0', NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '', NULL, '', NULL, '0', '0', '1', NULL, '0', '1');
INSERT INTO `invoice` (`id`, `invoice_id`, `employee_id`, `date`, `total_amount`, `paid_amount`, `due_amount`, `prevous_due`, `shipping_cost`, `invoice`, `offline_invoice_no`, `invoice_discount`, `total_discount`, `total_vat_amnt`, `total_tax`, `ret_adjust_amnt`, `returnable_amount`, `sales_by`, `delivery_note`, `invoice_details`, `is_credit`, `is_fixed`, `is_dynamic`, `status`, `bank_id`, `payment_type`, `is_online`) VALUES ('12', '1011', '0', '2024-10-22', '-700.00', '0.00', '0.00', '0.00', '0.00', '0', NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '', NULL, '', NULL, '0', '0', '1', NULL, '0', '1');
INSERT INTO `invoice` (`id`, `invoice_id`, `employee_id`, `date`, `total_amount`, `paid_amount`, `due_amount`, `prevous_due`, `shipping_cost`, `invoice`, `offline_invoice_no`, `invoice_discount`, `total_discount`, `total_vat_amnt`, `total_tax`, `ret_adjust_amnt`, `returnable_amount`, `sales_by`, `delivery_note`, `invoice_details`, `is_credit`, `is_fixed`, `is_dynamic`, `status`, `bank_id`, `payment_type`, `is_online`) VALUES ('13', '1012', '0', '2024-10-22', '-2500.00', '0.00', '0.00', '0.00', '0.00', '0', NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '', NULL, '', NULL, '0', '0', '1', NULL, '0', '1');
INSERT INTO `invoice` (`id`, `invoice_id`, `employee_id`, `date`, `total_amount`, `paid_amount`, `due_amount`, `prevous_due`, `shipping_cost`, `invoice`, `offline_invoice_no`, `invoice_discount`, `total_discount`, `total_vat_amnt`, `total_tax`, `ret_adjust_amnt`, `returnable_amount`, `sales_by`, `delivery_note`, `invoice_details`, `is_credit`, `is_fixed`, `is_dynamic`, `status`, `bank_id`, `payment_type`, `is_online`) VALUES ('14', '1013', '0', '2024-10-22', '-2500.00', '0.00', '0.00', '0.00', '0.00', '0', NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '', NULL, '', NULL, '0', '0', '1', NULL, '0', '1');
INSERT INTO `invoice` (`id`, `invoice_id`, `employee_id`, `date`, `total_amount`, `paid_amount`, `due_amount`, `prevous_due`, `shipping_cost`, `invoice`, `offline_invoice_no`, `invoice_discount`, `total_discount`, `total_vat_amnt`, `total_tax`, `ret_adjust_amnt`, `returnable_amount`, `sales_by`, `delivery_note`, `invoice_details`, `is_credit`, `is_fixed`, `is_dynamic`, `status`, `bank_id`, `payment_type`, `is_online`) VALUES ('15', '1014', '0', '2024-10-22', '-10000.00', '0.00', '0.00', '0.00', '0.00', '0', NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '', NULL, '', NULL, '0', '0', '1', NULL, '0', '1');
INSERT INTO `invoice` (`id`, `invoice_id`, `employee_id`, `date`, `total_amount`, `paid_amount`, `due_amount`, `prevous_due`, `shipping_cost`, `invoice`, `offline_invoice_no`, `invoice_discount`, `total_discount`, `total_vat_amnt`, `total_tax`, `ret_adjust_amnt`, `returnable_amount`, `sales_by`, `delivery_note`, `invoice_details`, `is_credit`, `is_fixed`, `is_dynamic`, `status`, `bank_id`, `payment_type`, `is_online`) VALUES ('16', '1015', '0', '2024-10-22', '14500.00', '0.00', '0.00', '0.00', '0.00', '0', NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '', NULL, '', NULL, '0', '0', '1', NULL, '0', '1');
INSERT INTO `invoice` (`id`, `invoice_id`, `employee_id`, `date`, `total_amount`, `paid_amount`, `due_amount`, `prevous_due`, `shipping_cost`, `invoice`, `offline_invoice_no`, `invoice_discount`, `total_discount`, `total_vat_amnt`, `total_tax`, `ret_adjust_amnt`, `returnable_amount`, `sales_by`, `delivery_note`, `invoice_details`, `is_credit`, `is_fixed`, `is_dynamic`, `status`, `bank_id`, `payment_type`, `is_online`) VALUES ('17', '1016', '0', '2024-10-22', '-9500.00', '0.00', '0.00', '0.00', '0.00', '0', NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '', NULL, '', NULL, '0', '0', '1', NULL, '0', '1');
INSERT INTO `invoice` (`id`, `invoice_id`, `employee_id`, `date`, `total_amount`, `paid_amount`, `due_amount`, `prevous_due`, `shipping_cost`, `invoice`, `offline_invoice_no`, `invoice_discount`, `total_discount`, `total_vat_amnt`, `total_tax`, `ret_adjust_amnt`, `returnable_amount`, `sales_by`, `delivery_note`, `invoice_details`, `is_credit`, `is_fixed`, `is_dynamic`, `status`, `bank_id`, `payment_type`, `is_online`) VALUES ('18', '1017', '0', '2024-10-22', '5300.00', '0.00', '0.00', '0.00', '0.00', '0', NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '', NULL, '', NULL, '0', '0', '1', NULL, '0', '1');
INSERT INTO `invoice` (`id`, `invoice_id`, `employee_id`, `date`, `total_amount`, `paid_amount`, `due_amount`, `prevous_due`, `shipping_cost`, `invoice`, `offline_invoice_no`, `invoice_discount`, `total_discount`, `total_vat_amnt`, `total_tax`, `ret_adjust_amnt`, `returnable_amount`, `sales_by`, `delivery_note`, `invoice_details`, `is_credit`, `is_fixed`, `is_dynamic`, `status`, `bank_id`, `payment_type`, `is_online`) VALUES ('19', '1018', '0', '2024-10-22', '2500.00', '0.00', '0.00', '0.00', '0.00', '0', NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '', NULL, '', NULL, '0', '0', '1', NULL, '0', '1');
INSERT INTO `invoice` (`id`, `invoice_id`, `employee_id`, `date`, `total_amount`, `paid_amount`, `due_amount`, `prevous_due`, `shipping_cost`, `invoice`, `offline_invoice_no`, `invoice_discount`, `total_discount`, `total_vat_amnt`, `total_tax`, `ret_adjust_amnt`, `returnable_amount`, `sales_by`, `delivery_note`, `invoice_details`, `is_credit`, `is_fixed`, `is_dynamic`, `status`, `bank_id`, `payment_type`, `is_online`) VALUES ('20', '1019', '0', '2024-10-22', '-2750.00', '0.00', '0.00', '0.00', '0.00', '0', NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '', NULL, '', NULL, '0', '0', '1', NULL, '0', '1');
INSERT INTO `invoice` (`id`, `invoice_id`, `employee_id`, `date`, `total_amount`, `paid_amount`, `due_amount`, `prevous_due`, `shipping_cost`, `invoice`, `offline_invoice_no`, `invoice_discount`, `total_discount`, `total_vat_amnt`, `total_tax`, `ret_adjust_amnt`, `returnable_amount`, `sales_by`, `delivery_note`, `invoice_details`, `is_credit`, `is_fixed`, `is_dynamic`, `status`, `bank_id`, `payment_type`, `is_online`) VALUES ('21', '1020', '0', '2024-10-22', '0.00', '0.00', '0.00', '0.00', '0.00', '0', NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '', NULL, '', NULL, '0', '0', '1', NULL, '0', '1');
INSERT INTO `invoice` (`id`, `invoice_id`, `employee_id`, `date`, `total_amount`, `paid_amount`, `due_amount`, `prevous_due`, `shipping_cost`, `invoice`, `offline_invoice_no`, `invoice_discount`, `total_discount`, `total_vat_amnt`, `total_tax`, `ret_adjust_amnt`, `returnable_amount`, `sales_by`, `delivery_note`, `invoice_details`, `is_credit`, `is_fixed`, `is_dynamic`, `status`, `bank_id`, `payment_type`, `is_online`) VALUES ('22', '1021', '0', '2024-10-22', '2500.00', '0.00', '0.00', '0.00', '0.00', '0', NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '', NULL, '', NULL, '0', '0', '1', NULL, '0', '1');
INSERT INTO `invoice` (`id`, `invoice_id`, `employee_id`, `date`, `total_amount`, `paid_amount`, `due_amount`, `prevous_due`, `shipping_cost`, `invoice`, `offline_invoice_no`, `invoice_discount`, `total_discount`, `total_vat_amnt`, `total_tax`, `ret_adjust_amnt`, `returnable_amount`, `sales_by`, `delivery_note`, `invoice_details`, `is_credit`, `is_fixed`, `is_dynamic`, `status`, `bank_id`, `payment_type`, `is_online`) VALUES ('23', '1022', '0', '2024-10-22', '2500.00', '0.00', '0.00', '0.00', '0.00', '0', NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '', NULL, '', NULL, '0', '0', '1', NULL, '0', '1');
INSERT INTO `invoice` (`id`, `invoice_id`, `employee_id`, `date`, `total_amount`, `paid_amount`, `due_amount`, `prevous_due`, `shipping_cost`, `invoice`, `offline_invoice_no`, `invoice_discount`, `total_discount`, `total_vat_amnt`, `total_tax`, `ret_adjust_amnt`, `returnable_amount`, `sales_by`, `delivery_note`, `invoice_details`, `is_credit`, `is_fixed`, `is_dynamic`, `status`, `bank_id`, `payment_type`, `is_online`) VALUES ('24', '1023', '0', '2024-10-22', '10000.00', '0.00', '0.00', '0.00', '0.00', '0', NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '', NULL, '', NULL, '0', '0', '1', NULL, '0', '1');
INSERT INTO `invoice` (`id`, `invoice_id`, `employee_id`, `date`, `total_amount`, `paid_amount`, `due_amount`, `prevous_due`, `shipping_cost`, `invoice`, `offline_invoice_no`, `invoice_discount`, `total_discount`, `total_vat_amnt`, `total_tax`, `ret_adjust_amnt`, `returnable_amount`, `sales_by`, `delivery_note`, `invoice_details`, `is_credit`, `is_fixed`, `is_dynamic`, `status`, `bank_id`, `payment_type`, `is_online`) VALUES ('25', '1024', '0', '2024-10-23', '6250.00', '0.00', '0.00', '0.00', '0.00', '0', NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '', NULL, '', NULL, '0', '0', '1', NULL, '0', '1');
INSERT INTO `invoice` (`id`, `invoice_id`, `employee_id`, `date`, `total_amount`, `paid_amount`, `due_amount`, `prevous_due`, `shipping_cost`, `invoice`, `offline_invoice_no`, `invoice_discount`, `total_discount`, `total_vat_amnt`, `total_tax`, `ret_adjust_amnt`, `returnable_amount`, `sales_by`, `delivery_note`, `invoice_details`, `is_credit`, `is_fixed`, `is_dynamic`, `status`, `bank_id`, `payment_type`, `is_online`) VALUES ('26', '1025', '0', '2024-10-23', '12500.00', '0.00', '0.00', '0.00', '0.00', '0', NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '', NULL, '', NULL, '0', '0', '1', NULL, '0', '1');
INSERT INTO `invoice` (`id`, `invoice_id`, `employee_id`, `date`, `total_amount`, `paid_amount`, `due_amount`, `prevous_due`, `shipping_cost`, `invoice`, `offline_invoice_no`, `invoice_discount`, `total_discount`, `total_vat_amnt`, `total_tax`, `ret_adjust_amnt`, `returnable_amount`, `sales_by`, `delivery_note`, `invoice_details`, `is_credit`, `is_fixed`, `is_dynamic`, `status`, `bank_id`, `payment_type`, `is_online`) VALUES ('27', '1026', '0', '2024-10-23', '2500.00', '0.00', '0.00', '0.00', '0.00', '0', NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '', NULL, '', NULL, '0', '0', '1', NULL, '0', '1');
INSERT INTO `invoice` (`id`, `invoice_id`, `employee_id`, `date`, `total_amount`, `paid_amount`, `due_amount`, `prevous_due`, `shipping_cost`, `invoice`, `offline_invoice_no`, `invoice_discount`, `total_discount`, `total_vat_amnt`, `total_tax`, `ret_adjust_amnt`, `returnable_amount`, `sales_by`, `delivery_note`, `invoice_details`, `is_credit`, `is_fixed`, `is_dynamic`, `status`, `bank_id`, `payment_type`, `is_online`) VALUES ('28', '1027', '0', '2024-10-23', '18040.00', '0.00', '0.00', '0.00', '0.00', '0', NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '', NULL, '', NULL, '0', '0', '1', NULL, '0', '1');


#
# TABLE STRUCTURE FOR: invoice_details
#

DROP TABLE IF EXISTS `invoice_details`;

CREATE TABLE `invoice_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_details_id` varchar(100) NOT NULL,
  `invoice_id` varchar(100) NOT NULL,
  `ret_invoice_id` bigint(20) DEFAULT NULL,
  `product_id` varchar(30) NOT NULL,
  `serial_no` varchar(30) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `quantity` decimal(10,2) DEFAULT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `batch_id` varchar(30) DEFAULT NULL,
  `supplier_rate` float DEFAULT NULL,
  `total_price` decimal(12,2) DEFAULT NULL,
  `commisionmode` varchar(255) NOT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `discount_per` varchar(15) DEFAULT NULL,
  `vat_amnt` decimal(10,2) DEFAULT NULL,
  `vat_amnt_per` varchar(15) DEFAULT NULL,
  `tax` decimal(10,2) DEFAULT NULL,
  `paid_amount` decimal(12,0) DEFAULT NULL,
  `due_amount` decimal(10,2) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `employeeId` int(11) NOT NULL,
  `dis_type` varchar(255) NOT NULL,
  `meter` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `invoice_id` (`invoice_id`),
  KEY `product_id` (`product_id`),
  KEY `employeeId` (`employeeId`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('1', '5H83KMZXZZLVKJL', '1', NULL, '000021', NULL, NULL, '2.00', '4000.00', NULL, NULL, '7040.00', 'no', '12.00', '960.00', NULL, NULL, NULL, NULL, NULL, '1', '3', 'P', '2');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('2', '6CLSZ9P8ZG2QMXV', '1', NULL, '000004', NULL, NULL, '1.00', '1800.00', NULL, NULL, '1764.00', 'no', '2.00', '36.00', NULL, NULL, NULL, NULL, NULL, '1', '3', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('3', '4JJKYJ96ZMAL855', '2', NULL, '000001', NULL, NULL, '1.00', '2500.00', NULL, NULL, '2500.00', 'no', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('4', '34X2AZKF5TNME3E', '2', NULL, '000008', NULL, NULL, '2.00', '1500.00', NULL, NULL, '2700.00', 'no', '10.00', '300.00', NULL, NULL, NULL, NULL, NULL, '1', '4', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('5', 'WEWCRXZOYQITQ7B', '2', NULL, '000003', NULL, NULL, '5.00', '2800.00', NULL, NULL, '13750.00', 'no', '250.00', '250.00', NULL, NULL, NULL, NULL, NULL, '1', '2', 'A', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('6', '99CL6JIWJGM8TPG', '3', NULL, '000021', NULL, NULL, '2.00', '4000.00', NULL, NULL, '8000.00', 'no', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, '1', '2', 'P', '2.5');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('7', 'GX5JJNKE8AQQJHO', '3', NULL, '000020', NULL, NULL, '2.00', '2500.00', NULL, NULL, '4500.00', 'no', '10.00', '500.00', NULL, NULL, NULL, NULL, NULL, '1', '3', 'P', '2.5');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('8', 'Z6GOBPP2U7HZDCP', '3', NULL, '000019', NULL, NULL, '3.00', '1800.00', NULL, NULL, '5000.00', 'no', '400.00', '400.00', NULL, NULL, NULL, NULL, NULL, '1', '4', 'A', '3');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('9', 'IZZ325P7TTJ6F4V', '5', NULL, '000001', NULL, NULL, '1.00', '2500.00', NULL, NULL, '2500.00', 'no', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, '1', '0', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('10', 'ZVUXI43D7ZP2KJ9', '5', NULL, '000001', NULL, NULL, '1.00', '2500.00', NULL, NULL, '2250.00', 'no', '10.00', '250.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('11', 'JITK2SP84X98AEX', '5', NULL, '000001', NULL, NULL, '1.00', '2500.00', NULL, NULL, '2300.00', 'no', '200.00', '200.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'A', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('12', 'IRZ4MIUE2RD82ZB', '5', NULL, '000001', NULL, NULL, '1.00', '2500.00', NULL, NULL, '2500.00', 'no', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('13', 'XZOVH8VT5XOM47T', '6', NULL, '000001', NULL, NULL, '1.00', '2500.00', NULL, NULL, '2750.00', 'yes', '10.00', '250.00', NULL, NULL, NULL, NULL, NULL, '1', '4', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('14', 'U2H3LKLE31D5NAP', '6', NULL, '000001', NULL, NULL, '1.00', '2500.00', NULL, NULL, '3000.00', 'yes', '500.00', '500.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'A', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('15', 'WDQV5I1D699XCKA', '7', NULL, '000001', NULL, NULL, '1.00', '2500.00', NULL, NULL, '2500.00', 'no', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('16', 'F54QXYBTFQXT1Q8', '7', NULL, '000001', NULL, NULL, '1.00', '2500.00', NULL, NULL, '2250.00', 'no', '10.00', '250.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('17', 'CIRST326XAKKLJW', '7', NULL, '000001', NULL, NULL, '1.00', '2500.00', NULL, NULL, '2000.00', 'no', '500.00', '500.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'A', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('18', 'LL8X87YDOFDT6L9', '7', NULL, '000001', NULL, NULL, '1.00', '2500.00', NULL, NULL, '2750.00', 'yes', '10.00', '250.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('19', 'CLHSF5NWOU3LPMS', '7', NULL, '000001', NULL, NULL, '1.00', '2500.00', NULL, NULL, '3000.00', 'yes', '500.00', '500.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'A', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('20', 'AWN3R69OEKCQAL8', '8', NULL, '000001', NULL, NULL, '1.00', '2500.00', NULL, NULL, '2500.00', 'yes', '0.00', 'NaN', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('21', 'UK8MBHWAXIS8CJ6', '8', NULL, '000001', NULL, NULL, '1.00', '2500.00', NULL, NULL, '2750.00', 'yes', '10.00', '250.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('22', 'WE8J3DRMHBMJT7Z', '8', NULL, '000001', NULL, NULL, '1.00', '2500.00', NULL, NULL, '2600.00', 'yes', '100.00', '100.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'A', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('23', 'LWN1KTS9H1P79YQ', '10', NULL, '000001', NULL, NULL, '1.00', '2500.00', NULL, NULL, '2500.00', 'no', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('24', 'SDSBG4GPE7F6742', '10', NULL, '000001', NULL, NULL, '1.00', '2500.00', NULL, NULL, '2500.00', 'no', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('25', '3VIIWI1KRIAOQJR', '10', NULL, '000001', NULL, NULL, '1.00', '2500.00', NULL, NULL, '2500.00', 'no', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('26', 'DF5BPI14E84OJG4', '10', NULL, '000001', NULL, NULL, '1.00', '2500.00', NULL, NULL, '2500.00', 'no', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('27', 'MUZEY5YSB5HYQX1', '10', NULL, '000001', NULL, NULL, '1.00', '2500.00', NULL, NULL, '2500.00', 'no', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('28', 'MUAQW2TTG84AZIY', '10', NULL, '000001', NULL, NULL, '1.00', '2500.00', NULL, NULL, '2500.00', 'no', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('29', 'S539CD7DVIUXTFJ', '10', NULL, '000001', NULL, NULL, '1.00', '2500.00', NULL, NULL, '2500.00', 'no', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('30', '82KE1PVIRUZQJA4', '10', NULL, '000001', NULL, NULL, '1.00', '2500.00', NULL, NULL, '2500.00', 'no', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('31', 'DNQYN15N1X3O62G', '10', NULL, '000001', NULL, NULL, '1.00', '2500.00', NULL, NULL, '2500.00', 'no', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('32', 'V6PKXV8XMOQ55RB', '10', NULL, '000001', NULL, NULL, '1.00', '2500.00', NULL, NULL, '2500.00', 'no', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('33', 'GDS8FRPMIDAOH4G', '10', NULL, '000001', NULL, NULL, '1.00', '2500.00', NULL, NULL, '2500.00', 'no', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('34', 'UUPIPG8DEZVIIE5', '10', NULL, '000001', NULL, NULL, '1.00', '2500.00', NULL, NULL, '2500.00', 'no', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('35', 'C2YU2Q4J55RMT87', '10', NULL, '000001', NULL, NULL, '1.00', '2500.00', NULL, NULL, '2500.00', 'no', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('36', 'R7RH6UDJI75MVGU', '10', NULL, '000001', NULL, NULL, '1.00', '2500.00', NULL, NULL, '2500.00', 'no', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('37', 'EWQS6PCNT3NGG4Y', '10', NULL, '000002', NULL, NULL, '1.00', '3200.00', NULL, NULL, '3200.00', 'no', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('38', 'HL59S2NOT6OO7CH', '12', NULL, '000001', NULL, NULL, '1.00', '2500.00', NULL, NULL, '2500.00', 'no', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('39', 'S8LZ7REZM835CJS', '12', NULL, '000002', NULL, NULL, '-1.00', '3200.00', NULL, NULL, '-3200.00', 'no', '0.00', 'NaN', NULL, NULL, NULL, NULL, NULL, '1', '4', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('40', 'LL9F8B63SZ3A5LN', '13', NULL, '000001', NULL, NULL, '-1.00', '2500.00', NULL, NULL, '-2500.00', 'no', '0.00', 'NaN', NULL, NULL, NULL, NULL, NULL, '1', '3', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('41', '6IIVSI2JRWJQG5F', '14', NULL, '000001', NULL, NULL, '1.00', '2500.00', NULL, NULL, '2550.00', 'yes', '2.00', '50.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('42', 'P9WJVYT2MJ8PY3W', '14', NULL, '000001', NULL, NULL, '1.00', '2500.00', NULL, NULL, '2500.00', 'yes', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'A', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('43', 'ED75Q3KPS1NG3B2', '14', NULL, '000001', NULL, NULL, '-1.00', '2500.00', NULL, NULL, '-2550.00', 'yes', '2.00', '-50.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('44', 'P4HYNTWNBQGTB38', '14', NULL, '000001', NULL, NULL, '-2.00', '2500.00', NULL, NULL, '-5000.00', 'yes', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, '1', '4', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('45', '84UIMEX1G4U8IX8', '15', NULL, '000001', NULL, NULL, '1.00', '2500.00', NULL, NULL, '2500.00', 'no', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('46', 'BBDFSVV8F14R9N4', '15', NULL, '000001', NULL, NULL, '-5.00', '2500.00', NULL, NULL, '-12500.00', 'no', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('47', 'TUOFRAL11WJDMVZ', '16', NULL, '000001', NULL, NULL, '1.00', '2500.00', NULL, NULL, '2500.00', 'no', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('48', 'XUDB4Y5A935SWPM', '16', NULL, '000001', NULL, NULL, '1.00', '2500.00', NULL, NULL, '2500.00', 'no', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('49', 'RPVB3SUUKYDAQVE', '16', NULL, '000020', NULL, NULL, '2.00', '2500.00', NULL, NULL, '5000.00', 'no', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '2.5');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('50', 'XN5MWCVOHBMFUZR', '16', NULL, '000001', NULL, NULL, '1.00', '2500.00', NULL, NULL, '2250.00', 'no', '10.00', '250.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('51', 'HKBOWXZLETCOSFC', '16', NULL, '000001', NULL, NULL, '1.00', '2500.00', NULL, NULL, '2250.00', 'no', '250.00', '250.00', NULL, NULL, NULL, NULL, NULL, '1', '4', 'A', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('52', '8A8COW28CS5M7T9', '17', NULL, '000001', NULL, NULL, '-2.00', '2500.00', NULL, NULL, '-5000.00', 'no', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, '1', '2', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('53', '8VFPDWHU1ILMSJZ', '17', NULL, '000001', NULL, NULL, '-1.00', '2500.00', NULL, NULL, '-2250.00', 'no', '10.00', '-250.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('54', 'S8FB1VSJRSV3UZY', '17', NULL, '000001', NULL, NULL, '-1.00', '2500.00', NULL, NULL, '-2250.00', 'no', '250.00', '250.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'A', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('55', 'BQF4TLPN2GWK57Y', '18', NULL, '000001', NULL, NULL, '-1.00', '2500.00', NULL, NULL, '-2500.00', 'no', '0.00', 'NaN', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('56', '8EUY4DR9M4R3OF9', '18', NULL, '000003', NULL, NULL, '1.00', '2800.00', NULL, NULL, '2800.00', 'no', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('57', 'PM55LTTJSYOAS8C', '18', NULL, '000001', NULL, NULL, '1.00', '2500.00', NULL, NULL, '2500.00', 'no', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('58', '19HSHKNB9AG4MXR', '18', NULL, '000002', NULL, NULL, '1.00', '3200.00', NULL, NULL, '2560.00', 'no', '20.00', '640.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('59', 'A82SZV42NJSM22T', '18', NULL, '000002', NULL, NULL, '1.00', '3200.00', NULL, NULL, '2560.00', 'no', '640.00', '640.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'A', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('60', 'GK7BUDM3PO8YG5O', '18', NULL, '000002', NULL, NULL, '-1.00', '3200.00', NULL, NULL, '-2560.00', 'no', '20.00', '-640.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('61', 'GF58VRUBPWTNPZ1', '18', NULL, '000002', NULL, NULL, '-1.00', '3200.00', NULL, NULL, '-2560.00', 'no', '640.00', '640.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'A', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('62', '9LI3P3YCVGAC3XY', '18', NULL, '000001', NULL, NULL, '-1.00', '2500.00', NULL, NULL, '-2750.00', 'yes', '10.00', '-250.00', NULL, NULL, NULL, NULL, NULL, '1', '4', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('63', '2O451O7D7Y2SB19', '18', NULL, '000001', NULL, NULL, '1.00', '2500.00', NULL, NULL, '2750.00', 'yes', '10.00', '250.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('64', 'WOYDNZ2912YOOO5', '18', NULL, '000001', NULL, NULL, '1.00', '2500.00', NULL, NULL, '2750.00', 'yes', '250.00', '250.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'A', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('65', '71GORIEGT4WVOSA', '18', NULL, '000001', NULL, NULL, '-1.00', '2500.00', NULL, NULL, '-2750.00', 'yes', '250.00', '250.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'A', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('66', 'E6WNGGV4LDJ7U6D', '18', NULL, '000001', NULL, NULL, '-1.00', '2500.00', NULL, NULL, '-2500.00', 'yes', '0.00', 'NaN', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('67', 'YV92OJL33TZ9Y3C', '18', NULL, '000001', NULL, NULL, '1.00', '2500.00', NULL, NULL, '2500.00', 'no', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('68', 'NLXZQQPIE8ZB9DO', '18', NULL, '000001', NULL, NULL, '1.00', '2500.00', NULL, NULL, '2500.00', 'yes', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('69', '3HZ1YNQFIWUPW78', '19', NULL, '000001', NULL, NULL, '1.00', '2500.00', NULL, NULL, '2500.00', 'yes', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, '1', '2', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('70', 'NIYV7TC44P87LH8', '20', NULL, '000001', NULL, NULL, '-1.00', '2500.00', NULL, NULL, '-2750.00', 'yes', '10.00', '-250.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('71', '9WGY9X1F85COIDW', '21', NULL, '000001', NULL, NULL, '1.00', '2500.00', NULL, NULL, '2500.00', 'no', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('72', 'VW9HWKIQ8LH3648', '21', NULL, '000001', NULL, NULL, '1.00', '2500.00', NULL, NULL, '2250.00', 'no', '10.00', '250.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('73', 'GADYW6TFUA8ADHZ', '21', NULL, '000001', NULL, NULL, '1.00', '2500.00', NULL, NULL, '2250.00', 'no', '250.00', '250.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'A', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('74', 'XN6GX9IOLBC294Q', '21', NULL, '000001', NULL, NULL, '-1.00', '2500.00', NULL, NULL, '-2500.00', 'no', '0.00', 'NaN', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('75', '3EG84RXV4I412OM', '21', NULL, '000001', NULL, NULL, '-1.00', '2500.00', NULL, NULL, '-2250.00', 'no', '10.00', '-250.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('76', 'EI91X74TVNHCS71', '21', NULL, '000001', NULL, NULL, '-1.00', '2500.00', NULL, NULL, '-2250.00', 'no', '250.00', '250.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'A', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('77', 'BHTUJFK4G6ZSW8A', '21', NULL, '000001', NULL, NULL, '1.00', '2500.00', NULL, NULL, '2750.00', 'yes', '10.00', '250.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('78', '4NJPANY6VCRD193', '21', NULL, '000001', NULL, NULL, '1.00', '2500.00', NULL, NULL, '2750.00', 'yes', '250.00', '250.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'A', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('79', 'CI4F81LTH8LC6CE', '21', NULL, '000001', NULL, NULL, '-1.00', '2500.00', NULL, NULL, '-2750.00', 'yes', '10.00', '-250.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('80', 'I3MIAZPAW1RC2BG', '21', NULL, '000001', NULL, NULL, '-1.00', '2500.00', NULL, NULL, '-2750.00', 'yes', '250.00', '250.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'A', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('81', 'MDCWZ7VW5LW36U8', '22', NULL, '000001', NULL, NULL, '1.00', '2500.00', NULL, NULL, '2500.00', 'no', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('82', 'Y41S51MKSBTNBMZ', '23', NULL, '000001', NULL, NULL, '1.00', '2500.00', NULL, NULL, '2500.00', 'no', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('83', 'H2OIVLKXF2SQA7U', '24', NULL, '000001', NULL, NULL, '4.00', '2500.00', NULL, NULL, '10000.00', 'no', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, '1', '2', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('84', 'RV11O79HIY5RIBW', '25', NULL, '000001', NULL, NULL, '1.00', '2500.00', NULL, NULL, '2500.00', 'no', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('85', 'QJPQO5NYBS7BLGN', '25', NULL, '000020', NULL, NULL, '1.00', '2500.00', NULL, NULL, '3750.00', 'no', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '1.5');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('86', 'ZR6EMLWVWZKM3NO', '26', NULL, '000001', NULL, NULL, '5.00', '2500.00', NULL, NULL, '12500.00', 'no', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('87', '8YOCCX6CJVBV9Q5', '27', NULL, '000001', NULL, NULL, '1.00', '2500.00', NULL, NULL, '2500.00', 'no', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('88', 'M9NPY8QSBHH1EGR', '28', NULL, '000002', NULL, NULL, '2.00', '3200.00', NULL, NULL, '5760.00', 'no', '10.00', '640.00', NULL, NULL, NULL, NULL, NULL, '1', '2', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('89', 'DV9NBS1P84IB181', '28', NULL, '000001', NULL, NULL, '2.00', '2500.00', NULL, NULL, '4800.00', 'no', '200.00', '200.00', NULL, NULL, NULL, NULL, NULL, '1', '3', 'A', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('90', 'Y8RI6PEOQKMGG38', '28', NULL, '000020', NULL, NULL, '2.00', '2500.00', NULL, NULL, '6250.00', 'no', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '2.5');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('91', '2YNC58WI9ACVYCQ', '28', NULL, '000002', NULL, NULL, '1.00', '3200.00', NULL, NULL, '3200.00', 'no', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('92', '3KXZKZ5J1UGRH2L', '28', NULL, '000002', NULL, NULL, '1.00', '3200.00', NULL, NULL, '2880.00', 'no', '10.00', '320.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('93', 'M5R6VWVQY62PL9O', '28', NULL, '000003', NULL, NULL, '1.00', '2800.00', NULL, NULL, '2550.00', 'no', '250.00', '250.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'A', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('94', '1BWBCICRQTAKG5G', '28', NULL, '000002', NULL, NULL, '-2.00', '3200.00', NULL, NULL, '-6400.00', 'no', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('95', 'XIN43BFW611TNTK', '28', NULL, '000020', NULL, NULL, '1.00', '2500.00', NULL, NULL, '3000.00', 'yes', '20.00', '500.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '1');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `commisionmode`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`, `employeeId`, `dis_type`, `meter`) VALUES ('96', '1FOLFHYHNND6SLG', '28', NULL, '000002', NULL, NULL, '-1.00', '3200.00', NULL, NULL, '-4000.00', 'yes', '25.00', '-800.00', NULL, NULL, NULL, NULL, NULL, '1', '5', 'P', '0.0');


#
# TABLE STRUCTURE FOR: language
#

DROP TABLE IF EXISTS `language`;

CREATE TABLE `language` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `phrase` text NOT NULL,
  `english` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1098 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1', 'user_profile', 'User Profile');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('2', 'setting', 'Setting');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('3', 'language', 'Language');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('4', 'manage_users', 'Manage Users');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('5', 'add_user', 'Add User');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('6', 'manage_company', 'Manage Company');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('7', 'web_settings', 'Software Settings');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('8', 'manage_accounts', 'Manage Accounts');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('9', 'create_accounts', 'Create Account');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('10', 'manage_bank', 'Manage Bank');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('11', 'add_new_bank', 'Add New Bank');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('12', 'settings', 'Settings');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('13', 'closing_report', 'Closing Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('14', 'closing', 'Closing');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('15', 'cheque_manager', 'Cheque Manager');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('16', 'accounts_summary', 'Accounts Summary');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('17', 'expense', 'Expense');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('18', 'income', 'Income');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('19', 'accounts', 'Accounts');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('20', 'stock_report', 'Stock Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('21', 'stock', 'Stock');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('22', 'pos_invoice', 'POS Sale');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('23', 'manage_invoice', 'Manage Sale');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('24', 'new_invoice', 'New Sale');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('25', 'invoice', 'Sale');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('26', 'manage_purchase', 'Manage Purchase');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('27', 'add_purchase', 'Add Purchase');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('28', 'purchase', 'Purchase');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('29', 'paid_customer', 'Paid Customer');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('30', 'manage_customer', 'Manage Customer');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('31', 'add_customer', 'Add Customer');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('32', 'customer', 'Customer');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('33', 'supplier_payment_actual', 'Supplier Payment Ledger');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('34', 'supplier_sales_summary', 'Supplier Sales Summary');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('35', 'supplier_sales_details', 'Supplier Sales Details');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('36', 'supplier_ledger', 'Supplier Ledger');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('37', 'manage_supplier', 'Manage Supplier');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('38', 'add_supplier', 'Add Supplier');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('39', 'supplier', 'Supplier');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('40', 'product_statement', 'Product Statement');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('41', 'manage_product', 'Manage Product');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('42', 'add_product', 'Add Product');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('43', 'product', 'Product');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('44', 'manage_category', 'Manage Category');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('45', 'add_category', 'Add Groupcode');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('46', 'category', 'Group Code');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('47', 'sales_report_product_wise', 'Sales Report (Product Wise)');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('48', 'purchase_report', 'Purchase Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('49', 'sales_report', 'Invoice Summary Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('50', 'todays_report', 'Todays Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('51', 'report', 'Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('52', 'dashboard', 'Dashboard');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('53', 'online', 'Online');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('54', 'logout', 'Logout');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('55', 'change_password', 'Change Password');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('56', 'total_purchase', 'Total Purchase');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('57', 'total_amount', 'Total Amount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('58', 'supplier_name', 'Supplier Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('59', 'invoice_no', 'Invoice No');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('60', 'purchase_date', 'Purchase Date');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('61', 'todays_purchase_report', 'Todays Purchase Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('62', 'total_sales', 'Total Sales');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('63', 'customer_name', 'Customer Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('64', 'sales_date', 'Sales Date');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('65', 'todays_sales_report', 'Todays Sales Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('66', 'home', 'Home');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('67', 'todays_sales_and_purchase_report', 'Todays sales and purchase report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('68', 'total_ammount', 'Total Amount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('69', 'rate', 'Rate');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('70', 'product_model', 'Product Model');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('71', 'product_name', 'Product Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('72', 'search', 'Search');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('73', 'end_date', 'End Date');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('74', 'start_date', 'Start Date');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('75', 'total_purchase_report', 'Total Purchase Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('76', 'total_sales_report', 'Total Sales Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('77', 'total_seles', 'Total Sales');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('78', 'all_stock_report', 'All Stock Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('79', 'search_by_product', 'Search By Product');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('80', 'date', 'Date');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('81', 'print', 'Print');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('82', 'stock_date', 'Stock Date');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('83', 'print_date', 'Print Date');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('84', 'sales', 'Sales');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('85', 'price', 'Price');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('86', 'sl', 'SL.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('87', 'add_new_category', 'Add new category');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('88', 'category_name', 'Groupcode Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('89', 'save', 'Save');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('90', 'delete', 'Delete');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('91', 'update', 'Update');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('92', 'action', 'Action');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('93', 'manage_your_category', 'Manage your category ');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('94', 'category_edit', 'Category Edit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('95', 'status', 'Status');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('96', 'active', 'Active');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('97', 'inactive', 'Inactive');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('98', 'save_changes', 'Save Changes');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('99', 'save_and_add_another', 'Save And Add Another');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('100', 'model', 'Model');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('101', 'supplier_price', 'Supplier Price');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('102', 'sell_price', 'Last Sale Price');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('103', 'image', 'Image');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('104', 'select_one', 'Select One');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('105', 'details', 'Details');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('106', 'new_product', 'New Product');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('107', 'add_new_product', 'Add new product');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('108', 'barcode', 'Barcode');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('109', 'qr_code', 'Qr-Code');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('110', 'product_details', 'Product Details');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('111', 'manage_your_product', 'Manage your product');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('112', 'product_edit', 'Product Edit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('113', 'edit_your_product', 'Edit your product');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('114', 'cancel', 'Cancel');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('115', 'incl_vat', 'Incl. Vat');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('116', 'money', 'TK');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('117', 'grand_total', 'Grand Total');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('118', 'quantity', 'Qnty');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('119', 'product_report', 'Product Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('120', 'product_sales_and_purchase_report', 'Product sales and purchase report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('121', 'previous_stock', 'Previous Stock');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('122', 'out', 'Out');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('123', 'in', 'In');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('124', 'to', 'To');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('125', 'previous_balance', 'Previous Balance');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('126', 'customer_address', 'Customer Address');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('127', 'customer_mobile', 'Customer Mobile');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('128', 'customer_email', 'Customer Email');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('129', 'add_new_customer', 'Add new customer');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('130', 'balance', 'Balance');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('131', 'mobile', 'Mobile');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('132', 'address', 'Address');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('133', 'manage_your_customer', 'Manage your customer');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('134', 'customer_edit', 'Customer Edit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('135', 'paid_customer_list', 'Paid Customer List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('136', 'ammount', 'Amount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('137', 'customer_ledger', 'Customer Ledger');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('138', 'manage_customer_ledger', 'Manage Customer Ledger');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('139', 'customer_information', 'Customer Information');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('140', 'debit_ammount', 'Debit Amount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('141', 'credit_ammount', 'Credit Amount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('142', 'balance_ammount', 'Balance Amount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('143', 'receipt_no', 'Receipt NO');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('144', 'description', 'Description');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('145', 'debit', 'Debit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('146', 'credit', 'Credit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('147', 'item_information', 'Item Information');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('148', 'total', 'Total');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('149', 'please_select_supplier', 'Please Select Supplier');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('150', 'submit', 'Submit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('151', 'submit_and_add_another', 'Submit And Add Another One');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('152', 'add_new_item', 'Add New Item');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('153', 'manage_your_purchase', 'Manage your purchase');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('154', 'purchase_edit', 'Purchase Edit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('155', 'purchase_ledger', 'Purchase Ledger');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('156', 'invoice_information', 'Sale Information');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('157', 'paid_ammount', 'Paid Amount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('158', 'discount', 'Dis./Pcs.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('159', 'save_and_paid', 'Save And Paid');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('160', 'payee_name', 'Payee Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('161', 'manage_your_invoice', 'Manage your Sale');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('162', 'invoice_edit', 'Sale Edit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('163', 'new_pos_invoice', 'New POS Sale');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('164', 'add_new_pos_invoice', 'Add new pos Sale');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('165', 'product_id', 'Product ID');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('166', 'paid_amount', 'Paid Amount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('167', 'authorised_by', 'Authorised By');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('168', 'checked_by', 'Checked By');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('169', 'received_by', 'Received By');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('170', 'prepared_by', 'Prepared By');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('171', 'memo_no', 'Memo No');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('172', 'website', 'Website');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('173', 'email', 'Email');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('174', 'invoice_details', 'Sale Details');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('175', 'reset', 'Reset');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('176', 'payment_account', 'Payment Account');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('177', 'bank_name', 'Bank Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('178', 'cheque_or_pay_order_no', 'Cheque/Pay Order No');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('179', 'payment_type', 'Payment Type');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('180', 'payment_from', 'Payment From');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('181', 'payment_date', 'Payment Date');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('182', 'add_income', 'Add Income');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('183', 'cash', 'Cash');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('184', 'cheque', 'Cheque');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('185', 'pay_order', 'Pay Order');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('186', 'payment_to', 'Payment To');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('187', 'total_outflow_ammount', 'Total Expense Amount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('188', 'transections', 'Transections');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('189', 'accounts_name', 'Accounts Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('190', 'outflow_report', 'Expense Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('191', 'inflow_report', 'Income Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('192', 'all', 'All');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('193', 'account', 'Account');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('194', 'from', 'From');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('195', 'account_summary_report', 'Account Summary Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('196', 'search_by_date', 'Search By Date');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('197', 'cheque_no', 'Cheque No');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('198', 'name', 'Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('199', 'closing_account', 'Closing Account');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('200', 'close_your_account', 'Close your account');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('201', 'last_day_closing', 'Last Day Closing');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('202', 'cash_in', 'Cash In');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('203', 'cash_out', 'Cash Out');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('204', 'cash_in_hand', 'Cash In Hand');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('205', 'add_new_bank', 'Add New Bank');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('206', 'day_closing', 'Day Closing');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('207', 'account_closing_report', 'Account Closing Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('208', 'last_day_ammount', 'Last Day Amount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('209', 'adjustment', 'Adjustment');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('210', 'pay_type', 'Pay Type');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('211', 'customer_or_supplier', 'Customer,Supplier Or Others');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('212', 'transection_id', 'Transections ID');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('213', 'accounts_summary_report', 'Accounts Summary Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('214', 'bank_list', 'Bank List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('215', 'bank_edit', 'Bank Edit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('216', 'debit_plus', 'Payment (+)');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('217', 'credit_minus', 'Payment (-)');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('218', 'account_name', 'Account Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('219', 'account_type', 'Account Type');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('220', 'account_real_name', 'Account Real Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('221', 'manage_account', 'Manage Account');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('222', 'company_name', 'Niha International');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('223', 'edit_your_company_information', 'Edit your company information');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('224', 'company_edit', 'Company Edit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('225', 'admin', 'Admin');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('226', 'user', 'User');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('227', 'password', 'Password');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('228', 'last_name', 'Last Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('229', 'first_name', 'First Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('230', 'add_new_user_information', 'Add new user information');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('231', 'user_type', 'User Type');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('232', 'user_edit', 'User Edit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('233', 'rtr', 'RTR');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('234', 'ltr', 'LTR');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('235', 'ltr_or_rtr', 'LTR/RTR');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('236', 'footer_text', 'Footer Text');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('237', 'favicon', 'Favicon');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('238', 'logo', 'Logo');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('239', 'update_setting', 'Update Setting');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('240', 'update_your_web_setting', 'Update your web setting');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('241', 'login', 'Login');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('242', 'your_strong_password', 'Your strong password');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('243', 'your_unique_email', 'Your unique email');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('244', 'please_enter_your_login_information', 'Please enter your login information.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('245', 'update_profile', 'Update Profile');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('246', 'your_profile', 'Your Profile');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('247', 're_type_password', 'Re-Type Password');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('248', 'new_password', 'New Password');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('249', 'old_password', 'Old Password');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('250', 'new_information', 'New Information');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('251', 'old_information', 'Old Information');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('252', 'change_your_information', 'Change your information');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('253', 'change_your_profile', 'Change your profile');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('254', 'profile', 'Profile');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('255', 'wrong_username_or_password', 'Wrong User Name Or Password !');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('256', 'successfully_updated', 'Successfully Updated.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('257', 'blank_field_does_not_accept', 'Blank Field Does Not Accept !');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('258', 'successfully_changed_password', 'Successfully changed password.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('259', 'you_are_not_authorised_person', 'You are not authorised person !');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('260', 'password_and_repassword_does_not_match', 'Passwor and re-password does not match !');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('261', 'new_password_at_least_six_character', 'New Password At Least 6 Character.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('262', 'you_put_wrong_email_address', 'You put wrong email address !');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('263', 'cheque_ammount_asjusted', 'Cheque amount adjusted.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('264', 'successfully_payment_paid', 'Successfully Payment Paid.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('265', 'successfully_added', 'Successfully Added.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('266', 'successfully_updated_2_closing_ammount_not_changeale', 'Successfully Updated -2. Note: Closing Amount Not Changeable.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('267', 'successfully_payment_received', 'Successfully Payment Received.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('268', 'already_inserted', 'Already Inserted !');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('269', 'successfully_delete', 'Successfully Delete.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('270', 'successfully_created', 'Successfully Created.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('271', 'logo_not_uploaded', 'Logo not uploaded !');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('272', 'favicon_not_uploaded', 'Favicon not uploaded !');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('273', 'supplier_mobile', 'Supplier Mobile');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('274', 'supplier_address', 'Supplier Address');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('275', 'supplier_details', 'Supplier Details');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('276', 'add_new_supplier', 'Add New Supplier');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('277', 'manage_suppiler', 'Manage Supplier');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('278', 'manage_your_supplier', 'Manage your supplier');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('279', 'manage_supplier_ledger', 'Manage supplier ledger');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('280', 'invoice_id', 'Invoice ID');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('281', 'deposite_id', 'Deposite ID');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('282', 'supplier_actual_ledger', 'Supplier Payment Ledger');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('283', 'supplier_information', 'Supplier Information');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('284', 'event', 'Event');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('285', 'add_new_income', 'Add New Income');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('286', 'add_expese', 'Add Expense');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('287', 'add_new_expense', 'Add New Expense');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('288', 'total_inflow_ammount', 'Total Income Amount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('289', 'create_new_invoice', 'Create New Sale');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('290', 'create_pos_invoice', 'Create POS Sale');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('291', 'total_profit', 'Total Profit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('292', 'monthly_progress_report', 'Monthly Progress Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('293', 'total_invoice', 'Total Sale');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('294', 'account_summary', 'Account Summary');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('295', 'total_supplier', 'Total Supplier');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('296', 'total_product', 'Total Product');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('297', 'total_customer', 'Total Customer');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('298', 'supplier_edit', 'Supplier Edit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('299', 'add_new_invoice', 'Add New Sale');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('300', 'add_new_purchase', 'Add new purchase');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('301', 'currency', 'Currency');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('302', 'currency_position', 'Currency Position');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('303', 'left', 'Left');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('304', 'right', 'Right');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('305', 'add_tax', 'Add TAX');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('306', 'manage_tax', 'Manage TAX');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('307', 'add_new_tax', 'Add new TAX');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('308', 'enter_tax', 'Enter TAX');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('309', 'already_exists', 'Already Exists !');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('310', 'successfully_inserted', 'Successfully Inserted.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('311', 'tax', 'TAX');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('312', 'tax_edit', 'TAX Edit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('313', 'product_not_added', 'Product not added !');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('314', 'total_tax', 'Total TAX');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('315', 'manage_your_supplier_details', 'Manage your supplier details.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('316', 'invoice_description', 'Lorem Ipsum is sim ply dummy Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy Lorem Ipsum is sim ply dummy Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('317', 'thank_you_for_choosing_us', 'Thank you very much for choosing us.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('318', 'billing_date', 'Billing Date');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('319', 'billing_to', 'Billing To');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('320', 'billing_from', 'Billing From');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('321', 'you_cant_delete_this_product', 'Sorry !!  You can\'t delete this product.This product already used in calculation system!');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('322', 'old_customer', 'Old Customer');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('323', 'new_customer', 'New Customer');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('324', 'new_supplier', 'New Supplier');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('325', 'old_supplier', 'Old Supplier');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('326', 'credit_customer', 'Credit Customer');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('327', 'account_already_exists', 'This Account Already Exists !');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('328', 'edit_income', 'Edit Income');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('329', 'you_are_not_access_this_part', 'You are not authorised person !');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('330', 'account_edit', 'Account Edit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('331', 'due', 'Due');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('332', 'expense_edit', 'Expense Edit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('333', 'please_select_customer', 'Please select customer !');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('334', 'profit_report', 'Profit Report (Sale Wise)');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('335', 'total_profit_report', 'Total profit report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('336', 'please_enter_valid_captcha', 'Please enter valid captcha.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('337', 'category_not_selected', 'Category not selected.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('338', 'supplier_not_selected', 'Supplier not selected.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('339', 'please_select_product', 'Please select product.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('340', 'product_model_already_exist', 'Product model already exist !');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('341', 'invoice_logo', 'Sale Logo');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('342', 'available_qnty', 'Av. Qnty.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('343', 'you_can_not_buy_greater_than_available_cartoon', 'You can not select grater than available cartoon !');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('344', 'customer_details', 'Customer details');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('345', 'manage_customer_details', 'Manage customer details.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('346', 'site_key', 'Captcha Site Key');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('347', 'secret_key', 'Captcha Secret Key');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('348', 'captcha', 'Captcha');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('349', 'cartoon_quantity', 'Cartoon Quantity');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('350', 'total_cartoon', 'Total Cartoon');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('351', 'cartoon', 'Cartoon');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('352', 'item_cartoon', 'Item/Cartoon');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('353', 'product_and_supplier_did_not_match', 'Product and supplier did not match !');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('354', 'if_you_update_purchase_first_select_supplier_then_product_and_then_quantity', 'If you update purchase,first select supplier then product and then update qnty.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('355', 'item', 'Item');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('356', 'manage_your_credit_customer', 'Manage your credit customer');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('357', 'total_quantity', 'Total Quantity');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('358', 'quantity_per_cartoon', 'Quantity per cartoon');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('359', 'barcode_qrcode_scan_here', 'Barcode or QR-code scan here');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('360', 'synchronizer_setting', 'Synchronizer Setting');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('361', 'data_synchronizer', 'Data Synchronizer');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('362', 'hostname', 'Host name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('363', 'username', 'User Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('364', 'ftp_port', 'FTP Port');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('365', 'ftp_debug', 'FTP Debug');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('366', 'project_root', 'Project Root');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('367', 'please_try_again', 'Please try again');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('368', 'save_successfully', 'Save successfully');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('369', 'synchronize', 'Synchronize');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('370', 'internet_connection', 'Internet Connection');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('371', 'outgoing_file', 'Outgoing File');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('372', 'incoming_file', 'Incoming File');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('373', 'ok', 'Ok');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('374', 'not_available', 'Not Available');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('375', 'available', 'Available');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('376', 'download_data_from_server', 'Download data from server');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('377', 'data_import_to_database', 'Data import to database');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('378', 'data_upload_to_server', 'Data uplod to server');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('379', 'please_wait', 'Please Wait');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('380', 'ooops_something_went_wrong', 'Oooops Something went wrong !');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('381', 'upload_successfully', 'Upload successfully');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('382', 'unable_to_upload_file_please_check_configuration', 'Unable to upload file please check configuration');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('383', 'please_configure_synchronizer_settings', 'Please configure synchronizer settings');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('384', 'download_successfully', 'Download successfully');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('385', 'unable_to_download_file_please_check_configuration', 'Unable to download file please check configuration');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('386', 'data_import_first', 'Data import past');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('387', 'data_import_successfully', 'Data import successfully');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('388', 'unable_to_import_data_please_check_config_or_sql_file', 'Unable to import data please check config or sql file');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('389', 'total_sale_ctn', 'Total Sale Ctn');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('390', 'in_qnty', 'In Qnty.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('391', 'out_qnty', 'Out Qnty.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('392', 'stock_report_supplier_wise', 'Stock Report (Supplier Wise)');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('393', 'all_stock_report_supplier_wise', 'Stock Report (Suppler Wise)');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('394', 'select_supplier', 'Select Supplier');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('395', 'stock_report_product_wise', 'Stock Report (Product Wise)');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('396', 'phone', 'Phone');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('397', 'select_product', 'Select Product');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('398', 'in_quantity', 'In Qnty.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('399', 'out_quantity', 'Out Qnty.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('400', 'in_taka', 'In TK.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('401', 'out_taka', 'Out TK.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('402', 'commission', 'Commission');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('403', 'generate_commission', 'Generate Commssion');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('404', 'commission_rate', 'Commission Rate');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('405', 'total_ctn', 'Total Ctn.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('406', 'per_pcs_commission', 'Per PCS Commission');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('407', 'total_commission', 'Total Commission');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('408', 'enter', 'Enter');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('409', 'please_add_walking_customer_for_default_customer', 'Please add \'Walking Customer\' for default customer.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('410', 'supplier_ammount', 'Supplier Amount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('411', 'my_sale_ammount', 'My Sale Amount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('412', 'signature_pic', 'Signature Picture');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('413', 'branch', 'Branch');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('414', 'ac_no', 'A/C Number');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('415', 'ac_name', 'A/C Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('416', 'bank_transaction', 'Bank Transaction');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('417', 'bank', 'Bank');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('418', 'withdraw_deposite_id', 'Withdraw / Deposite ID');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('419', 'bank_ledger', 'Bank Ledger');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('420', 'note_name', 'Note Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('421', 'pcs', 'Pcs.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('422', '1', '1');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('423', '2', '2');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('424', '5', '5');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('425', '10', '10');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('426', '20', '20');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('427', '50', '50');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('428', '100', '100');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('429', '500', '500');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('430', '1000', '1000');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('431', 'total_discount', 'Total Discount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('432', 'product_not_found', 'Product not found !');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('433', 'this_is_not_credit_customer', 'This is not credit customer !');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('434', 'personal_loan', 'Personal Loan');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('435', 'add_person', 'Add Person');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('436', 'add_loan', 'Add Loan');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('437', 'add_payment', 'Add Payment');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('438', 'manage_person', 'Manage Person');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('439', 'personal_edit', 'Person Edit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('440', 'person_ledger', 'Person Ledger');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('441', 'backup_restore', 'Backup ');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('442', 'database_backup', 'Database backup');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('443', 'file_information', 'File information');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('444', 'filename', 'Filename');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('445', 'size', 'Size');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('446', 'backup_date', 'Backup date');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('447', 'backup_now', 'Backup now');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('448', 'restore_now', 'Restore now');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('449', 'are_you_sure', 'Are you sure ?');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('450', 'download', 'Download');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('451', 'backup_and_restore', 'Backup');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('452', 'backup_successfully', 'Backup successfully');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('453', 'delete_successfully', 'successfully Deleted');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('454', 'stock_ctn', 'Stock/Qnt');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('455', 'unit', 'Unit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('456', 'meter_m', 'Meter (M)');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('457', 'piece_pc', 'Piece (Pc)');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('458', 'kilogram_kg', 'Kilogram (Kg)');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('459', 'stock_cartoon', 'Stock Cartoon');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('460', 'add_product_csv', 'Add Product (CSV)');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('461', 'import_product_csv', 'Import product (CSV)');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('462', 'close', 'Close');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('463', 'download_example_file', 'Download example file.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('464', 'upload_csv_file', 'Upload CSV File');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('465', 'csv_file_informaion', 'CSV File Information');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('466', 'out_of_stock', 'Out Of Stock');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('467', 'others', 'Others');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('468', 'full_paid', 'Full Paid');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('469', 'successfully_saved', 'Your Data Successfully Saved');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('470', 'manage_loan', 'Manage Loan');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('471', 'receipt', 'Receipt');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('472', 'payment', 'Payment');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('473', 'cashflow', 'Daily Cash Flow');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('474', 'signature', 'Signature');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('475', 'supplier_reports', 'Supplier Reports');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('476', 'generate', 'Generate');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('477', 'todays_overview', 'Todays Overview');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('478', 'last_sales', 'Last Sales');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('479', 'manage_transaction', 'Manage Transaction');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('480', 'daily_summary', 'Daily Summary');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('481', 'daily_cash_flow', 'Daily Cash Flow');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('482', 'custom_report', 'Custom Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('483', 'transaction', 'Transaction');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('484', 'receipt_amount', 'Receipt Amount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('485', 'transaction_details_datewise', 'Transaction Details Datewise');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('486', 'cash_closing', 'Cash Closing');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('487', 'you_can_not_buy_greater_than_available_qnty', 'You can not buy greater than available qnty.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('488', 'supplier_id', 'Supplier ID');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('489', 'category_id', 'Category ID');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('490', 'select_report', 'Select Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('491', 'supplier_summary', 'Supplier summary');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('492', 'sales_payment_actual', 'Sales payment actual');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('493', 'today_already_closed', 'Today already closed.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('494', 'root_account', 'Root Account');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('495', 'office', 'Office');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('496', 'loan', 'Loan');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('497', 'transaction_mood', 'Transaction Mood');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('498', 'select_account', 'Select Account');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('499', 'add_receipt', 'Add Receipt');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('500', 'update_transaction', 'Update Transaction');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('501', 'no_stock_found', 'No Stock Found !');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('502', 'admin_login_area', 'Admin Login Area');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('503', 'print_qr_code', 'Print QR Code');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('504', 'discount_type', 'Discount Type');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('505', 'discount_percentage', 'Discount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('506', 'fixed_dis', 'Fixed Dis.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('507', 'return', 'Return');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('508', 'stock_return_list', 'Stock Return List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('509', 'wastage_return_list', 'Wastage Return List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('510', 'return_invoice', 'Sale Return');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('511', 'sold_qty', 'Sold Qty');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('512', 'ret_quantity', 'Return Qty');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('513', 'deduction', 'Deduction');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('514', 'check_return', 'Check Return');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('515', 'reason', 'Reason');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('516', 'usablilties', 'Usability');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('517', 'adjs_with_stck', 'Adjust With Stock');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('518', 'return_to_supplier', 'Return To Supplier');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('519', 'wastage', 'Wastage');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('520', 'to_deduction', 'Total Deduction ');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('521', 'nt_return', 'Net Return Amount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('522', 'return_list', 'Return List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('523', 'add_return', 'Add Return');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('524', 'per_qty', 'Purchase Qty');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('525', 'return_supplier', 'Supplier Return');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('526', 'stock_purchase', 'Stock Purchase Price');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('527', 'stock_sale', 'Stock Sale Price');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('528', 'supplier_return', 'Supplier Return');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('529', 'purchase_id', 'Purchase ID');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('530', 'return_id', 'Return ID');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('531', 'supplier_return_list', 'Supplier Return List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('532', 'c_r_slist', 'Stock Return Stock');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('533', 'wastage_list', 'Wastage List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('534', 'please_input_correct_invoice_id', 'Please Input a Correct Sale ID');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('535', 'please_input_correct_purchase_id', 'Please Input Your Correct  Purchase ID');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('536', 'add_more', 'Add More');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('537', 'prouct_details', 'Product Details');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('538', 'prouct_detail', 'Product Details');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('539', 'stock_return', 'Stock Return');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('540', 'choose_transaction', 'Select Transaction');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('541', 'transection_category', 'Select  Category');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('542', 'transaction_categry', 'Select Category');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('543', 'search_supplier', 'Search Supplier');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('544', 'customer_id', 'Customer ID');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('545', 'search_customer', 'Search Customer Invoice');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('546', 'serial_no', 'SN');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('547', 'item_discount', 'Item Discount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('548', 'invoice_discount', 'Sale Discount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('549', 'add_unit', 'Add Unit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('550', 'manage_unit', 'Manage Unit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('551', 'add_new_unit', 'Add New Unit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('552', 'unit_name', 'Unit Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('553', 'payment_amount', 'Payment Amount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('554', 'manage_your_unit', 'Manage Your Unit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('555', 'unit_id', 'Unit ID');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('556', 'unit_edit', 'Unit Edit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('557', 'vat', 'Vat');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('558', 'sales_report_category_wise', 'Counter Sales Summary');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('559', 'purchase_report_category_wise', 'Purchase Report (Category wise)');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('560', 'category_wise_purchase_report', 'Category wise purchase report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('561', 'category_wise_sales_report', 'Category wise sales report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('562', 'best_sale_product', 'Best Sale Product');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('563', 'all_best_sales_product', 'All Best Sales Products');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('564', 'todays_customer_receipt', 'Todays Customer Receipt');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('565', 'not_found', 'Record not found');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('566', 'collection', 'Collection');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('567', 'increment', 'Increment');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('568', 'accounts_tree_view', 'Accounts Tree View');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('569', 'debit_voucher', 'Payment Voucher');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('570', 'voucher_no', 'Voucher No');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('571', 'credit_account_head', 'Credit Account Head');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('572', 'remark', 'Remark');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('573', 'code', 'Code');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('574', 'amount', 'Amount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('575', 'approved', 'Approved');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('576', 'debit_account_head', 'Debit Account Head');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('577', 'credit_voucher', 'Receipt Voucher');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('578', 'find', 'Find');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('579', 'transaction_date', 'Transaction Date');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('580', 'voucher_type', 'Voucher Type');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('581', 'particulars', 'Particulars');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('582', 'with_details', 'With Details');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('583', 'general_ledger', 'General Ledger');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('584', 'general_ledger_of', 'General ledger of');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('585', 'pre_balance', 'Pre Balance');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('586', 'current_balance', 'Current Balance');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('587', 'to_date', 'To Date');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('588', 'from_date', 'From Date');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('589', 'trial_balance', 'Trial Balance');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('590', 'authorized_signature', 'Authorized Signature');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('591', 'chairman', 'Chairman');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('592', 'total_income', 'Total Income');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('593', 'statement_of_comprehensive_income', 'Statement of Comprehensive Income');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('594', 'profit_loss', 'Profit Loss');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('595', 'cash_flow_report', 'Cash Flow Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('596', 'cash_flow_statement', 'Cash Flow Statement');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('597', 'amount_in_dollar', 'Amount In Dollar');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('598', 'opening_cash_and_equivalent', 'Opening Cash and Equivalent');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('599', 'coa_print', 'Coa Print');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('600', 'cash_flow', 'Cash Flow');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('601', 'cash_book', 'Cash Book');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('602', 'bank_book', 'Bank Book');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('603', 'c_o_a', 'Chart of Account');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('604', 'journal_voucher', 'Journal Voucher');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('605', 'contra_voucher', 'Contra Voucher');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('606', 'voucher_approval', 'Vouchar Approval');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('607', 'supplier_payment', 'Supplier Payment');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('608', 'customer_receive', 'Customer Receive');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('609', 'gl_head', 'General Head');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('610', 'account_code', 'Account Head');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('611', 'opening_balance', 'Opening Balance');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('612', 'head_of_account', 'Head of Account');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('613', 'inventory_ledger', 'Inventory Ledger');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('614', 'newpassword', 'New Password');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('615', 'password_recovery', 'Password Recovery');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('616', 'forgot_password', 'Forgot Password ??');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('617', 'send', 'Send');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('618', 'due_report', 'Due Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('619', 'due_amount', 'Due Amount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('620', 'download_sample_file', 'Download Sample File');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('621', 'customer_csv_upload', 'Customer Csv Upload');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('622', 'csv_supplier', 'Csv Upload Supplier');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('623', 'csv_upload_supplier', 'Csv Upload Supplier');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('624', 'previous', 'Previous');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('625', 'net_total', 'Net Total');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('626', 'currency_list', 'Currency List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('627', 'currency_name', 'Currency Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('628', 'currency_icon', 'Currency Symbol');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('629', 'add_currency', 'Add Currency');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('630', 'role_permission', 'Role Permission');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('631', 'role_list', 'Role List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('632', 'user_assign_role', 'User Assign Role');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('633', 'permission', 'Permission');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('634', 'add_role', 'Add Role');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('635', 'add_module', 'Add Module');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('636', 'module_name', 'Module Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('637', 'office_loan', 'Office Loan');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('638', 'add_menu', 'Add Menu');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('639', 'menu_name', 'Menu Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('640', 'sl_no', 'Sl No');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('641', 'create', 'Create');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('642', 'read', 'Read');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('643', 'role_name', 'Role Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('644', 'qty', 'Quantity');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('645', 'max_rate', 'Max Rate');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('646', 'min_rate', 'Min Rate');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('647', 'avg_rate', 'Average Rate');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('648', 'role_permission_added_successfully', 'Role Permission Successfully Added');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('649', 'update_successfully', 'Successfully Updated');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('650', 'role_permission_updated_successfully', 'Role Permission Successfully Updated ');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('651', 'shipping_cost', 'Shipping Cost');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('652', 'in_word', 'In Word ');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('653', 'shipping_cost_report', 'Shipping Cost Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('654', 'cash_book_report', 'Cash Book Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('655', 'inventory_ledger_report', 'Inventory Ledger Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('656', 'trial_balance_with_opening_as_on', 'Trial Balance With Opening As On');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('657', 'type', 'Type');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('658', 'taka_only', 'Taka Only');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('659', 'item_description', 'Desc');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('660', 'sold_by', 'Sold By');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('661', 'user_wise_sales_report', 'Sales Report (Floor Wise)');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('662', 'user_name', 'User Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('663', 'total_sold', 'Total Sold');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('664', 'user_wise_sale_report', 'Sales Report (Floor Wise)');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('665', 'barcode_or_qrcode', 'Barcode/QR-code');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('666', 'category_csv_upload', 'Category Csv  Upload');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('667', 'unit_csv_upload', 'Unit Csv Upload');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('668', 'invoice_return_list', 'Sales Return list');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('669', 'invoice_return', 'Sales Return');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('670', 'tax_report', 'TAX Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('671', 'select_tax', 'Select TAX');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('672', 'hrm', 'HRM');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('673', 'employee', 'Employee');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('674', 'add_employee', 'Add Employee');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('675', 'manage_employee', 'Manage Employee');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('676', 'attendance', 'Attendance');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('677', 'add_attendance', 'Attendance');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('678', 'manage_attendance', 'Manage Attendance');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('679', 'payroll', 'Payroll');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('680', 'add_payroll', 'Payroll');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('681', 'manage_payroll', 'Manage Payroll');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('682', 'employee_type', 'Employee Type');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('683', 'employee_designation', 'Employee Designation');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('684', 'designation', 'Designation');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('685', 'add_designation', 'Add Designation');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('686', 'manage_designation', 'Manage Designation');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('687', 'designation_update_form', 'Designation Update form');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('688', 'picture', 'Picture');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('689', 'country', 'Country');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('690', 'blood_group', 'Blood Group');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('691', 'address_line_1', 'Address Line 1');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('692', 'address_line_2', 'Address Line 2');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('693', 'zip', 'Zip code');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('694', 'city', 'City');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('695', 'hour_rate_or_salary', 'Houre Rate/Salary');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('696', 'rate_type', 'Rate Type');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('697', 'hourly', 'Hourly');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('698', 'salary', 'Salary');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('699', 'employee_update', 'Employee Update');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('700', 'checkin', 'Check In');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('701', 'employee_name', 'Employee Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('702', 'checkout', 'Check Out');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('703', 'confirm_clock', 'Confirm Clock');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('704', 'stay', 'Stay Time');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('705', 'sign_in', 'Sign In');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('706', 'check_in', 'Check In');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('707', 'single_checkin', 'Single Check In');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('708', 'bulk_checkin', 'Bulk Check In');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('709', 'successfully_checkout', 'Successfully Checkout');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('710', 'attendance_report', 'Attendance Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('711', 'datewise_report', 'Date Wise Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('712', 'employee_wise_report', 'Employee Wise Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('713', 'date_in_time_report', 'Date In Time Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('714', 'request', 'Request');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('715', 'sign_out', 'Sign Out');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('716', 'work_hour', 'Work Hours');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('717', 's_time', 'Start Time');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('718', 'e_time', 'In Time');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('719', 'salary_benefits_type', 'Benefits Type');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('720', 'salary_benefits', 'Salary Benefits');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('721', 'beneficial_list', 'Benefit List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('722', 'add_beneficial', 'Add Benefits');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('723', 'add_benefits', 'Add Benefits');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('724', 'benefits_list', 'Benefit List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('725', 'benefit_type', 'Benefit Type');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('726', 'benefits', 'Benefit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('727', 'manage_benefits', 'Manage Benefits');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('728', 'deduct', 'Deduct');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('729', 'add', 'Add');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('730', 'add_salary_setup', 'Add Salary Setup');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('731', 'manage_salary_setup', 'Manage Salary Setup');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('732', 'basic', 'Basic');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('733', 'salary_type', 'Salary Type');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('734', 'addition', 'Addition');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('735', 'gross_salary', 'Gross Salary');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('736', 'set', 'Set');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('737', 'salary_generate', 'Salary Generate');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('738', 'manage_salary_generate', 'Manage Salary Generate');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('739', 'sal_name', 'Salary Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('740', 'gdate', 'Generated Date');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('741', 'generate_by', 'Generated By');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('742', 'the_salary_of', 'The Salary of ');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('743', 'already_generated', ' Already Generated');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('744', 'salary_month', 'Salary Month');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('745', 'successfully_generated', 'Successfully Generated');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('746', 'salary_payment', 'Salary Payment');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('747', 'employee_salary_payment', 'Employee Salary Payment');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('748', 'total_salary', 'Total Salary');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('749', 'total_working_minutes', 'Total Working Hours');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('750', 'working_period', 'Working Period');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('751', 'paid_by', 'Paid By');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('752', 'pay_now', 'Pay Now ');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('753', 'confirm', 'Confirm');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('754', 'successfully_paid', 'Successfully Paid');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('755', 'add_incometax', 'Add Income TAX');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('756', 'setup_tax', 'Setup TAX');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('757', 'start_amount', 'Start Amount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('758', 'end_amount', 'End Amount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('759', 'tax_rate', 'TAX Rate');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('760', 'setup', 'Setup');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('761', 'manage_income_tax', 'Manage Income TAX');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('762', 'income_tax_updateform', 'Income TAX Update form');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('763', 'positional_information', 'Positional Information');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('764', 'personal_information', 'Personal Information');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('765', 'timezone', 'Time Zone');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('766', 'sms', 'SMS');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('767', 'sms_configure', 'SMS Configure');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('768', 'url', 'URL');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('769', 'sender_id', 'Sender ID');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('770', 'api_key', 'Api Key');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('771', 'gui_pos', 'GUI POS');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('772', 'manage_service', 'Manage Service');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('773', 'service', 'Service');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('774', 'add_service', 'Add Service');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('775', 'service_edit', 'Service Edit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('776', 'service_csv_upload', 'Service CSV Upload');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('777', 'service_name', 'Service Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('778', 'charge', 'Charge');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('779', 'service_invoice', 'Service Invoice');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('780', 'service_discount', 'Service Discount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('781', 'hanging_over', 'ETD');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('782', 'service_details', 'Service Details');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('783', 'tax_settings', 'TAX Settings');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('784', 'default_value', 'Default Value');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('785', 'number_of_tax', 'Number of TAX');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('786', 'please_select_employee', 'Please Select Employee');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('787', 'manage_service_invoice', 'Manage Service Invoice');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('788', 'update_service_invoice', 'Update Service Invoice');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('789', 'customer_wise_tax_report', 'Customer Wise TAX Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('790', 'service_id', 'Service Id');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('791', 'invoice_wise_tax_report', 'Invoice Wise TAX Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('792', 'reg_no', 'Reg No');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('793', 'update_now', 'Update Now');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('794', 'import', 'Import');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('795', 'add_expense_item', 'Add Expense Item');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('796', 'manage_expense_item', 'Manage Expense Item');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('797', 'add_expense', 'Add Expense');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('798', 'manage_expense', 'Manage Expense');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('799', 'expense_statement', 'Expense Statement');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('800', 'expense_type', 'Expense Type');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('801', 'expense_item_name', 'Expense Item Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('802', 'stock_purchase_price', 'Stock Purchase Price');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('803', 'purchase_price', 'Avg. Purchase Price');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('804', 'customer_advance', 'Customer Advance');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('805', 'advance_type', 'Advance Type');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('806', 'restore', 'Restore');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('807', 'supplier_advance', 'Supplier Advance');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('808', 'please_input_correct_invoice_no', 'Please Input Correct Invoice NO');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('809', 'backup', 'Back Up');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('810', 'app_setting', 'App Settings');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('811', 'local_server_url', 'Local Server Url');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('812', 'online_server_url', 'Online Server Url');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('813', 'connet_url', 'Connected Hotspot Ip/url');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('814', 'update_your_app_setting', 'Update Your App Setting');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('815', 'select_category', 'Select Category');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('816', 'mini_invoice', 'Mini Invoice');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('817', 'purchase_details', 'Purchase Details');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('818', 'disc', 'Dis %');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('819', 'serial', 'Serial');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('820', 'transaction_head', 'Transaction Head');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('821', 'transaction_type', 'Transaction Type');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('822', 'return_details', 'Return Details');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('823', 'return_to_customer', 'Return To Customer');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('824', 'sales_and_purchase_report_summary', 'Sales And Purchase Report Summary');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('825', 'add_person_officeloan', 'Add Person (Office Loan)');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('826', 'add_loan_officeloan', 'Add Loan (Office Loan)');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('827', 'add_payment_officeloan', 'Add Payment (Office Loan)');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('828', 'manage_loan_officeloan', 'Manage Loan (Office Loan)');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('829', 'add_person_personalloan', 'Add Person (Personal Loan)');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('830', 'add_loan_personalloan', 'Add Loan (Personal Loan)');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('831', 'add_payment_personalloan', 'Add Payment (Personal Loan)');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('832', 'manage_loan_personalloan', 'Manage Loan (Personal)');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('833', 'hrm_management', 'Human Resource');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('834', 'cash_adjustment', 'Cash Adjustment');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('835', 'adjustment_type', 'Adjustment Type');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('836', 'change', 'Change');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('837', 'sale_by', 'Sale By');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('838', 'salary_date', 'Salary Date');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('839', 'earnings', 'Earnings');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('840', 'total_addition', 'Total Addition');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('841', 'total_deduction', 'Total Deduction');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('842', 'net_salary', 'Net Salary');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('843', 'ref_number', 'Reference Number');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('844', 'name_of_bank', 'Name Of Bank');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('845', 'salary_slip', 'Salary Slip');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('846', 'basic_salary', 'Basic Salary');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('847', 'return_from_customer', 'Return From Customer');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('848', 'quotation', 'Quotation');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('849', 'add_quotation', 'Add Quotation');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('850', 'manage_quotation', 'Manage Quotation');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('851', 'terms', 'Terms');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('852', 'send_to_customer', 'Sent To Customer');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('853', 'quotation_no', 'Quotation No');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('854', 'quotation_date', 'Quotation Date');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('855', 'total_service_tax', 'Total Service TAX');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('856', 'totalservicedicount', 'Total Service Discount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('857', 'item_total', 'Item Total');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('858', 'service_total', 'Service Total');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('859', 'quot_description', 'Quotation Description');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('860', 'sub_total', 'Sub Total');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('861', 'mail_setting', 'Mail Setting');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('862', 'mail_configuration', 'Mail Configuration');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('863', 'mail', 'Mail');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('864', 'protocol', 'Protocol');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('865', 'smtp_host', 'SMTP Host');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('866', 'smtp_port', 'SMTP Port');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('867', 'sender_mail', 'Sender Mail');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('868', 'mail_type', 'Mail Type');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('869', 'html', 'HTML');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('870', 'text', 'TEXT');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('871', 'expiry_date', 'Expiry Date');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('872', 'api_secret', 'Api Secret');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('873', 'please_config_your_mail_setting', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('874', 'quotation_successfully_added', 'Quotation Successfully Added');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('875', 'add_to_invoice', 'Add To Invoice');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('876', 'added_to_invoice', 'Added To Invoice');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('877', 'closing_balance', 'Closing Balance');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('878', 'contact', 'Contact');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('879', 'fax', 'Fax');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('880', 'state', 'State');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('881', 'discounts', 'Discount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('882', 'address1', 'Address1');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('883', 'address2', 'Address2');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('884', 'receive', 'Receive');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('885', 'purchase_history', 'Purchase History');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('886', 'cash_payment', 'Cash Payment');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('887', 'bank_payment', 'Bank Payment');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('888', 'do_you_want_to_print', 'Do You Want to Print');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('889', 'yes', 'Yes');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('890', 'no', 'No');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('891', 'todays_sale', 'Today\'s Sales');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('892', 'or', 'OR');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('893', 'no_result_found', 'No Result Found');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('894', 'add_service_quotation', 'Add Service Quotation');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('895', 'add_to_invoice', 'Add To Invoice');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('896', 'item_quotation', 'Item Quotation');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('897', 'service_quotation', 'Service Quotation');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('898', 'return_from', 'Return Form');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('899', 'customer_return_list', 'Customer Return List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('900', 'pdf', 'Pdf');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('901', 'note', 'Note');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('902', 'update_debit_voucher', 'Update Debit Voucher');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('903', 'update_credit_voucher', 'Update Credit voucher');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('904', 'on', 'On');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('905', '', '');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('906', 'total_expenses', 'Total Expense');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('907', 'already_exist', 'Already Exist');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('908', 'checked_out', 'Checked Out');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('909', 'update_salary_setup', 'Update Salary Setup');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('910', 'employee_signature', 'Employee Signature');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('911', 'payslip', 'Payslip');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('912', 'exsisting_role', 'Existing Role');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('913', 'filter', 'Filter');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('914', 'testinput', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('915', 'update_quotation', 'Update Quotation');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('916', 'quotation_successfully_updated', 'Quotation Successfully Updated');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('917', 'successfully_approved', 'Successfully Approved');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('918', 'expiry', 'Expiry');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('919', 'user_list', 'User List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('920', 'assign_roleto_user', 'Assign Role To User');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('921', 'assign_role_list', 'Assigned Role List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('922', 'application_settings', 'Application Settings');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('923', 'company_list', 'Company List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('924', 'edit_company', 'Edit Company');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('925', 'edit_user', 'Edit User');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('926', 'edit_currency', 'Edit Currency');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('927', 'mobile_no', 'Mobile No');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('928', 'email_address', 'Email Address');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('929', 'customer_list', 'Customer List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('930', 'advance_receipt', 'Advance Receipt');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('931', 'supplier_list', 'Supplier List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('932', 'category_list', 'Groupcode List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('933', 'no_record_found', 'No Record Found');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('934', 'unit_list', 'Unit List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('935', 'edit_product', 'Edit Product');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('936', 'payable_summary', 'Payable Summary');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('937', 'pad_print', 'Pad Print');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('938', 'pos_print', 'POS Print');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('939', 'pos_invoice', 'POS Invoice');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('940', 'employee_profile', 'Employee Profile');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('941', 'edit_beneficials', 'Edit Beneficials');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('942', 'edit_setup_update', 'Edit Salary Setup');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('943', 'add_office_loan', 'Add Office Loan');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('944', 'income_tax', 'Income TAX');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('945', 'quotation_to_sale', 'Quotation To Sale');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('946', 'quotation_edit', 'Edit Quotation');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('947', 'edit_profile', 'Edit Profile');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('948', 'edit_supplier', 'Edit Supplier');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('949', 'edit_bank', 'Edit Bank');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('950', 'balance_sheet', 'Balance Sheet');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('951', 'salary_setup', 'Salary Setup');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('952', 'account_head', 'Account Head');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('953', 'add_invoice', 'Add Invoice');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('954', 'general_ledger_report', 'General Ledger Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('955', 'print_setting', 'Print Setting');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('956', 'header', 'Header');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('957', 'footer', 'Footer');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('958', 'supplier_payment_receipt', 'Payment Receipt');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('959', 'welcome_back', 'Welcome Back');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('960', 'overwrite', 'Over Write');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('961', 'module', 'Module');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('962', 'purchase_key', 'Purchase Key');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('963', 'buy_now', 'Buy Now');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('964', 'module_list', 'Module List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('965', 'modules', 'Modules');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('966', 'install', 'Install');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('967', 'uninstall', 'Uninstall');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('968', 'module_added_successfully', 'Module Added Successfully');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('969', 'no_tables_are_registered_in_config', 'No table registered in config');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('970', 'tables_are_not_available_in_database', 'Table Are not Available in Database');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('971', 'addon', 'Add-ons');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('972', 'generate_qr', 'Generate QR');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('973', 'latestv', 'Latest Version');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('974', 'Current Version', 'Current Version');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('976', 'notesupdate', 'Note: If you want to update software,you Must have immediate previous version');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('977', 'arabic', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('978', 'vat_no', 'VAT NO');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('979', 'new_p_method', 'Add New Payment Method');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('980', 'dis_val', 'Dis. Value');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('981', 'vat_val', 'VAT Value');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('982', 'ttl_val', 'Total VAT');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('983', 'purchase_discount', 'Purchase Discount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('984', 'order_time', 'Order Time');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('985', 'order_by', 'Order By');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('986', 'terms_list', 'Sales Terms List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('987', 'terms_add', 'Add Sales Terms');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('988', 'term_condi', 'Terms & Condition');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('989', 'terms_update', 'Update Seles Terms');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('990', 'add_payment_method', 'Add Payment Method');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('991', 'payment_method_list', 'Payment Method List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('992', 'payment_method_name', 'Payment Method Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('993', 'batch_no', 'Batch No');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('994', 'total_with_vat', 'Total With VAT');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('995', 'invoice_time', 'Invoice Time');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('996', 'product_vat', 'Product VAT');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('997', 'service_vat', 'Service VAT');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('998', 'cr_no', 'CR NO');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('999', 'service_payment', 'Service Payment');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1000', 'vat_tax_setting', 'VAT & TAX Setting');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1001', 'qty2', 'Qty');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1002', 'batch', 'Batch');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1003', 'disc', 'Disc');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1004', 'tot_price', 'Tot Price');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1005', 'tot_before_dis', 'Total Before Discount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1006', 'tot_with_dis', 'Total with Discount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1007', 'tax_vat', 'TAX Value');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1008', 'return_receipt_text', 'Please keep the receipt and bring it in case of return');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1009', 'invoice_qr_code', 'Invoice Qr-Code');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1010', 'sales_due', 'Today Sales Due');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1011', 'purchase_due', 'Today Purchase Due');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1012', 'delivery_note', 'Delivery Note');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1013', 'financial_year', 'Financial Year');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1014', 'close_financial_year', 'Close Financial Year');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1015', 'create_financial_year', 'Create Financial Year');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1016', 'year_closing', 'Year Closing');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1017', 'financial_year_start_date', 'Financial Year Start');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1018', 'financial_year_end_date', 'Financial Year End');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1019', 'subaccount_list', 'Sub Account List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1020', 'subaccount_add', 'Sub Account Add');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1021', 'subtype', 'Sub Type');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1022', 'predefined_accounts', 'Predefined Accounts');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1023', 'create_debit_voucher', 'Create payment Voucher');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1024', 'ledger_comment', 'Ledger Comment');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1025', 'reverseHead', 'Reverse Account Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1026', 'VNo', 'VNo');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1027', 'ledgerComment', '	Ledger Comment');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1028', 'create_credit_voucher', 'Create Receipt Voucher');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1029', 'create_contra_voucher', 'Create Contra Voucher');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1030', 'create_journal_voucher', 'Create Journal Voucher');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1031', 'reverse_account_head', 'Reverse Account Head');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1032', 'bank_reconciliation', 'Bank Reconciliation');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1033', 'day_book', 'Day Book');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1034', 'sub_ledger', 'Sub Ledger');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1035', 'income_statement_form', 'Income Statement');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1036', 'year', 'Year');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1037', 'expenditure_statement', 'Expenditure Statement');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1038', 'profit_loss_report', 'Profit Loss');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1039', 'fixedasset_schedule', 'Fixed Asset Schedule');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1040', 'receipt_payment', 'Receipt & Payment');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1041', 'cash_basis', 'Cash Basis');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1042', 'accrual_basis', 'Accrual Basis');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1043', 'bank_reconciliation_report', 'Bank Reconciliation Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1044', 'salary_advance_view', 'Salary Advance');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1045', 'add_salary_advance', 'Add Salary Advance');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1046', 'manage_salary_advance', 'Manage Salary Advance');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1047', 'release_amount', 'Release Amount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1048', 'create_date', 'Create Date');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1049', 'employee_salary_generate', 'Salary Generate');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1050', 'approved_date', 'Approved Date');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1051', 'approved_by', 'Approved By');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1052', 'salar_month', 'Salary Month');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1053', 'employee_salary_chart', 'Employee Salary Chart');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1054', 'post', 'Post');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1055', 'employee_salary_payment_view', 'Manage Employee Salary');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1056', 'pay_by', 'Pay By');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1057', 'bank_book_report', 'Bank Book Report Of');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1058', 'head_name', 'Head Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1059', 'head_code', 'Head Code');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1060', 'voucher', 'Voucher');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1061', 'sub_ledger_of', 'Sub Ledger of');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1062', 'fixed_assets_report', 'Fixed Assets Annual Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1063', 'opening_balance_fixed_assets', 'Opening Balance of Fixed Assets');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1064', 'additions', 'Additions');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1065', 'closing_balance_fixed_assets', 'Closing Balance of Fixed Assets');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1066', 'depreciation_rate', 'Depreciation Rate');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1067', 'depreciation_value', 'Depreciation Value');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1068', 'opening_balance_accumulated_depreciation', 'Opening Balance of Accumulated Depreciation');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1069', 'closing_balance_accumulated_depreciation', 'Closing Balance of Accumulated Depreciation');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1070', 'written_down_value', 'Written Down Value');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1071', 'unapproved', 'Unapproved');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1072', 'check_no', 'Check No');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1073', 'Total Liabilities Equity', 'total_liabilities_equity');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1074', 'total_equity', 'Total Equity');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1075', 'total_liabilities', 'Total Liabilities');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1076', 'total_assets', 'Total Assets');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1077', 'cashinhand', 'Cash In Hand');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1078', 'cash_bank', 'Cash At Bank');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1079', 'advance', 'Advance');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1080', 'view_employee_payment', 'Employee Payment List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1081', 'ret_item', 'Returned Item');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1082', 'replaced_item', 'Replaced Item');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1083', 'adj_amount', 'Adjusted Amount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1084', 'is_autoapprove_v', 'Auto Approve Invoice Voucher');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1085', 'cost_price', 'Cost Price');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1086', 'chalan_no', 'Voucher No');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1087', 'already_returned', 'This Invoice is Already Returned ');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1088', 'manage_cheque', 'Manage Cheque');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1089', 'cheque_flow_report', 'Cheque Flow Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1090', 'sales_report_employee_wise', 'Employee Sales Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1091', 'brandcode', 'Brandcode');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1092', 'manage_brandcode', 'Manage Brandcode');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1093', 'countercode', 'Countercode');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1094', 'manage_countercode', 'Manage Countercode');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1095', 'label_print', 'Label Print');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1096', 'labelprint', 'Label Print');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1097', 'cash_balance_report', 'Cash Balance Report');


#
# TABLE STRUCTURE FOR: module
#

DROP TABLE IF EXISTS `module`;

CREATE TABLE `module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `directory` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES ('1', 'invoice', NULL, NULL, NULL, '1');
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES ('3', 'product', NULL, NULL, NULL, '1');
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES ('8', 'report', NULL, NULL, NULL, '1');
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES ('9', 'accounts', NULL, NULL, NULL, '1');
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES ('12', 'hrm_management', NULL, NULL, NULL, '1');
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES ('15', 'setting', NULL, NULL, NULL, '1');


#
# TABLE STRUCTURE FOR: print_setting
#

DROP TABLE IF EXISTS `print_setting`;

CREATE TABLE `print_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `header` int(11) NOT NULL,
  `footer` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `print_setting` (`id`, `header`, `footer`) VALUES ('1', '200', '100');


#
# TABLE STRUCTURE FOR: product_category
#

DROP TABLE IF EXISTS `product_category`;

CREATE TABLE `product_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_code` varchar(255) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `product_category` (`category_id`, `category_code`, `category_name`, `status`) VALUES ('1', '000001', 'Gents Shirt', '1');
INSERT INTO `product_category` (`category_id`, `category_code`, `category_name`, `status`) VALUES ('2', '000002', 'Trouser', '1');
INSERT INTO `product_category` (`category_id`, `category_code`, `category_name`, `status`) VALUES ('3', '000003', 'Sale Shirt', '1');
INSERT INTO `product_category` (`category_id`, `category_code`, `category_name`, `status`) VALUES ('4', '000004', 'Shalwar', '1');
INSERT INTO `product_category` (`category_id`, `category_code`, `category_name`, `status`) VALUES ('5', '000005', 'Bra', '1');
INSERT INTO `product_category` (`category_id`, `category_code`, `category_name`, `status`) VALUES ('6', '000006', 'Readymade Blo./U.Skt', '1');
INSERT INTO `product_category` (`category_id`, `category_code`, `category_name`, `status`) VALUES ('7', '000007', 'Dress Material', '1');


#
# TABLE STRUCTURE FOR: product_information
#

DROP TABLE IF EXISTS `product_information`;

CREATE TABLE `product_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` varchar(100) NOT NULL,
  `category_id` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` varchar(100) DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `tax` float DEFAULT NULL COMMENT 'Tax in %',
  `serial_no` varchar(200) DEFAULT NULL,
  `product_vat` float DEFAULT NULL,
  `product_model` varchar(100) DEFAULT NULL,
  `product_details` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `tax0` text DEFAULT NULL,
  `tax1` text DEFAULT NULL,
  `brandcode_id` int(11) NOT NULL,
  `countercode_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `product_id` (`product_id`),
  KEY `brandcode_id` (`brandcode_id`),
  KEY `countercode_id` (`countercode_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `price`, `unit`, `tax`, `serial_no`, `product_vat`, `product_model`, `product_details`, `image`, `status`, `tax0`, `tax1`, `brandcode_id`, `countercode_id`) VALUES ('1', '000001', '1', 'Kurta Shirt', '2500', 'qty', '0', NULL, '0', '', '', NULL, '1', NULL, NULL, '2', '1');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `price`, `unit`, `tax`, `serial_no`, `product_vat`, `product_model`, `product_details`, `image`, `status`, `tax0`, `tax1`, `brandcode_id`, `countercode_id`) VALUES ('2', '000002', '1', 'Indo-Western Shirt', '3200', 'qty', '0', NULL, '0', '', '', NULL, '1', NULL, NULL, '3', '1');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `price`, `unit`, `tax`, `serial_no`, `product_vat`, `product_model`, `product_details`, `image`, `status`, `tax0`, `tax1`, `brandcode_id`, `countercode_id`) VALUES ('3', '000003', '1', 'Pathani Shirt', '2800', 'qty', '0', NULL, '0', '', '', NULL, '1', NULL, NULL, '4', '1');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `price`, `unit`, `tax`, `serial_no`, `product_vat`, `product_model`, `product_details`, `image`, `status`, `tax0`, `tax1`, `brandcode_id`, `countercode_id`) VALUES ('4', '000004', '2', 'Churidar Pants', '1800', 'qty', '0', NULL, '0', '', '', NULL, '1', NULL, NULL, '5', '1');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `price`, `unit`, `tax`, `serial_no`, `product_vat`, `product_model`, `product_details`, `image`, `status`, `tax0`, `tax1`, `brandcode_id`, `countercode_id`) VALUES ('5', '000005', '2', 'Patiala Salwar', '1500', 'qty', '0', NULL, '0', '', '', NULL, '1', NULL, NULL, '6', '1');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `price`, `unit`, `tax`, `serial_no`, `product_vat`, `product_model`, `product_details`, `image`, `status`, `tax0`, `tax1`, `brandcode_id`, `countercode_id`) VALUES ('6', '000006', '2', 'Dhoti Pants', '2200', 'qty', '0', NULL, '0', '', '', NULL, '1', NULL, NULL, '7', '1');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `price`, `unit`, `tax`, `serial_no`, `product_vat`, `product_model`, `product_details`, `image`, `status`, `tax0`, `tax1`, `brandcode_id`, `countercode_id`) VALUES ('7', '000007', '3', 'Printed Cotton Kurta (On Sale)', '1200', 'qty', '0', NULL, '0', '', '', NULL, '1', NULL, NULL, '8', '1');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `price`, `unit`, `tax`, `serial_no`, `product_vat`, `product_model`, `product_details`, `image`, `status`, `tax0`, `tax1`, `brandcode_id`, `countercode_id`) VALUES ('8', '000008', '3', 'Tie-Dye Kurta (On Sale)', '1500', 'qty', '0', NULL, '0', '', '', NULL, '1', NULL, NULL, '2', '1');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `price`, `unit`, `tax`, `serial_no`, `product_vat`, `product_model`, `product_details`, `image`, `status`, `tax0`, `tax1`, `brandcode_id`, `countercode_id`) VALUES ('9', '000009', '3', 'Embroidered Short Kurta (On Sale)', '1000', 'qty', '0', NULL, '0', '', '', NULL, '1', NULL, NULL, '3', '1');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `price`, `unit`, `tax`, `serial_no`, `product_vat`, `product_model`, `product_details`, `image`, `status`, `tax0`, `tax1`, `brandcode_id`, `countercode_id`) VALUES ('10', '000010', '4', 'Silk Shalwar', '3500', 'qty', '0', NULL, '0', '', '', NULL, '1', NULL, NULL, '4', '2');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `price`, `unit`, `tax`, `serial_no`, `product_vat`, `product_model`, `product_details`, `image`, `status`, `tax0`, `tax1`, `brandcode_id`, `countercode_id`) VALUES ('11', '000011', '4', 'Cotton Shalwar', '1800', 'qty', '0', NULL, '0', '', '', NULL, '1', NULL, NULL, '5', '2');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `price`, `unit`, `tax`, `serial_no`, `product_vat`, `product_model`, `product_details`, `image`, `status`, `tax0`, `tax1`, `brandcode_id`, `countercode_id`) VALUES ('12', '000012', '4', 'Taffeta Shalwar', '2200', 'qty', '0', NULL, '0', '', '', NULL, '1', NULL, NULL, '6', '2');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `price`, `unit`, `tax`, `serial_no`, `product_vat`, `product_model`, `product_details`, `image`, `status`, `tax0`, `tax1`, `brandcode_id`, `countercode_id`) VALUES ('13', '000013', '5', 'Cotton Full Coverage Bra', '1000', 'qty', '0', NULL, '0', '', '', NULL, '1', NULL, NULL, '7', '2');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `price`, `unit`, `tax`, `serial_no`, `product_vat`, `product_model`, `product_details`, `image`, `status`, `tax0`, `tax1`, `brandcode_id`, `countercode_id`) VALUES ('14', '000014', '5', 'Lace-Trim Bra', '1200', 'qty', '0', NULL, '0', '', '', NULL, '1', NULL, NULL, '8', '2');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `price`, `unit`, `tax`, `serial_no`, `product_vat`, `product_model`, `product_details`, `image`, `status`, `tax0`, `tax1`, `brandcode_id`, `countercode_id`) VALUES ('15', '000015', '5', 'Push-Up Bra', '1500', 'qty', '0', NULL, '0', '', '', NULL, '1', NULL, NULL, '2', '2');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `price`, `unit`, `tax`, `serial_no`, `product_vat`, `product_model`, `product_details`, `image`, `status`, `tax0`, `tax1`, `brandcode_id`, `countercode_id`) VALUES ('16', '000016', '6', 'Embroidered Readymade Blouse', '2800', 'qty', '0', NULL, '0', '', '', NULL, '1', NULL, NULL, '3', '3');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `price`, `unit`, `tax`, `serial_no`, `product_vat`, `product_model`, `product_details`, `image`, `status`, `tax0`, `tax1`, `brandcode_id`, `countercode_id`) VALUES ('17', '000017', '6', 'Cotton Blouse with Back Tie', '1500', 'qty', '0', NULL, '0', '', '', NULL, '1', NULL, NULL, '4', '3');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `price`, `unit`, `tax`, `serial_no`, `product_vat`, `product_model`, `product_details`, `image`, `status`, `tax0`, `tax1`, `brandcode_id`, `countercode_id`) VALUES ('18', '000018', '6', 'Designer U.Skirt', '3000', 'qty', '0', NULL, '0', '', '', NULL, '1', NULL, NULL, '5', '3');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `price`, `unit`, `tax`, `serial_no`, `product_vat`, `product_model`, `product_details`, `image`, `status`, `tax0`, `tax1`, `brandcode_id`, `countercode_id`) VALUES ('19', '000019', '7', 'Georgette Fabric', '1800', 'm', '0', NULL, '0', '', '', NULL, '1', NULL, NULL, '1', '4');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `price`, `unit`, `tax`, `serial_no`, `product_vat`, `product_model`, `product_details`, `image`, `status`, `tax0`, `tax1`, `brandcode_id`, `countercode_id`) VALUES ('20', '000020', '7', 'Cotton Silk Blend', '2500', 'm', '0', NULL, '0', '', '', NULL, '1', NULL, NULL, '1', '4');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `price`, `unit`, `tax`, `serial_no`, `product_vat`, `product_model`, `product_details`, `image`, `status`, `tax0`, `tax1`, `brandcode_id`, `countercode_id`) VALUES ('21', '000099', '7', 'Banarasi Silk Material', '4000', 'm', '0', NULL, '0', '', '', NULL, '1', NULL, NULL, '1', '4');


#
# TABLE STRUCTURE FOR: product_purchase
#

DROP TABLE IF EXISTS `product_purchase`;

CREATE TABLE `product_purchase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_id` bigint(20) NOT NULL,
  `chalan_no` varchar(100) NOT NULL,
  `supplier_id` bigint(20) NOT NULL,
  `grand_total_amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `paid_amount` decimal(10,2) DEFAULT 0.00,
  `due_amount` decimal(10,2) DEFAULT 0.00,
  `total_discount` decimal(10,2) DEFAULT NULL,
  `invoice_discount` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT 'sum of product discount',
  `total_vat_amnt` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT 'sum of product vat',
  `purchase_date` varchar(50) DEFAULT NULL,
  `purchase_details` text DEFAULT NULL,
  `status` int(11) NOT NULL,
  `bank_id` varchar(30) DEFAULT NULL,
  `payment_type` int(11) NOT NULL,
  `is_credit` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `purchase_id` (`purchase_id`),
  KEY `supplier_id` (`supplier_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

#
# TABLE STRUCTURE FOR: product_purchase_details
#

DROP TABLE IF EXISTS `product_purchase_details`;

CREATE TABLE `product_purchase_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_detail_id` varchar(100) DEFAULT NULL,
  `purchase_id` bigint(20) DEFAULT NULL,
  `product_id` varchar(30) DEFAULT NULL,
  `quantity` decimal(10,2) DEFAULT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `batch_id` varchar(30) DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `discount` float DEFAULT NULL COMMENT 'discount percentage',
  `discount_amnt` decimal(10,2) NOT NULL DEFAULT 0.00,
  `vat_amnt_per` decimal(10,2) NOT NULL DEFAULT 0.00,
  `vat_amnt` decimal(10,2) NOT NULL DEFAULT 0.00,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `purchase_id` (`purchase_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

#
# TABLE STRUCTURE FOR: product_return
#

DROP TABLE IF EXISTS `product_return`;

CREATE TABLE `product_return` (
  `return_id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `product_id` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `invoice_id` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `purchase_id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `date_purchase` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `date_return` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `byy_qty` float NOT NULL,
  `ret_qty` float NOT NULL,
  `customer_id` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `supplier_id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `product_rate` decimal(10,2) NOT NULL DEFAULT 0.00,
  `deduction` float NOT NULL,
  `total_deduct` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_tax` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_ret_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `net_total_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `reason` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `usablity` int(11) NOT NULL,
  KEY `product_id` (`product_id`),
  KEY `invoice_id` (`invoice_id`),
  KEY `purchase_id` (`purchase_id`),
  KEY `customer_id` (`customer_id`),
  KEY `supplier_id` (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

#
# TABLE STRUCTURE FOR: product_service
#

DROP TABLE IF EXISTS `product_service`;

CREATE TABLE `product_service` (
  `service_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `charge` decimal(10,2) NOT NULL DEFAULT 0.00,
  `service_vat` float DEFAULT NULL,
  `is_fixed` int(11) NOT NULL DEFAULT 0,
  `is_dynamic` int(11) NOT NULL DEFAULT 0,
  `tax0` text DEFAULT NULL,
  `tax1` text DEFAULT NULL,
  PRIMARY KEY (`service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `product_service` (`service_id`, `service_name`, `description`, `charge`, `service_vat`, `is_fixed`, `is_dynamic`, `tax0`, `tax1`) VALUES ('1', 'Laptop Full Service', '', '500.00', '0', '1', '0', '0', '0');
INSERT INTO `product_service` (`service_id`, `service_name`, `description`, `charge`, `service_vat`, `is_fixed`, `is_dynamic`, `tax0`, `tax1`) VALUES ('2', 'Mobile Full Service', '', '300.00', '0', '1', '0', '0', '0');
INSERT INTO `product_service` (`service_id`, `service_name`, `description`, `charge`, `service_vat`, `is_fixed`, `is_dynamic`, `tax0`, `tax1`) VALUES ('3', 'Laptop Repairing', '', '750.00', '0', '1', '0', '0', '0');
INSERT INTO `product_service` (`service_id`, `service_name`, `description`, `charge`, `service_vat`, `is_fixed`, `is_dynamic`, `tax0`, `tax1`) VALUES ('4', 'Mobile Repairing', '', '650.00', '0', '1', '0', '0', '0');


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
  `view` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_module_id` (`fk_module_id`),
  KEY `fk_user_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2699 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2123', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2124', '2', '1', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2125', '3', '1', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2126', '121', '1', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2127', '122', '1', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2128', '10', '1', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2129', '11', '1', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2130', '12', '1', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2131', '13', '1', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2132', '14', '1', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2133', '15', '1', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2134', '16', '1', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2135', '32', '1', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2136', '36', '1', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2137', '37', '1', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2138', '39', '1', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2139', '146', '1', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2140', '44', '1', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2141', '47', '1', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2142', '48', '1', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2143', '53', '1', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2144', '54', '1', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2145', '56', '1', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2146', '125', '1', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2147', '126', '1', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2148', '70', '1', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2149', '71', '1', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2150', '72', '1', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2151', '73', '1', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2152', '102', '1', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2153', '103', '1', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2154', '104', '1', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2155', '105', '1', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2156', '106', '1', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2157', '107', '1', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2158', '108', '1', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2159', '109', '1', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2160', '110', '1', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2161', '111', '1', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2162', '112', '1', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2163', '113', '1', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2164', '115', '1', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2165', '116', '1', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2166', '117', '1', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2455', '1', '4', '1', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2456', '2', '4', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2457', '3', '4', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2458', '121', '4', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2459', '122', '4', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2460', '10', '4', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2461', '11', '4', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2462', '12', '4', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2463', '13', '4', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2464', '14', '4', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2465', '15', '4', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2466', '16', '4', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2467', '149', '4', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2468', '150', '4', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2469', '151', '4', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2470', '152', '4', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2471', '32', '4', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2472', '36', '4', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2473', '37', '4', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2474', '39', '4', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2475', '146', '4', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2476', '44', '4', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2477', '47', '4', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2478', '48', '4', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2479', '53', '4', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2480', '54', '4', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2481', '56', '4', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2482', '125', '4', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2483', '126', '4', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2484', '70', '4', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2485', '71', '4', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2486', '72', '4', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2487', '73', '4', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2488', '102', '4', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2489', '103', '4', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2490', '104', '4', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2491', '105', '4', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2492', '106', '4', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2493', '107', '4', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2494', '108', '4', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2495', '109', '4', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2496', '110', '4', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2497', '111', '4', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2498', '112', '4', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2499', '113', '4', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2500', '115', '4', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2501', '116', '4', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2502', '117', '4', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2599', '1', '2', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2600', '2', '2', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2601', '3', '2', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2602', '121', '2', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2603', '122', '2', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2604', '10', '2', '1', '1', '1', '1', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2605', '11', '2', '1', '1', '1', '1', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2606', '12', '2', '1', '1', '1', '1', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2607', '13', '2', '1', '1', '1', '1', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2608', '14', '2', '1', '1', '1', '1', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2609', '15', '2', '1', '1', '1', '1', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2610', '16', '2', '1', '1', '1', '1', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2611', '149', '2', '1', '1', '1', '1', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2612', '150', '2', '1', '1', '1', '1', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2613', '151', '2', '1', '1', '1', '1', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2614', '152', '2', '1', '1', '1', '1', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2615', '153', '2', '1', '1', '1', '1', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2616', '32', '2', '1', '1', '1', '1', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2617', '36', '2', '1', '1', '1', '1', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2618', '37', '2', '1', '1', '1', '1', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2619', '39', '2', '1', '1', '1', '1', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2620', '146', '2', '1', '1', '1', '1', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2621', '154', '2', '1', '1', '1', '1', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2622', '44', '2', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2623', '47', '2', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2624', '48', '2', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2625', '53', '2', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2626', '54', '2', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2627', '56', '2', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2628', '125', '2', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2629', '126', '2', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2630', '70', '2', '1', '1', '1', '1', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2631', '71', '2', '1', '1', '1', '1', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2632', '72', '2', '1', '1', '1', '1', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2633', '73', '2', '1', '1', '1', '1', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2634', '102', '2', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2635', '103', '2', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2636', '104', '2', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2637', '105', '2', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2638', '106', '2', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2639', '107', '2', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2640', '108', '2', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2641', '109', '2', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2642', '110', '2', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2643', '111', '2', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2644', '112', '2', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2645', '113', '2', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2646', '115', '2', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2647', '116', '2', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2648', '117', '2', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2649', '1', '3', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2650', '2', '3', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2651', '3', '3', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2652', '121', '3', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2653', '122', '3', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2654', '10', '3', '1', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2655', '11', '3', '1', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2656', '12', '3', '1', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2657', '13', '3', '1', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2658', '14', '3', '1', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2659', '15', '3', '1', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2660', '16', '3', '1', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2661', '149', '3', '1', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2662', '150', '3', '1', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2663', '151', '3', '1', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2664', '152', '3', '1', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2665', '153', '3', '1', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2666', '32', '3', '1', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2667', '36', '3', '1', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2668', '37', '3', '1', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2669', '39', '3', '1', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2670', '146', '3', '1', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2671', '154', '3', '1', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2672', '44', '3', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2673', '47', '3', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2674', '48', '3', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2675', '53', '3', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2676', '54', '3', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2677', '56', '3', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2678', '125', '3', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2679', '126', '3', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2680', '70', '3', '1', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2681', '71', '3', '1', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2682', '72', '3', '1', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2683', '73', '3', '1', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2684', '102', '3', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2685', '103', '3', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2686', '104', '3', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2687', '105', '3', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2688', '106', '3', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2689', '107', '3', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2690', '108', '3', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2691', '109', '3', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2692', '110', '3', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2693', '111', '3', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2694', '112', '3', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2695', '113', '3', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2696', '115', '3', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2697', '116', '3', '0', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`, `view`) VALUES ('2698', '117', '3', '0', '0', '0', '0', '0');


#
# TABLE STRUCTURE FOR: sec_role
#

DROP TABLE IF EXISTS `sec_role`;

CREATE TABLE `sec_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO `sec_role` (`id`, `type`) VALUES ('1', 'Cashier');
INSERT INTO `sec_role` (`id`, `type`) VALUES ('2', 'Manager');
INSERT INTO `sec_role` (`id`, `type`) VALUES ('3', 'Manager God');
INSERT INTO `sec_role` (`id`, `type`) VALUES ('4', 'Cashier God');


#
# TABLE STRUCTURE FOR: sec_userrole
#

DROP TABLE IF EXISTS `sec_userrole`;

CREATE TABLE `sec_userrole` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) DEFAULT NULL,
  `roleid` int(11) NOT NULL,
  `createby` varchar(50) NOT NULL,
  `createdate` datetime NOT NULL,
  UNIQUE KEY `ID` (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `sec_userrole` (`id`, `user_id`, `roleid`, `createby`, `createdate`) VALUES ('1', '615419', '1', '1', '2022-06-16 03:49:43');
INSERT INTO `sec_userrole` (`id`, `user_id`, `roleid`, `createby`, `createdate`) VALUES ('2', '476756', '2', '1', '2024-08-14 04:09:49');
INSERT INTO `sec_userrole` (`id`, `user_id`, `roleid`, `createby`, `createdate`) VALUES ('3', '30292', '3', '1', '2024-08-14 04:09:59');
INSERT INTO `sec_userrole` (`id`, `user_id`, `roleid`, `createby`, `createdate`) VALUES ('4', '976196', '1', '1', '2024-08-14 07:49:19');
INSERT INTO `sec_userrole` (`id`, `user_id`, `roleid`, `createby`, `createdate`) VALUES ('5', '896413', '1', '1', '2024-08-14 07:49:32');
INSERT INTO `sec_userrole` (`id`, `user_id`, `roleid`, `createby`, `createdate`) VALUES ('6', '399685', '1', '1', '2024-08-14 07:49:48');
INSERT INTO `sec_userrole` (`id`, `user_id`, `roleid`, `createby`, `createdate`) VALUES ('7', '547587', '4', '1', '2024-09-11 03:30:37');
INSERT INTO `sec_userrole` (`id`, `user_id`, `roleid`, `createby`, `createdate`) VALUES ('8', '503993', '4', '1', '2024-09-11 03:32:40');
INSERT INTO `sec_userrole` (`id`, `user_id`, `roleid`, `createby`, `createdate`) VALUES ('9', '887779', '4', '1', '2024-09-11 03:32:56');


#
# TABLE STRUCTURE FOR: seles_termscondi
#

DROP TABLE IF EXISTS `seles_termscondi`;

CREATE TABLE `seles_termscondi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `seles_termscondi` (`id`, `description`, `status`) VALUES ('5', 'Goods purchased without the original invoice are not to be returned or exchanged', '1');


#
# TABLE STRUCTURE FOR: sub_module
#

DROP TABLE IF EXISTS `sub_module`;

CREATE TABLE `sub_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `directory` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('1', '1', 'new_invoice', NULL, NULL, 'new_invoice', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('2', '1', 'manage_invoice', NULL, NULL, 'manage_invoice', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('3', '1', 'pos_invoice', NULL, NULL, 'gui_pos', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('4', '2', 'add_customer', NULL, NULL, 'add_customer', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('5', '2', 'manage_customer', NULL, NULL, 'manage_customer', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('6', '0', 'credit_customer', NULL, NULL, 'credit_customer', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('7', '0', 'paid_customer', NULL, NULL, 'paid_customer', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('8', '0', 'customer_ledger', NULL, NULL, 'customer_ledger', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('9', '0', 'customer_advance', NULL, NULL, 'customer_advance', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('10', '3', 'category', NULL, NULL, 'category', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('11', '3', 'manage_category', NULL, NULL, 'manage_category', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('12', '3', 'unit', NULL, NULL, 'unit', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('13', '3', 'manage_unit', NULL, NULL, 'manage_unit', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('14', '3', 'add_product', NULL, NULL, 'create_product', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('15', '3', 'import_product_csv', NULL, NULL, 'add_product_csv', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('16', '3', 'manage_product', NULL, NULL, 'manage_product', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('17', '4', 'add_supplier', NULL, NULL, 'add_supplier', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('18', '4', 'manage_supplier', NULL, NULL, 'manage_supplier', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('19', '0', 'supplier_ledger', NULL, NULL, 'supplier_ledger_report', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('20', '0', 'supplier_advance', NULL, NULL, 'supplier_advance', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('21', '5', 'add_purchase', NULL, NULL, 'add_purchase', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('22', '5', 'manage_purchase', NULL, NULL, 'manage_purchase', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('23', '6', 'stock_report', NULL, NULL, 'stock_report', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('24', '7', 'return', NULL, NULL, 'add_return', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('25', '7', 'stock_return_list', NULL, NULL, 'return_list', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('26', '7', 'supplier_return_list', NULL, NULL, 'supplier_return_list', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('27', '7', 'wastage_return_list', NULL, NULL, 'wastage_return_list', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('32', '8', 'sales_report', NULL, NULL, 'todays_sales_report', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('36', '8', 'sales_report_product_wise', NULL, NULL, 'product_sales_reports_date_wise', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('37', '8', 'sales_report_category_wise', NULL, NULL, 'sales_report_category_wise', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('39', '8', 'user_wise_sales_report', NULL, NULL, 'user_wise_sales_report', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('44', '9', 'c_o_a', NULL, NULL, 'show_tree', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('47', '9', 'financial_year', NULL, NULL, 'financial_year', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('48', '9', 'opening_balance', NULL, NULL, 'opening_balance', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('53', '9', 'report', NULL, NULL, 'ac_report', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('54', '9', 'cash_book', NULL, NULL, 'cash_book', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('56', '9', 'bank_book', NULL, NULL, 'bank_book', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('61', '10', 'add_new_bank', NULL, NULL, 'add_bank', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('62', '10', 'manage_bank', NULL, NULL, 'bank_list', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('63', '0', 'bank_transaction', NULL, NULL, 'bank_transaction', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('64', '0', 'bank_ledger', NULL, NULL, 'bank_ledger', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('65', '11', 'tax_settings', NULL, NULL, 'tax_settings', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('66', '0', 'add_incometax', NULL, NULL, 'add_incometax', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('67', '0', 'manage_income_tax', NULL, NULL, 'manage_income_tax', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('68', '0', 'tax_report', NULL, NULL, 'tax_report', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('69', '0', 'invoice_wise_tax_report', NULL, NULL, 'invoice_wise_tax_report', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('70', '12', 'add_designation', NULL, NULL, 'add_designation', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('71', '12', 'manage_designation', NULL, NULL, 'manage_designation', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('72', '12', 'add_employee', NULL, NULL, 'add_employee', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('73', '12', 'manage_employee', NULL, NULL, 'manage_employee', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('77', '0', 'add_benefits', NULL, NULL, 'add_benefits', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('78', '0', 'manage_benefits', NULL, NULL, 'manage_benefits', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('79', '0', 'add_salary_setup', NULL, NULL, 'add_salary_setup', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('80', '0', 'manage_salary_setup', NULL, NULL, 'manage_salary_setup', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('81', '0', 'salary_generate', NULL, NULL, 'salary_generate', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('82', '0', 'manage_salary_generate', NULL, NULL, 'manage_salary_generate', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('83', '0', 'salary_payment', NULL, NULL, 'salary_payment', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('84', '0', 'add_expense_item', NULL, NULL, 'add_expense_item', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('85', '0', 'manage_expense_item', NULL, NULL, 'manage_expense_item', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('86', '0', 'add_expense', NULL, NULL, 'add_expense', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('87', '0', 'manage_expense', NULL, NULL, 'manage_expense', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('88', '0', 'expense_statement', NULL, NULL, 'expense_statement', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('89', '0', 'add_person_officeloan', NULL, NULL, 'add1_person', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('90', '0', 'add_loan_officeloan', NULL, NULL, 'add_office_loan', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('91', '0', 'add_payment_officeloan', NULL, NULL, 'add_loan_payment', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('92', '0', 'manage_loan_officeloan', NULL, NULL, 'manage1_person', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('93', '0', 'add_person_personalloan', NULL, NULL, 'add_person', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('94', '0', 'add_loan_personalloan', NULL, NULL, 'add_loan', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('95', '0', 'add_payment_personalloan', NULL, NULL, 'add_payment', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('96', '0', 'manage_loan_personalloan', NULL, NULL, 'manage_person', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('97', '13', 'add_service', NULL, NULL, 'create_service', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('98', '13', 'manage_service', NULL, NULL, 'manage_service', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('99', '13', 'service_invoice', NULL, NULL, 'service_invoice', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('100', '13', 'manage_service_invoice', NULL, NULL, 'manage_service_invoice', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('102', '15', 'manage_company', NULL, NULL, 'manage_company', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('103', '15', 'add_user', NULL, NULL, 'add_user', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('104', '15', 'manage_users', NULL, NULL, 'manage_user', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('105', '15', 'language', NULL, NULL, 'add_language', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('106', '15', 'currency', NULL, NULL, 'add_currency', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('107', '15', 'setting', NULL, NULL, 'soft_setting', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('108', '15', 'print_setting', NULL, NULL, 'print_setting', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('109', '15', 'mail_setting', NULL, NULL, 'mail_setting', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('110', '15', 'add_role', NULL, NULL, 'add_role', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('111', '15', 'role_list', NULL, NULL, 'role_list', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('112', '15', 'user_assign_role', NULL, NULL, 'user_assign', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('113', '15', 'Permission', NULL, NULL, NULL, '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('114', '0', 'sms_configure', NULL, NULL, 'sms_configure', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('115', '15', 'backup_restore', NULL, NULL, 'back_up', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('116', '15', 'import', NULL, NULL, 'sql_import', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('117', '15', 'restore', NULL, NULL, 'restore', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('118', '16', 'add_quotation', NULL, NULL, 'add_quotation', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('119', '16', 'manage_quotation', NULL, NULL, 'manage_quotation', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('120', '16', 'add_to_invoice', NULL, NULL, 'add_to_invoice', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('121', '1', 'terms_list', NULL, NULL, 'terms_list', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('122', '1', 'terms_add', NULL, NULL, 'terms_add', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('124', '11', 'vat_tax_setting', NULL, NULL, 'vat_tax_setting', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('125', '9', 'add_payment_method', NULL, NULL, 'add_payment_method', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('126', '9', 'payment_method_list', NULL, NULL, 'payment_method_list', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('144', '17', 'manage_cheque', NULL, NULL, 'manage_cheque', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('145', '17', 'cheque_flow_report', NULL, NULL, 'cheque_flow_report', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('146', '8', 'sales_report_employee_wise', NULL, NULL, 'sales_report_employee_wise', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('149', '3', 'brandcode', NULL, NULL, 'brandcode', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('150', '3', 'manage_brandcode', NULL, NULL, 'manage_brandcode', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('151', '3', 'countercode', NULL, NULL, 'countercode', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('152', '3', 'manage_countercode', NULL, NULL, 'manage_countercode', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('153', '3', 'labelprint', NULL, NULL, 'labelprint', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('154', '8', 'cash_balance_report', NULL, NULL, 'cash_balance_report', '1');


#
# TABLE STRUCTURE FOR: supplier_information
#

DROP TABLE IF EXISTS `supplier_information`;

CREATE TABLE `supplier_information` (
  `supplier_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address2` text NOT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `emailnumber` varchar(200) DEFAULT NULL,
  `email_address` varchar(200) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `fax` varchar(100) DEFAULT NULL,
  `city` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `country` varchar(250) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`supplier_id`),
  KEY `supplier_id` (`supplier_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `supplier_information` (`supplier_id`, `supplier_name`, `address`, `address2`, `mobile`, `emailnumber`, `email_address`, `contact`, `phone`, `fax`, `city`, `state`, `zip`, `country`, `details`, `status`) VALUES ('1', 'Cash Purchase', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '1');
INSERT INTO `supplier_information` (`supplier_id`, `supplier_name`, `address`, `address2`, `mobile`, `emailnumber`, `email_address`, `contact`, `phone`, `fax`, `city`, `state`, `zip`, `country`, `details`, `status`) VALUES ('2', 'Supplier ', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '1');


#
# TABLE STRUCTURE FOR: supplier_product
#

DROP TABLE IF EXISTS `supplier_product`;

CREATE TABLE `supplier_product` (
  `supplier_pr_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `products_model` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `supplier_id` bigint(20) NOT NULL,
  `supplier_price` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`supplier_pr_id`),
  KEY `product_id` (`product_id`),
  KEY `supplier_id` (`supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `supplier_product` (`supplier_pr_id`, `product_id`, `products_model`, `supplier_id`, `supplier_price`) VALUES ('2', '92341254', '', '1', '');
INSERT INTO `supplier_product` (`supplier_pr_id`, `product_id`, `products_model`, `supplier_id`, `supplier_price`) VALUES ('4', '49445763', '', '1', '');
INSERT INTO `supplier_product` (`supplier_pr_id`, `product_id`, `products_model`, `supplier_id`, `supplier_price`) VALUES ('5', '775483', '', '1', '');
INSERT INTO `supplier_product` (`supplier_pr_id`, `product_id`, `products_model`, `supplier_id`, `supplier_price`) VALUES ('6', '77787375', '', '1', '');
INSERT INTO `supplier_product` (`supplier_pr_id`, `product_id`, `products_model`, `supplier_id`, `supplier_price`) VALUES ('7', '22214752', '', '1', '');
INSERT INTO `supplier_product` (`supplier_pr_id`, `product_id`, `products_model`, `supplier_id`, `supplier_price`) VALUES ('8', '83018877', '', '1', '');
INSERT INTO `supplier_product` (`supplier_pr_id`, `product_id`, `products_model`, `supplier_id`, `supplier_price`) VALUES ('10', '41026961', '', '1', '');
INSERT INTO `supplier_product` (`supplier_pr_id`, `product_id`, `products_model`, `supplier_id`, `supplier_price`) VALUES ('11', '44987197', '', '1', '');
INSERT INTO `supplier_product` (`supplier_pr_id`, `product_id`, `products_model`, `supplier_id`, `supplier_price`) VALUES ('12', '18017264', '', '1', '');
INSERT INTO `supplier_product` (`supplier_pr_id`, `product_id`, `products_model`, `supplier_id`, `supplier_price`) VALUES ('13', '86171793', '', '1', '');
INSERT INTO `supplier_product` (`supplier_pr_id`, `product_id`, `products_model`, `supplier_id`, `supplier_price`) VALUES ('14', '14823020', '', '1', '');
INSERT INTO `supplier_product` (`supplier_pr_id`, `product_id`, `products_model`, `supplier_id`, `supplier_price`) VALUES ('15', '93480129', '', '1', '');
INSERT INTO `supplier_product` (`supplier_pr_id`, `product_id`, `products_model`, `supplier_id`, `supplier_price`) VALUES ('16', '45493718', '', '1', '');
INSERT INTO `supplier_product` (`supplier_pr_id`, `product_id`, `products_model`, `supplier_id`, `supplier_price`) VALUES ('17', '5843757', '', '1', '');
INSERT INTO `supplier_product` (`supplier_pr_id`, `product_id`, `products_model`, `supplier_id`, `supplier_price`) VALUES ('18', '63137382', '', '1', '');
INSERT INTO `supplier_product` (`supplier_pr_id`, `product_id`, `products_model`, `supplier_id`, `supplier_price`) VALUES ('19', '24112039', '', '1', '1000');
INSERT INTO `supplier_product` (`supplier_pr_id`, `product_id`, `products_model`, `supplier_id`, `supplier_price`) VALUES ('20', '76305123', '', '1', '2000');
INSERT INTO `supplier_product` (`supplier_pr_id`, `product_id`, `products_model`, `supplier_id`, `supplier_price`) VALUES ('21', '93739235', '', '1', '1200');
INSERT INTO `supplier_product` (`supplier_pr_id`, `product_id`, `products_model`, `supplier_id`, `supplier_price`) VALUES ('22', '79608384', '', '1', '3200');
INSERT INTO `supplier_product` (`supplier_pr_id`, `product_id`, `products_model`, `supplier_id`, `supplier_price`) VALUES ('23', '44345331', '', '1', '1300');
INSERT INTO `supplier_product` (`supplier_pr_id`, `product_id`, `products_model`, `supplier_id`, `supplier_price`) VALUES ('24', '63072560', '', '1', '2300');
INSERT INTO `supplier_product` (`supplier_pr_id`, `product_id`, `products_model`, `supplier_id`, `supplier_price`) VALUES ('25', '45555063', '', '1', '6000');
INSERT INTO `supplier_product` (`supplier_pr_id`, `product_id`, `products_model`, `supplier_id`, `supplier_price`) VALUES ('26', '3632175', '', '1', '2000');
INSERT INTO `supplier_product` (`supplier_pr_id`, `product_id`, `products_model`, `supplier_id`, `supplier_price`) VALUES ('27', '60344580', '', '1', '2300');
INSERT INTO `supplier_product` (`supplier_pr_id`, `product_id`, `products_model`, `supplier_id`, `supplier_price`) VALUES ('28', '11786515', '', '1', '4500');
INSERT INTO `supplier_product` (`supplier_pr_id`, `product_id`, `products_model`, `supplier_id`, `supplier_price`) VALUES ('29', '62919862', '', '1', '1000');
INSERT INTO `supplier_product` (`supplier_pr_id`, `product_id`, `products_model`, `supplier_id`, `supplier_price`) VALUES ('30', '24927915', '', '1', '300');
INSERT INTO `supplier_product` (`supplier_pr_id`, `product_id`, `products_model`, `supplier_id`, `supplier_price`) VALUES ('31', '44105683', '', '1', '100');
INSERT INTO `supplier_product` (`supplier_pr_id`, `product_id`, `products_model`, `supplier_id`, `supplier_price`) VALUES ('32', '73547591', '', '1', '300');


#
# TABLE STRUCTURE FOR: units
#

DROP TABLE IF EXISTS `units`;

CREATE TABLE `units` (
  `unit_id` int(11) NOT NULL AUTO_INCREMENT,
  `unit_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`unit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `units` (`unit_id`, `unit_name`, `status`) VALUES ('1', 'qty', '1');
INSERT INTO `units` (`unit_id`, `unit_name`, `status`) VALUES ('2', 'm', '1');


#
# TABLE STRUCTURE FOR: user_login
#

DROP TABLE IF EXISTS `user_login`;

CREATE TABLE `user_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(15) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_type` int(11) DEFAULT NULL,
  `security_code` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `user_login` (`id`, `user_id`, `username`, `password`, `user_type`, `security_code`, `status`) VALUES ('1', '1', 'admin@gmail.com', '42157191a9bef4f97c5cf1a0faf487de', '1', NULL, '1');
INSERT INTO `user_login` (`id`, `user_id`, `username`, `password`, `user_type`, `security_code`, `status`) VALUES ('2', '476756', 'manager@gmail.com', 'dabcce196b891cae96e4f509d367eacf', '0', NULL, '1');
INSERT INTO `user_login` (`id`, `user_id`, `username`, `password`, `user_type`, `security_code`, `status`) VALUES ('3', '30292', 'manager@gmail.com', '7df6d3483104c6d5422580cf84d82acd', '0', NULL, '1');
INSERT INTO `user_login` (`id`, `user_id`, `username`, `password`, `user_type`, `security_code`, `status`) VALUES ('4', '976196', 'cashier@gmail.com', '0d2c791cdb88fc46102b86668b94cf6c', '0', NULL, '1');
INSERT INTO `user_login` (`id`, `user_id`, `username`, `password`, `user_type`, `security_code`, `status`) VALUES ('7', '616384', 'manager@gmail.com', '5866c318bbe449ed26c8c6d8883353b8', '1', NULL, '1');
INSERT INTO `user_login` (`id`, `user_id`, `username`, `password`, `user_type`, `security_code`, `status`) VALUES ('8', '547587', 'cashiergod@gmail.com', '0d2c791cdb88fc46102b86668b94cf6c', '0', NULL, '1');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(15) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `company_name` varchar(250) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  `logo` varchar(250) DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `users` (`id`, `user_id`, `last_name`, `first_name`, `company_name`, `address`, `phone`, `gender`, `date_of_birth`, `logo`, `status`) VALUES ('1', '1', 'Admin', 'Super', NULL, NULL, NULL, NULL, NULL, './assets/img/user/2024-10-22/42d1b256aa42e31f031512cd2b018707.jpg', '1');
INSERT INTO `users` (`id`, `user_id`, `last_name`, `first_name`, `company_name`, `address`, `phone`, `gender`, `date_of_birth`, `logo`, `status`) VALUES ('2', '476756', '(Normal)', 'Manager', NULL, NULL, NULL, NULL, NULL, './assets/img/user/2024-10-23/9d7a58ce3f7bbc8cadc9340107c84187.png', '1');
INSERT INTO `users` (`id`, `user_id`, `last_name`, `first_name`, `company_name`, `address`, `phone`, `gender`, `date_of_birth`, `logo`, `status`) VALUES ('3', '30292', '(God)', 'Manager', NULL, NULL, NULL, NULL, NULL, './assets/img/user/2024-10-23/66785a5ba1548286a2e147c8b77e6296.png', '1');
INSERT INTO `users` (`id`, `user_id`, `last_name`, `first_name`, `company_name`, `address`, `phone`, `gender`, `date_of_birth`, `logo`, `status`) VALUES ('4', '976196', '(Normal)', 'Cashier', NULL, NULL, NULL, NULL, NULL, './assets/img/user/2024-10-23/01d9f5f9a69f0de9881341101c7fa6bc.png', '1');
INSERT INTO `users` (`id`, `user_id`, `last_name`, `first_name`, `company_name`, `address`, `phone`, `gender`, `date_of_birth`, `logo`, `status`) VALUES ('7', '616384', 'Destroyer', 'DB', NULL, NULL, NULL, NULL, NULL, './assets/img/user/2024-09-07/4d92c68c3e13c071bdd23b01d1ce24c3.jpg', '1');
INSERT INTO `users` (`id`, `user_id`, `last_name`, `first_name`, `company_name`, `address`, `phone`, `gender`, `date_of_birth`, `logo`, `status`) VALUES ('8', '547587', '(God)', 'Cashier', NULL, NULL, NULL, NULL, NULL, './assets/img/user/2024-10-23/70df3de402d44d25f15995af881fda5b.png', '1');


#
# TABLE STRUCTURE FOR: vat_tax_setting
#

DROP TABLE IF EXISTS `vat_tax_setting`;

CREATE TABLE `vat_tax_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dynamic_tax` int(11) NOT NULL DEFAULT 0,
  `fixed_tax` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `vat_tax_setting` (`id`, `dynamic_tax`, `fixed_tax`) VALUES ('1', '0', '1');


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
  `timezone` varchar(150) NOT NULL,
  `currency_position` varchar(10) DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `rtr` varchar(255) DEFAULT NULL,
  `captcha` int(11) DEFAULT 1 COMMENT '0=active,1=inactive',
  `is_qr` int(11) NOT NULL,
  `is_autoapprove_v` int(11) NOT NULL DEFAULT 0,
  `site_key` varchar(250) DEFAULT NULL,
  `secret_key` varchar(250) DEFAULT NULL,
  `discount_type` int(11) DEFAULT 1,
  PRIMARY KEY (`setting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `web_setting` (`setting_id`, `logo`, `invoice_logo`, `favicon`, `currency`, `timezone`, `currency_position`, `footer_text`, `language`, `rtr`, `captcha`, `is_qr`, `is_autoapprove_v`, `site_key`, `secret_key`, `discount_type`) VALUES ('1', 'assets/img/icons/2024-10-22/c37e5e9214c43686b582fa327c9690c9.png', 'assets/img/icons/2024-09-07/3410fda73e34300e0d81926cda8620df.jpg', 'assets/img/icons/2024-10-22/0be573bc83dd484d4dadc215c837cdeb.png', 'LKR', 'Asia/Kolkata', '0', 'iFleex ERP Cloud | Powered by iFleex Solutions (Pvt) Ltd | BETA1.4.0 DEV1.3.6', 'english', '0', '1', '0', '1', '6LdiKhsUAAAAAMV4jQRmNYdZy2kXEuFe1HrdP5tt', '6LdiKhsUAAAAAMV4jQRmNYdZy2kXEuFe1HrdP5tt', '2');


