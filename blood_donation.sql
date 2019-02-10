-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 11, 2018 at 01:12 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blood_donation`
--

-- --------------------------------------------------------

--
-- Table structure for table `bbblood_types`
--

DROP TABLE IF EXISTS `bbblood_types`;
CREATE TABLE IF NOT EXISTS `bbblood_types` (
  `bid` varchar(5) DEFAULT NULL,
  `a_plus` int(1) DEFAULT NULL,
  `a_neg` int(1) DEFAULT NULL,
  `b_plus` int(1) DEFAULT NULL,
  `b_neg` int(1) DEFAULT NULL,
  `ab_plus` int(1) DEFAULT NULL,
  `ab_neg` int(1) DEFAULT NULL,
  `o_plus` int(1) DEFAULT NULL,
  `o_neg` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bbblood_types`
--

INSERT INTO `bbblood_types` (`bid`, `a_plus`, `a_neg`, `b_plus`, `b_neg`, `ab_plus`, `ab_neg`, `o_plus`, `o_neg`) VALUES
('bb001', 1, 0, 0, 1, 1, 1, 1, 1),
('bb002', 1, 1, 1, 1, 1, 0, 1, 0),
('bb003', 1, 1, 1, 1, 0, 1, 1, 0),
('bb004', 1, 1, 1, 1, 1, 1, 1, 1),
('bb005', 0, 1, 1, 1, 1, 1, 0, 1),
('bb006', 1, 0, 1, 1, 1, 1, 0, 1),
('bb007', 0, 1, 0, 1, 0, 1, 1, 1),
('bb008', 0, 0, 1, 1, 0, 1, 1, 1),
('bb009', 1, 1, 1, 1, 0, 0, 0, 1),
('bb010', 1, 1, 1, 1, 0, 0, 1, 0),
('bb011', 1, 1, 1, 1, 1, 0, 0, 0),
('bb012', 1, 1, 0, 1, 1, 0, 1, 0),
('bb013', 1, 1, 0, 1, 0, 0, 0, 1),
('bb014', 0, 1, 0, 1, 1, 1, 0, 0),
('bb015', 1, 1, 1, 1, 1, 1, 0, 0),
('bb016', 1, 1, 1, 1, 1, 1, 0, 0),
('bb017', 0, 0, 1, 1, 1, 1, 1, 1),
('bb018', 1, 0, 1, 1, 1, 1, 1, 1),
('bb019', 1, 0, 1, 1, 1, 1, 1, 1),
('bb020', 0, 1, 1, 1, 0, 1, 1, 1),
('bb021', 1, 1, 0, 1, 0, 1, 0, 1),
('bb022', 1, 1, 0, 1, 0, 1, 1, 1),
('bb023', 1, 1, 0, 1, 0, 0, 1, 1),
('bb024', 0, 1, 1, 1, 1, 1, 0, 1),
('bb025', 1, 0, 1, 1, 1, 1, 1, 1),
('bb026', 0, 0, 1, 1, 0, 1, 1, 1),
('bb027', 1, 0, 1, 1, 1, 0, 0, 0),
('bb028', 0, 1, 0, 1, 1, 1, 1, 0),
('bb029', 1, 1, 1, 1, 0, 1, 0, 0),
('bb030', 1, 1, 1, 1, 0, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `blood_bank`
--

DROP TABLE IF EXISTS `blood_bank`;
CREATE TABLE IF NOT EXISTS `blood_bank` (
  `bid` varchar(10) NOT NULL,
  `BNAME` varchar(45) DEFAULT NULL,
  `ADDRESS` varchar(135) DEFAULT NULL,
  `PHONE` varchar(13) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blood_bank`
--

INSERT INTO `blood_bank` (`bid`, `BNAME`, `ADDRESS`, `PHONE`) VALUES
('bb001', 'My Blood Bank', '5th Phase, J P Nagar Phase 5, JP Nagar, Bengaluru, Karnataka 560078', '090667 05533'),
('bb002', 'Life Care Blood Bank', 'Shop No. 129, Opposite 4th Block Police Station, 7th Main, New Diagonal Rd, Jayanagar 4th Block, Jayanagar, Bengaluru, Karnataka 560011', '081235 33773'),
('bb003', 'Jayanagar Voluntary Blood Bank', 'No.17/18A, Phase II, JP Nagar, Bengaluru, Karnataka 560078', '080 2649 4748'),
('bb004', 'Naveen Blood Bank', 'SR Krishnappa Garden, Hombegowda Nagar, Bengaluru, Karnataka 560029', '084978 68388'),
('bb005', 'Rashtrotthana Blood Bank', 'Bull Temple Road, Vinayaka Extension, Raghavendra Colony, Kempegowda Nagar, Bengaluru, Karnataka 560018', '080 2660 8870'),
('bb006', 'Minerva Blood Bank', 'Vishweshwarapura, Sudhama Nagar, Bengaluru, Karnataka 560004', ''),
('bb007', 'Jeeva Voluntary Blood Bank & Diagnostics', '6, 2nd Main, Near-Pavana Enterprises, New Tharagupet, Bengaluru, Karnataka 560002', '080 2670 7755'),
('bb008', 'Precicous Blood Missionories', '260, 5, 4, 1, Koramangala, Koramangala, Bengaluru, Karnataka 560034', '080 2553 0697'),
('bb009', 'S K Voluntary Blood Bank', '14/1, 1st Floor, Mesa Complex, Old Toll Gate Bus Stop, Magadi Main Road, Bengaluru, Karnataka 560023', '080 2310 3524'),
('bb010', 'Dr Rajkumar (appaji) blood bank', 'near corporation circle krishi bhavan 2 nd floor opposite hudson circle church', '080 2210 8108'),
('bb011', 'Dr. B Shivaji Rao\'s Blood Bank', 'No 26, 3rd Floor, S.G.R.R. Complex, 1st Cross, Rajaram Mohan Roy Road, Corporation Circle, Bengaluru, Karnataka 560027', '093437 73931'),
('bb012', 'Vijayanagar Hospital Blood Bank', '427, 17th Cross, M C Road, Vijayanagar, Bengaluru, Karnataka 560040', '080 2335 8800'),
('bb013', 'Indian Red Cross Society', '26, 1st Floor, Red Cross Bhavan, Racecourse Road, Madhava Nagar, Bengaluru, Karnataka 560001', '080 2226 8435'),
('bb014', 'Lions Blood Bank', 'Jain Hospital, Millers Road, Vasanth Nagar, Vasanth Nagar, Bengaluru, Karnataka 560052', '080 2226 6807'),
('bb015', 'Bangalore Blood Bank', 'No. 141, 3rd Floor, Komarla Plaza, 8th Cross, 3rd Main, Margosa Road, Malleswaram, Bengaluru, Karnataka 560003', '080 2334 7714'),
('bb016', 'Navarang Blood Bank', 'Mahakavi Kuvempu Rd, 2nd Stage, Gayatrinagar, Rajaji Nagar, Bengaluru, Karnataka 560010', '080 2352 1233'),
('bb017', 'Bangalore Medical Services Trust', 'New Thippasandra Main Road, HAL 3rd Stage, New Thippasandra, Beside Thippasandra Post Office, Bengaluru, Karnataka 560075', '080 2528 4504'),
('bb018', 'Akshaya Voluntary Blood Bank', '968, 41st Cross Rd, 3rd Block, Rajaji Nagar, Bengaluru, Karnataka 560010', '080 2314 7303'),
('bb019', 'Blood Bank', 'No. 133/134, Near-Alice Jewellery, Shivaji Nagar, Bengaluru, Karnataka 560001', '098458 54991'),
('bb020', 'Rotary TTK Blood Bank', 'Kempanna Layout, DN Ramaiah Layout, Guttahalli, Bengaluru, Karnataka 560020', ''),
('bb021', 'swamy vivekananda voluntary bloodbank', 'Corporation circle, Rajaram Mohan Roy Road, Sampangi Rama Nagar, Bengaluru, Karnataka 560027', '093437 73931'),
('bb022', 'State Chemicals Laboratory Blood Bank Limited', '3, Cmhrd, Indiranagar, Indiranagar, Bengaluru, Karnataka 560038', '080 2525 2189'),
('bb023', 'Grace Blood Bank', '36/1, 1st Floor, Munivenkatappa Complex, Dena Bank Colony, Bellary Main Road, Ganga Nagar, Bengaluru, Karnataka 560032', '097403 30720'),
('bb024', 'Kempegowda Medical Service Trust', '1082/9, 3rd Floor, Srinivasa Prasanna Complex, Triveni Road, Yeshwanthpur, Bengaluru, Karnataka 560022', '097313 85742'),
('bb025', 'Blood Bank - Sudhama Nagar', '# 156, Subbaiah Circle, Lal Bagh Main Rd, Srinivas Colony, Sudhama Nagar, Bengaluru, Karnataka 560027', ''),
('bb026', 'Bangalore Lions Service Trust', '18, Millers Road, Vasanth Nagar, Millers Road, Bengaluru, Karnataka 560052', '080 2226 6807'),
('bb027', 'Ocean Blood Bank', '133/134, Iind Floor, Hkp Road, Shivaji Nagar, Bengaluru, Karnataka 560051', ''),
('bb028', 'Precious Blood Missionaries', 'St Gaspar Bhavan PB NO 2905 Balajinagar Dharmaram College PO Near Christ School (ICSE), Bengaluru, Karnataka 560029', '080 2668 4721'),
('bb029', 'Apollo Hospitals Blood Bank', '154/11, Opp IIM, Bannerghatta Main Rd, Bengaluru, Karnataka 560076', '080 2630 4050'),
('bb030', 'Narayana Hrudayalaya Blood Bank', '258/A, Hosur Rd, Bommasandra Industrial Area, Bengaluru, Karnataka 560099', '08071 222 222');

-- --------------------------------------------------------

--
-- Table structure for table `blood_types`
--

DROP TABLE IF EXISTS `blood_types`;
CREATE TABLE IF NOT EXISTS `blood_types` (
  `hid` varchar(10) DEFAULT NULL,
  `a_plus` int(1) DEFAULT NULL,
  `a_neg` int(1) DEFAULT NULL,
  `b_plus` int(1) DEFAULT NULL,
  `b_neg` int(1) DEFAULT NULL,
  `ab_plus` int(1) DEFAULT NULL,
  `ab_neg` int(1) DEFAULT NULL,
  `o_plus` int(1) DEFAULT NULL,
  `o_neg` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blood_types`
--

INSERT INTO `blood_types` (`hid`, `a_plus`, `a_neg`, `b_plus`, `b_neg`, `ab_plus`, `ab_neg`, `o_plus`, `o_neg`) VALUES
('hospital1', 1, 0, 1, 1, 0, 1, 1, 1),
('hospital2', 1, 1, 1, 1, 1, 1, 1, 0),
('hospital3', 1, 1, 0, 1, 1, 0, 1, 1),
('hospital4', 0, 1, 0, 1, 1, 0, 1, 1),
('hospital5', 1, 1, 1, 1, 0, 0, 1, 1),
('hospital6', 0, 1, 1, 1, 0, 0, 1, 1),
('hospital7', 1, 1, 0, 1, 1, 1, 1, 1),
('hospital8', 0, 1, 1, 1, 1, 1, 1, 0),
('hospital9', 0, 1, 0, 1, 1, 1, 0, 0),
('hospital10', 1, 1, 1, 1, 0, 0, 0, 0),
('hospital11', 1, 0, 1, 0, 1, 0, 0, 0),
('hospital12', 1, 0, 1, 0, 1, 1, 1, 1),
('hospital13', 1, 0, 0, 0, 1, 1, 1, 1),
('hospital14', 1, 0, 1, 0, 1, 1, 0, 1),
('hospital15', 0, 0, 0, 0, 1, 1, 1, 1),
('hospital16', 0, 1, 1, 0, 1, 1, 0, 0),
('hospital17', 0, 1, 1, 1, 0, 1, 1, 0),
('hospital18', 1, 1, 0, 0, 1, 1, 0, 1),
('hospital19', 1, 1, 0, 1, 1, 1, 1, 1),
('hospital20', 1, 1, 0, 0, 1, 1, 1, 0),
('hospital21', 1, 0, 1, 1, 1, 1, 1, 1),
('hospital22', 1, 1, 1, 0, 1, 1, 1, 1),
('hospital23', 0, 0, 0, 1, 0, 0, 1, 0),
('hospital24', 1, 1, 1, 1, 1, 0, 0, 1),
('hospital25', 0, 0, 0, 1, 0, 0, 0, 0),
('hospital26', 1, 1, 1, 0, 0, 0, 0, 1),
('hospital27', 1, 0, 1, 1, 0, 0, 1, 0),
('hospital28', 0, 0, 1, 0, 1, 1, 1, 1),
('hospital29', 0, 0, 0, 1, 1, 1, 1, 1),
('hospital30', 0, 1, 1, 0, 1, 1, 0, 1),
('hospital31', 1, 1, 1, 1, 0, 1, 1, 1),
('hospital32', 1, 0, 1, 0, 1, 1, 0, 1),
('hospital33', 1, 1, 0, 1, 1, 1, 1, 0),
('hospital34', 1, 1, 0, 1, 0, 1, 0, 1),
('hospital35', 1, 1, 1, 1, 0, 0, 1, 1),
('hospital36', 1, 1, 0, 1, 1, 1, 0, 0),
('hospital37', 1, 1, 1, 1, 0, 1, 0, 1),
('hospital38', 1, 0, 1, 0, 1, 0, 0, 1),
('hospital39', 1, 0, 1, 0, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

DROP TABLE IF EXISTS `donor`;
CREATE TABLE IF NOT EXISTS `donor` (
  `DID` varchar(4) DEFAULT NULL,
  `DNAME` varchar(16) DEFAULT NULL,
  `B_TYPE` varchar(5) DEFAULT NULL,
  `ADDRESS` varchar(85) DEFAULT NULL,
  `PHONE` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`DID`, `DNAME`, `B_TYPE`, `ADDRESS`, `PHONE`) VALUES
('D001', 'Srikanth', 'O+ve', 'Chemtex House,Powai,400076', '9700655144'),
('D002', 'Mani', 'O+ve', '1277/23,25th Main,Jayanagar,560069', '7401535415'),
('D003', 'Sriram', 'B+ve', '217/2a,B S A Road,Fazer Town,560005', '8056051072'),
('D004', 'Ramesh', 'B+ve', '26/1,Jattappa Building,Kanakapura Main Road,Yelanchenahalli', '9884727286'),
('D005', 'Suresh', 'A+ve', '79, 2nd Main Road New Extension, Kalasipalyam', '8148916988'),
('D006', 'Murali', 'O+ve', '45,mgrdblr-1, M G Road,560001', '7299399392'),
('D007', 'Prabhu', 'AB-ve', '1, Maruthi Arcade, 3rd Stage 100 Ft Ring Road, Kathriguppe Circle, B S K', '9884641396'),
('D008', 'Vijay', 'B-ve', '18, Ground Floor 3 Cross, Journalist Colony', '9790954376'),
('D009', 'Jai', 'AB+ve', '9, Sharma Complex, Ground Floor, Chickpet', '9962361622'),
('D010', 'Raja', 'B+ve', '76, 76mgrdblr-1, M G Road', '9789865312'),
('D011', 'Perumal', 'O+ve', '2884, Kodihalli,560008', '9652843112'),
('D012', 'Kalidas', 'A+ve', '16, 16,manipal Centre Bldg, North Block, Dickenson Road', '9943948951'),
('D013', 'Abbas', 'AB-ve', 'Shah Sultan Complex, Os;hamrdblr-52, Cunningham Road', '9551414146'),
('D014', 'Rajalingam', 'B+ve', '71/1,1flr,brigaderdcrs,bangalore-01, Brigade Road', '9626696882'),
('D015', 'Sundar', 'O+ve', 'Pos;gudiblr4, Basavanagudi', '9941418736'),
('D016', 'Yuvaraj', 'AB+ve', 'B-185, 2ndstg,peenyaindestateblr-58, Peenya', '8124291412'),
('D017', 'Jagir', 'B+ve', '95, 4th Cross 1st Main, Hanumanthanagar', '9042670928'),
('D018', 'Suresh Kumar', 'O+ve', '724a, West Of Chord Road, Mahalakshmi Layout', '9840939939'),
('D019', 'Aravind', 'O+ve', '135, 3rd Flr, Dispensary Road', '9176980878'),
('D020', 'Manikandan', 'A+ve', '5, 1 Main, N R Colony', '9566420317'),
('D021', 'Senthil Kumar', 'B+ve', 'H-6, 1st Fl., Omkar, Near Marathi Vidhiyalaya, Mulund(e)', '9962688252'),
('D022', 'Praveen Kumar', 'B+ve', '#29bda, Comml-complx,i.ngr,blr-38, Indira Nagar', '9094314313'),
('D023', 'Mohanraj ', 'B+ve', '1stmnkaveripurakply(nwblr-79, Basaveshwaranagar', '9444464789'),
('D024', 'Abhishek', 'O+ve', '1326, 6th Cross 6th Main Road K N Ex, Yeshwanthpur', '9791097653'),
('D025', 'C.Prathap', 'O+ve', 'A30/16, 4thmn,gefbl,indltwn,rajajing, Rajajinagar', '9940521093'),
('D026', 'Isai Anand', 'O+ve', '18/7, Executive Chambers, 2 Floor, Cunningham Road', '7845548466'),
('D027', 'S Thilak', 'O+ve', '470/a, 3 Jn Rd, Beml Lyt, Rajarajeshwari Nagar', '8618102723'),
('D028', 'Anbumani', 'O+ve', '11, 11,oldmadrasrdblr-16, Near Tine Factory, Old Madras Road', '9566001676'),
('D029', 'Syed', 'A+ve', '28/1, Oldmadrasrd,avalahalli,blr-043, Avalahalli', '9551457239'),
('D030', 'M.Jagadeesanvb', 'A+ve', 'K-4, F M Commercial Complex, Main Road, Kumbarpet', '7845662500'),
('D031', 'Karthikeyan', 'O+ve', '68, Vasavi Complex, O T Pet, Chickpet', '9884400371'),
('D032', 'Daniel', 'B+ve', '9, Ratan Mahal 4th Cross, Malleshwaram', '9003148805'),
('D033', 'Sridhar', 'O+ve', '2, 2,hsiddaiahrdblr-27, Behind Old Bharath Talkies, H Siddaiah Road', '9500119761'),
('D034', 'V.Mohan', 'O+ve', '118/a, 1 Cross 2 Main, Bapuji Nagar, Mysore Road', '9940639557'),
('D035', 'Jawahar', 'B+ve', '21, D K Industrial Area, Mahadevpura', '9600162581'),
('D036', 'V.Karthick', 'A+ve', '153/4, Vijaya Bank Complex, Whitefield Road', '9578828854'),
('D037', 'C.Rajkumar', 'B+ve', '106, 3rd Stage 80 Ft Road, Hosakerehalli, B S K', '9790844373'),
('D038', 'Ashok Kumar', 'B+ve', '35 A, Prithviraj Road', '9791142469'),
('D039', 'M.Karukkuvel', 'B+ve', '6/2, Golden Plaza, Um Lane, Behind Maruti Plaza, Chickpet', '9087425095'),
('D040', 'Narendran ', 'AB+ve', '35, New Bldg, Naigaon X Road, Dadar(e)', '9500148984'),
('D041', 'Edwin', 'O-ve', '18, Centre Market, Pushpa Market, Lajpat Nagar', '9791150119'),
('D042', 'Selva Ganesh', 'A+ve', '2, High Street Cross, Cooke Town', '9940187708'),
('D043', 'Siddiq', 'O+ve', '448, Avenueroad,bangalore-560002, Avenue Road', '9094666918'),
('D044', 'Anil Kumar', 'O+ve', '1642/57, 11 Cross, Prakash Nagar', '9840301747'),
('D045', 'Vignesh', 'B+ve', '2, Bda Complex, Rear Entrance, Koramangala', '9884556995'),
('D046', 'Vogneshgiri', 'B+ve', '174e/28, 1 Floor 1 Main, Vidyaranyanagar, Magadi Road', '9043677660'),
('D047', 'Anbarasan', 'O+ve', '1007, Faiz Road, Karol Bagh', '9840862846'),
('D048', 'M.Vimal Kumar', 'O+ve', '89, Gandhi Bazar, Basavanagudi', '9677279760'),
('D049', 'Jeeva ', 'AB-ve', '465/8, 465/8,avnrdblr-2, Agarbathi Market, Avenue Road', '8056292339'),
('D050', 'Sarath', 'A+ve', '1, Snj Cplx, 1,snjcplx,whtfldblr-66, Nr State Bank Of Mysore, Whitefield', '9551113240'),
('D051', 'Vazir', 'O+ve', '152/1, Kumbarpet Main Road, Sp Road Cross', '8754034986'),
('D052', 'Dinesh', 'AB+ve', '#j-4/5,unity Building', '8122288878'),
('D053', 'Balakrish', 'O+ve', '16th A Cross, Magadi Main Road, Muhuraya Swamy Layout, Rudeshwara Nagar, Sunkadakatte', '9047904837'),
('D054', 'Madhan ', 'AB+ve', '1298, 25th Main, Jayanagar', '9940391891'),
('D055', 'P.P.Pradesh', 'O+ve', 'G.sbldg, 2ndflr,174,s.prd,bangalore, Sp Road', '8903612888'),
('D056', 'Shakkur', 'B+ve', '79/1mgdmnrd10thcrsblr-23, Magadi Main Road', '9715521770'),
('D057', 'Venkat', 'B-ve', '111ganeshtwrinfantryrdblr-1, Infantry Road', '9666661705'),
('D058', 'Roshan', 'A+ve', '80/1g,10thstjogupalya,ulsr-8, Ulsoor', '9100954327'),
('D059', 'Vinod', 'AB+ve', '41, Mosque Complex, 1st Flr M M Road, Frazer Town', '9985003839'),
('D060', 'Joshua', 'B-ve', '260/261, 260/261,kkamarajrdblr-42, K Kamaraj Road', '9704972553'),
('D061', 'Arun', 'B+ve', '121, The Estate, Ground Floor, Dickenson Road', '9951997775'),
('D062', 'Dr. V.Rajnikanth', 'O+ve', '12/3, 5 Main, Ganga Nagar', '9032807745'),
('D063', 'Jayanth', 'O+ve', '16, Assumption View, M G Road, Kandviali West', '9066140242'),
('D064', 'Vishwanath', 'B+ve', 'G 17, Vardhman Plaza Cmp, Gujranwala Town', '9160340140'),
('D065', 'Kiran', 'AB+ve', 'Shop No 9, Raheja Residensy, M G Complex,sector 14', '9645899756'),
('D066', 'Komal', 'B+ve', '92 Bmc Shopping Cntr, 92 Bmc Shopping Cntr, Railway Godi Naka', '9356842156'),
('D067', 'Arti Yadav', 'A+ve', '204, 1stflr,3rdstg,3blk,basavengrb79, Basveswarnagar', '7689521463'),
('D068', 'Pratibha', 'AB+ve', '108, Kilari Road, Near Santoshi Maa Temple, Kilari Road', '8866592347'),
('D069', 'Pratima ', 'O+ve', '112 Jain Laxmi Mansion, D Bhadkamkar Rd', '9966621453'),
('D070', 'Harshita', 'O-ve', 'E-101,22sunrisechmbsulsblr-42, Indiranagar', '9793556842'),
('D071', 'Sunita', 'AB-ve', '#13 14, Padmarao Nagar', '9959432684'),
('D072', 'Meena ', 'B+ve', '66, 66,sjprdblr-2, S J P Road', '7382065479'),
('D073', 'Manasa', 'B+ve', '54, Devatha Market, Chickpet', '9596348665'),
('D074', 'Jagriti', 'A+ve', '209, Parvati Indl Estate, Sunmill Compound', '9091558647'),
('D075', 'Krishna', 'AB+ve', 'Shop No 204, 5 Avenue, 2, Next To Nilgiris, Brigade Road', '9945681275'),
('D076', 'Kavya', 'B+ve', '15/9/1, Narkeldanga North Road, Kankurgachi', '9463585578'),
('D078', 'Krutika', 'O-ve', '103/2, 103/2,jmrdblr-2, J M Road', '9035646162'),
('D079', 'Lakshmi', 'O+ve', '4th Floor, Rohit Chambers, Janmabhoomi Marg., Fort', '9865332685'),
('D080', 'Priya', 'AB+ve', '7/6, Bull Temple Road, Basavanagudi', '9959863201'),
('D081', 'Sheetal', 'B+ve', 'N#443, Annasalai, Teynampet', '9012368754'),
('D082', 'Jyoti', 'AB-ve', '564, Gururaja Mansion, Os;petblr-53, Chickpet', '9001536852'),
('D083', 'Shreya', 'B-ve', '93, Jagannath Shankar Sheth Road, Dr. D.d.sheth Road, Girgaon', '9663589642'),
('D084', 'Aishwarya', 'AB-ve', '3/1,1flr,2crsmlaxmird,shntingrblr27, Shanti Nagar', '9955486215'),
('D085', 'Anchal', 'AB+ve', 'Plot-168, Gr Flr, Pratap Bhavn, Sion', '9765830215'),
('D086', 'Pooja', 'AB+ve', '47/8,thigalarapalayamnrdbangalore58, Thigalarapalya', '9235680150'),
('D087', 'Akriti', 'B+ve', '3/44, Shanti Niketan', '9765120685'),
('D088', 'Rita', 'O-ve', '384-f, 3rd Floor, Dabholkar Wadi, Kalbadevi Road, Kalbadevi', '9472360158'),
('D089', 'Sonika', 'O+ve', '160/10, Kanteerava Studio Main Road, Parimalanagar, Nandhini Layout', '9513574602'),
('D090', 'Palak', 'B+ve', '64 A-4, Maruthi Plaza D V G Road, Basavanagudi', '7635901486'),
('D091', 'Swetha', 'B+ve', '201-e, 201-e Sanpada Stn Comm Cplx, Sector-30', '7865214862'),
('D092', 'Nikita', 'AB+ve', '10/1, 5 Lakshmi Rd, Shanti Nagar', '9004622586'),
('D093', 'Neha', 'AB-ve', '327, Arum Chambers, Tardeo Road, Tardeo-tulsiwadi', '8008862779'),
('D094', 'Arpita', 'O+ve', '26, 3rd Stage 3rd Phase Ring Road, Opp Kamakya Theatre, B S K', '7635942158'),
('D095', 'Deepika', 'O-ve', '72, 2 Main Road, Industrial Town, Rajaji Nagar', '7675117108'),
('D096', 'Priyanka', 'O+ve', '7, Gt Cplx, Magadi Mn Rd, Sunkadakatte', '9397558620'),
('D097', 'Manisha', 'AB-ve', 'Patel Venkatappa Complex, Magadi Main Road, Sunkadakatte', '9231505548'),
('D098', 'Sadhna', 'A+ve', '#38/2, 2nd Main, Behind Corporation, Madiwala New Extension', '9596332601'),
('D099', 'Shivali', 'B+ve', '5 Old 139, A S Char Street', '9195699834'),
('D100', 'Rishita', 'AB+ve', '2445thcrs4thmn4thstgindltnblr-44, Rajajinagar', '9959764803'),
('d101', 'Indranil Sarkar', 'A+', '31,2nd cross,ks layout,Bengaluru-78', '8904129612');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

DROP TABLE IF EXISTS `hospital`;
CREATE TABLE IF NOT EXISTS `hospital` (
  `hid` varchar(20) NOT NULL,
  `hname` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`hid`, `hname`, `address`, `phone`) VALUES
('hospital1', 'Supurva Hospital           ', 'Vasanthapura main road,, konanakunte cross, subramanyapura post., Bengaluru, Karnataka 560062', '080 4141 0031'),
('hospital2', 'Green City Hospital', '100 Outer Ring Road,Rose Garden, JP Nagar, 6th Phase,Opp to Renault Showroom, Bengaluru, Karnataka 560078', '080 2653 6222'),
('hospital3', 'Maharaja Agrasen Hospital', '15th \'A\' Main Road, 17th Cross Road, 2nd Stage, Padmanabha Nagar, Banashankari, Bengaluru, Karnataka 560070', '080 2639 0362'),
('hospital4', 'DG Hospital', '274/275, M.K. Puttalingiah Road, Padmanabha Nagar, Gururaja Layout, Banashankari, Bengaluru, Karnataka 560070', '080 2669 6179'),
('hospital5', 'Sri Krishna Hospital', '29th cross, 17th main, near BNM High School, Banashankari Stage II, Banashankari, Bengaluru, Karnataka 560070', '080 2671 1113'),
('hospital6', 'Sevakshetra Hospital', '27th Cross Road, Banashankari II Stage, Opp. Mind Tree, Bengaluru, Karnataka 560070', '080 2671 5479'),
('hospital7', 'Rajnandini Hospital', '3, Old Bank Colony, 6th Cross, Konanakunte, Bengaluru, Karnataka 560062', '080 2632 0140'),
('hospital8', 'Neighbourhood Hospital', '9, Wilson Garden House Building Co-op. Limited, Kotnur Main Road, RBI East Layout, 7th Phase, J P Nagar, Bengaluru, Karnataka 560078', '080 4960 3300'),
('hospital9', 'Deepak Hospital', 'No. 38, 259, 33 Cross,Yediyur, Kanakapura Road, 7th Block, Jayanagar, Bengaluru, Karnataka 560070', '080 2663 7043'),
('hospital10', 'DIGVIJAYA HOSPITAL', 'No. 124, Kanakapura Main Road, 7th Block, Jayanagar, Bengaluru, Karnataka 560082', '080 2676 1122'),
('hospital11', 'Doctor Malathi Manipal Hospital', '45/1, 45th Cross, 9th Block, Jayanagar, Bengaluru, Karnataka 560069', '1800 3001 4000'),
('hospital12', 'Mamatha Hospital', 'No. 1539, 39th Cross, 4th \'T\' Block, Jayanagar, Bengaluru, Karnataka 560041', '080 2244 1211'),
('hospital13', 'TR Hospital', 'Kothnur Village Main Road, Sapthgiri Layout, 8th Phase, JP Nagar, Bengaluru, Karnataka 560078', '080 4265 7777'),
('hospital14', 'Tara Day Care Hospital', '#179/2, Near Vinayaka Theatre, Gottigere Main Road, Kothanur Village, J.P.Naga, 8th Phase,, Bengaluru, Karnataka 560076', '099167 67744'),
('hospital15', 'Apollo Hospitals', '154/11, Bannerghatta Road, Opposite IIM, Bengaluru, Karnataka 560076', '080 2630 4050'),
('hospital16', 'Jayanagar General Hospital', '32nd Cross, 4th B Block, Beside Rajiv Gandhi Health Institute, Tilak Nagar, Bengaluru, Karnataka 560041', '080 2244 5711'),
('hospital17', 'Reddy Hospital', '1590, 9th Block, East End Main Road, 39th Cross, Jayanagar, Bengaluru, Karnataka 560069', '080 2245 4706'),
('hospital18', 'The Bangalore Hospital', '202, Rashtriya Vidyalaya Road, Basavanagudi, Bengaluru, Karnataka 560004', '080 4118 7600'),
('hospital19', 'Vivekananda Hospital', '153, 2nd Cross, Bannerghatta Main Rd, Near SBI Bank, Bilekahalli, Bengaluru, Karnataka 560076', '099723 70730'),
('hospital20', 'The Bangalore Hospital', '202, Rashtriya Vidyalaya Road, Basavanagudi, Bengaluru, Karnataka 560004', '080 4118 7600'),
('hospital21', 'Vinayaka Hospital', 'No.110, State Bank Of Mysore Colony, 1st Stage, 80 Feet Road, Banashankari, Bengaluru, Karnataka 560050', '080 2679 4148'),
('hospital22', 'Apollo Hospitals', '21/2 (Old No.2), 14th Cross, 3rd Block, Jayanagar, Bengaluru, Karnataka 560011', '080 3080 4444'),
('hospital23', 'BMS Hospital', '618, Mallikarjuna temple street, N.R.Colony, Bengaluru, Karnataka 560019', '080 2661 3993'),
('hospital24', 'People Tree Hospitals @ Meenakshi', 'No. 979, 25th Main, 50 Feet Road, 1st Stage, Bengaluru, Karnataka 560085', '080 2675 5800'),
('hospital25', 'Sagar Hospitals', 'No. 44/54, 30th Cross, Tilaknagar, Jayanagar Extension, Bengaluru, Karnataka 560041', '080 4288 8888'),
('hospital26', 'Shekhar Hospital', 'No 18, Bull Temple Road, Near Ramakrishna Ashram, Bengaluru, Karnataka 560019', '080 2242 1144'),
('hospital27', 'Unity Hospital', 'Jawaharlal Nehru Road, Stage 5, Rajarajeshwari Nagar, Bengaluru, Karnataka 560098', '080 2861 1888'),
('hospital28', 'Ss Hospitals', 'Javarandoddi, RR Nagar, Bengaluru, Karnataka 560098', '080 2625 8888'),
('hospital29', 'Popular Hospital', '16, 3rd cross rd, Shankar Puram, Bengaluru, Karnataka 560004', '080 2667 4650'),
('hospital30', 'Spurthy Hospital', 'Chocolate Factory Road, Madivala, BTM Layout 1st Stage, Bengaluru, Karnataka 560029', '080 2684 4042'),
('hospital31', 'Life Care Hospital(LCH)', '23/24, Om Complex, 20th Main, Gangotri Circle, Near Udupi sagar hotel,Maruthi Nagar, BTM Layout, Madiwala, Bengaluru, Karnataka 560068', '080 2684 6677'),
('hospital32', 'Rangadore Memorial Hospital', '1st cross, Shankarapuram, Basavanagudi, Bengaluru, Karnataka 560004', '080 2698 3300'),
('hospital33', 'Vijayashree Hospitals', '3, Gottigere, Bannerghatta Main Road, Opp Divyashree Medicals, Bengaluru, Karnataka 560083', '080 4906 8888'),
('hospital34', 'BGS Gleneagles Global Hospitals', '67, Uttarahalli Road, Fort Kengeri, Bengaluru, Karnataka 560060', '080 3044 4444'),
('hospital35', 'Mallya Hospital', 'No.2, Vittal Mallya Road, Bengaluru, Karnataka 560001', '080 2227 7979'),
('hospital36', 'Sagar Hospitals Kumaraswamy Layout', 'Shavige Malleshwara Hills, Behind Dayananda Sagar Institution Campus, Kumaraswamy Layout, Bengaluru, Karnataka 560078', '080 4299 9999'),
('hospital37', 'Kusuma Hospital', 'No.237/37, Nagendra Block, 50ft Road, 10th Main Rd, Srinagar, Banashankari, Bengaluru, Karnataka 560050', '080 2642 1177'),
('hospital38', 'Narayana Multispeciality Hospital', 'Basant Health Centre Building,, No. 1, 18th Main, Sector 3, HSR Layout, Bengaluru, Karnataka 560102', '1860 208 0208'),
('hospital39', 'Acura Speciality Hospital', 'No. 105, 5th Block, 17th C Main Road, KHB Colony , Koramangala, Bengaluru, Karnataka 560095', '080 4110 5151');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE IF NOT EXISTS `patient` (
  `PID` varchar(4) DEFAULT NULL,
  `NAME` varchar(17) DEFAULT NULL,
  `BLOOD_GROUP` varchar(5) DEFAULT NULL,
  `ADDRESS` varchar(85) DEFAULT NULL,
  `PHONE` bigint(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`PID`, `NAME`, `BLOOD_GROUP`, `ADDRESS`, `PHONE`) VALUES
('P001', 'Abhishek Kumar', 'O+ve', 'Chemtex House,Powai,400076', 8495867359),
('P002', 'Abhishek Jha', 'O+ve', '1277/23,25th Main,Jayanagar,560069', 9660615057),
('P003', 'Abhishek Singh', 'B+ve', '217/2a,B S A Road,Fazer Town,560005', 8862459870),
('P004', 'Arusha', 'B+ve', '26/1,Jattappa Building,Kanakapura Main Road,Yelanchenahalli', 9568429953),
('P005', 'Aditya Adarsh', 'A+ve', '79, 2nd Main Road New Extension, Kalasipalyam', 9897664852),
('P006', 'Animesh Sharma', 'O+ve', '45,mgrdblr-1, M G Road,560001', 9959863425),
('P007', 'Ananya Sharma', 'AB-ve', '1, Maruthi Arcade, 3rd Stage 100 Ft Ring Road, Kathriguppe Circle, B S K', 9458662715),
('P008', 'Anchal Verma', 'B-ve', '18, Ground Floor 3 Cross, Journalist Colony', 9977558832),
('P009', 'Anubhav Anand', 'AB+ve', '9, Sharma Complex, Ground Floor, Chickpet', 9397556841),
('P010', 'Ashwini', 'B+ve', '76, 76mgrdblr-1, M G Road', 9091225688),
('P011', 'Ashutosh ', 'O+ve', '2884, Kodihalli,560008', 9398574268),
('P012', 'Abhishek Thakur', 'A+ve', '16, 16,manipal Centre Bldg, North Block, Dickenson Road', 9948662753),
('P013', 'Abuzar ', 'AB-ve', 'Shah Sultan Complex, Os;hamrdblr-52, Cunningham Road', 7382064578),
('P014', 'Aditi', 'B+ve', '71/1,1flr,brigaderdcrs,bangalore-01, Brigade Road', 8659332485),
('P015', 'Akansha Singh', 'O+ve', 'Pos;gudiblr4, Basavanagudi', 9657882364),
('P016', 'Akash Yadav', 'AB+ve', 'B-185, 2ndstg,peenyaindestateblr-58, Peenya', 7576110862),
('P017', 'Akshay Dalal', 'B+ve', '95, 4th Cross 1st Main, Hanumanthanagar', 9695332684),
('P018', 'Aman Nain', 'O+ve', '724a, West Of Chord Road, Mahalakshmi Layout', 9956882014),
('P019', 'Amit Yadav', 'O+ve', '135, 3rd Flr, Dispensary Road', 7675112908),
('P020', 'Anil Pati', 'A+ve', '5, 1 Main, N R Colony', 8483221940),
('P021', 'Anirudh', 'B+ve', 'H-6, 1st Fl., Omkar, Near Marathi Vidhiyalaya, Mulund(e)', 9963432850),
('P022', 'Ankit Gaur', 'B+ve', '#29bda, Comml-complx,i.ngr,blr-38, Indira Nagar', 9496218805),
('P023', 'Ankur Rai', 'B+ve', '1stmnkaveripurakply(nwblr-79, Basaveshwaranagar', 8685220764),
('P024', 'Anshuman', 'O+ve', '1326, 6th Cross 6th Main Road K N Ex, Yeshwanthpur', 9495883267),
('P025', 'Anupuma Rao', 'O+ve', 'A30/16, 4thmn,gefbl,indltwn,rajajing, Rajajinagar', 9091487532),
('P026', 'Apurva', 'O+ve', '18/7, Executive Chambers, 2 Floor, Cunningham Road', 8385116984),
('P027', 'Arpita', 'O+ve', '470/a, 3 Jn Rd, Beml Lyt, Rajarajeshwari Nagar', 9294886571),
('P028', 'Arvind Sharma', 'O+ve', '11, 11,oldmadrasrdblr-16, Near Tine Factory, Old Madras Road', 9975714862),
('P029', 'Ayush Mishra', 'A+ve', '28/1, Oldmadrasrd,avalahalli,blr-043, Avalahalli', 9694885203),
('P030', 'Bhushan Yadav', 'A+ve', 'K-4, F M Commercial Complex, Main Road, Kumbarpet', 9036785214),
('P031', 'Birender', 'O+ve', '68, Vasavi Complex, O T Pet, Chickpet', 8688520146),
('P032', 'Darshan', 'B+ve', '9, Ratan Mahal 4th Cross, Malleshwaram', 9128556347),
('P033', 'Deepali', 'O+ve', '2, 2,hsiddaiahrdblr-27, Behind Old Bharath Talkies, H Siddaiah Road', 9688502147),
('P034', 'Diksha Rana ', 'O+ve', '118/a, 1 Cross 2 Main, Bapuji Nagar, Mysore Road', 9476820145),
('P035', 'Gaurav Singh', 'B+ve', '21, D K Industrial Area, Mahadevpura', 9397665328),
('P036', 'Gaurav Sangwan', 'A+ve', '153/4, Vijaya Bank Complex, Whitefield Road', 9097124865),
('P037', 'Harsh Kern', 'B+ve', '106, 3rd Stage 80 Ft Road, Hosakerehalli, B S K', 8088593012),
('P038', 'Harshavardhan', 'B+ve', '35 A, Prithviraj Road', 7658890115),
('P039', 'Himanshu Sharma', 'B+ve', '6/2, Golden Plaza, Um Lane, Behind Maruti Plaza, Chickpet', 7759630854),
('P040', 'Indranil Sarkar', 'AB+ve', '35, New Bldg, Naigaon X Road, Dadar(e)', 9980268471),
('P041', 'Jeeshan', 'O-ve', '18, Centre Market, Pushpa Market, Lajpat Nagar', 8088269415),
('P042', 'Vivek Sharma', 'A+ve', '2, High Street Cross, Cooke Town', 8488756691),
('P043', 'Shubham Yadav', 'O+ve', '448, Avenueroad,bangalore-560002, Avenue Road', 9784289901),
('P044', 'Juhi Mishra', 'O+ve', '1642/57, 11 Cross, Prakash Nagar', 9099820156),
('P045', 'Shubham Singh', 'B+ve', '2, Bda Complex, Rear Entrance, Koramangala', 7750268410),
('P046', 'Jyoti Yadav', 'B+ve', '174e/28, 1 Floor 1 Main, Vidyaranyanagar, Magadi Road', 8855602148),
('P047', 'K K Nithin', 'O+ve', '1007, Faiz Road, Karol Bagh', 9675019243),
('P048', 'Kailash Gaur', 'O+ve', '89, Gandhi Bazar, Basavanagudi', 7375118026),
('P049', 'Kalpana Rana ', 'AB-ve', '465/8, 465/8,avnrdblr-2, Agarbathi Market, Avenue Road', 8682049932),
('P050', 'Karthik G', 'A+ve', '1, Snj Cplx, 1,snjcplx,whtfldblr-66, Nr State Bank Of Mysore, Whitefield', 9394775021),
('P051', 'Kumar Utkarsh', 'O+ve', '152/1, Kumbarpet Main Road, Sp Road Cross', 9307152548),
('P052', 'Kunal ', 'AB+ve', '#j-4/5,unity Building', 8688997220),
('P053', 'Ankita Kundu', 'O+ve', '16th A Cross, Magadi Main Road, Muhuraya Swamy Layout, Rudeshwara Nagar, Sunkadakatte', 8688501575),
('P054', 'Madhvi', 'AB+ve', '1298, 25th Main, Jayanagar', 9968201486),
('P055', 'Sonali Mahapatra', 'O+ve', 'G.sbldg, 2ndflr,174,s.prd,bangalore, Sp Road', 7750286310),
('P056', 'Maneela Rao', 'B+ve', '79/1mgdmnrd10thcrsblr-23, Magadi Main Road', 9397558024),
('P057', 'Manish Yadav', 'B-ve', '111ganeshtwrinfantryrdblr-1, Infantry Road', 9794968812),
('P058', 'Manisha Singh', 'A+ve', '80/1g,10thstjogupalya,ulsr-8, Ulsoor', 8808402687),
('P059', 'Manmeet Singh', 'AB+ve', '41, Mosque Complex, 1st Flr M M Road, Frazer Town', 8084023075),
('P060', 'Manoj Kumar', 'B-ve', '260/261, 260/261,kkamarajrdblr-42, K Kamaraj Road', 9097558316),
('P061', 'Mayank Pandey', 'B+ve', '121, The Estate, Ground Floor, Dickenson Road', 7377680249),
('P062', 'Meghana ', 'O+ve', '12/3, 5 Main, Ganga Nagar', 9106882034),
('P063', 'Rahul Mishra', 'O+ve', '16, Assumption View, M G Road, Kandviali West', 8853079426),
('P064', 'Mohit Nain', 'B+ve', 'G 17, Vardhman Plaza Cmp, Gujranwala Town', 7386901482),
('P065', 'Mukesh Verma', 'AB+ve', 'Shop No 9, Raheja Residensy, M G Complex,sector 14', 8828397560),
('P066', 'Musthafa', 'B+ve', '92 Bmc Shopping Cntr, 92 Bmc Shopping Cntr, Railway Godi Naka', 9766820185),
('P067', 'Namrata Giri', 'A+ve', '204, 1stflr,3rdstg,3blk,basavengrb79, Basveswarnagar', 9208730015),
('P068', 'Pratik Jha ', 'AB+ve', '108, Kilari Road, Near Santoshi Maa Temple, Kilari Road', 8087602158),
('P069', 'Nayan Prakash', 'O+ve', '112 Jain Laxmi Mansion, D Bhadkamkar Rd', 9899690925),
('P070', 'Nivedita Negi', 'O-ve', 'E-101,22sunrisechmbsulsblr-42, Indiranagar', 7073550198),
('P071', 'Karan Singh', 'AB-ve', '#13 14, Padmarao Nagar', 7790664821),
('P072', 'Harshitha Shankar', 'B+ve', '66, 66,sjprdblr-2, S J P Road', 9460337850),
('P073', 'Neha Chaudhary', 'B+ve', '54, Devatha Market, Chickpet', 8381069470),
('P074', 'Nikita Singh', 'A+ve', '209, Parvati Indl Estate, Sunmill Compound', 7794680519),
('P075', 'Nimish Sinha', 'AB+ve', 'Shop No 204, 5 Avenue, 2, Next To Nilgiris, Brigade Road', 8681009348),
('P076', 'Nishant ', 'B+ve', '15/9/1, Narkeldanga North Road, Kankurgachi', 7986051860),
('P077', 'Nithin Yadav', 'O-ve', '103/2, 103/2,jmrdblr-2, J M Road', 9683907215),
('P078', 'Pawan ', 'O+ve', '4th Floor, Rohit Chambers, Janmabhoomi Marg., Fort', 8806597230),
('P079', 'Payal', 'AB+ve', '7/6, Bull Temple Road, Basavanagudi', 9553075128),
('P080', 'Pooja ', 'B+ve', 'N#443, Annasalai, Teynampet', 8240168890),
('P081', 'Prashant Rathor', 'AB-ve', '564, Gururaja Mansion, Os;petblr-53, Chickpet', 7376994028),
('P082', 'Pratibha', 'B-ve', '93, Jagannath Shankar Sheth Road, Dr. D.d.sheth Road, Girgaon', 9198762049),
('P083', 'Priya Chaudhary', 'AB-ve', '3/1,1flr,2crsmlaxmird,shntingrblr27, Shanti Nagar', 7675710984),
('P084', 'Priyamvada', 'AB+ve', 'Plot-168, Gr Flr, Pratap Bhavn, Sion', 8683800195),
('P085', 'Priyanka Sharma', 'AB+ve', '47/8,thigalarapalayamnrdbangalore58, Thigalarapalya', 9899500168),
('P086', 'Priyaranjan Jha', 'B+ve', '3/44, Shanti Niketan', 9297550156),
('P087', 'Rohan Kashyup', 'O-ve', '384-f, 3rd Floor, Dabholkar Wadi, Kalbadevi Road, Kalbadevi', 9506824037),
('P088', 'Reshav Shekhar', 'O+ve', '160/10, Kanteerava Studio Main Road, Parimalanagar, Nandhini Layout', 7670082194),
('P089', 'Rachna', 'B+ve', '64 A-4, Maruthi Plaza D V G Road, Basavanagudi', 7575782014),
('P090', 'Raj', 'B+ve', '201-e, 201-e Sanpada Stn Comm Cplx, Sector-30', 9976802458),
('P091', 'Raghvendra ', 'AB+ve', '10/1, 5 Lakshmi Rd, Shanti Nagar', 9010504486),
('P092', 'Rashmi Yadav', 'AB-ve', '327, Arum Chambers, Tardeo Road, Tardeo-tulsiwadi', 9568820145),
('P093', 'Rita', 'O+ve', '26, 3rd Stage 3rd Phase Ring Road, Opp Kamakya Theatre, B S K', 7682145987),
('P094', 'Sadhna Bhist', 'O-ve', '72, 2 Main Road, Industrial Town, Rajaji Nagar', 8380019657),
('P095', 'Sai Kumar', 'O+ve', '7, Gt Cplx, Magadi Mn Rd, Sunkadakatte', 9007618024),
('P096', 'Shivali Sharma ', 'AB-ve', 'Patel Venkatappa Complex, Magadi Main Road, Sunkadakatte', 9497940638),
('P097', 'Harsimrat Kaur', 'A+ve', '#38/2, 2nd Main, Behind Corporation, Madiwala New Extension', 7676801529),
('P098', 'Shreya Kaul', 'B+ve', '5 Old 139, A S Char Street', 8206843781),
('P099', 'Vikash Gaur', 'AB+ve', '2445thcrs4thmn4thstgindltnblr-44, Rajajinagar', 7682094258),
('P100', 'Shubham Singh', 'AB+ve', '3714,rlyparallelrd,g.ngrblr-21, Gandhi Nagar', 9672830995);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
