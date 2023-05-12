-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2022 at 07:29 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bikerental`
--
CREATE DATABASE IF NOT EXISTS `bikerental` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bikerental`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '81dc9bdb52d04dc20036dbd8313ed055', '2022-03-18 06:26:41');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` datetime DEFAULT NULL,
  `ToDate` datetime DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`) VALUES
(5, 'test@gmail.com', 8, '2022-03-12 01:26:27', '2022-03-19 01:26:27', 'I am interested in obtaining a single bike and Minimum Tools for accessories', 1, '2022-03-11 17:26:27'),
(6, 'test@gmail.com', 1, '2022-03-14 12:38:02', '2022-04-14 12:38:02', 'I would like two bikes with helmets', 1, '2022-03-14 04:38:02'),
(10, 'test@gmail.com', 39, '2022-05-01 19:25:11', '2022-05-02 19:25:11', 'I only rent one bike', 2, '2022-05-01 11:25:11');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(8, '3T', '2022-03-09 19:13:30', NULL),
(9, '6KU ', '2022-03-11 00:25:59', NULL),
(13, 'Alchemy Bikes', '2022-03-23 09:42:15', '2022-11-12 04:34:31');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(4, 'Tommy Vercetti', 'test@gmail.com', '09123456789', 'I would like my entire account to be deleted.', '2022-03-11 17:46:43', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '																																																		<p align=\"justify\"><font size=\"2\">\r\nWherever used herein, the term “equipment” shall include any equipment rented from Cycling-Rentals.  Cycling-Rentals, its agents, servants, and employees shall not be responsible for personal injuries or property damage, loss or delay incurred by any person arising out of the act of negligence of any direct or supplemental carrier or other person rendering any of the services or products being offered in these rentals; nor shall Cycling-Rentals be responsible for any injuries, death, damage, loss or delay in any means of transportation or by reasons of any event beyond the actual control of Cycling-Rentals, or of any agent or supplier, or due to force majeure. Renters follow any suggested itinerary at their own risk and agree not to hold Cycling-Rentals or Cycling Through the Centuries, lda. responsible for injury or death resulting from accidents. We strongly recommend the use of approved helmets whenever mounted on a bicycle.  Helmets can be provided at no extra cost. The bicycles provided for use are in satisfactory operating condition and participants agree to use them at their own risk or call deficiencies to the attention of a company representative. Individual bike specifications are subject to change based on availability of replacement components. Instruction in the use, assembly and maintenance of bicycles will not be provided and participants affirm that they are competent and familiar with the use of a multi-speed bicycle.<br><br>\r\n<strong><font color=\"#e6ac00\">\r\n(1) MAINTENANCE, TUNING AND RESPONSIBILITY\r\n</font><br><br></strong>\r\n\r\nAlthough all our bikes are professionally serviced before dispatch, bicycles may need tuning or maintenance during the course of the rental period; such maintenance will be carried out at the renter\'s expense.  Cycling Rentals will cover the cost of damages due to equipment failures beyond the renter’s control; i.e., damage occurred during transport or worn parts.  Any deficiencies must be communicated to Cycling Rentals within 48 hours of receipt of the equipment.  To be eligible for a refund on such parts and service, you must provide Cycling Rentals with a photo of the damaged or worn parts and an invoice for new parts or services. Cycling Rentals is responsible for structural deficiencies such as damaged frames, worn bottom brackets, suspension and wheel hubs.  Cycling Rentals is not responsible for the following occurrences during bike rental:  \r\n\r\ngear tune ups / punctures / broken spokes / broken chains / broken derailleurs / broken drop-outs / wheel rim damage / torn saddles / stripped threads on pedal crank / damage beyond the control of Cycling Rentals and resultant of rider use or misuse. \r\n\r\nIf you are undertaking an unassisted bicycle tour, we strongly recommend that you have some basic bicycle maintenance knowledge.  A list of the closest bike shops can be provided on request.</font><font size=\"2\"><br><br>\r\n<strong><font color=\"#e6ac00\">\r\n(2) RESPONSIBILITY FOR DAMAGE OR LOSS\r\n</font><br><br></strong>\r\n\r\nCustomer agrees he/she will return the equipment in the same good condition as when received, ordinary wear and tear accepted, and to repair and replace lost or stolen, damaged or broken bicycles or parts or to reimburse Cycling-Rentals for said equipment. Therefore, regardless of the party at fault, customer understands and agrees to be responsible for the theft or damage to said equipment.</font></p>\r\n										\r\n										\r\n										\r\n										\r\n										'),
(2, 'Privacy Policy', 'privacy', '																				<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"> We will not sell, distribute or lease your personal information to third parties unless we have your permission or are required by law to do so. We may use your personal information to send you promotional information about third parties which we think you may find interesting if you tell us that you wish this to happen. If you believe that any information we are holding on you is incorrect or incomplete, please email us as soon as possible. We will promptly update any information found to be incorrect.</span>'),
(3, 'About Us ', 'aboutus', '																																																																																										<div><div style=\"text-align: justify;\"><div><span style=\"font-size: small;\">Bike Rental System is a fun, free, and trusted way to rent instantly online. We are a leading website and first marketplace platform in Davao City. Join thousands of others on the Bike Rental System to rent the bicylce you always like. Doing your rentals online is safe and convenient.&nbsp;</span></div><div><span style=\"font-size: small;\"><br></span></div><div><span style=\"font-size: small;\">We provide a user-friendly website where users can find and book a wide range of bicycles online. The company guarantees the best at affordable prices with verified reviews from previous renters and no booking fees!</span></div><div><span style=\"font-size: small;\"><br></span></div><div><span style=\"font-size: small;\">The company aims a clean and green environment through promoting the usage of bicycles. With bicycles, you can have a richer travel experience than you will get with other vehicles. You can visit all of the hidden and beautiful places without harming the environment.</span></div><div><span style=\"font-size: small;\"><br></span></div><div><span style=\"font-size: small;\">Bike Rental System is dedicated to bringing the best bicycle rentals online experience to everyone. The company targets to make renting online fun and memorable experiences for all. Join our community and rent today!\r\n<center>\r\n<br>\r\n<br>\r\nCREDITS:\r\n<br>\r\n<br>\r\nLogo - <a target=\"_blank\" href=\"https://www.vecteezy.com/free-vector/bike-logo\">Bike Logo Vectors by Vecteezy</a>\r\n<br>\r\nBanner Section - Photo by <a target=\"_blank\" href=\"https://unsplash.com/@dylu?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText\">Jacek Dylag</a> on <a target=\"_blank\" href=\"https://unsplash.com/s/photos/bicycle?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText\">Unsplash</a>\r\n<br>\r\nTrivia - Photo by <a target=\"_blank\" href=\"https://unsplash.com/@okiaguilar?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText\">Óscar Aguilar Elías</a> on <a target=\"_blank\" href=\"https://unsplash.com/s/photos/cyclist?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText\">Unsplash</a>\r\n<br>\r\nAbout Us Header - Photo by <a target=\"_blank\" href=\"https://unsplash.com/@adventurous_artist?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText\">Sina Sadeqi</a> on <a target=\"_blank\" href=\"https://unsplash.com/s/photos/bicycle?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText\">Unsplash</a>\r\n<br>\r\nTestimonial Background - Photo by <a target=\"_blank\" href=\"https://unsplash.com/@worldsbetweenlines?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText\">Patrick Hendry</a> on <a target=\"_blank\" href=\"https://unsplash.com/s/photos/bicycle?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText\">Unsplash</a>\r\n<br>\r\nTestimonial Text Background - Photo by <a target=\"_blank\"  href=\"https://unsplash.com/@jjnuttall?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText\">Josh Nuttall</a> on <a target=\"_blank\" href=\"https://unsplash.com/s/photos/bicycle?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText\">Unsplash</a>\r\n</center>\r\n \r\n</span></div><div><br></div><div><div style=\"font-size: small;\"><br></div></div></div></div>\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										');
INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(11, 'FAQs', 'faqs', '																																																												<div><div><span style=\"font-weight: bold;\"><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 36, 255);\">H</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 38, 255);\">o</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 41, 255);\">w</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 43, 255);\"> </span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 45, 255);\">d</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 48, 255);\">o</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 50, 255);\"> </span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 52, 255);\">I</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 54, 255);\"> </span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 57, 255);\">m</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 59, 255);\">a</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 61, 255);\">k</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 64, 255);\">e</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 66, 255);\"> </span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 68, 255);\">a</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 71, 255);\"> </span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 73, 255);\">r</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 75, 255);\">e</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 78, 255);\">s</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 80, 255);\">e</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 82, 255);\">r</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 85, 255);\">v</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 87, 255);\">a</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 89, 255);\">t</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 91, 255);\">i</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 94, 255);\">o</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 96, 255);\">n</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 98, 255);\"> </span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 101, 255);\">f</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 103, 255);\">o</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 105, 255);\">r</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 108, 255);\"> </span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 110, 255);\">a</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 112, 255);\"> </span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 115, 255);\">b</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 117, 255);\">i</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 119, 255);\">k</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 122, 255);\">e</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 124, 255);\"> </span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 126, 255);\">r</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 128, 255);\">e</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 131, 255);\">n</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 133, 255);\">t</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 135, 255);\">a</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 138, 255);\">l</span></span><span style=\"background-color: rgb(248, 248, 248); color: rgb(0, 140, 255); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 700; white-space: pre; font-size: 1em;\">?</span><br></div><div>Bike rentals are done online through the company\'s website. Create an account and look for your preferred bike. Click the photo and it will lead you to a page. Under the \"Book Now\" section, input the dates when to use the said bike then click \"book\". The payment will be made at the store upon claiming the bike.&nbsp;</div><div><span style=\"font-weight: bold;\"><br></span></div><div><span style=\"font-weight: bold;\"><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 36, 255);\">W</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 39, 255);\">h</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 43, 255);\">a</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 46, 255);\">t</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 49, 255);\"> </span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 52, 255);\">i</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 56, 255);\">s</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 59, 255);\"> </span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 62, 255);\">y</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 65, 255);\">o</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 69, 255);\">u</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 72, 255);\">r</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 75, 255);\"> </span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 78, 255);\">c</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 82, 255);\">a</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 85, 255);\">n</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 88, 255);\">c</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 91, 255);\">e</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 95, 255);\">l</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 98, 255);\">l</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 101, 255);\">a</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 104, 255);\">t</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 108, 255);\">i</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 111, 255);\">o</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 114, 255);\">n</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 117, 255);\"> </span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 121, 255);\">p</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 124, 255);\">o</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 127, 255);\">l</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 130, 255);\">i</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 134, 255);\">c</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 137, 255);\">y</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 140, 255);\">?</span></span><br></div><div>The company has a 5-day cancellation policy. If the reserved bike is cancelled 5 days or less before the rental date, you will be charged 100php. However, if you cancel before 6 days or more, there will be no charge.</div><div><br></div><div><span style=\"font-weight: bold;\"><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 36, 255);\">I</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 38, 255);\">s</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 40, 255);\"> </span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 41, 255);\">t</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 43, 255);\">h</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 45, 255);\">e</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 47, 255);\">r</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 49, 255);\">e</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 51, 255);\"> </span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 52, 255);\">a</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 54, 255);\"> </span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 56, 255);\">c</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 58, 255);\">h</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 60, 255);\">a</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 62, 255);\">r</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 63, 255);\">g</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 65, 255);\">e</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 67, 255);\"> </span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 69, 255);\">i</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 71, 255);\">f</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 72, 255);\"> </span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 74, 255);\">I</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 76, 255);\"> </span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 78, 255);\">f</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 80, 255);\">a</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 82, 255);\">i</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 83, 255);\">l</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 85, 255);\"> </span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 87, 255);\">t</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 89, 255);\">o</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 91, 255);\"> </span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 93, 255);\">s</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 94, 255);\">h</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 96, 255);\">o</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 98, 255);\">w</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 100, 255);\"> </span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 102, 255);\">u</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 104, 255);\">p</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 105, 255);\"> </span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 107, 255);\">o</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 109, 255);\">n</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 111, 255);\"> </span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 113, 255);\">t</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 114, 255);\">h</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 116, 255);\">e</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 118, 255);\"> </span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 120, 255);\">r</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 122, 255);\">e</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 124, 255);\">n</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 125, 255);\">t</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 127, 255);\">a</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 129, 255);\">l</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 131, 255);\"> </span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 133, 255);\">d</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 135, 255);\">a</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 136, 255);\">t</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 138, 255);\">e</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 140, 255);\">?</span></span><br></div><div>Yes, if you do not show up on the rental date stated on your reservation, you will be charged 200php.&nbsp;</div><div><span style=\"font-weight: bold;\"><br></span></div><div><span style=\"font-weight: bold;\"><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 36, 255);\">I</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 38, 255);\">f</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 41, 255);\"> </span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 43, 255);\">I</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 45, 255);\"> </span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 48, 255);\">r</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 50, 255);\">e</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 53, 255);\">t</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 55, 255);\">u</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 57, 255);\">r</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 60, 255);\">n</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 62, 255);\"> </span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 64, 255);\">m</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 67, 255);\">y</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 69, 255);\"> </span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 71, 255);\">b</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 74, 255);\">i</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 76, 255);\">k</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 79, 255);\">e</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 81, 255);\"> </span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 83, 255);\">e</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 86, 255);\">a</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 88, 255);\">r</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 90, 255);\">l</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 93, 255);\">y</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 95, 255);\">,</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 97, 255);\"> </span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 100, 255);\">d</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 102, 255);\">o</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 105, 255);\"> </span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 107, 255);\">I</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 109, 255);\"> </span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 112, 255);\">g</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 114, 255);\">e</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 116, 255);\">t</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 119, 255);\"> </span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 121, 255);\">a</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 123, 255);\"> </span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 126, 255);\">r</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 128, 255);\">e</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 131, 255);\">f</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 133, 255);\">u</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 135, 255);\">n</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 138, 255);\">d</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 140, 255);\">?</span></span><br></div><div>No, when you purchase a rental our live inventory systems strictly reserve that bike model and size for you for that duration. That means no other person can start or end their trip during that time period. If you are unsure of your travel plans or the duration of rental we suggest starting with the amount of time you are comfortable with. If you wish to extend your multi-day rental please call us and we will confirm the rate and availability. Availability and rate are only guaranteed when you have reserved and paid for your rental in full.</div><div><br></div><div><span style=\"font-weight: bold;\"><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 36, 255);\">W</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 38, 255);\">h</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 41, 255);\">e</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 43, 255);\">n</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 45, 255);\"> </span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 48, 255);\">d</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 50, 255);\">o</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 52, 255);\"> </span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 54, 255);\">m</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 57, 255);\">u</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 59, 255);\">l</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 61, 255);\">t</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 64, 255);\">i</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 66, 255);\">-</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 68, 255);\">d</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 71, 255);\">a</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 73, 255);\">y</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 75, 255);\"> </span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 78, 255);\">r</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 80, 255);\">e</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 82, 255);\">n</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 85, 255);\">t</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 87, 255);\">a</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 89, 255);\">l</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 91, 255);\">s</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 94, 255);\"> </span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 96, 255);\">n</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 98, 255);\">e</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 101, 255);\">e</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 103, 255);\">d</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 105, 255);\"> </span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 108, 255);\">t</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 110, 255);\">o</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 112, 255);\"> </span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 115, 255);\">b</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 117, 255);\">e</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 119, 255);\"> </span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 122, 255);\">r</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 124, 255);\">e</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 126, 255);\">t</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 128, 255);\">u</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 131, 255);\">r</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 133, 255);\">n</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 135, 255);\">e</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 138, 255);\">d</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 140, 255);\">?</span></span><br></div><div>A 24 Hr rental is exactly that; the bike is due back 24 hrs from the time you reserved the bike. For example, if you reserved the bike at 12:00 pm it is due back by 12:00 pm the next day. 3-day and weekly rentals are due back on the last day by close unless otherwise stated. For example for a 3-day rental, if you pick up the bike on Monday at 10:00 it will be due back by Wednesday before the store\'s closing time, 6:00pm. If you rented the bike for one week, it would be due back on the seventh day by the store\'s closing time, in the case that you picked-up on Monday it would be due back Sunday by the store\'s closing time. If you are not able to return the bike on the agreed-upon date and time please let us know as soon as possible. There will be a 100php. penalty for each day it is not returned.</div><div><br></div><div><span style=\"font-weight: bold;\"><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 36, 255);\">W</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 39, 255);\">h</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 43, 255);\">o</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 46, 255);\"> </span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 50, 255);\">n</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 53, 255);\">e</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 57, 255);\">e</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 60, 255);\">d</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 64, 255);\">s</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 67, 255);\"> </span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 71, 255);\">t</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 74, 255);\">o</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 78, 255);\"> </span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 81, 255);\">f</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 85, 255);\">i</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 88, 255);\">l</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 91, 255);\">l</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 95, 255);\"> </span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 98, 255);\">o</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 102, 255);\">u</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 105, 255);\">t</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 109, 255);\"> </span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 112, 255);\">a</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 116, 255);\"> </span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 119, 255);\">w</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 123, 255);\">a</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 126, 255);\">i</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 130, 255);\">v</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 133, 255);\">e</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 137, 255);\">r</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 140, 255);\">?</span></span><br></div><div>A waiver must be completed for each individual;&nbsp; those under the age of 18 (minors) must be accompanied by a guardian.</div><div><br></div><div><span style=\"font-weight: bold;\"><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 36, 255);\">I</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 41, 255);\">s</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 46, 255);\"> </span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 51, 255);\">a</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 56, 255);\"> </span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 61, 255);\">d</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 66, 255);\">e</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 71, 255);\">p</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 76, 255);\">o</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 81, 255);\">s</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 86, 255);\">i</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 90, 255);\">t</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 95, 255);\"> </span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 100, 255);\">r</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 105, 255);\">e</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 110, 255);\">q</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 115, 255);\">u</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 120, 255);\">i</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 125, 255);\">r</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 130, 255);\">e</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 135, 255);\">d</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: pre; background-color: rgb(248, 248, 248); color: rgb(0, 140, 255);\">?</span></span><br></div><div>Yes, at least 50% deposit is required to secure a bike reservation via gcash. The remaining balance (if any) will be given upon claiming the reserved bike.&nbsp; A government-issued ID (For Example: Driver\'s License, Passport, Identification Card) is required to be present upon the pick-up of the bike.</div></div>										\n										\n										\n										\n										\n										\n										\n										');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(4, 'test@gmail.com', '2022-02-03 11:44:51'),
(5, 'email@gmail.com', '2022-02-09 13:03:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(1, 'test@gmail.com', 'It is much easier to pick your favorite bike.', '2022-02-10 07:44:31', 1),
(2, 'test@gmail.com', 'When I needed it most, it was more convenient.', '2022-05-01 07:46:05', 1),
(3, 'email@gmail.com', 'The website saves me a lot of time.', '2022-02-03 11:27:50', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(4, 'Tommy Vercetti', 'test@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '09999857869', '01/12/1951', 'Toril', 'Davao City', 'Philippines', '2022-04-19 20:03:36', '2022-04-30 19:29:58'),
(5, 'Carl Johnson', 'email@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '09090909099', '04/11/1968', 'Matina', 'Davao City', 'Philippines', '2022-02-03 11:21:11', '2022-11-02 14:41:17');

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `PricePerDay` int(11) DEFAULT NULL,
  `Position` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `HelmetEquip` int(11) DEFAULT NULL,
  `BikebagEquip` int(11) DEFAULT NULL,
  `PatchkitEquip` int(11) DEFAULT NULL,
  `SparetubeEquip` int(11) DEFAULT NULL,
  `MinimumtoolsEquip` int(11) DEFAULT NULL,
  `PumpEquip` int(11) DEFAULT NULL,
  `TirepressuregaugeEquip` int(11) DEFAULT NULL,
  `WaterbottleEquip` int(11) DEFAULT NULL,
  `LockEquip` int(11) DEFAULT NULL,
  `MirrorEquip` int(11) DEFAULT NULL,
  `FannyEquip` int(11) DEFAULT NULL,
  `CompassEquip` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `Position`, `ModelYear`, `Quantity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `HelmetEquip`, `BikebagEquip`, `PatchkitEquip`, `SparetubeEquip`, `MinimumtoolsEquip`, `PumpEquip`, `TirepressuregaugeEquip`, `WaterbottleEquip`, `LockEquip`, `MirrorEquip`, `FannyEquip`, `CompassEquip`, `RegDate`, `UpdationDate`) VALUES
(1, 'Exploro RACE GRX 1X', 8, 'Ready for speed with simple, clean & aero Shimano GRX 1x. Top speed was never this affordable.', 2344, 'Available', 2022, 1, 'Exploro RACE GRX 1X (1).jpg', 'Exploro RACE GRX 1X (2).jpg', 'Exploro RACE GRX 1X (3).jpg', 'Exploro RACE GRX 1X (4).jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2017-06-19 11:46:23', '2022-10-16 06:51:58'),
(8, 'Urban Track Bike', 9, 'Do you want a lightweight track bike that won’t break the bank? Then the 6KU Urban Track is the bike for you. Our Urban Track features a lightweight aluminum frame and fork. This is one purchase you won’t regret.\r\n', 156, 'NotAvailable', 2022, 0, 'URBAN TRACK BIKE (1).jpg', 'URBAN TRACK BIKE (2).jpg', 'URBAN TRACK BIKE (3).jpg', 'URBAN TRACK BIKE (4).jpg', 'URBAN TRACK BIKE (5).jpg', NULL, NULL, 1, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, '2022-03-11 00:34:34', '2022-11-24 08:34:18'),
(39, 'Arktos 120', 13, 'You have as much (more?) fun powering uphill as you do ripping down.  Our alchemists have blended the best of both for your ideal bike: the Arktos 120. Sure, full-on XC race bikes are super fast and nimble, but hit any legit descent and you’re hanging on like an amateur cowboy on an especially angry bull! Alchemy’s modern geometry combined with our signature Sine Suspension virtually eliminates ‘pedal bob’, providing instant, efficient, forward power to attack climbs, rollers and sprints. And when it’s time to head back down, the 130mm/120mm of FOX Factory, Kashima-coated front/rear suspension punches well above its weight, so you can retake the reins and tame all but the most obstacle-ridden descents (save those for our 135 or 150 models). Wherever flat-out speed, confident descending, and all-day comfort are required, the Arktos 120 lets you earn your reward and then shred it!', 3138, 'Available', 2022, 3, 'Arktos 120 (1).jpg', 'Arktos 120 (2).jpg', 'Arktos 120 (3).jpg', 'Arktos 120 (4).jpg', '', NULL, NULL, 1, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, '2022-03-23 09:49:21', '2022-11-24 08:03:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"bikerental\",\"table\":\"admin\"},{\"db\":\"bikerental\",\"table\":\"tblvehicles\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-06-20 05:07:17', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
