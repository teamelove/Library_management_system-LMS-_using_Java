-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 20, 2018 at 11:58 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.10
-- LAB5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lab44`
--

-- --------------------------------------------------------

--
-- Table structure for table `cource`
--

DROP TABLE IF EXISTS `cource`;
CREATE TABLE IF NOT EXISTS `cource` (
  `EMP_ID` varchar(45) NOT NULL,
  `COURSE_CODE` varchar(67) NOT NULL,
  `CREDIT_HOURS` int(11) NOT NULL,
  `COURSE_NAME` varchar(54) NOT NULL,
  KEY `EMP_ID` (`EMP_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cource`
--

INSERT INTO `cource` (`EMP_ID`, `COURSE_CODE`, `CREDIT_HOURS`, `COURSE_NAME`) VALUES
('MIT/1999/1', ' OOP', 3, ' OBJECT ORIENTED PROGRAMMING'),
('MIT/1999/2', ' FDBS', 4, 'FUNDAMENTALS OF DATABASE SYSTEMS'),
('MIT/1999/4', ' DS', 4, ' DATA STRUCTURES'),
('MIT/1999/5', ' RAD', 4, ' RAPID APPLICATION DEVELOPMENT'),
('MIT/1999/6', ' SAS', 4, ' SIGNALS AND SYSTEMS'),
('MIT/1999/7', ' DC', 3, ' DATA COMMUNICATIONS'),
('MIT/2000/1', ' CM', 3, ' COMPUTATIONAL METHODS'),
('MIT/2000/2', ' PS', 3, ' POWER SYSTEMS'),
('MIT/2000/5', ' MS', 4, 'MICROWAVE SYSTEMS'),
('MIT/2000/6', ' DS', 4, ' DIGITAL SIGNAL PROCESSING'),
('MIT/2000/7', ' MC', 4, ' MICROCONTROLLERS');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
CREATE TABLE IF NOT EXISTS `department` (
  `DEPT_ID` varchar(57) NOT NULL,
  `DEPT_CODE` varchar(89) NOT NULL,
  `DEPT_NAME` varchar(67) NOT NULL,
  KEY `EMP_ID` (`DEPT_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DEPT_ID`, `DEPT_CODE`, `DEPT_NAME`) VALUES
('MIT/1999/1', 'IT', 'INFORMATION TECHNOLOGY'),
('MIT/1999/2', 'IT', 'COMPUTER SCINCE AND ENGINEERING'),
('MIT/1999/3', 'IT', 'INFORMATION TECHNOLOGY'),
('MIT/1999/4', 'IT', 'INFORMATION TECHNOLOGY'),
('MIT/1999/5', 'IT', 'INFORMATION TECHNOLOGY'),
('MIT1999/6', 'ECE', 'ELECTRONICS AND COMMUNICATION ENGINEERING'),
('MIT/1999/7', 'CSE', 'COMPUTER SCINCE AND ENGINEERING'),
('MIT/2000/1', 'CSE', 'COMPUTER SCINCE AND ENGINEERING'),
('MIT/2000/2', 'ECE', 'ELECTRONICS AND COMMUNICATION ENGINEERING'),
('MIT/2000/3', ' CSE', 'COMPUTER SCIENCE AND ENGINEERING'),
('MIT/2000/4', ' EEE', ' ELECTRICAL AND ELECTRONICS ENGINEERING'),
('MIT/2000/5', ' ECE', ' ELECTRONICS AND COMMUNICATION ENGINEERING'),
('MIT/2000/6', ' ECE', ' ELECTRONICS AND COMMUNICATION ENGINEERING'),
('MIT/2000/7', 'EEE ', 'ELECTRICAL AND ELECTRONICS ENGINEERING'),
('MIT/2000/8', ' EEE', ' ELECTRICAL AND ELECTRONICS ENGINEERING'),
('MIT/2000/9', ' ECE', ' ELECTRONICS AND COMMUNICATION ENGINEERING');

-- --------------------------------------------------------

--
-- Table structure for table `employee2`
--

DROP TABLE IF EXISTS `employee2`;
CREATE TABLE IF NOT EXISTS `employee2` (
  `EMP_ID` varchar(67) NOT NULL,
  `EMP_FNAME` varchar(45) DEFAULT NULL,
  `EMP_LNAME` varchar(67) NOT NULL,
  `EMP_GENDER` varchar(54) NOT NULL DEFAULT 'M',
  `EMP_AGE` int(11) NOT NULL,
  `EMP_SELARY` int(11) NOT NULL,
  PRIMARY KEY (`EMP_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee2`
--

INSERT INTO `employee2` (`EMP_ID`, `EMP_FNAME`, `EMP_LNAME`, `EMP_GENDER`, `EMP_AGE`, `EMP_SELARY`) VALUES
('MIT/1999/1', 'ABEBA', 'YEMANE', 'F', 26, 2800),
('MIT/1999/2', 'BINYAM', 'HAILU', 'M', 200, 1900),
('MIT/1999/3', 'DESTA', 'KIROS', 'M', 30, 2000),
('MIT/1999/4', 'EYOB', 'DEGEFU', 'M', 45, 2010),
('MIT/1999/5', 'AFIKADU', 'TESFAY', 'M', 26, 900),
('MIT/1999/6', 'NEGASI', 'SYUM', 'M', 29, 1900),
('MIT/1999/7', 'REDAE', 'HALEFOM', 'M', 22, 1700),
('MIT/1999/8', 'PETROS', 'ZENEBE', 'M', 20, 1200),
('MIT/1999/9', 'YEMANE', 'TESFAY', 'M', 18, 12000),
('MIT/1999/10', 'ZEWDE', 'TSEGAY', 'M', 15, 13000),
('MIT/2000/1', 'ASMELASH', 'TSEGAY', 'M', 29, 11000),
('MIT/2000/2', 'BAZABIH', 'YFTER', 'M', 310, 1982),
('MIT/2000/3', 'CHERNET', 'TE-AMRAT', 'M', 20, 1900),
('MIT/2000/4', 'HAGOS', 'ABRHA', 'M', 27, 4000),
('MIT/2000/5', 'KAHSAY', 'G/HAWERIA', 'M', 18, 21000),
('MIT/2000/6', 'LEGESSE', 'WELDAY', 'M', 15, 31000),
('MIT/2000/7', 'MAASHO', 'FITSUM', 'M', 29, 1000),
('MIT/2000/8', 'MIZAN', 'AREGAWI', 'M', 301, 2982),
('MIT/2000/9', 'MEARG', 'ABRHA', 'M', 28, 1900),
('MIT/2000/10', 'FREWEINI', 'GEBRU', 'F', 20, 1980),
('MIT/UR/168/09', 'BAHRE', 'FISSHA', 'M', 20, 10230);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- 1. You were using the describe (or desc) command many times in your previous lab
exercises. You were using it to know the description of your table. Do you know
any other option to know the description of your table? Try this: mysql> SHOW
COLUMNS FROM table_name; where table_name is the name of your table.
What do you observe?
      show columns from employee2;
      -- 2. Add a column called ‘EMP_MNAME’ to the EMPLOYEE table just after the
EMP_FNAME.
   alter table employee2 add column EMP_MINAME varchar(59) not null after EMP_FNAME;
   -- 3. Add a column called ‘EMP_SSN’ to the EMPLOYEE table. This column must be
the first column of your table.
   
    alter table employee2 add column EMP_SSN varchar(59) not null  FIRST;
    -- 4. Change the name of the column EMP_SSN to
EMPLOYEE_SOCIAL_SECURITY_NUMBER. Use char (50) as the data type of
EMPLOYEE_SOCIAL_SECURITY_NUMBER. You are not allowed to use the
DROP COMMAND.
  alter table employee2 change EMP_SSN  EMP_SOCAIL_SECURITY_NUMBER char(50) not null;
  -- 5. Change the data type of EMPLOYEE_SOCIAL_SECURITY_NUMBER to VARCHAR
(50) without using MODIFY COMMAND.
  alter table employee2 change  EMP_SOCAIL_SECURITY_NUMBER  EMP_SOCAIL_SECURITY_NUMBER varchar(50) not null;
  -- 6. Remove the default value of EMP_GENDER. And then make it to be ‘F’;
    alter table employee2 alter EMP_GENDER SET DEFUALT "F";
  -- 7. Now try to change the engine type of your table to be ‘MyISAM’ or ‘INNODB’.
--  8. Add a column ‘WORKING_HOURS’ into the employee table without using the not
null constraint. You will see that this column has null values initially. Insert
values into this column for some rows.
  update employee2 set EMP_WORKING_HOURS=67 WHERE EMP_AGE>30;
  -- 9. Write a query that retrieves the details of the employee with null value in the
column working-hours
select* from employee2 where EMP_WORKING_HOURS is NULL;
-- 10. Modify the above query so that it will retrieve the details of the employees in
which the working _hours column is not null.
  select* from employee2 where EMP_WORKING_HOURS is NOT NULL;
  -- 11. Change the name of the column EMP_AGE to DoB. Use DATE as the data type
of DoB. You are not allowed to use the DROP COMMAND.
 
  -- 12. Update the values of DoB as follows:
EMP_ID DoB EMP_ID DoB
MIT/1999/1 1992-12-20 MIT/1999/2 1818-12-12
MIT/1999/3 1988-10-28 MIT/1999/4 1973-05-21
MIT/1999/5 1992-12-20 MIT/1999/6 1989-10-10
MIT/1999/7 1996-11-12 MIT/1999/8 1998-03-23
MIT/1999/9 2000-07-07 MIT/1999/10 2003-01-27
MIT/2000/1 1989-10-10 MIT/2000/2 1717-09-09
MIT/2000/3 1998-03-23 MIT/2000/4 1991-12-24
MIT/2000/5 2000-12-12 MIT/2000/6 2003-04-04
MIT/2000/7 1989-10-23 MIT/2000/8 1717-08-08
MIT/2000/9 1990-20-20 MIT/2002/1 1998-11-21