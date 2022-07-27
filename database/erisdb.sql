-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jul 23, 2022 at 03:08 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `erisdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblapplicants`
--

CREATE TABLE `tblapplicants` (
  `APPLICANTID` int(11) NOT NULL,
  `FNAME` varchar(90) NOT NULL,
  `LNAME` varchar(90) NOT NULL,
  `MNAME` varchar(90) NOT NULL,
  `ADDRESS` varchar(255) NOT NULL,
  `SEX` varchar(11) NOT NULL,
  `CIVILSTATUS` varchar(30) NOT NULL,
  `BIRTHDATE` date NOT NULL,
  `BIRTHPLACE` varchar(255) NOT NULL,
  `AGE` int(2) NOT NULL,
  `USERNAME` varchar(90) NOT NULL,
  `PASS` varchar(90) NOT NULL,
  `EMAILADDRESS` varchar(90) NOT NULL,
  `CONTACTNO` varchar(90) NOT NULL,
  `DEGREE` text NOT NULL,
  `APPLICANTPHOTO` varchar(255) NOT NULL,
  `NATIONALID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblapplicants`
--

INSERT INTO `tblapplicants` (`APPLICANTID`, `FNAME`, `LNAME`, `MNAME`, `ADDRESS`, `SEX`, `CIVILSTATUS`, `BIRTHDATE`, `BIRTHPLACE`, `AGE`, `USERNAME`, `PASS`, `EMAILADDRESS`, `CONTACTNO`, `DEGREE`, `APPLICANTPHOTO`, `NATIONALID`) VALUES
(2018013, 'Kim', 'Domingo', 'Enoe', 'Kab City', 'Female', 'none', '1991-01-01', 'Kab Citys', 27, 'kim', 'a6312121e15caec74845b7ba5af23330d52d4ac0', 'kim@y.com', '5415456', 'BSAC', 'photos/RobloxScreenShot20180406_203758793.png', ''),
(2018014, 'Jake', 'Zyrus', 'Ilmba', 'Kab City', 'Female', 'none', '1993-01-16', 'Kab City', 25, 'jake', 'c8d99c2f7cd5f432c163abcd422672b9f77550bb', 'jake@y.com', '14655623123123', 'BSIT', '', ''),
(2018015, 'Janry', 'Tan', 'Lim', 'brgy 1 Kab City', 'Female', 'Single', '1992-01-30', 'Kab City', 26, 'janry', '1dd4efc811372cd1efe855981a8863d10ddde1ca', 'jan@gmail.com', '0234234', 'BSIT', '', ''),
(2022016, 'Ronnie', 'Nagum', 'Tatel', '8 Mabolo Road Potrero Malabon City', 'Male', 'Single', '1999-09-09', 'Valenzuela City', 22, 'ronnienagum', 'f5db3f7457bf0cbbac3ad94006fcb3637c183cdc', 'ronniejrnagum@gmail.com', '09212916996', 'Undergraduate Degree', '', ''),
(2022017, 'Test', 'test', 'test', 'test', 'Female', 'Single', '1999-09-09', 'test', 22, 'rnagumjr', '21bd12dc183f740ee76f27b78eb39c8ad972a757', 'ronniejrnagum@gmail.com', 'test', 'college degree', '', ''),
(2022019, 'Ronnie2', 'Nagum2', 'T2', 'fksaldf2', 'Male', 'Single', '1994-03-16', 'test2', 28, 'ronnienagum', '21bd12dc183f740ee76f27b78eb39c8ad972a757', 'ronniejrnagum2@gmail.com', 'test2', 'college2', '', ''),
(2022020, 'Ronnie', 'Nagum', 'Tatel', 'Malabon', 'Male', 'Single', '1999-09-09', 'valenzuela', 22, 'rnagumjr', '21bd12dc183f740ee76f27b78eb39c8ad972a757', 'test@gmail.com', '09154654554', 'bachelor\\\'s Degree', '', ''),
(2022021, 'Ronnie', 'Nagum', 'Tatel', 'Valenzuela', 'Male', 'Single', '1999-09-09', 'valenzuela', 22, 'ronnienagumjr', '21bd12dc183f740ee76f27b78eb39c8ad972a757', 'test@gmail.com', '09256546565', 'Bachelor\\\'s Degree', '', ''),
(2022022, 'firstname', 'lastname', 'middlename', 'address', 'Male', 'Single', '1999-09-09', 'birthplace', 22, 'username', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'test@gmail.com', '09546565445', 'college', '', ''),
(2022024, 'test3', 'test3', 'test3', 'test3', 'Male', 'Single', '1999-09-09', 'test3', 22, 'test3', '3ebfa301dc59196f18593c45e519287a23297589', 'test@gmail.com', '09564589556', 'test3', '', ''),
(2022025, 'Ronnie', 'Nagum', 'Tatel', 'Valenzuela City', 'Male', 'Single', '1999-01-01', 'valenzuela City', 23, 'rnagumjr', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'ronniejrnagum@gmail.com', '9287324334', 'undergraduate degree', '', ''),
(2022026, 'Ronnie', 'Nagum', 'Tatel', '41 Matipuno St. Valenzuela System', 'Male', 'Single', '1999-09-09', 'Valenzuela City', 22, 'testing123', '4c0d2b951ffabd6f9a10489dc40fc356ec1d26d5', 'ronnie@gmail.com', '09221456654', 'College Degree', '', ''),
(2022027, 'Juan', 'Dela Cruz', 'Manito', 'Valenzuela City', 'Male', 'Single', '1999-01-16', 'Valenzuela', 23, 'testing', 'dc724af18fbdd4e59189f5fe768a5f8311527050', 'testing@gmail.com', '09213568998', 'Undergraduate Degree', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblattachmentfile`
--

CREATE TABLE `tblattachmentfile` (
  `ID` int(11) NOT NULL,
  `FILEID` varchar(30) DEFAULT NULL,
  `JOBID` int(11) NOT NULL,
  `FILE_NAME` varchar(90) NOT NULL,
  `FILE_LOCATION` varchar(255) NOT NULL,
  `USERATTACHMENTID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblattachmentfile`
--

INSERT INTO `tblattachmentfile` (`ID`, `FILEID`, `JOBID`, `FILE_NAME`, `FILE_LOCATION`, `USERATTACHMENTID`) VALUES
(2, '2147483647', 2, 'Resume', 'photos/27052018124027PLATENO FE95483.docx', 2018013),
(3, '20226912529', 4, 'Resume', 'photos/29052022061412IMG_20220520_234514.jpg', 2022016),
(4, '20226912531', 4, 'Resume', 'photos/05062022090458basic_accelerator.svg', 2022017),
(5, '20226912533', 4, 'Resume', 'photos/05062022090754basic_alarm.svg', 2022018),
(6, '20226912534', 4, 'Resume', 'photos/05062022093800basic_calculator.svg', 2022019),
(7, '20226912535', 4, 'Resume', 'photos/11062022064642IMG_20220603_213441.jpg', 2022020),
(8, '20226912536', 4, 'Resume', 'photos/11062022070340IMG_20220603_213441.jpg', 2022021),
(9, '20226912538', 4, 'Resume', 'photos/13072022051014index (3).html', 2022022),
(10, '20226912540', 4, 'Resume', 'photos/13072022053937asmlogin.svg', 2022023),
(11, '20226912541', 4, 'Resume', 'photos/13072022054058index (3).html', 2022024),
(12, '20226912542', 6, 'Resume', 'photos/16072022065439Self-Managing-Database.pdf', 2022025),
(13, '20226912543', 7, 'Resume', 'photos/19072022075653Self-Managing-Database.pdf', 2022025),
(14, '20226912544', 8, 'Resume', 'photos/23072022061632skills list.txt', 2022026),
(15, '20226912545', 10, 'Resume', 'photos/23072022080046Self-Managing-Database.pdf', 2022027);

-- --------------------------------------------------------

--
-- Table structure for table `tblautonumbers`
--

CREATE TABLE `tblautonumbers` (
  `AUTOID` int(11) NOT NULL,
  `AUTOSTART` varchar(30) NOT NULL,
  `AUTOEND` int(11) NOT NULL,
  `AUTOINC` int(11) NOT NULL,
  `AUTOKEY` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblautonumbers`
--

INSERT INTO `tblautonumbers` (`AUTOID`, `AUTOSTART`, `AUTOEND`, `AUTOINC`, `AUTOKEY`) VALUES
(1, '02983', 8, 1, 'userid'),
(2, '000', 78, 1, 'employeeid'),
(3, '0', 28, 1, 'APPLICANT'),
(4, '69125', 46, 1, 'FILEID');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `CATEGORYID` int(11) NOT NULL,
  `CATEGORY` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`CATEGORYID`, `CATEGORY`) VALUES
(10, 'Technology'),
(11, 'Managerial'),
(12, 'Engineer'),
(13, 'IT'),
(14, 'Civil Engineer'),
(15, 'HR'),
(23, 'Sales'),
(24, 'Banking'),
(25, 'Finance'),
(26, 'BPO'),
(27, 'Degital Marketing'),
(28, 'Shipping'),
(29, 'Programming'),
(30, 'Database Administration');

-- --------------------------------------------------------

--
-- Table structure for table `tblcompany`
--

CREATE TABLE `tblcompany` (
  `COMPANYID` int(11) NOT NULL,
  `COMPANYNAME` varchar(90) NOT NULL,
  `COMPANYADDRESS` varchar(90) NOT NULL,
  `COMPANYCONTACTNO` varchar(30) NOT NULL,
  `COMPANYSTATUS` varchar(90) NOT NULL,
  `COMPANYMISSION` text NOT NULL,
  `USERNAME` varchar(90) NOT NULL,
  `PASS` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcompany`
--

INSERT INTO `tblcompany` (`COMPANYID`, `COMPANYNAME`, `COMPANYADDRESS`, `COMPANYCONTACTNO`, `COMPANYSTATUS`, `COMPANYMISSION`, `USERNAME`, `PASS`) VALUES
(3, 'Copreros', 'Mabina', '035656', '', '', '', ''),
(4, 'Quest', 'Kabankalan City', '23165', '', '', 'user', '984816fd329622876e14907634264e6f332e9fb3'),
(6, 'Palacios Company', 'Kabankalan City', '0625656899', '', '', '', ''),
(7, 'IT Com', 'Kabankalan City', '04564123', '', '', '', ''),
(13, 'TEST', 'TEST', 'TEST', '', '', 'TEST', '984816fd329622876e14907634264e6f332e9fb3'),
(15, 'Naviu Tech', 'Berlin Germany', '+499999999', '', '', 'naviu', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8'),
(16, 'Besnard Consulting', 'Manila Philippines', '09216546556', '', '', 'besnardconsulting', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployees`
--

CREATE TABLE `tblemployees` (
  `INCID` int(11) NOT NULL,
  `EMPLOYEEID` varchar(30) NOT NULL,
  `FNAME` varchar(50) NOT NULL,
  `LNAME` varchar(50) NOT NULL,
  `MNAME` varchar(50) NOT NULL,
  `ADDRESS` varchar(90) NOT NULL,
  `BIRTHDATE` date NOT NULL,
  `BIRTHPLACE` varchar(90) NOT NULL,
  `AGE` int(11) NOT NULL,
  `SEX` varchar(30) NOT NULL,
  `CIVILSTATUS` varchar(30) NOT NULL,
  `TELNO` varchar(40) NOT NULL,
  `EMP_EMAILADDRESS` varchar(90) NOT NULL,
  `CELLNO` varchar(30) NOT NULL,
  `POSITION` varchar(50) NOT NULL,
  `WORKSTATS` varchar(90) NOT NULL,
  `EMPPHOTO` varchar(255) NOT NULL,
  `EMPUSERNAME` varchar(90) NOT NULL,
  `EMPPASSWORD` varchar(125) NOT NULL,
  `DATEHIRED` date NOT NULL,
  `COMPANYID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblemployees`
--

INSERT INTO `tblemployees` (`INCID`, `EMPLOYEEID`, `FNAME`, `LNAME`, `MNAME`, `ADDRESS`, `BIRTHDATE`, `BIRTHPLACE`, `AGE`, `SEX`, `CIVILSTATUS`, `TELNO`, `EMP_EMAILADDRESS`, `CELLNO`, `POSITION`, `WORKSTATS`, `EMPPHOTO`, `EMPUSERNAME`, `EMPPASSWORD`, `DATEHIRED`, `COMPANYID`) VALUES
(76, '2018001', 'Chambe', 'Narciso', 'Captain', 'mabinay', '1992-01-23', 'Mabinay', 26, 'Male', 'Married', '032656', 'chambe@yahoo.com', '', 'Fuel Tender', '', '', '2018001', 'f3593fd40c55c33d1788309d4137e82f5eab0dea', '2018-05-23', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tblfeedback`
--

CREATE TABLE `tblfeedback` (
  `FEEDBACKID` int(11) NOT NULL,
  `APPLICANTID` int(11) NOT NULL,
  `REGISTRATIONID` int(11) NOT NULL,
  `FEEDBACK` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblfeedback`
--

INSERT INTO `tblfeedback` (`FEEDBACKID`, `APPLICANTID`, `REGISTRATIONID`, `FEEDBACK`) VALUES
(2, 2022016, 3, 'Pending'),
(3, 2022024, 9, 'Pending'),
(4, 2022017, 4, 'Pending'),
(5, 2022021, 7, 'Pending'),
(6, 2022020, 6, 'Pending'),
(7, 2022022, 8, 'Pending'),
(8, 2022019, 5, 'Pending'),
(9, 2022025, 10, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `tbljob`
--

CREATE TABLE `tbljob` (
  `JOBID` int(11) NOT NULL,
  `COMPANYID` int(11) NOT NULL,
  `CATEGORY` varchar(250) NOT NULL,
  `OCCUPATIONTITLE` varchar(90) NOT NULL,
  `REQ_NO_EMPLOYEES` int(11) NOT NULL,
  `SALARIES` double NOT NULL,
  `DURATION_EMPLOYEMENT` varchar(90) NOT NULL,
  `QUALIFICATION_WORKEXPERIENCE` text NOT NULL,
  `JOBDESCRIPTION` text NOT NULL,
  `PREFEREDSEX` varchar(30) NOT NULL,
  `SECTOR_VACANCY` text NOT NULL,
  `JOBSTATUS` varchar(90) NOT NULL,
  `DATEPOSTED` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbljob`
--

INSERT INTO `tbljob` (`JOBID`, `COMPANYID`, `CATEGORY`, `OCCUPATIONTITLE`, `REQ_NO_EMPLOYEES`, `SALARIES`, `DURATION_EMPLOYEMENT`, `QUALIFICATION_WORKEXPERIENCE`, `JOBDESCRIPTION`, `PREFEREDSEX`, `SECTOR_VACANCY`, `JOBSTATUS`, `DATEPOSTED`) VALUES
(1, 2, 'Technology', 'ISD', 6, 15000, 'jan 30', 'Two year Experience', 'We are looking for bachelor of science in information technology.\r\nasdasdasd', 'Male/Female', 'yes', '', '2018-05-20 00:00:00'),
(2, 2, 'Technology', 'Accounting', 1, 15000, 'may 20', 'Two years Experience', 'We are looking for bachelor of science in Acountancy', 'Female', 'yes', '', '2018-05-20 02:33:00'),
(4, 4, 'IT', 'IT Intern', 3, 6000, '50 Days', 'OJT Candidate', 'Description', 'Male', 'CCIS', '', '2022-05-29 06:12:00'),
(5, 3, 'IT', 'Student Assistant', 3, 6000, '90 Days', '4th Year College', 'Test', 'Male', 'CCIS', '', '2022-07-13 18:36:00'),
(6, 4, 'IT', 'test', 3, 6000, '50 Days', 'test', 'test', 'Male', 'test', '', '2022-07-13 18:45:00'),
(7, 13, 'IT', 'IT Intern', 3, 6000, '50 Days', 'None', 'Test', 'Male/Female', 'Test', '', '2022-07-19 19:52:00'),
(8, 15, 'Programming', 'Web Developer Intern', 3, 0, '500', 'Qualifications', 'Description', 'Male/Female', 'IT Dept', '', '2022-07-23 06:07:00'),
(9, 16, 'Programming', 'Web Developer Intern', 3, 0, '500', 'Test', 'Description', 'Male/Female', 'Department', '', '2022-07-23 07:57:00'),
(10, 16, 'Programming', 'Web Developer Intern 2', 3, 0, '500', 'Test', 'Description', 'Male/Female', 'IT Dept', '', '2022-07-23 07:58:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbljobregistration`
--

CREATE TABLE `tbljobregistration` (
  `REGISTRATIONID` int(11) NOT NULL,
  `COMPANYID` int(11) NOT NULL,
  `JOBID` int(11) NOT NULL,
  `APPLICANTID` int(11) NOT NULL,
  `APPLICANT` varchar(90) NOT NULL,
  `REGISTRATIONDATE` date NOT NULL,
  `REMARKS` varchar(255) NOT NULL DEFAULT 'Pending',
  `FILEID` varchar(30) DEFAULT NULL,
  `PENDINGAPPLICATION` tinyint(1) NOT NULL DEFAULT 1,
  `HVIEW` tinyint(1) NOT NULL DEFAULT 1,
  `DATETIMEAPPROVED` datetime NOT NULL,
  `USERID` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbljobregistration`
--

INSERT INTO `tbljobregistration` (`REGISTRATIONID`, `COMPANYID`, `JOBID`, `APPLICANTID`, `APPLICANT`, `REGISTRATIONDATE`, `REMARKS`, `FILEID`, `PENDINGAPPLICATION`, `HVIEW`, `DATETIMEAPPROVED`, `USERID`) VALUES
(1, 2, 2, 2018013, 'Kim Domingo', '2018-05-27', 'Ive seen your work and its really interesting', '2147483647', 0, 1, '2018-05-26 16:13:01', NULL),
(2, 2, 2, 2018015, 'Janry Tan', '2018-05-26', 'aasd', '2147483647', 0, 0, '2018-05-28 14:14:45', NULL),
(3, 4, 4, 2022016, 'Ronnie Nagum', '2022-05-29', 'Pending', '20226912529', 0, 0, '2022-07-14 00:59:40', NULL),
(4, 4, 4, 2022017, 'Test test', '2022-06-05', 'Pending', '20226912531', 0, 0, '2022-07-14 00:59:47', NULL),
(5, 4, 4, 2022019, 'Ronnie T', '2022-06-05', 'Pending', '20226912534', 0, 0, '2022-07-14 00:59:55', NULL),
(6, 4, 4, 2022020, 'Ronnie Nagum', '2022-06-11', 'Pending', '20226912535', 0, 0, '2022-07-14 00:59:32', NULL),
(7, 4, 4, 2022021, 'Ronnie Nagum', '2022-06-11', 'Pending', '20226912536', 0, 0, '2022-07-14 00:59:27', NULL),
(8, 4, 4, 2022022, 'firstname lastname', '2022-07-13', 'Pending', '20226912538', 0, 0, '2022-07-14 00:59:44', NULL),
(9, 4, 4, 2022024, 'test3 test3', '2022-07-13', 'Pending', '20226912541', 0, 0, '2022-07-14 00:59:50', NULL),
(10, 4, 6, 2022025, 'Ronnie Nagum', '2022-07-16', 'Pending', '20226912542', 0, 0, '2022-07-16 12:56:29', NULL),
(11, 13, 7, 2022025, 'Ronnie Nagum', '2022-07-19', 'Pending', '20226912543', 1, 1, '2022-07-19 19:56:00', NULL),
(12, 15, 8, 2022026, 'Ronnie Nagum', '2022-07-23', 'Pending', '20226912544', 1, 1, '2022-07-23 06:16:00', NULL),
(13, 16, 10, 2022027, 'Juan Dela Cruz', '2022-07-23', 'Pending', '20226912545', 1, 1, '2022-07-23 08:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblskills`
--

CREATE TABLE `tblskills` (
  `id` int(11) NOT NULL,
  `applicant_id` int(11) DEFAULT NULL,
  `job_id` int(11) DEFAULT NULL,
  `skill` varchar(100) NOT NULL,
  `rating` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblskills`
--

INSERT INTO `tblskills` (`id`, `applicant_id`, `job_id`, `skill`, `rating`, `category_id`) VALUES
(8, NULL, 7, 'Database Administration', 0, 13),
(9, NULL, 7, 'Programming', 0, 13),
(10, 2022025, NULL, 'Database Administration', 7, 13),
(11, 2022025, NULL, 'Programming', 9, 13),
(12, 2022026, NULL, 'vb.net', 8, 29),
(13, 2022026, NULL, 'C Programming', 9, 29),
(14, NULL, 10, 'C Programming', 0, 29),
(15, 2022027, NULL, 'Programming', 9, 29);

-- --------------------------------------------------------

--
-- Table structure for table `tbluserfeedback`
--

CREATE TABLE `tbluserfeedback` (
  `USERFEEDBACKID` int(11) NOT NULL,
  `DESCRIPTION` text NOT NULL,
  `USERTYPE` varchar(50) NOT NULL,
  `COMPANYID` int(11) NOT NULL,
  `CREATEDBY` varchar(50) NOT NULL,
  `CREATEDATE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbluserfeedback`
--

INSERT INTO `tbluserfeedback` (`USERFEEDBACKID`, `DESCRIPTION`, `USERTYPE`, `COMPANYID`, `CREATEDBY`, `CREATEDATE`) VALUES
(5, 'test', '', 3, '2022016', '2022-06-09 15:21:03'),
(6, 'test', '', 4, '2022016', '2022-06-11 04:48:11'),
(7, 'test', 'Administrator', 4, '2022019', '2022-06-11 05:04:41'),
(8, 'testing', 'Administrator', 16, '2022027', '2022-07-23 06:03:10');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `USERID` varchar(30) NOT NULL,
  `FULLNAME` varchar(40) NOT NULL,
  `USERNAME` varchar(90) NOT NULL,
  `PASS` varchar(90) NOT NULL,
  `ROLE` varchar(30) NOT NULL,
  `PICLOCATION` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`USERID`, `FULLNAME`, `USERNAME`, `PASS`, `ROLE`, `PICLOCATION`) VALUES
('00018', 'Campcodes', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator', 'photos/Koala.jpg'),
('2018001', 'Chambe Narciso', 'Narciso', 'f3593fd40c55c33d1788309d4137e82f5eab0dea', 'Employee', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblapplicants`
--
ALTER TABLE `tblapplicants`
  ADD PRIMARY KEY (`APPLICANTID`);

--
-- Indexes for table `tblattachmentfile`
--
ALTER TABLE `tblattachmentfile`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblautonumbers`
--
ALTER TABLE `tblautonumbers`
  ADD PRIMARY KEY (`AUTOID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`CATEGORYID`);

--
-- Indexes for table `tblcompany`
--
ALTER TABLE `tblcompany`
  ADD PRIMARY KEY (`COMPANYID`);

--
-- Indexes for table `tblemployees`
--
ALTER TABLE `tblemployees`
  ADD PRIMARY KEY (`INCID`),
  ADD UNIQUE KEY `EMPLOYEEID` (`EMPLOYEEID`);

--
-- Indexes for table `tblfeedback`
--
ALTER TABLE `tblfeedback`
  ADD PRIMARY KEY (`FEEDBACKID`);

--
-- Indexes for table `tbljob`
--
ALTER TABLE `tbljob`
  ADD PRIMARY KEY (`JOBID`);

--
-- Indexes for table `tbljobregistration`
--
ALTER TABLE `tbljobregistration`
  ADD PRIMARY KEY (`REGISTRATIONID`);

--
-- Indexes for table `tblskills`
--
ALTER TABLE `tblskills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbluserfeedback`
--
ALTER TABLE `tbluserfeedback`
  ADD PRIMARY KEY (`USERFEEDBACKID`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`USERID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblapplicants`
--
ALTER TABLE `tblapplicants`
  MODIFY `APPLICANTID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2022028;

--
-- AUTO_INCREMENT for table `tblattachmentfile`
--
ALTER TABLE `tblattachmentfile`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblautonumbers`
--
ALTER TABLE `tblautonumbers`
  MODIFY `AUTOID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `CATEGORYID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tblcompany`
--
ALTER TABLE `tblcompany`
  MODIFY `COMPANYID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblemployees`
--
ALTER TABLE `tblemployees`
  MODIFY `INCID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `tblfeedback`
--
ALTER TABLE `tblfeedback`
  MODIFY `FEEDBACKID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbljob`
--
ALTER TABLE `tbljob`
  MODIFY `JOBID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbljobregistration`
--
ALTER TABLE `tbljobregistration`
  MODIFY `REGISTRATIONID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblskills`
--
ALTER TABLE `tblskills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbluserfeedback`
--
ALTER TABLE `tbluserfeedback`
  MODIFY `USERFEEDBACKID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
