-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2019 at 05:42 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coursereg`
--

-- --------------------------------------------------------

--
-- Table structure for table `clg_details`
--

CREATE TABLE `clg_details` (
  `clg_id` varchar(6) NOT NULL,
  `clg_name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clg_details`
--

INSERT INTO `clg_details` (`clg_id`, `clg_name`) VALUES
('acpati', 'A.C.Patil'),
('bharti', 'Bharti Vidhyapeeth College'),
('rait', 'Ramrao Adhik College'),
('sies', 'SIES GST College'),
('terna', 'Terna Engineering College');

-- --------------------------------------------------------

--
-- Table structure for table `course_details`
--

CREATE TABLE `course_details` (
  `course_id` varchar(10) NOT NULL,
  `course_name` varchar(30) DEFAULT NULL,
  `course_year` enum('FE','SE','TE','BE') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_details`
--

INSERT INTO `course_details` (`course_id`, `course_name`, `course_year`) VALUES
('be1', 'Big Data Analysis', 'BE'),
('be2', 'Computer Simulation and Modell', 'BE'),
('fe1', 'Basic Electronics', 'FE'),
('fe2', 'Mechanics', 'FE'),
('se1', 'Data Structures', 'SE'),
('se2', 'Analysis of Algorithm', 'SE'),
('te1', 'Database Management', 'TE'),
('te2', 'Computer Networks', 'TE');

-- --------------------------------------------------------

--
-- Table structure for table `instructor_details`
--

CREATE TABLE `instructor_details` (
  `inst_id` varchar(6) NOT NULL,
  `course_id` varchar(6) DEFAULT NULL,
  `inst_name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instructor_details`
--

INSERT INTO `instructor_details` (`inst_id`, `course_id`, `inst_name`) VALUES
('adw', 'te1', 'Adwait Patil'),
('aji', 'fe2', 'Ajit Tomar'),
('dam', 'be2', 'Damini Shelke'),
('pri', 'se2', 'Priyanka Pawar'),
('sam', 'te2', 'Sameer Mahajan'),
('sar', 'be1', 'Sarvesh Khot'),
('shr', 'fe1', 'Shraddha Jathar'),
('suy', 'se1', 'Suyog Patil');

-- --------------------------------------------------------

--
-- Table structure for table `lab_details`
--

CREATE TABLE `lab_details` (
  `course_id` varchar(10) DEFAULT NULL,
  `lab_aim1` varchar(500) DEFAULT NULL,
  `lab_aim2` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lab_details`
--

INSERT INTO `lab_details` (`course_id`, `lab_aim1`, `lab_aim2`) VALUES
('fe1', 'Verification of Superposition Theorem.', 'Verification Thevenin’s Theorem.'),
('fe2', 'Polygon law of coplanar forces.', 'Support reaction for beam.'),
('se1', 'Implementation of different searching techniques.', 'Implementation of different sorting techniques'),
('se2', 'Analysis of binary search.', 'Analysis of quick sort.'),
('te1', 'Study of DDL commands.', 'Study of DML commands'),
('te2', 'Study of various Network devices.', 'Building of any topology using Network tool'),
('be1', 'programming exercises on Hadoop ', 'Implementing any one Frequent Itemset algorithm using Map Reduce'),
('be2', 'Tutorials on statistical models', 'Reliability problem ');

-- --------------------------------------------------------

--
-- Table structure for table `stu_details`
--

CREATE TABLE `stu_details` (
  `stu_id` varchar(15) NOT NULL,
  `clg_id` varchar(6) DEFAULT NULL,
  `stu_name` varchar(30) DEFAULT NULL,
  `stu_year` enum('FE','SE','TE','BE') DEFAULT NULL,
  `stu_email` varchar(30) DEFAULT NULL,
  `stu_password` varchar(30) DEFAULT NULL,
  `course_id` varchar(10) DEFAULT NULL,
  `is_ta` tinyint(1) DEFAULT 0,
  `is_la` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tutorial_details`
--

CREATE TABLE `tutorial_details` (
  `course_id` varchar(10) DEFAULT NULL,
  `tut_aim1` varchar(500) DEFAULT NULL,
  `tut_aim2` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tutorial_details`
--

INSERT INTO `tutorial_details` (`course_id`, `tut_aim1`, `tut_aim2`) VALUES
('fe1', 'DC Circuits(Only Independent Sources): Kirchhoff ’s laws, Ideal and practical voltage\r\nand current source, Mesh and Nodal analysis, Super node and Super mesh analysis, Source\r\ntransformation, Star-delta transformation, Superposition theorem, Thevenin’s theorem,\r\nNorton’s theorem, Maximum power transfer theorem, (Source transformation not allowed\r\nfor Superposition theorem, Mesh and Nodal analysis).', 'AC Circuits: Generation of alternating voltage and currents, RMS and Average value, form factor, crest factor, AC through resistance, inductance and capacitance, R-L, R-C and R-LC series and parallel circuits, phasor diagrams, power and power factor, series and parallel\r\nresonance, Q factor and bandwidth.'),
('fe2', 'System of Coplanar Forces: Resultant of concurrent forces, parallel forces, non-concurrent Non-parallel system of forces, Moment of force about a point, Couples, Varignon’s Theorem. Force couple system. Distributed Forces in plane.\r\nCentroid for plane Laminas.', 'Equilibrium of System of Coplanar Forces: Condition of equilibrium for concurrent forces, parallel forces and non-concurrent nonparallel general forces and Couples.\r\nTypes of support: Loads, Beams, Determination of reactions at supports for various types of loads on beams.(Excluding problems on internal hinges)\r\nAnalysis of plane trusses: By using Method of joints and Method of sections. (Excluding pin jointed frames).'),
('se1', 'Introduction to Data Structures: Introduction, Types of Data Structures – Linear and Nonlinear, Operations on Data Structures, Concept of ADT, Arrays.', '\r\nLinked List: Introduction, Representation of Linked List, Linked List v/s Array, Implementation of Linked List, Linked Implementation of Stack and Queue, Circular Linked List, Doubly Linked List, Application – Polynomial Representation and Addition.'),
('se2', 'Introduction to analysis of algorithm : Performance analysis , space and time complexity Growth of function – Big –Oh ,Omega , Theta notation Mathematical background for algorithm analysis, Analysis of selection sort , insertion sort', 'Recurrences: The substitution method, Recursion tree method, Master method'),
('te1', 'Concept and Overview Distributed Database system : What is Distributed Database System (DDBS), Features of DDBS, promises of DDBS, Design issue in DDBS, Distributed DBMS architecture: Client/server System, Peer­to­Peer, Mutli­Database system.', 'Distributed Deadlock and Recovery : Introduction to Deadlock,  Distributed Deadlock prevention, avoidance, detection and recovery, Two­Phase and Three­Phase Commit Protocol.'),
('te2', 'Introduction : History   and   development   of   computer   network,   network application, network software and hardware components, topology, protocol hierarchies, design issues for the layers, connection oriented and connectionless services, reference models: layer details of OSI, TCP/IP models. Communication between layers.', 'Physical Layer : Guided Transmission Media: Twisted pair, Coaxial, Fiber optics. Unguided media (Wireless Transmission): Radio Waves, Bluetooth, Infrared, Virtual LAN.'),
('be1', 'Introduction to Big Data : Introduction to Big Data, Big Data characteristics, types of Big Data, Traditional vs. Big Data business approach, Case Study of Big Data Solutions.', 'Introduction to Hadoop : What is Hadoop? Core Hadoop Components; Hadoop Ecosystem , Physical Architecture; Hadoop limitations.'),
('be2', 'Introduction to Simulation : Simulation Examples,General Principles', 'Statistical Models in simulation. Queuing Models');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clg_details`
--
ALTER TABLE `clg_details`
  ADD PRIMARY KEY (`clg_id`),
  ADD UNIQUE KEY `clg_name` (`clg_name`);

--
-- Indexes for table `course_details`
--
ALTER TABLE `course_details`
  ADD PRIMARY KEY (`course_id`),
  ADD UNIQUE KEY `course_name` (`course_name`);

--
-- Indexes for table `instructor_details`
--
ALTER TABLE `instructor_details`
  ADD PRIMARY KEY (`inst_id`);

--
-- Indexes for table `lab_details`
--
ALTER TABLE `lab_details`
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `stu_details`
--
ALTER TABLE `stu_details`
  ADD PRIMARY KEY (`stu_id`),
  ADD UNIQUE KEY `stu_email` (`stu_email`),
  ADD KEY `clg_id` (`clg_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `tutorial_details`
--
ALTER TABLE `tutorial_details`
  ADD KEY `course_id` (`course_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `lab_details`
--
ALTER TABLE `lab_details`
  ADD CONSTRAINT `lab_details_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course_details` (`course_id`);

--
-- Constraints for table `stu_details`
--
ALTER TABLE `stu_details`
  ADD CONSTRAINT `stu_details_ibfk_1` FOREIGN KEY (`clg_id`) REFERENCES `clg_details` (`clg_id`),
  ADD CONSTRAINT `stu_details_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course_details` (`course_id`);

--
-- Constraints for table `tutorial_details`
--
ALTER TABLE `tutorial_details`
  ADD CONSTRAINT `tutorial_details_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course_details` (`course_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
