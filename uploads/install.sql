-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2024 at 12:54 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `soft-lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `unique_identifier` varchar(255) NOT NULL,
  `version` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `about` longtext DEFAULT NULL,
  `purchase_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `addons`
--

INSERT INTO `addons` (`id`, `name`, `unique_identifier`, `version`, `status`, `created_at`, `updated_at`, `about`, `purchase_code`) VALUES
(1, 'Certificate', 'certificate', '1.3', 1, 1598241600, NULL, 'This addon helps student to get certified. Academy provides a course completion certificate for each student after completing any course', NULL),
(2, 'Offline Payment Gateway', 'offline_payment', '1.4', 1, 1598241600, NULL, 'Offline payment gateway allows you to take payment through various local payment gateways.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `document` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `user_id`, `address`, `phone`, `message`, `document`, `status`) VALUES
(1, 8, NULL, '01002063981', 'dawaw', 'PZpVgIEsoY2ORXy.pdf', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bbb_meetings`
--

CREATE TABLE `bbb_meetings` (
  `id` int(20) NOT NULL,
  `course_id` int(11) NOT NULL,
  `meeting_id` varchar(255) DEFAULT NULL,
  `moderator_pw` varchar(255) DEFAULT NULL,
  `viewer_pw` varchar(255) DEFAULT NULL,
  `instructions` longtext DEFAULT NULL,
  `created_at` varchar(100) DEFAULT NULL,
  `updated_at` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `blog_id` int(11) NOT NULL,
  `blog_category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `description` longtext NOT NULL,
  `thumbnail` varchar(100) NOT NULL,
  `banner` varchar(100) NOT NULL,
  `is_popular` int(11) NOT NULL,
  `likes` longtext NOT NULL,
  `added_date` varchar(100) NOT NULL,
  `updated_date` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`blog_id`, `blog_category_id`, `user_id`, `title`, `keywords`, `description`, `thumbnail`, `banner`, `is_popular`, `likes`, `added_date`, `updated_date`, `status`) VALUES
(1, 1, 2, 'environment', '', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '944c830f710735c208e72acdb7673617.png', '27db3460fd23808c1f7ea9ff437445a0.png', 1, '', '1725485298', '', '1'),
(2, 1, 2, 'dfg jjill ;p9yr ', '', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', '', 1, '', '1725485727', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE `blog_category` (
  `blog_category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `added_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blog_category`
--

INSERT INTO `blog_category` (`blog_category_id`, `title`, `subtitle`, `slug`, `added_date`) VALUES
(1, 'scientific blog ', 'attractive blog', 'scientific-blog', '1725485122');

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `blog_comment_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `comment` longtext NOT NULL,
  `likes` longtext NOT NULL,
  `added_date` varchar(100) NOT NULL,
  `updated_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) UNSIGNED NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent` int(11) DEFAULT 0,
  `slug` varchar(255) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `font_awesome_class` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `sub_category_thumbnail` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `code`, `name`, `parent`, `slug`, `date_added`, `last_modified`, `font_awesome_class`, `thumbnail`, `sub_category_thumbnail`) VALUES
(4, '0c327edcda', 'web-development', 0, 'web-development', 1727668800, NULL, 'fas fa-code', 'e48c3505990080cb550a9314a8b26f0c.jpg', NULL),
(5, '33d06abacf', 'HTML', 4, 'html', 1727668800, NULL, 'fab fa-html5', NULL, 'ab15251885eb7e53378172882c0a5dab.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` int(11) UNSIGNED NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `shareable_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `certificates`
--

INSERT INTO `certificates` (`id`, `student_id`, `course_id`, `shareable_url`) VALUES
(1, 7, 1, '7ca4d3ad8f'),
(2, 18, 3, '6455214aab'),
(3, 19, 3, 'b22fa96892');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('38u5t1bfpk7ue1ov8jekbeok2f8r8jkt', '::1', 1729028101, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732383530303639383b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b637573746f6d5f73657373696f6e5f6c696d69747c693a313732393839323130313b757365725f69647c733a313a2232223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a31373a2245736c616d202048616d6564616c6c6168223b69735f696e7374727563746f727c733a313a2231223b61646d696e5f6c6f67696e7c733a313a2231223b636f756e7443616c6c7c693a313b5f5f63695f766172737c613a313a7b733a393a22636f756e7443616c6c223b733a333a226f6c64223b7d),
('tvejjmmqp71k0vktk173fe2g99gahm97', '::1', 1728602236, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732383630313233353b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b637573746f6d5f73657373696f6e5f6c696d69747c693a313732393436353236303b757365725f69647c733a323a223138223b726f6c655f69647c733a313a2232223b726f6c657c733a343a2255736572223b6e616d657c733a31353a22696e7374727563746f722074657374223b69735f696e7374727563746f727c733a313a2231223b757365725f6c6f67696e7c733a313a2231223b636f756e7443616c6c7c693a313b5f5f63695f766172737c613a313a7b733a393a22636f756e7443616c6c223b733a333a226e6577223b7d),
('f30pus9ole06l5mrf0eithba8l9t762k', '::1', 1728688262, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732383636333836303b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b6e65775f6465766963655f636f64655f65787069726174696f6e5f74696d657c693a313732383636343437383b6e65775f6465766963655f757365725f656d61696c7c733a31363a2273747564656e7440746573742e636f6d223b6e65775f6465766963655f757365725f69647c733a323a223139223b6e65775f6465766963655f766572696669636174696f6e5f636f64657c693a3830383836313b637573746f6d5f73657373696f6e5f6c696d69747c693a313732393532373933353b757365725f69647c733a323a223232223b726f6c655f69647c733a313a2232223b726f6c657c733a343a2255736572223b6e616d657c733a31323a22746573742034202074657374223b69735f696e7374727563746f727c733a313a2230223b757365725f6c6f67696e7c733a313a2231223b6c61796f75747c733a343a226c697374223b5f5f63695f766172737c613a323a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b733a393a22636f756e7443616c6c223b733a333a226e6577223b7d666c6173685f6d6573736167657c733a31323a224d6573736167652073656e74223b636f756e7443616c6c7c693a313b),
('vme4919rngjqcck9nh4m67bqsonn3e9f', '::1', 1728750086, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732383735303032393b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b637573746f6d5f73657373696f6e5f6c696d69747c693a313732393631343034373b757365725f69647c733a323a223232223b726f6c655f69647c733a313a2232223b726f6c657c733a343a2255736572223b6e616d657c733a31323a22746573742034202074657374223b69735f696e7374727563746f727c733a313a2230223b757365725f6c6f67696e7c733a313a2231223b636f756e7443616c6c7c693a313b5f5f63695f766172737c613a313a7b733a393a22636f756e7443616c6c223b733a333a226f6c64223b7d),
('rfdufgohkhgu2sbhfol681lsbslq5tfd', '::1', 1728765678, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732383736303936343b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b637573746f6d5f73657373696f6e5f6c696d69747c693a313732393632343937343b757365725f69647c733a323a223138223b726f6c655f69647c733a313a2232223b726f6c657c733a343a2255736572223b6e616d657c733a31353a22696e7374727563746f722074657374223b69735f696e7374727563746f727c733a313a2231223b757365725f6c6f67696e7c733a313a2231223b636f756e7443616c6c7c693a313b5f5f63695f766172737c613a313a7b733a393a22636f756e7443616c6c223b733a333a226e6577223b7d),
('95hk0jt3uufdfp484puq18uhcgj6m8dg', '::1', 1728863944, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732383835393337363b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b637573746f6d5f73657373696f6e5f6c696d69747c693a313732393732333430333b757365725f69647c733a323a223232223b726f6c655f69647c733a313a2232223b726f6c657c733a343a2255736572223b6e616d657c733a31323a22746573742034202074657374223b69735f696e7374727563746f727c733a313a2230223b757365725f6c6f67696e7c733a313a2231223b636f756e7443616c6c7c693a313b5f5f63695f766172737c613a313a7b733a393a22636f756e7443616c6c223b733a333a226f6c64223b7d),
('m3prte5kvpkphmklrt674q3grs5ke4ta', '::1', 1728927922, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732383932363538343b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b637573746f6d5f73657373696f6e5f6c696d69747c693a313732393739303539393b757365725f69647c733a323a223232223b726f6c655f69647c733a313a2232223b726f6c657c733a343a2255736572223b6e616d657c733a31323a22746573742034202074657374223b69735f696e7374727563746f727c733a313a2230223b757365725f6c6f67696e7c733a313a2231223b636f756e7443616c6c7c693a313b5f5f63695f766172737c613a313a7b733a393a22636f756e7443616c6c223b733a333a226f6c64223b7d),
('5tjd3fel99due09ns4auf39fnguojr7u', '::1', 1729015338, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732393031313338303b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b637573746f6d5f73657373696f6e5f6c696d69747c693a313732393837353339323b757365725f69647c733a323a223232223b726f6c655f69647c733a313a2232223b726f6c657c733a343a2255736572223b6e616d657c733a31323a22746573742034202074657374223b69735f696e7374727563746f727c733a313a2230223b757365725f6c6f67696e7c733a313a2231223b636f756e7443616c6c7c693a313b5f5f63695f766172737c613a323a7b733a393a22636f756e7443616c6c223b733a333a226f6c64223b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d666c6173685f6d6573736167657c733a32363a22596f757220636f6d706c61696e20686173206172726169766564223b),
('9soutvg1j3m778bi9pnkqeasejq3f481', '::1', 1729370653, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732393236393531383b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b637573746f6d5f73657373696f6e5f6c696d69747c693a313733303232393636373b757365725f69647c733a313a2232223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a31373a2245736c616d202048616d6564616c6c6168223b69735f696e7374727563746f727c733a313a2231223b61646d696e5f6c6f67696e7c733a313a2231223b636f756e7443616c6c7c693a313b5f5f63695f766172737c613a313a7b733a393a22636f756e7443616c6c223b733a333a226e6577223b7d),
('6863eeucl36kk4lih9qfqqm6t1f1s733', '::1', 1729270350, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732393236393635333b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b6e65775f6465766963655f636f64655f65787069726174696f6e5f74696d657c693a313732393237303535363b6e65775f6465766963655f757365725f656d61696c7c733a31373a2273747564656e743440746573742e636f6d223b6e65775f6465766963655f757365725f69647c733a323a223232223b6e65775f6465766963655f766572696669636174696f6e5f636f64657c693a3237343936303b637573746f6d5f73657373696f6e5f6c696d69747c693a313733303133343034393b757365725f69647c733a323a223233223b726f6c655f69647c733a313a2232223b726f6c657c733a343a2255736572223b6e616d657c733a31373a2273747564656e74352073747564656e7435223b69735f696e7374727563746f727c733a313a2230223b757365725f6c6f67696e7c733a313a2231223b6c61796f75747c733a343a226c697374223b5f5f63695f766172737c613a323a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b733a393a22636f756e7443616c6c223b733a333a226e6577223b7d666c6173685f6d6573736167657c733a31323a224d6573736167652073656e74223b636f756e7443616c6c7c693a313b),
('ed97418cauc3ooq1pqcjh03uvccecj0b', '::1', 1729284634, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732393238343633343b636f756e7443616c6c7c693a313b5f5f63695f766172737c613a313a7b733a393a22636f756e7443616c6c223b733a333a226e6577223b7d636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b),
('7736jqpufl026mqdvvmk2fdj7q8d3kj9', '::1', 1729284741, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732393238343635323b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b636f756e7443616c6c7c693a313b5f5f63695f766172737c613a313a7b733a393a22636f756e7443616c6c223b733a333a226e6577223b7d);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) UNSIGNED NOT NULL,
  `body` longtext DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `commentable_id` int(11) DEFAULT NULL,
  `commentable_type` varchar(50) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `complains`
--

CREATE TABLE `complains` (
  `id` int(11) NOT NULL,
  `complain_type` enum('user','admin') NOT NULL DEFAULT 'user',
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `problem_type` enum('technical_problem','quiz_problem','content_problem','general_problem','general_matter','payment_problem','sign_problem') DEFAULT NULL,
  `message` text NOT NULL,
  `status` enum('open','closed') DEFAULT 'open',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `replay_admin_id` int(11) DEFAULT NULL,
  `replay_message` text DEFAULT NULL,
  `replay_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complains`
--

INSERT INTO `complains` (`id`, `complain_type`, `user_id`, `name`, `email`, `phone`, `course_id`, `problem_type`, `message`, `status`, `created_at`, `updated_at`, `replay_admin_id`, `replay_message`, `replay_date`) VALUES
(15, 'user', 18, 'test 1', 'eslam590171@gmail.com', 1159017126, 1, 'quiz_problem', 'sdaf sad ldsa;f jk;asdjkf ;sda; d;sajk f;sd', 'open', '2024-10-10 16:16:40', '2024-10-11 17:45:11', NULL, NULL, NULL),
(16, 'user', 22, '‪Kody 590‬‏', 'eslam590171@gmail.com', 1159017126, 3, 'quiz_problem', '1234556567463', 'closed', '2024-10-11 09:26:07', '2024-10-13 23:24:14', 2, 'fsdafas dfads ', '0000-00-00 00:00:00'),
(17, 'user', 22, 'حمادة هلال ', 'hamda@hamda.com', 2147483647, 2, 'technical_problem', 'حماد هلال لغزو النيبال', 'open', '2024-10-11 10:04:53', '2024-10-11 17:45:11', NULL, NULL, NULL),
(18, 'user', 22, 'test 2 ', 'test2@test.com', 1159017126, 1, 'general_problem', 'sadf as df', 'closed', '2024-10-11 10:09:57', '2024-10-11 17:45:11', NULL, NULL, NULL),
(19, 'user', 22, 'test3', 'test3@test3.com', 1159017126, 2, 'quiz_problem', 'sad dfas f saf ', 'closed', '2024-10-11 10:20:26', '2024-10-11 17:45:11', NULL, NULL, NULL),
(20, 'user', 22, 'test4', 'test4@test4.com', 1159017126, 1, 'technical_problem', 'dsaf asd fsa fdsa fdas', 'closed', '2024-10-11 10:34:04', '2024-10-11 17:45:11', NULL, NULL, NULL),
(21, 'user', 22, 'test6', 'test6@test6.com', 1159017126, 1, 'content_problem', 'test 6 ', 'open', '2024-10-11 12:36:57', '2024-10-11 12:36:57', NULL, NULL, NULL),
(22, 'user', 22, 'test7', 'test7@test7.com', 1159017126, 1, 'technical_problem', 'test 7', 'open', '2024-10-11 12:38:16', '2024-10-11 12:38:16', NULL, NULL, NULL),
(23, 'user', 22, 'test9', 'test9@test9.com', 2147483647, 1, 'quiz_problem', 'test9', 'open', '2024-10-11 12:44:09', '2024-10-11 12:44:09', NULL, NULL, NULL),
(24, 'user', 22, 'test10', 'test10@test10.com', 2147483647, 2, '', 'test10', 'open', '2024-10-11 12:46:31', '2024-10-11 12:46:31', NULL, NULL, NULL),
(25, 'user', 22, 'test11', 'test11@test11.com', 2147483647, 1, NULL, 'test11', 'open', '2024-10-11 12:48:03', '2024-10-11 19:48:22', NULL, NULL, NULL),
(26, 'user', 22, 'test12', 'test12@test12.com', 1159017126, 2, 'quiz_problem', 'test12', 'open', '2024-10-11 15:50:52', '2024-10-11 15:50:52', NULL, NULL, NULL),
(27, 'user', 22, 'test13', 'test13@test13.com', 1159017126, 2, '', 'test13test13test13', 'open', '2024-10-11 15:52:28', '2024-10-11 15:52:28', NULL, NULL, NULL),
(28, 'user', 22, 'test14', 'test14@test14.com', 1159017126, NULL, 'general_problem', 'test14 test14 test14', 'open', '2024-10-11 15:55:19', '2024-10-11 15:55:19', NULL, NULL, NULL),
(29, 'user', 22, '‪Kody 590‬‏', 'eslam590171@gmail.com', 2147483647, 2, 'quiz_problem', 'sadf sadfas das fasd asdf a', 'closed', '2024-10-13 15:43:42', '2024-10-13 23:58:48', 2, 'حمادة هلال لغزو النيبال', '2024-10-13 16:58:48'),
(31, 'user', 2, 'admin test', 'eslam590171@gmail.com', 1159017126, 3, 'payment_problem', 'el espider man kharab el denya ya ', 'open', '2024-10-15 10:52:46', '2024-10-15 10:52:46', NULL, NULL, NULL),
(32, 'admin', 2, 'admin 2', 'eslam590171@gmail.com', 2147483647, 3, 'payment_problem', 'adek fe el kazlak seif', 'open', '2024-10-15 11:01:41', '2024-10-15 11:01:41', NULL, NULL, NULL),
(33, 'user', 22, 'student test', 'eslam590171@gmail.com', 2147483647, 3, 'quiz_problem', 'adf das;k fk;aljkf l;asjdkf;s d', 'open', '2024-10-15 11:02:18', '2024-10-15 11:02:18', NULL, NULL, NULL),
(34, 'user', 23, '‪Kody 590‬‏', 'eslam590171@gmail.com', 2147483647, 3, 'quiz_problem', ' ladsfjsdakl; iahisgs', 'closed', '2024-10-18 09:48:13', '2024-10-18 16:50:20', 2, 'kals;dk fl\'adsjk ksad;j k;dasf', '2024-10-18 09:50:20');

-- --------------------------------------------------------

--
-- Table structure for table `complains_replay`
--

CREATE TABLE `complains_replay` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(21) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `message` text DEFAULT NULL,
  `has_read` int(11) DEFAULT NULL,
  `replied` int(11) DEFAULT NULL,
  `created_at` varchar(100) DEFAULT NULL,
  `updated_at` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `discount_percentage` varchar(255) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `expiry_date` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `short_description` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `outcomes` longtext DEFAULT NULL,
  `faqs` text NOT NULL,
  `language` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `section` longtext DEFAULT NULL,
  `requirements` longtext DEFAULT NULL,
  `price` double DEFAULT NULL,
  `discount_flag` int(11) DEFAULT 0,
  `discounted_price` double DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `course_type` varchar(255) DEFAULT NULL,
  `is_top_course` int(11) DEFAULT 0,
  `is_admin` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `course_overview_provider` varchar(255) DEFAULT NULL,
  `meta_keywords` longtext DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `is_free_course` int(11) DEFAULT NULL,
  `multi_instructor` int(11) NOT NULL DEFAULT 0,
  `enable_drip_content` int(11) NOT NULL,
  `creator` int(11) DEFAULT NULL,
  `expiry_period` int(11) DEFAULT NULL,
  `upcoming_image_thumbnail` varchar(255) DEFAULT NULL,
  `publish_date` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `title`, `short_description`, `description`, `outcomes`, `faqs`, `language`, `category_id`, `sub_category_id`, `section`, `requirements`, `price`, `discount_flag`, `discounted_price`, `level`, `user_id`, `thumbnail`, `video_url`, `date_added`, `last_modified`, `course_type`, `is_top_course`, `is_admin`, `status`, `course_overview_provider`, `meta_keywords`, `meta_description`, `is_free_course`, `multi_instructor`, `enable_drip_content`, `creator`, `expiry_period`, `upcoming_image_thumbnail`, `publish_date`) VALUES
(3, '30 of html ', 'learn html in 30 days', '<p data-sourcepos=\"3:1-3:68\"><strong>Are you ready to dive into the world of web development?</strong> Our 30-day HTML course is designed to transform you from a complete beginner to a confident HTML coder.</p><p data-sourcepos=\"5:1-5:22\"><strong>What you\'ll learn:</strong></p><ul data-sourcepos=\"7:1-7:24\"><li data-sourcepos=\"7:1-7:24\"><strong>HTML Fundamentals:</strong> Understand the basic structure and syntax of HTML documents.</li><li data-sourcepos=\"8:1-8:94\"><strong>Tags and Elements:</strong> Master the use of essential HTML tags like <code class=\"\">&lt;html&gt;</code>, <code class=\"\">&lt;head&gt;</code>, <code class=\"\">&lt;body&gt;</code>, <code class=\"\">&lt;p&gt;</code>, <code class=\"\">&lt;h1&gt;</code>, <code class=\"\">&lt;img&gt;</code>, and more.</li><li data-sourcepos=\"9:1-9:65\"><strong>Text Formatting:</strong> Learn how to style text with bold, italic, underline, and other attributes.</li><li data-sourcepos=\"10:1-10:105\"><strong>Lists and Links:</strong> Create ordered and unordered lists, as well as hyperlinks to connect your content.</li><li data-sourcepos=\"11:1-11:75\"><strong>Images and Media:</strong> Embed images, audio, and video into your web pages.</li><li data-sourcepos=\"12:1-12:90\"><strong>Tables and Forms:</strong> Build structured data tables and interactive forms for user input.</li><li data-sourcepos=\"13:1-13:77\"><strong>Semantic HTML:</strong> Write clean and meaningful code using semantic elements.</li><li data-sourcepos=\"14:1-15:0\"><strong>Best Practices:</strong> Follow industry standards and guidelines for efficient and maintainable HTML.</li></ul><p data-sourcepos=\"16:1-16:27\"><strong>Why choose this course?</strong></p><ul data-sourcepos=\"18:1-18:116\"><li data-sourcepos=\"18:1-18:116\"><strong>Step-by-Step Approach:</strong> Our carefully curated lessons break down complex concepts into easy-to-understand steps.</li><li data-sourcepos=\"19:1-19:100\"><strong>Hands-On Projects:</strong> Practice your skills with real-world projects that reinforce your learning.</li><li data-sourcepos=\"20:1-20:95\"><strong>Expert Guidance:</strong> Benefit from the insights and experience of our seasoned web developers.</li><li data-sourcepos=\"21:1-21:73\"><strong>Flexible Learning:</strong> Learn at your own pace and on your own schedule.</li><li data-sourcepos=\"22:1-23:0\"><strong>Lifetime Access:</strong> Enjoy unlimited access to the course materials.</li></ul><p data-sourcepos=\"24:1-24:49\"><strong>By the end of this course, you\'ll be able to:</strong></p><ul data-sourcepos=\"26:1-29:52\"><li data-sourcepos=\"26:1-26:46\">Create your own personal websites and blogs.</li><li data-sourcepos=\"27:1-27:51\">Customize the appearance and layout of web pages.</li><li data-sourcepos=\"28:1-28:56\">Build interactive web elements like forms and buttons.</li><li data-sourcepos=\"29:1-29:52\">Collaborate with other developers on web projects.</li></ul><p data-sourcepos=\"31:1-31:117\"><strong>Ready to start your journey?</strong> Enroll in our 30-day HTML course today and unlock your potential as a web developer.</p>', '[]', '[]', 'english', 4, 5, '[4]', '[]', 0, NULL, 0, 'beginner', '2', NULL, '', 1727668800, NULL, 'general', 1, 1, 'active', '', '', '', 1, 0, 1, 2, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `paypal_supported` int(11) DEFAULT NULL,
  `stripe_supported` int(11) DEFAULT NULL,
  `ccavenue_supported` int(11) DEFAULT 0,
  `iyzico_supported` int(11) DEFAULT 0,
  `paystack_supported` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES
(1, 'US Dollar', 'USD', '$', 1, 1, 0, 0, 0),
(2, 'Albanian Lek', 'ALL', 'Lek', 0, 1, 0, 0, 0),
(3, 'Algerian Dinar', 'DZD', 'دج', 1, 1, 0, 0, 0),
(4, 'Angolan Kwanza', 'AOA', 'Kz', 1, 1, 0, 0, 0),
(5, 'Argentine Peso', 'ARS', '$', 1, 1, 0, 0, 0),
(6, 'Armenian Dram', 'AMD', '֏', 1, 1, 0, 0, 0),
(7, 'Aruban Florin', 'AWG', 'ƒ', 1, 1, 0, 0, 0),
(8, 'Australian Dollar', 'AUD', '$', 1, 1, 0, 0, 0),
(9, 'Azerbaijani Manat', 'AZN', 'm', 1, 1, 0, 0, 0),
(10, 'Bahamian Dollar', 'BSD', 'B$', 1, 1, 0, 0, 0),
(11, 'Bahraini Dinar', 'BHD', '.د.ب', 1, 1, 0, 0, 0),
(12, 'Bangladeshi Taka', 'BDT', '৳', 1, 1, 0, 0, 0),
(13, 'Barbadian Dollar', 'BBD', 'Bds$', 1, 1, 0, 0, 0),
(14, 'Belarusian Ruble', 'BYR', 'Br', 0, 0, 0, 0, 0),
(15, 'Belgian Franc', 'BEF', 'fr', 1, 1, 0, 0, 0),
(16, 'Belize Dollar', 'BZD', '$', 1, 1, 0, 0, 0),
(17, 'Bermudan Dollar', 'BMD', '$', 1, 1, 0, 0, 0),
(18, 'Bhutanese Ngultrum', 'BTN', 'Nu.', 1, 1, 0, 0, 0),
(19, 'Bitcoin', 'BTC', '฿', 1, 1, 0, 0, 0),
(20, 'Bolivian Boliviano', 'BOB', 'Bs.', 1, 1, 0, 0, 0),
(21, 'Bosnia', 'BAM', 'KM', 1, 1, 0, 0, 0),
(22, 'Botswanan Pula', 'BWP', 'P', 1, 1, 0, 0, 0),
(23, 'Brazilian Real', 'BRL', 'R$', 1, 1, 0, 0, 0),
(24, 'British Pound Sterling', 'GBP', '£', 1, 1, 0, 0, 0),
(25, 'Brunei Dollar', 'BND', 'B$', 1, 1, 0, 0, 0),
(26, 'Bulgarian Lev', 'BGN', 'Лв.', 1, 1, 0, 0, 0),
(27, 'Burundian Franc', 'BIF', 'FBu', 1, 1, 0, 0, 0),
(28, 'Cambodian Riel', 'KHR', 'KHR', 1, 1, 0, 0, 0),
(29, 'Canadian Dollar', 'CAD', '$', 1, 1, 0, 0, 0),
(30, 'Cape Verdean Escudo', 'CVE', '$', 1, 1, 0, 0, 0),
(31, 'Cayman Islands Dollar', 'KYD', '$', 1, 1, 0, 0, 0),
(32, 'CFA Franc BCEAO', 'XOF', 'CFA', 1, 1, 0, 0, 0),
(33, 'CFA Franc BEAC', 'XAF', 'FCFA', 1, 1, 0, 0, 0),
(34, 'CFP Franc', 'XPF', '₣', 1, 1, 0, 0, 0),
(35, 'Chilean Peso', 'CLP', '$', 1, 1, 0, 0, 0),
(36, 'Chinese Yuan', 'CNY', '¥', 1, 1, 0, 0, 0),
(37, 'Colombian Peso', 'COP', '$', 1, 1, 0, 0, 0),
(38, 'Comorian Franc', 'KMF', 'CF', 1, 1, 0, 0, 0),
(39, 'Congolese Franc', 'CDF', 'FC', 1, 1, 0, 0, 0),
(40, 'Costa Rican ColÃ³n', 'CRC', '₡', 1, 1, 0, 0, 0),
(41, 'Croatian Kuna', 'HRK', 'kn', 1, 1, 0, 0, 0),
(42, 'Cuban Convertible Peso', 'CUC', '$, CUC', 1, 1, 0, 0, 0),
(43, 'Czech Republic Koruna', 'CZK', 'Kč', 1, 1, 0, 0, 0),
(44, 'Danish Krone', 'DKK', 'Kr.', 1, 1, 0, 0, 0),
(45, 'Djiboutian Franc', 'DJF', 'Fdj', 1, 1, 0, 0, 0),
(46, 'Dominican Peso', 'DOP', '$', 1, 1, 0, 0, 0),
(47, 'East Caribbean Dollar', 'XCD', '$', 1, 1, 0, 0, 0),
(48, 'Egyptian Pound', 'EGP', 'ج.م', 1, 1, 0, 0, 0),
(49, 'Eritrean Nakfa', 'ERN', 'Nfk', 1, 1, 0, 0, 0),
(50, 'Estonian Kroon', 'EEK', 'kr', 1, 1, 0, 0, 0),
(51, 'Ethiopian Birr', 'ETB', 'Nkf', 1, 1, 0, 0, 0),
(52, 'Euro', 'EUR', '€', 1, 1, 0, 0, 0),
(53, 'Falkland Islands Pound', 'FKP', '£', 1, 1, 0, 0, 0),
(54, 'Fijian Dollar', 'FJD', 'FJ$', 1, 1, 0, 0, 0),
(55, 'Gambian Dalasi', 'GMD', 'D', 1, 1, 0, 0, 0),
(56, 'Georgian Lari', 'GEL', 'ლ', 1, 1, 0, 0, 0),
(57, 'German Mark', 'DEM', 'DM', 1, 1, 0, 0, 0),
(58, 'Ghanaian Cedi', 'GHS', 'GH₵', 1, 1, 0, 0, 0),
(59, 'Gibraltar Pound', 'GIP', '£', 1, 1, 0, 0, 0),
(60, 'Greek Drachma', 'GRD', '₯, Δρχ, Δρ', 1, 1, 0, 0, 0),
(61, 'Guatemalan Quetzal', 'GTQ', 'Q', 1, 1, 0, 0, 0),
(62, 'Guinean Franc', 'GNF', 'FG', 1, 1, 0, 0, 0),
(63, 'Guyanaese Dollar', 'GYD', '$', 1, 1, 0, 0, 0),
(64, 'Haitian Gourde', 'HTG', 'G', 1, 1, 0, 0, 0),
(65, 'Honduran Lempira', 'HNL', 'L', 1, 1, 0, 0, 0),
(66, 'Hong Kong Dollar', 'HKD', '$', 1, 1, 0, 0, 0),
(67, 'Hungarian Forint', 'HUF', 'Ft', 1, 1, 0, 0, 0),
(68, 'Icelandic KrÃ³na', 'ISK', 'kr', 1, 1, 0, 0, 0),
(69, 'Indian Rupee', 'INR', '₹', 1, 1, 1, 0, 0),
(70, 'Indonesian Rupiah', 'IDR', 'Rp', 1, 1, 0, 0, 0),
(71, 'Iranian Rial', 'IRR', '﷼', 1, 1, 0, 0, 0),
(72, 'Iraqi Dinar', 'IQD', 'د.ع', 1, 1, 0, 0, 0),
(73, 'Israeli New Sheqel', 'ILS', '₪', 1, 1, 0, 0, 0),
(74, 'Italian Lira', 'ITL', 'L,£', 1, 1, 0, 0, 0),
(75, 'Jamaican Dollar', 'JMD', 'J$', 1, 1, 0, 0, 0),
(76, 'Japanese Yen', 'JPY', '¥', 1, 1, 0, 0, 0),
(77, 'Jordanian Dinar', 'JOD', 'ا.د', 1, 1, 0, 0, 0),
(78, 'Kazakhstani Tenge', 'KZT', 'лв', 1, 1, 0, 0, 0),
(79, 'Kenyan Shilling', 'KES', 'KSh', 1, 1, 0, 0, 0),
(80, 'Kuwaiti Dinar', 'KWD', 'ك.د', 1, 1, 0, 0, 0),
(81, 'Kyrgystani Som', 'KGS', 'лв', 1, 1, 0, 0, 0),
(82, 'Laotian Kip', 'LAK', '₭', 1, 1, 0, 0, 0),
(83, 'Latvian Lats', 'LVL', 'Ls', 0, 0, 0, 0, 0),
(84, 'Lebanese Pound', 'LBP', '£', 1, 1, 0, 0, 0),
(85, 'Lesotho Loti', 'LSL', 'L', 1, 1, 0, 0, 0),
(86, 'Liberian Dollar', 'LRD', '$', 1, 1, 0, 0, 0),
(87, 'Libyan Dinar', 'LYD', 'د.ل', 1, 1, 0, 0, 0),
(88, 'Lithuanian Litas', 'LTL', 'Lt', 0, 0, 0, 0, 0),
(89, 'Macanese Pataca', 'MOP', '$', 1, 1, 0, 0, 0),
(90, 'Macedonian Denar', 'MKD', 'ден', 1, 1, 0, 0, 0),
(91, 'Malagasy Ariary', 'MGA', 'Ar', 1, 1, 0, 0, 0),
(92, 'Malawian Kwacha', 'MWK', 'MK', 1, 1, 0, 0, 0),
(93, 'Malaysian Ringgit', 'MYR', 'RM', 1, 1, 0, 0, 0),
(94, 'Maldivian Rufiyaa', 'MVR', 'Rf', 1, 1, 0, 0, 0),
(95, 'Mauritanian Ouguiya', 'MRO', 'MRU', 1, 1, 0, 0, 0),
(96, 'Mauritian Rupee', 'MUR', '₨', 1, 1, 0, 0, 0),
(97, 'Mexican Peso', 'MXN', '$', 1, 1, 0, 0, 0),
(98, 'Moldovan Leu', 'MDL', 'L', 1, 1, 0, 0, 0),
(99, 'Mongolian Tugrik', 'MNT', '₮', 1, 1, 0, 0, 0),
(100, 'Moroccan Dirham', 'MAD', 'MAD', 1, 1, 0, 0, 0),
(101, 'Mozambican Metical', 'MZM', 'MT', 1, 1, 0, 0, 0),
(102, 'Myanmar Kyat', 'MMK', 'K', 1, 1, 0, 0, 0),
(103, 'Namibian Dollar', 'NAD', '$', 1, 1, 0, 0, 0),
(104, 'Nepalese Rupee', 'NPR', '₨', 1, 1, 0, 0, 0),
(105, 'Netherlands Antillean Guilder', 'ANG', 'ƒ', 1, 1, 0, 0, 0),
(106, 'New Taiwan Dollar', 'TWD', '$', 1, 1, 0, 0, 0),
(107, 'New Zealand Dollar', 'NZD', '$', 1, 1, 0, 0, 0),
(108, 'Nicaraguan CÃ³rdoba', 'NIO', 'C$', 1, 1, 0, 0, 0),
(109, 'Nigerian Naira', 'NGN', '₦', 1, 1, 0, 0, 1),
(110, 'North Korean Won', 'KPW', '₩', 0, 0, 0, 0, 0),
(111, 'Norwegian Krone', 'NOK', 'kr', 1, 1, 0, 0, 0),
(112, 'Omani Rial', 'OMR', '.ع.ر', 0, 0, 0, 0, 0),
(113, 'Pakistani Rupee', 'PKR', '₨', 1, 1, 0, 0, 0),
(114, 'Panamanian Balboa', 'PAB', 'B/.', 1, 1, 0, 0, 0),
(115, 'Papua New Guinean Kina', 'PGK', 'K', 1, 1, 0, 0, 0),
(116, 'Paraguayan Guarani', 'PYG', '₲', 1, 1, 0, 0, 0),
(117, 'Peruvian Nuevo Sol', 'PEN', 'S/.', 1, 1, 0, 0, 0),
(118, 'Philippine Peso', 'PHP', '₱', 1, 1, 0, 0, 0),
(119, 'Polish Zloty', 'PLN', 'zł', 1, 1, 0, 0, 0),
(120, 'Qatari Rial', 'QAR', 'ق.ر', 1, 1, 0, 0, 0),
(121, 'Romanian Leu', 'RON', 'lei', 1, 1, 0, 0, 0),
(122, 'Russian Ruble', 'RUB', '₽', 1, 1, 0, 0, 0),
(123, 'Rwandan Franc', 'RWF', 'FRw', 1, 1, 0, 0, 0),
(124, 'Salvadoran ColÃ³n', 'SVC', '₡', 0, 0, 0, 0, 0),
(125, 'Samoan Tala', 'WST', 'SAT', 1, 1, 0, 0, 0),
(126, 'Saudi Riyal', 'SAR', '﷼', 1, 1, 0, 0, 0),
(127, 'Serbian Dinar', 'RSD', 'din', 1, 1, 0, 0, 0),
(128, 'Seychellois Rupee', 'SCR', 'SRe', 1, 1, 0, 0, 0),
(129, 'Sierra Leonean Leone', 'SLL', 'Le', 1, 1, 0, 0, 0),
(130, 'Singapore Dollar', 'SGD', '$', 1, 1, 0, 0, 0),
(131, 'Slovak Koruna', 'SKK', 'Sk', 1, 1, 0, 0, 0),
(132, 'Solomon Islands Dollar', 'SBD', 'Si$', 1, 1, 0, 0, 0),
(133, 'Somali Shilling', 'SOS', 'Sh.so.', 1, 1, 0, 0, 0),
(134, 'South African Rand', 'ZAR', 'R', 1, 1, 0, 0, 0),
(135, 'South Korean Won', 'KRW', '₩', 1, 1, 0, 0, 0),
(136, 'Special Drawing Rights', 'XDR', 'SDR', 1, 1, 0, 0, 0),
(137, 'Sri Lankan Rupee', 'LKR', 'Rs', 1, 1, 0, 0, 0),
(138, 'St. Helena Pound', 'SHP', '£', 1, 1, 0, 0, 0),
(139, 'Sudanese Pound', 'SDG', '.س.ج', 1, 1, 0, 0, 0),
(140, 'Surinamese Dollar', 'SRD', '$', 1, 1, 0, 0, 0),
(141, 'Swazi Lilangeni', 'SZL', 'E', 1, 1, 0, 0, 0),
(142, 'Swedish Krona', 'SEK', 'kr', 1, 1, 0, 0, 0),
(143, 'Swiss Franc', 'CHF', 'CHf', 1, 1, 0, 0, 0),
(144, 'Syrian Pound', 'SYP', 'LS', 0, 0, 0, 0, 0),
(145, 'São Tomé and Príncipe Dobra', 'STD', 'Db', 1, 1, 0, 0, 0),
(146, 'Tajikistani Somoni', 'TJS', 'SM', 1, 1, 0, 0, 0),
(147, 'Tanzanian Shilling', 'TZS', 'TSh', 1, 1, 0, 0, 0),
(148, 'Thai Baht', 'THB', '฿', 1, 1, 0, 0, 0),
(149, 'Tongan pa\'anga', 'TOP', '$', 1, 1, 0, 0, 0),
(150, 'Trinidad & Tobago Dollar', 'TTD', '$', 1, 1, 0, 0, 0),
(151, 'Tunisian Dinar', 'TND', 'ت.د', 1, 1, 0, 0, 0),
(152, 'Turkish Lira', 'TRY', '₺', 1, 1, 0, 1, 0),
(153, 'Turkmenistani Manat', 'TMT', 'T', 1, 1, 0, 0, 0),
(154, 'Ugandan Shilling', 'UGX', 'USh', 1, 1, 0, 0, 0),
(155, 'Ukrainian Hryvnia', 'UAH', '₴', 1, 1, 0, 0, 0),
(156, 'United Arab Emirates Dirham', 'AED', 'إ.د', 1, 1, 0, 0, 0),
(157, 'Uruguayan Peso', 'UYU', '$', 1, 1, 0, 0, 0),
(158, 'Afghan Afghani', 'AFA', '؋', 1, 1, 0, 0, 0),
(159, 'Uzbekistan Som', 'UZS', 'лв', 1, 1, 0, 0, 0),
(160, 'Vanuatu Vatu', 'VUV', 'VT', 1, 1, 0, 0, 0),
(161, 'Venezuelan BolÃvar', 'VEF', 'Bs', 0, 0, 0, 0, 0),
(162, 'Vietnamese Dong', 'VND', '₫', 1, 1, 0, 0, 0),
(163, 'Yemeni Rial', 'YER', '﷼', 1, 1, 0, 0, 0),
(164, 'Zambian Kwacha', 'ZMK', 'ZK', 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `custom_page`
--

CREATE TABLE `custom_page` (
  `custom_page_id` int(11) NOT NULL,
  `page_title` varchar(255) NOT NULL,
  `page_content` longtext NOT NULL,
  `page_url` varchar(255) NOT NULL,
  `button_title` varchar(255) NOT NULL,
  `button_position` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enrol`
--

CREATE TABLE `enrol` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `gifted_by` int(11) NOT NULL DEFAULT 0,
  `expiry_date` varchar(255) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `enrol`
--

INSERT INTO `enrol` (`id`, `user_id`, `course_id`, `gifted_by`, `expiry_date`, `date_added`, `last_modified`) VALUES
(5, 18, 3, 0, NULL, 1727668800, NULL),
(6, 19, 3, 0, NULL, 1727668800, NULL),
(7, 20, 3, 0, NULL, 1728014400, NULL),
(8, 21, 3, 0, NULL, 1728446400, NULL),
(9, 23, 3, 0, NULL, 1729224000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `frontend_settings`
--

CREATE TABLE `frontend_settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `frontend_settings`
--

INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES
(1, 'banner_title', 'Start learning from best Platform'),
(2, 'banner_sub_title', 'Study any topic, anytime. Explore thousands of courses for the lowest price ever!'),
(4, 'about_us', '<p></p><h2><span xss=\"removed\">About us</span></h2>'),
(10, 'terms_and_condition', '<h2>Terms and Condition</h2>'),
(11, 'privacy_policy', '<p></p><p></p><h2><span xss=\"removed\">Privacy Policy</span></h2>'),
(13, 'theme', 'default-new'),
(14, 'cookie_note', 'This website uses cookies to personalize content and analyse traffic in order to offer you a better experience.'),
(15, 'cookie_status', 'active'),
(16, 'cookie_policy', '<h1>Cookie policy</h1><ol><li>Cookies are small text files that can be used by websites to make a user\'s experience more efficient.</li><li>The law states that we can store cookies on your device if they are strictly necessary for the operation of this site. For all other types of cookies we need your permission.</li><li>This site uses different types of cookies. Some cookies are placed by third party services that appear on our pages.</li></ol>'),
(17, 'banner_image', '{\"home_1\":\"home-1.png\"}'),
(18, 'light_logo', 'logo-light.png'),
(19, 'dark_logo', 'logo-dark.png'),
(20, 'small_logo', 'logo-light-sm.png'),
(21, 'favicon', 'favicon.png'),
(22, 'recaptcha_status', '0'),
(23, 'recaptcha_secretkey', 'Valid-secret-key'),
(24, 'recaptcha_sitekey', 'Valid-site-key'),
(25, 'refund_policy', '<h2><span xss=\"removed\">Refund Policy</span></h2>'),
(26, 'facebook', 'https://facebook.com'),
(27, 'twitter', 'https://twitter.com'),
(28, 'linkedin', ''),
(31, 'blog_page_title', 'Where possibilities begin'),
(32, 'blog_page_subtitle', 'We’re a leading marketplace platform for learning and teaching online. Explore some of our most popular content and learn something new.'),
(33, 'blog_page_banner', 'blog-page.png'),
(34, 'instructors_blog_permission', '1'),
(35, 'blog_visibility_on_the_home_page', '1'),
(37, 'website_faqs', '[{\"question\":\"what about this platform?\",\"answer\":\"it is lms platform\"}]'),
(38, 'motivational_speech', '[]'),
(39, 'home_page', 'home_2'),
(40, 'contact_info', '{\"email\":\"admin@example.com,\\r\\nsystem@example.com\",\"phone\":\"609-502-5899\\r\\n345-444-2122\",\"address\":\"455 Wolff Streets Suite 674\",\"office_hours\":\"10:00 AM - 6:00 PM\"}'),
(41, 'custom_css', '.dropdown-item {\r\ncolor: red !important ;\r\n}'),
(42, 'embed_code', ''),
(43, 'top_course_section', '1'),
(44, 'latest_course_section', '1'),
(45, 'top_category_section', '1'),
(46, 'upcoming_course_section', '1'),
(47, 'faq_section', '0'),
(48, 'top_instructor_section', '1'),
(49, 'motivational_speech_section', '1'),
(50, 'promotional_section', '1');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `phrase_id` int(11) NOT NULL,
  `phrase` longtext DEFAULT NULL,
  `english` longtext DEFAULT NULL,
  `arabic` text DEFAULT NULL,
  `awdwa` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `arabic`, `awdwa`) VALUES
(1, 'English', 'English', 'English', NULL),
(2, '404_not_found', '404 not found', '404 not found', NULL),
(3, 'courses', 'Courses', 'Courses', NULL),
(4, 'all_courses', 'All courses', 'All courses', NULL),
(5, 'all_courses', 'All courses', 'All courses', NULL),
(6, 'all_courses', 'All courses', 'All courses', NULL),
(7, 'search', 'Search', 'Search', NULL),
(8, 'search', 'Search', 'Search', NULL),
(9, 'search', 'Search', 'Search', NULL),
(10, 'search', 'Search', 'Search', NULL),
(11, 'search', 'Search', 'Search', NULL),
(12, 'search', 'Search', 'Search', NULL),
(13, 'you_have_no_items_in_your_cart!', 'You have no items in your cart!', 'You have no items in your cart!', NULL),
(14, 'you_have_no_items_in_your_cart!', 'You have no items in your cart!', 'You have no items in your cart!', NULL),
(15, 'you_have_no_items_in_your_cart!', 'You have no items in your cart!', 'You have no items in your cart!', NULL),
(16, 'you_have_no_items_in_your_cart!', 'You have no items in your cart!', 'You have no items in your cart!', NULL),
(17, 'you_have_no_items_in_your_cart!', 'You have no items in your cart!', 'You have no items in your cart!', NULL),
(18, 'you_have_no_items_in_your_cart!', 'You have no items in your cart!', 'You have no items in your cart!', NULL),
(19, 'checkout', 'Checkout', 'Checkout', NULL),
(20, 'checkout', 'Checkout', 'Checkout', NULL),
(21, 'checkout', 'Checkout', 'Checkout', NULL),
(22, 'login', 'Login', 'Login', NULL),
(23, 'login', 'Login', 'Login', NULL),
(24, 'login', 'Login', 'Login', NULL),
(25, 'join_now', 'Join now', 'Join now', NULL),
(26, 'join_now', 'Join now', 'Join now', NULL),
(27, 'join_now', 'Join now', 'Join now', NULL),
(28, 'join_now', 'Join now', 'Join now', NULL),
(29, 'join_now', 'Join now', 'Join now', NULL),
(30, 'join_now', 'Join now', 'Join now', NULL),
(31, 'sign_up', 'Sign up', 'Sign up', NULL),
(32, 'cart', 'Cart', 'Cart', NULL),
(33, 'cart', 'Cart', 'Cart', NULL),
(34, 'cart', 'Cart', 'Cart', NULL),
(35, 'categories', 'Categories', 'Categories', NULL),
(36, 'categories', 'Categories', 'Categories', NULL),
(37, 'categories', 'Categories', 'Categories', NULL),
(38, 'categories', 'Categories', 'Categories', NULL),
(39, 'cookie_policy', 'Cookie policy', 'Cookie policy', NULL),
(40, 'cookie_policy', 'Cookie policy', 'Cookie policy', NULL),
(41, 'cookie_policy', 'Cookie policy', 'Cookie policy', NULL),
(42, 'cookie_policy', 'Cookie policy', 'Cookie policy', NULL),
(43, 'accept', 'Accept', 'Accept', NULL),
(44, 'accept', 'Accept', 'Accept', NULL),
(45, 'accept', 'Accept', 'Accept', NULL),
(46, 'accept', 'Accept', 'Accept', NULL),
(47, 'accept', 'Accept', 'Accept', NULL),
(48, 'accept', 'Accept', 'Accept', NULL),
(49, 'home', 'Home', 'Home', NULL),
(50, 'the_page_you_requested_could_not_be_found', 'The page you requested could not be found', 'The page you requested could not be found', NULL),
(51, 'the_page_you_requested_could_not_be_found', 'The page you requested could not be found', 'The page you requested could not be found', NULL),
(52, 'the_page_you_requested_could_not_be_found', 'The page you requested could not be found', 'The page you requested could not be found', NULL),
(53, 'check_the_spelling_of_the_url', 'Check the spelling of the url', 'Check the spelling of the url', NULL),
(54, 'check_the_spelling_of_the_url', 'Check the spelling of the url', 'Check the spelling of the url', NULL),
(55, 'check_the_spelling_of_the_url', 'Check the spelling of the url', 'Check the spelling of the url', NULL),
(56, 'check_the_spelling_of_the_url', 'Check the spelling of the url', 'Check the spelling of the url', NULL),
(57, 'if_you_are_still_puzzled,_click_on_the_home_link_below', 'If you are still puzzled, click on the home link below', 'If you are still puzzled, click on the home link below', NULL),
(58, 'if_you_are_still_puzzled,_click_on_the_home_link_below', 'If you are still puzzled, click on the home link below', 'If you are still puzzled, click on the home link below', NULL),
(59, 'if_you_are_still_puzzled,_click_on_the_home_link_below', 'If you are still puzzled, click on the home link below', 'If you are still puzzled, click on the home link below', NULL),
(60, 'if_you_are_still_puzzled,_click_on_the_home_link_below', 'If you are still puzzled, click on the home link below', 'If you are still puzzled, click on the home link below', NULL),
(61, 'if_you_are_still_puzzled,_click_on_the_home_link_below', 'If you are still puzzled, click on the home link below', 'If you are still puzzled, click on the home link below', NULL),
(62, 'if_you_are_still_puzzled,_click_on_the_home_link_below', 'If you are still puzzled, click on the home link below', 'If you are still puzzled, click on the home link below', NULL),
(63, 'back_to_home', 'Back to home', 'Back to home', NULL),
(64, 'back_to_home', 'Back to home', 'Back to home', NULL),
(65, 'back_to_home', 'Back to home', 'Back to home', NULL),
(66, 'back_to_home', 'Back to home', 'Back to home', NULL),
(67, 'back_to_home', 'Back to home', 'Back to home', NULL),
(68, 'back_to_home', 'Back to home', 'Back to home', NULL),
(69, 'top_categories', 'Top categories', 'Top categories', NULL),
(70, 'useful_links', 'Useful links', 'Useful links', NULL),
(71, 'useful_links', 'Useful links', 'Useful links', NULL),
(72, 'useful_links', 'Useful links', 'Useful links', NULL),
(73, 'useful_links', 'Useful links', 'Useful links', NULL),
(74, 'useful_links', 'Useful links', 'Useful links', NULL),
(75, 'useful_links', 'Useful links', 'Useful links', NULL),
(76, 'become_an_instructor', 'Become an instructor', 'Become an instructor', NULL),
(77, 'become_an_instructor', 'Become an instructor', 'Become an instructor', NULL),
(78, 'become_an_instructor', 'Become an instructor', 'Become an instructor', NULL),
(79, 'become_an_instructor', 'Become an instructor', 'Become an instructor', NULL),
(80, 'blog', 'Blog', 'Blog', NULL),
(81, 'blog', 'Blog', 'Blog', NULL),
(82, 'blog', 'Blog', 'Blog', NULL),
(83, 'blog', 'Blog', 'Blog', NULL),
(84, 'blog', 'Blog', 'Blog', NULL),
(85, 'help', 'Help', 'Help', NULL),
(86, 'help', 'Help', 'Help', NULL),
(87, 'help', 'Help', 'Help', NULL),
(88, 'help', 'Help', 'Help', NULL),
(89, 'help', 'Help', 'Help', NULL),
(90, 'help', 'Help', 'Help', NULL),
(91, 'contact_us', 'Contact us', 'Contact us', NULL),
(92, 'contact_us', 'Contact us', 'Contact us', NULL),
(93, 'contact_us', 'Contact us', 'Contact us', NULL),
(94, 'contact_us', 'Contact us', 'Contact us', NULL),
(95, 'contact_us', 'Contact us', 'Contact us', NULL),
(96, 'contact_us', 'Contact us', 'Contact us', NULL),
(97, 'about_us', 'About us', 'About us', NULL),
(98, 'about_us', 'About us', 'About us', NULL),
(99, 'about_us', 'About us', 'About us', NULL),
(100, 'about_us', 'About us', 'About us', NULL),
(101, 'privacy_policy', 'Privacy policy', 'Privacy policy', NULL),
(102, 'privacy_policy', 'Privacy policy', 'Privacy policy', NULL),
(103, 'privacy_policy', 'Privacy policy', 'Privacy policy', NULL),
(104, 'privacy_policy', 'Privacy policy', 'Privacy policy', NULL),
(105, 'privacy_policy', 'Privacy policy', 'Privacy policy', NULL),
(106, 'privacy_policy', 'Privacy policy', 'Privacy policy', NULL),
(107, 'terms_and_condition', 'Terms and condition', 'Terms and condition', NULL),
(108, 'terms_and_condition', 'Terms and condition', 'Terms and condition', NULL),
(109, 'terms_and_condition', 'Terms and condition', 'Terms and condition', NULL),
(110, 'terms_and_condition', 'Terms and condition', 'Terms and condition', NULL),
(111, 'terms_and_condition', 'Terms and condition', 'Terms and condition', NULL),
(112, 'terms_and_condition', 'Terms and condition', 'Terms and condition', NULL),
(113, 'faq', 'Faq', 'Faq', NULL),
(114, 'faq', 'Faq', 'Faq', NULL),
(115, 'faq', 'Faq', 'Faq', NULL),
(116, 'faq', 'Faq', 'Faq', NULL),
(117, 'faq', 'Faq', 'Faq', NULL),
(118, 'refund_policy', 'Refund policy', 'Refund policy', NULL),
(119, 'refund_policy', 'Refund policy', 'Refund policy', NULL),
(120, 'refund_policy', 'Refund policy', 'Refund policy', NULL),
(121, 'refund_policy', 'Refund policy', 'Refund policy', NULL),
(122, 'refund_policy', 'Refund policy', 'Refund policy', NULL),
(123, 'subscribe_to_our_newsletter', 'Subscribe to our newsletter', 'Subscribe to our newsletter', NULL),
(124, 'subscribe_to_our_newsletter', 'Subscribe to our newsletter', 'Subscribe to our newsletter', NULL),
(125, 'subscribe_to_our_newsletter', 'Subscribe to our newsletter', 'Subscribe to our newsletter', NULL),
(126, 'subscribe_to_our_newsletter', 'Subscribe to our newsletter', 'Subscribe to our newsletter', NULL),
(127, 'subscribe_to_our_newsletter', 'Subscribe to our newsletter', 'Subscribe to our newsletter', NULL),
(128, 'subscribe_to_our_newsletter', 'Subscribe to our newsletter', 'Subscribe to our newsletter', NULL),
(129, 'enter_your_email_address', 'Enter your email address', 'Enter your email address', NULL),
(130, 'enter_your_email_address', 'Enter your email address', 'Enter your email address', NULL),
(131, 'enter_your_email_address', 'Enter your email address', 'Enter your email address', NULL),
(132, 'enter_your_email_address', 'Enter your email address', 'Enter your email address', NULL),
(133, 'enter_your_email_address', 'Enter your email address', 'Enter your email address', NULL),
(134, 'enter_your_email_address', 'Enter your email address', 'Enter your email address', NULL),
(135, 'creativeitem', 'Creativeitem', 'Creativeitem', NULL),
(136, 'creativeitem', 'Creativeitem', 'Creativeitem', NULL),
(137, 'creativeitem', 'Creativeitem', 'Creativeitem', NULL),
(138, 'creativeitem', 'Creativeitem', 'Creativeitem', NULL),
(139, 'creativeitem', 'Creativeitem', 'Creativeitem', NULL),
(140, 'are_you_sure', 'Are you sure', 'Are you sure', NULL),
(141, 'are_you_sure', 'Are you sure', 'Are you sure', NULL),
(142, 'yes', 'Yes', 'Yes', NULL),
(143, 'yes', 'Yes', 'Yes', NULL),
(144, 'yes', 'Yes', 'Yes', NULL),
(145, 'no', 'No', 'No', NULL),
(146, 'no', 'No', 'No', NULL),
(147, 'no', 'No', 'No', NULL),
(148, 'no', 'No', 'No', NULL),
(149, 'log_in', 'Log in', 'Log in', NULL),
(150, 'explore,_learn,_and_grow_with_us._enjoy_a_seamless_and_enriching_educational_journey._lets_begin!', 'Explore, learn, and grow with us. enjoy a seamless and enriching educational journey. lets begin!', 'Explore, learn, and grow with us. enjoy a seamless and enriching educational journey. lets begin!', NULL),
(151, 'your_email', 'Your email', 'Your email', NULL),
(152, 'enter_your_email', 'Enter your email', 'Enter your email', NULL),
(153, 'password', 'Password', 'Password', NULL),
(154, 'enter_your_valid_password', 'Enter your valid password', 'Enter your valid password', NULL),
(155, 'forgot_password?', 'Forgot password?', 'Forgot password?', NULL),
(156, 'don`t_have_an_account?', 'Don`t have an account?', 'Don`t have an account?', NULL),
(157, 'or', 'Or', 'Or', NULL),
(158, 'welcome', 'Welcome', 'Welcome', NULL),
(159, 'dashboard', 'Dashboard', 'Dashboard', NULL),
(160, 'quick_actions', 'Quick actions', 'Quick actions', NULL),
(161, 'create_course', 'Create course', 'Create course', NULL),
(162, 'add_course', 'Add course', 'Add course', NULL),
(163, 'add_new_lesson', 'Add new lesson', 'Add new lesson', NULL),
(164, 'add_lesson', 'Add lesson', 'Add lesson', NULL),
(165, 'add_student', 'Add student', 'Add student', NULL),
(166, 'enrol_a_student', 'Enrol a student', 'Enrol a student', NULL),
(167, 'enrol_student', 'Enrol student', 'Enrol student', NULL),
(168, 'help_center', 'Help center', 'Help center', NULL),
(169, 'read_documentation', 'Read documentation', 'Read documentation', NULL),
(170, 'watch_video_tutorial', 'Watch video tutorial', 'Watch video tutorial', NULL),
(171, 'get_customer_support', 'Get customer support', 'Get customer support', NULL),
(172, 'order_customization', 'Order customization', 'Order customization', NULL),
(173, 'request_a_new_feature', 'Request a new feature', 'Request a new feature', NULL),
(174, 'browse_addons', 'Browse addons', 'Browse addons', NULL),
(175, 'get_services', 'Get services', 'Get services', NULL),
(176, 'remove_all', 'Remove all', 'Remove all', NULL),
(177, 'notification', 'Notification', 'Notification', NULL),
(178, 'no_notification', 'No notification', 'No notification', NULL),
(179, 'stay_tuned!', 'Stay tuned!', 'Stay tuned!', NULL),
(180, 'notifications_about_your_activity_will_show_up_here.', 'Notifications about your activity will show up here.', 'Notifications about your activity will show up here.', NULL),
(181, 'notification_settings', 'Notification settings', 'Notification settings', NULL),
(182, 'mark_all_as_read', 'Mark all as read', 'Mark all as read', NULL),
(183, 'admin', 'Admin', 'Admin', NULL),
(184, 'my_account', 'My account', 'My account', NULL),
(185, 'settings', 'Settings', 'Settings', NULL),
(186, 'logout', 'Logout', 'Logout', NULL),
(187, 'visit_website', 'Visit website', 'Visit website', NULL),
(188, 'navigation', 'Navigation', 'Navigation', NULL),
(189, 'manage_courses', 'Manage courses', 'Manage courses', NULL),
(190, 'add_new_course', 'Add new course', 'Add new course', NULL),
(191, 'course_category', 'Course category', 'Course category', NULL),
(192, 'coupons', 'Coupons', 'Coupons', NULL),
(193, 'enrollments', 'Enrollments', 'Enrollments', NULL),
(194, 'course_enrollment', 'Course enrollment', 'Course enrollment', NULL),
(195, 'enrol_history', 'Enrol history', 'Enrol history', NULL),
(196, 'report', 'Report', 'Report', NULL),
(197, 'admin_revenue', 'Admin revenue', 'Admin revenue', NULL),
(198, 'instructor_revenue', 'Instructor revenue', 'Instructor revenue', NULL),
(199, 'purchase_history', 'Purchase history', 'Purchase history', NULL),
(200, 'users', 'Users', 'Users', NULL),
(201, 'admins', 'Admins', 'Admins', NULL),
(202, 'manage_admins', 'Manage admins', 'Manage admins', NULL),
(203, 'add_new_admin', 'Add new admin', 'Add new admin', NULL),
(204, 'instructors', 'Instructors', 'Instructors', NULL),
(205, 'manage_instructors', 'Manage instructors', 'Manage instructors', NULL),
(206, 'add_new_instructor', 'Add new instructor', 'Add new instructor', NULL),
(207, 'instructor_payout', 'Instructor payout', 'Instructor payout', NULL),
(208, 'instructor_settings', 'Instructor settings', 'Instructor settings', NULL),
(209, 'applications', 'Applications', 'Applications', NULL),
(210, 'students', 'Students', 'Students', NULL),
(211, 'manage_students', 'Manage students', 'Manage students', NULL),
(212, 'add_new_student', 'Add new student', 'Add new student', NULL),
(213, 'message', 'Message', 'Message', NULL),
(214, 'newsletter', 'Newsletter', 'Newsletter', NULL),
(215, 'all_newsletter', 'All newsletter', 'All newsletter', NULL),
(216, 'subscribed_user', 'Subscribed user', 'Subscribed user', NULL),
(217, 'contact', 'Contact', 'Contact', NULL),
(218, 'all_blogs', 'All blogs', 'All blogs', NULL),
(219, 'pending_blog', 'Pending blog', 'Pending blog', NULL),
(220, 'blog_category', 'Blog category', 'Blog category', NULL),
(221, 'blog_settings', 'Blog settings', 'Blog settings', NULL),
(222, 'addons', 'Addons', 'Addons', NULL),
(223, 'themes', 'Themes', 'Themes', NULL),
(224, 'system_settings', 'System settings', 'System settings', NULL),
(225, 'website_settings', 'Website settings', 'Website settings', NULL),
(226, 'academy_cloud', 'Academy cloud', 'Academy cloud', NULL),
(227, 'drip_content_settings', 'Drip content settings', 'Drip content settings', NULL),
(228, 'wasabi_storage_settings', 'Wasabi storage settings', 'Wasabi storage settings', NULL),
(229, 'bbb_live_class_settings', 'Bbb live class settings', 'Bbb live class settings', NULL),
(230, 'payment_settings', 'Payment settings', 'Payment settings', NULL),
(231, 'language_settings', 'Language settings', 'Language settings', NULL),
(232, 'social_login', 'Social login', 'Social login', NULL),
(233, 'custom_page_builder', 'Custom page builder', 'Custom page builder', NULL),
(234, 'data_center', 'Data center', 'Data center', NULL),
(235, 'about', 'About', 'About', NULL),
(236, 'manage_profile', 'Manage profile', 'Manage profile', NULL),
(237, 'admin_revenue_this_year', 'Admin revenue this year', 'Admin revenue this year', NULL),
(238, 'number_courses', 'Number courses', 'Number courses', NULL),
(239, 'number_of_lessons', 'Number of lessons', 'Number of lessons', NULL),
(240, 'number_of_enrolment', 'Number of enrolment', 'Number of enrolment', NULL),
(241, 'number_of_student', 'Number of student', 'Number of student', NULL),
(242, 'course_overview', 'Course overview', 'Course overview', NULL),
(243, 'active_courses', 'Active courses', 'Active courses', NULL),
(244, 'pending_courses', 'Pending courses', 'Pending courses', NULL),
(245, 'requested_withdrawal', 'Requested withdrawal', 'Requested withdrawal', NULL),
(246, 'january', 'January', 'January', NULL),
(247, 'february', 'February', 'February', NULL),
(248, 'march', 'March', 'March', NULL),
(249, 'april', 'April', 'April', NULL),
(250, 'may', 'May', 'May', NULL),
(251, 'june', 'June', 'June', NULL),
(252, 'july', 'July', 'July', NULL),
(253, 'august', 'August', 'August', NULL),
(254, 'september', 'September', 'September', NULL),
(255, 'october', 'October', 'October', NULL),
(256, 'november', 'November', 'November', NULL),
(257, 'december', 'December', 'December', NULL),
(258, 'this_year', 'This year', 'This year', NULL),
(259, 'active_course', 'Active course', 'Active course', NULL),
(260, 'pending_course', 'Pending course', 'Pending course', NULL),
(261, 'heads_up', 'Heads up', 'Heads up', NULL),
(262, 'congratulations', 'Congratulations', 'Congratulations', NULL),
(263, 'oh_snap', 'Oh snap', 'Oh snap', NULL),
(264, 'please_fill_all_the_required_fields', 'Please fill all the required fields', 'Please fill all the required fields', NULL),
(265, 'close', 'Close', 'Close', NULL),
(266, 'cancel', 'Cancel', 'Cancel', NULL),
(267, 'continue', 'Continue', 'Continue', NULL),
(268, 'ok', 'Ok', 'Ok', NULL),
(269, 'success', 'Success', 'Success', NULL),
(270, 'your_server_does_not_allow_uploading_files_that_large.', 'Your server does not allow uploading files that large.', 'Your server does not allow uploading files that large.', NULL),
(271, 'your_servers_file_upload_limit_is_40mb', 'Your servers file upload limit is 40mb', NULL, NULL),
(272, 'successfully', 'Successfully', 'Successfully', NULL),
(273, 'div_added_to_bottom_', 'Div added to bottom ', 'Div added to bottom ', NULL),
(274, 'div_has_been_deleted_', 'Div has been deleted ', 'Div has been deleted ', NULL),
(275, 'not_found', 'Not found', NULL, NULL),
(276, 'about_this_application', 'About this application', NULL, NULL),
(277, 'software_version', 'Software version', NULL, NULL),
(278, 'check_update', 'Check update', NULL, NULL),
(279, 'php_version', 'Php version', NULL, NULL),
(280, 'curl_enable', 'Curl enable', NULL, NULL),
(281, 'enabled', 'Enabled', NULL, NULL),
(282, 'purchase_code', 'Purchase code', 'Purchase code', NULL),
(283, 'product_license', 'Product license', NULL, NULL),
(284, 'invalid', 'Invalid', NULL, NULL),
(285, 'enter_valid_purchase_code', 'Enter valid purchase code', NULL, NULL),
(286, 'customer_support_status', 'Customer support status', NULL, NULL),
(287, 'support_expiry_date', 'Support expiry date', NULL, NULL),
(288, 'customer_name', 'Customer name', NULL, NULL),
(289, 'customer_support', 'Customer support', NULL, NULL),
(290, 'our_premium_services', 'Our premium services', NULL, NULL),
(291, 'website_name', 'Website name', 'Website name', NULL),
(292, 'website_title', 'Website title', 'Website title', NULL),
(293, 'website_keywords', 'Website keywords', 'Website keywords', NULL),
(294, 'website_description', 'Website description', 'Website description', NULL),
(295, 'author', 'Author', 'Author', NULL),
(296, 'slogan', 'Slogan', 'Slogan', NULL),
(297, 'system_email', 'System email', 'System email', NULL),
(298, 'address', 'Address', 'Address', NULL),
(299, 'phone', 'Phone', 'Phone', NULL),
(300, 'youtube_api_key', 'Youtube api key', 'Youtube api key', NULL),
(301, 'get_youtube_api_key', 'Get youtube api key', 'Get youtube api key', NULL),
(302, 'if_you_want_to_use_google_drive_video,_you_need_to_enable_the_google_drive_service_in_this_api', 'If you want to use google drive video, you need to enable the google drive service in this api', 'If you want to use google drive video, you need to enable the google drive service in this api', NULL),
(303, 'vimeo_api_key', 'Vimeo api key', 'Vimeo api key', NULL),
(304, 'get_vimeo_api_key', 'Get vimeo api key', 'Get vimeo api key', NULL),
(305, 'system_language', 'System language', 'System language', NULL),
(306, 'student_email_verification', 'Student email verification', 'Student email verification', NULL),
(307, 'enable', 'Enable', 'Enable', NULL),
(308, 'disable', 'Disable', 'Disable', NULL),
(309, 'course_accessibility', 'Course accessibility', 'Course accessibility', NULL),
(310, 'publicly', 'Publicly', 'Publicly', NULL),
(311, 'only_logged_in_users', 'Only logged in users', 'Only logged in users', NULL),
(312, 'number_of_authorized_devices', 'Number of authorized devices', 'Number of authorized devices', NULL),
(313, 'how_many_devices_do_you_want_to_allow_for_logging_in_using_a_single_account', 'How many devices do you want to allow for logging in using a single account', 'How many devices do you want to allow for logging in using a single account', NULL),
(314, 'course_selling_tax', 'Course selling tax', 'Course selling tax', NULL),
(315, 'enter_0_if_you_want_to_disable_the_tax_option', 'Enter 0 if you want to disable the tax option', 'Enter 0 if you want to disable the tax option', NULL),
(316, 'google_analytics_id', 'Google analytics id', 'Google analytics id', NULL),
(317, 'keep_it_blank_if_you_want_to_disable_it', 'Keep it blank if you want to disable it', 'Keep it blank if you want to disable it', NULL),
(318, 'meta_pixel_id', 'Meta pixel id', 'Meta pixel id', NULL),
(319, 'footer_text', 'Footer text', 'Footer text', NULL),
(320, 'footer_link', 'Footer link', 'Footer link', NULL),
(321, 'timezone', 'Timezone', 'Timezone', NULL),
(322, 'can_students_disable_their_own_accounts?', 'Can students disable their own accounts?', 'Can students disable their own accounts?', NULL),
(323, 'save', 'Save', 'Save', NULL),
(324, 'update_product', 'Update product', 'Update product', NULL),
(325, 'file', 'File', 'File', NULL),
(326, 'update', 'Update', 'Update', NULL),
(327, 'product_updated_successfully', 'Product updated successfully', NULL, NULL),
(328, 'administration', 'Administration', 'Administration', NULL),
(329, 'log_out', 'Log out', 'Log out', NULL),
(330, 'start_learning_from_best_platform', 'Start learning from best platform', 'Start learning from best platform', NULL),
(331, 'study_any_topic,_anytime._explore_thousands_of_courses_for_the_lowest_price_ever!', 'Study any topic, anytime. explore thousands of courses for the lowest price ever!', 'Study any topic, anytime. explore thousands of courses for the lowest price ever!', NULL),
(332, 'what_do_you_want_to_learn', 'What do you want to learn', 'What do you want to learn', NULL),
(333, 'expert_instruction', 'Expert instruction', 'Expert instruction', NULL),
(334, 'find_the_right_course_for_you', 'Find the right course for you', 'Find the right course for you', NULL),
(335, 'online_courses', 'Online courses', 'Online courses', NULL),
(336, 'explore_a_variety_of_fresh_topics', 'Explore a variety of fresh topics', 'Explore a variety of fresh topics', NULL),
(337, 'lifetime_access', 'Lifetime access', 'Lifetime access', NULL),
(338, 'learn_on_your_schedule', 'Learn on your schedule', 'Learn on your schedule', NULL),
(339, 'top_courses', 'Top courses', 'Top courses', NULL),
(340, 'these_are_the_most_popular_courses_among_listen_courses_learners_worldwide', 'These are the most popular courses among listen courses learners worldwide', 'These are the most popular courses among listen courses learners worldwide', NULL),
(341, 'top', 'Top', 'Top', NULL),
(342, 'latest_courses', 'Latest courses', 'Latest courses', NULL),
(343, 'these_are_the_most_latest_courses_among_listen_courses_learners_worldwide', 'These are the most latest courses among listen courses learners worldwide', 'These are the most latest courses among listen courses learners worldwide', NULL),
(344, 'learn', 'Learn', 'Learn', NULL),
(345, 'new_skills_when_and_where_you_like.', 'New skills when and where you like.', 'New skills when and where you like.', NULL),
(346, 'discover_a_world_of_learning_opportunities_through_our_upcoming_courses,_where_industry_experts.', 'Discover a world of learning opportunities through our upcoming courses, where industry experts.', 'Discover a world of learning opportunities through our upcoming courses, where industry experts.', NULL),
(347, 'join_course_for_free', 'Join course for free', 'Join course for free', NULL),
(348, 'became_a_instructor', 'Became a instructor', 'Became a instructor', NULL),
(349, 'join_now_to_start_learning', 'Join now to start learning', 'Join now to start learning', NULL),
(350, 'learn_from_our_quality_instructors!', 'Learn from our quality instructors!', 'Learn from our quality instructors!', NULL),
(351, 'get_started', 'Get started', 'Get started', NULL),
(352, 'become_a_new_instructor', 'Become a new instructor', 'Become a new instructor', NULL),
(353, 'teach_thousands_of_students_and_earn_money!', 'Teach thousands of students and earn money!', 'Teach thousands of students and earn money!', NULL),
(354, 'course_adding_form', 'Course adding form', 'Course adding form', NULL),
(355, 'back_to_course_list', 'Back to course list', 'Back to course list', NULL),
(356, 'basic', 'Basic', 'Basic', NULL),
(357, 'info', 'Info', 'Info', NULL),
(358, 'pricing', 'Pricing', 'Pricing', NULL),
(359, 'media', 'Media', 'Media', NULL),
(360, 'seo', 'Seo', 'Seo', NULL),
(361, 'finish', 'Finish', 'Finish', NULL),
(362, 'course_title', 'Course title', 'Course title', NULL),
(363, 'enter_course_title', 'Enter course title', 'Enter course title', NULL),
(364, 'short_description', 'Short description', 'Short description', NULL),
(365, 'description', 'Description', 'Description', NULL),
(366, 'category', 'Category', 'Category', NULL),
(367, 'select_a_category', 'Select a category', 'Select a category', NULL),
(368, 'select_sub_category', 'Select sub category', 'Select sub category', NULL),
(369, 'level', 'Level', 'Level', NULL),
(370, 'beginner', 'Beginner', 'Beginner', NULL),
(371, 'advanced', 'Advanced', 'Advanced', NULL),
(372, 'intermediate', 'Intermediate', 'Intermediate', NULL),
(373, 'language_made_in', 'Language made in', 'Language made in', NULL),
(374, 'enable_drip_content', 'Enable drip content', 'Enable drip content', NULL),
(375, 'create_as_a', 'Create as a', 'Create as a', NULL),
(376, 'private_course', 'Private course', 'Private course', NULL),
(377, 'upcoming_course', 'Upcoming course', 'Upcoming course', NULL),
(378, 'upcoming_image_thumbnail', 'Upcoming image thumbnail', 'Upcoming image thumbnail', NULL),
(379, 'the_image_size_should_be', 'The image size should be', 'The image size should be', NULL),
(380, 'publish_date', 'Publish date', 'Publish date', NULL),
(381, 'enter_publish_date', 'Enter publish date', 'Enter publish date', NULL),
(382, 'check_if_this_course_is_top_course', 'Check if this course is top course', 'Check if this course is top course', NULL),
(383, 'course_faq', 'Course faq', 'Course faq', NULL),
(384, 'faq_question', 'Faq question', 'Faq question', NULL),
(385, 'answer', 'Answer', 'Answer', NULL),
(386, 'requirements', 'Requirements', 'Requirements', NULL),
(387, 'provide_requirements', 'Provide requirements', 'Provide requirements', NULL),
(388, 'outcomes', 'Outcomes', 'Outcomes', NULL),
(389, 'provide_outcomes', 'Provide outcomes', 'Provide outcomes', NULL),
(390, 'check_if_this_is_a_free_course', 'Check if this is a free course', 'Check if this is a free course', NULL),
(391, 'course_price', 'Course price', 'Course price', NULL),
(392, 'enter_course_course_price', 'Enter course course price', 'Enter course course price', NULL),
(393, 'check_if_this_course_has_discount', 'Check if this course has discount', 'Check if this course has discount', NULL),
(394, 'discounted_price', 'Discounted price', 'Discounted price', NULL),
(395, 'this_course_has', 'This course has', 'This course has', NULL),
(396, 'discount', 'Discount', 'Discount', NULL),
(397, 'expiry_period', 'Expiry period', 'Expiry period', NULL),
(398, 'lifetime', 'Lifetime', 'Lifetime', NULL),
(399, 'limited_time', 'Limited time', 'Limited time', NULL),
(400, 'number_of_month', 'Number of month', 'Number of month', NULL),
(401, 'after_purchase,_students_can_access_the_course_until_your_selected_time.', 'After purchase, students can access the course until your selected time.', 'After purchase, students can access the course until your selected time.', NULL),
(402, 'course_overview_provider', 'Course overview provider', 'Course overview provider', NULL),
(403, 'youtube', 'Youtube', 'Youtube', NULL),
(404, 'vimeo', 'Vimeo', 'Vimeo', NULL),
(405, 'html5', 'Html5', 'Html5', NULL),
(406, 'course_overview_url', 'Course overview url', 'Course overview url', NULL),
(407, 'course_thumbnail', 'Course thumbnail', 'Course thumbnail', NULL),
(408, 'meta_keywords', 'Meta keywords', 'Meta keywords', NULL),
(409, 'write_a_keyword_and_then_press_enter_button', 'Write a keyword and then press enter button', 'Write a keyword and then press enter button', NULL),
(410, 'meta_description', 'Meta description', 'Meta description', NULL),
(411, 'thank_you', 'Thank you', 'Thank you', NULL),
(412, 'you_are_just_one_click_away', 'You are just one click away', 'You are just one click away', NULL),
(413, 'submit', 'Submit', 'Submit', NULL),
(414, 'bigbluebutton_live_class_settings', 'Bigbluebutton live class settings', NULL, NULL),
(415, 'bigbluebutton_endpoint', 'Bigbluebutton endpoint', NULL, NULL),
(416, 'bigbluebutton_shared_secret_or_salt', 'Bigbluebutton shared secret or salt', NULL, NULL),
(417, 'save_changes', 'Save changes', NULL, NULL),
(418, 'website_notification', 'Website notification', NULL, NULL),
(419, 'smtp_settings', 'Smtp settings', NULL, NULL),
(420, 'email_template', 'Email template', NULL, NULL),
(421, 'protocol', 'Protocol', NULL, NULL),
(422, 'smtp_crypto', 'Smtp crypto', NULL, NULL),
(423, 'smtp_host', 'Smtp host', NULL, NULL),
(424, 'smtp_port', 'Smtp port', NULL, NULL),
(425, 'smtp_from_email', 'Smtp from email', NULL, NULL),
(426, 'smtp_username', 'Smtp username', NULL, NULL),
(427, 'smtp_password', 'Smtp password', NULL, NULL),
(428, 'email_type', 'Email type', NULL, NULL),
(429, 'email_subject', 'Email subject', NULL, NULL),
(430, 'action', 'Action', 'Action', NULL),
(431, 'to_admin', 'To admin', NULL, NULL),
(432, 'to_user', 'To user', NULL, NULL),
(433, 'edit_email_template', 'Edit email template', NULL, NULL),
(434, 'to_instructor', 'To instructor', NULL, NULL),
(435, 'to_student', 'To student', NULL, NULL),
(436, 'to_affiliator', 'To affiliator', NULL, NULL),
(437, 'to_payer', 'To payer', NULL, NULL),
(438, 'to_receiver', 'To receiver', NULL, NULL),
(439, 'configure_your_notification_settings', 'Configure your notification settings', NULL, NULL),
(440, 'new_user_registration', 'New user registration', NULL, NULL),
(441, 'get_notified_when_a_new_user_signs_up', 'Get notified when a new user signs up', NULL, NULL),
(442, 'configure_for_admin', 'Configure for admin', NULL, NULL),
(443, 'system_notification', 'System notification', NULL, NULL),
(444, 'email_notification', 'Email notification', NULL, NULL),
(445, 'configure_for_user', 'Configure for user', NULL, NULL),
(446, 'email_verification', 'Email verification', NULL, NULL),
(447, 'not_editable', 'Not editable', NULL, NULL),
(448, 'it_is_permanently_enabled_for_student_email_verification.', 'It is permanently enabled for student email verification.', NULL, NULL),
(449, 'forgot_password_mail', 'Forgot password mail', NULL, NULL),
(450, 'account_security_alert', 'Account security alert', NULL, NULL),
(451, 'send_verification_code_for_login_from_a_new_device', 'Send verification code for login from a new device', NULL, NULL),
(452, 'course_purchase_notification', 'Course purchase notification', NULL, NULL),
(453, 'stay_up-to-date_on_student_course_purchases.', 'Stay up-to-date on student course purchases.', NULL, NULL),
(454, 'configure_for_student', 'Configure for student', NULL, NULL),
(455, 'configure_for_instructor', 'Configure for instructor', NULL, NULL),
(456, 'course_completion_mail', 'Course completion mail', NULL, NULL),
(457, 'stay_up_to_date_on_student_course_completion.', 'Stay up to date on student course completion.', NULL, NULL),
(458, 'course_gift_notification', 'Course gift notification', NULL, NULL),
(459, 'notify_users_after_course_gift', 'Notify users after course gift', NULL, NULL),
(460, 'configure_for_payer', 'Configure for payer', NULL, NULL),
(461, 'configure_for_receiver', 'Configure for receiver', NULL, NULL),
(462, 'custom_pages', 'Custom pages', NULL, NULL),
(463, 'add_a_new_page', 'Add a new page', NULL, NULL),
(464, 'page_title', 'Page title', NULL, NULL),
(465, 'button_title', 'Button title', NULL, NULL),
(466, 'button_position', 'Button position', NULL, NULL),
(467, 'actions', 'Actions', 'Actions', NULL),
(468, 'add_custom_page', 'Add custom page', NULL, NULL),
(469, 'add_your_new_page', 'Add your new page', NULL, NULL),
(470, 'page_information', 'Page information', NULL, NULL),
(471, 'enter_page_title', 'Enter page title', NULL, NULL),
(472, 'page_content', 'Page content', NULL, NULL),
(473, 'footer', 'Footer', NULL, NULL),
(474, 'header', 'Header', NULL, NULL),
(475, 'page_url', 'Page url', NULL, NULL),
(476, 'add_page', 'Add page', NULL, NULL),
(477, 'import_your_data', 'Import your data', NULL, NULL),
(478, 'choose_your_demo_file', 'Choose your demo file', NULL, NULL),
(479, 'import', 'Import', NULL, NULL),
(480, 'backup_your_website', 'Backup your website', NULL, NULL),
(481, 'backup_your_current_data', 'Backup your current data', NULL, NULL),
(482, 'keep_a_backup', 'Keep a backup', NULL, NULL),
(483, 'no_backup', 'No backup', NULL, NULL),
(484, 'contact_users', 'Contact users', NULL, NULL),
(485, 'name', 'Name', 'Name', NULL),
(486, 'addon_manager', 'Addon manager', NULL, NULL),
(487, 'buy_new_addon', 'Buy new addon', NULL, NULL),
(488, 'install_addon', 'Install addon', NULL, NULL),
(489, 'installed_addons', 'Installed addons', NULL, NULL),
(490, 'available_addons', 'Available addons', NULL, NULL),
(491, 'version', 'Version', NULL, NULL),
(492, 'status', 'Status', 'Status', NULL),
(493, 'basic_info', 'Basic info', 'Basic info', NULL),
(494, 'first_name', 'First name', 'First name', NULL),
(495, 'last_name', 'Last name', 'Last name', NULL),
(496, 'email', 'Email', 'Email', NULL),
(497, 'facebook_link', 'Facebook link', 'Facebook link', NULL),
(498, 'twitter_link', 'Twitter link', 'Twitter link', NULL),
(499, 'linkedin_link', 'Linkedin link', 'Linkedin link', NULL),
(500, 'a_short_title_about_yourself', 'A short title about yourself', 'A short title about yourself', NULL),
(501, 'skills', 'Skills', 'Skills', NULL),
(502, 'write_your_skill_and_click_the_enter_button', 'Write your skill and click the enter button', 'Write your skill and click the enter button', NULL),
(503, 'biography', 'Biography', 'Biography', NULL),
(504, 'photo', 'Photo', 'Photo', NULL),
(505, 'the_image_size_should_be_any_square_image', 'The image size should be any square image', 'The image size should be any square image', NULL),
(506, 'choose_file', 'Choose file', 'Choose file', NULL),
(507, 'update_profile', 'Update profile', 'Update profile', NULL),
(508, 'current_password', 'Current password', 'Current password', NULL),
(509, 'new_password', 'New password', 'New password', NULL),
(510, 'confirm_new_password', 'Confirm new password', 'Confirm new password', NULL),
(511, 'update_password', 'Update password', 'Update password', NULL),
(512, 'upcoming_courses', 'Upcoming courses', 'Upcoming courses', NULL),
(513, 'free_courses', 'Free courses', 'Free courses', NULL),
(514, 'paid_courses', 'Paid courses', 'Paid courses', NULL),
(515, 'course_list', 'Course list', 'Course list', NULL),
(516, 'all', 'All', 'All', NULL),
(517, 'active', 'Active', 'Active', NULL),
(518, 'pending', 'Pending', 'Pending', NULL),
(519, 'private', 'Private', 'Private', NULL),
(520, 'upcoming', 'Upcoming', 'Upcoming', NULL),
(521, 'instructor', 'Instructor', 'Instructor', NULL),
(522, 'price', 'Price', 'Price', NULL),
(523, 'free', 'Free', 'Free', NULL),
(524, 'paid', 'Paid', 'Paid', NULL),
(525, 'filter', 'Filter', 'Filter', NULL),
(526, 'title', 'Title', 'Title', NULL),
(527, 'lesson_and_section', 'Lesson and section', 'Lesson and section', NULL),
(528, 'enrolled_student', 'Enrolled student', 'Enrolled student', NULL),
(529, 'add_addon', 'Add addon', NULL, NULL),
(530, 'install_an_addon', 'Install an addon', NULL, NULL),
(531, 'back_to_addon_list', 'Back to addon list', NULL, NULL),
(532, 'upload_addon_file', 'Upload addon file', NULL, NULL),
(533, 'zip_file', 'Zip file', NULL, NULL),
(534, 'back', 'Back', 'Back', NULL),
(535, 'addon_installed_successfully', 'Addon installed successfully', NULL, NULL),
(536, 'certificate_settings', 'Certificate settings', 'Certificate settings', NULL),
(537, 'addon_update', 'Addon update', NULL, NULL),
(538, 'deactive', 'Deactive', NULL, NULL),
(539, 'delete', 'Delete', 'Delete', NULL),
(540, 'about_this_addon', 'About this addon', NULL, NULL),
(541, 'certificate_template_text', 'Certificate template text', NULL, NULL),
(542, 'and', 'And', NULL, NULL),
(543, 'represents_student_name_and_course_title_on_the_certificate', 'Represents student name and course title on the certificate', NULL, NULL),
(544, 'certificate_template', 'Certificate template', NULL, NULL),
(545, 'make_sure_that_template_size_is_less_than', 'Make sure that template size is less than', NULL, NULL),
(546, 'certificate_text_position', 'Certificate text position', NULL, NULL),
(547, 'you_must_update_the_text_position_after_updating_the_certificate_template_text', 'You must update the text position after updating the certificate template text', NULL, NULL),
(548, 'edit_text_position', 'Edit text position', NULL, NULL),
(549, 'certificates_text_position', 'Certificates text position', NULL, NULL),
(550, 'attention', 'Attention', NULL, NULL),
(551, 'you_can_change_the_text_positions_by_drag_and_drop', 'You can change the text positions by drag and drop', NULL, NULL),
(552, 'drag_out_of_the_certificate_layout_to_keep_an_object_hidden', 'Drag out of the certificate layout to keep an object hidden', NULL, NULL),
(553, 'after_changing_your_text_positions,_click_the_save_button_to_save_the_parts', 'After changing your text positions, click the save button to save the parts', NULL, NULL),
(554, 'please_wait', 'Please wait', 'Please wait', NULL),
(555, 'offline_payment', 'Offline payment', 'Offline payment', NULL),
(556, 'pending_request', 'Pending request', 'Pending request', NULL),
(557, 'accepted_request', 'Accepted request', 'Accepted request', NULL),
(558, 'suspended_request', 'Suspended request', 'Suspended request', NULL),
(559, 'offline_payment_settings', 'Offline payment settings', 'Offline payment settings', NULL),
(560, 'enrolled_course', 'Enrolled course', 'Enrolled course', NULL),
(561, 'total_amount', 'Total amount', 'Total amount', NULL),
(562, 'enrolment_date', 'Enrolment date', 'Enrolment date', NULL),
(563, 'add_admin', 'Add admin', 'Add admin', NULL),
(564, 'root_admin', 'Root admin', 'Root admin', NULL),
(565, 'private_messaging', 'Private messaging', 'Private messaging', NULL),
(566, 'private_message', 'Private message', 'Private message', NULL),
(567, 'new_message', 'New message', 'New message', NULL),
(568, 'choose_an_option_from_the_left_side', 'Choose an option from the left side', 'Choose an option from the left side', NULL),
(569, 'theme_settings', 'Theme settings', NULL, NULL),
(570, 'buy_new_theme', 'Buy new theme', NULL, NULL),
(571, 'upload_your_theme_file', 'Upload your theme file', NULL, NULL),
(572, 'installed_themes', 'Installed themes', NULL, NULL),
(573, 'add_new_themes', 'Add new themes', NULL, NULL),
(574, 'active_theme', 'Active theme', NULL, NULL),
(575, 'theme_successfully_activated', 'Theme successfully activated', NULL, NULL),
(576, 'you_do_not_have_right_to_access_this_theme', 'You do not have right to access this theme', NULL, NULL),
(577, 'frontend_settings', 'Frontend settings', NULL, NULL),
(578, 'home_layout', 'Home layout', NULL, NULL),
(579, 'home_page_settings', 'Home page settings', NULL, NULL),
(580, 'website_faqs', 'Website faqs', NULL, NULL),
(581, 'contact_information', 'Contact information', NULL, NULL),
(582, 'recaptcha', 'Recaptcha', NULL, NULL),
(583, 'logo_&_images', 'Logo & images', NULL, NULL),
(584, 'custom_codes', 'Custom codes', NULL, NULL),
(585, 'frontend_website_settings', 'Frontend website settings', NULL, NULL),
(586, 'banner_title', 'Banner title', NULL, NULL),
(587, 'banner_sub_title', 'Banner sub title', NULL, NULL),
(588, 'cookie_status', 'Cookie status', NULL, NULL),
(589, 'inactive', 'Inactive', NULL, NULL),
(590, 'cookie_note', 'Cookie note', NULL, NULL),
(591, 'facebook', 'Facebook', 'Facebook', NULL),
(592, 'twitter', 'Twitter', 'Twitter', NULL),
(593, 'linkedin', 'Linkedin', 'Linkedin', NULL),
(594, 'update_settings', 'Update settings', 'Update settings', NULL),
(595, 'activated', 'Activated', NULL, NULL),
(596, 'motivational_speech', 'Motivational speech', NULL, NULL),
(597, 'image', 'Image', 'Image', NULL),
(598, 'upload_image', 'Upload image', NULL, NULL),
(599, 'home_page_section', 'Home page section', NULL, NULL),
(600, 'upcoming_course_section', 'Upcoming course section', NULL, NULL),
(601, 'top_course_section', 'Top course section', NULL, NULL),
(602, 'latest_course_section', 'Latest course section', NULL, NULL),
(603, 'top_category_section', 'Top category section', NULL, NULL),
(604, 'top_instructor_section', 'Top instructor section', NULL, NULL),
(605, 'faq_section', 'Faq section', NULL, NULL),
(606, 'motivational_speech_section', 'Motivational speech section', NULL, NULL),
(607, 'blog_visibility_on_the_home_page', 'Blog visibility on the home page', NULL, NULL),
(608, 'promotional_section', 'Promotional section', NULL, NULL),
(609, 'question', 'Question', NULL, NULL),
(610, 'contact_email', 'Contact email', NULL, NULL),
(611, 'phone_number', 'Phone number', NULL, NULL),
(612, 'office_hours', 'Office hours', NULL, NULL),
(613, 'recaptcha_settings', 'Recaptcha settings', NULL, NULL),
(614, 'recaptcha_status', 'Recaptcha status', NULL, NULL),
(615, 'recaptcha_sitekey', 'Recaptcha sitekey', NULL, NULL),
(616, 'recaptcha_secretkey', 'Recaptcha secretkey', NULL, NULL),
(617, 'update_recaptcha_settings', 'Update recaptcha settings', NULL, NULL),
(618, 'update_banner_image', 'Update banner image', NULL, NULL),
(619, 'upload_banner_image', 'Upload banner image', NULL, NULL),
(620, 'update_light_logo', 'Update light logo', NULL, NULL),
(621, 'upload_light_logo', 'Upload light logo', NULL, NULL),
(622, 'update_dark_logo', 'Update dark logo', NULL, NULL),
(623, 'upload_dark_logo', 'Upload dark logo', NULL, NULL),
(624, 'update_small_logo', 'Update small logo', NULL, NULL),
(625, 'upload_small_logo', 'Upload small logo', NULL, NULL),
(626, 'update_favicon', 'Update favicon', NULL, NULL),
(627, 'upload_favicon', 'Upload favicon', NULL, NULL),
(628, 'you_can_modify_your_theme_style_and_add_external_embed_code_from_here', 'You can modify your theme style and add external embed code from here', NULL, NULL),
(629, 'enter_your_custom_css', 'Enter your custom css', NULL, NULL),
(630, 'only_css_code', 'Only css code', NULL, NULL),
(631, 'these_codes_are_applicable_for_all_pages_of_the_frontend_site', 'These codes are applicable for all pages of the frontend site', NULL, NULL),
(632, 'enter_your_embed_or_widget_code', 'Enter your embed or widget code', NULL, NULL),
(633, 'enter_your_embed_or_widget_code_here', 'Enter your embed or widget code here', NULL, NULL),
(634, 'manage_your_drip_content_settings', 'Manage your drip content settings', NULL, NULL),
(635, 'lesson_completion_role', 'Lesson completion role', NULL, NULL),
(636, 'video_percentage_wise', 'Video percentage wise', NULL, NULL),
(637, 'video_duration_wise', 'Video duration wise', NULL, NULL),
(638, 'minimum_duration_to_watch', 'Minimum duration to watch', NULL, NULL),
(639, 'minimum_percentage_to_watch', 'Minimum percentage to watch', NULL, NULL),
(640, 'message_for_locked_lesson', 'Message for locked lesson', NULL, NULL),
(641, 'the_auto_checkmark_is_only_applicable_for_video_lessons', 'The auto checkmark is only applicable for video lessons', NULL, NULL),
(642, 'learn_more', 'Learn more', NULL, NULL),
(643, 'access_key', 'Access key', NULL, NULL),
(644, 'secret_key', 'Secret key', 'Secret key', NULL),
(645, 'bucket_name', 'Bucket name', NULL, NULL),
(646, 'region_name', 'Region name', NULL, NULL),
(647, 'setup_payment_informations', 'Setup payment informations', NULL, NULL),
(648, 'system_currency_settings', 'System currency settings', NULL, NULL),
(649, 'system_currency', 'System currency', NULL, NULL),
(650, 'select_system_currency', 'Select system currency', NULL, NULL),
(651, 'currency_position', 'Currency position', NULL, NULL),
(652, 'left', 'Left', NULL, NULL),
(653, 'right', 'Right', NULL, NULL),
(654, 'left_with_a_space', 'Left with a space', NULL, NULL),
(655, 'right_with_a_space', 'Right with a space', NULL, NULL),
(656, 'update_system_currency', 'Update system currency', NULL, NULL),
(657, 'want_to_keep_test_mode_enabled', 'Want to keep test mode enabled', NULL, NULL),
(658, 'select_currency', 'Select currency', NULL, NULL),
(659, 'sandbox_client_id', 'Sandbox client id', 'Sandbox client id', NULL),
(660, 'sandbox_secret_key', 'Sandbox secret key', 'Sandbox secret key', NULL),
(661, 'production_client_id', 'Production client id', 'Production client id', NULL),
(662, 'production_secret_key', 'Production secret key', 'Production secret key', NULL),
(663, 'public_key', 'Public key', 'Public key', NULL),
(664, 'public_live_key', 'Public live key', 'Public live key', NULL),
(665, 'secret_live_key', 'Secret live key', 'Secret live key', NULL),
(666, 'key_id', 'Key id', 'Key id', NULL),
(667, 'theme_color', 'Theme color', 'Theme color', NULL),
(668, 'api_key', 'Api key', 'Api key', NULL),
(669, 'other_parameter', 'Other parameter', 'Other parameter', NULL),
(670, 'pos_id', 'Pos id', 'Pos id', NULL),
(671, 'second_key', 'Second key', 'Second key', NULL),
(672, 'client_id', 'Client id', 'Client id', NULL),
(673, 'client_secret', 'Client secret', 'Client secret', NULL),
(674, 'store_id', 'Store id', 'Store id', NULL),
(675, 'store_password', 'Store password', 'Store password', NULL),
(676, 'skrill_merchant_email', 'Skrill merchant email', 'Skrill merchant email', NULL),
(677, 'secret_passphrase', 'Secret passphrase', 'Secret passphrase', NULL),
(678, 'shared_key', 'Shared key', 'Shared key', NULL),
(679, 'app_key', 'App key', 'App key', NULL),
(680, 'app_secret', 'App secret', 'App secret', NULL),
(681, 'username', 'Username', 'Username', NULL),
(682, 'merchant_id', 'Merchant id', 'Merchant id', NULL),
(683, 'merchant_password', 'Merchant password', 'Merchant password', NULL),
(684, 'signature_key', 'Signature key', 'Signature key', NULL),
(685, 'api_secret', 'Api secret', 'Api secret', NULL),
(686, 'ensure_that_the_system_currency_and_all_active_payment_gateway_currencies_are_same', 'Ensure that the system currency and all active payment gateway currencies are same', NULL, NULL),
(687, 'multi_language_settings', 'Multi language settings', NULL, NULL),
(688, 'manage_language', 'Manage language', NULL, NULL),
(689, 'language_list', 'Language list', NULL, NULL),
(690, 'add_language', 'Add language', NULL, NULL),
(691, 'import_language', 'Import language', NULL, NULL),
(692, 'language', 'Language', 'Language', NULL),
(693, 'direction', 'Direction', NULL, NULL),
(694, 'option', 'Option', 'Option', NULL),
(695, 'ltr', 'Ltr', NULL, NULL),
(696, 'rtl', 'Rtl', NULL, NULL),
(697, 'edit_phrase', 'Edit phrase', NULL, NULL),
(698, 'export', 'Export', NULL, NULL),
(699, 'delete_language', 'Delete language', NULL, NULL),
(700, 'add_new_phrase', 'Add new phrase', NULL, NULL),
(701, 'add_new_language', 'Add new language', NULL, NULL),
(702, 'no_special_character_or_space_is_allowed', 'No special character or space is allowed', NULL, NULL),
(703, 'valid_examples', 'Valid examples', NULL, NULL),
(704, 'choose_your_json_file', 'Choose your json file', NULL, NULL),
(705, 'phrase_updated', 'Phrase updated', NULL, NULL),
(706, 'course_eligibility_notification', 'Course eligibility notification', NULL, NULL),
(707, 'stay_up_to_date_on_course_certificate_eligibility.', 'Stay up to date on course certificate eligibility.', NULL, NULL),
(708, 'offline_payment_suspended_mail', 'Offline payment suspended mail', NULL, NULL),
(709, 'if_students_provides_fake_information,_notify_them_of_the_suspension', 'If students provides fake information, notify them of the suspension', NULL, NULL),
(710, 'social_login_configuration', 'Social login configuration', NULL, NULL),
(711, 'issue', 'Issue', NULL, NULL),
(712, 'you_must_use_an_ssl_supported_server_to_use_the_facebook_login_feature', 'You must use an ssl supported server to use the facebook login feature', NULL, NULL),
(713, 'facebook_login', 'Facebook login', NULL, NULL),
(714, 'facebook_app_creation_instruction', 'Facebook app creation instruction', NULL, NULL),
(715, 'facebook_app_id', 'Facebook app id', NULL, NULL),
(716, 'facebook_app_secret', 'Facebook app secret', NULL, NULL),
(717, 'enter_your_first_name', 'Enter your first name', NULL, NULL),
(718, 'enter_your_last_name', 'Enter your last name', NULL, NULL),
(719, 'apply_to_become_an_instructor', 'Apply to become an instructor', NULL, NULL),
(720, 'enter_your_phone_number', 'Enter your phone number', NULL, NULL),
(721, 'document', 'Document', 'Document', NULL),
(722, 'provide_some_documents_about_your_qualifications', 'Provide some documents about your qualifications', NULL, NULL),
(723, 'already_you_have_an_account?', 'Already you have an account?', NULL, NULL),
(724, 'instructor_add', 'Instructor add', 'Instructor add', NULL),
(725, 'instructor_add_form', 'Instructor add form', 'Instructor add form', NULL),
(726, 'login_credentials', 'Login credentials', 'Login credentials', NULL),
(727, 'social_information', 'Social information', 'Social information', NULL),
(728, 'payment_info', 'Payment info', 'Payment info', NULL),
(729, 'user_image', 'User image', 'User image', NULL),
(730, 'choose_user_image', 'Choose user image', 'Choose user image', NULL),
(731, 'paypal', 'Paypal', 'Paypal', NULL),
(732, 'required_for_instructor', 'Required for instructor', 'Required for instructor', NULL),
(733, 'stripe', 'Stripe', 'Stripe', NULL),
(734, 'razorpay', 'Razorpay', 'Razorpay', NULL),
(735, 'xendit', 'Xendit', 'Xendit', NULL),
(736, 'payu', 'Payu', 'Payu', NULL),
(737, 'pagseguro', 'Pagseguro', 'Pagseguro', NULL),
(738, 'ssl_commerz', 'Ssl commerz', 'Ssl commerz', NULL),
(739, 'skrill', 'Skrill', 'Skrill', NULL),
(740, 'doku', 'Doku', 'Doku', NULL),
(741, 'bkash', 'Bkash', 'Bkash', NULL),
(742, 'cashfree', 'Cashfree', 'Cashfree', NULL),
(743, 'maxicash', 'Maxicash', 'Maxicash', NULL),
(744, 'aamarpay', 'Aamarpay', 'Aamarpay', NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `arabic`, `awdwa`) VALUES
(745, 'flutterwave', 'Flutterwave', 'Flutterwave', NULL),
(746, 'tazapay', 'Tazapay', 'Tazapay', NULL),
(747, 'user_added_successfully', 'User added successfully', 'User added successfully', NULL),
(748, 'add_instructor', 'Add instructor', 'Add instructor', NULL),
(749, 'enrolled_courses', 'Enrolled courses', 'Enrolled courses', NULL),
(750, 'view_courses', 'View courses', 'View courses', NULL),
(751, 'edit', 'Edit', 'Edit', NULL),
(752, 'public_instructor_settings', 'Public instructor settings', 'Public instructor settings', NULL),
(753, 'allow_public_instructor', 'Allow public instructor', 'Allow public instructor', NULL),
(754, 'instructor_application_note', 'Instructor application note', 'Instructor application note', NULL),
(755, 'instructor_commission_settings', 'Instructor commission settings', 'Instructor commission settings', NULL),
(756, 'instructor_revenue_percentage', 'Instructor revenue percentage', 'Instructor revenue percentage', NULL),
(757, 'admin_revenue_percentage', 'Admin revenue percentage', 'Admin revenue percentage', NULL),
(758, 'instructor_application', 'Instructor application', 'Instructor application', NULL),
(759, 'instructor_applications', 'Instructor applications', 'Instructor applications', NULL),
(760, 'list_of_applications', 'List of applications', 'List of applications', NULL),
(761, 'pending_applications', 'Pending applications', 'Pending applications', NULL),
(762, 'approved_applications', 'Approved applications', 'Approved applications', NULL),
(763, 'details', 'Details', 'Details', NULL),
(764, 'invalid_login_credentials', 'Invalid login credentials', NULL, NULL),
(765, 'my_course', 'My course', 'My course', NULL),
(766, 'you_have_no_items_in_your_wishlist!', 'You have no items in your wishlist!', 'You have no items in your wishlist!', NULL),
(767, 'go_to_wishlist', 'Go to wishlist', 'Go to wishlist', NULL),
(768, 'instructor_dashboard', 'Instructor dashboard', NULL, NULL),
(769, 'my_courses', 'My courses', 'My courses', NULL),
(770, 'my_wishlist', 'My wishlist', 'My wishlist', NULL),
(771, 'my_messages', 'My messages', 'My messages', NULL),
(772, 'user_profile', 'User profile', 'User profile', NULL),
(773, 'wishlist', 'Wishlist', 'Wishlist', NULL),
(774, 'messages', 'Messages', 'Messages', NULL),
(775, 'payout_settings', 'Payout settings', NULL, NULL),
(776, 'profile', 'Profile', 'Profile', NULL),
(777, 'account', 'Account', 'Account', NULL),
(778, 'course_manager', 'Course manager', 'Course manager', NULL),
(779, 'sales_report', 'Sales report', NULL, NULL),
(780, 'payout_report', 'Payout report', NULL, NULL),
(781, 'number_of_courses', 'Number of courses', NULL, NULL),
(782, 'pending_balance', 'Pending balance', NULL, NULL),
(783, 'requested_withdrawal_amount', 'Requested withdrawal amount', NULL, NULL),
(784, 'request_a_new_withdrawal', 'Request a new withdrawal', NULL, NULL),
(785, 'pending_amount', 'Pending amount', NULL, NULL),
(786, 'total_payout_amount', 'Total payout amount', NULL, NULL),
(787, 'payout_amount', 'Payout amount', 'Payout amount', NULL),
(788, 'payment_type', 'Payment type', 'Payment type', NULL),
(789, 'date_processed', 'Date processed', NULL, NULL),
(790, 'course_name', 'Course name', NULL, NULL),
(791, 'draft_courses', 'Draft courses', NULL, NULL),
(792, 'draft', 'Draft', NULL, NULL),
(793, 'no_data_found', 'No data found', 'No data found', NULL),
(794, 'select_a_user', 'Select a user', 'Select a user', NULL),
(795, 'write_your_message', 'Write your message', 'Write your message', NULL),
(796, 'send', 'Send', 'Send', NULL),
(797, 'your_backup_file_has_been_stored_successfully', 'Your backup file has been stored successfully', NULL, NULL),
(798, 'backup_files_deleted_successfully', 'Backup files deleted successfully', NULL, NULL),
(799, 'your_servers_file_upload_limit_is_1024mb', 'Your servers file upload limit is 1024mb', 'Your servers file upload limit is 1024mb', NULL),
(800, 'enter_your_valid_purchase_code', 'Enter your valid purchase code', NULL, NULL),
(801, 'enrol_histories', 'Enrol histories', 'Enrol histories', NULL),
(802, 'student', 'Student', 'Student', NULL),
(803, 'add_new_coupon', 'Add new coupon', 'Add new coupon', NULL),
(804, 'coupon_code', 'Coupon code', 'Coupon code', NULL),
(805, 'discount_percentage', 'Discount percentage', 'Discount percentage', NULL),
(806, 'validity_till', 'Validity till', 'Validity till', NULL),
(807, 'add_coupons', 'Add coupons', 'Add coupons', NULL),
(808, 'back_to_coupons', 'Back to coupons', 'Back to coupons', NULL),
(809, 'coupon_add_form', 'Coupon add form', 'Coupon add form', NULL),
(810, 'generate_a_random_coupon_code', 'Generate a random coupon code', 'Generate a random coupon code', NULL),
(811, 'generate_random', 'Generate random', 'Generate random', NULL),
(812, 'expiry_date', 'Expiry date', 'Expiry date', NULL),
(813, 'newsletters', 'Newsletters', 'Newsletters', NULL),
(814, 'newsletter_template', 'Newsletter template', 'Newsletter template', NULL),
(815, 'total_pending', 'Total pending', 'Total pending', NULL),
(816, 'waiting_to_be_sent', 'Waiting to be sent', 'Waiting to be sent', NULL),
(817, 'total_success', 'Total success', 'Total success', NULL),
(818, 'successfully_sent', 'Successfully sent', 'Successfully sent', NULL),
(819, 'total_faild', 'Total faild', 'Total faild', NULL),
(820, 'waiting_for_the_next_cue', 'Waiting for the next cue', 'Waiting for the next cue', NULL),
(821, 'unable_to_send', 'Unable to send', 'Unable to send', NULL),
(822, '10_attempts_failed,_click_here_to_send_email_manually', '10 attempts failed, click here to send email manually', '10 attempts failed, click here to send email manually', NULL),
(823, 'create_cronjob_file', 'Create cronjob file', 'Create cronjob file', NULL),
(824, 'subscriber', 'Subscriber', NULL, NULL),
(825, 'user_status', 'User status', NULL, NULL),
(826, 'remove_cronjob_file', 'Remove cronjob file', NULL, NULL),
(827, 'all_category', 'All category', 'All category', NULL),
(828, 'show_more', 'Show more', 'Show more', NULL),
(829, 'show_less', 'Show less', 'Show less', NULL),
(830, 'ratings', 'Ratings', 'Ratings', NULL),
(831, 'list_view', 'List view', 'List view', NULL),
(832, 'grid_view', 'Grid view', 'Grid view', NULL),
(833, 'reset', 'Reset', 'Reset', NULL),
(834, 'showing', 'Showing', 'Showing', NULL),
(835, 'of', 'Of', 'Of', NULL),
(836, 'results', 'Results', 'Results', NULL),
(837, 'newly_published', 'Newly published', 'Newly published', NULL),
(838, 'highest_rating', 'Highest rating', 'Highest rating', NULL),
(839, 'lowest_price', 'Lowest price', 'Lowest price', NULL),
(840, 'highest_price', 'Highest price', 'Highest price', NULL),
(841, 'discounted', 'Discounted', 'Discounted', NULL),
(842, 'course_not_found', 'Course not found', NULL, NULL),
(843, 'sorry,_try_using_more_similar_words_in_your_search.', 'Sorry, try using more similar words in your search.', NULL, NULL),
(844, 'connect_with_us_to_experience_seamless_communication._we_value_open_dialogue_and_are_eager_to_engage_with_you._whether_you_have_questions,_ideas,_or_feedback,_we_are_here_to_listen_and_respond.', 'Connect with us to experience seamless communication. we value open dialogue and are eager to engage with you. whether you have questions, ideas, or feedback, we are here to listen and respond.', NULL, NULL),
(845, 'get_in_touch', 'Get in touch', NULL, NULL),
(846, 'our_address', 'Our address', NULL, NULL),
(847, 'email_address', 'Email address', NULL, NULL),
(848, 'i_agree_that_my_submitted_data_is_being_collected_and_stored.', 'I agree that my submitted data is being collected and stored.', NULL, NULL),
(849, 'latest_from_our_blog', 'Latest from our blog', NULL, NULL),
(850, 'exploring_the_cutting-edge_insights_and_updates_on_our_blog', 'Exploring the cutting-edge insights and updates on our blog', NULL, NULL),
(851, 'see_all', 'See all', NULL, NULL),
(852, 'add_new_category', 'Add new category', 'Add new category', NULL),
(853, 'add_category', 'Add category', 'Add category', NULL),
(854, 'category_add_form', 'Category add form', 'Category add form', NULL),
(855, 'category_code', 'Category code', 'Category code', NULL),
(856, 'category_title', 'Category title', 'Category title', NULL),
(857, 'parent', 'Parent', 'Parent', NULL),
(858, 'none', 'None', 'None', NULL),
(859, 'select_none_to_create_a_parent_category', 'Select none to create a parent category', 'Select none to create a parent category', NULL),
(860, 'icon_picker', 'Icon picker', 'Icon picker', NULL),
(861, 'sub_category_thumbnail', 'Sub category thumbnail', 'Sub category thumbnail', NULL),
(862, 'category_thumbnail', 'Category thumbnail', 'Category thumbnail', NULL),
(863, 'choose_thumbnail', 'Choose thumbnail', 'Choose thumbnail', NULL),
(864, 'data_added_successfully', 'Data added successfully', 'Data added successfully', NULL),
(865, 'sub_categories', 'Sub categories', 'Sub categories', NULL),
(866, 'language_added_successfully', 'Language added successfully', NULL, NULL),
(867, 'edit_category', 'Edit category', 'Edit category', NULL),
(868, 'update_category', 'Update category', 'Update category', NULL),
(869, 'update_category_form', 'Update category form', 'Update category form', NULL),
(870, 'user', 'User', 'User', NULL),
(871, 'course', 'Course', 'Course', NULL),
(872, 'paid_amount', 'Paid amount', 'Paid amount', NULL),
(873, 'payment_method', 'Payment method', 'Payment method', NULL),
(874, 'purchased_date', 'Purchased date', 'Purchased date', NULL),
(875, 'course_has_been_added_successfully', 'Course has been added successfully', 'Course has been added successfully', NULL),
(876, 'edit_course', 'Edit course', 'Edit course', NULL),
(877, 'view_on_frontend', 'View on frontend', 'View on frontend', NULL),
(878, 'curriculum', 'Curriculum', 'Curriculum', NULL),
(879, 'academic_progress', 'Academic progress', 'Academic progress', NULL),
(880, 'bbb_live_class', 'Bbb live class', 'Bbb live class', NULL),
(881, 'add_new_section', 'Add new section', 'Add new section', NULL),
(882, 'add_section', 'Add section', 'Add section', NULL),
(883, 'meeting_id', 'Meeting id', 'Meeting id', NULL),
(884, 'moderator_password', 'Moderator password', 'Moderator password', NULL),
(885, 'viewer_password', 'Viewer password', 'Viewer password', NULL),
(886, 'instructions_for_students', 'Instructions for students', 'Instructions for students', NULL),
(887, 'attention!', 'Attention!', 'Attention!', NULL),
(888, 'give_some_instructions_to_keep_your_students_informed_about_the_meeting', 'Give some instructions to keep your students informed about the meeting', 'Give some instructions to keep your students informed about the meeting', NULL),
(889, 'save_meeting_info', 'Save meeting info', 'Save meeting info', NULL),
(890, 'start_meeting', 'Start meeting', 'Start meeting', NULL),
(891, 'meeting_id_and_password_can_not_be_empty', 'Meeting id and password can not be empty', 'Meeting id and password can not be empty', NULL),
(892, 'moderator_and_viewer_password_can_not_be_same', 'Moderator and viewer password can not be same', 'Moderator and viewer password can not be same', NULL),
(893, 'course_type', 'Course type', 'Course type', NULL),
(894, 'general', 'General', 'General', NULL),
(895, 'the_course_type_can_not_be_editable', 'The course type can not be editable', 'The course type can not be editable', NULL),
(896, 'instructor_of_this_course', 'Instructor of this course', 'Instructor of this course', NULL),
(897, 'updated_as_a', 'Updated as a', 'Updated as a', NULL),
(898, 'months', 'Months', 'Months', NULL),
(899, 'mark_as_pending', 'Mark as pending', 'Mark as pending', NULL),
(900, 'section_and_lesson', 'Section and lesson', 'Section and lesson', NULL),
(901, 'edit_this_course', 'Edit this course', 'Edit this course', NULL),
(902, 'duplicate_this_course', 'Duplicate this course', 'Duplicate this course', NULL),
(903, 'view_course_on_frontend', 'View course on frontend', 'View course on frontend', NULL),
(904, 'go_to_course_playing_page', 'Go to course playing page', 'Go to course playing page', NULL),
(905, 'section', 'Section', 'Section', NULL),
(906, 'lesson', 'Lesson', 'Lesson', NULL),
(907, 'hours', 'Hours', 'Hours', NULL),
(908, 'reviews', 'Reviews', 'Reviews', NULL),
(909, 'compare', 'Compare', 'Compare', NULL),
(910, 'last_updated', 'Last updated', 'Last updated', NULL),
(911, 'lessons', 'Lessons', 'Lessons', NULL),
(912, 'enroll_now', 'Enroll now', 'Enroll now', NULL),
(913, 'admin_add', 'Admin add', 'Admin add', NULL),
(914, 'back_to_admins', 'Back to admins', 'Back to admins', NULL),
(915, 'admin_add_form', 'Admin add form', 'Admin add form', NULL),
(916, 'subject', 'Subject', 'Subject', NULL),
(917, 'newsletter_added_successfully', 'Newsletter added successfully', 'Newsletter added successfully', NULL),
(918, 'edit_newsletter_template', 'Edit newsletter template', 'Edit newsletter template', NULL),
(919, 'send_newsletter', 'Send newsletter', 'Send newsletter', NULL),
(920, 'newsletter_history', NULL, 'Newsletter history', NULL),
(921, 'histories', NULL, 'Histories', NULL),
(922, 'send_to', 'Send to', 'Send to', NULL),
(923, 'selected_user', 'Selected user', 'Selected user', NULL),
(924, 'all_users', 'All users', 'All users', NULL),
(925, 'all_student', 'All student', 'All student', NULL),
(926, 'all_instructor', 'All instructor', 'All instructor', NULL),
(927, 'newsletter_subscriber', 'Newsletter subscriber', 'Newsletter subscriber', NULL),
(928, 'all_subscriber', 'All subscriber', 'All subscriber', NULL),
(929, 'registered_user', 'Registered user', 'Registered user', NULL),
(930, 'non_registered_user', 'Non registered user', 'Non registered user', NULL),
(931, 'select_your_users', 'Select your users', 'Select your users', NULL),
(932, 'users_are_assigned_to_newsletter_mailing_list', NULL, 'Users are assigned to newsletter mailing list', NULL),
(933, 'failed_to_send_mail', NULL, 'Failed to send mail', NULL),
(934, 'successfully_enabled', 'Successfully enabled', NULL, NULL),
(935, 'successfully_disabled', 'Successfully disabled', NULL, NULL),
(936, 'accepted_payment_request', 'Accepted payment request', NULL, NULL),
(937, 'offline_payments', 'Offline payments', NULL, NULL),
(938, 'purchased_item', 'Purchased item', NULL, NULL),
(939, 'payment_document', 'Payment document', NULL, NULL),
(940, 'enrolling_the_student_and_sending_mail', 'Enrolling the student and sending mail', NULL, NULL),
(941, 'write_new_messages', 'Write new messages', 'Write new messages', NULL),
(942, 'recipient', 'Recipient', 'Recipient', NULL),
(943, 'type_your_message', 'Type your message', 'Type your message', NULL),
(944, 'sent_message', 'Sent message', 'Sent message', NULL),
(945, 'message_sent', 'Message sent', 'Message sent', NULL),
(946, 'please_enter_your_messsage', 'Please enter your messsage', 'Please enter your messsage', NULL),
(947, 'user_update_successfully', 'User update successfully', 'User update successfully', NULL),
(948, 'assign_permission', 'Assign permission', 'Assign permission', NULL),
(949, 'admin_edit', NULL, 'Admin edit', NULL),
(950, 'admin_edit_form', NULL, 'Admin edit form', NULL),
(951, 'short_title', 'Short title', 'Short title', NULL),
(952, 'assign_permission_for', 'Assign permission for', 'Assign permission for', NULL),
(953, 'note', 'Note', 'Note', NULL),
(954, 'you_can_toggle_the_switch_for_enabling_or_disabling_a_feature_to_access', 'You can toggle the switch for enabling or disabling a feature to access', 'You can toggle the switch for enabling or disabling a feature to access', NULL),
(955, 'feature', 'Feature', 'Feature', NULL),
(956, 'enrolment', 'Enrolment', 'Enrolment', NULL),
(957, 'revenue', 'Revenue', 'Revenue', NULL),
(958, 'messaging', 'Messaging', 'Messaging', NULL),
(959, 'addon', 'Addon', 'Addon', NULL),
(960, 'theme', 'Theme', 'Theme', NULL),
(961, 'coupon', 'Coupon', 'Coupon', NULL),
(962, 'permission_updated', 'Permission updated', 'Permission updated', NULL),
(963, 'course_enrolment', 'Course enrolment', 'Course enrolment', NULL),
(964, 'enrolment_form', 'Enrolment form', 'Enrolment form', NULL),
(965, 'course_to_enrol', 'Course to enrol', 'Course to enrol', NULL),
(966, 'select_a_course', 'Select a course', 'Select a course', NULL),
(967, 'student_has_been_enrolled', 'Student has been enrolled', 'Student has been enrolled', NULL),
(968, 'created_by', 'Created by', 'Created by', NULL),
(969, 'enrolled', 'Enrolled', 'Enrolled', NULL),
(970, 'overview', 'Overview', 'Overview', NULL),
(971, 'course_description', 'Course description', 'Course description', NULL),
(972, 'what_will_i_learn?', 'What will i learn?', 'What will i learn?', NULL),
(973, 'frequently_asked_question', 'Frequently asked question', 'Frequently asked question', NULL),
(974, 'view_profile', 'View profile', 'View profile', NULL),
(975, 'تيست', 'تيست', 'تيست', NULL),
(976, 'compare_this_course', 'Compare this course', 'Compare this course', NULL),
(977, 'lectures', 'Lectures', 'Lectures', NULL),
(978, 'skill_level', 'Skill level', 'Skill level', NULL),
(979, 'certificate', 'Certificate', 'Certificate', NULL),
(980, 'share_on_facebook', 'Share on facebook', 'Share on facebook', NULL),
(981, 'share_on_twitter', 'Share on twitter', 'Share on twitter', NULL),
(982, 'share_on_whatsapp', 'Share on whatsapp', 'Share on whatsapp', NULL),
(983, 'share_on_linkedin', 'Share on linkedin', 'Share on linkedin', NULL),
(984, 'related_courses', 'Related courses', 'Related courses', NULL),
(985, 'educator_profile', 'Educator profile', 'Educator profile', NULL),
(986, 'statistics', 'Statistics', 'Statistics', NULL),
(987, 'total_students', 'Total students', 'Total students', NULL),
(988, 'instructor_payouts', NULL, 'Instructor payouts', NULL),
(989, 'list_of_payouts', NULL, 'List of payouts', NULL),
(990, 'completed_payouts', NULL, 'Completed payouts', NULL),
(991, 'pending_payouts', NULL, 'Pending payouts', NULL),
(992, 'payout_date', NULL, 'Payout date', NULL),
(993, 'student_add', 'Student add', 'Student add', NULL),
(994, 'student_add_form', 'Student add form', 'Student add form', NULL),
(995, 'student_edit', 'Student edit', 'Student edit', NULL),
(996, 'student_edit_form', 'Student edit form', 'Student edit form', NULL),
(997, 'year', 'Year', 'Year', NULL),
(998, 'month', 'Month', 'Month', NULL),
(999, 'day', 'Day', 'Day', NULL),
(1000, 'hour', 'Hour', 'Hour', NULL),
(1001, 'minute', 'Minute', 'Minute', NULL),
(1002, 'second', 'Second', 'Second', NULL),
(1003, 'ago', 'Ago', 'Ago', NULL),
(1004, 'profile_photo', 'Profile photo', NULL, NULL),
(1005, 'update_your_profile_photo_and_personal_details', 'Update your profile photo and personal details', NULL, NULL),
(1006, 'upload_photo', 'Upload photo', NULL, NULL),
(1007, 'profile_info', 'Profile info', NULL, NULL),
(1008, 'short_title_about_yourself', 'Short title about yourself', NULL, NULL),
(1009, 'your_skills', 'Your skills', NULL, NULL),
(1010, 'add_your_twitter_link', 'Add your twitter link', NULL, NULL),
(1011, 'add_your_facebook_link', 'Add your facebook link', NULL, NULL),
(1012, 'add_your_linkedin_link', 'Add your linkedin link', NULL, NULL),
(1013, 'blogs', 'Blogs', NULL, NULL),
(1014, 'add_new_blog', 'Add new blog', NULL, NULL),
(1015, 'creator', 'Creator', NULL, NULL),
(1016, 'blog_page_title', 'Blog page title', NULL, NULL),
(1017, 'blog_page_subtitle', 'Blog page subtitle', NULL, NULL),
(1018, 'instructors_blog_permission', 'Instructors blog permission', NULL, NULL),
(1019, 'visible', 'Visible', NULL, NULL),
(1020, 'invisible', 'Invisible', NULL, NULL),
(1021, 'blog_page_banner', 'Blog page banner', NULL, NULL),
(1022, 'blog_categories', 'Blog categories', NULL, NULL),
(1023, 'add_a_new_category', 'Add a new category', NULL, NULL),
(1024, 'subtitle', 'Subtitle', NULL, NULL),
(1025, 'character', 'Character', NULL, NULL),
(1026, 'blog_category_added_successfully', 'Blog category added successfully', NULL, NULL),
(1027, 'add_blog', 'Add blog', NULL, NULL),
(1028, 'add_a_new_blog', 'Add a new blog', NULL, NULL),
(1029, 'enter_blog_title', 'Enter blog title', NULL, NULL),
(1030, 'keywords', 'Keywords', NULL, NULL),
(1031, 'click_the_enter_button_after_writing_your_keyword', 'Click the enter button after writing your keyword', NULL, NULL),
(1032, 'blog_banner', 'Blog banner', NULL, NULL),
(1033, 'choose_a_banner', 'Choose a banner', NULL, NULL),
(1034, 'blog_thumbnail', 'Blog thumbnail', NULL, NULL),
(1035, 'choose_a_thumbnail', 'Choose a thumbnail', NULL, NULL),
(1036, 'do_you_want_to_mark_it_as_popular', 'Do you want to mark it as popular', NULL, NULL),
(1037, 'mark_as_popular', 'Mark as popular', NULL, NULL),
(1038, 'blog_added_successfully', 'Blog added successfully', NULL, NULL),
(1039, 'deactivate', 'Deactivate', NULL, NULL),
(1040, 'visit_our_latest_blogs', 'Visit our latest blogs', NULL, NULL),
(1041, 'visit_our_valuable_articles_to_get_more_information.', 'Visit our valuable articles to get more information.', NULL, NULL),
(1042, 'instructors_pending_blog', 'Instructors pending blog', NULL, NULL),
(1043, 'blog_settings_updated_successfully', 'Blog settings updated successfully', NULL, NULL),
(1044, 'website_faqs_updated_successfully', 'Website faqs updated successfully', NULL, NULL),
(1045, 'frequently_asked_questions', 'Frequently asked questions', NULL, NULL),
(1046, 'have_something_to_know?', 'Have something to know?', NULL, NULL),
(1047, 'check_here_if_you_have_any_questions_about_us.', 'Check here if you have any questions about us.', NULL, NULL),
(1048, 'live_class', 'Live class', NULL, NULL),
(1049, 'live_class_is_not_scheduled_yet', 'Live class is not scheduled yet', NULL, NULL),
(1050, '', '', NULL, NULL),
(1051, 'date', 'Date', NULL, NULL),
(1052, 'progress', 'Progress', NULL, NULL),
(1053, 'provide_a_section_name', 'Provide a section name', NULL, NULL),
(1054, 'date_of_study_plan', 'Date of study plan', NULL, NULL),
(1055, 'optional', 'Optional', NULL, NULL),
(1056, 'restriction_of_study_plan', 'Restriction of study plan', NULL, NULL),
(1057, 'no_restriction', 'No restriction', NULL, NULL),
(1058, 'until_the_start_date,_keep_this_section_locked', 'Until the start date, keep this section locked', NULL, NULL),
(1059, 'keep_this_section_open_only_within_the_selected_date_range', 'Keep this section open only within the selected date range', NULL, NULL),
(1060, 'section_has_been_added_successfully', 'Section has been added successfully', NULL, NULL),
(1061, 'add_new_quiz', 'Add new quiz', NULL, NULL),
(1062, 'add_quiz', 'Add quiz', NULL, NULL),
(1063, 'sort_sections', 'Sort sections', NULL, NULL),
(1064, 'sort_lessons', 'Sort lessons', NULL, NULL),
(1065, 'sort_lesson', 'Sort lesson', NULL, NULL),
(1066, 'update_section', 'Update section', NULL, NULL),
(1067, 'edit_section', 'Edit section', NULL, NULL),
(1068, 'delete_section', 'Delete section', NULL, NULL),
(1069, 'quiz_title', 'Quiz title', NULL, NULL),
(1070, 'quiz_duration', 'Quiz duration', NULL, NULL),
(1071, 'if_you_want_to_disable_the_timer,_set_the_duration_to', 'If you want to disable the timer, set the duration to', NULL, NULL),
(1072, 'total_marks', 'Total marks', NULL, NULL),
(1073, 'pass_mark', 'Pass mark', NULL, NULL),
(1074, 'drip_content_rule_for_quiz', 'Drip content rule for quiz', NULL, NULL),
(1075, 'this_will_only_work_if_drip_content_is_enabled', 'This will only work if drip content is enabled', NULL, NULL),
(1076, 'students_can_start_the_next_lesson_by_submitting_the_quiz', 'Students can start the next lesson by submitting the quiz', NULL, NULL),
(1077, 'students_must_achieve_pass_mark_to_start_the_next_lesson', 'Students must achieve pass mark to start the next lesson', NULL, NULL),
(1078, 'number_of_quiz_retakes', 'Number of quiz retakes', NULL, NULL),
(1079, 'enter_0_if_you_want_to_disable_multiple_attempts', 'Enter 0 if you want to disable multiple attempts', NULL, NULL),
(1080, 'instruction', 'Instruction', NULL, NULL),
(1081, 'quiz_has_been_added_successfully', 'Quiz has been added successfully', NULL, NULL),
(1082, 'quiz_results', 'Quiz results', NULL, NULL),
(1083, 'manage_quiz_questions', 'Manage quiz questions', NULL, NULL),
(1084, 'quiz_questions', 'Quiz questions', NULL, NULL),
(1085, 'update_quiz_information', 'Update quiz information', NULL, NULL),
(1086, 'quiz', 'Quiz', NULL, NULL),
(1087, 'questions_of', 'Questions of', NULL, NULL),
(1088, 'update_sorting', 'Update sorting', NULL, NULL),
(1089, 'add_new_question', 'Add new question', NULL, NULL),
(1090, 'questions_have_been_sorted', 'Questions have been sorted', NULL, NULL),
(1091, 'write_your_question', 'Write your question', NULL, NULL),
(1092, 'question_type', 'Question type', NULL, NULL),
(1093, 'select_question_type', 'Select question type', NULL, NULL),
(1094, 'multiple_choice', 'Multiple choice', NULL, NULL),
(1095, 'single_choice', 'Single choice', NULL, NULL),
(1096, 'plain_text', 'Plain text', NULL, NULL),
(1097, 'fill_in_the_blank', 'Fill in the blank', NULL, NULL),
(1098, 'submit_quiz_question', 'Submit quiz question', NULL, NULL),
(1099, 'question_has_been_added', 'Question has been added', NULL, NULL),
(1100, 'number_of_options', 'Number of options', NULL, NULL),
(1101, 'option_', 'Option ', NULL, NULL),
(1102, 'update_quiz_question', 'Update quiz question', NULL, NULL),
(1103, 'email_duplication', 'Email duplication', NULL, NULL),
(1104, 'user_deleted_successfully', 'User deleted successfully', NULL, NULL),
(1105, 'quizzes', 'Quizzes', NULL, NULL),
(1106, 'successfully_enrolled', 'Successfully enrolled', NULL, NULL),
(1107, 'write_a_review', 'Write a review', NULL, NULL),
(1108, '1_start_rating', '1 start rating', NULL, NULL),
(1109, '2_start_rating', '2 start rating', NULL, NULL),
(1110, '3_start_rating', '3 start rating', NULL, NULL),
(1111, '4_start_rating', '4 start rating', NULL, NULL),
(1112, '5_start_rating', '5 start rating', NULL, NULL),
(1113, 'write_your_comment', 'Write your comment', NULL, NULL),
(1114, 'start_now', 'Start now', NULL, NULL),
(1115, 'course_content', 'Course content', NULL, NULL),
(1116, 'mark_as_complete', 'Mark as complete', NULL, NULL),
(1117, 'total_questions', 'Total questions', NULL, NULL),
(1118, 'quiz_time', 'Quiz time', NULL, NULL),
(1119, 'start_quiz', 'Start quiz', NULL, NULL),
(1120, 'summary', 'Summary', NULL, NULL),
(1121, 'notice', 'Notice', NULL, NULL),
(1122, 'you_have_completed', 'You have completed', NULL, NULL),
(1123, 'of_the_course', 'Of the course', NULL, NULL),
(1124, 'you_can_download_the_course_completion_certificate_after_completing_the_course', 'You can download the course completion certificate after completing the course', NULL, NULL),
(1125, 'quiz_submission_successfully', 'Quiz submission successfully', NULL, NULL),
(1126, 'completed', 'Completed', NULL, NULL),
(1127, 'uncheck', 'Uncheck', NULL, NULL),
(1128, 'obtained_marks', 'Obtained marks', NULL, NULL),
(1129, 'correct', 'Correct', NULL, NULL),
(1130, 'well_done', 'Well done', NULL, NULL),
(1131, 'you_are_now_eligible_to_download_the_course_completion_certificate', 'You are now eligible to download the course completion certificate', NULL, NULL),
(1132, 'get_certificate', 'Get certificate', NULL, NULL),
(1133, 'total_duration', 'Total duration', NULL, NULL),
(1134, 'total_lesson', 'Total lesson', NULL, NULL),
(1135, 'download', 'Download', NULL, NULL),
(1136, 'our_expert_instructor_', 'Our expert instructor ', NULL, NULL),
(1137, 'they_efficiently_serve_large_number_of_students_on_our_platform', 'They efficiently serve large number of students on our platform', NULL, NULL),
(1138, 'go_to_course_page', 'Go to course page', NULL, NULL),
(1139, 'author_profile', 'Author profile', NULL, NULL),
(1140, 'expiration_on', 'Expiration on', NULL, NULL),
(1141, 'total_participant_students', 'Total participant students', NULL, NULL),
(1142, 'participant_students', 'Participant students', NULL, NULL),
(1143, 'select_student', 'Select student', NULL, NULL),
(1144, 'select_a_student_to_view_the_answer_sheet', 'Select a student to view the answer sheet', NULL, NULL),
(1145, 'enrolled_from', 'Enrolled from', NULL, NULL),
(1146, 'last_seen_on', 'Last seen on', NULL, NULL),
(1147, 'completed_on', 'Completed on', NULL, NULL),
(1148, 'completed_lesson', 'Completed lesson', NULL, NULL),
(1149, 'out_of', 'Out of', NULL, NULL),
(1150, 'watched_duration', 'Watched duration', NULL, NULL),
(1151, 'not_started_yet', 'Not started yet', NULL, NULL),
(1152, 'not_completed_yet', 'Not completed yet', NULL, NULL),
(1153, 'select_lesson_type', 'Select lesson type', NULL, NULL),
(1154, 'video', 'Video', NULL, NULL),
(1155, 'secured', 'Secured', NULL, NULL),
(1156, 'video_file', 'Video file', NULL, NULL),
(1157, 'audio_file', 'Audio file', NULL, NULL),
(1158, 'video_url', 'Video url', NULL, NULL),
(1159, 'wasabi_storage_video', 'Wasabi storage video', NULL, NULL),
(1160, 'google_drive_video', 'Google drive video', NULL, NULL),
(1161, 'document_file', 'Document file', NULL, NULL),
(1162, 'text', 'Text', NULL, NULL),
(1163, 'image_file', 'Image file', NULL, NULL),
(1164, 'iframe_embed', 'Iframe embed', NULL, NULL),
(1165, 'next', 'Next', NULL, NULL),
(1166, 'please_select_a_course', 'Please select a course', NULL, NULL),
(1167, 'lesson_type', 'Lesson type', NULL, NULL),
(1168, 'change', 'Change', NULL, NULL),
(1169, 'this_video_will_be_shown_on_web_application', 'This video will be shown on web application', NULL, NULL),
(1170, 'analyzing_the_url', 'Analyzing the url', NULL, NULL),
(1171, 'invalid_url', 'Invalid url', NULL, NULL),
(1172, 'your_video_source_has_to_be_either_youtube_or_vimeo', 'Your video source has to be either youtube or vimeo', NULL, NULL),
(1173, 'duration', 'Duration', NULL, NULL),
(1174, 'lesson_provider', 'Lesson provider', NULL, NULL),
(1175, 'for_mobile_application', 'For mobile application', NULL, NULL),
(1176, 'only', 'Only', NULL, NULL),
(1177, 'type_video_is_acceptable_for_mobile_application', 'Type video is acceptable for mobile application', NULL, NULL),
(1178, 'do_you_want_to_keep_it_free_as_a_preview_lesson', 'Do you want to keep it free as a preview lesson', NULL, NULL),
(1179, 'mark_as_free_lesson', 'Mark as free lesson', NULL, NULL),
(1180, 'uploading', 'Uploading', NULL, NULL),
(1181, 'lesson_has_been_added_successfully', 'Lesson has been added successfully', NULL, NULL),
(1182, 'add_new_resource_file', 'Add new resource file', NULL, NULL),
(1183, 'resource_files', 'Resource files', NULL, NULL),
(1184, 'update_lesson', 'Update lesson', NULL, NULL),
(1185, 'list_of_sections', 'List of sections', NULL, NULL),
(1186, 'sections_have_been_sorted', 'Sections have been sorted', NULL, NULL),
(1187, 'enter_your_title', 'Enter your title', NULL, NULL),
(1188, 'resource_file', 'Resource file', NULL, NULL),
(1189, 'add', 'Add', NULL, NULL),
(1190, 'user_name', 'User name', NULL, NULL),
(1191, 'enrollment_date', 'Enrollment date', NULL, NULL),
(1192, 'enter_which_word_of_your_question_you_want_to_show_blank', 'Enter which word of your question you want to show blank', NULL, NULL),
(1193, 'press_the_enter_key_after_writing_your_every_word', 'Press the enter key after writing your every word', NULL, NULL),
(1194, 'correct_answer_can_not_be_empty', 'Correct answer can not be empty', NULL, NULL),
(1195, 'wrong', 'Wrong', NULL, NULL),
(1196, 'correct_answer', 'Correct answer', NULL, NULL),
(1197, 'please_save_your_meeting_info_first', 'Please save your meeting info first', NULL, NULL),
(1198, 'you_have_already_registered', 'You have already registered', NULL, NULL),
(1199, 'invalide_document_file', 'Invalide document file', NULL, NULL),
(1200, 'your_registration_has_been_successfully_done', 'Your registration has been successfully done', NULL, NULL),
(1201, 'your_application', 'Your application', NULL, NULL),
(1202, 'applicant_details', 'Applicant details', NULL, NULL),
(1203, 'application_details', 'Application details', NULL, NULL),
(1204, 'applicant', 'Applicant', NULL, NULL),
(1205, 'approve', 'Approve', NULL, NULL),
(1206, 'application_approved_successfully', 'Application approved successfully', NULL, NULL),
(1207, 'approved', 'Approved', NULL, NULL),
(1208, 'setup_your_payment_settings', 'Setup your payment settings', NULL, NULL),
(1209, 'be_careful', 'Be careful', NULL, NULL),
(1210, 'credentials', 'Credentials', NULL, NULL),
(1211, 'account_information', 'Account information', NULL, NULL),
(1212, 'enter_current_password', 'Enter current password', NULL, NULL),
(1213, 'enter_new_password', 'Enter new password', NULL, NULL),
(1214, 'confirm_password', 'Confirm password', NULL, NULL),
(1215, 're-type_your_password', 'Re-type your password', NULL, NULL),
(1216, 'total_attempts', 'Total attempts', NULL, NULL),
(1217, 'obtained_marks_of_all_attempts', 'Obtained marks of all attempts', NULL, NULL),
(1218, 'go_to_answer_sheet', 'Go to answer sheet', NULL, NULL),
(1219, 'the_course_is_not_compleated_yet', 'The course is not compleated yet', NULL, NULL),
(1220, 'preview', 'Preview', NULL, NULL),
(1221, 'language_name_can_not_be_empty_or_can_not_have_special_characters', 'Language name can not be empty or can not have special characters', NULL, NULL),
(1222, 'take_the_quiz_again', 'Take the quiz again', NULL, NULL),
(1223, 'course_updated_successfully', 'Course updated successfully', NULL, NULL),
(1224, 'sort_lessons_of', 'Sort lessons of', NULL, NULL),
(1225, 'lessons_have_been_sorted', 'Lessons have been sorted', NULL, NULL),
(1226, 'enter_your_bank_information', 'Enter your bank information', NULL, NULL),
(1227, 'pending_payment_request', 'Pending payment request', NULL, NULL),
(1228, 'remove_from_cart', 'Remove from cart', NULL, NULL),
(1229, 'add_to_cart', 'Add to cart', NULL, NULL),
(1230, '1daw', '1daw', NULL, NULL),
(1231, 'buy_now', 'Buy now', NULL, NULL),
(1232, 'pay_for_purchasing_course', 'Pay for purchasing course', NULL, NULL),
(1233, 'shopping_cart', 'Shopping cart', NULL, NULL),
(1234, 'by', 'By', NULL, NULL),
(1235, 'your_cart_items', 'Your cart items', NULL, NULL),
(1236, 'items', 'Items', NULL, NULL),
(1237, 'total', 'Total', NULL, NULL),
(1238, 'subtotal', 'Subtotal', NULL, NULL),
(1239, 'apply_coupon', 'Apply coupon', NULL, NULL),
(1240, 'apply', 'Apply', NULL, NULL),
(1241, 'send_as_a_gift', 'Send as a gift', NULL, NULL),
(1242, 'continue_to_payment', 'Continue to payment', NULL, NULL),
(1243, 'searching', 'Searching', NULL, NULL),
(1244, 'payment', 'Payment', NULL, NULL),
(1245, 'make_payment', 'Make payment', NULL, NULL),
(1246, 'select_payment_gateway', 'Select payment gateway', NULL, NULL),
(1247, 'pay_with_stripe', 'Pay with stripe', NULL, NULL),
(1248, 'pay_via_razorpay', 'Pay via razorpay', NULL, NULL),
(1249, 'pay_by_xendit', 'Pay by xendit', NULL, NULL),
(1250, 'pay_by_payu', 'Pay by payu', NULL, NULL),
(1251, 'pay_by_pageseguro', 'Pay by pageseguro', NULL, NULL),
(1252, 'pay_by_ssl_commerz', 'Pay by ssl commerz', NULL, NULL),
(1253, 'pay_by_skrill', 'Pay by skrill', NULL, NULL),
(1254, 'pay_by_doku', 'Pay by doku', NULL, NULL),
(1255, 'pay_with_bkash', 'Pay with bkash', NULL, NULL),
(1256, 'pay_by_cashfree', 'Pay by cashfree', NULL, NULL),
(1257, 'telephone', 'Telephone', NULL, NULL),
(1258, 'pay_by_maxicash', 'Pay by maxicash', NULL, NULL),
(1259, 'pay_by_aamarpay', 'Pay by aamarpay', NULL, NULL),
(1260, 'pay_by_flutterwave', 'Pay by flutterwave', NULL, NULL),
(1261, 'select_your_country', 'Select your country', NULL, NULL),
(1262, 'afghanistan', 'Afghanistan', NULL, NULL),
(1263, 'Åland_islands', 'Åland islands', NULL, NULL),
(1264, 'albania', 'Albania', NULL, NULL),
(1265, 'algeria', 'Algeria', NULL, NULL),
(1266, 'american_samoa', 'American samoa', NULL, NULL),
(1267, 'andorra', 'Andorra', NULL, NULL),
(1268, 'angola', 'Angola', NULL, NULL),
(1269, 'anguilla', 'Anguilla', NULL, NULL),
(1270, 'antarctica', 'Antarctica', NULL, NULL),
(1271, 'antigua_and_barbuda', 'Antigua and barbuda', NULL, NULL),
(1272, 'argentina', 'Argentina', NULL, NULL),
(1273, 'armenia', 'Armenia', NULL, NULL),
(1274, 'aruba', 'Aruba', NULL, NULL),
(1275, 'australia', 'Australia', NULL, NULL),
(1276, 'austria', 'Austria', NULL, NULL),
(1277, 'azerbaijan', 'Azerbaijan', NULL, NULL),
(1278, 'bahamas', 'Bahamas', NULL, NULL),
(1279, 'bahrain', 'Bahrain', NULL, NULL),
(1280, 'bangladesh', 'Bangladesh', NULL, NULL),
(1281, 'barbados', 'Barbados', NULL, NULL),
(1282, 'belarus', 'Belarus', NULL, NULL),
(1283, 'belgium', 'Belgium', NULL, NULL),
(1284, 'belize', 'Belize', NULL, NULL),
(1285, 'benin', 'Benin', NULL, NULL),
(1286, 'bermuda', 'Bermuda', NULL, NULL),
(1287, 'bhutan', 'Bhutan', NULL, NULL),
(1288, 'bolivia_(plurinational_state_of)', 'Bolivia (plurinational state of)', NULL, NULL),
(1289, 'bonaire,_sint_eustatius_and_saba', 'Bonaire, sint eustatius and saba', NULL, NULL),
(1290, 'bosnia_and_herzegovina', 'Bosnia and herzegovina', NULL, NULL),
(1291, 'botswana', 'Botswana', NULL, NULL),
(1292, 'bouvet_island', 'Bouvet island', NULL, NULL),
(1293, 'brazil', 'Brazil', NULL, NULL),
(1294, 'british_indian_ocean_territory', 'British indian ocean territory', NULL, NULL),
(1295, 'brunei_darussalam', 'Brunei darussalam', NULL, NULL),
(1296, 'bulgaria', 'Bulgaria', NULL, NULL),
(1297, 'burkina_faso', 'Burkina faso', NULL, NULL),
(1298, 'burundi', 'Burundi', NULL, NULL),
(1299, 'cabo_verde', 'Cabo verde', NULL, NULL),
(1300, 'cambodia', 'Cambodia', NULL, NULL),
(1301, 'cameroon', 'Cameroon', NULL, NULL),
(1302, 'canada', 'Canada', NULL, NULL),
(1303, 'cayman_islands', 'Cayman islands', NULL, NULL),
(1304, 'central_african_republic', 'Central african republic', NULL, NULL),
(1305, 'chad', 'Chad', NULL, NULL),
(1306, 'chile', 'Chile', NULL, NULL),
(1307, 'china', 'China', NULL, NULL),
(1308, 'christmas_island', 'Christmas island', NULL, NULL),
(1309, 'cocos_(keeling)_islands', 'Cocos (keeling) islands', NULL, NULL),
(1310, 'colombia', 'Colombia', NULL, NULL),
(1311, 'comoros', 'Comoros', NULL, NULL),
(1312, 'congo', 'Congo', NULL, NULL),
(1313, 'congo_(democratic_republic_of_the)', 'Congo (democratic republic of the)', NULL, NULL),
(1314, 'cook_islands', 'Cook islands', NULL, NULL),
(1315, 'costa_rica', 'Costa rica', NULL, NULL),
(1316, 'côte_d\'ivoire', 'Côte d\'ivoire', NULL, NULL),
(1317, 'croatia', 'Croatia', NULL, NULL),
(1318, 'cuba', 'Cuba', NULL, NULL),
(1319, 'curaçao', 'Curaçao', NULL, NULL),
(1320, 'cyprus', 'Cyprus', NULL, NULL),
(1321, 'czech_republic', 'Czech republic', NULL, NULL),
(1322, 'denmark', 'Denmark', NULL, NULL),
(1323, 'djibouti', 'Djibouti', NULL, NULL),
(1324, 'dominica', 'Dominica', NULL, NULL),
(1325, 'dominican_republic', 'Dominican republic', NULL, NULL),
(1326, 'ecuador', 'Ecuador', NULL, NULL),
(1327, 'egypt', 'Egypt', NULL, NULL),
(1328, 'el_salvador', 'El salvador', NULL, NULL),
(1329, 'equatorial_guinea', 'Equatorial guinea', NULL, NULL),
(1330, 'eritrea', 'Eritrea', NULL, NULL),
(1331, 'estonia', 'Estonia', NULL, NULL),
(1332, 'ethiopia', 'Ethiopia', NULL, NULL),
(1333, 'falkland_islands_(malvinas)', 'Falkland islands (malvinas)', NULL, NULL),
(1334, 'faroe_islands', 'Faroe islands', NULL, NULL),
(1335, 'fiji', 'Fiji', NULL, NULL),
(1336, 'finland', 'Finland', NULL, NULL),
(1337, 'france', 'France', NULL, NULL),
(1338, 'french_guiana', 'French guiana', NULL, NULL),
(1339, 'french_polynesia', 'French polynesia', NULL, NULL),
(1340, 'french_southern_territories', 'French southern territories', NULL, NULL),
(1341, 'gabon', 'Gabon', NULL, NULL),
(1342, 'gambia', 'Gambia', NULL, NULL),
(1343, 'georgia', 'Georgia', NULL, NULL),
(1344, 'germany', 'Germany', NULL, NULL),
(1345, 'ghana', 'Ghana', NULL, NULL),
(1346, 'gibraltar', 'Gibraltar', NULL, NULL),
(1347, 'greece', 'Greece', NULL, NULL),
(1348, 'greenland', 'Greenland', NULL, NULL),
(1349, 'grenada', 'Grenada', NULL, NULL),
(1350, 'guadeloupe', 'Guadeloupe', NULL, NULL),
(1351, 'guam', 'Guam', NULL, NULL),
(1352, 'guatemala', 'Guatemala', NULL, NULL),
(1353, 'guernsey', 'Guernsey', NULL, NULL),
(1354, 'guinea', 'Guinea', NULL, NULL),
(1355, 'guinea-bissau', 'Guinea-bissau', NULL, NULL),
(1356, 'guyana', 'Guyana', NULL, NULL),
(1357, 'haiti', 'Haiti', NULL, NULL),
(1358, 'heard_island_and_mcdonald_islands', 'Heard island and mcdonald islands', NULL, NULL),
(1359, 'holy_see', 'Holy see', NULL, NULL),
(1360, 'honduras', 'Honduras', NULL, NULL),
(1361, 'hong_kong', 'Hong kong', NULL, NULL),
(1362, 'hungary', 'Hungary', NULL, NULL),
(1363, 'iceland', 'Iceland', NULL, NULL),
(1364, 'india', 'India', NULL, NULL),
(1365, 'indonesia', 'Indonesia', NULL, NULL),
(1366, 'iran_(islamic_republic_of)', 'Iran (islamic republic of)', NULL, NULL),
(1367, 'iraq', 'Iraq', NULL, NULL),
(1368, 'ireland', 'Ireland', NULL, NULL),
(1369, 'isle_of_man', 'Isle of man', NULL, NULL),
(1370, 'israel', 'Israel', NULL, NULL),
(1371, 'italy', 'Italy', NULL, NULL),
(1372, 'jamaica', 'Jamaica', NULL, NULL),
(1373, 'japan', 'Japan', NULL, NULL),
(1374, 'jersey', 'Jersey', NULL, NULL),
(1375, 'jordan', 'Jordan', NULL, NULL),
(1376, 'kazakhstan', 'Kazakhstan', NULL, NULL),
(1377, 'kenya', 'Kenya', NULL, NULL),
(1378, 'kiribati', 'Kiribati', NULL, NULL),
(1379, 'korea_(democratic_people\'s_republic_of)', 'Korea (democratic people\'s republic of)', NULL, NULL),
(1380, 'korea_(republic_of)', 'Korea (republic of)', NULL, NULL),
(1381, 'kuwait', 'Kuwait', NULL, NULL),
(1382, 'kyrgyzstan', 'Kyrgyzstan', NULL, NULL),
(1383, 'lao_people\'s_democratic_republic', 'Lao people\'s democratic republic', NULL, NULL),
(1384, 'latvia', 'Latvia', NULL, NULL),
(1385, 'lebanon', 'Lebanon', NULL, NULL),
(1386, 'lesotho', 'Lesotho', NULL, NULL),
(1387, 'liberia', 'Liberia', NULL, NULL),
(1388, 'libya', 'Libya', NULL, NULL),
(1389, 'liechtenstein', 'Liechtenstein', NULL, NULL),
(1390, 'lithuania', 'Lithuania', NULL, NULL),
(1391, 'luxembourg', 'Luxembourg', NULL, NULL),
(1392, 'macao', 'Macao', NULL, NULL),
(1393, 'north_macedonia', 'North macedonia', NULL, NULL),
(1394, 'madagascar', 'Madagascar', NULL, NULL),
(1395, 'malawi', 'Malawi', NULL, NULL),
(1396, 'malaysia', 'Malaysia', NULL, NULL),
(1397, 'maldives', 'Maldives', NULL, NULL),
(1398, 'mali', 'Mali', NULL, NULL),
(1399, 'malta', 'Malta', NULL, NULL),
(1400, 'marshall_islands', 'Marshall islands', NULL, NULL),
(1401, 'martinique', 'Martinique', NULL, NULL),
(1402, 'mauritania', 'Mauritania', NULL, NULL),
(1403, 'mauritius', 'Mauritius', NULL, NULL),
(1404, 'mayotte', 'Mayotte', NULL, NULL),
(1405, 'mexico', 'Mexico', NULL, NULL),
(1406, 'micronesia_(federated_states_of)', 'Micronesia (federated states of)', NULL, NULL),
(1407, 'moldova_(republic_of)', 'Moldova (republic of)', NULL, NULL),
(1408, 'monaco', 'Monaco', NULL, NULL),
(1409, 'mongolia', 'Mongolia', NULL, NULL),
(1410, 'montenegro', 'Montenegro', NULL, NULL),
(1411, 'montserrat', 'Montserrat', NULL, NULL),
(1412, 'morocco', 'Morocco', NULL, NULL),
(1413, 'mozambique', 'Mozambique', NULL, NULL),
(1414, 'myanmar', 'Myanmar', NULL, NULL),
(1415, 'namibia', 'Namibia', NULL, NULL),
(1416, 'nauru', 'Nauru', NULL, NULL),
(1417, 'nepal', 'Nepal', NULL, NULL),
(1418, 'netherlands', 'Netherlands', NULL, NULL),
(1419, 'new_caledonia', 'New caledonia', NULL, NULL),
(1420, 'new_zealand', 'New zealand', NULL, NULL),
(1421, 'nicaragua', 'Nicaragua', NULL, NULL),
(1422, 'niger', 'Niger', NULL, NULL),
(1423, 'nigeria', 'Nigeria', NULL, NULL),
(1424, 'niue', 'Niue', NULL, NULL),
(1425, 'norfolk_island', 'Norfolk island', NULL, NULL),
(1426, 'northern_mariana_islands', 'Northern mariana islands', NULL, NULL),
(1427, 'norway', 'Norway', NULL, NULL),
(1428, 'oman', 'Oman', NULL, NULL),
(1429, 'pakistan', 'Pakistan', NULL, NULL),
(1430, 'palau', 'Palau', NULL, NULL),
(1431, 'palestine,_state_of', 'Palestine, state of', NULL, NULL),
(1432, 'panama', 'Panama', NULL, NULL),
(1433, 'papua_new_guinea', 'Papua new guinea', NULL, NULL),
(1434, 'paraguay', 'Paraguay', NULL, NULL),
(1435, 'peru', 'Peru', NULL, NULL),
(1436, 'philippines', 'Philippines', NULL, NULL),
(1437, 'pitcairn', 'Pitcairn', NULL, NULL),
(1438, 'poland', 'Poland', NULL, NULL),
(1439, 'portugal', 'Portugal', NULL, NULL),
(1440, 'puerto_rico', 'Puerto rico', NULL, NULL),
(1441, 'qatar', 'Qatar', NULL, NULL),
(1442, 'réunion', 'Réunion', NULL, NULL),
(1443, 'romania', 'Romania', NULL, NULL),
(1444, 'russian_federation', 'Russian federation', NULL, NULL),
(1445, 'rwanda', 'Rwanda', NULL, NULL),
(1446, 'saint_barthélemy', 'Saint barthélemy', NULL, NULL),
(1447, 'saint_helena,_ascension_and_tristan_da_cunha', 'Saint helena, ascension and tristan da cunha', NULL, NULL),
(1448, 'saint_kitts_and_nevis', 'Saint kitts and nevis', NULL, NULL),
(1449, 'saint_lucia', 'Saint lucia', NULL, NULL),
(1450, 'saint_martin_(french_part)', 'Saint martin (french part)', NULL, NULL),
(1451, 'saint_pierre_and_miquelon', 'Saint pierre and miquelon', NULL, NULL),
(1452, 'saint_vincent_and_the_grenadines', 'Saint vincent and the grenadines', NULL, NULL),
(1453, 'samoa', 'Samoa', NULL, NULL),
(1454, 'san_marino', 'San marino', NULL, NULL),
(1455, 'sao_tome_and_principe', 'Sao tome and principe', NULL, NULL),
(1456, 'saudi_arabia', 'Saudi arabia', NULL, NULL),
(1457, 'senegal', 'Senegal', NULL, NULL),
(1458, 'serbia', 'Serbia', NULL, NULL),
(1459, 'seychelles', 'Seychelles', NULL, NULL),
(1460, 'sierra_leone', 'Sierra leone', NULL, NULL),
(1461, 'singapore', 'Singapore', NULL, NULL),
(1462, 'sint_maarten_(dutch_part)', 'Sint maarten (dutch part)', NULL, NULL),
(1463, 'slovakia', 'Slovakia', NULL, NULL),
(1464, 'slovenia', 'Slovenia', NULL, NULL),
(1465, 'solomon_islands', 'Solomon islands', NULL, NULL),
(1466, 'somalia', 'Somalia', NULL, NULL),
(1467, 'south_africa', 'South africa', NULL, NULL),
(1468, 'south_georgia_and_the_south_sandwich_islands', 'South georgia and the south sandwich islands', NULL, NULL),
(1469, 'south_sudan', 'South sudan', NULL, NULL),
(1470, 'spain', 'Spain', NULL, NULL),
(1471, 'sri_lanka', 'Sri lanka', NULL, NULL),
(1472, 'sudan', 'Sudan', NULL, NULL),
(1473, 'suriname', 'Suriname', NULL, NULL),
(1474, 'svalbard_and_jan_mayen', 'Svalbard and jan mayen', NULL, NULL),
(1475, 'sweden', 'Sweden', NULL, NULL),
(1476, 'switzerland', 'Switzerland', NULL, NULL),
(1477, 'syrian_arab_republic', 'Syrian arab republic', NULL, NULL),
(1478, 'taiwan,_province_of_china', 'Taiwan, province of china', NULL, NULL),
(1479, 'tajikistan', 'Tajikistan', NULL, NULL),
(1480, 'tanzania,_united_republic_of', 'Tanzania, united republic of', NULL, NULL),
(1481, 'thailand', 'Thailand', NULL, NULL),
(1482, 'timor-leste', 'Timor-leste', NULL, NULL),
(1483, 'togo', 'Togo', NULL, NULL),
(1484, 'tokelau', 'Tokelau', NULL, NULL),
(1485, 'tonga', 'Tonga', NULL, NULL),
(1486, 'trinidad_and_tobago', 'Trinidad and tobago', NULL, NULL),
(1487, 'tunisia', 'Tunisia', NULL, NULL),
(1488, 'turkey', 'Turkey', NULL, NULL),
(1489, 'turkmenistan', 'Turkmenistan', NULL, NULL),
(1490, 'turks_and_caicos_islands', 'Turks and caicos islands', NULL, NULL),
(1491, 'tuvalu', 'Tuvalu', NULL, NULL),
(1492, 'uganda', 'Uganda', NULL, NULL),
(1493, 'ukraine', 'Ukraine', NULL, NULL),
(1494, 'united_arab_emirates', 'United arab emirates', NULL, NULL),
(1495, 'united_kingdom_of_great_britain_and_northern_ireland', 'United kingdom of great britain and northern ireland', NULL, NULL),
(1496, 'united_states_minor_outlying_islands', 'United states minor outlying islands', NULL, NULL),
(1497, 'united_states_of_america', 'United states of america', NULL, NULL),
(1498, 'uruguay', 'Uruguay', NULL, NULL),
(1499, 'uzbekistan', 'Uzbekistan', NULL, NULL),
(1500, 'vanuatu', 'Vanuatu', NULL, NULL),
(1501, 'venezuela_(bolivarian_republic_of)', 'Venezuela (bolivarian republic of)', NULL, NULL),
(1502, 'viet_nam', 'Viet nam', NULL, NULL),
(1503, 'virgin_islands_(british)', 'Virgin islands (british)', NULL, NULL),
(1504, 'virgin_islands_(u.s.)', 'Virgin islands (u.s.)', NULL, NULL),
(1505, 'wallis_and_futuna', 'Wallis and futuna', NULL, NULL),
(1506, 'western_sahara', 'Western sahara', NULL, NULL),
(1507, 'yemen', 'Yemen', NULL, NULL),
(1508, 'zambia', 'Zambia', NULL, NULL),
(1509, 'zimbabwe', 'Zimbabwe', NULL, NULL),
(1510, 'pay_by_tazapay', 'Pay by tazapay', NULL, NULL),
(1511, 'payable_amount', 'Payable amount', NULL, NULL),
(1512, 'document_of_your_payment', 'Document of your payment', NULL, NULL),
(1513, 'submit_payment_document', 'Submit payment document', NULL, NULL),
(1514, 'session_timed_out', 'Session timed out', NULL, NULL),
(1515, 'please_try_again', 'Please try again', NULL, NULL),
(1516, 'purchased_courses', 'Purchased courses', NULL, NULL),
(1517, 'invoice', 'Invoice', NULL, NULL),
(1518, 'suspended_payment_request', 'Suspended payment request', NULL, NULL),
(1519, 'new_home_page_layout_has_been_activated', 'New home page layout has been activated', NULL, NULL),
(1520, 'happy_students', 'Happy students', NULL, NULL),
(1521, 'experienced_instructors', 'Experienced instructors', NULL, NULL),
(1522, 'smart_solution', 'Smart solution', NULL, NULL),
(1523, 'top_instructors', 'Top instructors', NULL, NULL),
(1524, 'happy_student', 'Happy student', NULL, NULL),
(1525, 'experienced_instructor', 'Experienced instructor', NULL, NULL),
(1526, 'quality_courses', 'Quality courses', NULL, NULL),
(1527, 'create_intelligence', 'Create intelligence', NULL, NULL),
(1528, 'learn_with_us', 'Learn with us', NULL, NULL),
(1529, 'popular_categories', 'Popular categories', NULL, NULL),
(1530, 'top_rated_courses', 'Top rated courses', NULL, NULL),
(1531, 'number_of_enrolled_students', 'Number of enrolled students', NULL, NULL),
(1532, 'total_lessons', 'Total lessons', NULL, NULL),
(1533, 'our_identity', 'Our identity', NULL, NULL),
(1534, 'we_always_prioritize_quality_and_uniqueness', 'We always prioritize quality and uniqueness', NULL, NULL),
(1535, 'our_identity_is_a_reflection_of_who_we_are_as_individuals_or_as_an_organization,_while_our_profile_provides_a_concise_summary_of_our_background,_skills,_and_accomplishments.', 'Our identity is a reflection of who we are as individuals or as an organization, while our profile provides a concise summary of our background, skills, and accomplishments.', NULL, NULL),
(1536, 'quality_educators', 'Quality educators', NULL, NULL),
(1537, 'premium_courses', 'Premium courses', NULL, NULL),
(1538, 'cost-free_course', 'Cost-free course', NULL, NULL),
(1539, 'our_popular_instructor', 'Our popular instructor', NULL, NULL),
(1540, 'our_popular_instructor_is_a_charismatic_and_knowledgeable_individual_who_captivates_students_with_engaging_lessons,_making_learning_a_delightful_and_enriching_experience.', 'Our popular instructor is a charismatic and knowledgeable individual who captivates students with engaging lessons, making learning a delightful and enriching experience.', NULL, NULL),
(1541, 'our_latest_blog', 'Our latest blog', NULL, NULL),
(1542, 'read_more', 'Read more', NULL, NULL),
(1543, 'welcome_to', 'Welcome to', NULL, NULL),
(1544, 'join_for_free', 'Join for free', NULL, NULL),
(1545, 'latest_top_skills', 'Latest top skills', NULL, NULL),
(1546, 'stay_ahead_with_our_curated_courses,_mastering_in-demand_skills.', 'Stay ahead with our curated courses, mastering in-demand skills.', NULL, NULL),
(1547, 'globalization', 'Globalization', NULL, NULL),
(1548, 'opportunity_for_global_networking_and_collaboration_with_peers_worldwide.', 'Opportunity for global networking and collaboration with peers worldwide.', NULL, NULL),
(1549, 'cost-effectiveness', 'Cost-effectiveness', NULL, NULL),
(1550, 'cost-effective_compared_to_traditional_in-person_education.', 'Cost-effective compared to traditional in-person education.', NULL, NULL),
(1551, 'popular_instructor', 'Popular instructor', NULL, NULL),
(1552, 'follow_the_latest_news', 'Follow the latest news', NULL, NULL),
(1553, 'why_learn_online?', 'Why learn online?', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `arabic`, `awdwa`) VALUES
(1554, 'flexibility', 'Flexibility', NULL, NULL),
(1555, 'flexibility_in_scheduling_and_learning_at_your_own_pace.', 'Flexibility in scheduling and learning at your own pace.', NULL, NULL),
(1556, 'accessibility', 'Accessibility', NULL, NULL),
(1557, 'convenient_access_from_anywhere_with_an_internet_connection.', 'Convenient access from anywhere with an internet connection.', NULL, NULL),
(1558, 'quality_trainers', 'Quality trainers', NULL, NULL),
(1559, 'cost-free_courses', 'Cost-free courses', NULL, NULL),
(1560, 'disabled', 'Disabled', NULL, NULL),
(1561, 'motivational_speech_updated_successfully', 'Motivational speech updated successfully', NULL, NULL),
(1562, 'we_provides_you_world_class_performance', 'We provides you world class performance', NULL, NULL),
(1563, 'your_custom_codes_updated_successfully', 'Your custom codes updated successfully', NULL, NULL),
(1564, 'language_deleted_successfully', 'Language deleted successfully', NULL, NULL),
(1565, 'wed', 'Wed', NULL, NULL),
(1566, 'sep', 'Sep', NULL, NULL),
(1567, 'sat', 'Sat', NULL, NULL),
(1568, 'thu', 'Thu', NULL, NULL),
(1569, 'course_compare', 'Course compare', NULL, NULL),
(1570, 'compare_with_1_courses', 'Compare with 1 courses', NULL, NULL),
(1571, 'has_discount', 'Has discount', NULL, NULL),
(1572, 'made_in', 'Made in', NULL, NULL),
(1573, 'last_updated_at', 'Last updated at', NULL, NULL),
(1574, 'total_lectures', 'Total lectures', NULL, NULL),
(1575, 'total_quizzes', 'Total quizzes', NULL, NULL),
(1576, 'total_enrolment', 'Total enrolment', NULL, NULL),
(1577, 'number_of_reviews', 'Number of reviews', NULL, NULL),
(1578, 'avg_rating', 'Avg rating', NULL, NULL),
(1579, '????????', 'ت??????', NULL, NULL),
(1580, 'course_added_to_wishlist', 'Course added to wishlist', NULL, NULL),
(1581, 'this_lecture_is_available_exclusively_as_of_premium_part._to_gain_access,_please_purchase_the_course', 'This lecture is available exclusively as of premium part. to gain access, please purchase the course', NULL, NULL),
(1582, '????????', 'ت??????', NULL, NULL),
(1583, 'forgot_password', 'Forgot password', NULL, NULL),
(1584, 'send_request', 'Send request', NULL, NULL),
(1585, 'back_to_login', 'Back to login', NULL, NULL),
(1586, 'another_phone', 'Another phone', NULL, NULL),
(1587, 'data_deleted', 'Data deleted', NULL, NULL),
(1588, '30_of_html_', '30 of html ', NULL, NULL),
(1589, 'access_denied', 'Access denied', NULL, NULL),
(1590, 'enter_your_html5_video_url', 'Enter your html5 video url', NULL, NULL),
(1591, 'thumbnail', 'Thumbnail', NULL, NULL),
(1592, 'caption', 'Caption', NULL, NULL),
(1593, '.vtt', '.vtt', NULL, NULL),
(1594, 'choose_your_caption_file', 'Choose your caption file', NULL, NULL),
(1595, 'upload_system_video_file', 'Upload system video file', NULL, NULL),
(1596, 'select_system_video_file', 'Select system video file', NULL, NULL),
(1597, 'has_to_be_bigger_than', 'Has to be bigger than', NULL, NULL),
(1598, 'course_removed_from_wishlist', 'Course removed from wishlist', NULL, NULL),
(1599, 'play_now', 'Play now', NULL, NULL),
(1600, 'complete_previous_lesson_to_unlock_it', 'Complete previous lesson to unlock it', NULL, NULL),
(1601, 'instructor_edit', 'Instructor edit', NULL, NULL),
(1602, 'instructor_edit_form', 'Instructor edit form', NULL, NULL),
(1603, 'start_time', 'Start time', NULL, NULL),
(1604, 'end_time', 'End time', NULL, NULL),
(1605, 'video_url_is_not_supported', 'Video url is not supported', NULL, NULL),
(1606, 'section_has_been_deleted_successfully', 'Section has been deleted successfully', NULL, NULL),
(1607, 'quiz_has_been_updated_successfully', 'Quiz has been updated successfully', NULL, NULL),
(1608, 'enter_your_text', 'Enter your text', NULL, NULL),
(1609, 'lesson_has_been_deleted_successfully', 'Lesson has been deleted successfully', NULL, NULL),
(1610, 'the_quiz_is_not_available_yet.', 'The quiz is not available yet.', NULL, NULL),
(1611, 'it_is_too_late_to_take_the_quiz_now.', 'It is too late to take the quiz now.', NULL, NULL),
(1612, 'randomize_quiz_questions', 'Randomize quiz questions', NULL, NULL),
(1613, 'new_login_confirmation', 'New login confirmation', NULL, NULL),
(1614, 'login_confirmation', 'Login confirmation', NULL, NULL),
(1615, 'let_us_know_that_this_email_address_belongs_to_you', 'Let us know that this email address belongs to you', NULL, NULL),
(1616, 'enter_the_code_from_the_email_sent_to', 'Enter the code from the email sent to', NULL, NULL),
(1617, 'verification_code', 'Verification code', NULL, NULL),
(1618, 'enter_the_verification_code', 'Enter the verification code', NULL, NULL),
(1619, 'new_device_verification_code', 'New device verification code', NULL, NULL),
(1620, 'resend_verification_code', 'Resend verification code', NULL, NULL),
(1621, 'mail_successfully_sent_to_your_inbox', 'Mail successfully sent to your inbox', NULL, NULL),
(1622, 'hamada_helal', 'Hamada helal', NULL, NULL),
(1623, 'complains', 'Complains', NULL, NULL),
(1624, 'el_homosany', 'El homosany', NULL, NULL),
(1625, 'hamada', 'Hamada', NULL, NULL),
(1626, 'report_!', 'Report !', NULL, NULL),
(1627, 'your_phone', 'Your phone', NULL, NULL),
(1628, 'your_complain_has_arraived', 'Your complain has arraived', NULL, NULL),
(1629, 'there_is_something_wrong_in_the_code', 'There is something wrong in the code', NULL, NULL),
(1630, 'you_can_not_do_this', 'You can not do this', NULL, NULL),
(1631, 'complaints', 'Complaints', NULL, NULL),
(1632, 'complaint_type', 'Complaint type', NULL, NULL),
(1633, 'mon', 'Mon', NULL, NULL),
(1634, 'problem_type', 'Problem type', NULL, NULL),
(1635, 'search_results', 'Search results', NULL, NULL),
(1636, 'replay', 'Replay', NULL, NULL),
(1637, 'complain_replay', 'Complain replay', NULL, NULL),
(1638, 'deleted_user', 'Deleted user', NULL, NULL),
(1639, 'the_replay_has_arrived_!', 'The replay has arrived !', NULL, NULL),
(1640, 'enable_certificate', 'Enable certificate', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `start_time` int(11) DEFAULT NULL,
  `end_time` int(11) DEFAULT NULL,
  `randomize` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `video_type` varchar(255) DEFAULT NULL,
  `cloud_video_id` int(20) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `audio_url` varchar(400) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `lesson_type` varchar(255) DEFAULT NULL,
  `attachment` longtext DEFAULT NULL,
  `attachment_type` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `summary` longtext DEFAULT NULL,
  `is_free` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `quiz_attempt` int(11) NOT NULL DEFAULT 0,
  `video_type_for_mobile_application` varchar(255) DEFAULT NULL,
  `video_url_for_mobile_application` varchar(255) DEFAULT NULL,
  `duration_for_mobile_application` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`id`, `title`, `duration`, `start_time`, `end_time`, `randomize`, `course_id`, `section_id`, `video_type`, `cloud_video_id`, `video_url`, `audio_url`, `date_added`, `last_modified`, `lesson_type`, `attachment`, `attachment_type`, `caption`, `summary`, `is_free`, `order`, `quiz_attempt`, `video_type_for_mobile_application`, `video_url_for_mobile_application`, `duration_for_mobile_application`) VALUES
(1, 'for intro', '0:20:00', 1727668800, 1729137600, NULL, 3, 4, NULL, NULL, NULL, NULL, 1727755200, 1728014400, 'quiz', '{\"total_marks\":\"10\",\"pass_mark\":\"6\",\"drip_content_for_passing_rule\":\"not_applicable\"}', 'json', NULL, '', 0, 0, 10, NULL, NULL, NULL),
(3, 'hamada', '00:00:00', NULL, NULL, NULL, 3, 4, 'html5', NULL, 'sadf kdsal;fj k;a', NULL, 1728187200, NULL, 'video', NULL, 'url', NULL, '', 0, 0, 0, 'html5', 'https://www.html5rocks.com/en/tutorials/video/basics/devstories.webm', '00:01:10');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `from` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(20) NOT NULL,
  `message_thread_code` varchar(255) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `sender` int(20) DEFAULT NULL,
  `receiver` int(20) DEFAULT NULL,
  `timestamp` varchar(255) DEFAULT NULL,
  `read_status` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `message_thread_code`, `message`, `sender`, `receiver`, `timestamp`, `read_status`) VALUES
(1, 'KnqBpS6ILbzFOkY47oahGvNDtwCW1Q', 'ni', 2, 3, '1725438850', 0),
(2, 'aO1I5wm36usTiUCzGBfMPqVdScQ0Db', 'hey aya how are you', 2, 5, '1725482207', 0),
(3, 'g7C01O4kNbvGid38yPJXxmAREfqwp2', 'heeey how are you', 4, 3, '1725484040', 0),
(4, '5YxEdTsJtSwql4VmnzFLbpWPHRfDXr', 'hey hello, hope you are well', 2, 6, '1725484366', 1),
(5, '5YxEdTsJtSwql4VmnzFLbpWPHRfDXr', 'good', 6, 2, '1725484457', 1),
(6, 'BWVzh8drUkFT9yOvDeP6qtLcCGfb4N', 'how are you', 6, 4, '1725484528', 1),
(7, 'oSnHcYvxG9pNq1hmjDPMfkbUWBTQsJ', 'hamada helal ', 22, 2, '1728688262', 1),
(8, 'oSnHcYvxG9pNq1hmjDPMfkbUWBTQsJ', 'hello there ', 2, 22, '1728756162', 1),
(9, 'oSnHcYvxG9pNq1hmjDPMfkbUWBTQsJ', 'fsdafas dfads ', 2, 22, '1728861854', 1),
(10, 'oSnHcYvxG9pNq1hmjDPMfkbUWBTQsJ', 'لا يباشة شلناه والدنية زي الفل', 2, 22, '1728863453', 1),
(11, 'oSnHcYvxG9pNq1hmjDPMfkbUWBTQsJ', 'حمادة هلال لغزو النيبال', 2, 22, '1728863928', 1),
(12, 'Chfa93URwiHZDNPxdJ4sXtYFB8ocAG', 'kals;dk fl\'adsjk ksad;j k;dasf', 2, 23, '1729270220', 1),
(13, 'Chfa93URwiHZDNPxdJ4sXtYFB8ocAG', 'fsdaj klasdjfk ;asdl', 23, 2, '1729270349', 1);

-- --------------------------------------------------------

--
-- Table structure for table `message_thread`
--

CREATE TABLE `message_thread` (
  `message_thread_id` int(11) NOT NULL,
  `message_thread_code` varchar(255) DEFAULT NULL,
  `sender` varchar(255) DEFAULT '',
  `receiver` varchar(255) DEFAULT '',
  `last_message_timestamp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `message_thread`
--

INSERT INTO `message_thread` (`message_thread_id`, `message_thread_code`, `sender`, `receiver`, `last_message_timestamp`) VALUES
(1, 'KnqBpS6ILbzFOkY47oahGvNDtwCW1Q', '2', '3', NULL),
(2, 'aO1I5wm36usTiUCzGBfMPqVdScQ0Db', '2', '5', NULL),
(3, 'g7C01O4kNbvGid38yPJXxmAREfqwp2', '4', '3', NULL),
(4, '5YxEdTsJtSwql4VmnzFLbpWPHRfDXr', '2', '6', NULL),
(5, 'BWVzh8drUkFT9yOvDeP6qtLcCGfb4N', '6', '4', NULL),
(6, 'oSnHcYvxG9pNq1hmjDPMfkbUWBTQsJ', '22', '2', NULL),
(7, 'Chfa93URwiHZDNPxdJ4sXtYFB8ocAG', '2', '23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `subject`, `description`, `created_at`, `updated_at`) VALUES
(1, 'about web ', '<p><strong xss=removed>Lorem Ipsum</strong><span xss=removed> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br></p>', '1725433117', NULL),
(2, 'awdawdaw', '<p>cdasw</p>', '1725737626', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_histories`
--

CREATE TABLE `newsletter_histories` (
  `id` int(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `tried_times` int(11) DEFAULT NULL,
  `sent_at` varchar(100) DEFAULT NULL,
  `created_at` varchar(100) DEFAULT NULL,
  `updated_at` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `newsletter_histories`
--

INSERT INTO `newsletter_histories` (`id`, `email`, `subject`, `description`, `status`, `tried_times`, `sent_at`, `created_at`, `updated_at`) VALUES
(1, 'mahmoudgalal55555@gmail.com', 'about web ', '<!DOCTYPE html>\n<html>\n<head>\n  <title>about web </title>\n</head>\n<body style=\"font-family: Arial, sans-serif; background-color: #f5f5f5; margin: 0; padding: 0;\">\n  <div style=\"max-width: 600px; margin: 0 auto; background-color: #ffffff; padding: 40px; border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); text-align: center;\">\n\n    <!-- Logo -->\n    <div style=\"text-align: center; margin-bottom: 20px;\">\n      <img src=\"https://lms.softdomi.com/uploads/system/logo-dark.png\" alt=\"Website Logo\" width=\"250\" height=\"auto\">\n    </div>\n\n    <!-- Email subject -->\n    <h1 style=\"color: #333333; font-size: 25px; text-align: center; margin-bottom: 20px;\">about web </h1>\n\n    <!-- Email body -->\n    <!-- Start and end hidden div are needed for tracking system notification. SO don\'t remove -->\n    <div class=\"system_notification_start\" style=\"display: none;\"></div>\n    <div><p><strong xss=removed>Lorem Ipsum</strong><span xss=removed> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br></p></div>\n    <div class=\"system_notification_end\" style=\"display: none;\"></div>\n\n    <!-- Email footer -->\n    <p style=\"text-align: center; margin-top: 40px; color: #999999; font-size: 14px;\">&copy; 2024 SoftDomi. All rights reserved.</p>\n  </div>\n</body>\n</html>\n', 'unable', 12, NULL, '1725433164', '1725436990'),
(2, 'mahmoudgalal55555@gmail.com', 'about web ', '<!DOCTYPE html>\n<html>\n<head>\n  <title>about web </title>\n</head>\n<body style=\"font-family: Arial, sans-serif; background-color: #f5f5f5; margin: 0; padding: 0;\">\n  <div style=\"max-width: 600px; margin: 0 auto; background-color: #ffffff; padding: 40px; border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); text-align: center;\">\n\n    <!-- Logo -->\n    <div style=\"text-align: center; margin-bottom: 20px;\">\n      <img src=\"https://lms.softdomi.com/uploads/system/logo-dark.png\" alt=\"Website Logo\" width=\"250\" height=\"auto\">\n    </div>\n\n    <!-- Email subject -->\n    <h1 style=\"color: #333333; font-size: 25px; text-align: center; margin-bottom: 20px;\">about web </h1>\n\n    <!-- Email body -->\n    <!-- Start and end hidden div are needed for tracking system notification. SO don\'t remove -->\n    <div class=\"system_notification_start\" style=\"display: none;\"></div>\n    <div><p><strong xss=removed>Lorem Ipsum</strong><span xss=removed> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br></p></div>\n    <div class=\"system_notification_end\" style=\"display: none;\"></div>\n\n    <!-- Email footer -->\n    <p style=\"text-align: center; margin-top: 40px; color: #999999; font-size: 14px;\">&copy; 2024 SoftDomi. All rights reserved.</p>\n  </div>\n</body>\n</html>\n', 'unable', 12, NULL, '1725433220', '1725436990');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_subscriber`
--

CREATE TABLE `newsletter_subscriber` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) NOT NULL,
  `from_user` int(11) DEFAULT NULL,
  `to_user` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `from_user`, `to_user`, `type`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 7, 7, 'certificate_eligibility', 'certificate eligibility', '\n    <div>Course: <a href=\"https://lms.softdomi.com/home/course/تيست/1\" target=\"_blank\">تيست</a>\r\nInstructor: Mahmoud Galal\r\nCertificate link: <a href=\"https://lms.softdomi.com/certificate/7ca4d3ad8f\" target=\"_blank\"> Certificate link</a></div>\n    ', 0, '1725550899', NULL),
(4, 2, 8, 'signup', 'Registered successfully', '\n    <div>You have successfully registered with us at SoftDomi.</div>\n    ', 0, '1725736235', NULL),
(5, 18, 18, 'course_completion_mail', 'You have completed a new course', '\r\n    <div>Course: <a href=\"http://localhost:9999/home/course/30-of-html/3\" target=\"_blank\">30 of html </a>\r\nInstructor: Eslam  Hamedallah</div>\r\n    ', 0, '1727698706', NULL),
(7, 18, 18, 'certificate_eligibility', 'certificate eligibility', '\r\n    <div>Course: <a href=\"http://localhost:9999/home/course/30-of-html/3\" target=\"_blank\">30 of html </a>\r\nInstructor: instructor test\r\nCertificate link: <a href=\"http://localhost:9999/certificate/6455214aab\" target=\"_blank\"> Certificate link</a></div>\r\n    ', 0, '1727698706', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notification_settings`
--

CREATE TABLE `notification_settings` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `is_editable` int(11) DEFAULT NULL,
  `addon_identifier` varchar(255) DEFAULT NULL,
  `user_types` varchar(400) DEFAULT NULL,
  `system_notification` varchar(400) DEFAULT NULL,
  `email_notification` varchar(400) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `template` longtext DEFAULT NULL,
  `setting_title` varchar(255) DEFAULT NULL,
  `setting_sub_title` varchar(255) DEFAULT NULL,
  `date_updated` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notification_settings`
--

INSERT INTO `notification_settings` (`id`, `type`, `is_editable`, `addon_identifier`, `user_types`, `system_notification`, `email_notification`, `subject`, `template`, `setting_title`, `setting_sub_title`, `date_updated`) VALUES
(1, 'signup', 1, NULL, '[\"admin\",\"user\"]', '{\"admin\":\"1\",\"user\":\"1\"}', '{\"admin\":\"0\",\"user\":\"0\"}', '{\"admin\":\"New user registered\",\"user\":\"Registered successfully\"}', '{\"admin\":\"New user registered [user_name] \\r\\n<br>User email: <b>[user_email]<\\/b>\",\"user\":\"You have successfully registered with us at [system_name].\"}', 'New user registration', 'Get notified when a new user signs up', '1725438707'),
(2, 'email_verification', 0, NULL, '[\"user\"]', '{\"user\":\"0\"}', '{\"user\":\"1\"}', '{\"user\":\"Email verification code\"}', '{\"user\":\"You have received a email verification code. Your verification code is [email_verification_code]\"}', 'Email verification', 'It is permanently enabled for student email verification.', '1684135777'),
(3, 'forget_password_mail', 0, NULL, '[\"user\"]', '{\"user\":\"0\"}', '{\"user\":\"1\"}', '{\"user\":\"Forgot password verification code\"}', '{\"user\":\"You have received a email verification code. Your verification code is [system_name] [verification_link] [minutes]\"}', 'Forgot password mail', 'It is permanently enabled for student email verification.', '1684145383'),
(4, 'new_device_login_confirmation', 0, NULL, '[\"user\"]', '{\"user\":\"0\"}', '{\"user\":\"1\"}', '{\"user\":\"Please confirm your login\"}', '{\"user\":\"Have you tried logging in with a different device? Confirm using the verification code. Your verification code is [verification_code]. Remember that you will lose access to your previous device after logging in to the new device <b>[user_agent]<\\/b>.<br> Use the verification code within [minutes] minutes\"}', 'Account security alert', 'Send verification code for login from a new device', '1684145383'),
(6, 'course_purchase', 1, NULL, '[\"admin\",\"student\",\"instructor\"]', '{\"admin\":\"1\",\"student\":\"1\",\"instructor\":\"1\"}', '{\"admin\":\"0\",\"student\":\"0\",\"instructor\":\"0\"}', '{\"admin\":\"A new course has been sold\",\"instructor\":\"A new course has been sold\",\"student\":\"You have purchased a new course\"}', '{\"admin\":\"<p>Course title: [course_title]<\\/p><p>Student: [student_name]\\r\\n<\\/p><p>Paid amount: [paid_amount]<\\/p><p>Instructor: [instructor_name]<\\/p>\",\"instructor\":\"Course title: [course_title]\\r\\nStudent: [student_name]\\r\\nPaid amount: [paid_amount]\",\"student\":\"Course title: [course_title]\\r\\nPaid amount: [paid_amount]\\r\\nInstructor: [instructor_name]\"}', 'Course purchase notification', 'Stay up-to-date on student course purchases.', '1725438731'),
(7, 'course_completion_mail', 1, NULL, '[\"student\",\"instructor\"]', '{\"student\":\"1\",\"instructor\":\"1\"}', '{\"student\":\"0\",\"instructor\":\"0\"}', '{\"instructor\":\"Course completion\",\"student\":\"You have completed a new course\"}', '{\"instructor\":\"Course completed [course_title]\\r\\nStudent: [student_name]\",\"student\":\"Course: [course_title]\\r\\nInstructor: [instructor_name]\"}', 'Course completion mail', 'Stay up to date on student course completion.', '1699431547'),
(8, 'certificate_eligibility', 1, 'certificate', '[\"student\",\"instructor\"]', '{\"student\":\"1\",\"instructor\":\"1\"}', '{\"student\":\"0\",\"instructor\":\"0\"}', '{\"instructor\":\"Certificate eligibility\",\"student\":\"certificate eligibility\"}', '{\"instructor\":\"Course: [course_title]\\r\\nStudent: [student_name]\\r\\nCertificate link: [certificate_link]\",\"student\":\"Course: [course_title]\\r\\nInstructor: [instructor_name]\\r\\nCertificate link: [certificate_link]\"}', 'Course eligibility notification', 'Stay up to date on course certificate eligibility.', '1684303460'),
(9, 'offline_payment_suspended_mail', 1, 'offline_payment', '[\"student\"]', '{\"student\":\"1\"}', '{\"student\":\"0\"}', '{\"student\":\"Your payment has been suspended\"}', '{\"student\":\"<p>Your offline payment has been <b style=\'color: red;\'>suspended</b> !</p><p>Please provide a valid document of your payment.</p>\"}', 'Offline payment suspended mail', 'If students provides fake information, notify them of the suspension', '1684303463'),
(10, 'bundle_purchase', 1, 'course_bundle', '[\"admin\",\"student\",\"instructor\"]', '{\"admin\":\"1\",\"student\":\"1\",\"instructor\":\"1\"}', '{\"admin\":\"0\",\"student\":\"0\",\"instructor\":\"0\"}', '{\"admin\":\"A new course bundle has been sold \",\"instructor\":\"A new course bundle has been sold \",\"student\":\"You have purchased a new course bundle test\"}', '{\"admin\":\"Course bundle: [bundle_title]\\r\\nStudent: [student_name]\\r\\nInstructor: [instructor_name] \",\"instructor\":\"Course bundle: [bundle_title]\\r\\nStudent: [student_name] \",\"student\":\"Course bundle: [bundle_title]\\r\\nInstructor: [instructor_name] \"}', 'Course bundle purchase notification', 'Stay up-to-date on student course bundle purchases.', '1684303467'),
(13, 'add_new_user_as_affiliator', 0, 'affiliate_course', '[\"affiliator\"]', '{\"affiliator\":\"0\"}', '{\"affiliator\":\"1\"}', '{\"affiliator\":\"Congratulation ! You are assigned as an affiliator\"}', '{\"affiliator\":\"You are assigned as a website Affiliator.\\r\\nWebsite: [website_link]\\r\\n<br>\\r\\nPassword: [password]\"}', 'New user added as affiliator', 'Send account information to the new user', '1684135777'),
(14, 'affiliator_approval_notification', 1, 'affiliate_course', '[\"affiliator\"]', '{\"affiliator\":\"1\"}', '{\"affiliator\":\"0\"}', '{\"affiliator\":\"Congratulations! Your affiliate request has been approved\"}', '{\"affiliator\":\"Congratulations! Your affiliate request has been approved\"}', 'Affiliate approval notification', 'Send affiliate approval mail to the user account', '1684303472'),
(15, 'affiliator_request_cancellation', 1, 'affiliate_course', '[\"affiliator\"]', '{\"affiliator\":\"1\"}', '{\"affiliator\":\"0\"}', '{\"affiliator\":\"Sorry ! Your request has been currently refused\"}', '{\"affiliator\":\"Sorry ! Your request has been currently refused.\"}', 'Affiliator request cancellation', 'Send mail, when you cancel the affiliation request', '1684303473'),
(16, 'affiliation_amount_withdrawal_request', 1, 'affiliate_course', '[\"admin\",\"affiliator\"]', '{\"admin\":\"1\",\"affiliator\":\"1\"}', '{\"admin\":\"0\",\"affiliator\":\"0\"}', '{\"admin\":\"New money withdrawal request\",\"affiliator\":\"New money withdrawal request\"}', '{\"admin\":\"New money withdrawal request by [user_name] [amount]\",\"affiliator\":\"Your Withdrawal request of [amount] has been sent to authority\"}', 'Affiliation money withdrawal request', 'Send mail, when the users request the withdrawal of money', '1684303476'),
(17, 'approval_affiliation_amount_withdrawal_request', 1, 'affiliate_course', '[\"affiliator\"]', '{\"affiliator\":\"1\"}', '{\"affiliator\":\"0\"}', '{\"affiliator\":\"Congartulation ! Your withdrawal request has been approved\"}', '{\"affiliator\":\"Congartulation ! Your payment request has been approved.\"}', 'Approval of withdrawal request of affiliation', 'Send mail, when you approved the affiliation withdrawal request', '1684303480'),
(18, 'course_gift', 1, NULL, '[\"payer\",\"receiver\"]', '{\"payer\":\"1\",\"receiver\":\"1\"}', '{\"payer\":\"1\",\"receiver\":\"1\"}', '{\"payer\":\"You have gift a course\",\"receiver\":\"You have received a course gift\"}', '{\"payer\":\"You have gift a course to [user_name] [course_title][instructor]\",\"receiver\":\"You have received a course gift by [payer][course_title][instructor]\"}', 'Course gift notification', 'Notify users after course gift', '1691818623'),
(20, 'noticeboard', 1, 'noticeboard', '[\"student\"]', '{\"student\":\"1\"}', '{\"student\":\"1\"}', '{\"student\":\"Noticeboard\"}', '{\"student\":\"Hi, You have a new notice by [instructor_name]. The course [course_title] [notice_title][notice_description]\"}', 'Course Noticeboard', 'Notify to enrolled students when announcements are created by the instructor for a particular course.\n', '1699525375');

-- --------------------------------------------------------

--
-- Table structure for table `offline_payment`
--

CREATE TABLE `offline_payment` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `course_id` varchar(255) DEFAULT NULL,
  `item_id` varchar(255) DEFAULT NULL,
  `item_type` varchar(255) DEFAULT NULL,
  `item_info` longtext DEFAULT NULL,
  `document_image` varchar(255) DEFAULT NULL,
  `timestamp` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payment_type` varchar(50) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `admin_revenue` varchar(255) DEFAULT NULL,
  `instructor_revenue` varchar(255) DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `instructor_payment_status` int(11) DEFAULT 0,
  `transaction_id` varchar(255) DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `coupon` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) DEFAULT NULL,
  `currency` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `keys` text NOT NULL,
  `model_name` varchar(255) DEFAULT NULL,
  `enabled_test_mode` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `is_addon` int(11) NOT NULL,
  `created_at` varchar(100) NOT NULL,
  `updated_at` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `identifier`, `currency`, `title`, `description`, `keys`, `model_name`, `enabled_test_mode`, `status`, `is_addon`, `created_at`, `updated_at`) VALUES
(1, 'paypal', 'USD', 'Paypal', '', '{\"sandbox_client_id\":\"AfGaziKslex-scLAyYdDYXNFaz2aL5qGau-SbDgE_D2E80D3AFauLagP8e0kCq9au7W4IasmFbirUUYc\",\"sandbox_secret_key\":\"EMa5pCTuOpmHkhHaCGibGhVUcKg0yt5-C3CzJw-OWJCzaXXzTlyD17SICob_BkfM_0Nlk7TWnN42cbGz\",\"production_client_id\":\"1234\",\"production_secret_key\":\"12345\"}', 'Payment_model', 1, 1, 0, '', '1673263724'),
(2, 'stripe', 'USD', 'Stripe', '', '{\"public_key\":\"pk_test_CAC3cB1mhgkJqXtypYBTGb4f\",\"secret_key\":\"sk_test_iatnshcHhQVRXdygXw3L2Pp2\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxxxxx\"}', 'Payment_model', 1, 1, 0, '', '1673263724'),
(3, 'razorpay', 'INR', 'Razorpay', '', '{\"key_id\":\"rzp_test_J60bqBOi1z1aF5\",\"secret_key\":\"uk935K7p4j96UCJgHK8kAU4q\",\"theme_color\":\"#23d792\"}', 'Payment_model', 1, 1, 0, '', '1708580304'),
(4, 'xendit', 'USD', 'Xendit', '', '{\"api_key\":\"xnd_development_44KVee2PG4HeeZxG69R5eXOJHVD7t84FZUIH8dMxa37ZU3bZ8KDKV9ugPfy5fRK\",\"secret_key\":\"your_xendit_secret_key\",\"other_parameter\":\"value\"}', 'Payment_model', 1, 1, 0, '', '1700647736'),
(5, 'payu', 'PLN', 'Payu', '', '{\"pos_id\":\"PKf789971N2ig5hbF71y1BX46k\",\"second_key\":\"vaWDmIqbwiVUOVitXet9ZlC9mQ\",\"client_id\":\"PKf789971N2ig5hbF71y1BX46k\",\"client_secret\":\"vaWDmIqbwiVUOVitXet9ZlC9mQ\"}', 'Payment_model', 1, 1, 0, '', '1707980726'),
(6, 'pagseguro', 'BRL', 'Pagseguro', '', '{\"api_key\":\"BAE981AF77CA4768A93849AFF5BF2331\",\"secret_key\":\"8045696DBFBF765FF4189FBAE1E02AB5\",\"other_parameter\":\"value\"}', 'Payment_model', 1, 1, 0, '', '1705559611'),
(7, 'sslcommerz', 'USD', 'SSL Commerz', '', '{\"store_id\":\"sslcommerz_store_id\",\"store_password\":\"sslcommerz_store_password\"}', 'Payment_model', 1, 1, 0, '', '1673264610'),
(8, 'skrill', 'USD', 'Skrill', '', '{\"skrill_merchant_email\":\"urwatech@gmail.com\",\"secret_passphrase\":\"your_skrill_secret_key\"}', 'Payment_model', 1, 1, 0, '', '1700647745'),
(10, 'doku', 'USD', 'Doku', '', '{\"client_id\":\"BRN-0271-1700996849302\",\"shared_key\":\"SK-BxOS4PfUdIEMHLccyMI3\"}', 'Payment_model', 1, 1, 0, '', '1708603994'),
(11, 'bkash', 'BDT', 'Bkash', '', '{\"app_key\":\"app-key\",\"app_secret\":\"app-secret\",\"username\":\"username\",\"password\":\"passwoed\"}', 'Payment_model', 1, 1, 0, '1700997440', '1701596645'),
(12, 'cashfree', 'INR', 'CashFree', '', '{\"client_id\":\"TEST100748308df0665cabda6c2f38b903847001\",\"client_secret\":\"cfsk_ma_test_71065d7cadf8695e7845e86244bd7011_fff5714b\"}', 'Payment_model', 1, 1, 0, '1700997440', '1701688995'),
(13, 'maxicash', 'USD', 'Maxicash', '', '{\"merchant_id\":\"TEST100748308df0665cabda6c2f38b903847001\",\"merchant_password\":\"cfsk_ma_test_71065d7cadf8695e7845e86244bd7011_fff5714b\"}', 'Payment_model', 1, 1, 0, '1700997440', '1701688995'),
(14, 'aamarpay', 'BDT', 'Aamarpay', '', '{\"store_id\":\"aamarpaytest\",\"signature_key\":\"dbb74894e82415a2f7ff0ec3a97e4183\"}', 'Payment_model', 1, 1, 0, '1700997440', '1711366991'),
(15, 'flutterwave', 'NGN', 'Flutterwave', '', '{\"public_key\":\"FLWPUBK_TEST-b6fbee21fd2d9f13be74bf4d87fe6197-X\",\"secret_key\":\"FLWSECK_TEST-70c3f071a83a1d14bb8a0061e53845a7-X\"}', 'Payment_model', 1, 1, 0, '1700997440', '1711366991'),
(16, 'tazapay', 'USD', 'Tazapay', '', '{\"public_key\":\"pk_test_audpDpZGmHmYT46kmHvA\",\"api_key\":\"ak_test_CRXTUMNGV4MVPO7RDGT2\",\"api_secret\":\"sk_test_0OfyPSFUX4YqcQGkeyOWCVkEQ7WAWeZ6SmsNNpfFQ989qm15f8mu2gqmYhiXkZ87iF26Ej1Ex9pgNuTq9YoxksPmQjDEbyATBoWw0bNH12mQPIJQ4VGqEPIB5FEizarZ\"}', 'Payment_model', 1, 1, 0, '1700997440', '1711366991'),
(17, 'offline_payment', 'USD', 'Offline payment', '', '[]', 'Offline_payment_model', 0, 1, 1, '1724149872', '');

-- --------------------------------------------------------

--
-- Table structure for table `payout`
--

CREATE TABLE `payout` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `permissions` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `admin_id`, `permissions`) VALUES
(1, 4, '[\"course\",\"category\",\"user\",\"instructor\",\"student\",\"messaging\",\"settings\",\"contact\",\"complains\",\"enrolment\",\"revenue\",\"blog\",\"coupon\",\"newsletter\"]'),
(2, 17, '[]');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) UNSIGNED NOT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  `title` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `number_of_options` int(11) DEFAULT NULL,
  `options` longtext DEFAULT NULL,
  `correct_answers` longtext DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `quiz_id`, `title`, `type`, `number_of_options`, `options`, `correct_answers`, `order`) VALUES
(1, 1, '&lt;p&gt;&lt;img src=&quot;https://mr.softdomi.com/file-upload/uploads/663a96fb21147_1.png&quot; style=&quot;width: 483px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'multiple_choice', 2, '[\"1\",\"2\"]', '[\"2\"]', 0),
(2, 3, '&lt;p&gt;1+1&lt;/p&gt;', 'multiple_choice', 2, '[\"2\",\"3\"]', '[\"1\"]', 0),
(3, 3, '&lt;p&gt;2 + 3&lt;/p&gt;', 'multiple_choice', 2, '[\"4\",\"5\"]', '[\"2\"]', 0),
(4, 6, '&lt;p&gt;html is html&lt;/p&gt;', 'single_choice', 2, '[\"true \",\"false\"]', '[\"1\"]', 0),
(5, 6, 'html is css&amp;nbsp;', 'single_choice', 2, '[\"true \",\"false\"]', '[\"2\"]', 0),
(6, 7, '&lt;p&gt;Hamada Helal to invade naibal ?&amp;nbsp;&lt;/p&gt;', 'single_choice', 2, '[\"true \",\"false\"]', '[\"1\"]', 1),
(7, 8, '&lt;p&gt;quistion one&lt;/p&gt;', 'single_choice', 2, '[\"true\",\"false\"]', '[\"1\"]', 0),
(8, 8, '&lt;p&gt;quistion two&lt;/p&gt;', 'single_choice', 2, '[\"true \",\"false\"]', '[\"1\"]', 0),
(9, 8, 'quistion three', 'single_choice', 2, '[\"true \",\"false\"]', '[\"1\"]', 0),
(10, 8, '&lt;p&gt;question four&lt;/p&gt;', 'single_choice', 2, '[\"true \",\"false\"]', '[\"1\"]', 0),
(11, 8, '&lt;p&gt;question five&lt;/p&gt;', 'single_choice', 2, '[\"true \",\"false\"]', '[\"1\"]', 0);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_results`
--

CREATE TABLE `quiz_results` (
  `quiz_result_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_answers` longtext NOT NULL,
  `correct_answers` longtext NOT NULL COMMENT 'question_id',
  `total_obtained_marks` double NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `date_updated` varchar(100) NOT NULL,
  `is_submitted` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `quiz_results`
--

INSERT INTO `quiz_results` (`quiz_result_id`, `quiz_id`, `user_id`, `user_answers`, `correct_answers`, `total_obtained_marks`, `date_added`, `date_updated`, `is_submitted`) VALUES
(1, 1, 7, '{\"1\":[\"2\"]}', '[\"1\"]', 290, '1725550879', '1725550899', 1),
(2, 3, 5, '{\"2\":[\"2\"],\"3\":[\"2\"]}', '[\"3\"]', 1, '1725705100', '1725705532', 1),
(3, 3, 7, '{\"2\":[\"1\"],\"3\":[\"2\"]}', '[\"2\",\"3\"]', 2, '1725738692', '1725738695', 1),
(4, 4, 7, '[]', '[]', 0, '1725738726', '1725738726', 1),
(5, 6, 18, '[]', '[]', 0, '1727700865', '1727700865', 1),
(6, 6, 19, '{\"4\":[\"1\"],\"5\":[\"2\"]}', '[\"4\",\"5\"]', 4, '1727701868', '1727701873', 1),
(7, 7, 19, '{\"6\":[\"1\"]}', '[\"6\"]', 2, '1727790381', '1727790386', 1),
(8, 8, 19, '{\"7\":[\"1\"]}', '[\"7\"]', 2, '1727809988', '1727891700', 1),
(9, 8, 19, '[]', '[]', 0, '1727892030', '1727892030', 1),
(10, 8, 19, '[]', '[]', 0, '1727893417', '1727893417', 1),
(11, 8, 19, '[]', '[]', 0, '1727895299', '1727895299', 1),
(12, 8, 18, '[]', '[]', 0, '1727895872', '1727895872', 0),
(13, 8, 19, '[]', '[]', 0, '1727898364', '1727898364', 1),
(14, 8, 19, '[]', '[]', 0, '1727899786', '1727899786', 0),
(15, 8, 20, '[]', '[]', 0, '1728060997', '1728060997', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) UNSIGNED NOT NULL,
  `rating` double DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ratable_id` int(11) DEFAULT NULL,
  `ratable_type` varchar(50) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `review` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resource_files`
--

CREATE TABLE `resource_files` (
  `id` int(11) NOT NULL,
  `lesson_id` int(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `date_added`, `last_modified`) VALUES
(1, 'Admin', 1234567890, 1234567890),
(2, 'User', 1234567890, 1234567890);

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `restricted_by` varchar(255) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`id`, `title`, `course_id`, `start_date`, `end_date`, `restricted_by`, `order`) VALUES
(4, 'intro', 3, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`) VALUES
(1, 'language', 'english'),
(2, 'system_name', 'SoftDomi'),
(3, 'system_title', 'Academy Learning Club'),
(4, 'system_email', 'academy@example.com'),
(5, 'address', 'Sydney, Australia'),
(6, 'phone', '+143-52-9933631'),
(7, 'purchase_code', 'your-purchase-code'),
(8, 'paypal', '[{\"active\":\"1\",\"mode\":\"sandbox\",\"sandbox_client_id\":\"AfGaziKslex-scLAyYdDYXNFaz2aL5qGau-SbDgE_D2E80D3AFauLagP8e0kCq9au7W4IasmFbirUUYc\",\"sandbox_secret_key\":\"EMa5pCTuOpmHkhHaCGibGhVUcKg0yt5-C3CzJw-OWJCzaXXzTlyD17SICob_BkfM_0Nlk7TWnN42cbGz\",\"production_client_id\":\"1234\",\"production_secret_key\":\"12345\"}]'),
(9, 'stripe_keys', '[{\"active\":\"1\",\"testmode\":\"on\",\"public_key\":\"pk_test_CAC3cB1mhgkJqXtypYBTGb4f\",\"secret_key\":\"sk_test_iatnshcHhQVRXdygXw3L2Pp2\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxxxxx\"}]'),
(10, 'youtube_api_key', 'youtube-and-google-drive-api-key'),
(11, 'vimeo_api_key', 'vimeo-api-key'),
(12, 'slogan', 'A course based video CMS'),
(13, 'text_align', NULL),
(14, 'allow_instructor', '1'),
(15, 'instructor_revenue', '70'),
(16, 'system_currency', 'USD'),
(17, 'paypal_currency', 'USD'),
(18, 'stripe_currency', 'USD'),
(19, 'author', 'Creativeitem'),
(20, 'currency_position', 'left'),
(21, 'website_description', 'Study any topic, anytime. explore thousands of courses for the lowest price ever!'),
(22, 'website_keywords', 'LMS,Learning Management System,Creativeitem,Academy LMS'),
(23, 'footer_text', 'Creativeitem'),
(24, 'footer_link', 'https://creativeitem.com/'),
(25, 'protocol', 'smtp'),
(26, 'smtp_host', 'smtp.gmail.com'),
(27, 'smtp_port', '587'),
(28, 'smtp_user', 'admin@example.com'),
(29, 'smtp_pass', 'Enter-your-app-password'),
(30, 'version', '6.9.1'),
(31, 'student_email_verification', 'disable'),
(32, 'instructor_application_note', 'Fill all the fields carefully and share if you want to share any document with us it will help us to evaluate you as an instructor.'),
(33, 'razorpay_keys', '[{\"active\":\"1\",\"key\":\"rzp_test_J60bqBOi1z1aF5\",\"secret_key\":\"uk935K7p4j96UCJgHK8kAU4q\",\"theme_color\":\"#c7a600\"}]'),
(34, 'razorpay_currency', 'USD'),
(35, 'fb_app_id', NULL),
(36, 'fb_app_secret', NULL),
(37, 'fb_social_login', NULL),
(38, 'drip_content_settings', '{\"lesson_completion_role\":\"percentage\",\"minimum_duration\":15,\"minimum_percentage\":\"30\",\"locked_lesson_message\":\"&lt;h3 xss=&quot;removed&quot; style=&quot;text-align: center; &quot;&gt;&lt;span xss=&quot;removed&quot;&gt;&lt;strong&gt;Permission denied!&lt;\\/strong&gt;&lt;\\/span&gt;&lt;\\/h3&gt;&lt;p xss=&quot;removed&quot; style=&quot;text-align: center; &quot;&gt;&lt;span xss=&quot;removed&quot;&gt;This course supports drip content, so you must complete the previous lessons.&lt;\\/span&gt;&lt;\\/p&gt;\"}'),
(41, 'course_accessibility', 'publicly'),
(42, 'smtp_crypto', 'tls'),
(43, 'allowed_device_number_of_loging', '5'),
(47, 'academy_cloud_access_token', 'jdfghasdfasdfasdfasdfasdf'),
(48, 'course_selling_tax', '0'),
(49, 'ccavenue_keys', '[{\"active\":\"1\",\"ccavenue_merchant_id\":\"cmi_xxxxxx\",\"ccavenue_working_key\":\"cwk_xxxxxxxxxxxx\",\"ccavenue_access_code\":\"ccc_xxxxxxxxxxxxx\"}]'),
(50, 'ccavenue_currency', 'INR'),
(51, 'iyzico_keys', '[{\"active\":\"1\",\"testmode\":\"on\",\"iyzico_currency\":\"TRY\",\"api_test_key\":\"atk_xxxxxxxx\",\"secret_test_key\":\"stk_xxxxxxxx\",\"api_live_key\":\"alk_xxxxxxxx\",\"secret_live_key\":\"slk_xxxxxxxx\"}]'),
(52, 'iyzico_currency', 'TRY'),
(53, 'paystack_keys', '[{\"active\":\"1\",\"testmode\":\"on\",\"secret_test_key\":\"sk_test_c746060e693dd50c6f397dffc6c3b2f655217c94\",\"public_test_key\":\"pk_test_0816abbed3c339b8473ff22f970c7da1c78cbe1b\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxx\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxx\"}]'),
(54, 'paystack_currency', 'NGN'),
(55, 'paytm_keys', '[{\"PAYTM_MERCHANT_KEY\":\"PAYTM_MERCHANT_KEY\",\"PAYTM_MERCHANT_MID\":\"PAYTM_MERCHANT_MID\",\"PAYTM_MERCHANT_WEBSITE\":\"DEFAULT\",\"INDUSTRY_TYPE_ID\":\"Retail\",\"CHANNEL_ID\":\"WEB\"}]'),
(57, 'google_analytics_id', ''),
(58, 'meta_pixel_id', ''),
(59, 'smtp_from_email', 'admin@example.com'),
(61, 'language_dirs', '{\"english\":\"ltr\",\"hindi\":\"rtl\",\"arabic\":\"rtl\"}'),
(62, 'timezone', 'America/New_York'),
(63, 'account_disable', '0'),
(64, 'offline_bank_information', 'ارفق لي رقم عمليه التحويل علي&amp;nbsp;&lt;br&gt;010020634981'),
(65, 'randCallRange', '29'),
(70, 'wasabi_key', 'access-key'),
(71, 'wasabi_secret_key', 'secret-key'),
(72, 'wasabi_bucketname', 'bucket-name'),
(73, 'wasabi_region', 'region-name'),
(74, 'bbb_setting', '{\"endpoint\":\"https:\\/\\/manager.bigbluemeeting.com\\/bigbluebutton\\/\",\"secret\":\"shared-secret-or-salt\"}'),
(75, 'iso_country_codes', '{\"AF\": \"Afghanistan\",\"AX\": \"Åland Islands\",\"AL\": \"Albania\",\"DZ\": \"Algeria\",\"AS\": \"American Samoa\",\"AD\": \"Andorra\",\"AO\": \"Angola\",\"AI\": \"Anguilla\",\"AQ\": \"Antarctica\",\"AG\": \"Antigua and Barbuda\",\"AR\": \"Argentina\",\"AM\": \"Armenia\",\"AW\": \"Aruba\",\"AU\": \"Australia\",\"AT\": \"Austria\",\"AZ\": \"Azerbaijan\",\"BS\": \"Bahamas\",\"BH\": \"Bahrain\",\"BD\": \"Bangladesh\",\"BB\": \"Barbados\",\"BY\": \"Belarus\",\"BE\": \"Belgium\",\"BZ\": \"Belize\",\"BJ\": \"Benin\",\"BM\": \"Bermuda\",\"BT\": \"Bhutan\",\"BO\": \"Bolivia (Plurinational State of)\",\"BQ\": \"Bonaire, Sint Eustatius and Saba\",\"BA\": \"Bosnia and Herzegovina\",\"BW\": \"Botswana\",\"BV\": \"Bouvet Island\",\"BR\": \"Brazil\",\"IO\": \"British Indian Ocean Territory\",\"BN\": \"Brunei Darussalam\",\"BG\": \"Bulgaria\",\"BF\": \"Burkina Faso\",\"BI\": \"Burundi\",\"CV\": \"Cabo Verde\",\"KH\": \"Cambodia\",\"CM\": \"Cameroon\",\"CA\": \"Canada\",\"KY\": \"Cayman Islands\",\"CF\": \"Central African Republic\",\"TD\": \"Chad\",\"CL\": \"Chile\",\"CN\": \"China\",\"CX\": \"Christmas Island\",\"CC\": \"Cocos (Keeling) Islands\",\"CO\": \"Colombia\",\"KM\": \"Comoros\",\"CG\": \"Congo\",\"CD\": \"Congo (Democratic Republic of the)\",\"CK\": \"Cook Islands\",\"CR\": \"Costa Rica\",\"CI\": \"Côte d\'Ivoire\",\"HR\": \"Croatia\",\"CU\": \"Cuba\",\"CW\": \"Curaçao\",\"CY\": \"Cyprus\",\"CZ\": \"Czech Republic\",\"DK\": \"Denmark\",\"DJ\": \"Djibouti\",\"DM\": \"Dominica\",\"DO\": \"Dominican Republic\",\"EC\": \"Ecuador\",\"EG\": \"Egypt\",\"SV\": \"El Salvador\",\"GQ\": \"Equatorial Guinea\",\"ER\": \"Eritrea\",\"EE\": \"Estonia\",\"ET\": \"Ethiopia\",\"FK\": \"Falkland Islands (Malvinas)\",\"FO\": \"Faroe Islands\",\"FJ\": \"Fiji\",\"FI\": \"Finland\",\"FR\": \"France\",\"GF\": \"French Guiana\",\"PF\": \"French Polynesia\",\"TF\": \"French Southern Territories\",\"GA\": \"Gabon\",\"GM\": \"Gambia\",\"GE\": \"Georgia\",\"DE\": \"Germany\",\"GH\": \"Ghana\",\"GI\": \"Gibraltar\",\"GR\": \"Greece\",\"GL\": \"Greenland\",\"GD\": \"Grenada\",\"GP\": \"Guadeloupe\",\"GU\": \"Guam\",\"GT\": \"Guatemala\",\"GG\": \"Guernsey\",\"GN\": \"Guinea\",\"GW\": \"Guinea-Bissau\",\"GY\": \"Guyana\",\"HT\": \"Haiti\",\"HM\": \"Heard Island and McDonald Islands\",\"VA\": \"Holy See\",\"HN\": \"Honduras\",\"HK\": \"Hong Kong\",\"HU\": \"Hungary\",\"IS\": \"Iceland\",\"IN\": \"India\",\"ID\": \"Indonesia\",\"IR\": \"Iran (Islamic Republic of)\",\"IQ\": \"Iraq\",\"IE\": \"Ireland\",\"IM\": \"Isle of Man\",\"IL\": \"Israel\",\"IT\": \"Italy\",\"JM\": \"Jamaica\",\"JP\": \"Japan\",\"JE\": \"Jersey\",\"JO\": \"Jordan\",\"KZ\": \"Kazakhstan\",\"KE\": \"Kenya\",\"KI\": \"Kiribati\",\"KP\": \"Korea (Democratic People\'s Republic of)\",\"KR\": \"Korea (Republic of)\",\"KW\": \"Kuwait\",\"KG\": \"Kyrgyzstan\",\"LA\": \"Lao People\'s Democratic Republic\",\"LV\": \"Latvia\",\"LB\": \"Lebanon\",\"LS\": \"Lesotho\",\"LR\": \"Liberia\",\"LY\": \"Libya\",\"LI\": \"Liechtenstein\",\"LT\": \"Lithuania\",\"LU\": \"Luxembourg\",\"MO\": \"Macao\",\"MK\": \"North Macedonia\",\"MG\": \"Madagascar\",\"MW\": \"Malawi\",\"MY\": \"Malaysia\",\"MV\": \"Maldives\",\"ML\": \"Mali\",\"MT\": \"Malta\",\"MH\": \"Marshall Islands\",\"MQ\": \"Martinique\",\"MR\": \"Mauritania\",\"MU\": \"Mauritius\",\"YT\": \"Mayotte\",\"MX\": \"Mexico\",\"FM\": \"Micronesia (Federated States of)\",\"MD\": \"Moldova (Republic of)\",\"MC\": \"Monaco\",\"MN\": \"Mongolia\",\"ME\": \"Montenegro\",\"MS\": \"Montserrat\",\"MA\": \"Morocco\",\"MZ\": \"Mozambique\",\"MM\": \"Myanmar\",\"NA\": \"Namibia\",\"NR\": \"Nauru\",\"NP\": \"Nepal\",\"NL\": \"Netherlands\",\"NC\": \"New Caledonia\",\"NZ\": \"New Zealand\",\"NI\": \"Nicaragua\",\"NE\": \"Niger\",\"NG\": \"Nigeria\",\"NU\": \"Niue\",\"NF\": \"Norfolk Island\",\"MP\": \"Northern Mariana Islands\",\"NO\": \"Norway\",\"OM\": \"Oman\",\"PK\": \"Pakistan\",\"PW\": \"Palau\",\"PS\": \"Palestine, State of\",\"PA\": \"Panama\",\"PG\": \"Papua New Guinea\",\"PY\": \"Paraguay\",\"PE\": \"Peru\",\"PH\": \"Philippines\",\"PN\": \"Pitcairn\",\"PL\": \"Poland\",\"PT\": \"Portugal\",\"PR\": \"Puerto Rico\",\"QA\": \"Qatar\",\"RE\": \"Réunion\",\"RO\": \"Romania\",\"RU\": \"Russian Federation\",\"RW\": \"Rwanda\",\"BL\": \"Saint Barthélemy\",\"SH\": \"Saint Helena, Ascension and Tristan da Cunha\",\"KN\": \"Saint Kitts and Nevis\",\"LC\": \"Saint Lucia\",\"MF\": \"Saint Martin (French part)\",\"PM\": \"Saint Pierre and Miquelon\",\"VC\": \"Saint Vincent and the Grenadines\",\"WS\": \"Samoa\",\"SM\": \"San Marino\",\"ST\": \"Sao Tome and Principe\",\"SA\": \"Saudi Arabia\",\"SN\": \"Senegal\",\"RS\": \"Serbia\",\"SC\": \"Seychelles\",\"SL\": \"Sierra Leone\",\"SG\": \"Singapore\",\"SX\": \"Sint Maarten (Dutch part)\",\"SK\": \"Slovakia\",\"SI\": \"Slovenia\",\"SB\": \"Solomon Islands\",\"SO\": \"Somalia\",\"ZA\": \"South Africa\",\"GS\": \"South Georgia and the South Sandwich Islands\",\"SS\": \"South Sudan\",\"ES\": \"Spain\",\"LK\": \"Sri Lanka\",\"SD\": \"Sudan\",\"SR\": \"Suriname\",\"SJ\": \"Svalbard and Jan Mayen\",\"SE\": \"Sweden\",\"CH\": \"Switzerland\",\"SY\": \"Syrian Arab Republic\",\"TW\": \"Taiwan, Province of China\",\"TJ\": \"Tajikistan\",\"TZ\": \"Tanzania, United Republic of\",\"TH\": \"Thailand\",\"TL\": \"Timor-Leste\",\"TG\": \"Togo\",\"TK\": \"Tokelau\",\"TO\": \"Tonga\",\"TT\": \"Trinidad and Tobago\",\"TN\": \"Tunisia\",\"TR\": \"Turkey\",\"TM\": \"Turkmenistan\",\"TC\": \"Turks and Caicos Islands\",\"TV\": \"Tuvalu\",\"UG\": \"Uganda\",\"UA\": \"Ukraine\",\"AE\": \"United Arab Emirates\",\"GB\": \"United Kingdom of Great Britain and Northern Ireland\",\"UM\": \"United States Minor Outlying Islands\",\"US\": \"United States of America\",\"UY\": \"Uruguay\",\"UZ\": \"Uzbekistan\",\"VU\": \"Vanuatu\",\"VE\": \"Venezuela (Bolivarian Republic of)\",\"VN\": \"Viet Nam\",\"VG\": \"Virgin Islands (British)\",\"VI\": \"Virgin Islands (U.S.)\",\"WF\": \"Wallis and Futuna\",\"EH\": \"Western Sahara\",\"YE\": \"Yemen\",\"ZM\": \"Zambia\",\"ZW\": \"Zimbabwe\"}'),
(76, 'certificate_template', 'This is to certify that Mr. / Ms. {student} successfully completed the course with on certificate for {course}.'),
(77, 'certificate-text-positons', '\n			\n			\n			&lt;div class=&quot;this-template&quot; style=&quot;width: 750px; position: relative;&quot;&gt;\n				&lt;img width=&quot;100%&quot; src=&quot;..\\..\\uploads/certificates/template.jpg&quot;&gt;\n				&lt;div class=&quot;draggable instructor_name&quot; style=&quot;position: absolute; font-family: &amp;quot;Miss Fajardose&amp;quot;; font-size: 40px; top: 373.892px; left: 553.889px;&quot;&gt;{instructor}&lt;/div&gt;&lt;div class=&quot;draggable course_level&quot; style=&quot;position: absolute;font-size: 16px;top: 444.861px;left: 84.8681px;&quot;&gt;{course_level}&lt;/div&gt;\n&lt;div class=&quot;draggable course_language&quot; style=&quot;position: absolute; font-size: 16px; top: 155.84px; left: 65.8473px;&quot;&gt;{course_language}&lt;/div&gt;\n&lt;div class=&quot;draggable student_name&quot; style=&quot;position: absolute; font-family: &amp;quot;Miss Fajardose&amp;quot;, cursive; font-size: 40px; top: 373.92px; left: 59.9063px;&quot;&gt;{student}&lt;/div&gt;\n&lt;div class=&quot;draggable duration_name&quot; style=&quot;position: absolute; font-size: 16px; top: 341.837px; left: 328.806px;&quot;&gt;{total_duration}&lt;/div&gt;\n&lt;div class=&quot;draggable lesson_name&quot; style=&quot;position: absolute;font-size: 16px;top: 341.882px;left: 124.868px;&quot;&gt;{total_lesson}&lt;/div&gt;\n				&lt;div class=&quot;draggable course_completion_date&quot; style=&quot;position: absolute; font-size: 20px; top: 162.913px; left: 522.888px;&quot;&gt;{date}&lt;/div&gt;\n				&lt;div class=&quot;draggable certificate_text&quot; style=&quot;position: absolute;width: 500px;text-align: center;font-size: 28px;top: 228.948px;font-family: &amp;quot;Pinyon Script&amp;quot;;left: 123.903px;&quot;&gt;This is to certify that Mr. / Ms. {student} successfully completed the course with on certificate for {course}.&lt;/div&gt;\n				&lt;div class=&quot;draggable qrCode&quot; style=&quot;position: absolute; width: 65px; height: 65px; text-align: center; font-size: 20px; top: 67.9px; left: 71.9125px;&quot;&gt;&lt;p style=&quot;text-align: center; padding: 4px 0px;&quot;&gt;Qr code&lt;/p&gt;&lt;/div&gt;\n			&lt;/div&gt;\n																																																																																								'),
(78, 'lastEmailSendingTime', '1725437289');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id` int(11) UNSIGNED NOT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `tagable_id` int(11) DEFAULT NULL,
  `tagable_type` varchar(255) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `another_phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `skills` longtext NOT NULL,
  `social_links` longtext DEFAULT NULL,
  `biography` longtext DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `wishlist` longtext DEFAULT NULL,
  `title` longtext DEFAULT NULL,
  `payment_keys` longtext NOT NULL,
  `verification_code` longtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `is_instructor` int(11) DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `temp` longtext DEFAULT NULL,
  `sessions` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `another_phone`, `address`, `password`, `skills`, `social_links`, `biography`, `role_id`, `date_added`, `last_modified`, `wishlist`, `title`, `payment_keys`, `verification_code`, `status`, `is_instructor`, `image`, `temp`, `sessions`) VALUES
(2, 'Eslam ', 'Hamedallah', 'admin@example.com', NULL, '', NULL, 'd033e22ae348aeb5660fc2140aec35850c4da997', '', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', '', 1, NULL, 1727033533, NULL, '', '', NULL, 1, 1, NULL, NULL, ''),
(18, 'instructor', 'test', 'instructor@test.com', '', NULL, '', '5db3005d1c92d3def956044087157bb23f29c6b0', '', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', '', 2, 1727697255, NULL, '[]', NULL, '{\"paypal\":{\"sandbox_client_id\":\"\",\"sandbox_secret_key\":\"\",\"production_client_id\":\"\",\"production_secret_key\":\"\"},\"stripe\":{\"public_key\":\"\",\"secret_key\":\"\",\"public_live_key\":\"\",\"secret_live_key\":\"\"},\"razorpay\":{\"key_id\":\"\",\"secret_key\":\"\",\"theme_color\":\"\"},\"xendit\":{\"api_key\":\"\",\"secret_key\":\"\",\"other_parameter\":\"\"},\"payu\":{\"pos_id\":\"\",\"second_key\":\"\",\"client_id\":\"\",\"client_secret\":\"\"},\"pagseguro\":{\"api_key\":\"\",\"secret_key\":\"\",\"other_parameter\":\"\"},\"sslcommerz\":{\"store_id\":\"\",\"store_password\":\"\"},\"skrill\":{\"skrill_merchant_email\":\"\",\"secret_passphrase\":\"\"},\"doku\":{\"client_id\":\"\",\"shared_key\":\"\"},\"bkash\":{\"app_key\":\"\",\"app_secret\":\"\",\"username\":\"\",\"password\":\"\"},\"cashfree\":{\"client_id\":\"\",\"client_secret\":\"\"},\"maxicash\":{\"merchant_id\":\"\",\"merchant_password\":\"\"},\"aamarpay\":{\"store_id\":\"\",\"signature_key\":\"\"},\"flutterwave\":{\"public_key\":\"\",\"secret_key\":\"\"},\"tazapay\":{\"public_key\":\"\",\"api_key\":\"\",\"api_secret\":\"\"}}', NULL, 1, 1, '42b8e053830265a94bcf4349e5905d23', NULL, '[\"tvejjmmqp71k0vktk173fe2g99gahm97\",\"rfdufgohkhgu2sbhfol681lsbslq5tfd\"]'),
(19, 'student', 'test', 'student@test.com', '', '', '', '204036a1ef6e7360e536300ea78c6aeb4a9333dd', '', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', '', 2, 1727701750, NULL, '[]', NULL, '{\"paypal\":{\"sandbox_client_id\":\"\",\"sandbox_secret_key\":\"\",\"production_client_id\":\"\",\"production_secret_key\":\"\"},\"stripe\":{\"public_key\":\"\",\"secret_key\":\"\",\"public_live_key\":\"\",\"secret_live_key\":\"\"},\"razorpay\":{\"key_id\":\"\",\"secret_key\":\"\",\"theme_color\":\"\"},\"xendit\":{\"api_key\":\"\",\"secret_key\":\"\",\"other_parameter\":\"\"},\"payu\":{\"pos_id\":\"\",\"second_key\":\"\",\"client_id\":\"\",\"client_secret\":\"\"},\"pagseguro\":{\"api_key\":\"\",\"secret_key\":\"\",\"other_parameter\":\"\"},\"sslcommerz\":{\"store_id\":\"\",\"store_password\":\"\"},\"skrill\":{\"skrill_merchant_email\":\"\",\"secret_passphrase\":\"\"},\"doku\":{\"client_id\":\"\",\"shared_key\":\"\"},\"bkash\":{\"app_key\":\"\",\"app_secret\":\"\",\"username\":\"\",\"password\":\"\"},\"cashfree\":{\"client_id\":\"\",\"client_secret\":\"\"},\"maxicash\":{\"merchant_id\":\"\",\"merchant_password\":\"\"},\"aamarpay\":{\"store_id\":\"\",\"signature_key\":\"\"},\"flutterwave\":{\"public_key\":\"\",\"secret_key\":\"\"},\"tazapay\":{\"public_key\":\"\",\"api_key\":\"\",\"api_secret\":\"\"}}', '808861', 1, 0, '44df9a99f99bf6bdece57489a4b7c5f7', NULL, '[\"hm1kc0u4j6q71cpq6dvfavbvg7o0p145\",\"0jo67bs8hum9nhmmttmfaq9simkklurv\",\"fplc1705dm3spmi7cbqbjjcskk56ol9j\",\"buo6gqj2vs4o8hccaqlv0da4heo30nh3\",\"httot06a4uh70qod29g8k65dkq5dk1q6\"]'),
(20, 'student2', 'test', 'student2@test.com', '', '', '', 'c241e7b7811ffbe3faba5b193717a46f9643eab1', '', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', '', 2, 1728060874, NULL, '[]', NULL, '{\"paypal\":{\"sandbox_client_id\":\"\",\"sandbox_secret_key\":\"\",\"production_client_id\":\"\",\"production_secret_key\":\"\"},\"stripe\":{\"public_key\":\"\",\"secret_key\":\"\",\"public_live_key\":\"\",\"secret_live_key\":\"\"},\"razorpay\":{\"key_id\":\"\",\"secret_key\":\"\",\"theme_color\":\"\"},\"xendit\":{\"api_key\":\"\",\"secret_key\":\"\",\"other_parameter\":\"\"},\"payu\":{\"pos_id\":\"\",\"second_key\":\"\",\"client_id\":\"\",\"client_secret\":\"\"},\"pagseguro\":{\"api_key\":\"\",\"secret_key\":\"\",\"other_parameter\":\"\"},\"sslcommerz\":{\"store_id\":\"\",\"store_password\":\"\"},\"skrill\":{\"skrill_merchant_email\":\"\",\"secret_passphrase\":\"\"},\"doku\":{\"client_id\":\"\",\"shared_key\":\"\"},\"bkash\":{\"app_key\":\"\",\"app_secret\":\"\",\"username\":\"\",\"password\":\"\"},\"cashfree\":{\"client_id\":\"\",\"client_secret\":\"\"},\"maxicash\":{\"merchant_id\":\"\",\"merchant_password\":\"\"},\"aamarpay\":{\"store_id\":\"\",\"signature_key\":\"\"},\"flutterwave\":{\"public_key\":\"\",\"secret_key\":\"\"},\"tazapay\":{\"public_key\":\"\",\"api_key\":\"\",\"api_secret\":\"\"}}', '822348', 1, 0, 'bcd5cc25057d29fce7145fd85730aab6', NULL, '[\"c1r91s389d6lf4382946aegp2fmggpsg\",\"cf75n37dnl6tug3d540th2rmvk57acm7\",\"06foqaeba0ghblft13ka4ndpatl11pkn\",\"kim5maidn043m01b26dohdp5frtv7q90\",\"g6mp1aechaof6el4uuj7cko5akkai4mr\"]'),
(21, 'student', '3', 'student3@test.com', '', '', '', '32be4bedbd3a8539503a9bbbe72f9d84956affa1', '', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', '', 2, 1728389135, NULL, '[]', NULL, '{\"paypal\":{\"sandbox_client_id\":\"\",\"sandbox_secret_key\":\"\",\"production_client_id\":\"\",\"production_secret_key\":\"\"},\"stripe\":{\"public_key\":\"\",\"secret_key\":\"\",\"public_live_key\":\"\",\"secret_live_key\":\"\"},\"razorpay\":{\"key_id\":\"\",\"secret_key\":\"\",\"theme_color\":\"\"},\"xendit\":{\"api_key\":\"\",\"secret_key\":\"\",\"other_parameter\":\"\"},\"payu\":{\"pos_id\":\"\",\"second_key\":\"\",\"client_id\":\"\",\"client_secret\":\"\"},\"pagseguro\":{\"api_key\":\"\",\"secret_key\":\"\",\"other_parameter\":\"\"},\"sslcommerz\":{\"store_id\":\"\",\"store_password\":\"\"},\"skrill\":{\"skrill_merchant_email\":\"\",\"secret_passphrase\":\"\"},\"doku\":{\"client_id\":\"\",\"shared_key\":\"\"},\"bkash\":{\"app_key\":\"\",\"app_secret\":\"\",\"username\":\"\",\"password\":\"\"},\"cashfree\":{\"client_id\":\"\",\"client_secret\":\"\"},\"maxicash\":{\"merchant_id\":\"\",\"merchant_password\":\"\"},\"aamarpay\":{\"store_id\":\"\",\"signature_key\":\"\"},\"flutterwave\":{\"public_key\":\"\",\"secret_key\":\"\"},\"tazapay\":{\"public_key\":\"\",\"api_key\":\"\",\"api_secret\":\"\"}}', NULL, 1, 0, '1377fc9a55cc2a7ce5083dca8b2bb8f5', NULL, '[\"9omf1ctul13hqp6rr61mj7bvci756nm5\",\"9g65124o6ri8u53ataduurh57f3n28qt\"]'),
(22, 'test 4 ', 'test', 'student4@test.com', '', '', '', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', '', 2, 1728663920, NULL, '[]', NULL, '{\"paypal\":{\"sandbox_client_id\":\"\",\"sandbox_secret_key\":\"\",\"production_client_id\":\"\",\"production_secret_key\":\"\"},\"stripe\":{\"public_key\":\"\",\"secret_key\":\"\",\"public_live_key\":\"\",\"secret_live_key\":\"\"},\"razorpay\":{\"key_id\":\"\",\"secret_key\":\"\",\"theme_color\":\"\"},\"xendit\":{\"api_key\":\"\",\"secret_key\":\"\",\"other_parameter\":\"\"},\"payu\":{\"pos_id\":\"\",\"second_key\":\"\",\"client_id\":\"\",\"client_secret\":\"\"},\"pagseguro\":{\"api_key\":\"\",\"secret_key\":\"\",\"other_parameter\":\"\"},\"sslcommerz\":{\"store_id\":\"\",\"store_password\":\"\"},\"skrill\":{\"skrill_merchant_email\":\"\",\"secret_passphrase\":\"\"},\"doku\":{\"client_id\":\"\",\"shared_key\":\"\"},\"bkash\":{\"app_key\":\"\",\"app_secret\":\"\",\"username\":\"\",\"password\":\"\"},\"cashfree\":{\"client_id\":\"\",\"client_secret\":\"\"},\"maxicash\":{\"merchant_id\":\"\",\"merchant_password\":\"\"},\"aamarpay\":{\"store_id\":\"\",\"signature_key\":\"\"},\"flutterwave\":{\"public_key\":\"\",\"secret_key\":\"\"},\"tazapay\":{\"public_key\":\"\",\"api_key\":\"\",\"api_secret\":\"\"}}', '274960', 1, 0, '506548272cf6369ed4f2bad6281172b8', NULL, '[\"f30pus9ole06l5mrf0eithba8l9t762k\",\"vme4919rngjqcck9nh4m67bqsonn3e9f\",\"95hk0jt3uufdfp484puq18uhcgj6m8dg\",\"m3prte5kvpkphmklrt674q3grs5ke4ta\",\"5tjd3fel99due09ns4auf39fnguojr7u\"]'),
(23, 'student5', 'student5', 'student5@test.com', '', '', '', '949544732c8a0c8e4b4fc9742bfe7be2ecef943b', '', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', '', 2, 1729270025, NULL, '[]', NULL, '{\"paypal\":{\"sandbox_client_id\":\"\",\"sandbox_secret_key\":\"\",\"production_client_id\":\"\",\"production_secret_key\":\"\"},\"stripe\":{\"public_key\":\"\",\"secret_key\":\"\",\"public_live_key\":\"\",\"secret_live_key\":\"\"},\"razorpay\":{\"key_id\":\"\",\"secret_key\":\"\",\"theme_color\":\"\"},\"xendit\":{\"api_key\":\"\",\"secret_key\":\"\",\"other_parameter\":\"\"},\"payu\":{\"pos_id\":\"\",\"second_key\":\"\",\"client_id\":\"\",\"client_secret\":\"\"},\"pagseguro\":{\"api_key\":\"\",\"secret_key\":\"\",\"other_parameter\":\"\"},\"sslcommerz\":{\"store_id\":\"\",\"store_password\":\"\"},\"skrill\":{\"skrill_merchant_email\":\"\",\"secret_passphrase\":\"\"},\"doku\":{\"client_id\":\"\",\"shared_key\":\"\"},\"bkash\":{\"app_key\":\"\",\"app_secret\":\"\",\"username\":\"\",\"password\":\"\"},\"cashfree\":{\"client_id\":\"\",\"client_secret\":\"\"},\"maxicash\":{\"merchant_id\":\"\",\"merchant_password\":\"\"},\"aamarpay\":{\"store_id\":\"\",\"signature_key\":\"\"},\"flutterwave\":{\"public_key\":\"\",\"secret_key\":\"\"},\"tazapay\":{\"public_key\":\"\",\"api_key\":\"\",\"api_secret\":\"\"}}', NULL, 1, 0, '4f49b97fb4fd78ef031d5c6024e974bc', NULL, '[\"6863eeucl36kk4lih9qfqqm6t1f1s733\"]');

-- --------------------------------------------------------

--
-- Table structure for table `watched_duration`
--

CREATE TABLE `watched_duration` (
  `watched_id` int(11) UNSIGNED NOT NULL,
  `watched_student_id` int(11) DEFAULT NULL,
  `watched_course_id` int(11) DEFAULT NULL,
  `watched_lesson_id` int(11) DEFAULT NULL,
  `current_duration` int(20) DEFAULT NULL,
  `watched_counter` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `watched_duration`
--

INSERT INTO `watched_duration` (`watched_id`, `watched_student_id`, `watched_course_id`, `watched_lesson_id`, `current_duration`, `watched_counter`) VALUES
(1, 18, 3, 5, 30, '[\"5\",\"10\",\"15\",\"20\",\"25\",\"30\"]'),
(2, 19, 3, 5, 0, '[\"655\",\"660\",\"0\"]');

-- --------------------------------------------------------

--
-- Table structure for table `watch_histories`
--

CREATE TABLE `watch_histories` (
  `watch_history_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `completed_lesson` longtext NOT NULL,
  `course_progress` int(11) NOT NULL,
  `watching_lesson_id` int(11) NOT NULL,
  `quiz_result` longtext NOT NULL,
  `completed_date` varchar(255) DEFAULT NULL,
  `date_added` varchar(100) DEFAULT NULL,
  `date_updated` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `watch_histories`
--

INSERT INTO `watch_histories` (`watch_history_id`, `course_id`, `student_id`, `completed_lesson`, `course_progress`, `watching_lesson_id`, `quiz_result`, `completed_date`, `date_added`, `date_updated`) VALUES
(1, 1, 7, '{\"0\":\"1\",\"1\":\"2\",\"3\":\"4\",\"4\":\"3\"}', 100, 0, '', '1725550899', '1725550863', '1725738829'),
(2, 1, 2, '', 0, 3, '', NULL, '1725649276', '1725741644'),
(3, 1, 5, '[\"3\"]', 33, 2, '', NULL, '1725705070', '1725705741'),
(4, 3, 18, '[\"5\"]', 100, 8, '', '1727698706', '1727698695', '1727895924'),
(5, 3, 2, '', 0, 8, '', NULL, '1727700920', '1727976602'),
(6, 3, 19, '[\"5\",\"6\",\"7\"]', 100, 8, '', '1727701877', '1727701796', '1727899824'),
(7, 3, 20, '', 0, 8, '', NULL, '1728060990', '1728061132'),
(8, 3, 21, '', 0, 8, '', NULL, '1728501066', '1728501084');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bbb_meetings`
--
ALTER TABLE `bbb_meetings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`blog_category_id`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`blog_comment_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complains`
--
ALTER TABLE `complains`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complains_replay`
--
ALTER TABLE `complains_replay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_page`
--
ALTER TABLE `custom_page`
  ADD PRIMARY KEY (`custom_page_id`);

--
-- Indexes for table `enrol`
--
ALTER TABLE `enrol`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frontend_settings`
--
ALTER TABLE `frontend_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`phrase_id`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `message_thread`
--
ALTER TABLE `message_thread`
  ADD PRIMARY KEY (`message_thread_id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter_histories`
--
ALTER TABLE `newsletter_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter_subscriber`
--
ALTER TABLE `newsletter_subscriber`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_settings`
--
ALTER TABLE `notification_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offline_payment`
--
ALTER TABLE `offline_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payout`
--
ALTER TABLE `payout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_results`
--
ALTER TABLE `quiz_results`
  ADD PRIMARY KEY (`quiz_result_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resource_files`
--
ALTER TABLE `resource_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `watched_duration`
--
ALTER TABLE `watched_duration`
  ADD PRIMARY KEY (`watched_id`);

--
-- Indexes for table `watch_histories`
--
ALTER TABLE `watch_histories`
  ADD PRIMARY KEY (`watch_history_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bbb_meetings`
--
ALTER TABLE `bbb_meetings`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `blog_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `blog_comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complains`
--
ALTER TABLE `complains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `complains_replay`
--
ALTER TABLE `complains_replay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(21) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `custom_page`
--
ALTER TABLE `custom_page`
  MODIFY `custom_page_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enrol`
--
ALTER TABLE `enrol`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `frontend_settings`
--
ALTER TABLE `frontend_settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `phrase_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1641;

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `message_thread`
--
ALTER TABLE `message_thread`
  MODIFY `message_thread_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `newsletter_histories`
--
ALTER TABLE `newsletter_histories`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `newsletter_subscriber`
--
ALTER TABLE `newsletter_subscriber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `notification_settings`
--
ALTER TABLE `notification_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `offline_payment`
--
ALTER TABLE `offline_payment`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `payout`
--
ALTER TABLE `payout`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `quiz_results`
--
ALTER TABLE `quiz_results`
  MODIFY `quiz_result_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resource_files`
--
ALTER TABLE `resource_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `watched_duration`
--
ALTER TABLE `watched_duration`
  MODIFY `watched_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `watch_histories`
--
ALTER TABLE `watch_histories`
  MODIFY `watch_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
