-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 31, 2018 at 07:57 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cosmos`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `bid` int(11) NOT NULL,
  `bname` text NOT NULL,
  `accname` text NOT NULL,
  `accnum` varchar(50) NOT NULL,
  `iban` varchar(50) NOT NULL,
  `swift` varchar(50) NOT NULL,
  `baddress` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`bid`, `bname`, `accname`, `accnum`, `iban`, `swift`, `baddress`) VALUES
(1, 'Bank of Baroda', 'COSMOS GREEN FZE', '90010200027086', 'AE100110090010200027086', 'BARBAEADDUB', 'Bur Dubai Branch, P.O.Box: 3162 , Dubai, U.A.E.'),
(2, 'MASHREQ BANK PJSC', 'COSMOS GREEN FZE', '019000018668', 'AE080330000019000018668', 'BOMLAEAD', 'DUBAI INTERNET CITY BRANCH, P.O. BOX: 1250, DUBAI, UAE'),
(3, 'MASHREQ BANK PSC', 'COSMOS GREEN FZE', '026011743', '', 'MSHQ US33', 'MASHREQ BANK PSC, NEW YORK, 70120817'),
(4, 'Noor Bank', 'COSMOS GREEN FZE', '02410642420018', 'AE050520002410642420018', 'NISLAEAD', ''),
(5, 'Noor Bank, USD', 'COSMOS GREEN FZE', '02410642420039', 'AE200520002410642420039', 'NISLAEAD', ''),
(7, 'test bank', 'test account name', '85214796220', 'iban number', 'swift number', 'bank address');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `name` varchar(100) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `symbol` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`name`, `code`, `symbol`) VALUES
('Leke', 'ALL', 'Lek'),
('Dollars', 'USD', '$'),
('Afghanis', 'AFN', '?'),
('Pesos', 'ARS', '$'),
('Guilders', 'AWG', 'ƒ'),
('Dollars', 'AUD', '$'),
('New Manats', 'AZN', '???'),
('Dollars', 'BSD', '$'),
('Dollars', 'BBD', '$'),
('Rubles', 'BYR', 'p.'),
('Euro', 'EUR', '€'),
('Dollars', 'BZD', 'BZ$'),
('Dollars', 'BMD', '$'),
('Bolivianos', 'BOB', '$b'),
('Convertible Marka', 'BAM', 'KM'),
('Pula', 'BWP', 'P'),
('Leva', 'BGN', '??'),
('Reais', 'BRL', 'R$'),
('Pounds', 'GBP', '£'),
('Dollars', 'BND', '$'),
('Riels', 'KHR', '?'),
('Dollars', 'CAD', '$'),
('Dollars', 'KYD', '$'),
('Pesos', 'CLP', '$'),
('Yuan Renminbi', 'CNY', '¥'),
('Pesos', 'COP', '$'),
('Colón', 'CRC', '?'),
('Kuna', 'HRK', 'kn'),
('Pesos', 'CUP', '?'),
('Koruny', 'CZK', 'K?'),
('Kroner', 'DKK', 'kr'),
('Pesos', 'DOP ', 'RD$'),
('Dollars', 'XCD', '$'),
('Pounds', 'EGP', '£'),
('Colones', 'SVC', '$'),
('Pounds', 'FKP', '£'),
('Dollars', 'FJD', '$'),
('Cedis', 'GHC', '¢'),
('Pounds', 'GIP', '£'),
('Quetzales', 'GTQ', 'Q'),
('Pounds', 'GGP', '£'),
('Dollars', 'GYD', '$'),
('Lempiras', 'HNL', 'L'),
('Dollars', 'HKD', '$'),
('Forint', 'HUF', 'Ft'),
('Kronur', 'ISK', 'kr'),
('Rupees', 'INR', 'Rp'),
('Rupiahs', 'IDR', 'Rp'),
('Rials', 'IRR', '?'),
('Pounds', 'IMP', '£'),
('New Shekels', 'ILS', '?'),
('Dollars', 'JMD', 'J$'),
('Yen', 'JPY', '¥'),
('Pounds', 'JEP', '£'),
('Tenge', 'KZT', '??'),
('Won', 'KPW', '?'),
('Won', 'KRW', '?'),
('Soms', 'KGS', '??'),
('Kips', 'LAK', '?'),
('Lati', 'LVL', 'Ls'),
('Pounds', 'LBP', '£'),
('Dollars', 'LRD', '$'),
('Switzerland Francs', 'CHF', 'CHF'),
('Litai', 'LTL', 'Lt'),
('Denars', 'MKD', '???'),
('Ringgits', 'MYR', 'RM'),
('Rupees', 'MUR', '?'),
('Pesos', 'MXN', '$'),
('Tugriks', 'MNT', '?'),
('Meticais', 'MZN', 'MT'),
('Dollars', 'NAD', '$'),
('Rupees', 'NPR', '?'),
('Guilders', 'ANG', 'ƒ'),
('Dollars', 'NZD', '$'),
('Cordobas', 'NIO', 'C$'),
('Nairas', 'NGN', '?'),
('Krone', 'NOK', 'kr'),
('Rials', 'OMR', '?'),
('Rupees', 'PKR', '?'),
('Balboa', 'PAB', 'B/.'),
('Guarani', 'PYG', 'Gs'),
('Nuevos Soles', 'PEN', 'S/.'),
('Pesos', 'PHP', 'Php'),
('Zlotych', 'PLN', 'z?'),
('Rials', 'QAR', '?'),
('New Lei', 'RON', 'lei'),
('Rubles', 'RUB', '???'),
('Pounds', 'SHP', '£'),
('Riyals', 'SAR', '?'),
('Dinars', 'RSD', '???.'),
('Rupees', 'SCR', '?'),
('Dollars', 'SGD', '$'),
('Dollars', 'SBD', '$'),
('Shillings', 'SOS', 'S'),
('Rand', 'ZAR', 'R'),
('Rupees', 'LKR', '?'),
('Kronor', 'SEK', 'kr'),
('Dollars', 'SRD', '$'),
('Pounds', 'SYP', '£'),
('New Dollars', 'TWD', 'NT$'),
('Baht', 'THB', '?'),
('Dollars', 'TTD', 'TT$'),
('Lira', 'TRY', 'TL'),
('Liras', 'TRL', '£'),
('Dollars', 'TVD', '$'),
('Hryvnia', 'UAH', '?'),
('Pesos', 'UYU', '$U'),
('Sums', 'UZS', '??'),
('Bolivares Fuertes', 'VEF', 'Bs'),
('Dong', 'VND', '?'),
('Rials', 'YER', '?'),
('Zimbabwe Dollars', 'ZWD', 'Z$');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `did` int(11) NOT NULL,
  `docname` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`did`, `docname`) VALUES
(1, 'Complete set of Bill of Loading'),
(2, 'Commercial Invoice'),
(3, 'Packing List'),
(4, 'Certificate Of Origin(Form A1)'),
(5, 'No War/ No Radiation Certificate'),
(6, 'Quality Certificate from the Seller'),
(7, 'Weight Slips'),
(8, 'Sea Worthiness Certificate');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `nid` int(11) NOT NULL,
  `note` text NOT NULL,
  `dorder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`nid`, `note`, `dorder`) VALUES
(1, 'Seller shall bear all load port charges including Haulage/local trucking/shifting or any other charges in picking empty containers & handovering the loaded containers in port to shipping agent/freight forwarder.', 0),
(2, 'Shipment shall be in 20 feet containers only.', 0),
(3, 'Average loading shall be . Mts in 20\'/40\' Feet container.', 0),
(4, 'Contracted stuffing must be honoured. Any loss due to less stuffing will have to be compensated by seller.', 0),
(5, 'Material should be free from any type of arms,ammunitions, mines, shells, cartridges, radio active contaminated or any other explosive material in any form either used or otherwise. If any accident occur due to such material being received in the container you will be liable to pay all the losses and damages.', 0),
(6, 'Weight Silp from ELECTRONIC WEIGH BRIDGE to be provided by the seller.', 0),
(7, 'All export licenses, documentation and permits/clearances concerning local customs at the Load Port to be handled by the Seller.', 0),
(8, 'Photographs to be emailed immediately upon on loading.', 0),
(10, 'We need 14 days detention time at final destination.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `packing`
--

CREATE TABLE `packing` (
  `packid` int(11) NOT NULL,
  `docbank` varchar(100) NOT NULL,
  `packingdate` varchar(250) NOT NULL,
  `ponum` varchar(50) NOT NULL,
  `podate` varchar(50) NOT NULL,
  `vessel` varchar(250) NOT NULL,
  `blnum` varchar(250) NOT NULL,
  `Credit` varchar(50) NOT NULL,
  `creditdate` varchar(50) NOT NULL,
  `shippingline` text NOT NULL,
  `Voyage` text NOT NULL,
  `Serial` varchar(50) NOT NULL,
  `customcode` varchar(50) NOT NULL,
  `Carrier` varchar(50) NOT NULL,
  `carrieraddress` text NOT NULL,
  `oceanfreight` float NOT NULL,
  `itemlist` text NOT NULL,
  `composition` text NOT NULL,
  `totalwt` varchar(50) NOT NULL,
  `Abbr` varchar(20) NOT NULL,
  `descgoods` text NOT NULL,
  `stamp` text NOT NULL,
  `clause` text NOT NULL,
  `clauses` text NOT NULL,
  `pid` int(11) NOT NULL,
  `packnum` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packing`
--

INSERT INTO `packing` (`packid`, `docbank`, `packingdate`, `ponum`, `podate`, `vessel`, `blnum`, `Credit`, `creditdate`, `shippingline`, `Voyage`, `Serial`, `customcode`, `Carrier`, `carrieraddress`, `oceanfreight`, `itemlist`, `composition`, `totalwt`, `Abbr`, `descgoods`, `stamp`, `clause`, `clauses`, `pid`, `packnum`) VALUES
(23, '', '8/5/2018', '', '', 'vessel', 'bl mo.', 'credit', '8/5/2018', 'shipping line', 'voyage', 'serial', 'customs', 'carrier', 'carrier', 50, 'fdfd::fdfd::50::45::60', '', '60', 'dfdfdfdfd', '', '', '', '', 50, 'CG-dfdfdfdfd/2018/6282'),
(24, '', '8/5/2018', '', '', 'vessel', 'bl mo.', 'credit', '8/5/2018', 'shipping line', 'voyage', 'serial', 'customs', 'carrier', 'carrier', 50, 'fdfd::fdfd::50::45::60', '', '60', 'dfdfdfdfd', '', '', '', '', 50, 'CG-dfdfdfdfd/2018/6282'),
(25, '', '8/5/2018', '', '', 'vessel', 'bl no.', 'credit', '8/5/2018', 'shipping line', 'voyage no.', 'hsipmetn seroa', 'cutms', 'carrier', 'address', 50, 'cont1::seal::50::60::70', '', '70', 'bbar', '', '', '', '', 52, 'CG-bbar/2018/6283'),
(26, '', '8/5/2018', '', '', 'vessel', 'bl no.', 'credit', '8/5/2018', 'shipping line', 'voyage no.', 'hsipmetn seroa', 'cutms', 'carrier', 'address', 50, 'cont1::seal::50::60::70', '', '70', 'bbar', '', '', '', '', 52, 'CG-bbar/2018/6283'),
(27, '', '8/5/2018', '', '', 'vessel', 'bl no.', 'credit', '8/5/2018', 'shipping line', 'voyage no.', 'hsipmetn seroa', 'cutms', 'carrier', 'address', 50, 'cont1::seal::50::60::70', '', '70', 'bbar', '', '', '', '', 52, 'CG-bbar/2018/6283'),
(28, '', '8/5/2018', '', '', 'vesel name', 'bl no. my no,', 'Documentary Credit Number', '8/5/2018', 'Shipping Line', 'Voyage No.', 'Shipment Serial No.', 'Shipment Serial No.', 'Shipment Serial No.', 'Shipment Serial No.', 50, 'cont::seal::50::60::70', '', '70', 'client no', '', '', '', '', 53, 'CG-client no/2018/6284'),
(29, '', '8/5/2018', '', '', 'Vessel', 'bl no.', 'crDocumentary Credit Number', '8/5/2018', 'Shipping Line', 'Voyage No.', 'Shipment Serial No.', 'Customs Code(H.S)', 'Carrier Name', 'Carrier Address', 500, 'cont10::seall::50::60::70,cpnt2::seal2::50::60::80', '', '150', 'abbr', '', '', '', '', 54, 'CG-abbr/2018/6285'),
(30, '', '8/5/2018', '', '', 'vveseel', 'bl no.', 'Documentary Credit Number', '8/5/2018', 'Shipping Line', 'Voyage No.', 'Shipment Serial No.', 'Shipment Serial No.', 'Carrier Name', 'Carrier Address', 50, 'cont 1::seal::50::65::80,ccccont 1::seal2::50::60::85', '', '165', 'abbr', 'Description of Goods Address\nDescription of Goods Address', '', '', '', 55, 'CG-abbr/2018/6286'),
(32, 'MASHREQ BANK PSC', '8/5/2018', '', '', 'vessel name', 'bl num', 'Documentary Credit Number', '8/5/2018', 'Shipping Line', 'Voyage No.', 'Shipment Serial No.', 'Customs Code(H.S)', 'Customs Code(H.S)', 'Carrier Address', 60, 'cont1::seal::50::60::810,cont2::seal2::60::50::80', 'NI::67,Cu::32', '890', 'abbr', 'Description of Goods Address\nDescription of Goods Address', '', '', '', 56, 'CG-abbr/2018/6287'),
(33, 'Noor Bank', '15/5/2018', '', '', 'vessel', 'b no.', 'Documentary Credit Number', '8/5/2018', 'Shipping Line', 'Voyage No.', 'Shipment Serial No.', 'Customs Code(H.S)', 'Carrier Name', 'Carrier Address', 50, 'con1::seal1::50::510::60', 'Ni::50,Pb::50', '60', 'Carrier Address', 'Carrier Address', '', '', '', 57, 'CG-Carrier Address/2018/6288'),
(34, 'Noor Bank', '9/5/2018', '9874563210', '9/5/2018', 'vessel name', 'bl no.', 'Credit Number', '30/5/2018', 'shiing lien', 'voyage no.', 'Serial', 'Customs', 'Carrier', 'CarrierCarrier', 500, 'cont1::seal::50::60::70,cont2::seal2::50::60::40', 'NI::9,Pb::87,Cu::22', '110', 'abb', 'Description', '', '', '', 58, 'CG-abb/2018/6289'),
(35, 'MASHREQ BANK PSC', '9/5/2018', 'po no.', '9/5/2018', 'vessle name', 'bl no.', 'Documentary Credit Number', '9/5/2018', 'Shipping Line', 'Voyage No.', 'Shipment Serial No.', 'Customs Code(H.S)', 'Carrier Name', 'Carrier Address', 5000, 'cont1::seal1::50::50::55,cont2::seal2::50::60::70', 'Ni::55,Pb::8', '125', 'abb', 'Description of Goods AddressDescription of Goods AddressDescription of Goods Address', '', '', '', 59, 'CG-abb/2018/6290'),
(36, 'MASHREQ BANK PJSC', '9/5/2018', 'po num', '9/5/2018', 'vessel name', 'bl num', 'credut number', '9/5/2018', 'shipon line', 'voyage', 'serial num', 'customs', 'carrier nae', 'carrier addresss', 500, 'cont 1::seal2::50::60::80,cont 2::seal 2::50::60::80', 'Ni::9,Pb::18,Fe::50', '160', 'cbb', 'Description of Goods AddressDescription of Goods Address', '', '', '', 60, 'CG-cbb/2018/6291'),
(37, 'MASHREQ BANK PJSC', '16/5/2018', 'po num', '12/5/2018', 'vessel name', 'bl num,', 'Credit', '22/5/2018', 'shipping line', 'voyage no.', 'shpment serial no.', 'custs cpd', 'carrier name', 'carrier address', 500, 'cont::seal::50::60::70', 'Ni::20,Pb::80', '70', 'abb', 'desc', '', '', '', 61, 'CG-abb/2018/6292'),
(38, 'MASHREQ BANK PSC', '12/5/2018', 'po nuo,', '12/5/2018', 'vessel name', 'bl no.', 'credit no.', '12/5/2018', 'shipping line', 'voyage no', 'serial no.', 'customs', 'carrier name', 'carrier address', 500, 'con1::seal::50::60::85,con::seal::50::60::70', 'Ni::50,Cu::56', '155', 'abb', 'desc of good', '', '', '', 62, 'CG-abb/2018/6293'),
(39, 'test bank', '14/5/2018', 'po no.', '12/5/2018', 'vesel name', 'bl no/.', 'credit no.', '12/5/2018', 'shipping lin', 'voyage no', 'serial no.', 'custns', 'carrie abe', 'address', 600, 'con1::seal1::50::60::70,con2::seal2::50::60::80', 'Ni::90,Pb::10', '150', 'bbr', 'deso gfln gfnfnlg lf fb', '', '', '', 63, 'CG-bbr/2018/6294'),
(40, 'MASHREQ BANK PSC', '16/5/2018', 'po num', '15/5/2018', 'vessel name', 'bl no.', 'credit num', '15/5/2018', 'shippin glin', 'voyage', 'serial no.', 'customs hs', 'carrier name', 'carrier address', 600, 'cont1::seal1::60::45.456::85.521,cont2::seal2::65::52.25::50.65', 'Ni::20,Pb::80', '135', 'invoice', 'Description of Goods Address\nDescription of Goods Address', '', '', '', 65, 'CG-invoice/2018/6296'),
(41, 'MASHREQ BANK PSC', '15/5/2018', 'po num', '16/5/2018', 'vessel', 'bl no.', 'cedit no.', '15/5/2018', 'shiping lin', 'voyage', 'serial no.', 'customs', 'carrier name', 'carreor', 600, 'cont1::seal1::60::50.52::65.25,cont2::seal2::60::55.62::65.25', 'Ni::25,Pb::75', '130.5', 'abb', 'desc of gooods', '', '', '', 66, 'CG-abb/2018/6297'),
(43, 'Noor Bank', '', 'po num', '19/5/2018', 'vessel mame', 'bl no.', 'credit num', '19/5/2018', 'shipping line', 'voyafe', 'serial no.', 'cusmotms', 'carrirer naem', 'carrier address', 500, 'cont1::seal::50::60::40,cont3::seal3::60::80::75', 'No::50,Pb::50', '115', 'abb', 'desc', 'No', '', '', 67, 'CG-abb/2018/1000'),
(44, 'MASHREQ BANK PSC', '30/5/2018', 'po num', '30/5/2018', 'vessel name', 'bl num', 'credit nuym', '30/5/2018', 'line shipin', 'voyge', 'serial no,', 'custms', 'carreir name', 'carrier address', 600, 'con1::seal2::50::60::70,con2::seal3::50::60::70', 'Pb::60,Ni::20', '140', 'agg', 'desc of goods', 'Yes', '', '', 71, 'CG-agg/2018/6302'),
(45, 'Noor Bank', '30/5/2018', 'po num', '30/5/2018', 'vessel name', 'bl no,', 'credit no.', '30/5/2018', 'shippinh linrq', 'voyage no.', 'serial no.', 'customs code', 'carier name', 'carrier nddres', 500, 'con::seal::60::65::70,con2::seal2::60::70::752', 'Pb::40,Ni::80', '822', 'ahh', 'description of gds', 'No', '', '', 73, 'CG-ahh/2018/6304'),
(46, 'Noor Bank', '30/5/2018', 'po order', '30/5/2018', 'vessel name', 'bl no.', 'credit no,', '30/5/2018', 'shipping line', 'voyage no.', 'serial no.', 'customs codeq', 'carrier name', 'carrie naddres', 600, 'con1::seal1::60::70::80,con1::seal2::60::50::40', 'Pb::20,Ni::50', '120', 'ahh', 'desc of goods', 'No', '', '', 73, 'CG-ahh/2018/6304'),
(47, 'Noor Bank, USD', '30/5/2018', 'po order', '30/5/2018', 'vessek name', 'bl name', 'credit number', '30/5/2018', 'shipping line', 'voyage no.', 'serial no,', 'customs', 'carrier name', 'addres', 400, 'con::seal::40::50::60,con2::seal2::40::50::65', 'NI::40,Pn::40', '125', 'ayy', 'description of goods', 'No', '', '', 73, 'CG-ayy/2018/6304'),
(48, 'Noor Bank', '22/5/2018', 'po num', '30/5/2018', 'vessel name', 'bl no.', 'credit no,', '30/5/2018', 'shipping line', 'voayge no.', 'shipentn sewrial name', 'cusotms ocde', 'carrie rname', 'acare', 6000, 'con12::seal12::40::50::45,con12::seal23::50::4::60', 'Pb::40,Ni::50', '105', 'at', 'sdes', 'No', '', '', 74, 'CG-at/2018/6304'),
(49, 'Noor Bank', '30/5/2018', 'gfgf', '30/5/2018', 'gfgf', 'fgfg', 'fgfg', '30/5/2018', 'fgfggf', 'fgfgf', 'fdfdfd', 'fdfd', 'fdfdfd', 'fdfdf', 544, 'con::seal::40::50::60', 'Pb::40,Ni::40', '60', 'fgr', 'desc', 'Yes', '', '', 74, 'CG-fgr/2018/6305'),
(50, 'MASHREQ BANK PSC', '30/5/2018', 'po order', '30/5/2018', 'vessle nme', 'bl no.', 'credit number', '30/5/2018', 'shipping line', 'voyage no.', 'shipment no.', 'customs', 'carrier', 'address', 600, 'con1::seal1::40::50::60,con2::seal2::45::55::65', 'Pb::40,Ni::20,Fe::25', '125', 'ayy', 'desc of goods', 'Yes', 'additional clause', 'invoicelc,coo,form9,nowar,beneficiary,exchangefirstlc,exchangeseclc,coveringlc', 75, 'CG-ayy/2018/6306'),
(51, 'MASHREQ BANK PJSC', '30/5/2018', 'po order', '30/5/2018', 'cvessle name', 'b no.', 'creditn am', '30/5/2018', 'shipping lne', 'voayage no.', 'serial no.', 'cusntims', 'carrer name', 'carrienr adress', 600, 'con::seal::50::60::75,con2::seal::50::60::78', 'Pb::40,Ni::50', '153', 'ah', 'desco', 'No', '-', '', 75, 'CG-ah/2018/6307'),
(52, 'Noor Bank', '', 'po order', '30/5/2018', 'vessle name', 'bl no.', 'credit number', '30/5/2018', 'shipping line', 'voyage no.', 'serial no.', 'customs code', 'carrer name', 'address', 500, 'con::seal::50::60::70,con2::seal2::60::40::45,::::::::', 'Pb::40,Ni::20', 'NaN', 'ahh', 'desc o god', 'No', 'clause', 'view-packing,proforma,invoicelc,coo,form9,nowar,exchangefirstlc,exchangeseclc,coveringlc', 75, 'CG-ahh/2018/6308'),
(53, 'MASHREQ BANK PJSC', '30/5/2018', 'po order', '30/5/2018', 'vessel name', 'bl no.', 'credit number', '30/5/2018', 'shipping line', 'voyage no.', 'shipment no.', 'customs', 'carrier name', 'carrier address', 500, 'con::seal::50::65::48,con::seal::40::65::45', 'Pb::40,Ni::50', '93', 'ahh', 'desc', 'No', 'additional', 'proforma,invoicelc,coo,form9,nowar,exchangeseclc', 76, 'CG-ahh/2018/6309'),
(54, 'MASHREQ BANK PSC', '22/5/2018', 'po num', '31/5/2018', 'vessle name', 'bl num', 'credit num', '31/5/2018', 'shipping line', 'voyage no.', 'serial no.', 'customs', 'carrier name', 'carrier naddress', 600, 'con::seal::50::60::70,con1::seal1::40::45::55', 'Pb::40,Ni::50', '125', 'ayy', 'dec of goods', 'No', 'additiona la clasu', 'view-packing,proforma,invoicelc,coo,form9,nowar,beneficiary,exchangefirstlc,exchangeseclc,coveringlc,ocean', 76, 'CG-ayy/2018/6310');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pid` int(11) NOT NULL,
  `pname` text NOT NULL,
  `pcategory` varchar(100) NOT NULL,
  `phead` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `pname`, `pcategory`, `phead`) VALUES
(2, 'TENSE', 'ALUMINIUM  SCRAP', 'NON - FERROUS METAL SCRAP'),
(3, 'TAINT/TABOR', 'ALUMINIUM  SCRAP', 'NON - FERROUS METAL SCRAP'),
(4, 'TALON', 'ALUMINIUM SCRAP', 'NON - FERROUS METAL SCRAP'),
(5, 'ZORBA', 'ALUMINIUM  SCRAP', 'NON - FERROUS METAL SCRAP'),
(6, 'TWITCH', 'ALUMINIUM  SCRAP', 'NON - FERROUS METAL SCRAP'),
(7, '6063 EXTRUSIONS (TREAD)', 'ALUMINIUM  SCRAP', 'NON - FERROUS METAL SCRAP'),
(8, 'UBC CANS', 'ALUMINIUM  SCRAP', 'NON - FERROUS METAL SCRAP'),
(9, 'ADC12', 'ALUMINIUM  SCRAP', 'NON - FERROUS METAL SCRAP'),
(10, 'INGOTS', 'ALUMINIUM  SCRAP', 'NON - FERROUS METAL SCRAP'),
(11, 'TABLET', 'ALUMINIUM  SCRAP', 'NON - FERROUS METAL SCRAP'),
(12, 'TROMA', 'ALUMINIUM  SCRAP', 'NON - FERROUS METAL SCRAP'),
(13, 'TOUGH TABOO', 'ALUMINIUM  SCRAP', 'NON - FERROUS METAL SCRAP'),
(14, 'TELIC', 'ALUMINIUM  SCRAP', 'NON - FERROUS METAL SCRAP'),
(15, 'TALLY (RADIATORS)', 'ALUMINIUM  SCRAP', 'NON - FERROUS METAL SCRAP'),
(16, 'ALUMINIUM 7005', 'ALUMINIUM  SCRAP', 'NON - FERROUS METAL SCRAP'),
(18, 'SS- 201', 'STAINLESS STEEL', 'NON - FERROUS METAL SCRAP'),
(19, 'SS-304', 'STAINLESS STEEL', 'NON - FERROUS METAL SCRAP'),
(20, 'SS- 316', 'STAINLESS STEEL', 'NON - FERROUS METAL SCRAP'),
(21, 'SS- 410', 'STAINLESS STEEL', 'NON - FERROUS METAL SCRAP'),
(22, 'SS- 430', 'STAINLESS STEEL', 'NON - FERROUS METAL SCRAP'),
(23, 'SS PIPES', 'STAINLESS STEEL', 'NON - FERROUS METAL SCRAP'),
(24, 'ZURIK', 'STAINLESS STEEL', 'NON - FERROUS METAL SCRAP'),
(25, 'INCONEL 825', 'HIGH Ni SCRAP', 'NON - FERROUS METAL SCRAP'),
(26, 'INCONEL 625', 'HIGH Ni SCRAP', 'NON - FERROUS METAL SCRAP'),
(27, 'HMS', '', ''),
(28, 'HEAVY MELTING SCRAP  1', 'FERROUS METAL SCARP', 'FERROUS METAL SCARP'),
(29, 'HEAVY MELTING SCRAP -80:20', 'FERROUS METAL SCARP', 'FERROUS METAL SCARP'),
(30, 'SHREDDED 211', 'FERROUS METAL SCARP', 'FERROUS METAL SCARP');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `pid` int(11) NOT NULL,
  `vid` int(11) NOT NULL,
  `currency` varchar(50) NOT NULL,
  `vref` varchar(100) NOT NULL,
  `itemdesc` text NOT NULL,
  `shipdate` varchar(100) NOT NULL,
  `pricebasis` varchar(100) NOT NULL,
  `paymentterms` text NOT NULL,
  `loadingport` varchar(100) NOT NULL,
  `dischargeport` varchar(100) NOT NULL,
  `destination` varchar(100) NOT NULL,
  `originofgoods` text NOT NULL,
  `documents` text NOT NULL,
  `spnotes` text NOT NULL,
  `pcno` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`pid`, `vid`, `currency`, `vref`, `itemdesc`, `shipdate`, `pricebasis`, `paymentterms`, `loadingport`, `dischargeport`, `destination`, `originofgoods`, `documents`, `spnotes`, `pcno`, `date`) VALUES
(30, 46, 'BOB-$b', 'Reference', '11:400:2:800,16:600:2:1200,21:400:1:400', '27/4/2018', 'SAS', '100% Usance LC', 'Port recd', 'fdfdfd fdfd fd', 'dets ddfd fdd gf fg', '', 'Commercial Invoice,Packing List,No War/ No Radiation Certificate,Quality Certificate from the Seller,Weight Slips', '', 'CG/PO/2018/6281', '21/04/2018'),
(31, 41, 'VEF-Bs', 'ref', '15:500:1:500,3:600:5:3000', '25/4/2018', 'FOB', '100 % Irrevocable Sight LC', 'port', 'port', 'final', '', 'Packing List ,Certificate Of Origin ,No War/ No Radiation Certificate', 'sdsds', 'CG/PO/2018/6282', '24/04/2018'),
(32, 44, 'BOB-$b', 'Ref', '6:500:1:500', '27/4/2018', 'CFR', '20 % Advance & Balance 80% upon CAD', 'load', 'disc', 'final', '', 'Complete set of Bill of Loading,Commercial Invoice,Packing List ', 'feet', 'CG/PO/2018/6283', '27/04/2018'),
(33, 40, 'THB-?', 'Ree', '7:100:2:200', '', 'CFR', '20 % Advance & Balance 80% on Loading Pictures, Weight Slips, Packing List & OBL on email', 'fdfd', 'fdf', 'dfdf', '', 'Commercial Invoice,Packing List ,Certificate Of Origin ,No War/ No Radiation Certificate', 'fdfdf', 'CG/PO/2018/6284', '27/04/2018'),
(34, 42, 'THB-?', '', ':::,:::,:::,:::', '', 'CFR', '20 % Advance & Balance 80% upon CAD', '', '', '', '', '', '', 'CG/PO/2018/6285', '28/04/2018'),
(35, 42, 'THB-?', '', '20:500:1:500', '', 'CFR', '20 % Advance & Balance 80% upon CAD', '', '', '', '', '', '', 'CG/PO/2018/6286', '28/04/2018'),
(36, 42, 'THB-?', '', '20:500:1:500', '', 'CFR', '20 % Advance & Balance 80% upon CAD', '', '', '', '', '', '', 'CG/PO/2018/6287', '28/04/2018'),
(37, 43, 'VEF-Bs', 'ref', '5:100:1:100', '23/5/2018', 'CFR', '10 % Advance & Balance 90% on Loading Pictures, Weight Slips, Packing List & OBL on email', 'fdfd', 'fdfd', 'dfd', '', 'No War/ No Radiation Certificate,Quality Certificate from the Seller,Weight Slips', 'Seller shall bear all load port charges including Haulage/local trucking/shifting or any other charg', 'CG/PO/2018/6288', '02/05/2018'),
(38, 40, 'PAB-B/.', 'ref', '3:600:1:600', '14/5/2018', 'CFR', '10 % Advance &amp; Balance 90% on Loading Pictures, Weight Slips, Packing List &amp; OBL on email', 'fdfd', 'fdf', 'fd', '', 'Packing List ,Certificate Of Origin', 'Shipment shall be in 20 feet containers only.|Average loading shall be . Mts in 20\'/40\' Feet container.', 'CG/PO/2018/6289', '02/05/2018'),
(39, 42, 'AFN-?', 'fgg', '19:400:1:400', '1/5/2018', 'Hex Yard', '20 % Advance &amp; Balance 80% upon CAD', 'gfg', 'gfg', '', '', 'Complete set of Bill of Loading,Commercial Invoice,Packing List ,Sea Worthless Certificate', 'Material should be free from any type of arms,ammunitions, mines, shells, cartridges, radio active contaminated or any other explosive material in any form either used or otherwise. If any accident occur due to such material being received in the container you will be liable to pay all the losses and damages.|Weight Silp from ELECTRONIC WEIGH BRIDGE to be provided by the seller.|All export licenses, documentation and permits/clearances concerning local customs at the Load Port to be handled by the Seller.|Photographs to be emailed immediately upon on loading.', 'CG/PO/2018/6290', '02/05/2018'),
(40, 42, 'GHC-ï¿½', 'ref', '8:400:1:400', '23/5/2018', 'FOB', '100% Payment on Loading Pictures, Weight Slips &amp; OBL on email', 'loading', 'discharge', 'final destination', '', 'Complete set of Bill of Loading,Commercial Invoice,Packing List ,Certificate Of Origin ,No War/ No Radiation Certificate,Quality Certificate from the Seller', 'Seller shall bear all load port charges including Haulage/local trucking/shifting or any other charges in picking empty containers &amp; handovering the loaded containers in port to shipping agent/freight forwarder.|Shipment shall be in 20 feet containers only.|Average loading shall be . Mts in 20\'/40\' Feet container.|Contracted stuffing must be honoured. Any loss due to less stuffing will have to be compensated by seller.|Material should be free from any type of arms,ammunitions, mines, shells, cartridges, radio active contaminated or any other explosive material in any form either used or otherwise. If any accident occur due to such material being received in the container you will be liable to pay all the losses and damages.|Weight Silp from ELECTRONIC WEIGH BRIDGE to be provided by the seller.', 'CG/PO/2018/6291', '02/05/2018'),
(41, 41, 'GHC-ï¿½', 'Ref', '13:500:1:500', '2/5/2018', 'CFR', '20 % Advance &amp; Balance 80% on Loading Pictures, Weight Slips, Packing List &amp; OBL on email', 'loading', 'discharge', 'destination', 'origin', 'Complete set of Bill of Loading,Commercial Invoice,Packing List ,Certificate Of Origin', 'Seller shall bear all load port charges including Haulage/local trucking/shifting or any other charges in picking empty containers &amp; handovering the loaded containers in port to shipping agent/freight forwarder.|Shipment shall be in 20 feet containers only.|Average loading shall be . Mts in 20\'/40\' Feet container.|Contracted stuffing must be honoured. Any loss due to less stuffing will have to be compensated by seller.|Material should be free from any type of arms,ammunitions, mines, shells, cartridges, radio active contaminated or any other explosive material in any form either used or otherwise. If any accident occur due to such material being received in the container you will be liable to pay all the losses and damages.|Weight Silp from ELECTRONIC WEIGH BRIDGE to be provided by the seller.', 'CG/PO/2018/6292', '02/05/2018'),
(42, 40, 'THB-?', 'Ref Seller', '7:400.5:6:2403,20:500.6:3:1501.8000000000002', '9/5/2018', 'CFR', '20 % Advance &amp; Balance 80% on Loading Pictures, Weight Slips, Packing List &amp; OBL on email', 'loading port', 'port of discharge', 'final destination', 'origin of goods', 'Complete set of Bill of Loading,Commercial Invoice,Packing List ,Certificate Of Origin ,No War/ No Radiation Certificate,Quality Certificate from the Seller', 'Seller shall bear all load port charges including Haulage/local trucking/shifting or any other charges in picking empty containers &amp; handovering the loaded containers in port to shipping agent/freight forwarder.|Shipment shall be in 20 feet containers only.|Average loading shall be . Mts in 20\'/40\' Feet container.|Contracted stuffing must be honoured. Any loss due to less stuffing will have to be compensated by seller.|Weight Silp from ELECTRONIC WEIGH BRIDGE to be provided by the seller.|All export licenses, documentation and permits/clearances concerning local customs at the Load Port to be handled by the Seller.', 'CG/PO/2018/6293', '09/05/2018');

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE `sale` (
  `pid` int(11) NOT NULL,
  `vid` int(11) NOT NULL,
  `currency` varchar(50) NOT NULL,
  `bank` text NOT NULL,
  `Advanced` float NOT NULL,
  `vref` varchar(100) NOT NULL,
  `itemdesc` text NOT NULL,
  `totalamt` float NOT NULL,
  `shipmentby` varchar(100) NOT NULL,
  `pricebasis` varchar(100) NOT NULL,
  `paymentterms` text NOT NULL,
  `LoadingTerms` text NOT NULL,
  `Surveyor` varchar(100) NOT NULL,
  `loadingport` varchar(100) NOT NULL,
  `dischargeport` varchar(100) NOT NULL,
  `destination` varchar(100) NOT NULL,
  `FDcount` varchar(100) NOT NULL,
  `originofgoods` varchar(200) NOT NULL,
  `documents` text NOT NULL,
  `spnotes` text NOT NULL,
  `stampoptn` text NOT NULL,
  `pcno` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL,
  `docutype` varchar(50) NOT NULL,
  `totaldocs` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`pid`, `vid`, `currency`, `bank`, `Advanced`, `vref`, `itemdesc`, `totalamt`, `shipmentby`, `pricebasis`, `paymentterms`, `LoadingTerms`, `Surveyor`, `loadingport`, `dischargeport`, `destination`, `FDcount`, `originofgoods`, `documents`, `spnotes`, `stampoptn`, `pcno`, `date`, `docutype`, `totaldocs`) VALUES
(51, 5, 'THB-?', 'MASHREQ BANK PSC', 10, 'Ref', '15:500:1:500', 500, 'shipment by', 'CFR', '10 % Advance &amp; Balance 90% upon CAD', 'loading terms', 'PSI Required', 'loading port', 'port of discharge', 'final destination', '', 'origin of goods', 'Complete set of Bill of Loading:2,Commercial Invoice:2,Packing List :2,Certificate Of Origin :2,No War/ No Radiation Certificate:3,Quality Certificate from the Seller:1+1,Weight Slips:2+3', 'Delivery::Delivery time is not exact time, it is approximate only.|Quantity::Seller can deliver 10% more or less than the stated quantity in this contract.|Price::Unit Price is inclusive of all freight charges, insurance costs and all other expenses, taxes or duties payable in respect of the commodity are payable by buyer.|Loading &amp; Loading Pictures::Loading shall be made within 30-45 days after receiving advance &amp; loading pictures shall be emailed to the buyer.|Acceptance of Contract::If this Sales Contract has not been signed by the Buyer where indicated &amp; the Buyer continues to perform the Sales Contract with the seller, then the buyer will be deemed to have entered into this Sales Contract and accepted these terms', 'Yes', 'CG/PO/2018/6281', '08/05/2018', 'DP', 'view-packing,proforma,invoice'),
(52, 4, 'BOB-$b', 'MASHREQ BANK PSC', 20, 'Ref', '13:500:1:500', 500, 'by', 'CFR', '20 % Advance &amp; Balance 80% upon CAD', 'loading terms', 'PSI Required', 'loading port', 'port of discharge', 'origin', '', 'goods', 'Complete set of Bill of Loading:2,Commercial Invoice:2,Packing List :2,Certificate Of Origin :2', 'Delivery::Delivery time is not exact time, it is approximate only.|Quantity::Seller can deliver 10% more or less than the stated quantity in this contract.|Price::Unit Price is inclusive of all freight charges, insurance costs and all other expenses, taxes or duties payable in respect of the commodity are payable by buyer.|Loading &amp; Loading Pictures::Loading shall be made within 30-45 days after receiving advance &amp; loading pictures shall be emailed to the buyer.', 'Yes', 'CG/PO/2018/6282', '08/05/2018', 'DP', 'view-packing,proforma,invoice,coo,form9'),
(53, 9, 'BOB-$b', 'MASHREQ BANK PJSC', 20, 'Ref', '11:500:1:500', 500, 'hipmnt', 'CFR', '20 % Advance &amp; Balance 80% upon CAD', 'loading terms', 'PSI Required', 'loading', 'port of discharge', 'origin', '', 'goods', 'Complete set of Bill of Loading:2,Commercial Invoice:2+2,Packing List :1+1,Certificate Of Origin :3+1,No War/ No Radiation Certificate:,Quality Certificate from the Seller:', 'Delivery::Delivery time is not exact time, it is approximate only.|Quantity::Seller can deliver 10% more or less than the stated quantity in this contract.|Price::Unit Price is inclusive of all freight charges, insurance costs and all other expenses, taxes or duties payable in respect of the commodity are payable by buyer.|Loading &amp; Loading Pictures::Loading shall be made within 30-45 days after receiving advance &amp; loading pictures shall be emailed to the buyer.|Acceptance of Contract::If this Sales Contract has not been signed by the Buyer where indicated &amp; the Buyer continues to perform the Sales Contract with the seller, then the buyer will be deemed to have entered into this Sales Contract and accepted these terms', 'Yes', 'CG/PO/2018/6283', '08/05/2018', 'DP', 'view-packing,proforma,invoice,form9,nowar,beneficiary,test,exchangefirst,exchangesec,covering,ocean,agreement'),
(54, 1, 'GHC-ï¿½', 'Noor Bank, USD', 50, 'Ref', '16:600:1:600', 600, 'Shipment', 'CFR', '10 % Advance &amp; Balance 90% upon CAD', 'loading', 'PSI Required', 'loading port', 'port of diss', 'final', '', 'origin of gooods', 'Complete set of Bill of Loading:2,Commercial Invoice:2,Packing List :2,Certificate Of Origin :2,No War/ No Radiation Certificate:2,Quality Certificate from the Seller:2,Weight Slips:2,Sea Worthless Certificate:1', 'Delivery::Delivery time is not exact time, it is approximate only.|Quantity::Seller can deliver 10% more or less than the stated quantity in this contract.|Price::Unit Price is inclusive of all freight charges, insurance costs and all other expenses, taxes or duties payable in respect of the commodity are payable by buyer.|Loading &amp; Loading Pictures::Loading shall be made within 30-45 days after receiving advance &amp; loading pictures shall be emailed to the buyer.|Acceptance of Contract::If this Sales Contract has not been signed by the Buyer where indicated &amp; the Buyer continues to perform the Sales Contract with the seller, then the buyer will be deemed to have entered into this Sales Contract and accepted these terms', 'Yes', 'CG/PO/2018/6284', '08/05/2018', 'LC', 'view-packing,invoicelc,form9,nowar,beneficiary,test,exchangefirstlc,exchangeseclc,coveringlc'),
(55, 2, 'VEF-Bs', 'MASHREQ BANK PJSC', 10, 'Refe', '9:500:1:500', 500, 'shipment', 'CFR', '20 % Advance &amp; Balance 80% upon CAD', 'loading terms', 'PSI Required', 'loading port', 'port of discharge', 'final destination', '', 'origin', 'Complete set of Bill of Loading:1,Commercial Invoice:2,Packing List :3,Certificate Of Origin :1+1', 'Delivery::Delivery time is not exact time, it is approximate only.|Quantity::Seller can deliver 10% more or less than the stated quantity in this contract.|Price::Unit Price is inclusive of all freight charges, insurance costs and all other expenses, taxes or duties payable in respect of the commodity are payable by buyer.|Loading &amp; Loading Pictures::Loading shall be made within 30-45 days after receiving advance &amp; loading pictures shall be emailed to the buyer.|Acceptance of Contract::If this Sales Contract has not been signed by the Buyer where indicated &amp; the Buyer continues to perform the Sales Contract with the seller, then the buyer will be deemed to have entered into this Sales Contract and accepted these terms', 'Yes', 'CG/PO/2018/6285', '08/05/2018', 'DP', 'view-packing,proforma,invoice,form9,nowar,beneficiary,test,exchangefirst,exchangesec,covering,ocean'),
(56, 4, 'PAB-B/.', 'Noor Bank', 20, 'Referene', '3:500:1:500', 500, 'Shipment BY', 'CFR', '20 % Advance &amp; Balance 80% upon CAD', 'Loading', 'PSI Required', 'loading port', 'port of discharge', 'final destination', '', 'origin of goods', 'Complete set of Bill of Loading:2,Commercial Invoice:2,Packing List :2,Certificate Of Origin :1+1,No War/ No Radiation Certificate:2+1', 'Delivery::Delivery time is not exact time, it is approximate only.|Quantity::Seller can deliver 10% more or less than the stated quantity in this contract.|Price::Unit Price is inclusive of all freight charges, insurance costs and all other expenses, taxes or duties payable in respect of the commodity are payable by buyer.|Loading &amp; Loading Pictures::Loading shall be made within 30-45 days after receiving advance &amp; loading pictures shall be emailed to the buyer.', 'Yes', 'CG/PO/2018/6286', '08/05/2018', 'DP', 'view-packing,proforma,invoice,coo,form9,nowar,beneficiary,test,exchangefirst,exchangesec,covering,ocean,agreement'),
(57, 6, 'THB-?', 'Noor Bank', 20, 'Ref', '3:500:1:500', 500, 'Ship', 'CFR', '20 % Advance &amp; Balance 80% on Loading Pictures, Weight Slips, Packing List &amp; OBL on email', 'loading', 'PSI Required', 'port', 'oport', 'final dest', '', 'origin', 'Complete set of Bill of Loading:1,Commercial Invoice:2,Packing List :3,Certificate Of Origin :2', 'Delivery::Delivery time is not exact time, it is approximate only.|Quantity::Seller can deliver 10% more or less than the stated quantity in this contract.|Price::Unit Price is inclusive of all freight charges, insurance costs and all other expenses, taxes or duties payable in respect of the commodity are payable by buyer.|Loading &amp; Loading Pictures::Loading shall be made within 30-45 days after receiving advance &amp; loading pictures shall be emailed to the buyer.|Acceptance of Contract::If this Sales Contract has not been signed by the Buyer where indicated &amp; the Buyer continues to perform the Sales Contract with the seller, then the buyer will be deemed to have entered into this Sales Contract and accepted these terms', 'Yes', 'CG/PO/2018/6287', '08/05/2018', 'LC', 'view-packing,proforma,invoicelc,coo,form9,nowar,beneficiary,test,exchangefirstlc,exchangeseclc,coveringlc,ocean'),
(58, 4, 'PAB-B/.', 'Bank of Baroda', 20, 'Ref', '13:500:1:500', 500, 'shipment By', 'CFR', '20 % Advance &amp; Balance 80% upon CAD', 'loading terms', 'origin', 'loaiding port', 'port of discharge', 'origin', '', 'origin gods', 'Complete set of Bill of Loading:2,Commercial Invoice:2', 'Delivery::Delivery time is not exact time, it is approximate only.|Quantity::Seller can deliver 10% more or less than the stated quantity in this contract.|Price::Unit Price is inclusive of all freight charges, insurance costs and all other expenses, taxes or duties payable in respect of the commodity are payable by buyer.|Loading &amp; Loading Pictures::Loading shall be made within 30-45 days after receiving advance &amp; loading pictures shall be emailed to the buyer.', 'Yes', 'CG/PO/2018/6288', '09/05/2018', 'LC', 'view-packing,proforma,invoicelc,coo,form9,nowar,beneficiary,test,exchangefirstlc,exchangeseclc,coveringlc,ocean,agreement'),
(59, 5, 'GHC-ï¿½', 'Noor Bank', 10, 'Ref', '11:50.25:10:502.5', 502, 'Sghg', 'CFR', '100% Payment on Loading Pictures, Weight Slips on email.', 'loading term', 'PSI Required', 'loading port', 'port of discharge', 'final destinaion', 'countyq', 'origin of goods', 'Complete set of Bill of Loading:2,Commercial Invoice:2+1,Packing List :1+1,Certificate Of Origin :2+1', 'Delivery::Delivery time is not exact time, it is approximate only.|Quantity::Seller can deliver 10% more or less than the stated quantity in this contract.|Loading &amp; Loading Pictures::Loading shall be made within 30-45 days after receiving advance &amp; loading pictures shall be emailed to the buyer.', 'Yes', 'CG/PO/2018/6289', '09/05/2018', 'LC', 'view-packing,proforma,invoicelc,coo,form9,nowar,beneficiary,test,exchangefirstlc,exchangeseclc,coveringlc,ocean,agreement'),
(60, 5, 'PAB-B/.', 'MASHREQ BANK PSC', 20, 'Referenec nim', '7:500:2:1000,23:502.52:6:3015.12', 4015, 'shipmetn by', 'CFR', '10 % Advance &amp; Balance 90% upon CAD', 'loading terms', 'PSI Required', 'por loading', 'port od ids', 'fina ldev', 'coitbry', 'origin o ogos', 'Complete set of Bill of Loading:2,Commercial Invoice:2,Packing List :2,Certificate Of Origin :1+1', 'Delivery::Delivery time is not exact time, it is approximate only.|Quantity::Seller can deliver 10% more or less than the stated quantity in this contract.|Price::Unit Price is inclusive of all freight charges, insurance costs and all other expenses, taxes or duties payable in respect of the commodity are payable by buyer.|Loading &amp; Loading Pictures::Loading shall be made within 30-45 days after receiving advance &amp; loading pictures shall be emailed to the buyer.', 'Yes', 'CG/PO/2018/6290', '09/05/2018', 'LC', 'view-packing,proforma,invoicelc,coo,form9,nowar,beneficiary,test,exchangefirstlc,exchangeseclc,coveringlc,ocean,agreement'),
(61, 5, 'VEF-Bs', 'Noor Bank', 20, 'Ref', '6:600:1:600', 600, 'ship by', 'CFR', '20 % Advance &amp; Balance 80% upon CAD', 'loadig terms', 'PSI Required', 'loading terms', 'port of discharge', 'final destination', 'final destination', 'origin of goods', 'Complete set of Bill of Loading:2,Commercial Invoice:2,Packing List :2', 'Delivery::Delivery time is not exact time, it is approximate only.|Quantity::Seller can deliver 10% more or less than the stated quantity in this contract.|Price::Unit Price is inclusive of all freight charges, insurance costs and all other expenses, taxes or duties payable in respect of the commodity are payable by buyer.|Loading &amp; Loading Pictures::Loading shall be made within 30-45 days after receiving advance &amp; loading pictures shall be emailed to the buyer.|Acceptance of Contract::If this Sales Contract has not been signed by the Buyer where indicated &amp; the Buyer continues to perform the Sales Contract with the seller, then the buyer will be deemed to have entered into this Sales Contract and accepted these terms', 'Yes', 'CG/PO/2018/6291', '12/05/2018', 'DP', 'view-packing,proforma,invoice,coo,form9,nowar,beneficiary,test,exchangefirst,exchangesec,covering,ocean,agreement'),
(62, 6, 'PAB-B/.', 'MASHREQ BANK PSC', 20, 'Ref', '12:400:1:400', 400, 'ship By', 'CFR', '20 % Advance &amp; Balance 80% upon CAD', 'loaading terms', 'PSI Required', 'loading port', 'port of discharge', 'final det', 'couty', 'origin of goods', 'Complete set of Bill of Loading:2,Commercial Invoice:2,Packing List :2', 'Delivery::Delivery time is not exact time, it is approximate only.|Quantity::Seller can deliver 10% more or less than the stated quantity in this contract.|Price::Unit Price is inclusive of all freight charges, insurance costs and all other expenses, taxes or duties payable in respect of the commodity are payable by buyer.|Loading &amp; Loading Pictures::Loading shall be made within 30-45 days after receiving advance &amp; loading pictures shall be emailed to the buyer.|Acceptance of Contract::If this Sales Contract has not been signed by the Buyer where indicated &amp; the Buyer continues to perform the Sales Contract with the seller, then the buyer will be deemed to have entered into this Sales Contract and accepted these terms', 'Yes', 'CG/PO/2018/6292', '12/05/2018', 'LC', 'view-packing,proforma,invoicelc,coo,form9,nowar,beneficiary,test,exchangefirstlc,exchangeseclc,coveringlc,ocean,agreement'),
(63, 5, 'PAB-B/.', 'Bank of Baroda', 10, 'Ref', '6:497:1:497', 497, 'Shipment', 'CFR', '20 % Advance &amp; Balance 80% on Loading Pictures, Weight Slips, Packing List &amp; OBL on email', 'loading terms', 'PSI Required', 'loading port', 'port of discharge', 'origin destination', 'final detinaton', 'origin of goods', 'Complete set of Bill of Loading:2,Commercial Invoice:2,Packing List :2,Certificate Of Origin :2', 'Delivery::Delivery time is not exact time, it is approximate only.|Quantity::Seller can deliver 10% more or less than the stated quantity in this contract.|Price::Unit Price is inclusive of all freight charges, insurance costs and all other expenses, taxes or duties payable in respect of the commodity are payable by buyer.|Loading &amp; Loading Pictures::Loading shall be made within 30-45 days after receiving advance &amp; loading pictures shall be emailed to the buyer.|Acceptance of Contract::If this Sales Contract has not been signed by the Buyer where indicated &amp; the Buyer continues to perform the Sales Contract with the seller, then the buyer will be deemed to have entered into this Sales Contract and accepted these terms', 'Yes', 'CG/PO/2018/6293', '12/05/2018', 'DP', 'view-packing,proforma,invoice,coo,form9,nowar,beneficiary,test,exchangefirst,exchangesec,covering,ocean,agreement'),
(64, 3, 'VEF-Bs', 'Bank of Baroda', 10, 'Ref', '16:500:1:500', 500, 'shion', 'CFR', '20 % Advance &amp; Balance 80% upon CAD', 'laoding', 'PSI Required', 'port', 'port', 'final', 'country', 'origin', 'Complete set of Bill of Loading:1,Commercial Invoice:1,Packing List:1,Certificate Of Origin(Form A1):1', 'Delivery::Delivery time is not exact time, it is approximate only.|Quantity::Seller can deliver 10% more or less than the stated quantity in this contract.|Price::Unit Price is inclusive of all freight charges, insurance costs and all other expenses, taxes or duties payable in respect of the commodity are payable by buyer.', 'Yes', 'CG/PO/2018/6294', '15/05/2018', '-', '-'),
(65, 8, 'PAB-B/.', 'Bank of Baroda', 10, 'Ref', '14:600:1:600', 600, 'Shipment', 'CFR', '20 % Advance &amp; Balance 80% on Loading Pictures, Weight Slips, Packing List &amp; OBL on email', 'loading terms', 'PSI Required', 'loading port', 'port of discharge', 'final destination', 'country', 'origin of goods', 'Complete set of Bill of Loading:2,Commercial Invoice:3,Packing List:1,Certificate Of Origin(Form A1):4,No War/ No Radiation Certificate:1+1,Weight Slips:2', 'Delivery::Delivery time is not exact time, it is approximate only.|Quantity::Seller can deliver 10% more or less than the stated quantity in this contract.|Price::Unit Price is inclusive of all freight charges, insurance costs and all other expenses, taxes or duties payable in respect of the commodity are payable by buyer.|Loading &amp; Loading Pictures::Loading shall be made within 30-45 days after receiving advance &amp; loading pictures shall be emailed to the buyer.|Acceptance of Contract::If this Sales Contract has not been signed by the Buyer where indicated &amp; the Buyer continues to perform the Sales Contract with the seller, then the buyer will be deemed to have entered into this Sales Contract and accepted these terms', 'Yes', 'CG/PO/2018/6295', '15/05/2018', 'DP', 'view-packing,proforma,invoice,coo,form9,nowar,beneficiary,test,exchangefirst,exchangesec,covering,ocean,agreement'),
(66, 9, 'PAB-B/.', 'Noor Bank', 15, 'Ref', '6:400:1:400', 400, 'Shipment', 'CFR', '20 % Advance &amp; Balance 80% upon CAD', 'loading', 'PSI Required', 'loading port', 'discharge', 'final destination', 'coutry', 'goods', 'Complete set of Bill of Loading:2,Commercial Invoice:2,Certificate Of Origin(Form A1):2,No War/ No Radiation Certificate:2,Weight Slips:3+1,Sea Worthless Certificate:3', 'Delivery::Delivery time is not exact time, it is approximate only.|Quantity::Seller can deliver 10% more or less than the stated quantity in this contract.|Price::Unit Price is inclusive of all freight charges, insurance costs and all other expenses, taxes or duties payable in respect of the commodity are payable by buyer.|Loading &amp; Loading Pictures::Loading shall be made within 30-45 days after receiving advance &amp; loading pictures shall be emailed to the buyer.|Acceptance of Contract::If this Sales Contract has not been signed by the Buyer where indicated &amp; the Buyer continues to perform the Sales Contract with the seller, then the buyer will be deemed to have entered into this Sales Contract and accepted these terms', 'Yes', 'CG/PO/2018/6296', '15/05/2018', 'DP', 'view-packing,proforma,invoice,coo,form9,nowar,beneficiary,test,exchangefirst,exchangesec,covering,ocean,agreement'),
(67, 5, 'THB-?', 'Bank of Baroda', 2, 'ref', '12:400:1:400', 400, 'Shipmen', 'CFR', '20 % Advance &amp; Balance 80% upon CAD', 'loading terms', 'PSI Required', 'loading port', 'port of discharge', 'final destination', 'country', 'origin of gooods', 'Complete set of Bill of Loading:2,Commercial Invoice:2+1,Packing List:3+1,Certificate Of Origin(Form A1):1+1,No War/ No Radiation Certificate:2+1', 'Delivery::Delivery time is not exact time, it is approximate only.|Quantity::Seller can deliver 10% more or less than the stated quantity in this contract.|Price::Unit Price is inclusive of all freight charges, insurance costs and all other expenses, taxes or duties payable in respect of the commodity are payable by buyer.|Loading &amp; Loading Pictures::Loading shall be made within 30-45 days after receiving advance &amp; loading pictures shall be emailed to the buyer.|Acceptance of Contract::If this Sales Contract has not been signed by the Buyer where indicated &amp; the Buyer continues to perform the Sales Contract with the seller, then the buyer will be deemed to have entered into this Sales Contract and accepted these terms', 'Yes', 'CG/PO/2018/6297', '15/05/2018', 'LC', 'view-packing,proforma,invoicelc,coo,form9,nowar,beneficiary,test,exchangefirstlc,exchangeseclc,coveringlc,ocean,agreement'),
(68, 3, 'USD-$', 'Bank of Baroda', 15, 'Ref', '4:600:1:600', 600, 'Shipment By', 'CFR', '20 % Advance &amp; Balance 80% upon CAD', 'loading terms', 'PSI Required', 'port of loading', 'port of dischage', 'final destination', 'coutbru', 'origin of goods', 'Complete set of Bill of Loading:2,Commercial Invoice:3,Packing List:1,Certificate Of Origin(Form A1):1+1,Quality Certificate from the Seller:2+1,Weight Slips:2,Sea Worthless Certificate:3+1', 'Delivery::Delivery time is not exact time, it is approximate only.|Quantity::Seller can deliver 10% more or less than the stated quantity in this contract.|Price::Unit Price is inclusive of all freight charges, insurance costs and all other expenses, taxes or duties payable in respect of the commodity are payable by buyer.|Loading &amp; Loading Pictures::Loading shall be made within 30-45 days after receiving advance &amp; loading pictures shall be emailed to the buyer.', 'Yes', 'CG/PO/2018/6298', '15/05/2018', 'DP', 'view-packing,proforma,invoice,coo,form9,nowar,beneficiary,test,exchangefirst,exchangesec,covering,ocean,agreement'),
(69, 7, 'PAB-B/.', 'MASHREQ BANK PSC', 20, 'Reference', '9:500:1:500', 500, 'Shipment By', 'CFR', '20 % Advance &amp; Balance 80% upon CAD', 'loading terms', 'Not Required', 'loading port', 'port of discharge', 'origin &amp; destination', 'finaldstination country', 'origin of goods', 'Complete set of Bill of Loading:2,Commercial Invoice:2,Packing List:2,Certificate Of Origin(Form A1):2,No War/ No Radiation Certificate:1+1', 'Delivery::Delivery time is not exact time, it is approximate only.|Quantity::Seller can deliver 10% more or less than the stated quantity in this contract.|Price::Unit Price is inclusive of all freight charges, insurance costs and all other expenses, taxes or duties payable in respect of the commodity are payable by buyer.|Loading &amp; Loading Pictures::Loading shall be made within 30-45 days after receiving advance &amp; loading pictures shall be emailed to the buyer.|Acceptance of Contract::If this Sales Contract has not been signed by the Buyer where indicated &amp; the Buyer continues to perform the Sales Contract with the seller, then the buyer will be deemed to have entered into this Sales Contract and accepted these terms', 'Yes', 'CG/PO/2018/6299', '29/05/2018', '-', '-'),
(70, 3, 'BOB-$b', 'Noor Bank, USD', 10, 'Reference', '13:600:1:600', 600, 'Shipment by', 'CFR', '20 % Advance &amp; Balance 80% upon CAD', 'loading terms', 'final destination', 'loading port', 'port of dis', 'final destination', 'country', 'goods', 'Complete set of Bill of Loading:2,Commercial Invoice:2,Packing List:2,Certificate Of Origin(Form A1):1+1', 'Delivery::Delivery time is not exact time, it is approximate only.|Quantity::Seller can deliver 10% more or less than the stated quantity in this contract.|Price::Unit Price is inclusive of all freight charges, insurance costs and all other expenses, taxes or duties payable in respect of the commodity are payable by buyer.|Loading &amp; Loading Pictures::Loading shall be made within 30-45 days after receiving advance &amp; loading pictures shall be emailed to the buyer.|Acceptance of Contract::If this Sales Contract has not been signed by the Buyer where indicated &amp; the Buyer continues to perform the Sales Contract with the seller, then the buyer will be deemed to have entered into this Sales Contract and accepted these terms', 'Yes', 'CG/PO/2018/6300', '29/05/2018', 'LC', 'view-packing,proforma,invoicelc,coo,form9,nowar,beneficiary,test,exchangefirstlc,exchangeseclc,coveringlc,ocean,agreement'),
(71, 6, 'THB-?', 'Bank of Baroda', 20, 'Ref', '9:600:1:600', 600, 'Shipment by', 'CFR', '100% Payment on Loading Pictures, Weight Slips on email.', 'loading terms', 'Not Required', 'loading port', 'port of diccharge', 'final desinatn', 'country', 'origin of goods', 'Complete set of Bill of Loading:2,Commercial Invoice:2,Packing List:,Certificate Of Origin(Form A1):2,No War/ No Radiation Certificate:1+1', 'Delivery::Delivery time is not exact time, it is approximate only.|Quantity::Seller can deliver 10% more or less than the stated quantity in this contract.|Price::Unit Price is inclusive of all freight charges, insurance costs and all other expenses, taxes or duties payable in respect of the commodity are payable by buyer.|Loading &amp; Loading Pictures::Loading shall be made within 30-45 days after receiving advance &amp; loading pictures shall be emailed to the buyer.|Acceptance of Contract::If this Sales Contract has not been signed by the Buyer where indicated &amp; the Buyer continues to perform the Sales Contract with the seller, then the buyer will be deemed to have entered into this Sales Contract and accepted these terms', 'Yes', 'CG/PO/2018/6301', '30/05/2018', 'DP', 'view-packing,proforma,invoice,coo,form9,nowar,beneficiary,test,exchangefirst,exchangesec'),
(72, 2, 'THB-?', 'MASHREQ BANK PJSC', 20, 'ref', '7:200:6:1200,:::', 0, 'by', 'CFR', '20 % Advance &amp; Balance 80% upon CAD', 'loading terms', 'PSI Required', 'loading port', 'Discharge', 'Final Destination', 'Final Destination Country', 'Origin of Goods', 'Complete set of Bill of Loading:1,Commercial Invoice:1,Packing List:1,Certificate Of Origin(Form A1):2+1', 'Delivery::Delivery time is not exact time, it is approximate only.|Quantity::Seller can deliver 10% more or less than the stated quantity in this contract.|Price::Unit Price is inclusive of all freight charges, insurance costs and all other expenses, taxes or duties payable in respect of the commodity are payable by buyer.|Loading &amp; Loading Pictures::Loading shall be made within 30-45 days after receiving advance &amp; loading pictures shall be emailed to the buyer.|Acceptance of Contract::If this Sales Contract has not been signed by the Buyer where indicated &amp; the Buyer continues to perform the Sales Contract with the seller, then the buyer will be deemed to have entered into this Sales Contract and accepted these terms', 'Yes', 'CG/PO/2018/6302', '30/05/2018', '-', '-'),
(73, 2, 'THB-?', 'MASHREQ BANK PJSC', 20, 'ref', '7:200:6:1200', 1200, 'by', 'CFR', '20 % Advance &amp; Balance 80% upon CAD', 'loading terms', 'PSI Required', 'loading port', 'Discharge', 'Final Destination', 'Final Destination Country', 'Origin of Goods', 'Complete set of Bill of Loading:1,Commercial Invoice:1,Packing List:1,Certificate Of Origin(Form A1):2+1', 'Delivery::Delivery time is not exact time, it is approximate only.|Quantity::Seller can deliver 10% more or less than the stated quantity in this contract.|Price::Unit Price is inclusive of all freight charges, insurance costs and all other expenses, taxes or duties payable in respect of the commodity are payable by buyer.|Loading &amp; Loading Pictures::Loading shall be made within 30-45 days after receiving advance &amp; loading pictures shall be emailed to the buyer.|Acceptance of Contract::If this Sales Contract has not been signed by the Buyer where indicated &amp; the Buyer continues to perform the Sales Contract with the seller, then the buyer will be deemed to have entered into this Sales Contract and accepted these terms', 'Yes', 'CG/PO/2018/6303', '30/05/2018', 'DP', 'view-packing,proforma,invoice,coo,form9,nowar,beneficiary,test,exchangefirst,exchangesec,covering,ocean,agreement'),
(74, 6, 'VEF-Bs', 'Bank of Baroda', 10, 'ref', '5:400:2:800', 800, 'shipment by', 'CFR', '20 % Advance &amp; Balance 80% upon CAD', 'loading terms', 'PSI Required', 'loading port', 'discharge oprt', 'destination', 'coutbry', 'origin of goods', 'Complete set of Bill of Loading:2,Commercial Invoice:2,Packing List:2,Certificate Of Origin(Form A1):2,No War/ No Radiation Certificate:2,Quality Certificate from the Seller:2,Weight Slips:1+1', 'Delivery::Delivery time is not exact time, it is approximate only.|Quantity::Seller can deliver 10% more or less than the stated quantity in this contract.|Price::Unit Price is inclusive of all freight charges, insurance costs and all other expenses, taxes or duties payable in respect of the commodity are payable by buyer.|Acceptance of Contract::If this Sales Contract has not been signed by the Buyer where indicated &amp; the Buyer continues to perform the Sales Contract with the seller, then the buyer will be deemed to have entered into this Sales Contract and accepted these terms', 'Yes', 'CG/PO/2018/6304', '30/05/2018', 'DP', 'view-packing,proforma,invoice,coo,form9,nowar,beneficiary,test,exchangefirst,exchangesec,covering,ocean,agreement'),
(75, 4, 'BOB-$b', 'MASHREQ BANK PSC', 10, 'Ref', '14:400:1:400', 400, 'shipment by', 'CFR', '10 % Advance &amp; Balance 90% on Loading Pictures, Weight Slips, Packing List &amp; OBL on email', 'loadig terms', 'PSI Required', 'loading port', 'port of discharge', 'final destinaton', 'couybtry', 'origin of goods', 'Complete set of Bill of Loading:2,Commercial Invoice:2,Packing List:2,Certificate Of Origin(Form A1):2,No War/ No Radiation Certificate:1+1', 'Delivery::Delivery time is not exact time, it is approximate only.|Quantity::Seller can deliver 10% more or less than the stated quantity in this contract.|Price::Unit Price is inclusive of all freight charges, insurance costs and all other expenses, taxes or duties payable in respect of the commodity are payable by buyer.|Loading &amp; Loading Pictures::Loading shall be made within 30-45 days after receiving advance &amp; loading pictures shall be emailed to the buyer.|Acceptance of Contract::If this Sales Contract has not been signed by the Buyer where indicated &amp; the Buyer continues to perform the Sales Contract with the seller, then the buyer will be deemed to have entered into this Sales Contract and accepted these terms', 'No', 'CG/PO/2018/6305', '30/05/2018', 'LC', 'view-packing,proforma,invoicelc,coo,form9,nowar,beneficiary,test,exchangefirstlc,exchangeseclc,coveringlc,ocean,agreement'),
(76, 5, 'BOB-$b', 'Bank of Baroda', 10, 'ef', '13:500:5:2500,7:600:4:2400', 4900, 'ship by', 'CFR', '20 % Advance &amp; Balance 80% upon CAD', 'loading terms', 'PSI Required', 'loading port', 'discharge', 'final destination', 'coubtry', 'origin of goods', 'Complete set of Bill of Loading:2,Commercial Invoice:2,Packing List:2,Certificate Of Origin(Form A1):2,No War/ No Radiation Certificate:1+1', 'Delivery::Delivery time is not exact time, it is approximate only.|Quantity::Seller can deliver 10% more or less than the stated quantity in this contract.|Price::Unit Price is inclusive of all freight charges, insurance costs and all other expenses, taxes or duties payable in respect of the commodity are payable by buyer.|Loading &amp; Loading Pictures::Loading shall be made within 30-45 days after receiving advance &amp; loading pictures shall be emailed to the buyer.|Acceptance of Contract::If this Sales Contract has not been signed by the Buyer where indicated &amp; the Buyer continues to perform the Sales Contract with the seller, then the buyer will be deemed to have entered into this Sales Contract and accepted these terms', 'No', 'CG/PO/2018/6306', '30/05/2018', 'LC', 'view-packing,proforma,invoicelc,coo,form9,nowar,beneficiary,test,exchangefirstlc,exchangeseclc,coveringlc,ocean,agreement');

-- --------------------------------------------------------

--
-- Table structure for table `salesterms`
--

CREATE TABLE `salesterms` (
  `stid` int(11) NOT NULL,
  `sthead` text NOT NULL,
  `stdesc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salesterms`
--

INSERT INTO `salesterms` (`stid`, `sthead`, `stdesc`) VALUES
(1, 'Delivery', 'Delivery time is not exact time, it is approximate only.'),
(2, 'Quantity', 'Seller can deliver 10% more or less than the stated quantity in this contract.'),
(3, 'Price', 'Unit Price is inclusive of all freight charges, insurance costs and all other expenses, taxes or duties payable in respect of the commodity are payable by buyer.'),
(4, 'Loading &amp; Loading Pictures', 'Loading shall be made within 30-45 days after receiving advance &amp; loading pictures shall be emailed to the buyer.'),
(5, 'Acceptance of Contract', 'If this Sales Contract has not been signed by the Buyer where indicated &amp; the Buyer continues to perform the Sales Contract with the seller, then the buyer will be deemed to have entered into this Sales Contract and accepted these terms');

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `sid` int(11) NOT NULL,
  `cname` varchar(100) NOT NULL,
  `compname` varchar(200) NOT NULL,
  `ctype` varchar(100) NOT NULL,
  `cemail` varchar(100) NOT NULL,
  `cphone` varchar(20) NOT NULL,
  `cmobile` varchar(20) NOT NULL,
  `cfax` varchar(50) NOT NULL,
  `cwebsite` varchar(50) NOT NULL,
  `cstreet` text NOT NULL,
  `ccity` varchar(50) NOT NULL,
  `cstate` varchar(50) NOT NULL,
  `czip` varchar(20) NOT NULL,
  `ccountry` varchar(100) NOT NULL,
  `IECCode` varchar(50) NOT NULL,
  `gst` varchar(50) NOT NULL,
  `acname` varchar(100) NOT NULL,
  `bankname` varchar(100) NOT NULL,
  `accnum` varchar(50) NOT NULL,
  `swiftnum` varchar(50) NOT NULL,
  `bankaddress` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`sid`, `cname`, `compname`, `ctype`, `cemail`, `cphone`, `cmobile`, `cfax`, `cwebsite`, `cstreet`, `ccity`, `cstate`, `czip`, `ccountry`, `IECCode`, `gst`, `acname`, `bankname`, `accnum`, `swiftnum`, `bankaddress`) VALUES
(1, 'JINDAL STAINLESS LIMITED (ASHOK BHARDWAJ)', 'JINDAL STAINLESS LIMITED', 'End User', 'ashok.bhardwaj@jindalstainless.com', '', '9991450319', '', 'http://www.jindalstainless.com/', 'KALINGA NAGAR INDUSTRIAL COMPLEX, JAJPUR ODISHA, INDIA-755026 ;', 'JAJPUR', 'ODISHA', '755026', 'INDIA', '058808514', '21AABCJ1969M1ZF', '', 'test1', '85247', '95159', 'test add1'),
(2, 'JINDAL STAINLESS LIMITED (SUKANTA KUMAR BEHRA)', 'JINDAL STAINLESS LIMITED', 'End User', 'sk.behera@jindalstainless.com', '+91 11 61462430', '8826333771', '', 'http://www.jindalstainless.com/', 'KALINGANAGAR INDUSTRIAL COMPLEX, JAJPUR ODISHA, INDIA-755026 ; GSTIN: 21AABCJ1969M1ZF ;IEC: 058808514', 'JAJPUR', 'ODISHA', '755026', 'INDIA', '', '', '', 'test2', '85247', '85247', 'test add2'),
(3, 'LAXCON STEELS LTD (DEVI DAYAL GOYAL)', 'LAXCON STEELS LTD', 'End User', 'info@gopalgroup.com', '+91 79 40007600', '9312017822', '+91 79 40007666', 'http://gopalgroup.com/', 'Plot No. 235, Sarkhej - Bavla N.H. No. 8-A,Â Â  Village Sari, Taluka Sanand,Â  Distt. Ahmedabad, Gujarat - 382220 (India)', 'AHMEDABAD', 'GUJARAT', '382220', 'INDIA', '0800002881', '', '', 'test3', '852369', '852147', 'test add3'),
(4, 'LAXCON STEELS LTD (GOPAL GUPTA)', 'LAXCON STEELS LTD', 'End User', 'info@gopalgroup.com', '+91 79 40007600', '981005255', '+91 79 40007666', 'http://gopalgroup.com/', 'Plot No. 235, Sarkhej â€“ Bavla N.H. No. 8-A,Â Â  Village Sari, Taluka Sanand,Â  Distt. Ahmedabad, Gujarat â€“ 382220 (India);', 'AHMEDABAD', 'GUJARAT', '382220', 'INDIA', '0800002881', '', '', 'test4', '85247', 'gfgfgfgf', ' test add4'),
(5, 'VIRAJ PROFILES LTD (LALIT THAKWANI)', 'VIRAJ PROFILES LTD', 'End User', 'safedsach22@gmail.com', '', '9714299921', '', 'http://www.viraj.com/', 'G-2, MIDC TARAPUR INDUSTRIAL AREA, TARAPUR', 'MUMBAI', 'MAHARASHTRA', '401506', 'INDIA', '', '', '', 'test5', '4565656', '5656565', 'test add5'),
(6, 'ARYAN STAINLESS PVT LTD (LALIT THAKWANI)', 'ARYAN STAINLESS PVT LTD', 'End User', 'safedsach22@gmail.com', '', '9714299921', '', '', '307, NEELGAGAN PLAZA, OPP, POLICE COMMISSIONER OFFICE, SHAHIBAUG, AHMEDABAD, GUJARAT, INDIA-380004 , IEC:- 0816502684', 'AHMEDABAD', 'GUJARAT', '380004', 'INDIA', '', '', '', 'test6', '545454', '5454545', 'test add6'),
(7, 'VIRAT ALLOYS PVT LTD(LALIT THAKWANI)', 'VIRAT ALLOYS PVT LTD', 'End User', 'safedsach22@gmail.com', '', '9714299921', '', 'http://www.viratalloys.com/', '127/3- CHHATRAL-KADI ROAD,NEAR GOPAL WEIGHBRIDGE,AT-DHANOT,TA-KALOL,DIST-GANDHINAGAR-382729.GUJARAT.INDIA.', 'GANDHINAGAR', 'GUJARAT', '382729', 'INDIA', '', '', '', 'test7', '5454545', '5454545', 'test add7'),
(8, 'VARDHMAN FERRO ALLOYS (LALIT THAKWANI)', 'VARDHMAN FERRO ALLOYS', 'End User', 'safedsach22@gmail.com', '', '9714299921', '', 'www.vardhmanferroalloys.com/', 'SHRI MUNI SURAT COMPLEX, BLDG NO.L GODOWN NO.L 1, REHNAL VILLAGE, REHNAL, BHIWANDI 420302, MAHARASHTRA; IEC: 0308039441', 'BHIWANDI', 'MAHARASHTRA', '420302', 'INDIA', '', '', '', 'test 8', '6567676', '6676767', 'test add8'),
(9, 'SATYAM IMPEX (LALIT THAKWANI)', 'SATYAM IMPEX', 'End User', 'safedsach22@gmail.com', '', '9714299921', '', '', 'SHOP NO. 7 , LEHRI BLDG, 5TH KHETWADI , MAIN ROAD, SVP ROAD, MUMBAI 4, PAN ABIFS2153F, GST: 27ABIFS2153F1Z8; IEC: 0307066282', 'MUMBAI', 'MAHARASHTRA', '400004', 'INDIA', '', '', '', 'test9', '852147', '545454', 'test add10'),
(10, 'PRATIK DHOLAKIA', 'GYSCOAL ALLOYS LIMITED', 'End User', 'scrap.stainlesssteel@gmail.com', '+91 79 666145608', '9925196235', '+91 79 26579387', 'www.gyscoal.com/', '2ND FLOOR, MRUDUL TOWER, B/H TIMES OF INDIA,ASHRAM ROAD, AHMEDABAD â€“ 380009, GUJARAT, INDIA; IEC: 0804011877', 'AHMEDABAD', 'GUJARAT', '380009', 'INDIA', '', '', '', 'test10', '65656', '656565', 'test add11'),
(11, 'ASHUTOSH METAL PVT LTD (RAMESH RATHOD)', 'ASHUTOSH METAL PVT LTD', 'End User', 'kevalamenterprises@gmail.com', '', '9974267638', '', '', '255, MAHAGUJARAT IND ESTATE, MORAIYA, SANAND, CHANGODAR, AHMEDABAD-382213, GUJARAT, INDIA; IEC: 0802010857', 'AHMEDABAD', 'GUJARAT', '382213', 'INDIA', '', '', '', 'test 12', '8512144', '852546', 'test add12'),
(12, 'SNB METAL & ALLOYS (RAMESH RATHOD)', 'SNB METAL & ALLOYS', 'End User', 'kevalamenterprises@gmail.com', '', '9974267638', '', '', 'PLOT NO.112, PHASE-1, GIDC , CHHATHAL-382729, TALUKA KALOL, (NORTH GUJARAT), DISTRICT - GANDHINAGAR, GUJARAT, INDIA. ;IEC: 0816913633', 'GANDHINAGAR', 'GUJARAT', '382729', 'INDIA', '', '', '', 'test13', '56565', '65656', 'test add13'),
(14, 'CENTURY METAL RECYCLING (DEEPAK GARG)', 'CENTURY METAL RECYCLING', 'End User', 'deepak.g@century.in', '', '9818886123', '', 'www.cmr.co.in', 'CENTURY METAL RECYCLING PRIVATE LTD VILLAGE: TATARPUR, DISTT: PALWAL, 121102 (HARYANA), INDIA, IEC: 0504077562', 'FARIDABAD', 'HARYANA', '121102', 'INDIA', '', '', '', 'test 14', '656565', '656565', 'test add14'),
(15, 'VARDHMAN SALES AGENCY (VIPIN KUMAR JAIN)', 'VARDHMAN SALES AGENCY', 'Trader', 'vsaimp@gmail.com', '', '9911300888', '', '', '14/1 MILESTONE, MAIN MATHURA ROAD, FARIDABAD, HARYANA-121003, INDIA; IEC : 0593013581', 'FARIDABAD', 'HARYANA', '121003', 'INDIA', '', '', '', 'test 15', '5454545', '454545', 'test add15'),
(16, 'PG INTERNATIONAL (ANKUR GARG)', 'PG INTERNATIONAL', 'Trader', 'ankurkumar51@yahoo.co.in', '', '9971171898', '', '', '259, RAJDHANI ENCLAVE, PITAMPURA, DELHI-110034; IEC:0503041955', 'DELHI', 'DELHI', '110034', 'INDIA', '', '', '', 'test 16', '65656', '656565', 'test add16'),
(18, 'GUARDIAN CASTINGS PVT LTD (MAHESH MIRANI)', 'GUARDIAN CASTINGS PVT LTD', 'End User', 'imports@guardiancastings.com', '', '', '', '', 'GATH NO.92-1/115P/116/120/57P, VILLAGE ABITGAR TALUKA WADA, DISTRICT PALGHAR 401404, MAHARASHTRA, INDIA, GSTIN: 27AACCG1913H1ZW; IEC: 0305019279', 'THANE', 'MAHARASHTRA', '401404', 'INDIA', '', '', '', 'test 17', '852147', '659745', 'test add17'),
(19, 'SHAMLI STEELS PVT LTD (ABHINAV BANSAL)', 'SHAMLI STEELS PVT LTD', 'End User', 'shamlisteels@jaibharatsteel.com', '', '9319437664', '', '', 'INDUSTRIAL AREA, PANIPAT ROAD,  SHAMLI-247776, U.P INDIA; IEC : 0515044814', 'SHAMLI', 'UTTAR PRADESH', '247776', 'INDIA', '', '', '', 'test 18', '8451', '4656544546', 'test add18'),
(21, 'test new', 'comp', '', 'new@fdfdfdfdf.fdfd', '525636363', '5263635252', '4152', 'web.com', 'c street', 'city', 'state', '5252525252', 'country', '', '', '4141414152', 'bank aame', '5241524152', '5241525241', 'test'),
(22, 'new', 'new comp', 'Trader', 'new@new.new', '5555555555', '9999999999', '111111111', 'new.com', 'street new', 'new city', 'new state', '4141414141', 'test cpintry', '', '', '5252525252', 'bank name', '5656565656', '4848484848', 'test addr');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `tid` int(11) NOT NULL,
  `tname` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`tid`, `tname`) VALUES
(1, '20 % Advance & Balance 80% upon CAD'),
(2, '10 % Advance & Balance 90% upon CAD'),
(3, '20 % Advance & Balance 80% on Loading Pictures, Weight Slips, Packing List & OBL on email'),
(4, '10 % Advance & Balance 90% on Loading Pictures, Weight Slips, Packing List & OBL on email'),
(5, '100% Payment on Loading Pictures, Weight Slips & OBL on email'),
(6, '100% Payment on Loading Pictures, Weight Slips on email.'),
(7, '100 % Irrevocable Sight LC'),
(8, '100% Usance LC'),
(9, '90 Days Usance LC'),
(10, '180 Days Usance LC'),
(11, 'new trem'),
(12, 'next rerms'),
(13, 'dsd'),
(14, 'fdfd'),
(15, 'dds'),
(16, 'dds'),
(17, 'ddsdsd'),
(18, 'dfdfddsd'),
(19, 'fdfd'),
(28, 'new trems'),
(29, 'new term');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `userphone` varchar(50) NOT NULL,
  `useremail` varchar(50) NOT NULL,
  `userpass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `username`, `userphone`, `useremail`, `userpass`) VALUES
(23, 'test', '2525252525', 'test@test.com', '7aa2990b0a9931b4f9a4b92c5081e011'),
(24, 'test \' fdfdfg', '7474747474', 'test@test.com1', '827ccb0eea8a706c4c34a16891f84e7b'),
(25, 'tarun', '8585858585', 'tarun@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `cid` int(11) NOT NULL,
  `cname` varchar(100) NOT NULL,
  `compname` varchar(200) NOT NULL,
  `ctype` varchar(100) NOT NULL,
  `cemail` varchar(100) NOT NULL,
  `cphone` varchar(20) NOT NULL,
  `cmobile` varchar(20) NOT NULL,
  `cfax` varchar(50) NOT NULL,
  `cwebsite` varchar(50) NOT NULL,
  `cstreet` text NOT NULL,
  `ccity` varchar(50) NOT NULL,
  `cstate` varchar(50) NOT NULL,
  `czip` varchar(20) NOT NULL,
  `ccountry` varchar(100) NOT NULL,
  `acname` varchar(100) NOT NULL,
  `bankname` varchar(100) NOT NULL,
  `accnum` varchar(50) NOT NULL,
  `swiftnum` varchar(50) NOT NULL,
  `bankaddress` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`cid`, `cname`, `compname`, `ctype`, `cemail`, `cphone`, `cmobile`, `cfax`, `cwebsite`, `cstreet`, `ccity`, `cstate`, `czip`, `ccountry`, `acname`, `bankname`, `accnum`, `swiftnum`, `bankaddress`) VALUES
(39, 'MANHARI INTERNATIONAL ( Mr. MADDY)', 'MANHARI INTERNATIONAL PTY LTD', 'Yard/  Supplier', 'info@manharimetals.com.au', '03 9364 0595', '61 403708311', '61 3 9310 7430', 'www.manharimetals.com.au', '26-30 BALDWIN AVENUE Sunshine North 3020', '', '', '3020', 'Australia', '', '', '', '', ''),
(40, 'NN EST METALS ( Mr. Nidal Nasser)', 'NN EST METALS CO SAL', 'Yard/  Supplier', 'info@nnestmetals.com', '961 5471 222', '961 3893 313', '961 5471 333', 'www.nnestmetals.com', 'Off Shore, P.O.Box: 40264 Baabda, Lebanon', 'BAABDA', '', '40264', 'LEBANON / AFRICA', '', '', '', '', ''),
(41, 'SIMS METAL MANAGEMENT ( Mr. Ujjal Nandi)', 'SIMS METAL MANAGEMENT', 'Yard/  Supplier', 'Ujjal.Nandi@simsmm.com', '852 36579004', '852 65337263', '852 36579098', 'www.simsmm.com', 'Room 1709-11 17/F Chubb Tower, Windsor House 311 Gloucester Road, Causeway Bay, HK', 'CAUSEWAY BAY', '', '', 'HONG KONG', '', '', '', '', ''),
(42, 'AMERICAN COMMODITIES TRADING( Mr. Rajesh Verma)', 'AMERICAN COMMODITIES TRADING INC', 'Trader/  Supplier', 'actincus@gmail.com , rajesh@actincusa.com', '1 617 838 3693', '1 617 838 3693', '', '', '8108 Old Hixon Road, Suite 103, Tampa, FL 33626', 'TAMPA', 'FLORIDA', '33626', 'USA', '', '', '', '', ''),
(43, 'CAST METAL INDONESIA ( Mr. Fila Loa)', 'CAST METAL INDONESIA', 'Yard/  Supplier', 'filaloa@castmetalsindonesia.com', '62-21-5555592', '62 811181886', '62 21 55958957', 'http://www.castmetalsindonesia.com/', 'Komplek Pantai Indah Dadap, Jalan Raya Perancis No.2, Blok BG 17 Tangerang â€“ Banten 15211 Indonesia', 'JAKARTA', '', '15211', 'INDONESIA', '', '', '', '', ''),
(44, 'KARINA LOGAM ( Mr. Yulius Randy)', 'KARINA LOGAM', 'Yard/  Supplier', 'yulius_randy@yahoo.com', '021-5595-5902/5894;', '62 87777888740', '', 'www.karinalogam.com', 'Jl. Menceng Raya No.10 Kalideres, Jakarta Barat 11820-Indonesia', 'JAKARTA', '', '11820', 'INDONESIA', 'KARINA LOGAM PT', 'BANK MEGA', '010212011000271', 'MEGAIDJA', 'KC PLUIT JAKARTA BARAT'),
(45, 'Pt. Menembus Batas (Mr. Jai Kumar)', 'PT.MENEMBUS BATAS', 'Yard/  Supplier', 'jai_kumar888@yahoo.com', '(62-21) 54376495, 54', '(62-21) 54376495', '', '', 'Jl. Husain Sastranegara No 100 Benda-Tangerang, Banten 15125 Indonesia', 'JAKARTA', '', '15125', 'INDONESIA', '', '', '', '', ''),
(46, 'Affluent Options ( Mr. Ashwani Sood)', 'AFFLUENT OPTIONS', 'Yard/  Supplier', 'ashu@intnet.mu', '(230) 464 5614/464 4', '(230) 464 5614/464 4', '', '', '78B, EMERALD PARK, TRIANON, QUATRE-BORNES, MAURITIUS', 'QUATRE BORNES', '', '72249', 'MAURITIUS', 'AFFLUENT OPTIONS LTD', 'AFRASIA BANK LIMITED', '001500300086020', 'AFBLMUMU', 'BOWEN SQUARE,   10 DR FERRIERE STREET, PORT LOUIS, MAURITIUS'),
(48, 'LALIT THAKWANI', 'LALIT THAKWANI', 'Indentor/Commission Agent', 'safedsach22@gmail.com', 'N/A', '91 9714299921', '', '', '', '', 'MUMBAI', '', 'INDIA', '', '', '', '', ''),
(49, 'RAMESH RATHOD', 'RAMESH RATHOD', 'Indentor/Commission Agent', 'kevalamenterprises@gmail.com', 'N/A', '91 9974267638', '', '', '', '', 'GUJARAT', '', 'INDIA', '', '', '', '', ''),
(50, 'PRATIK DHOLAKIA', 'PRATIK DHOLAKIA', 'Indentor/Commission Agent', 'scrap.stainlesssteel@gmail.com', 'N/A', '91 9925196235', '', '', '', '', 'GUJARAT', '', 'INDIA', '', '', '', '', ''),
(52, 'SANJAY JENA', 'MODERN FREIGHTS SERVICES PVT LTD', 'FREIGHT FORWARDER', 'skmodernfreights@gmail.com ,  sk@modernfreights.com', '5165159500', '91 7504822791', '', 'http://modernfreights.com/', '2010 SECOND FLOOR,TWIN CITY TOWER, PAHAL,BHUBANESHWAR-752101', '', 'KOLKATA', '752101', 'INDIA', '', '', '', '', ''),
(53, 'PRIYANKA DUTTA', 'PRIVA LOGISTICS INC', 'FREIGHT FORWARDER', 'priyanka@privalogistics.com', '', '3476086465', '', '', '183 S. BROADWAY SUITE 212, HICKSVILLE, NEWYORK , 1180', '', '', '', 'USA', '', '', '', '', ''),
(55, 'MSC', 'MSC', 'SHIPPING LINE', 'rosalie.tayupan@msc.com , niketa.douyere@msc.com', '97143524888', '97143025546', '97143524488', 'www.msc.com', 'P O Box: 50439, Dubai, UAE', 'Dubai', '', '50439', 'UAE', '', '', '', '', ''),
(56, 'MAERSK', 'MAERSK', 'SHIPPING LINE', 'ae.import@maersk.com', '+971 4 332 6200', '', '', 'www.maerskline.com', 'Al Moosa Tower 2 - Sheikh Zayed Rd - Dubai - United Arab Emirates', 'Dubai', '', '', 'UAE', '', '', '', '', ''),
(57, 'HAPAG LLOYD', 'HAPAG LLOYD', 'SHIPPING LINE', 'DOC.USSE@CSD.HLAG.COM', '971-4-204 1300', '971-4-204 1300', '', 'www.hapag-lloyd.com', 'City Avenue Building, Al Garhoud Road, Deira Dubai, U.A.E.', '', '', '', 'UAE', '', '', '', '', ''),
(58, 'test', 'test', 'Indentor/Commission Agent', 'test@dfd.dfd', '5252525252', '5252525252', 'testtest', 'test', 'testfdf', 'test', 'test', 'test', 'test', '', '', '', '', ''),
(59, 'test', 'test', 'Trader/  Supplier', 'fdfdf@ffd.dgfg', '6565656565', '6565656565', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test2', 'test2', 'hghg', 'test2', 'test2test'),
(60, 'test name', 'test cmomau', 'Indentor/Commission Agent', '8585858585', 'test@gmai.com', '4141414141', '5252524141', 'test.com', 'tes street', 'test city', 'test sate', 'tea4152528962', '5esdt cuntry', 'tea4152525a', 'test bank', '415263968574', '41526398745', 'test adddress');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`nid`);

--
-- Indexes for table `packing`
--
ALTER TABLE `packing`
  ADD PRIMARY KEY (`packid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `salesterms`
--
ALTER TABLE `salesterms`
  ADD PRIMARY KEY (`stid`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`cid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `packing`
--
ALTER TABLE `packing`
  MODIFY `packid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `sale`
--
ALTER TABLE `sale`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `salesterms`
--
ALTER TABLE `salesterms`
  MODIFY `stid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
