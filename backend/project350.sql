-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2023 at 08:01 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project350`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(15) NOT NULL,
  `admin_name` varchar(35) NOT NULL,
  `admin_email` varchar(35) NOT NULL,
  `designation` varchar(35) NOT NULL,
  `password` varchar(69) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_name`, `admin_email`, `designation`, `password`) VALUES
(1000, 'Mr. Shailendra Sutradhar', 'sutadhar@gmail.com', 'Exam Controller', '$2b$10$4nsnyW6OZuvdoCEufIrlJe3Tb0OCr7V/vSKPXwOwmkl9MNHtY9Pnq');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_approval_status`
--

CREATE TABLE `tbl_approval_status` (
  `reg_no` int(11) NOT NULL,
  `semester` varchar(35) NOT NULL,
  `session` varchar(40) NOT NULL,
  `USN` varchar(40) NOT NULL,
  `Application_Date` datetime(6) DEFAULT NULL,
  `Department_Head` varchar(35) DEFAULT NULL,
  `Department_Head_Status` varchar(35) DEFAULT NULL,
  `Department_Head_Approved_Date` datetime(6) DEFAULT NULL,
  `Exam_Controller` varchar(35) DEFAULT NULL,
  `Exam_Controller_Status` varchar(35) DEFAULT NULL,
  `Exam_Controller_Approved_Date` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_approval_status`
--

INSERT INTO `tbl_approval_status` (`reg_no`, `semester`, `session`, `USN`, `Application_Date`, `Department_Head`, `Department_Head_Status`, `Department_Head_Approved_Date`, `Exam_Controller`, `Exam_Controller_Status`, `Exam_Controller_Approved_Date`) VALUES
(2017831041, '5th', '2018-2019', '2021-1', '2022-11-23 13:01:11.411000', 'Prof M. Jahirul Islam, PhD., PEng.', 'DISAPPROVED', '2023-08-28 16:27:31.232000', 'Mr. Shailendra Sutradhar', 'APPROVED', '2022-11-23 13:55:27.556000'),
(2018831001, '5th', '2018-2019', '2021-1', '2022-11-23 13:01:57.907000', 'Prof M. Jahirul Islam, PhD., PEng.', 'APPROVED', '2022-11-23 13:59:34.056000', 'Mr. Shailendra Sutradhar', 'APPROVED', '2022-11-23 13:55:37.147000'),
(2018831012, '5th', '2018-2019', '2021-1', '2022-11-23 13:05:21.012000', 'Prof M. Jahirul Islam, PhD., PEng.', 'APPROVED', '2022-11-23 13:59:35.107000', 'Mr. Shailendra Sutradhar', 'APPROVED', '2022-11-23 13:55:41.059000'),
(2018831041, '5th', '2018-2019', '2021-1', '2022-11-23 13:15:13.922000', 'Prof M. Jahirul Islam, PhD., PEng.', 'APPROVED', '2022-11-23 13:59:36.673000', 'Mr. Shailendra Sutradhar', 'APPROVED', '2022-11-23 13:55:45.486000'),
(2018831042, '5th', '2018-2019', '2021-1', '2022-11-23 13:11:53.082000', 'Prof M. Jahirul Islam, PhD., PEng.', 'APPROVED', '2022-11-23 13:59:37.823000', 'Mr. Shailendra Sutradhar', 'APPROVED', '2022-11-23 13:55:48.224000'),
(2018831067, '5th', '2018-2019', '2021-1', '2022-11-23 13:06:23.484000', 'Prof M. Jahirul Islam, PhD., PEng.', 'APPROVED', '2022-11-23 13:59:39.545000', 'Mr. Shailendra Sutradhar', 'APPROVED', '2022-11-23 13:55:50.470000'),
(2018831069, '5th', '2018-2019', '2021-1', '2022-11-23 13:07:38.648000', 'Prof M. Jahirul Islam, PhD., PEng.', 'APPROVED', '2022-11-23 13:59:40.656000', 'Mr. Shailendra Sutradhar', 'APPROVED', '2022-11-23 13:55:52.306000'),
(2018831072, '5th', '2018-2019', '2021-1', '2022-11-23 13:13:47.794000', 'Prof M. Jahirul Islam, PhD., PEng.', 'APPROVED', '2022-11-23 13:59:42.224000', 'Mr. Shailendra Sutradhar', 'APPROVED', '2022-11-23 13:55:54.595000'),
(2018831073, '5th', '2018-2019', '2021-1', '2022-11-23 13:26:58.401000', 'Prof M. Jahirul Islam, PhD., PEng.', 'APPROVED', '2022-11-23 13:59:43.287000', 'Mr. Shailendra Sutradhar', 'APPROVED', '2022-11-23 13:55:57.358000');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course`
--

CREATE TABLE `tbl_course` (
  `course_id` varchar(36) NOT NULL,
  `course_title` varchar(70) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `course_credits` decimal(3,1) DEFAULT NULL,
  `course_type` varchar(15) DEFAULT NULL,
  `course_isMajor` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_course`
--

INSERT INTO `tbl_course` (`course_id`, `course_title`, `dept_id`, `course_credits`, `course_type`, `course_isMajor`) VALUES
('BNG 105W', ' Bangla Language', 100, 3.0, 'Theory', 'Non-Major'),
('BUS 201W', 'Cost and Management Accounting', 100, 3.0, 'Theory', 'Non-Major'),
('BUS 301W', 'Entrepreneurship Development', 100, 2.0, 'Theory', 'Non-Major'),
('CSE 219W', 'Computer Architecture', 100, 3.0, 'Theory', 'Non-Major'),
('CSE 323W', 'Computer Networking', 100, 3.0, 'Theory', 'Non-Major'),
('CSE 324W', 'Computer Networking Lab', 100, 1.5, 'Lab', 'Non-Major'),
('ECO 205W', 'Principles of Economics', 100, 3.0, 'Theory', 'Non-Major'),
('EEE 101W', ' Basic Electrical and Electronic Circuits', 100, 3.0, 'Theory', 'Non-Major'),
('EEE 102W', 'Basic Electrical and Electronic Circuits Lab', 100, 1.5, 'Lab', 'Non-Major'),
('ENG 101W', 'Effective Communication in English', 100, 2.0, 'Theory', 'Non-Major'),
('ENG 102W', 'English Language Lab 1', 100, 1.0, 'Lab', 'Non-Major'),
('MAT 105W', 'Coordinate Geometry and Calculus', 100, 3.0, 'Theory', 'Non-Major'),
('MAT 107W', ' Linear and Abstract Algebra', 100, 3.0, 'Theory', 'Non-Major'),
('PHY 102W', 'Basic Physics Lab', 100, 1.5, 'Lab', 'Non-Major'),
('PHY 103W', 'Mechanics, Wave, Heat & Thermodynamics', 100, 3.0, 'Theory', 'Non-Major'),
('SOC 203W', 'Sociology for Engineers', 100, 3.0, 'Theory', 'Non-Major'),
('STA 101W', 'Basic Statistics and Probability', 100, 3.0, 'Theory', 'Non-Major'),
('SWE 121', 'Structured Programming Language', 100, 3.0, 'Theory', 'Major'),
('SWE 122', 'Structured Programming Language Lab', 100, 1.5, 'Lab', 'Major'),
('SWE 123', 'Discrete Mathematics', 100, 3.0, 'Theory', 'Major'),
('SWE 125', 'Introduction to Software Engineering', 100, 3.0, 'Theory', 'Major'),
('SWE 127', 'Data Structure', 100, 3.0, 'Theory', 'Major'),
('SWE 128', 'Data Structure Lab', 100, 2.0, 'Lab', 'Major'),
('SWE 150', ' Project Work-I', 100, 2.0, 'Lab', 'Major'),
('SWE 222', 'Introduction to Competitive Programming', 100, 2.0, 'Lab', 'Major'),
('SWE 223', 'Object Oriented Programming', 100, 3.0, 'Theory', 'Major'),
('SWE 224', 'Object Oriented Programming Language Lab', 100, 2.0, 'Lab', 'Major'),
('SWE 225', 'Software Requirement Engineering', 100, 2.0, 'Theory', 'Major'),
('SWE 226', 'Software Requirement Engineering Lab', 100, 1.5, 'Lab', 'Major'),
('SWE 227', 'Theory of Computation', 100, 2.0, 'Theory', 'Major'),
('SWE 229', 'Algorithm Design & Analysis', 100, 3.0, 'Theory', 'Major'),
('SWE 230', 'Algorithm Design & Analysis Lab', 100, 1.5, 'Lab', 'Major'),
('SWE 231', 'Numerical Analysis', 100, 2.0, 'Theory', 'Major'),
('SWE 232', 'Numerical Analysis Lab', 100, 1.5, 'Lab', 'Major'),
('SWE 233', '	 Operating Systems and System Programming', 100, 3.0, 'Theory', 'Major'),
('SWE 234', 'Operating Systems and System Programming lab', 100, 1.5, 'Lab', 'Major'),
('SWE 235', 'Ethics and Cyber Law', 100, 2.0, 'Theory', 'Major'),
('SWE 250', 'Project Work -II', 100, 2.0, 'Lab', 'Major'),
('SWE 321', 'Software Architecture and Design Patterns ', 100, 3.0, 'Theory', 'Major'),
('SWE 322', 'Software Architecture and Design Patterns Lab', 100, 1.5, 'Lab', 'Major'),
('SWE 325', 'Distributed System', 100, 2.0, 'Theory', 'Major'),
('SWE 326', 'Distributed System Lab', 100, 1.5, 'Lab', 'Major'),
('SWE 327', 'Database Management System', 100, 3.0, 'Theory', 'Major'),
('SWE 328', 'Database management System Lab', 100, 2.0, 'Lab', 'Major'),
('SWE 330', 'Web Technologies', 100, 2.0, 'Lab', 'Major'),
('SWE 331', 'Software Usability and Metrics', 100, 2.0, 'Theory', 'Major'),
('SWE 333', 'Software Verification and Validation', 100, 2.0, 'Theory', 'Major'),
('SWE 334', 'Software Verification and Validation Lab', 100, 1.5, 'Lab', 'Major'),
('SWE 335', 'Introduction to Data Science', 100, 2.0, 'Theory', 'Major'),
('SWE 336', 'Introduction to Data Science Lab', 100, 1.5, 'Lab', 'Major'),
('SWE 337', 'Computer, Data and Network Security', 100, 2.0, 'Theory', 'Major'),
('SWE 338', 'Computer, Data and Network Security Lab', 100, 1.5, 'Lab', 'Major'),
('SWE 339', 'Management Information System', 100, 2.0, 'Theory', 'Major'),
('SWE 342', 'Technical Writing and Presentation', 100, 2.0, 'Lab', 'Major'),
('SWE 350', 'Project Work-III', 100, 2.0, 'Lab', 'Major');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_courseprerequisite`
--

CREATE TABLE `tbl_courseprerequisite` (
  `course_id` varchar(36) DEFAULT NULL,
  `prerequisite_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department`
--

CREATE TABLE `tbl_department` (
  `dept_id` int(11) NOT NULL,
  `dept_name` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_department`
--

INSERT INTO `tbl_department` (`dept_id`, `dept_name`) VALUES
(100, 'Software Engineering'),
(101, 'Computer Science and Engineering'),
(102, 'Electrical and Electronic Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_offer`
--

CREATE TABLE `tbl_offer` (
  `dept_id` int(10) DEFAULT NULL,
  `course_id` varchar(15) NOT NULL,
  `semester` varchar(35) NOT NULL,
  `session` varchar(40) NOT NULL,
  `USN` varchar(40) NOT NULL,
  `year` decimal(4,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_offer`
--

INSERT INTO `tbl_offer` (`dept_id`, `course_id`, `semester`, `session`, `USN`, `year`) VALUES
(100, 'BUS 201W', '3rd', '2019-2020', '2021-1', 2021),
(100, 'CSE 219W', '3rd', '2019-2020', '2021-1', 2021),
(100, 'CSE 323W', '5th', '2018-2019', '2021-1', 2021),
(100, 'CSE 324W', '5th', '2018-2019', '2021-1', 2021),
(100, 'SOC 203W', '3rd', '2019-2020', '2021-1', 2021),
(100, 'SWE 222', '3rd', '2019-2020', '2021-1', 2021),
(100, 'SWE 223', '3rd', '2019-2020', '2021-1', 2021),
(100, 'SWE 224', '3rd', '2019-2020', '2021-1', 2021),
(100, 'SWE 225', '3rd', '2019-2020', '2021-1', 2021),
(100, 'SWE 226', '3rd', '2019-2020', '2021-1', 2021),
(100, 'SWE 321', '5th', '2018-2019', '2021-1', 2021),
(100, 'SWE 322', '5th', '2018-2019', '2021-1', 2021),
(100, 'SWE 325', '5th', '2018-2019', '2021-1', 2021),
(100, 'SWE 326', '5th', '2018-2019', '2021-1', 2021),
(100, 'SWE 327', '5th', '2018-2019', '2021-1', 2021),
(100, 'SWE 328', '5th', '2018-2019', '2021-1', 2021),
(100, 'SWE 330', '5th', '2018-2019', '2021-1', 2021);

-- --------------------------------------------------------

--
-- Stand-in structure for view `tbl_result`
-- (See below for the actual view)
--
CREATE TABLE `tbl_result` (
`reg_no` int(11)
,`std_name` varchar(40)
,`session` varchar(35)
,`course_id` varchar(36)
,`course_credits` decimal(3,1)
,`course_type` varchar(15)
,`gpa` decimal(3,2)
,`letter_grade` varchar(10)
,`semester` varchar(35)
,`courseSession` varchar(40)
,`USN` varchar(40)
);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_result_lab`
--

CREATE TABLE `tbl_result_lab` (
  `reg_no` int(11) DEFAULT NULL,
  `course_id` varchar(36) DEFAULT NULL,
  `first_teacher_id` int(11) DEFAULT NULL,
  `total_mark` decimal(4,1) DEFAULT NULL,
  `gpa` decimal(3,2) DEFAULT NULL,
  `letter_grade` varchar(10) DEFAULT NULL,
  `semester` varchar(35) DEFAULT NULL,
  `session` varchar(40) DEFAULT NULL,
  `USN` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_result_lab`
--

INSERT INTO `tbl_result_lab` (`reg_no`, `course_id`, `first_teacher_id`, `total_mark`, `gpa`, `letter_grade`, `semester`, `session`, `USN`) VALUES
(2017831041, 'SWE 330', 1, 80.0, 4.00, 'A+', '5th', '2018-2019', '2021-1'),
(2018831001, 'SWE 330', 1, 78.0, 3.75, 'A', '5th', '2018-2019', '2021-1'),
(2018831005, 'SWE 330', 1, 75.0, 3.75, 'A', '5th', '2018-2019', '2021-1'),
(2018831011, 'SWE 330', 1, 80.0, 4.00, 'A+', '5th', '2018-2019', '2021-1'),
(2018831012, 'SWE 330', 1, 78.0, 3.75, 'A', '5th', '2018-2019', '2021-1'),
(2018831041, 'SWE 330', 1, 80.0, 4.00, 'A+', '5th', '2018-2019', '2021-1'),
(2018831042, 'SWE 330', 1, 78.0, 3.75, 'A', '5th', '2018-2019', '2021-1'),
(2018831067, 'SWE 330', 1, 80.0, 4.00, 'A+', '5th', '2018-2019', '2021-1'),
(2018831069, 'SWE 330', 1, 78.0, 3.75, 'A', '5th', '2018-2019', '2021-1'),
(2018831072, 'SWE 330', 1, 80.0, 4.00, 'A+', '5th', '2018-2019', '2021-1'),
(2018831073, 'SWE 330', 1, 78.0, 3.75, 'A', '5th', '2018-2019', '2021-1'),
(2017831041, 'SWE 328', 2, 80.0, 4.00, 'A+', '5th', '2018-2019', '2021-1'),
(2018831001, 'SWE 328', 2, 78.0, 3.75, 'A', '5th', '2018-2019', '2021-1'),
(2018831005, 'SWE 328', 2, 78.0, 3.75, 'A', '5th', '2018-2019', '2021-1'),
(2018831011, 'SWE 328', 2, 78.0, 3.75, 'A', '5th', '2018-2019', '2021-1'),
(2018831012, 'SWE 328', 2, 50.0, 2.50, 'C+', '5th', '2018-2019', '2021-1'),
(2018831041, 'SWE 328', 2, 40.0, 2.00, 'C-', '5th', '2018-2019', '2021-1'),
(2018831042, 'SWE 328', 2, 78.0, 3.75, 'A', '5th', '2018-2019', '2021-1'),
(2018831067, 'SWE 328', 2, 80.0, 4.00, 'A+', '5th', '2018-2019', '2021-1'),
(2018831069, 'SWE 328', 2, 78.0, 3.75, 'A', '5th', '2018-2019', '2021-1'),
(2018831072, 'SWE 328', 2, 80.0, 4.00, 'A+', '5th', '2018-2019', '2021-1'),
(2018831073, 'SWE 328', 2, 78.0, 3.75, 'A', '5th', '2018-2019', '2021-1'),
(2017831041, 'CSE 324W', 4, 40.0, 2.00, 'C-', '5th', '2018-2019', '2021-1'),
(2018831001, 'CSE 324W', 4, 78.0, 3.75, 'A', '5th', '2018-2019', '2021-1'),
(2018831005, 'CSE 324W', 4, 78.0, 3.75, 'A', '5th', '2018-2019', '2021-1'),
(2018831011, 'CSE 324W', 4, 78.0, 3.75, 'A', '5th', '2018-2019', '2021-1'),
(2018831012, 'CSE 324W', 4, 68.0, 3.25, 'B+', '5th', '2018-2019', '2021-1'),
(2018831041, 'CSE 324W', 4, 65.0, 3.25, 'B+', '5th', '2018-2019', '2021-1'),
(2018831042, 'CSE 324W', 4, 65.0, 3.25, 'B+', '5th', '2018-2019', '2021-1'),
(2018831067, 'CSE 324W', 4, 78.0, 3.75, 'A', '5th', '2018-2019', '2021-1'),
(2018831069, 'CSE 324W', 4, 78.0, 3.75, 'A', '5th', '2018-2019', '2021-1'),
(2018831072, 'CSE 324W', 4, 78.0, 3.75, 'A', '5th', '2018-2019', '2021-1'),
(2018831073, 'CSE 324W', 4, 78.0, 3.75, 'A', '5th', '2018-2019', '2021-1'),
(2017831041, 'SWE 322', 3, 40.0, 2.00, 'C-', '5th', '2018-2019', '2021-1'),
(2018831001, 'SWE 322', 3, 80.0, 4.00, 'A+', '5th', '2018-2019', '2021-1'),
(2018831005, 'SWE 322', 3, 78.0, 3.75, 'A', '5th', '2018-2019', '2021-1'),
(2018831011, 'SWE 322', 3, 40.0, 2.00, 'C-', '5th', '2018-2019', '2021-1'),
(2018831012, 'SWE 322', 3, 65.0, 3.25, 'B+', '5th', '2018-2019', '2021-1'),
(2018831041, 'SWE 322', 3, 74.0, 3.50, 'A-', '5th', '2018-2019', '2021-1'),
(2018831042, 'SWE 322', 3, 78.0, 3.75, 'A', '5th', '2018-2019', '2021-1'),
(2018831067, 'SWE 322', 3, 78.0, 3.75, 'A', '5th', '2018-2019', '2021-1'),
(2018831069, 'SWE 322', 3, 80.0, 4.00, 'A+', '5th', '2018-2019', '2021-1'),
(2018831072, 'SWE 322', 3, 78.0, 3.75, 'A', '5th', '2018-2019', '2021-1'),
(2018831073, 'SWE 322', 3, 40.0, 2.00, 'C-', '5th', '2018-2019', '2021-1'),
(2017831041, 'SWE 330', 1, 80.0, 4.00, 'A+', '5th', '2018-2019', '2021-1'),
(2018831001, 'SWE 330', 1, 78.0, 3.75, 'A', '5th', '2018-2019', '2021-1'),
(2018831005, 'SWE 330', 1, 75.0, 3.75, 'A', '5th', '2018-2019', '2021-1'),
(2018831011, 'SWE 330', 1, 80.0, 4.00, 'A+', '5th', '2018-2019', '2021-1'),
(2018831012, 'SWE 330', 1, 78.0, 3.75, 'A', '5th', '2018-2019', '2021-1'),
(2018831041, 'SWE 330', 1, 80.0, 4.00, 'A+', '5th', '2018-2019', '2021-1'),
(2018831042, 'SWE 330', 1, 78.0, 3.75, 'A', '5th', '2018-2019', '2021-1'),
(2018831067, 'SWE 330', 1, 80.0, 4.00, 'A+', '5th', '2018-2019', '2021-1'),
(2018831069, 'SWE 330', 1, 78.0, 3.75, 'A', '5th', '2018-2019', '2021-1'),
(2018831072, 'SWE 330', 1, 80.0, 4.00, 'A+', '5th', '2018-2019', '2021-1'),
(2018831073, 'SWE 330', 1, 78.0, 3.75, 'A', '5th', '2018-2019', '2021-1'),
(2017831041, 'SWE 328', 2, 80.0, 4.00, 'A+', '5th', '2018-2019', '2021-1'),
(2018831001, 'SWE 328', 2, 78.0, 3.75, 'A', '5th', '2018-2019', '2021-1'),
(2018831005, 'SWE 328', 2, 78.0, 3.75, 'A', '5th', '2018-2019', '2021-1'),
(2018831011, 'SWE 328', 2, 78.0, 3.75, 'A', '5th', '2018-2019', '2021-1'),
(2018831012, 'SWE 328', 2, 50.0, 2.50, 'C+', '5th', '2018-2019', '2021-1'),
(2018831041, 'SWE 328', 2, 40.0, 2.00, 'C-', '5th', '2018-2019', '2021-1'),
(2018831042, 'SWE 328', 2, 78.0, 3.75, 'A', '5th', '2018-2019', '2021-1'),
(2018831067, 'SWE 328', 2, 80.0, 4.00, 'A+', '5th', '2018-2019', '2021-1'),
(2018831069, 'SWE 328', 2, 78.0, 3.75, 'A', '5th', '2018-2019', '2021-1'),
(2018831072, 'SWE 328', 2, 80.0, 4.00, 'A+', '5th', '2018-2019', '2021-1'),
(2018831073, 'SWE 328', 2, 78.0, 3.75, 'A', '5th', '2018-2019', '2021-1'),
(2017831041, 'CSE 324W', 4, 40.0, 2.00, 'C-', '5th', '2018-2019', '2021-1'),
(2018831001, 'CSE 324W', 4, 78.0, 3.75, 'A', '5th', '2018-2019', '2021-1'),
(2018831005, 'CSE 324W', 4, 78.0, 3.75, 'A', '5th', '2018-2019', '2021-1'),
(2018831011, 'CSE 324W', 4, 78.0, 3.75, 'A', '5th', '2018-2019', '2021-1'),
(2018831012, 'CSE 324W', 4, 68.0, 3.25, 'B+', '5th', '2018-2019', '2021-1'),
(2018831041, 'CSE 324W', 4, 65.0, 3.25, 'B+', '5th', '2018-2019', '2021-1'),
(2018831042, 'CSE 324W', 4, 65.0, 3.25, 'B+', '5th', '2018-2019', '2021-1'),
(2018831067, 'CSE 324W', 4, 78.0, 3.75, 'A', '5th', '2018-2019', '2021-1'),
(2018831069, 'CSE 324W', 4, 78.0, 3.75, 'A', '5th', '2018-2019', '2021-1'),
(2018831072, 'CSE 324W', 4, 78.0, 3.75, 'A', '5th', '2018-2019', '2021-1'),
(2018831073, 'CSE 324W', 4, 78.0, 3.75, 'A', '5th', '2018-2019', '2021-1'),
(2017831041, 'SWE 322', 3, 40.0, 2.00, 'C-', '5th', '2018-2019', '2021-1'),
(2018831001, 'SWE 322', 3, 80.0, 4.00, 'A+', '5th', '2018-2019', '2021-1'),
(2018831005, 'SWE 322', 3, 78.0, 3.75, 'A', '5th', '2018-2019', '2021-1'),
(2018831011, 'SWE 322', 3, 40.0, 2.00, 'C-', '5th', '2018-2019', '2021-1'),
(2018831012, 'SWE 322', 3, 65.0, 3.25, 'B+', '5th', '2018-2019', '2021-1'),
(2018831041, 'SWE 322', 3, 74.0, 3.50, 'A-', '5th', '2018-2019', '2021-1'),
(2018831042, 'SWE 322', 3, 78.0, 3.75, 'A', '5th', '2018-2019', '2021-1'),
(2018831067, 'SWE 322', 3, 78.0, 3.75, 'A', '5th', '2018-2019', '2021-1'),
(2018831069, 'SWE 322', 3, 80.0, 4.00, 'A+', '5th', '2018-2019', '2021-1'),
(2018831072, 'SWE 322', 3, 78.0, 3.75, 'A', '5th', '2018-2019', '2021-1'),
(2018831073, 'SWE 322', 3, 40.0, 2.00, 'C-', '5th', '2018-2019', '2021-1');

--
-- Triggers `tbl_result_lab`
--
DELIMITER $$
CREATE TRIGGER `gpa_calculate_lab` BEFORE INSERT ON `tbl_result_lab` FOR EACH ROW SET new.gpa = (
CASE
WHEN new.total_mark >= 80 THEN  '4.00'
WHEN new.total_mark <= 79 AND new.total_mark >= 75 THEN  '3.75'
WHEN new.total_mark <= 74 AND new.total_mark >= 70 THEN  '3.50'
WHEN new.total_mark <= 69 AND new.total_mark >= 65 THEN  '3.25'
WHEN new.total_mark <= 64 AND new.total_mark >= 60 THEN  '3.00'
WHEN new.total_mark <= 59 AND new.total_mark >= 55 THEN  '2.75'
WHEN new.total_mark <= 54 AND new.total_mark >= 50 THEN  '2.50'
WHEN new.total_mark <= 49 AND new.total_mark >= 45 THEN  '2.25'
WHEN new.total_mark <= 44 AND new.total_mark >= 40 THEN  '2.00'
ELSE '0.00'
END
    )
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `letter_grade_calculate_lab` BEFORE INSERT ON `tbl_result_lab` FOR EACH ROW SET new.letter_grade = (
CASE
WHEN new.total_mark >= 80 THEN  'A+'
WHEN new.total_mark <= 79 AND new.total_mark >= 75 THEN  'A'
WHEN new.total_mark <= 74 AND new.total_mark >= 70 THEN  'A-'
WHEN new.total_mark <= 69 AND new.total_mark >= 65 THEN  'B+'
WHEN new.total_mark <= 64 AND new.total_mark >= 60 THEN  'B'
WHEN new.total_mark <= 59 AND new.total_mark >= 55 THEN  'B-'
WHEN new.total_mark <= 54 AND new.total_mark >= 50 THEN  'C+'
WHEN new.total_mark <= 49 AND new.total_mark >= 45 THEN  'C'
WHEN new.total_mark <= 44 AND new.total_mark >= 40 THEN  'C-'
ELSE 'F'
END
    )
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_result_theory`
--

CREATE TABLE `tbl_result_theory` (
  `reg_no` int(11) NOT NULL,
  `course_id` varchar(36) NOT NULL,
  `first_teacher_id` int(11) DEFAULT NULL,
  `second_teacher_id` int(11) DEFAULT NULL,
  `total_class` int(35) DEFAULT NULL,
  `class_attendance` int(11) DEFAULT NULL,
  `attendance_mark` int(69) DEFAULT NULL,
  `term_test` int(11) DEFAULT NULL,
  `class_assessment` int(11) DEFAULT NULL,
  `part_A` int(11) DEFAULT NULL,
  `part_B` int(11) DEFAULT NULL,
  `total_mark` int(4) DEFAULT NULL,
  `gpa` decimal(3,2) DEFAULT NULL,
  `letter_grade` varchar(10) DEFAULT NULL,
  `semester` varchar(35) NOT NULL,
  `session` varchar(40) NOT NULL,
  `USN` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_result_theory`
--

INSERT INTO `tbl_result_theory` (`reg_no`, `course_id`, `first_teacher_id`, `second_teacher_id`, `total_class`, `class_attendance`, `attendance_mark`, `term_test`, `class_assessment`, `part_A`, `part_B`, `total_mark`, `gpa`, `letter_grade`, `semester`, `session`, `USN`) VALUES
(2017831041, 'CSE 323W', 4, 2, 30, 2, 0, 1, 8, 2, 15, 26, 0.00, 'F', '5th', '2018-2019', '2021-1'),
(2017831041, 'SWE 321', 3, 5, 30, 2, 0, 18, 8, 27, 15, 68, 3.25, 'B+', '5th', '2018-2019', '2021-1'),
(2017831041, 'SWE 325', 1, NULL, 0, 25, 0, 19, 9, 7, NULL, NULL, 0.00, 'F', '5th', '2018-2019', '2021-1'),
(2017831041, 'SWE 327', 2, 1, 30, 2, 0, 13, 8, 20, 20, 61, 3.00, 'B', '5th', '2018-2019', '2021-1'),
(2018831001, 'CSE 323W', 4, 2, 30, 27, 9, 10, 8, 15, 22, 64, 3.00, 'B', '5th', '2018-2019', '2021-1'),
(2018831001, 'SWE 321', 3, 5, 30, 22, 5, 13, 8, 27, 20, 73, 3.50, 'A-', '5th', '2018-2019', '2021-1'),
(2018831001, 'SWE 325', 1, NULL, 0, 25, 0, 5, 5, 25, NULL, NULL, 0.00, 'F', '5th', '2018-2019', '2021-1'),
(2018831001, 'SWE 327', 2, 1, 30, 22, 5, 18, 10, 15, 27, 75, 3.75, 'A', '5th', '2018-2019', '2021-1'),
(2018831005, 'CSE 323W', 4, 2, 30, 27, 9, 13, 8, 15, 22, 67, 3.25, 'B+', '5th', '2018-2019', '2021-1'),
(2018831005, 'SWE 321', 3, 5, 30, 27, 9, 10, 8, 25, 22, 74, 3.50, 'A-', '5th', '2018-2019', '2021-1'),
(2018831005, 'SWE 325', 1, NULL, 0, 0, 0, 8, 8, 25, NULL, NULL, 0.00, 'F', '5th', '2018-2019', '2021-1'),
(2018831005, 'SWE 327', 2, 1, 30, 22, 5, 13, 8, 22, 20, 68, 3.25, 'B+', '5th', '2018-2019', '2021-1'),
(2018831011, 'CSE 323W', 4, 2, 30, 22, 5, 13, 8, 15, 22, 63, 3.00, 'B', '5th', '2018-2019', '2021-1'),
(2018831011, 'SWE 321', 3, 5, 30, 22, 5, 10, 8, 22, 15, 60, 3.00, 'B', '5th', '2018-2019', '2021-1'),
(2018831011, 'SWE 325', 1, NULL, 0, 0, 0, 0, 0, 2, NULL, NULL, 0.00, 'F', '5th', '2018-2019', '2021-1'),
(2018831011, 'SWE 327', 2, 1, 30, 22, 5, 13, 10, 22, 20, 70, 3.50, 'A-', '5th', '2018-2019', '2021-1'),
(2018831012, 'CSE 323W', 4, 2, 30, 2, 0, 10, 8, 15, 15, 48, 2.25, 'C', '5th', '2018-2019', '2021-1'),
(2018831012, 'SWE 321', 3, 5, 30, 2, 0, 17, 10, 25, 15, 67, 3.25, 'B+', '5th', '2018-2019', '2021-1'),
(2018831012, 'SWE 325', 1, NULL, 0, 0, 0, 0, 0, 22, NULL, NULL, 0.00, 'F', '5th', '2018-2019', '2021-1'),
(2018831012, 'SWE 327', 2, 1, 30, 22, 5, 13, 8, 15, 15, 56, 2.75, 'B-', '5th', '2018-2019', '2021-1'),
(2018831041, 'CSE 323W', 4, 2, 30, 22, 5, 10, 8, 15, 15, 53, 2.50, 'C+', '5th', '2018-2019', '2021-1'),
(2018831041, 'SWE 321', 3, 5, 30, 22, 5, 13, 8, 22, 15, 63, 3.00, 'B', '5th', '2018-2019', '2021-1'),
(2018831041, 'SWE 325', 1, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 0.00, 'F', '5th', '2018-2019', '2021-1'),
(2018831041, 'SWE 327', 2, 1, 30, 27, 9, 13, 8, 15, 22, 67, 3.25, 'B+', '5th', '2018-2019', '2021-1'),
(2018831042, 'CSE 323W', 4, 2, 30, 22, 5, 10, 8, 15, 22, 60, 3.00, 'B', '5th', '2018-2019', '2021-1'),
(2018831042, 'SWE 321', 3, 5, 30, 22, 5, 13, 8, 25, 22, 73, 3.50, 'A-', '5th', '2018-2019', '2021-1'),
(2018831042, 'SWE 325', 1, NULL, 0, 0, 0, 0, 0, 22, NULL, NULL, 0.00, 'F', '5th', '2018-2019', '2021-1'),
(2018831042, 'SWE 327', 2, 1, 30, 22, 5, 13, 8, 15, 22, 63, 3.00, 'B', '5th', '2018-2019', '2021-1'),
(2018831067, 'CSE 323W', 4, 2, 30, 27, 9, 13, 8, 15, 25, 70, 3.50, 'A-', '5th', '2018-2019', '2021-1'),
(2018831067, 'SWE 321', 3, 5, 30, 27, 9, 10, 10, 15, 25, 69, 3.25, 'B+', '5th', '2018-2019', '2021-1'),
(2018831067, 'SWE 325', 1, NULL, 0, 0, 0, 0, 0, 2, NULL, NULL, 0.00, 'F', '5th', '2018-2019', '2021-1'),
(2018831067, 'SWE 327', 2, 1, 30, 22, 5, 17, 8, 22, 22, 74, 3.50, 'A-', '5th', '2018-2019', '2021-1'),
(2018831069, 'CSE 323W', 4, 2, 30, 27, 9, 10, 8, 22, 25, 74, 3.50, 'A-', '5th', '2018-2019', '2021-1'),
(2018831069, 'SWE 321', 3, 5, 30, 22, 5, 18, 8, 22, 15, 68, 3.25, 'B+', '5th', '2018-2019', '2021-1'),
(2018831069, 'SWE 325', 1, NULL, 0, 0, 0, 0, 0, 22, NULL, NULL, 0.00, 'F', '5th', '2018-2019', '2021-1'),
(2018831069, 'SWE 327', 2, 1, 30, 22, 5, 10, 8, 25, 15, 63, 3.00, 'B', '5th', '2018-2019', '2021-1'),
(2018831072, 'CSE 323W', 4, 2, 30, 27, 9, 13, 8, 15, 22, 67, 3.25, 'B+', '5th', '2018-2019', '2021-1'),
(2018831072, 'SWE 321', 3, 5, 30, 22, 5, 10, 10, 25, 15, 65, 3.25, 'B+', '5th', '2018-2019', '2021-1'),
(2018831072, 'SWE 325', 1, NULL, 0, 0, 0, 0, 0, 2, NULL, NULL, 0.00, 'F', '5th', '2018-2019', '2021-1'),
(2018831072, 'SWE 327', 2, 1, 30, 22, 5, 13, 8, 22, 25, 73, 3.50, 'A-', '5th', '2018-2019', '2021-1'),
(2018831073, 'CSE 323W', 4, 2, 30, 22, 5, 10, 8, 15, 22, 60, 3.00, 'B', '5th', '2018-2019', '2021-1'),
(2018831073, 'SWE 321', 3, 5, 30, 22, 5, 10, 10, 25, 15, 65, 3.25, 'B+', '5th', '2018-2019', '2021-1'),
(2018831073, 'SWE 325', 1, NULL, 0, 0, 0, 0, 0, 2, NULL, NULL, 0.00, 'F', '5th', '2018-2019', '2021-1'),
(2018831073, 'SWE 327', 2, 1, 30, 22, 5, 13, 8, 25, 25, 76, 3.75, 'A', '5th', '2018-2019', '2021-1');

--
-- Triggers `tbl_result_theory`
--
DELIMITER $$
CREATE TRIGGER `attendace_calculate` BEFORE INSERT ON `tbl_result_theory` FOR EACH ROW SET new.attendance_mark = (
CASE
WHEN (new.class_attendance * 100)/(new.total_class) >= 95 THEN  10
WHEN (new.class_attendance * 100)/(new.total_class) <= 94 AND  (new.class_attendance * 100)/(new.total_class) >=90 THEN  9
WHEN (new.class_attendance * 100)/(new.total_class) <= 89 AND  (new.class_attendance * 100)/(new.total_class) >=85 THEN  8
WHEN (new.class_attendance * 100)/(new.total_class) <= 84 AND  (new.class_attendance * 100)/(new.total_class) >=80 THEN  7
WHEN (new.class_attendance * 100)/(new.total_class) <= 79 AND  (new.class_attendance * 100)/(new.total_class) >=75 THEN  6
WHEN (new.class_attendance * 100)/(new.total_class) <= 74 AND  (new.class_attendance * 100)/(new.total_class) >=70 THEN  5
WHEN (new.class_attendance * 100)/(new.total_class) <= 69 AND  (new.class_attendance * 100)/(new.total_class) >=65 THEN  4
WHEN (new.class_attendance * 100)/(new.total_class) <= 64 AND  (new.class_attendance * 100)/(new.total_class) >=60 THEN  3

ELSE 0
END
    )
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `gpa_calculate` BEFORE UPDATE ON `tbl_result_theory` FOR EACH ROW SET new.gpa = (
CASE
WHEN new.total_mark >= 80 THEN  '4.00'
WHEN new.total_mark <= 79 AND new.total_mark >= 75 THEN  '3.75'
WHEN new.total_mark <= 74 AND new.total_mark >= 70 THEN  '3.50'
WHEN new.total_mark <= 69 AND new.total_mark >= 65 THEN  '3.25'
WHEN new.total_mark <= 64 AND new.total_mark >= 60 THEN  '3.00'
WHEN new.total_mark <= 59 AND new.total_mark >= 55 THEN  '2.75'
WHEN new.total_mark <= 54 AND new.total_mark >= 50 THEN  '2.50'
WHEN new.total_mark <= 49 AND new.total_mark >= 45 THEN  '2.25'
WHEN new.total_mark <= 44 AND new.total_mark >= 40 THEN  '2.00'
ELSE '0.00'
END
    )
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `letter_grade_calculate` BEFORE UPDATE ON `tbl_result_theory` FOR EACH ROW SET new.letter_grade = (
CASE
WHEN new.total_mark >= 80 THEN  'A+'
WHEN new.total_mark <= 79 AND new.total_mark >= 75 THEN  'A'
WHEN new.total_mark <= 74 AND new.total_mark >= 70 THEN  'A-'
WHEN new.total_mark <= 69 AND new.total_mark >= 65 THEN  'B+'
WHEN new.total_mark <= 64 AND new.total_mark >= 60 THEN  'B'
WHEN new.total_mark <= 59 AND new.total_mark >= 55 THEN  'B-'
WHEN new.total_mark <= 54 AND new.total_mark >= 50 THEN  'C+'
WHEN new.total_mark <= 49 AND new.total_mark >= 45 THEN  'C'
WHEN new.total_mark <= 44 AND new.total_mark >= 40 THEN  'C-'
ELSE 'F'
END
    )
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `total_mark_calculate` BEFORE UPDATE ON `tbl_result_theory` FOR EACH ROW SET new.total_mark = new.attendance_mark + new.term_test + new.class_assessment + new.part_A + new.part_B
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `reg_no` int(11) NOT NULL,
  `std_name` varchar(40) NOT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `session` varchar(35) DEFAULT NULL,
  `std_email` varchar(40) DEFAULT NULL,
  `std_phone` varchar(15) DEFAULT NULL,
  `std_address` varchar(200) DEFAULT NULL,
  `std_dateOfBirth` date DEFAULT NULL,
  `password` varchar(69) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`reg_no`, `std_name`, `dept_id`, `session`, `std_email`, `std_phone`, `std_address`, `std_dateOfBirth`, `password`) VALUES
(2017831041, 'Sadat Alam Talukder', 100, '2018-2019', 'sad@gmail.com', '01931658276', 'Bogura', '2000-02-20', '$2b$10$NRFxch12sW6Mlp7HkIMIHerGYBY6UT3TZc1rrqgxteWqnDDam8Opm'),
(2018831001, 'Prottya Roy Chayan', 100, '2018-2019', 'prc@gmail.com', '01931658270', 'Manikganj', '1998-02-20', '$2b$10$Af0Tt6tknaPAtNvOSOkiPOux3noQjvyRtwfcwwQmAlWupJzD1UFZK'),
(2018831005, 'MD. Raisul Islam Aupi', 100, '2018-2019', 'mria@gmail.com', '01931658201', 'Dhaka', '2000-02-10', '$2b$10$UfLvOF9OQ1mE6hZ5RrtAtOkreLm/kHI0At6H8hgnwYwpN1sSqXc/q'),
(2018831011, 'Jowher Mehajabin Juthi', 100, '2018-2019', 'jmj@gmail.com', '019316582012', 'Munshiganj', '1999-02-20', '$2b$10$C4IFnuRtVTYIiOxk4Q9va.vw4O4gcDNfzgpSgGIQzO2tJvMXPj80a'),
(2018831012, 'Maruf Hossain', 100, '2018-2019', 'mh@gmail.com', '01931658203', 'Noakhali', '2000-01-20', '$2b$10$WwXh8YHntNjFsnOhFMWF5.nMy5JmVqHgggXYB9oTMk5MqtdT3LZ/K'),
(2018831013, 'Tahsin Tunan', 100, '2018-2019', 'tt@gmail.com', '01931658204', 'Dhaka', '1997-02-20', '$2b$10$FnM1K9tK0/H.a.wvTylnTusS4CW1HpkO5FYC4QPbCfs92UnjHSpfW'),
(2018831015, 'Rahat Zaman', 100, '2018-2019', 'rh@gmail.com', '01931658205', 'Mymensingh', '1996-02-20', ''),
(2018831016, 'Suhaib Ahmmad', 100, '2018-2019', 'sa@gmail.com', '01931658206', 'Tangail', '1998-01-20', ''),
(2018831024, 'Sajidul kabir', 100, '2018-2019', 'sk@gmail.com', '01931658207', 'Chattogram', '2000-02-02', ''),
(2018831026, 'Navid Hasan', 100, '2018-2019', 'nh@gmail.com', '01931658208', 'Jashore', '1998-02-02', ''),
(2018831027, 'Aryan Bin Jahur', 100, '2018-2019', 'abj@gmail.com', '01931658209', 'Narayanganj', '1999-02-20', ''),
(2018831028, 'Md.Rafat Ahmed', 100, '2018-2019', 'mra@gmail.com', '01931658210', 'Rangpur', '1998-02-20', ''),
(2018831029, 'Nishat Tafannum', 100, '2018-2019', 'nt@gmail.com', '01931658211', 'Chattogram', '2000-02-10', ''),
(2018831031, 'Siam Ahmed', 100, '2018-2019', 'as@gmail.com', '019316582013', 'Mymensingh', '1998-02-20', ''),
(2018831032, 'Sajjad Hossain', 100, '2018-2019', 'sah@gmail.com', '01931658214', 'Noakhali', '2001-01-20', ''),
(2018831033, 'Md. Shahria Islam Nihal', 100, '2018-2019', 'msin@gmail.com', '01931658215', 'Dhaka', '1998-02-20', ''),
(2018831034, 'Nafizur Rahman', 100, '2018-2019', 'nrddd@gmail.com', '01931658216', 'Narsingdi', '1998-01-20', ''),
(2018831035, 'Md. Jamilur Rahman', 100, '2018-2019', 'mjr@gmail.com', '01931658217', 'Sylhet', '1997-01-20', ''),
(2018831036, 'Farhan Mahtab Mahi', 100, '2018-2019', 'fmm@gmail.com', '01931658218', 'Gazipur', '2000-11-02', ''),
(2018831037, 'Ridwanur Rahman', 100, '2018-2019', 'rr@gmail.com', '01931658219', 'Chattogram', '2000-02-02', ''),
(2018831040, 'Anindo Sarker', 100, '2018-2019', 'ashh@gmail.com', '01931658220', 'Nilphamari', '2000-10-20', ''),
(2018831041, 'Md. Akash Ahmed', 100, '2018-2019', 'maa@gmail.com', '01931658221', 'Vola', '1999-02-20', '$2b$10$zgx7XlKIZikK8OuuqETNeO0NRLZx6wVoUPdSPiQQ0OAV5db.Zz.4i'),
(2018831042, 'Nahid Hasan Lovon', 100, '2018-2019', 'nahidswe@gmail.com', '01780315793', 'Sylhet', '2022-09-25', '$2b$10$SmuaS3iopqAj2ZEHUfbn/.ir0ugdOxoWMv3lRMR9WMeZI9GAsknwK'),
(2018831044, 'T.H Raju Singho', 100, '2018-2019', 'singhoraju8@gmail.com', '01700000444', 'Sylhet', '2000-02-20', ''),
(2018831045, 'Debasish Mohan Singha', 100, '2018-2019', 'debu8@gmail.com', '01700000441', 'Sylhet', '2000-01-01', ''),
(2018831046, 'Yousuf Zubaer', 100, '2018-2019', 'zubaer8@gmail.com', '01700500441', 'Dhaka', '2001-11-07', ''),
(2018831047, 'Md Shahriar Kabir Himel', 100, '2018-2019', 'himel8@gmail.com', '01700550441', 'Dhaka', '2001-11-07', ''),
(2018831048, 'Tausif Ahmed', 100, '2018-2019', 'tta@gmail.com', '01931658222', 'Dhaka', '2000-02-10', ''),
(2018831049, 'MD.ARIFUL ISLAM', 100, '2018-2019', 'arif@gmail.com', '019316582023', 'Narsingdi', '1999-02-11', ''),
(2018831050, 'Mohammed Mazhar Ali', 100, '2018-2019', 'mhmm@gmail.com', '01931658224', 'Moulvibazar', '1998-01-20', ''),
(2018831051, 'Md Rifat Chowdhury Riaz', 100, '2018-2019', 'mrcr@gmail.com', '01931658225', 'Chandpur', '1999-02-20', ''),
(2018831052, 'Fahim Iftekhar', 100, '2018-2019', 'fi@gmail.com', '01931658226', 'Bogura', '1997-02-20', ''),
(2018831053, 'Monabbir Ahmmad Tajbir', 100, '2018-2019', 'mat@gmail.com', '01931658227', 'Dhaka', '1999-01-20', ''),
(2018831054, 'Raisul Islam Shehab', 100, '2018-2019', 'ris@gmail.com', '01931658228', 'Rajshahi', '1999-02-02', ''),
(2018831055, 'Prapti Roy', 100, '2018-2019', 'pr@gmail.com', '01931658229', 'Mymensingh', '1997-01-02', ''),
(2018831056, 'Abir Ahmed Sohan', 100, '2018-2019', 'abir56@student.sust.edu', '01700000000', 'Meherpur', '1997-06-16', '$2b$10$VzvkvtbfRBJfoiTdb01Hwe2y9bePHr1j6uprziWqCU05OxJ56l05u'),
(2018831058, 'Iftekharul Haque Noor', 100, '2018-2019', 'ihn@gmail.com', '01931658230', 'Dhaka', '1999-02-20', ''),
(2018831059, 'Mynul Islam', 100, '2018-2019', 'mri@gmail.com', '01931658231', 'Madaripur', '1999-02-20', ''),
(2018831060, 'Kawsar Ahemmed Bappy', 100, '2018-2019', 'kab@gmail.com', '01931658232', 'Dhaka', '2000-02-10', ''),
(2018831061, 'Md Sabit Islam Bhuiya', 100, '2018-2019', 'msib@gmail.com', '019316582033', 'Madaripur', '1999-01-20', ''),
(2018831062, 'Abid Ahmed', 100, '2018-2019', 'aaaaa@gmail.com', '01931658234', 'Sylhet', '2000-11-20', ''),
(2018831063, 'Rumman Ahmed Prottoy', 100, '2018-2019', 'rap@gmail.com', '01931658235', 'Jashore', '1996-02-20', ''),
(2018831064, 'Md Fahim Mia', 100, '2018-2019', 'nr@gmail.com', '01931658236', 'Rangpur', '1997-01-20', ''),
(2018831065, 'Hasan Muhtadi Noor Rafid', 100, '2018-2019', 'hmnr@gmail.com', '01931658237', 'Sylhet', '1997-01-20', ''),
(2018831066, 'Md. Akiful Islam', 100, '2018-2019', 'fmmnnn@gmail.com', '01931658238', 'Dhaka', '2001-01-02', ''),
(2018831067, 'Salman Hossain', 100, '2018-2019', 'salman67@student.sust.edu', '01700000067', 'Sirajganj', '1999-11-10', '$2b$10$NM7gYjt5xq06C4JS7Id01OHmkEjROY3/uOBBXHSb4qdC7ThUoo6U6'),
(2018831068, 'Sourav Ahmed', 100, '2018-2019', 'asasa@gmail.com', '01931658239', 'Manikganj', '1999-02-02', ''),
(2018831069, 'MD Mahmudur Rahman', 100, '2018-2019', 'mahmudur69@student.sust.edu', '017761651472', 'Rangpur', '1999-11-21', '$2b$10$N9ZYjOvvH3SUg0cBzjYlo.SMAfLPQ9h1M7KKaaUGv9b41ghgStQlm'),
(2018831070, 'Partho Chanda', 100, '2018-2019', 'pcc@gmail.com', '01931658240', 'Dhaka', '1999-11-11', ''),
(2018831071, 'Abid Al Mahmud', 100, '2018-2019', 'hmnrll@gmail.com', '01931658241', 'Bogura', '1999-01-20', '$2b$10$4nHlUIDvMoxZBf9F10Q9Ee2nLvNvdpQQcyCYYhITkdOAzvLUg5ri2'),
(2018831072, 'Ashiqul Hasan Shakil', 100, '2018-2019', 'fsakiln@gmail.com', '01931658242', 'Mymensingh', '2000-11-11', '$2b$10$/1woI2vDDJSWYjlElplbe.f/bQMCpt3VRn7IP.A9tBTUsflUiQitW'),
(2018831073, 'Kishwar Sadaf Rodushi', 100, '2018-2019', 'sadaf@gmail.com', '01931658243', 'Mymensingh', '1999-02-02', '$2b$10$o.9kMD.pEtfJwprzFifhHePLopKcJDcjXhgL0/SW7KCxdW2BFOWyO');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_takes`
--

CREATE TABLE `tbl_takes` (
  `reg_no` int(11) NOT NULL,
  `course_id` varchar(15) NOT NULL,
  `semester` varchar(35) NOT NULL,
  `session` varchar(40) NOT NULL,
  `USN` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_takes`
--

INSERT INTO `tbl_takes` (`reg_no`, `course_id`, `semester`, `session`, `USN`) VALUES
(2017831041, 'BUS 201W', '3rd', '2019-2020', '2021-1'),
(2017831041, 'CSE 323W', '5th', '2018-2019', '2021-1'),
(2017831041, 'CSE 324W', '5th', '2018-2019', '2021-1'),
(2017831041, 'SOC 203W', '3rd', '2019-2020', '2021-1'),
(2017831041, 'SWE 224', '3rd', '2019-2020', '2021-1'),
(2017831041, 'SWE 226', '3rd', '2019-2020', '2021-1'),
(2017831041, 'SWE 321', '5th', '2018-2019', '2021-1'),
(2017831041, 'SWE 322', '5th', '2018-2019', '2021-1'),
(2017831041, 'SWE 325', '5th', '2018-2019', '2021-1'),
(2017831041, 'SWE 326', '5th', '2018-2019', '2021-1'),
(2017831041, 'SWE 327', '5th', '2018-2019', '2021-1'),
(2017831041, 'SWE 328', '5th', '2018-2019', '2021-1'),
(2017831041, 'SWE 330', '5th', '2018-2019', '2021-1'),
(2018831001, 'CSE 323W', '5th', '2018-2019', '2021-1'),
(2018831001, 'CSE 324W', '5th', '2018-2019', '2021-1'),
(2018831001, 'SWE 321', '5th', '2018-2019', '2021-1'),
(2018831001, 'SWE 322', '5th', '2018-2019', '2021-1'),
(2018831001, 'SWE 325', '5th', '2018-2019', '2021-1'),
(2018831001, 'SWE 326', '5th', '2018-2019', '2021-1'),
(2018831001, 'SWE 327', '5th', '2018-2019', '2021-1'),
(2018831001, 'SWE 328', '5th', '2018-2019', '2021-1'),
(2018831001, 'SWE 330', '5th', '2018-2019', '2021-1'),
(2018831005, 'CSE 323W', '5th', '2018-2019', '2021-1'),
(2018831005, 'CSE 324W', '5th', '2018-2019', '2021-1'),
(2018831005, 'SWE 321', '5th', '2018-2019', '2021-1'),
(2018831005, 'SWE 322', '5th', '2018-2019', '2021-1'),
(2018831005, 'SWE 325', '5th', '2018-2019', '2021-1'),
(2018831005, 'SWE 326', '5th', '2018-2019', '2021-1'),
(2018831005, 'SWE 327', '5th', '2018-2019', '2021-1'),
(2018831005, 'SWE 328', '5th', '2018-2019', '2021-1'),
(2018831005, 'SWE 330', '5th', '2018-2019', '2021-1'),
(2018831011, 'CSE 323W', '5th', '2018-2019', '2021-1'),
(2018831011, 'CSE 324W', '5th', '2018-2019', '2021-1'),
(2018831011, 'SWE 321', '5th', '2018-2019', '2021-1'),
(2018831011, 'SWE 322', '5th', '2018-2019', '2021-1'),
(2018831011, 'SWE 325', '5th', '2018-2019', '2021-1'),
(2018831011, 'SWE 326', '5th', '2018-2019', '2021-1'),
(2018831011, 'SWE 327', '5th', '2018-2019', '2021-1'),
(2018831011, 'SWE 328', '5th', '2018-2019', '2021-1'),
(2018831011, 'SWE 330', '5th', '2018-2019', '2021-1'),
(2018831012, 'BUS 201W', '3rd', '2019-2020', '2021-1'),
(2018831012, 'CSE 219W', '3rd', '2019-2020', '2021-1'),
(2018831012, 'CSE 323W', '5th', '2018-2019', '2021-1'),
(2018831012, 'CSE 324W', '5th', '2018-2019', '2021-1'),
(2018831012, 'SWE 321', '5th', '2018-2019', '2021-1'),
(2018831012, 'SWE 322', '5th', '2018-2019', '2021-1'),
(2018831012, 'SWE 325', '5th', '2018-2019', '2021-1'),
(2018831012, 'SWE 326', '5th', '2018-2019', '2021-1'),
(2018831012, 'SWE 327', '5th', '2018-2019', '2021-1'),
(2018831012, 'SWE 328', '5th', '2018-2019', '2021-1'),
(2018831012, 'SWE 330', '5th', '2018-2019', '2021-1'),
(2018831041, 'BUS 201W', '3rd', '2019-2020', '2021-1'),
(2018831041, 'CSE 323W', '5th', '2018-2019', '2021-1'),
(2018831041, 'CSE 324W', '5th', '2018-2019', '2021-1'),
(2018831041, 'SOC 203W', '3rd', '2019-2020', '2021-1'),
(2018831041, 'SWE 321', '5th', '2018-2019', '2021-1'),
(2018831041, 'SWE 322', '5th', '2018-2019', '2021-1'),
(2018831041, 'SWE 325', '5th', '2018-2019', '2021-1'),
(2018831041, 'SWE 326', '5th', '2018-2019', '2021-1'),
(2018831041, 'SWE 327', '5th', '2018-2019', '2021-1'),
(2018831041, 'SWE 328', '5th', '2018-2019', '2021-1'),
(2018831041, 'SWE 330', '5th', '2018-2019', '2021-1'),
(2018831042, 'CSE 323W', '5th', '2018-2019', '2021-1'),
(2018831042, 'CSE 324W', '5th', '2018-2019', '2021-1'),
(2018831042, 'SWE 321', '5th', '2018-2019', '2021-1'),
(2018831042, 'SWE 322', '5th', '2018-2019', '2021-1'),
(2018831042, 'SWE 325', '5th', '2018-2019', '2021-1'),
(2018831042, 'SWE 326', '5th', '2018-2019', '2021-1'),
(2018831042, 'SWE 327', '5th', '2018-2019', '2021-1'),
(2018831042, 'SWE 328', '5th', '2018-2019', '2021-1'),
(2018831042, 'SWE 330', '5th', '2018-2019', '2021-1'),
(2018831067, 'CSE 219W', '3rd', '2019-2020', '2021-1'),
(2018831067, 'CSE 323W', '5th', '2018-2019', '2021-1'),
(2018831067, 'CSE 324W', '5th', '2018-2019', '2021-1'),
(2018831067, 'SWE 321', '5th', '2018-2019', '2021-1'),
(2018831067, 'SWE 322', '5th', '2018-2019', '2021-1'),
(2018831067, 'SWE 325', '5th', '2018-2019', '2021-1'),
(2018831067, 'SWE 326', '5th', '2018-2019', '2021-1'),
(2018831067, 'SWE 327', '5th', '2018-2019', '2021-1'),
(2018831067, 'SWE 328', '5th', '2018-2019', '2021-1'),
(2018831067, 'SWE 330', '5th', '2018-2019', '2021-1'),
(2018831069, 'CSE 323W', '5th', '2018-2019', '2021-1'),
(2018831069, 'CSE 324W', '5th', '2018-2019', '2021-1'),
(2018831069, 'SWE 224', '3rd', '2019-2020', '2021-1'),
(2018831069, 'SWE 321', '5th', '2018-2019', '2021-1'),
(2018831069, 'SWE 322', '5th', '2018-2019', '2021-1'),
(2018831069, 'SWE 325', '5th', '2018-2019', '2021-1'),
(2018831069, 'SWE 326', '5th', '2018-2019', '2021-1'),
(2018831069, 'SWE 327', '5th', '2018-2019', '2021-1'),
(2018831069, 'SWE 328', '5th', '2018-2019', '2021-1'),
(2018831069, 'SWE 330', '5th', '2018-2019', '2021-1'),
(2018831072, 'CSE 323W', '5th', '2018-2019', '2021-1'),
(2018831072, 'CSE 324W', '5th', '2018-2019', '2021-1'),
(2018831072, 'SWE 321', '5th', '2018-2019', '2021-1'),
(2018831072, 'SWE 322', '5th', '2018-2019', '2021-1'),
(2018831072, 'SWE 325', '5th', '2018-2019', '2021-1'),
(2018831072, 'SWE 326', '5th', '2018-2019', '2021-1'),
(2018831072, 'SWE 327', '5th', '2018-2019', '2021-1'),
(2018831072, 'SWE 328', '5th', '2018-2019', '2021-1'),
(2018831072, 'SWE 330', '5th', '2018-2019', '2021-1'),
(2018831073, 'BUS 201W', '3rd', '2019-2020', '2021-1'),
(2018831073, 'CSE 323W', '5th', '2018-2019', '2021-1'),
(2018831073, 'CSE 324W', '5th', '2018-2019', '2021-1'),
(2018831073, 'SWE 321', '5th', '2018-2019', '2021-1'),
(2018831073, 'SWE 322', '5th', '2018-2019', '2021-1'),
(2018831073, 'SWE 325', '5th', '2018-2019', '2021-1'),
(2018831073, 'SWE 326', '5th', '2018-2019', '2021-1'),
(2018831073, 'SWE 327', '5th', '2018-2019', '2021-1'),
(2018831073, 'SWE 328', '5th', '2018-2019', '2021-1'),
(2018831073, 'SWE 330', '5th', '2018-2019', '2021-1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_teach`
--

CREATE TABLE `tbl_teach` (
  `teacher_id` int(11) NOT NULL,
  `course_id` varchar(15) NOT NULL,
  `semester` varchar(35) NOT NULL,
  `session` varchar(40) NOT NULL,
  `USN` varchar(40) NOT NULL,
  `part` varchar(69) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_teach`
--

INSERT INTO `tbl_teach` (`teacher_id`, `course_id`, `semester`, `session`, `USN`, `part`) VALUES
(1, 'SOC 203W', '3rd', '2019-2020', '2021-1', 'A'),
(1, 'SWE 325', '5th', '2018-2019', '2021-1', 'A'),
(1, 'SWE 326', '5th', '2018-2019', '2021-1', 'A'),
(1, 'SWE 327', '5th', '2018-2019', '2021-1', 'B'),
(1, 'SWE 330', '5th', '2018-2019', '2021-1', 'A'),
(2, 'BUS 201W', '3rd', '2019-2020', '2021-1', 'B'),
(2, 'CSE 323W', '5th', '2018-2019', '2021-1', 'B'),
(2, 'SWE 225', '3rd', '2019-2020', '2021-1', 'B'),
(2, 'SWE 327', '5th', '2018-2019', '2021-1', 'A'),
(2, 'SWE 328', '5th', '2018-2019', '2021-1', 'A'),
(3, 'CSE 219W', '3rd', '2019-2020', '2021-1', 'A'),
(3, 'SWE 321', '5th', '2018-2019', '2021-1', 'A'),
(3, 'SWE 322', '5th', '2018-2019', '2021-1', 'A'),
(4, 'CSE 323W', '5th', '2018-2019', '2021-1', 'A'),
(4, 'CSE 324W', '5th', '2018-2019', '2021-1', 'A'),
(4, 'SWE 225', '3rd', '2019-2020', '2021-1', 'A'),
(4, 'SWE 226', '3rd', '2019-2020', '2021-1', 'A'),
(5, 'SWE 222', '3rd', '2019-2020', '2021-1', 'A'),
(5, 'SWE 223', '3rd', '2019-2020', '2021-1', 'A'),
(5, 'SWE 224', '3rd', '2019-2020', '2021-1', 'A'),
(5, 'SWE 321', '5th', '2018-2019', '2021-1', 'B'),
(5, 'SWE 325', '5th', '2018-2019', '2021-1', 'B'),
(6, 'BUS 201W', '3rd', '2019-2020', '2021-1', 'A'),
(6, 'CSE 219W', '3rd', '2019-2020', '2021-1', 'B'),
(6, 'SOC 203W', '3rd', '2019-2020', '2021-1', 'B'),
(6, 'SWE 223', '3rd', '2019-2020', '2021-1', 'B');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_teacher`
--

CREATE TABLE `tbl_teacher` (
  `teacher_id` int(11) NOT NULL,
  `teacher_name` varchar(40) NOT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `teacher_email` varchar(40) DEFAULT NULL,
  `teacher_phone` varchar(15) DEFAULT NULL,
  `designation` varchar(69) NOT NULL,
  `password` varchar(69) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_teacher`
--

INSERT INTO `tbl_teacher` (`teacher_id`, `teacher_name`, `dept_id`, `teacher_email`, `teacher_phone`, `designation`, `password`) VALUES
(7, 'Prof M. Jahirul Islam, PhD., PEng.', 100, 'jahir-cse@sust.edu', '+880-821-726695', 'Depthead', '$2b$10$I7UenUD8JNPFnBpAcwR0reP2e3e2iQq0ZPMd9N2tISyedSC.4V3jC');

-- --------------------------------------------------------

--
-- Structure for view `tbl_result`
--
DROP TABLE IF EXISTS `tbl_result`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tbl_result`  AS   (select `tbl_student`.`reg_no` AS `reg_no`,`tbl_student`.`std_name` AS `std_name`,`tbl_student`.`session` AS `session`,`tbl_result_theory`.`course_id` AS `course_id`,`tbl_course`.`course_credits` AS `course_credits`,`tbl_course`.`course_type` AS `course_type`,`tbl_result_theory`.`gpa` AS `gpa`,`tbl_result_theory`.`letter_grade` AS `letter_grade`,`tbl_result_theory`.`semester` AS `semester`,`tbl_result_theory`.`session` AS `courseSession`,`tbl_result_theory`.`USN` AS `USN` from ((`tbl_result_theory` join `tbl_student`) join `tbl_course`) where `tbl_result_theory`.`reg_no` = `tbl_student`.`reg_no` and `tbl_result_theory`.`course_id` = `tbl_course`.`course_id` and `tbl_result_theory`.`USN` = '2021-1' and `tbl_student`.`session` = '2018-2019') union (select `tbl_student`.`reg_no` AS `reg_no`,`tbl_student`.`std_name` AS `std_name`,`tbl_student`.`session` AS `session`,`tbl_result_lab`.`course_id` AS `course_id`,`tbl_course`.`course_credits` AS `course_credits`,`tbl_course`.`course_type` AS `course_type`,`tbl_result_lab`.`gpa` AS `gpa`,`tbl_result_lab`.`letter_grade` AS `letter_grade`,`tbl_result_lab`.`semester` AS `semester`,`tbl_result_lab`.`session` AS `courseSession`,`tbl_result_lab`.`USN` AS `USN` from ((`tbl_result_lab` join `tbl_student`) join `tbl_course`) where `tbl_result_lab`.`reg_no` = `tbl_student`.`reg_no` and `tbl_result_lab`.`course_id` = `tbl_course`.`course_id` and `tbl_result_lab`.`USN` = '2021-1' and `tbl_student`.`session` = '2018-2019')  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_approval_status`
--
ALTER TABLE `tbl_approval_status`
  ADD PRIMARY KEY (`reg_no`,`semester`,`session`,`USN`);

--
-- Indexes for table `tbl_course`
--
ALTER TABLE `tbl_course`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `dept_id` (`dept_id`);

--
-- Indexes for table `tbl_courseprerequisite`
--
ALTER TABLE `tbl_courseprerequisite`
  ADD KEY `course_id` (`course_id`),
  ADD KEY `prerequisite_id` (`prerequisite_id`);

--
-- Indexes for table `tbl_department`
--
ALTER TABLE `tbl_department`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `tbl_offer`
--
ALTER TABLE `tbl_offer`
  ADD PRIMARY KEY (`course_id`,`semester`,`session`,`USN`),
  ADD KEY `dept_id` (`dept_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `tbl_result_lab`
--
ALTER TABLE `tbl_result_lab`
  ADD KEY `reg_no` (`reg_no`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `first_teacher_id` (`first_teacher_id`),
  ADD KEY `course_id_2` (`course_id`,`semester`,`session`,`USN`),
  ADD KEY `first_teacher_id_2` (`first_teacher_id`,`course_id`,`semester`,`session`,`USN`),
  ADD KEY `reg_no_2` (`reg_no`,`course_id`,`semester`,`session`,`USN`);

--
-- Indexes for table `tbl_result_theory`
--
ALTER TABLE `tbl_result_theory`
  ADD PRIMARY KEY (`reg_no`,`course_id`,`semester`,`session`,`USN`),
  ADD KEY `reg_no` (`reg_no`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `course_id_2` (`course_id`,`semester`,`session`,`USN`),
  ADD KEY `first_teacher_id` (`first_teacher_id`,`course_id`,`semester`,`session`,`USN`),
  ADD KEY `second_teacher_id` (`second_teacher_id`,`course_id`,`semester`,`session`,`USN`);

--
-- Indexes for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD PRIMARY KEY (`reg_no`),
  ADD UNIQUE KEY `std_phone` (`std_phone`),
  ADD UNIQUE KEY `std_email` (`std_email`),
  ADD KEY `dept_id` (`dept_id`);

--
-- Indexes for table `tbl_takes`
--
ALTER TABLE `tbl_takes`
  ADD PRIMARY KEY (`reg_no`,`course_id`,`semester`,`session`,`USN`),
  ADD KEY `reg_no` (`reg_no`),
  ADD KEY `course_id` (`course_id`,`semester`,`session`,`USN`);

--
-- Indexes for table `tbl_teach`
--
ALTER TABLE `tbl_teach`
  ADD PRIMARY KEY (`teacher_id`,`course_id`,`semester`,`session`,`USN`,`part`),
  ADD UNIQUE KEY `course_id_2` (`course_id`,`semester`,`session`,`USN`,`part`),
  ADD KEY `teacher_id` (`teacher_id`),
  ADD KEY `course_id` (`course_id`,`semester`,`session`,`USN`);

--
-- Indexes for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  ADD PRIMARY KEY (`teacher_id`),
  ADD UNIQUE KEY `teacher_email` (`teacher_email`),
  ADD UNIQUE KEY `teacher_phone` (`teacher_phone`),
  ADD KEY `dept_id` (`dept_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_course`
--
ALTER TABLE `tbl_course`
  ADD CONSTRAINT `tbl_course_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `tbl_department` (`dept_id`);

--
-- Constraints for table `tbl_courseprerequisite`
--
ALTER TABLE `tbl_courseprerequisite`
  ADD CONSTRAINT `tbl_courseprerequisite_ibfk_2` FOREIGN KEY (`prerequisite_id`) REFERENCES `tbl_course` (`course_id`),
  ADD CONSTRAINT `tbl_courseprerequisite_ibfk_3` FOREIGN KEY (`course_id`) REFERENCES `tbl_course` (`course_id`);

--
-- Constraints for table `tbl_offer`
--
ALTER TABLE `tbl_offer`
  ADD CONSTRAINT `tbl_offer_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `tbl_department` (`dept_id`),
  ADD CONSTRAINT `tbl_offer_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `tbl_course` (`course_id`);

--
-- Constraints for table `tbl_result_lab`
--
ALTER TABLE `tbl_result_lab`
  ADD CONSTRAINT `tbl_result_lab_ibfk_3` FOREIGN KEY (`first_teacher_id`,`course_id`,`semester`,`session`,`USN`) REFERENCES `tbl_teach` (`teacher_id`, `course_id`, `semester`, `session`, `USN`),
  ADD CONSTRAINT `tbl_result_lab_ibfk_4` FOREIGN KEY (`reg_no`,`course_id`,`semester`,`session`,`USN`) REFERENCES `tbl_takes` (`reg_no`, `course_id`, `semester`, `session`, `USN`);

--
-- Constraints for table `tbl_result_theory`
--
ALTER TABLE `tbl_result_theory`
  ADD CONSTRAINT `tbl_result_theory_ibfk_5` FOREIGN KEY (`reg_no`,`course_id`,`semester`,`session`,`USN`) REFERENCES `tbl_takes` (`reg_no`, `course_id`, `semester`, `session`, `USN`),
  ADD CONSTRAINT `tbl_result_theory_ibfk_6` FOREIGN KEY (`first_teacher_id`,`course_id`,`semester`,`session`,`USN`) REFERENCES `tbl_teach` (`teacher_id`, `course_id`, `semester`, `session`, `USN`),
  ADD CONSTRAINT `tbl_result_theory_ibfk_7` FOREIGN KEY (`second_teacher_id`,`course_id`,`semester`,`session`,`USN`) REFERENCES `tbl_teach` (`teacher_id`, `course_id`, `semester`, `session`, `USN`);

--
-- Constraints for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD CONSTRAINT `tbl_student_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `tbl_department` (`dept_id`);

--
-- Constraints for table `tbl_takes`
--
ALTER TABLE `tbl_takes`
  ADD CONSTRAINT `tbl_takes_ibfk_2` FOREIGN KEY (`reg_no`) REFERENCES `tbl_student` (`reg_no`),
  ADD CONSTRAINT `tbl_takes_ibfk_3` FOREIGN KEY (`course_id`,`semester`,`session`,`USN`) REFERENCES `tbl_offer` (`course_id`, `semester`, `session`, `USN`);

--
-- Constraints for table `tbl_teach`
--
ALTER TABLE `tbl_teach`
  ADD CONSTRAINT `tbl_teach_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `tbl_teacher` (`teacher_id`),
  ADD CONSTRAINT `tbl_teach_ibfk_2` FOREIGN KEY (`course_id`,`semester`,`session`,`USN`) REFERENCES `tbl_offer` (`course_id`, `semester`, `session`, `USN`);

--
-- Constraints for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  ADD CONSTRAINT `tbl_teacher_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `tbl_department` (`dept_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
