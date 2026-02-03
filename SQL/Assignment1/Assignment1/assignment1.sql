-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2026 at 09:53 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assignment1`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `AddNewEmployee` (IN `p_employee_id` INT, IN `p_name` VARCHAR(100), IN `p_age` INT, IN `p_department` VARCHAR(50), IN `p_salary` DECIMAL(10,2), IN `p_joining_date` DATE)   BEGIN
    INSERT INTO employee
    VALUES (p_employee_id, p_name, p_age, p_department, p_salary, p_joining_date);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `AssignManagerToDepartment` (IN `p_department` VARCHAR(50), IN `p_manager_job` VARCHAR(50))   BEGIN
    UPDATE emp_details
    SET emp_job = p_manager_job
    WHERE emp_dept = p_department;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `CountEmployeesByDept` ()   BEGIN
    SELECT department, COUNT(*) AS employee_count
    FROM employee
    GROUP BY department;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteEmployeesByDept` (IN `p_department` VARCHAR(50))   BEGIN
    DELETE FROM employee
    WHERE department = p_department;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `GetTopPaidEmployees` ()   BEGIN
    SELECT department, name, salary
    FROM employee e
    WHERE salary = (
        SELECT MAX(salary)
        FROM employee
        WHERE department = e.department
    );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PromoteEmployee` (IN `p_emp_id` INT, IN `p_new_salary` DECIMAL(10,2), IN `p_new_job` VARCHAR(50))   BEGIN
    UPDATE emp_details
    SET emp_salary = p_new_salary,
        emp_job = p_new_job
    WHERE emp_idno = p_emp_id;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `cust_name` varchar(50) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  `salesman_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `cust_name`, `city`, `grade`, `salesman_id`) VALUES
(3001, 'Brad Guzan', 'London', NULL, 5005),
(3002, 'Nick Rimando', 'New York', 100, 5001),
(3003, 'Jozy Altidor', 'Moscow', 200, 5007),
(3004, 'Fabian Johnson', 'Paris', 300, 5006),
(3005, 'Graham Zusi', 'California', 200, 5002),
(3007, 'Brad Davis', 'New York', 200, 5001),
(3008, 'Julian Green', 'London', 300, 5002),
(3009, 'Geoff Cameron', 'Berlin', 100, 5003);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `joining_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `name`, `age`, `department`, `salary`, `joining_date`) VALUES
(1, 'Alice Johnson', 30, 'HR', 60000, '2019-05-15'),
(2, 'Bob Smith', 40, 'IT', 80000, '2015-08-20'),
(3, 'Charlie Brown', 35, 'Finance', 78750, '2018-11-30'),
(4, 'David White', 28, 'IT', 72000, '2021-01-10'),
(5, 'Emma Wilson', 32, 'Marketing', 65000, '2017-03-25'),
(6, 'Franklin Adams', 45, 'Finance', 94500, '2010-07-12'),
(7, 'Grace Lee', 29, 'HR', 58000, '2020-06-05'),
(8, 'Henry Ford', 50, 'IT', 95000, '2008-12-15'),
(9, 'Isabella Martinez', 38, 'Marketing', 70000, '2016-09-18'),
(10, 'Jack Carter', 27, 'Finance', 71400, '2022-04-10');

-- --------------------------------------------------------

--
-- Table structure for table `emp_details`
--

CREATE TABLE `emp_details` (
  `emp_idno` int(11) NOT NULL,
  `emp_fname` varchar(30) DEFAULT NULL,
  `emp_lname` varchar(30) DEFAULT NULL,
  `emp_dept` int(11) DEFAULT NULL,
  `emp_salary` int(11) DEFAULT NULL,
  `emp_job` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `emp_details`
--

INSERT INTO `emp_details` (`emp_idno`, `emp_fname`, `emp_lname`, `emp_dept`, `emp_salary`, `emp_job`) VALUES
(127323, 'Michale', 'Robbin', 57, 75000, 'MK_MAN'),
(328717, 'Jhon', 'Snares', 63, 48000, 'CLERK'),
(444527, 'Joseph', 'Dosni', 47, 52000, 'ANALYST'),
(526689, 'Carlos', 'Snares', 63, 46000, 'CLERK'),
(539569, 'George', 'Mardy', 27, 60000, 'HR_REP'),
(555935, 'Alex', 'Manuel', 57, 43000, 'SA_REP'),
(631548, 'Alan', 'Snappy', 27, 58000, 'IT_PROG'),
(659831, 'Zanifer', 'Emily', 47, 50000, 'ANALYST'),
(733843, 'Mario', 'Saule', 63, 47000, 'CLERK'),
(748681, 'Henrey', 'Gabriel', 47, 54000, 'HR_REP'),
(839139, 'Maria', 'Foster', 57, 62000, 'SA_MAN'),
(843795, 'Enric', 'Dosio', 57, 61000, 'SA_MAN'),
(847674, 'Kuleswar', 'Sitaraman', 57, 45000, 'CLERK');

-- --------------------------------------------------------

--
-- Table structure for table `item_mast`
--

CREATE TABLE `item_mast` (
  `pro_id` int(11) NOT NULL,
  `pro_name` varchar(50) DEFAULT NULL,
  `pro_price` decimal(10,2) DEFAULT NULL,
  `pro_com` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item_mast`
--

INSERT INTO `item_mast` (`pro_id`, `pro_name`, `pro_price`, `pro_com`) VALUES
(101, 'Motherboard', 3200.00, 15),
(102, 'Keyboard', 450.00, 16),
(103, 'ZIP drive', 250.00, 14),
(104, 'Speaker', 550.00, 16),
(105, 'Monitor', 5000.00, 11),
(106, 'DVD drive', 900.00, 12),
(107, 'CD drive', 800.00, 12),
(108, 'Printer', 2600.00, 13),
(109, 'Refill cartridge', 350.00, 13),
(110, 'Mouse', 250.00, 12);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ord_no` int(11) NOT NULL,
  `purch_amt` decimal(10,2) DEFAULT NULL,
  `ord_date` date DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `salesman_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`ord_no`, `purch_amt`, `ord_date`, `customer_id`, `salesman_id`) VALUES
(70001, 150.50, '2012-10-05', 3005, 5002),
(70002, 65.26, '2012-10-05', 3002, 5001),
(70003, 2480.40, '2012-10-10', 3009, 5003),
(70004, 110.50, '2012-08-17', 3009, 5003),
(70005, 2400.60, '2012-07-27', 3007, 5001),
(70007, 948.50, '2012-09-10', 3005, 5002),
(70008, 5760.00, '2012-09-10', 3002, 5001),
(70009, 270.65, '2012-09-10', 3001, 5005),
(70010, 1983.43, '2012-10-10', 3004, 5006),
(70011, 75.29, '2012-08-17', 3003, 5007),
(70012, 250.45, '2012-06-27', 3008, 5002),
(70013, 3045.60, '2012-04-25', 3002, 500);

-- --------------------------------------------------------

--
-- Table structure for table `salesman`
--

CREATE TABLE `salesman` (
  `salesman_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `commission` decimal(4,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salesman`
--

INSERT INTO `salesman` (`salesman_id`, `name`, `city`, `commission`) VALUES
(5001, 'James Hoog', 'New York', 0.15),
(5002, 'Nail Knite', 'Paris', 0.13),
(5003, 'Lauson Hen', 'San Jose', 0.12),
(5005, 'Pit Alex', 'London', 0.11),
(5006, 'Mc Lyon', 'Paris', 0.14),
(5007, 'Paul Adam', 'Rome', 0.13);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `emp_details`
--
ALTER TABLE `emp_details`
  ADD PRIMARY KEY (`emp_idno`);

--
-- Indexes for table `item_mast`
--
ALTER TABLE `item_mast`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ord_no`);

--
-- Indexes for table `salesman`
--
ALTER TABLE `salesman`
  ADD PRIMARY KEY (`salesman_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
