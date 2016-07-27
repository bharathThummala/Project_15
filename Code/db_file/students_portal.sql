-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 27, 2016 at 12:16 PM
-- Server version: 5.7.13-0ubuntu0.16.04.2
-- PHP Version: 7.0.8-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `students_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `Additional`
--

CREATE TABLE `Additional` (
  `S_id` int(11) DEFAULT NULL,
  `Faculty_name` varchar(20) DEFAULT NULL,
  `Credits` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Additional`
--

INSERT INTO `Additional` (`S_id`, `Faculty_name`, `Credits`) VALUES
(3, 'uma', 2),
(4, 'rani', 2);

-- --------------------------------------------------------

--
-- Table structure for table `Admin`
--

CREATE TABLE `Admin` (
  `A_id` int(11) NOT NULL,
  `A_name` varchar(20) DEFAULT NULL,
  `A_email` varchar(50) DEFAULT NULL,
  `A_password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Admin`
--

INSERT INTO `Admin` (`A_id`, `A_name`, `A_email`, `A_password`) VALUES
(1001, 'Admin1', 'Admin@gmail.com', 'e6e061838856bf47e1de730719fb2609');

-- --------------------------------------------------------

--
-- Table structure for table `Attendence`
--

CREATE TABLE `Attendence` (
  `S_id` int(11) DEFAULT NULL,
  `C_id` int(11) DEFAULT NULL,
  `No_of_Absents` int(11) DEFAULT NULL,
  `No_of_Presents` int(11) DEFAULT NULL,
  `Percentage` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Belongs`
--

CREATE TABLE `Belongs` (
  `S_id` int(11) DEFAULT NULL,
  `D_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Belongs`
--

INSERT INTO `Belongs` (`S_id`, `D_id`) VALUES
(1, 1001),
(2, 1002),
(3, 1001),
(4, 1001),
(5, 1001),
(6, 1001);

-- --------------------------------------------------------

--
-- Table structure for table `Course`
--

CREATE TABLE `Course` (
  `C_id` int(11) NOT NULL,
  `C_name` varchar(50) DEFAULT NULL,
  `No_Of_Credits` int(11) DEFAULT NULL,
  `Type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Course`
--

INSERT INTO `Course` (`C_id`, `C_name`, `No_Of_Credits`, `Type`) VALUES
(3001, 'Algorithms', 4, 'CORE'),
(3002, 'DSAA', 4, 'CORE'),
(3003, 'ITWS-3', 4, 'CORE'),
(3004, 'Operating Systems', 4, 'CORE'),
(3005, 'Humanities-3', 4, 'CORE'),
(5001, 'DBMS', 4, 'CORE'),
(5002, 'Theory Of Computation', 4, 'Flexi_CORE'),
(5003, 'Embedd Systems', 4, 'Flexi_CORE'),
(5004, 'Software Engneering', 4, 'Bouquet_CORE'),
(5005, 'Information Retrival', 4, 'Bouquet_CORE'),
(5006, 'Digitial Image Processing', 4, 'It_Elective'),
(5007, 'Cloud Computing', 4, 'It_Elective');

-- --------------------------------------------------------

--
-- Table structure for table `Department`
--

CREATE TABLE `Department` (
  `D_id` int(11) NOT NULL,
  `D_name` varchar(40) DEFAULT NULL,
  `D_intake` int(11) DEFAULT NULL,
  `D_period` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Department`
--

INSERT INTO `Department` (`D_id`, `D_name`, `D_intake`, `D_period`) VALUES
(1001, 'COMPUTER SCIENCE & ENGNEERING', 130, 4),
(1002, 'ELECTRONIC COMMUNICATION & ENGNEERING', 60, 4);

-- --------------------------------------------------------

--
-- Table structure for table `Dummy`
--

CREATE TABLE `Dummy` (
  `S_id` int(11) DEFAULT NULL,
  `C_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Dummy`
--

INSERT INTO `Dummy` (`S_id`, `C_id`) VALUES
(3, 5001),
(3, 5003),
(3, 5005),
(3, 5007),
(3, 5006),
(4, 5001),
(4, 5003),
(4, 5004),
(4, 5005),
(4, 5006),
(5, 5001),
(5, 5002),
(5, 5004),
(5, 5006),
(6, 5001),
(6, 5002),
(6, 5006),
(6, 5003);

-- --------------------------------------------------------

--
-- Table structure for table `Dummy1`
--

CREATE TABLE `Dummy1` (
  `S_id` int(11) DEFAULT NULL,
  `C_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Dummy1`
--

INSERT INTO `Dummy1` (`S_id`, `C_id`) VALUES
(3, 5002),
(3, 5004),
(4, 5002),
(4, 5007),
(5, 5003),
(5, 5005),
(5, 5007),
(6, 5005),
(6, 5007),
(6, 5004);

-- --------------------------------------------------------

--
-- Table structure for table `Enrolls`
--

CREATE TABLE `Enrolls` (
  `S_id` int(11) DEFAULT NULL,
  `C_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Enrolls`
--

INSERT INTO `Enrolls` (`S_id`, `C_id`) VALUES
(3, 5001),
(3, 5003),
(3, 5005),
(3, 5007),
(3, 5006),
(4, 5001),
(4, 5003),
(4, 5004),
(4, 5005),
(4, 5006),
(5, 5001),
(5, 5002),
(5, 5004),
(5, 5006),
(6, 5001),
(6, 5002),
(6, 5006),
(6, 5003);

-- --------------------------------------------------------

--
-- Table structure for table `Faculty`
--

CREATE TABLE `Faculty` (
  `F_id` int(11) NOT NULL,
  `U_id` int(11) DEFAULT NULL,
  `F_designation` varchar(20) DEFAULT NULL,
  `F_age` int(11) DEFAULT NULL,
  `F_dob` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Faculty`
--

INSERT INTO `Faculty` (`F_id`, `U_id`, `F_designation`, `F_age`, `F_dob`) VALUES
(1, 5, 'd', 4, '2016-07-29'),
(2, 6, 'Ph.D in Maths', 25, '1991-07-21');

-- --------------------------------------------------------

--
-- Table structure for table `Handles`
--

CREATE TABLE `Handles` (
  `C_id` int(11) DEFAULT NULL,
  `D_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Handles`
--

INSERT INTO `Handles` (`C_id`, `D_id`) VALUES
(3001, 1001),
(3002, 1001),
(3003, 1001),
(3004, 1001),
(3005, 1001),
(5001, 1001),
(5002, 1001),
(5003, 1001),
(5004, 1001),
(5005, 1001),
(5006, 1001),
(5007, 1001);

-- --------------------------------------------------------

--
-- Table structure for table `HOD`
--

CREATE TABLE `HOD` (
  `H_id` int(11) DEFAULT NULL,
  `F_id` int(11) DEFAULT NULL,
  `Sem_no` int(11) DEFAULT NULL,
  `Department` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `HOD`
--

INSERT INTO `HOD` (`H_id`, `F_id`, `Sem_no`, `Department`) VALUES
(111, NULL, NULL, NULL),
(112, NULL, NULL, NULL),
(121, NULL, NULL, NULL),
(122, 2, 4, 'COMPUTER SCIENCE & ENGNEERING'),
(131, 1, 5, 'COMPUTER SCIENCE & ENGNEERING'),
(132, NULL, NULL, NULL),
(141, NULL, NULL, NULL),
(142, NULL, NULL, NULL),
(211, NULL, NULL, NULL),
(212, NULL, NULL, NULL),
(221, NULL, NULL, NULL),
(222, NULL, NULL, NULL),
(231, NULL, NULL, NULL),
(232, NULL, NULL, NULL),
(241, NULL, NULL, NULL),
(242, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Offers`
--

CREATE TABLE `Offers` (
  `C_id` int(11) DEFAULT NULL,
  `Sem_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Offers`
--

INSERT INTO `Offers` (`C_id`, `Sem_id`) VALUES
(3001, 201),
(3002, 201),
(3003, 201),
(3004, 201),
(3005, 201),
(5001, 301),
(5002, 301),
(5003, 301),
(5004, 301),
(5005, 301),
(5006, 301),
(5007, 301);

-- --------------------------------------------------------

--
-- Table structure for table `Semester`
--

CREATE TABLE `Semester` (
  `Sem_id` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `season` varchar(20) DEFAULT NULL,
  `Sem_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Semester`
--

INSERT INTO `Semester` (`Sem_id`, `year`, `season`, `Sem_no`) VALUES
(101, 1, 'Monsoon', 1),
(102, 1, 'Spring', 2),
(201, 2, 'Monsoon', 3),
(202, 2, 'Spring', 4),
(301, 3, 'Monsoon', 5),
(302, 3, 'Spring', 6),
(401, 4, 'Monsoon', 7),
(402, 4, 'Spring', 8);

-- --------------------------------------------------------

--
-- Table structure for table `Student`
--

CREATE TABLE `Student` (
  `S_id` int(11) NOT NULL,
  `U_id` int(11) DEFAULT NULL,
  `S_rollno` int(11) DEFAULT NULL,
  `S_age` int(11) DEFAULT NULL,
  `S_dob` varchar(15) DEFAULT NULL,
  `S_address` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Student`
--

INSERT INTO `Student` (`S_id`, `U_id`, `S_rollno`, `S_age`, `S_dob`, `S_address`) VALUES
(1, 1, 201301017, 21, '1995-11-21', 'Nellore'),
(2, 4, 324, 31, '2016-07-01', 'kkr'),
(3, 2, 201301026, 21, '1995-07-03', 'bezawada'),
(4, 3, 201301034, 20, '1996-07-27', 'hyderabad'),
(5, 7, 201311015, 21, '2016-07-02', ''),
(6, 8, 20139999, 20, '2016-07-07', 'sricity,chittoor');

-- --------------------------------------------------------

--
-- Table structure for table `Studying`
--

CREATE TABLE `Studying` (
  `S_id` int(11) DEFAULT NULL,
  `Sem_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Studying`
--

INSERT INTO `Studying` (`S_id`, `Sem_id`) VALUES
(1, 101),
(2, 402),
(3, 301),
(4, 301),
(5, 301),
(6, 301);

-- --------------------------------------------------------

--
-- Table structure for table `Teaches`
--

CREATE TABLE `Teaches` (
  `C_id` int(11) DEFAULT NULL,
  `F_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Teaches`
--

INSERT INTO `Teaches` (`C_id`, `F_id`) VALUES
(3004, 1),
(3001, 1),
(5006, 1),
(3001, 2),
(3004, 2),
(5007, 2);

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `U_id` int(11) NOT NULL,
  `F_name` varchar(20) DEFAULT NULL,
  `L_name` varchar(20) DEFAULT NULL,
  `U_name` varchar(20) DEFAULT NULL,
  `U_gender` varchar(10) DEFAULT NULL,
  `U_email` varchar(40) DEFAULT NULL,
  `U_password` varchar(100) DEFAULT NULL,
  `U_phone_no` varchar(20) DEFAULT NULL,
  `U_category` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`U_id`, `F_name`, `L_name`, `U_name`, `U_gender`, `U_email`, `U_password`, `U_phone_no`, `U_category`) VALUES
(1, 'kranthi', 'kumar', 'kranthi', 'Male', 'kranthi.n13@iiits.in', 'f231d618c5432bd7c9bbb17e2c5156ea', '9490094634', 'student'),
(2, 'bharath', 'venkata', 'bharath', 'Male', 'bharath.t13@iiits.in', 'f231d618c5432bd7c9bbb17e2c5156ea', '9490094634', 'student'),
(3, 'sudhigna', 'yadav', 'sudhigna', 'Female', 'sudhigna.d13@iiits.in', 'f231d618c5432bd7c9bbb17e2c5156ea', '9490094634', 'student'),
(4, 'prabhath', 'kas', 'prabhath', 'Male', 'prabhath.k13@iiits.in', 'f231d618c5432bd7c9bbb17e2c5156ea', '9490094634', 'student'),
(5, 'Ravi', 'Babu', 'ravi', 'Male', 'ravi@gmail.com', 'e58cc3fe4b3387c893c8fc9dd43a829a', '900000000', 'Faculty'),
(6, 'Roja', 'Rani', 'rani', 'Female', 'rani@gmail.com', '1d277db88c98dca5cee08a4102a8c751', '9490094634', 'Faculty'),
(7, 'sai', 'nath', 'sainath', 'Male', 'sainath.p13@iiits.in', 'f231d618c5432bd7c9bbb17e2c5156ea', '9490094634', 'student'),
(8, 'venkatesh', 'korsa', 'venky', 'Male', 'venky.k13@iiits.in', 'f231d618c5432bd7c9bbb17e2c5156ea', '9490094634', 'student');

-- --------------------------------------------------------

--
-- Table structure for table `validition`
--

CREATE TABLE `validition` (
  `vid` int(11) NOT NULL,
  `S_date` datetime DEFAULT NULL,
  `E_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `validition`
--

INSERT INTO `validition` (`vid`, `S_date`, `E_date`) VALUES
(1, '2016-07-27 11:58:00', '2016-07-27 12:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Additional`
--
ALTER TABLE `Additional`
  ADD KEY `S_id` (`S_id`);

--
-- Indexes for table `Admin`
--
ALTER TABLE `Admin`
  ADD PRIMARY KEY (`A_id`);

--
-- Indexes for table `Attendence`
--
ALTER TABLE `Attendence`
  ADD KEY `S_id` (`S_id`),
  ADD KEY `C_id` (`C_id`);

--
-- Indexes for table `Belongs`
--
ALTER TABLE `Belongs`
  ADD KEY `S_id` (`S_id`),
  ADD KEY `D_id` (`D_id`);

--
-- Indexes for table `Course`
--
ALTER TABLE `Course`
  ADD PRIMARY KEY (`C_id`);

--
-- Indexes for table `Department`
--
ALTER TABLE `Department`
  ADD PRIMARY KEY (`D_id`);

--
-- Indexes for table `Dummy`
--
ALTER TABLE `Dummy`
  ADD KEY `S_id` (`S_id`),
  ADD KEY `C_id` (`C_id`);

--
-- Indexes for table `Dummy1`
--
ALTER TABLE `Dummy1`
  ADD KEY `S_id` (`S_id`),
  ADD KEY `C_id` (`C_id`);

--
-- Indexes for table `Enrolls`
--
ALTER TABLE `Enrolls`
  ADD KEY `S_id` (`S_id`),
  ADD KEY `C_id` (`C_id`);

--
-- Indexes for table `Faculty`
--
ALTER TABLE `Faculty`
  ADD PRIMARY KEY (`F_id`),
  ADD KEY `U_id` (`U_id`);

--
-- Indexes for table `Handles`
--
ALTER TABLE `Handles`
  ADD KEY `C_id` (`C_id`),
  ADD KEY `D_id` (`D_id`);

--
-- Indexes for table `Offers`
--
ALTER TABLE `Offers`
  ADD KEY `C_id` (`C_id`),
  ADD KEY `Sem_id` (`Sem_id`);

--
-- Indexes for table `Semester`
--
ALTER TABLE `Semester`
  ADD PRIMARY KEY (`Sem_id`);

--
-- Indexes for table `Student`
--
ALTER TABLE `Student`
  ADD PRIMARY KEY (`S_id`),
  ADD KEY `U_id` (`U_id`);

--
-- Indexes for table `Studying`
--
ALTER TABLE `Studying`
  ADD KEY `S_id` (`S_id`),
  ADD KEY `Sem_id` (`Sem_id`);

--
-- Indexes for table `Teaches`
--
ALTER TABLE `Teaches`
  ADD KEY `C_id` (`C_id`),
  ADD KEY `F_id` (`F_id`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`U_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Faculty`
--
ALTER TABLE `Faculty`
  MODIFY `F_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Student`
--
ALTER TABLE `Student`
  MODIFY `S_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `U_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Additional`
--
ALTER TABLE `Additional`
  ADD CONSTRAINT `Additional_ibfk_1` FOREIGN KEY (`S_id`) REFERENCES `Student` (`S_id`);

--
-- Constraints for table `Attendence`
--
ALTER TABLE `Attendence`
  ADD CONSTRAINT `Attendence_ibfk_1` FOREIGN KEY (`S_id`) REFERENCES `Student` (`S_id`),
  ADD CONSTRAINT `Attendence_ibfk_2` FOREIGN KEY (`C_id`) REFERENCES `Course` (`C_id`);

--
-- Constraints for table `Belongs`
--
ALTER TABLE `Belongs`
  ADD CONSTRAINT `Belongs_ibfk_1` FOREIGN KEY (`S_id`) REFERENCES `Student` (`S_id`),
  ADD CONSTRAINT `Belongs_ibfk_2` FOREIGN KEY (`D_id`) REFERENCES `Department` (`D_id`);

--
-- Constraints for table `Enrolls`
--
ALTER TABLE `Enrolls`
  ADD CONSTRAINT `Enrolls_ibfk_1` FOREIGN KEY (`S_id`) REFERENCES `Student` (`S_id`),
  ADD CONSTRAINT `Enrolls_ibfk_2` FOREIGN KEY (`C_id`) REFERENCES `Course` (`C_id`);

--
-- Constraints for table `Faculty`
--
ALTER TABLE `Faculty`
  ADD CONSTRAINT `Faculty_ibfk_1` FOREIGN KEY (`U_id`) REFERENCES `User` (`U_id`);

--
-- Constraints for table `Handles`
--
ALTER TABLE `Handles`
  ADD CONSTRAINT `Handles_ibfk_1` FOREIGN KEY (`C_id`) REFERENCES `Course` (`C_id`),
  ADD CONSTRAINT `Handles_ibfk_2` FOREIGN KEY (`D_id`) REFERENCES `Department` (`D_id`);

--
-- Constraints for table `Offers`
--
ALTER TABLE `Offers`
  ADD CONSTRAINT `Offers_ibfk_1` FOREIGN KEY (`C_id`) REFERENCES `Course` (`C_id`),
  ADD CONSTRAINT `Offers_ibfk_2` FOREIGN KEY (`Sem_id`) REFERENCES `Semester` (`Sem_id`);

--
-- Constraints for table `Student`
--
ALTER TABLE `Student`
  ADD CONSTRAINT `Student_ibfk_1` FOREIGN KEY (`U_id`) REFERENCES `User` (`U_id`);

--
-- Constraints for table `Studying`
--
ALTER TABLE `Studying`
  ADD CONSTRAINT `Studying_ibfk_1` FOREIGN KEY (`S_id`) REFERENCES `Student` (`S_id`),
  ADD CONSTRAINT `Studying_ibfk_2` FOREIGN KEY (`Sem_id`) REFERENCES `Semester` (`Sem_id`);

--
-- Constraints for table `Teaches`
--
ALTER TABLE `Teaches`
  ADD CONSTRAINT `Teaches_ibfk_1` FOREIGN KEY (`C_id`) REFERENCES `Course` (`C_id`),
  ADD CONSTRAINT `Teaches_ibfk_2` FOREIGN KEY (`F_id`) REFERENCES `Faculty` (`F_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
