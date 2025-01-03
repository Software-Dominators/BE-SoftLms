-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2024 at 06:37 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET
SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET
time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoting`
--

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons`
(
    `id`                int(11) NOT NULL,
    `name`              varchar(255) NOT NULL,
    `unique_identifier` varchar(255) NOT NULL,
    `version`           varchar(255) DEFAULT NULL,
    `status`            int(11) NOT NULL,
    `created_at`        int(11) DEFAULT NULL,
    `updated_at`        int(11) DEFAULT NULL,
    `about`             longtext     DEFAULT NULL,
    `purchase_code`     varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `addons`
--

INSERT INTO `addons` (`id`, `name`, `unique_identifier`, `version`, `status`, `created_at`, `updated_at`, `about`,
                      `purchase_code`)
VALUES (1, 'Certificate', 'certificate', '1.3', 1, 1598241600, NULL,
        'This addon helps student to get certified. Academy provides a course completion certificate for each student after completing any course',
        NULL),
       (2, 'Offline Payment Gateway', 'offline_payment', '1.4', 1, 1598241600, 1253764800,
        'Offline payment gateway allows you to take payment through various local payment gateways.', NULL),
       (4, 'Assignment', 'assignment', '1.2', 1, 1253764800, NULL,
        'You can create assignments for students enrolled in your course, and review the submitted assignment to know the course progress of your enrolled students using this add-on.',
        NULL),
       (5, 'Course content AI', 'course_ai', '1.1', 1, 1253764800, NULL,
        'You can easily create your course content using this addon. It will offer you something creative, which will save you time.',
        NULL),
       (7, 'Course Bundle', 'course_bundle', '1.5', 1, 1253764800, NULL,
        'Course Bundle allows you to sell multiple courses at once. You can sell the bundle on the subscription system.',
        NULL),
       (9, 'Course Forum', 'forum', '1.3', 1, 1253764800, NULL,
        'It opportunity the user to any questions or answers about courses.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications`
(
    `id`       int(11) UNSIGNED NOT NULL,
    `user_id`  int(11) DEFAULT NULL,
    `address`  longtext     DEFAULT NULL,
    `phone`    varchar(255) DEFAULT NULL,
    `message`  longtext     DEFAULT NULL,
    `document` varchar(255) DEFAULT NULL,
    `status`   int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment`
(
    `assignment_id` int(11) UNSIGNED NOT NULL,
    `course_id`     int(11) DEFAULT NULL,
    `user_id`       int(11) DEFAULT NULL,
    `title`         varchar(255) DEFAULT NULL,
    `questions`     longtext     DEFAULT NULL,
    `question_file` varchar(255) DEFAULT NULL,
    `total_marks`   int(11) DEFAULT NULL,
    `deadline_date` varchar(255) DEFAULT NULL,
    `deadline_time` varchar(255) DEFAULT NULL,
    `note`          varchar(255) DEFAULT NULL,
    `added_date`    varchar(255) DEFAULT NULL,
    `updated_date`  varchar(255) DEFAULT NULL,
    `status`        varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`assignment_id`, `course_id`, `user_id`, `title`, `questions`, `question_file`, `total_marks`,
                          `deadline_date`, `deadline_time`, `note`, `added_date`, `updated_date`, `status`)
VALUES (2, 1, 2, 'Assignment two', '&lt;p&gt;dawdawdawdawd&lt;/p&gt;', '(1 - 2) SofrLms brand guideline.pdf', 100,
        '1725832800', '1725894840', 'good luck', '1725905769', '1725906464', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_submission`
--

CREATE TABLE `assignment_submission`
(
    `submission_id` int(11) UNSIGNED NOT NULL,
    `user_id`       int(11) DEFAULT NULL,
    `assignment_id` int(11) DEFAULT NULL,
    `answer`        longtext     DEFAULT NULL,
    `answer_file`   varchar(255) DEFAULT NULL,
    `note`          varchar(255) DEFAULT NULL,
    `review_status` varchar(255) DEFAULT NULL,
    `marks`         int(11) DEFAULT NULL,
    `remarks`       varchar(255) DEFAULT NULL,
    `added_date`    varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `assignment_submission`
--

INSERT INTO `assignment_submission` (`submission_id`, `user_id`, `assignment_id`, `answer`, `answer_file`, `note`,
                                     `review_status`, `marks`, `remarks`, `added_date`)
VALUES (1, 3, 2, 'fahwodhwaoidawhadw', '(1 - 3) SofrLms brand guideline.pdf', 'dawdawwa', 'reviewed', 80,
        'شد حيلك المره الجايه', '1725832800'),
       (2, 4, 2, 'awdadaw', '(1 - 4) Academy-LMS-Amazon-S3-Hosting-Addon-v1.0.txt', 'hello word', 'reviewed', 80, '90',
        '1725832800');

-- --------------------------------------------------------

--
-- Table structure for table `bbb_meetings`
--

CREATE TABLE `bbb_meetings`
(
    `id`           int(20) NOT NULL,
    `course_id`    int(11) NOT NULL,
    `meeting_id`   varchar(255) DEFAULT NULL,
    `moderator_pw` varchar(255) DEFAULT NULL,
    `viewer_pw`    varchar(255) DEFAULT NULL,
    `instructions` longtext     DEFAULT NULL,
    `created_at`   varchar(100) DEFAULT NULL,
    `updated_at`   varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs`
(
    `blog_id`          int(11) NOT NULL,
    `blog_category_id` int(11) NOT NULL,
    `user_id`          int(11) NOT NULL,
    `title`            varchar(255) NOT NULL,
    `keywords`         text         NOT NULL,
    `description`      longtext     NOT NULL,
    `thumbnail`        varchar(100) NOT NULL,
    `banner`           varchar(100) NOT NULL,
    `is_popular`       int(11) NOT NULL,
    `likes`            longtext     NOT NULL,
    `added_date`       varchar(100) NOT NULL,
    `updated_date`     varchar(100) NOT NULL,
    `status`           varchar(50)  NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE `blog_category`
(
    `blog_category_id` int(11) NOT NULL,
    `title`            varchar(255) NOT NULL,
    `subtitle`         varchar(255) NOT NULL,
    `slug`             varchar(255) NOT NULL,
    `added_date`       varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments`
(
    `blog_comment_id` int(11) NOT NULL,
    `blog_id`         int(11) NOT NULL,
    `user_id`         int(11) NOT NULL,
    `parent_id`       int(11) NOT NULL,
    `comment`         longtext     NOT NULL,
    `likes`           longtext     NOT NULL,
    `added_date`      varchar(100) NOT NULL,
    `updated_date`    varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bundle_payment`
--

CREATE TABLE `bundle_payment`
(
    `id`                int(11) UNSIGNED NOT NULL,
    `user_id`           int(11) DEFAULT NULL,
    `bundle_creator_id` int(11) DEFAULT NULL,
    `bundle_id`         int(11) DEFAULT NULL,
    `payment_method`    varchar(255) DEFAULT NULL,
    `session_id`        varchar(255) DEFAULT NULL,
    `transaction_id`    varchar(255) DEFAULT NULL,
    `amount`            int(11) DEFAULT 0,
    `date_added`        varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bundle_rating`
--

CREATE TABLE `bundle_rating`
(
    `id`         int(11) UNSIGNED NOT NULL,
    `user_id`    int(11) DEFAULT NULL,
    `bundle_id`  int(11) DEFAULT NULL,
    `comment`    longtext     DEFAULT NULL,
    `rating`     varchar(15)  DEFAULT NULL,
    `date_added` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category`
(
    `id`                     int(11) UNSIGNED NOT NULL,
    `code`                   varchar(255) DEFAULT NULL,
    `name`                   varchar(255) DEFAULT NULL,
    `parent`                 int(11) DEFAULT 0,
    `slug`                   varchar(255) DEFAULT NULL,
    `date_added`             int(11) DEFAULT NULL,
    `last_modified`          int(11) DEFAULT NULL,
    `font_awesome_class`     varchar(255) DEFAULT NULL,
    `thumbnail`              varchar(255) DEFAULT NULL,
    `sub_category_thumbnail` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `code`, `name`, `parent`, `slug`, `date_added`, `last_modified`, `font_awesome_class`,
                        `thumbnail`, `sub_category_thumbnail`)
VALUES (1, '7e26b834cb', 'dwa', 0, 'dwa', 1725854400, NULL, 'fab fa-accusoft', 'category-thumbnail.png', NULL),
       (2, '9f4c58675e', 'dawdaw', 1, 'dawdaw', 1725854400, NULL, 'fas fa-chess', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates`
(
    `id`            int(11) UNSIGNED NOT NULL,
    `student_id`    int(11) DEFAULT NULL,
    `course_id`     int(11) DEFAULT NULL,
    `shareable_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `certificates`
--

INSERT INTO `certificates` (`id`, `student_id`, `course_id`, `shareable_url`)
VALUES (1, 3, 1, 'f08e2cf1b1'),
       (2, 4, 1, '131642ad3b');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions`
(
    `id`         varchar(40) NOT NULL,
    `ip_address` varchar(45) NOT NULL,
    `timestamp`  int(10) UNSIGNED NOT NULL DEFAULT 0,
    `data`       blob        NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`)
VALUES ('cvjclq362h3m6dnbhbg95fj19b1u812h', '::1', 1727712969,
        0x5f5f63695f6c6173745f726567656e65726174657c693a313732373731323935353b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b5f5f63695f766172737c613a313a7b733a393a22636f756e7443616c6c223b733a333a226f6c64223b7d637573746f6d5f73657373696f6e5f6c696d69747c693a313732383537363936383b757365725f69647c733a313a2232223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a31333a224d61686d6f75642047616c616c223b69735f696e7374727563746f727c733a313a2231223b61646d696e5f6c6f67696e7c733a313a2231223b636f756e7443616c6c7c693a313b);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment`
(
    `id`               int(11) UNSIGNED NOT NULL,
    `body`             longtext    DEFAULT NULL,
    `user_id`          int(11) DEFAULT NULL,
    `commentable_id`   int(11) DEFAULT NULL,
    `commentable_type` varchar(50) DEFAULT NULL,
    `date_added`       int(11) DEFAULT NULL,
    `last_modified`    int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact`
(
    `id`         int(21) NOT NULL,
    `first_name` varchar(255) DEFAULT NULL,
    `last_name`  varchar(255) DEFAULT NULL,
    `email`      varchar(255) DEFAULT NULL,
    `phone`      varchar(255) DEFAULT NULL,
    `address`    text         DEFAULT NULL,
    `message`    text         DEFAULT NULL,
    `has_read`   int(11) DEFAULT NULL,
    `replied`    int(11) DEFAULT NULL,
    `created_at` varchar(100) DEFAULT NULL,
    `updated_at` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons`
(
    `id`                  bigint(20) UNSIGNED NOT NULL,
    `code`                varchar(255) DEFAULT NULL,
    `discount_percentage` varchar(255) DEFAULT NULL,
    `created_at`          int(11) DEFAULT NULL,
    `expiry_date`         int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course`
(
    `id`                       int(11) UNSIGNED NOT NULL,
    `title`                    varchar(255) DEFAULT NULL,
    `short_description`        longtext     DEFAULT NULL,
    `description`              longtext     DEFAULT NULL,
    `outcomes`                 longtext     DEFAULT NULL,
    `faqs`                     text NOT NULL,
    `language`                 varchar(255) DEFAULT NULL,
    `category_id`              int(11) DEFAULT NULL,
    `sub_category_id`          int(11) DEFAULT NULL,
    `section`                  longtext     DEFAULT NULL,
    `requirements`             longtext     DEFAULT NULL,
    `price` double DEFAULT NULL,
    `section_price` double DEFAULT NULL,
    `lesson_price` double DEFAULT NULL,
    `discount_flag`            int(11) DEFAULT 0,
    `discounted_price` double DEFAULT NULL,
    `level`                    varchar(50)  DEFAULT NULL,
    `user_id`                  varchar(255) DEFAULT NULL,
    `thumbnail`                varchar(255) DEFAULT NULL,
    `video_url`                varchar(255) DEFAULT NULL,
    `date_added`               int(11) DEFAULT NULL,
    `last_modified`            int(11) DEFAULT NULL,
    `course_type`              varchar(255) DEFAULT NULL,
    `is_top_course`            int(11) DEFAULT 0,
    `is_admin`                 int(11) DEFAULT NULL,
    `status`                   varchar(255) DEFAULT NULL,
    `course_overview_provider` varchar(255) DEFAULT NULL,
    `meta_keywords`            longtext     DEFAULT NULL,
    `meta_description`         longtext     DEFAULT NULL,
    `is_free_course`           int(11) DEFAULT NULL,
    `multi_instructor`         int(11) NOT NULL DEFAULT 0,
    `enable_drip_content`      int(11) NOT NULL,
    `creator`                  int(11) DEFAULT NULL,
    `expiry_period`            int(11) DEFAULT NULL,
    `upcoming_image_thumbnail` varchar(255) DEFAULT NULL,
    `publish_date`             varchar(500) DEFAULT NULL,
    `enable_certificate`       int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `title`, `short_description`, `description`, `outcomes`, `faqs`, `language`, `category_id`,
                      `sub_category_id`, `section`, `requirements`, `price`, `discount_flag`, `discounted_price`,
                      `level`, `user_id`, `thumbnail`, `video_url`, `date_added`, `last_modified`, `course_type`,
                      `is_top_course`, `is_admin`, `status`, `course_overview_provider`, `meta_keywords`,
                      `meta_description`, `is_free_course`, `multi_instructor`, `enable_drip_content`, `creator`,
                      `expiry_period`, `upcoming_image_thumbnail`, `publish_date`)
VALUES (1, 'dawddaw', 'dawdawdaw', '<p>dawddawdaw</p>', '[]', '[]', 'english', 1, 2, '[1]', '[]', 0, NULL, 0,
        'beginner', '2', NULL, '', 1725854400, 1725906317, 'general', 0, 1, 'active', '', '', '', 1, 0, 0, 2, NULL,
        NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `course_bundle`
--

CREATE TABLE `course_bundle`
(
    `id`                 int(11) UNSIGNED NOT NULL,
    `user_id`            int(11) DEFAULT NULL,
    `title`              varchar(255) DEFAULT NULL,
    `banner`             varchar(255) DEFAULT NULL,
    `course_ids`         longtext     DEFAULT NULL,
    `subscription_limit` int(11) DEFAULT NULL,
    `price`              int(11) DEFAULT 0,
    `bundle_details`     longtext     DEFAULT NULL,
    `status`             int(11) DEFAULT 0,
    `date_added`         varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_forum`
--

CREATE TABLE `course_forum`
(
    `id`              int(11) UNSIGNED NOT NULL,
    `user_id`         int(11) DEFAULT NULL,
    `course_id`       int(11) DEFAULT NULL,
    `title`           varchar(255) DEFAULT NULL,
    `description`     longtext     DEFAULT NULL,
    `upvoted_user_id` longtext     DEFAULT NULL,
    `is_parent`       int(11) DEFAULT 0,
    `date_added`      varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `course_forum`
--

INSERT INTO `course_forum` (`id`, `user_id`, `course_id`, `title`, `description`, `upvoted_user_id`, `is_parent`,
                            `date_added`)
VALUES (1, 3, 1, 'hello ? ', '<p>dwadawd</p>', '[\"4\"]', 0, '1725884518'),
       (2, 3, 1, 'awdawdwad', '<p>dawdawdaw</p>', '[\"3\",\"4\"]', 0, '1725905887'),
       (3, 4, 1, NULL, '<p>good&nbsp;</p><p><br></p>', NULL, 2, '1725906522');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency`
(
    `id`                 int(11) NOT NULL,
    `name`               varchar(255) DEFAULT NULL,
    `code`               varchar(255) DEFAULT NULL,
    `symbol`             varchar(255) DEFAULT NULL,
    `paypal_supported`   int(11) DEFAULT NULL,
    `stripe_supported`   int(11) DEFAULT NULL,
    `ccavenue_supported` int(11) DEFAULT 0,
    `iyzico_supported`   int(11) DEFAULT 0,
    `paystack_supported` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`,
                        `iyzico_supported`, `paystack_supported`)
VALUES (1, 'US Dollar', 'USD', '$', 1, 1, 0, 0, 0),
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
       ( 149, 'Tongan pa\'anga', 'TOP', '$', 1, 1, 0, 0, 0),
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
-- Table structure for table `ebook`
--

CREATE TABLE `ebook` (
  `ebook_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `publication_name` varchar(255) DEFAULT NULL,
  `edition` varchar(255) DEFAULT NULL,
  `discount_flag` int(11) DEFAULT NULL,
  `discounted_price` double NOT NULL,
  `price` double NOT NULL,
  `added_date` varchar(255) DEFAULT NULL,
  `updated_date` varchar(255) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `is_free` int(11) DEFAULT NULL,
  `preview` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
(1, 3, 1, 0, NULL, 1725854400, NULL),
(2, 4, 1, 0, NULL, 1725854400, NULL);

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
(2, 'banner_sub_title', 'Study any topic, anytime.Explore thousands of courses for the lowest price ever!'),
(4, 'about_us', '<p></p><h2><span xss=\"removed\">About us</span></h2>'),
(10, 'terms_and_condition', '<h2>Terms and Condition</h2>'),
        (11, 'privacy_policy', '<p></p><p></p><h2><span xss=\"removed\">Privacy Policy</span></h2>'),
        (13, 'theme', 'default-new'),
        (14, 'cookie_note',
         'This website uses cookies to personalize content and analyse traffic in order to offer you a better experience.'),
        (15, 'cookie_status', 'active'),
        (16, 'cookie_policy',
         '<h1>Cookie policy</h1><ol><li>Cookies are small text files that can be used by websites to make a user\'s experience more efficient.</li><li>The law states that we can store cookies on your device if they are strictly necessary for the operation of this site. For all other types of cookies we need your permission.</li><li>This site uses different types of cookies. Some cookies are placed by third party services that appear on our pages.</li></ol>'),
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
         (32, 'blog_page_subtitle',
          'We’re a leading marketplace platform for learning and teaching online. Explore some of our most popular content and learn something new.'),
         (33, 'blog_page_banner', 'blog-page.png'),
         (34, 'instructors_blog_permission', '0'),
         (35, 'blog_visibility_on_the_home_page', '1'),
         (37, 'website_faqs', '[]'),
         (38, 'motivational_speech', '[]'),
         (39, 'home_page', 'home_1'),
         (40, 'contact_info',
          '{\"email\":\"admin@example.com,\\r\\nsystem@example.com\",\"phone\":\"609-502-5899\\r\\n345-444-2122\",\"address\":\"455 Wolff Streets Suite 674\",\"office_hours\":\"10:00 AM - 6:00 PM\"}'),
         (41, 'custom_css', ''),
         (42, 'embed_code', ''),
         (43, 'top_course_section', '1'),
         (44, 'latest_course_section', '1'),
         (45, 'top_category_section', '1'),
         (46, 'upcoming_course_section', '1'),
         (47, 'faq_section', '1'),
         (48, 'top_instructor_section', '1'),
         (49, 'motivational_speech_section', '1'),
         (50, 'promotional_section', '1');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language`
(
    `phrase_id` int(11) NOT NULL,
    `phrase`    longtext DEFAULT NULL,
    `english`   longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`phrase_id`, `phrase`, `english`)
VALUES (1, 'English', 'English'),
       (2, '404_not_found', '404 not found'),
       (3, 'courses', 'Courses'),
       (4, 'all_courses', 'All courses'),
       (5, 'all_courses', 'All courses'),
       (6, 'all_courses', 'All courses'),
       (7, 'search', 'Search'),
       (8, 'search', 'Search'),
       (9, 'search', 'Search'),
       (10, 'search', 'Search'),
       (11, 'search', 'Search'),
       (12, 'search', 'Search'),
       (13, 'you_have_no_items_in_your_cart!', 'You have no items in your cart!'),
       (14, 'you_have_no_items_in_your_cart!', 'You have no items in your cart!'),
       (15, 'you_have_no_items_in_your_cart!', 'You have no items in your cart!'),
       (16, 'you_have_no_items_in_your_cart!', 'You have no items in your cart!'),
       (17, 'you_have_no_items_in_your_cart!', 'You have no items in your cart!'),
       (18, 'you_have_no_items_in_your_cart!', 'You have no items in your cart!'),
       (19, 'checkout', 'Checkout'),
       (20, 'checkout', 'Checkout'),
       (21, 'checkout', 'Checkout'),
       (22, 'login', 'Login'),
       (23, 'login', 'Login'),
       (24, 'login', 'Login'),
       (25, 'join_now', 'Join now'),
       (26, 'join_now', 'Join now'),
       (27, 'join_now', 'Join now'),
       (28, 'join_now', 'Join now'),
       (29, 'join_now', 'Join now'),
       (30, 'join_now', 'Join now'),
       (31, 'sign_up', 'Sign up'),
       (32, 'cart', 'Cart'),
       (33, 'cart', 'Cart'),
       (34, 'cart', 'Cart'),
       (35, 'categories', 'Categories'),
       (36, 'categories', 'Categories'),
       (37, 'categories', 'Categories'),
       (38, 'categories', 'Categories'),
       (39, 'cookie_policy', 'Cookie policy'),
       (40, 'cookie_policy', 'Cookie policy'),
       (41, 'cookie_policy', 'Cookie policy'),
       (42, 'cookie_policy', 'Cookie policy'),
       (43, 'accept', 'Accept'),
       (44, 'accept', 'Accept'),
       (45, 'accept', 'Accept'),
       (46, 'accept', 'Accept'),
       (47, 'accept', 'Accept'),
       (48, 'accept', 'Accept'),
       (49, 'home', 'Home'),
       (50, 'the_page_you_requested_could_not_be_found', 'The page you requested could not be found'),
       (51, 'the_page_you_requested_could_not_be_found', 'The page you requested could not be found'),
       (52, 'the_page_you_requested_could_not_be_found', 'The page you requested could not be found'),
       (53, 'check_the_spelling_of_the_url', 'Check the spelling of the url'),
       (54, 'check_the_spelling_of_the_url', 'Check the spelling of the url'),
       (55, 'check_the_spelling_of_the_url', 'Check the spelling of the url'),
       (56, 'check_the_spelling_of_the_url', 'Check the spelling of the url'),
       (57, 'if_you_are_still_puzzled,_click_on_the_home_link_below',
        'If you are still puzzled, click on the home link below'),
       (58, 'if_you_are_still_puzzled,_click_on_the_home_link_below',
        'If you are still puzzled, click on the home link below'),
       (59, 'if_you_are_still_puzzled,_click_on_the_home_link_below',
        'If you are still puzzled, click on the home link below'),
       (60, 'if_you_are_still_puzzled,_click_on_the_home_link_below',
        'If you are still puzzled, click on the home link below'),
       (61, 'if_you_are_still_puzzled,_click_on_the_home_link_below',
        'If you are still puzzled, click on the home link below'),
       (62, 'if_you_are_still_puzzled,_click_on_the_home_link_below',
        'If you are still puzzled, click on the home link below'),
       (63, 'back_to_home', 'Back to home'),
       (64, 'back_to_home', 'Back to home'),
       (65, 'back_to_home', 'Back to home'),
       (66, 'back_to_home', 'Back to home'),
       (67, 'back_to_home', 'Back to home'),
       (68, 'back_to_home', 'Back to home'),
       (69, 'top_categories', 'Top categories'),
       (70, 'useful_links', 'Useful links'),
       (71, 'useful_links', 'Useful links'),
       (72, 'useful_links', 'Useful links'),
       (73, 'useful_links', 'Useful links'),
       (74, 'useful_links', 'Useful links'),
       (75, 'useful_links', 'Useful links'),
       (76, 'become_an_instructor', 'Become an instructor'),
       (77, 'become_an_instructor', 'Become an instructor'),
       (78, 'become_an_instructor', 'Become an instructor'),
       (79, 'become_an_instructor', 'Become an instructor'),
       (80, 'blog', 'Blog'),
       (81, 'blog', 'Blog'),
       (82, 'blog', 'Blog'),
       (83, 'blog', 'Blog'),
       (84, 'blog', 'Blog'),
       (85, 'help', 'Help'),
       (86, 'help', 'Help'),
       (87, 'help', 'Help'),
       (88, 'help', 'Help'),
       (89, 'help', 'Help'),
       (90, 'help', 'Help'),
       (91, 'contact_us', 'Contact us'),
       (92, 'contact_us', 'Contact us'),
       (93, 'contact_us', 'Contact us'),
       (94, 'contact_us', 'Contact us'),
       (95, 'contact_us', 'Contact us'),
       (96, 'contact_us', 'Contact us'),
       (97, 'about_us', 'About us'),
       (98, 'about_us', 'About us'),
       (99, 'about_us', 'About us'),
       (100, 'about_us', 'About us'),
       (101, 'privacy_policy', 'Privacy policy'),
       (102, 'privacy_policy', 'Privacy policy'),
       (103, 'privacy_policy', 'Privacy policy'),
       (104, 'privacy_policy', 'Privacy policy'),
       (105, 'privacy_policy', 'Privacy policy'),
       (106, 'privacy_policy', 'Privacy policy'),
       (107, 'terms_and_condition', 'Terms and condition'),
       (108, 'terms_and_condition', 'Terms and condition'),
       (109, 'terms_and_condition', 'Terms and condition'),
       (110, 'terms_and_condition', 'Terms and condition'),
       (111, 'terms_and_condition', 'Terms and condition'),
       (112, 'terms_and_condition', 'Terms and condition'),
       (113, 'faq', 'Faq'),
       (114, 'faq', 'Faq'),
       (115, 'faq', 'Faq'),
       (116, 'faq', 'Faq'),
       (117, 'faq', 'Faq'),
       (118, 'refund_policy', 'Refund policy'),
       (119, 'refund_policy', 'Refund policy'),
       (120, 'refund_policy', 'Refund policy'),
       (121, 'refund_policy', 'Refund policy'),
       (122, 'refund_policy', 'Refund policy'),
       (123, 'subscribe_to_our_newsletter', 'Subscribe to our newsletter'),
       (124, 'subscribe_to_our_newsletter', 'Subscribe to our newsletter'),
       (125, 'subscribe_to_our_newsletter', 'Subscribe to our newsletter'),
       (126, 'subscribe_to_our_newsletter', 'Subscribe to our newsletter'),
       (127, 'subscribe_to_our_newsletter', 'Subscribe to our newsletter'),
       (128, 'subscribe_to_our_newsletter', 'Subscribe to our newsletter'),
       (129, 'enter_your_email_address', 'Enter your email address'),
       (130, 'enter_your_email_address', 'Enter your email address'),
       (131, 'enter_your_email_address', 'Enter your email address'),
       (132, 'enter_your_email_address', 'Enter your email address'),
       (133, 'enter_your_email_address', 'Enter your email address'),
       (134, 'enter_your_email_address', 'Enter your email address'),
       (135, 'creativeitem', 'Creativeitem'),
       (136, 'creativeitem', 'Creativeitem'),
       (137, 'creativeitem', 'Creativeitem'),
       (138, 'creativeitem', 'Creativeitem'),
       (139, 'creativeitem', 'Creativeitem'),
       (140, 'are_you_sure', 'Are you sure'),
       (141, 'are_you_sure', 'Are you sure'),
       (142, 'yes', 'Yes'),
       (143, 'yes', 'Yes'),
       (144, 'yes', 'Yes'),
       (145, 'no', 'No'),
       (146, 'no', 'No'),
       (147, 'no', 'No'),
       (148, 'no', 'No'),
       (149, 'log_in', 'Log in'),
       (150, 'explore,_learn,_and_grow_with_us._enjoy_a_seamless_and_enriching_educational_journey._lets_begin!',
        'Explore, learn, and grow with us. enjoy a seamless and enriching educational journey. lets begin!'),
       (151, 'your_email', 'Your email'),
       (152, 'enter_your_email', 'Enter your email'),
       (153, 'password', 'Password'),
       (154, 'enter_your_valid_password', 'Enter your valid password'),
       (155, 'forgot_password?', 'Forgot password?'),
       (156, 'don`t_have_an_account?', 'Don`t have an account?'),
       (157, 'or', 'Or'),
       (158, 'welcome', 'Welcome'),
       (159, 'dashboard', 'Dashboard'),
       (160, 'quick_actions', 'Quick actions'),
       (161, 'create_course', 'Create course'),
       (162, 'add_course', 'Add course'),
       (163, 'add_new_lesson', 'Add new lesson'),
       (164, 'add_lesson', 'Add lesson'),
       (165, 'add_student', 'Add student'),
       (166, 'enrol_a_student', 'Enrol a student'),
       (167, 'enrol_student', 'Enrol student'),
       (168, 'help_center', 'Help center'),
       (169, 'read_documentation', 'Read documentation'),
       (170, 'watch_video_tutorial', 'Watch video tutorial'),
       (171, 'get_customer_support', 'Get customer support'),
       (172, 'order_customization', 'Order customization'),
       (173, 'request_a_new_feature', 'Request a new feature'),
       (174, 'browse_addons', 'Browse addons'),
       (175, 'get_services', 'Get services'),
       (176, 'remove_all', 'Remove all'),
       (177, 'notification', 'Notification'),
       (178, 'no_notification', 'No notification'),
       (179, 'stay_tuned!', 'Stay tuned!'),
       (180, 'notifications_about_your_activity_will_show_up_here.',
        'Notifications about your activity will show up here.'),
       (181, 'notification_settings', 'Notification settings'),
       (182, 'mark_all_as_read', 'Mark all as read'),
       (183, 'admin', 'Admin'),
       (184, 'my_account', 'My account'),
       (185, 'settings', 'Settings'),
       (186, 'logout', 'Logout'),
       (187, 'visit_website', 'Visit website'),
       (188, 'navigation', 'Navigation'),
       (189, 'manage_courses', 'Manage courses'),
       (190, 'add_new_course', 'Add new course'),
       (191, 'course_category', 'Course category'),
       (192, 'coupons', 'Coupons'),
       (193, 'enrollments', 'Enrollments'),
       (194, 'course_enrollment', 'Course enrollment'),
       (195, 'enrol_history', 'Enrol history'),
       (196, 'report', 'Report'),
       (197, 'admin_revenue', 'Admin revenue'),
       (198, 'instructor_revenue', 'Instructor revenue'),
       (199, 'purchase_history', 'Purchase history'),
       (200, 'users', 'Users'),
       (201, 'admins', 'Admins'),
       (202, 'manage_admins', 'Manage admins'),
       (203, 'add_new_admin', 'Add new admin'),
       (204, 'instructors', 'Instructors'),
       (205, 'manage_instructors', 'Manage instructors'),
       (206, 'add_new_instructor', 'Add new instructor'),
       (207, 'instructor_payout', 'Instructor payout'),
       (208, 'instructor_settings', 'Instructor settings'),
       (209, 'applications', 'Applications'),
       (210, 'students', 'Students'),
       (211, 'manage_students', 'Manage students'),
       (212, 'add_new_student', 'Add new student'),
       (213, 'message', 'Message'),
       (214, 'newsletter', 'Newsletter'),
       (215, 'all_newsletter', 'All newsletter'),
       (216, 'subscribed_user', 'Subscribed user'),
       (217, 'contact', 'Contact'),
       (218, 'all_blogs', 'All blogs'),
       (219, 'pending_blog', 'Pending blog'),
       (220, 'blog_category', 'Blog category'),
       (221, 'blog_settings', 'Blog settings'),
       (222, 'addons', 'Addons'),
       (223, 'themes', 'Themes'),
       (224, 'system_settings', 'System settings'),
       (225, 'website_settings', 'Website settings'),
       (226, 'academy_cloud', 'Academy cloud'),
       (227, 'drip_content_settings', 'Drip content settings'),
       (228, 'wasabi_storage_settings', 'Wasabi storage settings'),
       (229, 'bbb_live_class_settings', 'Bbb live class settings'),
       (230, 'payment_settings', 'Payment settings'),
       (231, 'language_settings', 'Language settings'),
       (232, 'social_login', 'Social login'),
       (233, 'custom_page_builder', 'Custom page builder'),
       (234, 'data_center', 'Data center'),
       (235, 'about', 'About'),
       (236, 'manage_profile', 'Manage profile'),
       (237, 'admin_revenue_this_year', 'Admin revenue this year'),
       (238, 'number_courses', 'Number courses'),
       (239, 'number_of_lessons', 'Number of lessons'),
       (240, 'number_of_enrolment', 'Number of enrolment'),
       (241, 'number_of_student', 'Number of student'),
       (242, 'course_overview', 'Course overview'),
       (243, 'active_courses', 'Active courses'),
       (244, 'pending_courses', 'Pending courses'),
       (245, 'requested_withdrawal', 'Requested withdrawal'),
       (246, 'january', 'January'),
       (247, 'february', 'February'),
       (248, 'march', 'March'),
       (249, 'april', 'April'),
       (250, 'may', 'May'),
       (251, 'june', 'June'),
       (252, 'july', 'July'),
       (253, 'august', 'August'),
       (254, 'september', 'September'),
       (255, 'october', 'October'),
       (256, 'november', 'November'),
       (257, 'december', 'December'),
       (258, 'this_year', 'This year'),
       (259, 'active_course', 'Active course'),
       (260, 'pending_course', 'Pending course'),
       (261, 'heads_up', 'Heads up'),
       (262, 'congratulations', 'Congratulations'),
       (263, 'oh_snap', 'Oh snap'),
       (264, 'please_fill_all_the_required_fields', 'Please fill all the required fields'),
       (265, 'close', 'Close'),
       (266, 'cancel', 'Cancel'),
       (267, 'continue', 'Continue'),
       (268, 'ok', 'Ok'),
       (269, 'success', 'Success'),
       (270, 'your_server_does_not_allow_uploading_files_that_large.',
        'Your server does not allow uploading files that large.'),
       (271, 'your_servers_file_upload_limit_is_40mb', 'Your servers file upload limit is 40mb'),
       (272, 'successfully', 'Successfully'),
       (273, 'div_added_to_bottom_', 'Div added to bottom '),
       (274, 'div_has_been_deleted_', 'Div has been deleted '),
       (275, 'not_found', 'Not found'),
       (276, 'about_this_application', 'About this application'),
       (277, 'software_version', 'Software version'),
       (278, 'check_update', 'Check update'),
       (279, 'php_version', 'Php version'),
       (280, 'curl_enable', 'Curl enable'),
       (281, 'enabled', 'Enabled'),
       (282, 'purchase_code', 'Purchase code'),
       (283, 'product_license', 'Product license'),
       (284, 'invalid', 'Invalid'),
       (285, 'enter_valid_purchase_code', 'Enter valid purchase code'),
       (286, 'customer_support_status', 'Customer support status'),
       (287, 'support_expiry_date', 'Support expiry date'),
       (288, 'customer_name', 'Customer name'),
       (289, 'customer_support', 'Customer support'),
       (290, 'our_premium_services', 'Our premium services'),
       (291, 'website_name', 'Website name'),
       (292, 'website_title', 'Website title'),
       (293, 'website_keywords', 'Website keywords'),
       (294, 'website_description', 'Website description'),
       (295, 'author', 'Author'),
       (296, 'slogan', 'Slogan'),
       (297, 'system_email', 'System email'),
       (298, 'address', 'Address'),
       (299, 'phone', 'Phone'),
       (300, 'youtube_api_key', 'Youtube api key'),
       (301, 'get_youtube_api_key', 'Get youtube api key'),
       (302, 'if_you_want_to_use_google_drive_video,_you_need_to_enable_the_google_drive_service_in_this_api',
        'If you want to use google drive video, you need to enable the google drive service in this api'),
       (303, 'vimeo_api_key', 'Vimeo api key'),
       (304, 'get_vimeo_api_key', 'Get vimeo api key'),
       (305, 'system_language', 'System language'),
       (306, 'student_email_verification', 'Student email verification'),
       (307, 'enable', 'Enable'),
       (308, 'disable', 'Disable'),
       (309, 'course_accessibility', 'Course accessibility'),
       (310, 'publicly', 'Publicly'),
       (311, 'only_logged_in_users', 'Only logged in users'),
       (312, 'number_of_authorized_devices', 'Number of authorized devices'),
       (313, 'how_many_devices_do_you_want_to_allow_for_logging_in_using_a_single_account',
        'How many devices do you want to allow for logging in using a single account'),
       (314, 'course_selling_tax', 'Course selling tax'),
       (315, 'enter_0_if_you_want_to_disable_the_tax_option', 'Enter 0 if you want to disable the tax option'),
       (316, 'google_analytics_id', 'Google analytics id'),
       (317, 'keep_it_blank_if_you_want_to_disable_it', 'Keep it blank if you want to disable it'),
       (318, 'meta_pixel_id', 'Meta pixel id'),
       (319, 'footer_text', 'Footer text'),
       (320, 'footer_link', 'Footer link'),
       (321, 'timezone', 'Timezone'),
       (322, 'can_students_disable_their_own_accounts?', 'Can students disable their own accounts?'),
       (323, 'save', 'Save'),
       (324, 'update_product', 'Update product'),
       (325, 'file', 'File'),
       (326, 'update', 'Update'),
       (327, 'product_updated_successfully', 'Product updated successfully'),
       (328, 'administration', 'Administration'),
       (329, 'log_out', 'Log out'),
       (330, 'start_learning_from_best_platform', 'Start learning from best platform'),
       (331, 'study_any_topic,_anytime._explore_thousands_of_courses_for_the_lowest_price_ever!',
        'Study any topic, anytime. explore thousands of courses for the lowest price ever!'),
       (332, 'what_do_you_want_to_learn', 'What do you want to learn'),
       (333, 'expert_instruction', 'Expert instruction'),
       (334, 'find_the_right_course_for_you', 'Find the right course for you'),
       (335, 'online_courses', 'Online courses'),
       (336, 'explore_a_variety_of_fresh_topics', 'Explore a variety of fresh topics'),
       (337, 'lifetime_access', 'Lifetime access'),
       (338, 'learn_on_your_schedule', 'Learn on your schedule'),
       (339, 'top_courses', 'Top courses'),
       (340, 'these_are_the_most_popular_courses_among_listen_courses_learners_worldwide',
        'These are the most popular courses among listen courses learners worldwide'),
       (341, 'top', 'Top'),
       (342, 'latest_courses', 'Latest courses'),
       (343, 'these_are_the_most_latest_courses_among_listen_courses_learners_worldwide',
        'These are the most latest courses among listen courses learners worldwide'),
       (344, 'learn', 'Learn'),
       (345, 'new_skills_when_and_where_you_like.', 'New skills when and where you like.'),
       (346, 'discover_a_world_of_learning_opportunities_through_our_upcoming_courses,_where_industry_experts.',
        'Discover a world of learning opportunities through our upcoming courses, where industry experts.'),
       (347, 'join_course_for_free', 'Join course for free'),
       (348, 'became_a_instructor', 'Became a instructor'),
       (349, 'join_now_to_start_learning', 'Join now to start learning'),
       (350, 'learn_from_our_quality_instructors!', 'Learn from our quality instructors!'),
       (351, 'get_started', 'Get started'),
       (352, 'become_a_new_instructor', 'Become a new instructor'),
       (353, 'teach_thousands_of_students_and_earn_money!', 'Teach thousands of students and earn money!'),
       (354, 'course_adding_form', 'Course adding form'),
       (355, 'back_to_course_list', 'Back to course list'),
       (356, 'basic', 'Basic'),
       (357, 'info', 'Info'),
       (358, 'pricing', 'Pricing'),
       (359, 'media', 'Media'),
       (360, 'seo', 'Seo'),
       (361, 'finish', 'Finish'),
       (362, 'course_title', 'Course title'),
       (363, 'enter_course_title', 'Enter course title'),
       (364, 'short_description', 'Short description'),
       (365, 'description', 'Description'),
       (366, 'category', 'Category'),
       (367, 'select_a_category', 'Select a category'),
       (368, 'select_sub_category', 'Select sub category'),
       (369, 'level', 'Level'),
       (370, 'beginner', 'Beginner'),
       (371, 'advanced', 'Advanced'),
       (372, 'intermediate', 'Intermediate'),
       (373, 'language_made_in', 'Language made in'),
       (374, 'enable_drip_content', 'Enable drip content'),
       (375, 'create_as_a', 'Create as a'),
       (376, 'private_course', 'Private course'),
       (377, 'upcoming_course', 'Upcoming course'),
       (378, 'upcoming_image_thumbnail', 'Upcoming image thumbnail'),
       (379, 'the_image_size_should_be', 'The image size should be'),
       (380, 'publish_date', 'Publish date'),
       (381, 'enter_publish_date', 'Enter publish date'),
       (382, 'check_if_this_course_is_top_course', 'Check if this course is top course'),
       (383, 'course_faq', 'Course faq'),
       (384, 'faq_question', 'Faq question'),
       (385, 'answer', 'Answer'),
       (386, 'requirements', 'Requirements'),
       (387, 'provide_requirements', 'Provide requirements'),
       (388, 'outcomes', 'Outcomes'),
       (389, 'provide_outcomes', 'Provide outcomes'),
       (390, 'check_if_this_is_a_free_course', 'Check if this is a free course'),
       (391, 'course_price', 'Course price'),
       (392, 'enter_course_course_price', 'Enter course course price'),
       (393, 'check_if_this_course_has_discount', 'Check if this course has discount'),
       (394, 'discounted_price', 'Discounted price'),
       (395, 'this_course_has', 'This course has'),
       (396, 'discount', 'Discount'),
       (397, 'expiry_period', 'Expiry period'),
       (398, 'lifetime', 'Lifetime'),
       (399, 'limited_time', 'Limited time'),
       (400, 'number_of_month', 'Number of month'),
       (401, 'after_purchase,_students_can_access_the_course_until_your_selected_time.',
        'After purchase, students can access the course until your selected time.'),
       (402, 'course_overview_provider', 'Course overview provider'),
       (403, 'youtube', 'Youtube'),
       (404, 'vimeo', 'Vimeo'),
       (405, 'html5', 'Html5'),
       (406, 'course_overview_url', 'Course overview url'),
       (407, 'course_thumbnail', 'Course thumbnail'),
       (408, 'meta_keywords', 'Meta keywords'),
       (409, 'write_a_keyword_and_then_press_enter_button', 'Write a keyword and then press enter button'),
       (410, 'meta_description', 'Meta description'),
       (411, 'thank_you', 'Thank you'),
       (412, 'you_are_just_one_click_away', 'You are just one click away'),
       (413, 'submit', 'Submit'),
       (414, 'bigbluebutton_live_class_settings', 'Bigbluebutton live class settings'),
       (415, 'bigbluebutton_endpoint', 'Bigbluebutton endpoint'),
       (416, 'bigbluebutton_shared_secret_or_salt', 'Bigbluebutton shared secret or salt'),
       (417, 'save_changes', 'Save changes'),
       (418, 'website_notification', 'Website notification'),
       (419, 'smtp_settings', 'Smtp settings'),
       (420, 'email_template', 'Email template'),
       (421, 'protocol', 'Protocol'),
       (422, 'smtp_crypto', 'Smtp crypto'),
       (423, 'smtp_host', 'Smtp host'),
       (424, 'smtp_port', 'Smtp port'),
       (425, 'smtp_from_email', 'Smtp from email'),
       (426, 'smtp_username', 'Smtp username'),
       (427, 'smtp_password', 'Smtp password'),
       (428, 'email_type', 'Email type'),
       (429, 'email_subject', 'Email subject'),
       (430, 'action', 'Action'),
       (431, 'to_admin', 'To admin'),
       (432, 'to_user', 'To user'),
       (433, 'edit_email_template', 'Edit email template'),
       (434, 'to_instructor', 'To instructor'),
       (435, 'to_student', 'To student'),
       (436, 'to_affiliator', 'To affiliator'),
       (437, 'to_payer', 'To payer'),
       (438, 'to_receiver', 'To receiver'),
       (439, 'configure_your_notification_settings', 'Configure your notification settings'),
       (440, 'new_user_registration', 'New user registration'),
       (441, 'get_notified_when_a_new_user_signs_up', 'Get notified when a new user signs up'),
       (442, 'configure_for_admin', 'Configure for admin'),
       (443, 'system_notification', 'System notification'),
       (444, 'email_notification', 'Email notification'),
       (445, 'configure_for_user', 'Configure for user'),
       (446, 'email_verification', 'Email verification'),
       (447, 'not_editable', 'Not editable'),
       (448, 'it_is_permanently_enabled_for_student_email_verification.',
        'It is permanently enabled for student email verification.'),
       (449, 'forgot_password_mail', 'Forgot password mail'),
       (450, 'account_security_alert', 'Account security alert'),
       (451, 'send_verification_code_for_login_from_a_new_device',
        'Send verification code for login from a new device'),
       (452, 'course_purchase_notification', 'Course purchase notification'),
       (453, 'stay_up-to-date_on_student_course_purchases.', 'Stay up-to-date on student course purchases.'),
       (454, 'configure_for_student', 'Configure for student'),
       (455, 'configure_for_instructor', 'Configure for instructor'),
       (456, 'course_completion_mail', 'Course completion mail'),
       (457, 'stay_up_to_date_on_student_course_completion.', 'Stay up to date on student course completion.'),
       (458, 'course_gift_notification', 'Course gift notification'),
       (459, 'notify_users_after_course_gift', 'Notify users after course gift'),
       (460, 'configure_for_payer', 'Configure for payer'),
       (461, 'configure_for_receiver', 'Configure for receiver'),
       (462, 'custom_pages', 'Custom pages'),
       (463, 'add_a_new_page', 'Add a new page'),
       (464, 'page_title', 'Page title'),
       (465, 'button_title', 'Button title'),
       (466, 'button_position', 'Button position'),
       (467, 'actions', 'Actions'),
       (468, 'add_custom_page', 'Add custom page'),
       (469, 'add_your_new_page', 'Add your new page'),
       (470, 'page_information', 'Page information'),
       (471, 'enter_page_title', 'Enter page title'),
       (472, 'page_content', 'Page content'),
       (473, 'footer', 'Footer'),
       (474, 'header', 'Header'),
       (475, 'page_url', 'Page url'),
       (476, 'add_page', 'Add page'),
       (477, 'import_your_data', 'Import your data'),
       (478, 'choose_your_demo_file', 'Choose your demo file'),
       (479, 'import', 'Import'),
       (480, 'backup_your_website', 'Backup your website'),
       (481, 'backup_your_current_data', 'Backup your current data'),
       (482, 'keep_a_backup', 'Keep a backup'),
       (483, 'no_backup', 'No backup'),
       (484, 'contact_users', 'Contact users'),
       (485, 'name', 'Name'),
       (486, 'addon_manager', 'Addon manager'),
       (487, 'buy_new_addon', 'Buy new addon'),
       (488, 'install_addon', 'Install addon'),
       (489, 'installed_addons', 'Installed addons'),
       (490, 'available_addons', 'Available addons'),
       (491, 'version', 'Version'),
       (492, 'status', 'Status'),
       (493, 'basic_info', 'Basic info'),
       (494, 'first_name', 'First name'),
       (495, 'last_name', 'Last name'),
       (496, 'email', 'Email'),
       (497, 'facebook_link', 'Facebook link'),
       (498, 'twitter_link', 'Twitter link'),
       (499, 'linkedin_link', 'Linkedin link'),
       (500, 'a_short_title_about_yourself', 'A short title about yourself'),
       (501, 'skills', 'Skills'),
       (502, 'write_your_skill_and_click_the_enter_button', 'Write your skill and click the enter button'),
       (503, 'biography', 'Biography'),
       (504, 'photo', 'Photo'),
       (505, 'the_image_size_should_be_any_square_image', 'The image size should be any square image'),
       (506, 'choose_file', 'Choose file'),
       (507, 'update_profile', 'Update profile'),
       (508, 'current_password', 'Current password'),
       (509, 'new_password', 'New password'),
       (510, 'confirm_new_password', 'Confirm new password'),
       (511, 'update_password', 'Update password'),
       (512, 'upcoming_courses', 'Upcoming courses'),
       (513, 'free_courses', 'Free courses'),
       (514, 'paid_courses', 'Paid courses'),
       (515, 'course_list', 'Course list'),
       (516, 'all', 'All'),
       (517, 'active', 'Active'),
       (518, 'pending', 'Pending'),
       (519, 'private', 'Private'),
       (520, 'upcoming', 'Upcoming'),
       (521, 'instructor', 'Instructor'),
       (522, 'price', 'Price'),
       (523, 'free', 'Free'),
       (524, 'paid', 'Paid'),
       (525, 'filter', 'Filter'),
       (526, 'title', 'Title'),
       (527, 'lesson_and_section', 'Lesson and section'),
       (528, 'enrolled_student', 'Enrolled student'),
       (529, 'add_addon', 'Add addon'),
       (530, 'install_an_addon', 'Install an addon'),
       (531, 'back_to_addon_list', 'Back to addon list'),
       (532, 'upload_addon_file', 'Upload addon file'),
       (533, 'zip_file', 'Zip file'),
       (534, 'back', 'Back'),
       (535, 'addon_installed_successfully', 'Addon installed successfully'),
       (536, 'certificate_settings', 'Certificate settings'),
       (537, 'addon_update', 'Addon update'),
       (538, 'deactive', 'Deactive'),
       (539, 'delete', 'Delete'),
       (540, 'about_this_addon', 'About this addon'),
       (541, 'certificate_template_text', 'Certificate template text'),
       (542, 'and', 'And'),
       (543, 'represents_student_name_and_course_title_on_the_certificate',
        'Represents student name and course title on the certificate'),
       (544, 'certificate_template', 'Certificate template'),
       (545, 'make_sure_that_template_size_is_less_than', 'Make sure that template size is less than'),
       (546, 'certificate_text_position', 'Certificate text position'),
       (547, 'you_must_update_the_text_position_after_updating_the_certificate_template_text',
        'You must update the text position after updating the certificate template text'),
       (548, 'edit_text_position', 'Edit text position'),
       (549, 'certificates_text_position', 'Certificates text position'),
       (550, 'attention', 'Attention'),
       (551, 'you_can_change_the_text_positions_by_drag_and_drop',
        'You can change the text positions by drag and drop'),
       (552, 'drag_out_of_the_certificate_layout_to_keep_an_object_hidden',
        'Drag out of the certificate layout to keep an object hidden'),
       (553, 'after_changing_your_text_positions,_click_the_save_button_to_save_the_parts',
        'After changing your text positions, click the save button to save the parts'),
       (554, 'please_wait', 'Please wait'),
       (555, 'offline_payment', 'Offline payment'),
       (556, 'pending_request', 'Pending request'),
       (557, 'accepted_request', 'Accepted request'),
       (558, 'suspended_request', 'Suspended request'),
       (559, 'offline_payment_settings', 'Offline payment settings'),
       (560, 'enrolled_course', 'Enrolled course'),
       (561, 'total_amount', 'Total amount'),
       (562, 'enrolment_date', 'Enrolment date'),
       (563, 'add_admin', 'Add admin'),
       (564, 'root_admin', 'Root admin'),
       (565, 'private_messaging', 'Private messaging'),
       (566, 'private_message', 'Private message'),
       (567, 'new_message', 'New message'),
       (568, 'choose_an_option_from_the_left_side', 'Choose an option from the left side'),
       (569, 'theme_settings', 'Theme settings'),
       (570, 'buy_new_theme', 'Buy new theme'),
       (571, 'upload_your_theme_file', 'Upload your theme file'),
       (572, 'installed_themes', 'Installed themes'),
       (573, 'add_new_themes', 'Add new themes'),
       (574, 'active_theme', 'Active theme'),
       (575, 'theme_successfully_activated', 'Theme successfully activated'),
       (576, 'you_do_not_have_right_to_access_this_theme', 'You do not have right to access this theme'),
       (577, 'frontend_settings', 'Frontend settings'),
       (578, 'home_layout', 'Home layout'),
       (579, 'home_page_settings', 'Home page settings'),
       (580, 'website_faqs', 'Website faqs'),
       (581, 'contact_information', 'Contact information'),
       (582, 'recaptcha', 'Recaptcha'),
       (583, 'logo_&_images', 'Logo & images'),
       (584, 'custom_codes', 'Custom codes'),
       (585, 'frontend_website_settings', 'Frontend website settings'),
       (586, 'banner_title', 'Banner title'),
       (587, 'banner_sub_title', 'Banner sub title'),
       (588, 'cookie_status', 'Cookie status'),
       (589, 'inactive', 'Inactive'),
       (590, 'cookie_note', 'Cookie note'),
       (591, 'facebook', 'Facebook'),
       (592, 'twitter', 'Twitter'),
       (593, 'linkedin', 'Linkedin'),
       (594, 'update_settings', 'Update settings'),
       (595, 'activated', 'Activated'),
       (596, 'motivational_speech', 'Motivational speech'),
       (597, 'image', 'Image'),
       (598, 'upload_image', 'Upload image'),
       (599, 'home_page_section', 'Home page section'),
       (600, 'upcoming_course_section', 'Upcoming course section'),
       (601, 'top_course_section', 'Top course section'),
       (602, 'latest_course_section', 'Latest course section'),
       (603, 'top_category_section', 'Top category section'),
       (604, 'top_instructor_section', 'Top instructor section'),
       (605, 'faq_section', 'Faq section'),
       (606, 'motivational_speech_section', 'Motivational speech section'),
       (607, 'blog_visibility_on_the_home_page', 'Blog visibility on the home page'),
       (608, 'promotional_section', 'Promotional section'),
       (609, 'question', 'Question'),
       (610, 'contact_email', 'Contact email'),
       (611, 'phone_number', 'Phone number'),
       (612, 'office_hours', 'Office hours'),
       (613, 'recaptcha_settings', 'Recaptcha settings'),
       (614, 'recaptcha_status', 'Recaptcha status'),
       (615, 'recaptcha_sitekey', 'Recaptcha sitekey'),
       (616, 'recaptcha_secretkey', 'Recaptcha secretkey'),
       (617, 'update_recaptcha_settings', 'Update recaptcha settings'),
       (618, 'update_banner_image', 'Update banner image'),
       (619, 'upload_banner_image', 'Upload banner image'),
       (620, 'update_light_logo', 'Update light logo'),
       (621, 'upload_light_logo', 'Upload light logo'),
       (622, 'update_dark_logo', 'Update dark logo'),
       (623, 'upload_dark_logo', 'Upload dark logo'),
       (624, 'update_small_logo', 'Update small logo'),
       (625, 'upload_small_logo', 'Upload small logo'),
       (626, 'update_favicon', 'Update favicon'),
       (627, 'upload_favicon', 'Upload favicon'),
       (628, 'you_can_modify_your_theme_style_and_add_external_embed_code_from_here',
        'You can modify your theme style and add external embed code from here'),
       (629, 'enter_your_custom_css', 'Enter your custom css'),
       (630, 'only_css_code', 'Only css code'),
       (631, 'these_codes_are_applicable_for_all_pages_of_the_frontend_site',
        'These codes are applicable for all pages of the frontend site'),
       (632, 'enter_your_embed_or_widget_code', 'Enter your embed or widget code'),
       (633, 'enter_your_embed_or_widget_code_here', 'Enter your embed or widget code here'),
       (634, 'manage_your_drip_content_settings', 'Manage your drip content settings'),
       (635, 'lesson_completion_role', 'Lesson completion role'),
       (636, 'video_percentage_wise', 'Video percentage wise'),
       (637, 'video_duration_wise', 'Video duration wise'),
       (638, 'minimum_duration_to_watch', 'Minimum duration to watch'),
       (639, 'minimum_percentage_to_watch', 'Minimum percentage to watch'),
       (640, 'message_for_locked_lesson', 'Message for locked lesson'),
       (641, 'the_auto_checkmark_is_only_applicable_for_video_lessons',
        'The auto checkmark is only applicable for video lessons'),
       (642, 'learn_more', 'Learn more'),
       (643, 'access_key', 'Access key'),
       (644, 'secret_key', 'Secret key'),
       (645, 'bucket_name', 'Bucket name'),
       (646, 'region_name', 'Region name'),
       (647, 'setup_payment_informations', 'Setup payment informations'),
       (648, 'system_currency_settings', 'System currency settings'),
       (649, 'system_currency', 'System currency'),
       (650, 'select_system_currency', 'Select system currency'),
       (651, 'currency_position', 'Currency position'),
       (652, 'left', 'Left'),
       (653, 'right', 'Right'),
       (654, 'left_with_a_space', 'Left with a space'),
       (655, 'right_with_a_space', 'Right with a space'),
       (656, 'update_system_currency', 'Update system currency'),
       (657, 'want_to_keep_test_mode_enabled', 'Want to keep test mode enabled'),
       (658, 'select_currency', 'Select currency'),
       (659, 'sandbox_client_id', 'Sandbox client id'),
       (660, 'sandbox_secret_key', 'Sandbox secret key'),
       (661, 'production_client_id', 'Production client id'),
       (662, 'production_secret_key', 'Production secret key'),
       (663, 'public_key', 'Public key'),
       (664, 'public_live_key', 'Public live key'),
       (665, 'secret_live_key', 'Secret live key'),
       (666, 'key_id', 'Key id'),
       (667, 'theme_color', 'Theme color'),
       (668, 'api_key', 'Api key'),
       (669, 'other_parameter', 'Other parameter'),
       (670, 'pos_id', 'Pos id'),
       (671, 'second_key', 'Second key'),
       (672, 'client_id', 'Client id'),
       (673, 'client_secret', 'Client secret'),
       (674, 'store_id', 'Store id'),
       (675, 'store_password', 'Store password'),
       (676, 'skrill_merchant_email', 'Skrill merchant email'),
       (677, 'secret_passphrase', 'Secret passphrase'),
       (678, 'shared_key', 'Shared key'),
       (679, 'app_key', 'App key'),
       (680, 'app_secret', 'App secret'),
       (681, 'username', 'Username'),
       (682, 'merchant_id', 'Merchant id'),
       (683, 'merchant_password', 'Merchant password'),
       (684, 'signature_key', 'Signature key'),
       (685, 'api_secret', 'Api secret'),
       (686, 'ensure_that_the_system_currency_and_all_active_payment_gateway_currencies_are_same',
        'Ensure that the system currency and all active payment gateway currencies are same'),
       (687, 'multi_language_settings', 'Multi language settings'),
       (688, 'manage_language', 'Manage language'),
       (689, 'language_list', 'Language list'),
       (690, 'add_language', 'Add language'),
       (691, 'import_language', 'Import language'),
       (692, 'language', 'Language'),
       (693, 'direction', 'Direction'),
       (694, 'option', 'Option'),
       (695, 'ltr', 'Ltr'),
       (696, 'rtl', 'Rtl'),
       (697, 'edit_phrase', 'Edit phrase'),
       (698, 'export', 'Export'),
       (699, 'delete_language', 'Delete language'),
       (700, 'add_new_phrase', 'Add new phrase'),
       (701, 'add_new_language', 'Add new language'),
       (702, 'no_special_character_or_space_is_allowed', 'No special character or space is allowed'),
       (703, 'valid_examples', 'Valid examples'),
       (704, 'choose_your_json_file', 'Choose your json file'),
       (705, 'phrase_updated', 'Phrase updated'),
       (706, 'course_eligibility_notification', 'Course eligibility notification'),
       (707, 'stay_up_to_date_on_course_certificate_eligibility.',
        'Stay up to date on course certificate eligibility.'),
       (708, 'offline_payment_suspended_mail', 'Offline payment suspended mail'),
       (709, 'if_students_provides_fake_information,_notify_them_of_the_suspension',
        'If students provides fake information, notify them of the suspension'),
       (710, 'social_login_configuration', 'Social login configuration'),
       (711, 'issue', 'Issue'),
       (712, 'you_must_use_an_ssl_supported_server_to_use_the_facebook_login_feature',
        'You must use an ssl supported server to use the facebook login feature'),
       (713, 'facebook_login', 'Facebook login'),
       (714, 'facebook_app_creation_instruction', 'Facebook app creation instruction'),
       (715, 'facebook_app_id', 'Facebook app id'),
       (716, 'facebook_app_secret', 'Facebook app secret'),
       (717, 'enter_your_first_name', 'Enter your first name'),
       (718, 'enter_your_last_name', 'Enter your last name'),
       (719, 'apply_to_become_an_instructor', 'Apply to become an instructor'),
       (720, 'enter_your_phone_number', 'Enter your phone number'),
       (721, 'document', 'Document'),
       (722, 'provide_some_documents_about_your_qualifications', 'Provide some documents about your qualifications'),
       (723, 'already_you_have_an_account?', 'Already you have an account?'),
       (724, 'instructor_add', 'Instructor add'),
       (725, 'instructor_add_form', 'Instructor add form'),
       (726, 'login_credentials', 'Login credentials'),
       (727, 'social_information', 'Social information'),
       (728, 'payment_info', 'Payment info'),
       (729, 'user_image', 'User image'),
       (730, 'choose_user_image', 'Choose user image'),
       (731, 'paypal', 'Paypal'),
       (732, 'required_for_instructor', 'Required for instructor'),
       (733, 'stripe', 'Stripe'),
       (734, 'razorpay', 'Razorpay'),
       (735, 'xendit', 'Xendit'),
       (736, 'payu', 'Payu'),
       (737, 'pagseguro', 'Pagseguro'),
       (738, 'ssl_commerz', 'Ssl commerz'),
       (739, 'skrill', 'Skrill'),
       (740, 'doku', 'Doku'),
       (741, 'bkash', 'Bkash'),
       (742, 'cashfree', 'Cashfree'),
       (743, 'maxicash', 'Maxicash'),
       (744, 'aamarpay', 'Aamarpay'),
       (745, 'flutterwave', 'Flutterwave'),
       (746, 'tazapay', 'Tazapay'),
       (747, 'user_added_successfully', 'User added successfully'),
       (748, 'add_instructor', 'Add instructor'),
       (749, 'enrolled_courses', 'Enrolled courses'),
       (750, 'view_courses', 'View courses'),
       (751, 'edit', 'Edit'),
       (752, 'public_instructor_settings', 'Public instructor settings'),
       (753, 'allow_public_instructor', 'Allow public instructor'),
       (754, 'instructor_application_note', 'Instructor application note'),
       (755, 'instructor_commission_settings', 'Instructor commission settings'),
       (756, 'instructor_revenue_percentage', 'Instructor revenue percentage'),
       (757, 'admin_revenue_percentage', 'Admin revenue percentage'),
       (758, 'instructor_application', 'Instructor application'),
       (759, 'instructor_applications', 'Instructor applications'),
       (760, 'list_of_applications', 'List of applications'),
       (761, 'pending_applications', 'Pending applications'),
       (762, 'approved_applications', 'Approved applications'),
       (763, 'details', 'Details'),
       (764, 'invalid_login_credentials', 'Invalid login credentials'),
       (765, 'my_course', 'My course'),
       (766, 'you_have_no_items_in_your_wishlist!', 'You have no items in your wishlist!'),
       (767, 'go_to_wishlist', 'Go to wishlist'),
       (768, 'instructor_dashboard', 'Instructor dashboard'),
       (769, 'my_courses', 'My courses'),
       (770, 'my_wishlist', 'My wishlist'),
       (771, 'my_messages', 'My messages'),
       (772, 'user_profile', 'User profile'),
       (773, 'wishlist', 'Wishlist'),
       (774, 'messages', 'Messages'),
       (775, 'payout_settings', 'Payout settings'),
       (776, 'profile', 'Profile'),
       (777, 'account', 'Account'),
       (778, 'course_manager', 'Course manager'),
       (779, 'sales_report', 'Sales report'),
       (780, 'payout_report', 'Payout report'),
       (781, 'number_of_courses', 'Number of courses'),
       (782, 'pending_balance', 'Pending balance'),
       (783, 'requested_withdrawal_amount', 'Requested withdrawal amount'),
       (784, 'request_a_new_withdrawal', 'Request a new withdrawal'),
       (785, 'pending_amount', 'Pending amount'),
       (786, 'total_payout_amount', 'Total payout amount'),
       (787, 'payout_amount', 'Payout amount'),
       (788, 'payment_type', 'Payment type'),
       (789, 'date_processed', 'Date processed'),
       (790, 'course_name', 'Course name'),
       (791, 'draft_courses', 'Draft courses'),
       (792, 'draft', 'Draft'),
       (793, 'no_data_found', 'No data found'),
       (794, 'select_a_user', 'Select a user'),
       (795, 'write_your_message', 'Write your message'),
       (796, 'send', 'Send'),
       (797, 'your_backup_file_has_been_stored_successfully', 'Your backup file has been stored successfully'),
       (798, 'backup_files_deleted_successfully', 'Backup files deleted successfully'),
       (799, 'course_bundle', 'Course bundle'),
       (800, 'add_new_bundle', 'Add new bundle'),
       (801, 'manage_bundle', 'Manage bundle'),
       (802, 'subscription_report', 'Subscription report'),
       (803, 'add_course_bundle', 'Add course bundle'),
       (804, 'bundle_add_form', 'Bundle add form'),
       (805, 'course_bundle_title', 'Course bundle title'),
       (806, 'select_courses', 'Select courses'),
       (807, 'current_price_of_the_courses_is', 'Current price of the courses is'),
       (808, 'bundle_price', 'Bundle price'),
       (809, 'subscription_renew_days', 'Subscription renew days'),
       (810, 'count_day', 'Count day'),
       (811, 'banner', 'Banner'),
       (812, 'bundle_details', 'Bundle details'),
       (813, 'create_bundle', 'Create bundle'),
       (814, 'manage_course_bundle', 'Manage course bundle'),
       (815, 'bundle', 'Bundle'),
       (816, 'subscription_limit', 'Subscription limit'),
       (817, 'active_subscription_report', 'Active subscription report'),
       (818, 'expire', 'Expire'),
       (819, 'all_bundles', 'All bundles'),
       (820, 'all_users', 'All users'),
       (821, 'user', 'User'),
       (822, 'included_courses', 'Included courses'),
       (823, 'date', 'Date'),
       (824, 'amount', 'Amount'),
       (825, 'enter_your_bank_information', 'Enter your bank information'),
       (826, 'instructor_edit', 'Instructor edit'),
       (827, 'instructor_edit_form', 'Instructor edit form'),
       (828, 'short_title', 'Short title'),
       (829, 'student', 'Student'),
       (830, 'admin_add', 'Admin add'),
       (831, 'back_to_admins', 'Back to admins'),
       (832, 'admin_add_form', 'Admin add form'),
       (833, 'course_enrolment', 'Course enrolment'),
       (834, 'enrolment_form', 'Enrolment form'),
       (835, 'course_to_enrol', 'Course to enrol'),
       (836, 'select_a_course', 'Select a course'),
       (837, 'instructor_payouts', 'Instructor payouts'),
       (838, 'list_of_payouts', 'List of payouts'),
       (839, 'completed_payouts', 'Completed payouts'),
       (840, 'pending_payouts', 'Pending payouts'),
       (841, 'payout_date', 'Payout date'),
       (842, 'course_bundles', 'Course bundles'),
       (843, 'add_new_category', 'Add new category'),
       (844, 'add_category', 'Add category'),
       (845, 'category_add_form', 'Category add form'),
       (846, 'category_code', 'Category code'),
       (847, 'category_title', 'Category title'),
       (848, 'parent', 'Parent'),
       (849, 'none', 'None'),
       (850, 'select_none_to_create_a_parent_category', 'Select none to create a parent category'),
       (851, 'icon_picker', 'Icon picker'),
       (852, 'sub_category_thumbnail', 'Sub category thumbnail'),
       (853, 'category_thumbnail', 'Category thumbnail'),
       (854, 'choose_thumbnail', 'Choose thumbnail'),
       (855, 'data_added_successfully', 'Data added successfully'),
       (856, 'sub_categories', 'Sub categories'),
       (857, 'course_has_been_added_successfully', 'Course has been added successfully'),
       (858, 'edit_course', 'Edit course'),
       (859, 'view_on_frontend', 'View on frontend'),
       (860, 'curriculum', 'Curriculum'),
       (861, 'academic_progress', 'Academic progress'),
       (862, 'bbb_live_class', 'Bbb live class'),
       (863, 'assignment', 'Assignment'),
       (864, 'add_new_section', 'Add new section'),
       (865, 'add_section', 'Add section'),
       (866, 'meeting_id', 'Meeting id'),
       (867, 'moderator_password', 'Moderator password'),
       (868, 'viewer_password', 'Viewer password'),
       (869, 'instructions_for_students', 'Instructions for students'),
       (870, 'attention!', 'Attention!'),
       (871, 'give_some_instructions_to_keep_your_students_informed_about_the_meeting',
        'Give some instructions to keep your students informed about the meeting'),
       (872, 'save_meeting_info', 'Save meeting info'),
       (873, 'start_meeting', 'Start meeting'),
       (874, 'meeting_id_and_password_can_not_be_empty', 'Meeting id and password can not be empty'),
       (875, 'moderator_and_viewer_password_can_not_be_same', 'Moderator and viewer password can not be same'),
       (876, 'create_new_assignment', 'Create new assignment'),
       (877, 'assignment_title', 'Assignment title'),
       (878, 'enter_assignment_title', 'Enter assignment title'),
       (879, 'questions', 'Questions'),
       (880, 'enter_your_assignment_questions', 'Enter your assignment questions'),
       (881, 'question_file', 'Question file'),
       (882, 'total_marks', 'Total marks'),
       (883, 'deadline', 'Deadline'),
       (884, 'time', 'Time'),
       (885, 'note', 'Note'),
       (886, 'submission_status', 'Submission status'),
       (887, 'add_new_assignment', 'Add new assignment'),
       (888, 'uploading', 'Uploading'),
       (889, 'fill_up_the_required_feilds', 'Fill up the required feilds'),
       (890, 'course_type', 'Course type'),
       (891, 'general', 'General'),
       (892, 'the_course_type_can_not_be_editable', 'The course type can not be editable'),
       (893, 'instructor_of_this_course', 'Instructor of this course'),
       (894, 'updated_as_a', 'Updated as a'),
       (895, 'progress', 'Progress'),
       (896, 'assignment_list', 'Assignment list'),
       (897, 'ai_writer', 'Ai writer'),
       (898, 'open_ai_settings', 'Open ai settings'),
       (899, 'gpt_assistant', 'Gpt assistant'),
       (900, 'services', 'Services'),
       (901, 'how_can_i_help_you?', 'How can i help you?'),
       (902, 'select_your_service', 'Select your service'),
       (903, 'course_short_description', 'Course short description'),
       (904, 'course_long_description', 'Course long description'),
       (905, 'course_requirements', 'Course requirements'),
       (906, 'course_outcomes', 'Course outcomes'),
       (907, 'course_seo_tags', 'Course seo tags'),
       (908, 'course_lesson_text', 'Course lesson text'),
       (909, 'course_certificate_text', 'Course certificate text'),
       (910, 'course_quiz_text', 'Course quiz text'),
       (911, 'course_blog_title', 'Course blog title'),
       (912, 'course_blog_post', 'Course blog post'),
       (913, 'enter_your_keyword', 'Enter your keyword'),
       (914, 'generate', 'Generate'),
       (915, 'generating', 'Generating'),
       (916, 'your_images', 'Your images'),
       (917, 'generated_text', 'Generated text'),
       (918, 'copy', 'Copy'),
       (919, 'copied', 'Copied'),
       (920, 'openai_settings', 'Openai settings'),
       (921, 'manage_your_open_ai_settings', 'Manage your open ai settings'),
       (922, 'select_ai_model', 'Select ai model'),
       (923, 'required_premium_account', 'Required premium account'),
       (924, 'max_tokens', 'Max tokens'),
       (925, 'number_of_image_creation', 'Number of image creation'),
       (926, 'addon_is_deleted_successfully', 'Addon is deleted successfully'),
       (927, 'ebook', 'Ebook'),
       (928, 'all_ebooks', 'All ebooks'),
       (929, 'add_ebook', 'Add ebook'),
       (930, 'payment_history', 'Payment history'),
       (931, 'thumbnail', 'Thumbnail'),
       (932, 'mark_as_pending', 'Mark as pending'),
       (933, 'section_and_lesson', 'Section and lesson'),
       (934, 'edit_this_course', 'Edit this course'),
       (935, 'duplicate_this_course', 'Duplicate this course'),
       (936, 'view_course_on_frontend', 'View course on frontend'),
       (937, 'go_to_course_playing_page', 'Go to course playing page'),
       (938, 'section', 'Section'),
       (939, 'lesson', 'Lesson'),
       (940, 'analytics', 'Analytics'),
       (941, 'hours', 'Hours'),
       (942, 'reviews', 'Reviews'),
       (943, 'compare', 'Compare'),
       (944, 'last_updated', 'Last updated'),
       (945, 'lessons', 'Lessons'),
       (946, 'remove_from_cart', 'Remove from cart'),
       (947, 'add_to_cart', 'Add to cart'),
       (948, 'course', 'Course'),
       (949, 'created_by', 'Created by'),
       (950, 'enrolled', 'Enrolled'),
       (951, 'overview', 'Overview'),
       (952, 'course_description', 'Course description'),
       (953, 'what_will_i_learn?', 'What will i learn?'),
       (954, 'view_profile', 'View profile'),
       (955, 'dawddaw', 'Dawddaw'),
       (956, 'compare_this_course', 'Compare this course'),
       (957, 'lectures', 'Lectures'),
       (958, 'skill_level', 'Skill level'),
       (959, 'certificate', 'Certificate'),
       (960, 'buy_now', 'Buy now'),
       (961, 'share_on_facebook', 'Share on facebook'),
       (962, 'share_on_twitter', 'Share on twitter'),
       (963, 'share_on_whatsapp', 'Share on whatsapp'),
       (964, 'share_on_linkedin', 'Share on linkedin'),
       (965, 'related_courses', 'Related courses'),
       (966, 'pay_for_purchasing_course', 'Pay for purchasing course'),
       (967, 'shopping_cart', 'Shopping cart'),
       (968, 'by', 'By'),
       (969, 'your_cart_items', 'Your cart items'),
       (970, 'items', 'Items'),
       (971, 'total', 'Total'),
       (972, 'subtotal', 'Subtotal'),
       (973, 'apply_coupon', 'Apply coupon'),
       (974, 'apply', 'Apply'),
       (975, 'send_as_a_gift', 'Send as a gift'),
       (976, 'email_address', 'Email address'),
       (977, 'continue_to_payment', 'Continue to payment'),
       (978, 'searching', 'Searching'),
       (979, 'payment', 'Payment'),
       (980, 'make_payment', 'Make payment'),
       (981, 'select_payment_gateway', 'Select payment gateway'),
       (982, 'pay_with_stripe', 'Pay with stripe'),
       (983, 'pay_via_razorpay', 'Pay via razorpay'),
       (984, 'pay_by_xendit', 'Pay by xendit'),
       (985, 'pay_by_payu', 'Pay by payu'),
       (986, 'pay_by_pageseguro', 'Pay by pageseguro'),
       (987, 'pay_by_ssl_commerz', 'Pay by ssl commerz'),
       (988, 'pay_by_skrill', 'Pay by skrill'),
       (989, 'pay_by_doku', 'Pay by doku'),
       (990, 'pay_with_bkash', 'Pay with bkash'),
       (991, 'pay_by_cashfree', 'Pay by cashfree'),
       (992, 'telephone', 'Telephone'),
       (993, 'pay_by_maxicash', 'Pay by maxicash'),
       (994, 'pay_by_aamarpay', 'Pay by aamarpay'),
       (995, 'pay_by_flutterwave', 'Pay by flutterwave'),
       (996, 'select_your_country', 'Select your country'),
       (997, 'afghanistan', 'Afghanistan'),
       (998, 'Åland_islands', 'Åland islands'),
       (999, 'albania', 'Albania'),
       (1000, 'algeria', 'Algeria'),
       (1001, 'american_samoa', 'American samoa'),
       (1002, 'andorra', 'Andorra'),
       (1003, 'angola', 'Angola'),
       (1004, 'anguilla', 'Anguilla'),
       (1005, 'antarctica', 'Antarctica'),
       (1006, 'antigua_and_barbuda', 'Antigua and barbuda'),
       (1007, 'argentina', 'Argentina'),
       (1008, 'armenia', 'Armenia'),
       (1009, 'aruba', 'Aruba'),
       (1010, 'australia', 'Australia'),
       (1011, 'austria', 'Austria'),
       (1012, 'azerbaijan', 'Azerbaijan'),
       (1013, 'bahamas', 'Bahamas'),
       (1014, 'bahrain', 'Bahrain'),
       (1015, 'bangladesh', 'Bangladesh'),
       (1016, 'barbados', 'Barbados'),
       (1017, 'belarus', 'Belarus'),
       (1018, 'belgium', 'Belgium'),
       (1019, 'belize', 'Belize'),
       (1020, 'benin', 'Benin'),
       (1021, 'bermuda', 'Bermuda'),
       (1022, 'bhutan', 'Bhutan'),
       (1023, 'bolivia_(plurinational_state_of)', 'Bolivia (plurinational state of)'),
       (1024, 'bonaire,_sint_eustatius_and_saba', 'Bonaire, sint eustatius and saba'),
       (1025, 'bosnia_and_herzegovina', 'Bosnia and herzegovina'),
       (1026, 'botswana', 'Botswana'),
       (1027, 'bouvet_island', 'Bouvet island'),
       (1028, 'brazil', 'Brazil'),
       (1029, 'british_indian_ocean_territory', 'British indian ocean territory'),
       (1030, 'brunei_darussalam', 'Brunei darussalam'),
       (1031, 'bulgaria', 'Bulgaria'),
       (1032, 'burkina_faso', 'Burkina faso'),
       (1033, 'burundi', 'Burundi'),
       (1034, 'cabo_verde', 'Cabo verde'),
       (1035, 'cambodia', 'Cambodia'),
       (1036, 'cameroon', 'Cameroon'),
       (1037, 'canada', 'Canada'),
       (1038, 'cayman_islands', 'Cayman islands'),
       (1039, 'central_african_republic', 'Central african republic'),
       (1040, 'chad', 'Chad'),
       (1041, 'chile', 'Chile'),
       (1042, 'china', 'China'),
       (1043, 'christmas_island', 'Christmas island'),
       (1044, 'cocos_(keeling)_islands', 'Cocos (keeling) islands'),
       (1045, 'colombia', 'Colombia'),
       (1046, 'comoros', 'Comoros'),
       (1047, 'congo', 'Congo'),
       (1048, 'congo_(democratic_republic_of_the)', 'Congo (democratic republic of the)'),
       (1049, 'cook_islands', 'Cook islands'),
       (1050, 'costa_rica', 'Costa rica'),
       (1051, 'côte_d\'ivoire', 'Côte d\'ivoire'),
       (1052, 'croatia', 'Croatia'),
       (1053, 'cuba', 'Cuba'),
       (1054, 'curaçao', 'Curaçao'),
       (1055, 'cyprus', 'Cyprus'),
       (1056, 'czech_republic', 'Czech republic'),
       (1057, 'denmark', 'Denmark'),
       (1058, 'djibouti', 'Djibouti'),
       (1059, 'dominica', 'Dominica'),
       (1060, 'dominican_republic', 'Dominican republic'),
       (1061, 'ecuador', 'Ecuador'),
       (1062, 'egypt', 'Egypt'),
       (1063, 'el_salvador', 'El salvador'),
       (1064, 'equatorial_guinea', 'Equatorial guinea'),
       (1065, 'eritrea', 'Eritrea'),
       (1066, 'estonia', 'Estonia'),
       (1067, 'ethiopia', 'Ethiopia'),
       (1068, 'falkland_islands_(malvinas)', 'Falkland islands (malvinas)'),
       (1069, 'faroe_islands', 'Faroe islands'),
       (1070, 'fiji', 'Fiji'),
       (1071, 'finland', 'Finland'),
       (1072, 'france', 'France'),
       (1073, 'french_guiana', 'French guiana'),
       (1074, 'french_polynesia', 'French polynesia'),
       (1075, 'french_southern_territories', 'French southern territories'),
       (1076, 'gabon', 'Gabon'),
       (1077, 'gambia', 'Gambia'),
       (1078, 'georgia', 'Georgia'),
       (1079, 'germany', 'Germany'),
       (1080, 'ghana', 'Ghana'),
       (1081, 'gibraltar', 'Gibraltar'),
       (1082, 'greece', 'Greece'),
       (1083, 'greenland', 'Greenland'),
       (1084, 'grenada', 'Grenada'),
       (1085, 'guadeloupe', 'Guadeloupe'),
       (1086, 'guam', 'Guam'),
       (1087, 'guatemala', 'Guatemala'),
       (1088, 'guernsey', 'Guernsey'),
       (1089, 'guinea', 'Guinea'),
       (1090, 'guinea-bissau', 'Guinea-bissau'),
       (1091, 'guyana', 'Guyana'),
       (1092, 'haiti', 'Haiti'),
       (1093, 'heard_island_and_mcdonald_islands', 'Heard island and mcdonald islands'),
       (1094, 'holy_see', 'Holy see'),
       (1095, 'honduras', 'Honduras'),
       (1096, 'hong_kong', 'Hong kong'),
       (1097, 'hungary', 'Hungary'),
       (1098, 'iceland', 'Iceland'),
       (1099, 'india', 'India'),
       (1100, 'indonesia', 'Indonesia'),
       (1101, 'iran_(islamic_republic_of)', 'Iran (islamic republic of)'),
       (1102, 'iraq', 'Iraq'),
       (1103, 'ireland', 'Ireland'),
       (1104, 'isle_of_man', 'Isle of man'),
       (1105, 'israel', 'Israel'),
       (1106, 'italy', 'Italy'),
       (1107, 'jamaica', 'Jamaica'),
       (1108, 'japan', 'Japan'),
       (1109, 'jersey', 'Jersey'),
       (1110, 'jordan', 'Jordan'),
       (1111, 'kazakhstan', 'Kazakhstan'),
       (1112, 'kenya', 'Kenya'),
       (1113, 'kiribati', 'Kiribati'),
       (1114, 'korea_(democratic_people\'s_republic_of)', 'Korea (democratic people\'s republic of)'),
(1115, 'korea_(republic_of)', 'Korea (republic of)'),
(1116, 'kuwait', 'Kuwait'),
(1117, 'kyrgyzstan', 'Kyrgyzstan'),
(1118, 'lao_people\'s_democratic_republic', 'Lao people\'s democratic republic'),
(1119, 'latvia', 'Latvia'),
(1120, 'lebanon', 'Lebanon'),
(1121, 'lesotho', 'Lesotho'),
(1122, 'liberia', 'Liberia'),
(1123, 'libya', 'Libya'),
(1124, 'liechtenstein', 'Liechtenstein'),
(1125, 'lithuania', 'Lithuania'),
(1126, 'luxembourg', 'Luxembourg'),
(1127, 'macao', 'Macao'),
(1128, 'north_macedonia', 'North macedonia'),
(1129, 'madagascar', 'Madagascar');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`)
VALUES (1130, 'malawi', 'Malawi'),
       (1131, 'malaysia', 'Malaysia'),
       (1132, 'maldives', 'Maldives'),
       (1133, 'mali', 'Mali'),
       (1134, 'malta', 'Malta'),
       (1135, 'marshall_islands', 'Marshall islands'),
       (1136, 'martinique', 'Martinique'),
       (1137, 'mauritania', 'Mauritania'),
       (1138, 'mauritius', 'Mauritius'),
       (1139, 'mayotte', 'Mayotte'),
       (1140, 'mexico', 'Mexico'),
       (1141, 'micronesia_(federated_states_of)', 'Micronesia (federated states of)'),
       (1142, 'moldova_(republic_of)', 'Moldova (republic of)'),
       (1143, 'monaco', 'Monaco'),
       (1144, 'mongolia', 'Mongolia'),
       (1145, 'montenegro', 'Montenegro'),
       (1146, 'montserrat', 'Montserrat'),
       (1147, 'morocco', 'Morocco'),
       (1148, 'mozambique', 'Mozambique'),
       (1149, 'myanmar', 'Myanmar'),
       (1150, 'namibia', 'Namibia'),
       (1151, 'nauru', 'Nauru'),
       (1152, 'nepal', 'Nepal'),
       (1153, 'netherlands', 'Netherlands'),
       (1154, 'new_caledonia', 'New caledonia'),
       (1155, 'new_zealand', 'New zealand'),
       (1156, 'nicaragua', 'Nicaragua'),
       (1157, 'niger', 'Niger'),
       (1158, 'nigeria', 'Nigeria'),
       (1159, 'niue', 'Niue'),
       (1160, 'norfolk_island', 'Norfolk island'),
       (1161, 'northern_mariana_islands', 'Northern mariana islands'),
       (1162, 'norway', 'Norway'),
       (1163, 'oman', 'Oman'),
       (1164, 'pakistan', 'Pakistan'),
       (1165, 'palau', 'Palau'),
       (1166, 'palestine,_state_of', 'Palestine, state of'),
       (1167, 'panama', 'Panama'),
       (1168, 'papua_new_guinea', 'Papua new guinea'),
       (1169, 'paraguay', 'Paraguay'),
       (1170, 'peru', 'Peru'),
       (1171, 'philippines', 'Philippines'),
       (1172, 'pitcairn', 'Pitcairn'),
       (1173, 'poland', 'Poland'),
       (1174, 'portugal', 'Portugal'),
       (1175, 'puerto_rico', 'Puerto rico'),
       (1176, 'qatar', 'Qatar'),
       (1177, 'réunion', 'Réunion'),
       (1178, 'romania', 'Romania'),
       (1179, 'russian_federation', 'Russian federation'),
       (1180, 'rwanda', 'Rwanda'),
       (1181, 'saint_barthélemy', 'Saint barthélemy'),
       (1182, 'saint_helena,_ascension_and_tristan_da_cunha', 'Saint helena, ascension and tristan da cunha'),
       (1183, 'saint_kitts_and_nevis', 'Saint kitts and nevis'),
       (1184, 'saint_lucia', 'Saint lucia'),
       (1185, 'saint_martin_(french_part)', 'Saint martin (french part)'),
       (1186, 'saint_pierre_and_miquelon', 'Saint pierre and miquelon'),
       (1187, 'saint_vincent_and_the_grenadines', 'Saint vincent and the grenadines'),
       (1188, 'samoa', 'Samoa'),
       (1189, 'san_marino', 'San marino'),
       (1190, 'sao_tome_and_principe', 'Sao tome and principe'),
       (1191, 'saudi_arabia', 'Saudi arabia'),
       (1192, 'senegal', 'Senegal'),
       (1193, 'serbia', 'Serbia'),
       (1194, 'seychelles', 'Seychelles'),
       (1195, 'sierra_leone', 'Sierra leone'),
       (1196, 'singapore', 'Singapore'),
       (1197, 'sint_maarten_(dutch_part)', 'Sint maarten (dutch part)'),
       (1198, 'slovakia', 'Slovakia'),
       (1199, 'slovenia', 'Slovenia'),
       (1200, 'solomon_islands', 'Solomon islands'),
       (1201, 'somalia', 'Somalia'),
       (1202, 'south_africa', 'South africa'),
       (1203, 'south_georgia_and_the_south_sandwich_islands', 'South georgia and the south sandwich islands'),
       (1204, 'south_sudan', 'South sudan'),
       (1205, 'spain', 'Spain'),
       (1206, 'sri_lanka', 'Sri lanka'),
       (1207, 'sudan', 'Sudan'),
       (1208, 'suriname', 'Suriname'),
       (1209, 'svalbard_and_jan_mayen', 'Svalbard and jan mayen'),
       (1210, 'sweden', 'Sweden'),
       (1211, 'switzerland', 'Switzerland'),
       (1212, 'syrian_arab_republic', 'Syrian arab republic'),
       (1213, 'taiwan,_province_of_china', 'Taiwan, province of china'),
       (1214, 'tajikistan', 'Tajikistan'),
       (1215, 'tanzania,_united_republic_of', 'Tanzania, united republic of'),
       (1216, 'thailand', 'Thailand'),
       (1217, 'timor-leste', 'Timor-leste'),
       (1218, 'togo', 'Togo'),
       (1219, 'tokelau', 'Tokelau'),
       (1220, 'tonga', 'Tonga'),
       (1221, 'trinidad_and_tobago', 'Trinidad and tobago'),
       (1222, 'tunisia', 'Tunisia'),
       (1223, 'turkey', 'Turkey'),
       (1224, 'turkmenistan', 'Turkmenistan'),
       (1225, 'turks_and_caicos_islands', 'Turks and caicos islands'),
       (1226, 'tuvalu', 'Tuvalu'),
       (1227, 'uganda', 'Uganda'),
       (1228, 'ukraine', 'Ukraine'),
       (1229, 'united_arab_emirates', 'United arab emirates'),
       (1230, 'united_kingdom_of_great_britain_and_northern_ireland',
        'United kingdom of great britain and northern ireland'),
       (1231, 'united_states_minor_outlying_islands', 'United states minor outlying islands'),
       (1232, 'united_states_of_america', 'United states of america'),
       (1233, 'uruguay', 'Uruguay'),
       (1234, 'uzbekistan', 'Uzbekistan'),
       (1235, 'vanuatu', 'Vanuatu'),
       (1236, 'venezuela_(bolivarian_republic_of)', 'Venezuela (bolivarian republic of)'),
       (1237, 'viet_nam', 'Viet nam'),
       (1238, 'virgin_islands_(british)', 'Virgin islands (british)'),
       (1239, 'virgin_islands_(u.s.)', 'Virgin islands (u.s.)'),
       (1240, 'wallis_and_futuna', 'Wallis and futuna'),
       (1241, 'western_sahara', 'Western sahara'),
       (1242, 'yemen', 'Yemen'),
       (1243, 'zambia', 'Zambia'),
       (1244, 'zimbabwe', 'Zimbabwe'),
       (1245, 'pay_by_tazapay', 'Pay by tazapay'),
       (1246, 'payable_amount', 'Payable amount'),
       (1247, 'document_of_your_payment', 'Document of your payment'),
       (1248, 'submit_payment_document', 'Submit payment document'),
       (1249, 'session_timed_out', 'Session timed out'),
       (1250, 'please_try_again', 'Please try again'),
       (1251, 'purchased_courses', 'Purchased courses'),
       (1252, 'payment_method', 'Payment method'),
       (1253, 'purchased_date', 'Purchased date'),
       (1254, 'invoice', 'Invoice'),
       (1255, 'student_has_been_enrolled', 'Student has been enrolled'),
       (1256, 'enrol_histories', 'Enrol histories'),
       (1257, 'user_name', 'User name'),
       (1258, 'enrollment_date', 'Enrollment date'),
       (1259, 'expiry_date', 'Expiry date'),
       (1260, 'start_now', 'Start now'),
       (1261, 'gift_someone_else', 'Gift someone else'),
       (1262, 'our_expert_instructor_', 'Our expert instructor '),
       (1263, 'they_efficiently_serve_large_number_of_students_on_our_platform',
        'They efficiently serve large number of students on our platform'),
       (1264, 'go_to_course_page', 'Go to course page'),
       (1265, 'author_profile', 'Author profile'),
       (1266, 'quizzes', 'Quizzes'),
       (1267, 'access_denied', 'Access denied'),
       (1268, 'not_started_yet', 'Not started yet'),
       (1269, 'not_completed_yet', 'Not completed yet'),
       (1270, 'enrolled_from', 'Enrolled from'),
       (1271, 'last_seen_on', 'Last seen on'),
       (1272, 'completed_on', 'Completed on'),
       (1273, 'completed_lesson', 'Completed lesson'),
       (1274, 'out_of', 'Out of'),
       (1275, 'watched_duration', 'Watched duration'),
       (1276, 'quiz_results', 'Quiz results'),
       (1277, 'provide_a_section_name', 'Provide a section name'),
       (1278, 'date_of_study_plan', 'Date of study plan'),
       (1279, 'optional', 'Optional'),
       (1280, 'restriction_of_study_plan', 'Restriction of study plan'),
       (1281, 'no_restriction', 'No restriction'),
       (1282, 'until_the_start_date,_keep_this_section_locked', 'Until the start date, keep this section locked'),
       (1283, 'keep_this_section_open_only_within_the_selected_date_range',
        'Keep this section open only within the selected date range'),
       (1284, 'section_has_been_added_successfully', 'Section has been added successfully'),
       (1285, 'add_new_quiz', 'Add new quiz'),
       (1286, 'add_quiz', 'Add quiz'),
       (1287, 'sort_sections', 'Sort sections'),
       (1288, 'sort_lessons', 'Sort lessons'),
       (1289, 'sort_lesson', 'Sort lesson'),
       (1290, 'update_section', 'Update section'),
       (1291, 'edit_section', 'Edit section'),
       (1292, 'delete_section', 'Delete section'),
       (1293, 'select_lesson_type', 'Select lesson type'),
       (1294, 'video', 'Video'),
       (1295, 'secured', 'Secured'),
       (1296, 'video_file', 'Video file'),
       (1297, 'audio_file', 'Audio file'),
       (1298, 'video_url', 'Video url'),
       (1299, 'wasabi_storage_video', 'Wasabi storage video'),
       (1300, 'google_drive_video', 'Google drive video'),
       (1301, 'document_file', 'Document file'),
       (1302, 'text', 'Text'),
       (1303, 'image_file', 'Image file'),
       (1304, 'iframe_embed', 'Iframe embed'),
       (1305, 'next', 'Next'),
       (1306, 'please_select_a_course', 'Please select a course'),
       (1307, 'lesson_type', 'Lesson type'),
       (1308, 'change', 'Change'),
       (1309, 'enter_your_text', 'Enter your text'),
       (1310, 'summary', 'Summary'),
       (1311, 'do_you_want_to_keep_it_free_as_a_preview_lesson', 'Do you want to keep it free as a preview lesson'),
       (1312, 'mark_as_free_lesson', 'Mark as free lesson'),
       (1313, 'lesson_has_been_added_successfully', 'Lesson has been added successfully'),
       (1314, 'add_new_resource_file', 'Add new resource file'),
       (1315, 'resource_files', 'Resource files'),
       (1316, 'update_lesson', 'Update lesson'),
       (1317, 'assignment_added_successfully', 'Assignment added successfully'),
       (1318, 'edit_assignment', 'Edit assignment'),
       (1319, 'view_submission', 'View submission'),
       (1320, 'deadline:_', 'Deadline: '),
       (1321, 'expired', 'Expired'),
       (1322, 'course_content', 'Course content'),
       (1323, 'mark_as_complete', 'Mark as complete'),
       (1324, 'live_class', 'Live class'),
       (1325, 'forum', 'Forum'),
       (1326, 'live_class_is_not_scheduled_yet', 'Live class is not scheduled yet'),
       (1327, 'assignments', 'Assignments'),
       (1328, 'deadline:', 'Deadline:'),
       (1329, 'status:_', 'Status: '),
       (1330, 'total_marks:', 'Total marks:'),
       (1331, '100', '100'),
       (1332, 'your_question_has_been_successfully_published', 'Your question has been successfully published'),
       (1333, 'please_write_your_question_title_or_summary', 'Please write your question title or summary'),
       (1334, 'search_questions', 'Search questions'),
       (1335, 'questions_in_this_course', 'Questions in this course'),
       (1336, 'all_questions', 'All questions'),
       (1337, 'ask_your_question', 'Ask your question'),
       (1338, 'title_or_summary', 'Title or summary'),
       (1339, 'send_notification', 'Send notification'),
       (1340, 'publish', 'Publish'),
       (1341, 'forum_queries', 'Forum queries'),
       (1342, 'view', 'View'),
       (1343, 'are_you_sure?', 'Are you sure?'),
       (1344, 'well_done', 'Well done'),
       (1345, 'you_are_now_eligible_to_download_the_course_completion_certificate',
        'You are now eligible to download the course completion certificate'),
       (1346, 'get_certificate', 'Get certificate'),
       (1347, 'total_duration', 'Total duration'),
       (1348, 'total_lesson', 'Total lesson'),
       (1349, 'download', 'Download'),
       (1350, 'year', 'Year'),
       (1351, 'month', 'Month'),
       (1352, 'day', 'Day'),
       (1353, 'hour', 'Hour'),
       (1354, 'minute', 'Minute'),
       (1355, 'second', 'Second'),
       (1356, 'ago', 'Ago'),
       (1357, 'submitted_assignment_table', 'Submitted assignment table'),
       (1358, 'back_to_assignment_list', 'Back to assignment list'),
       (1359, 'marks', 'Marks'),
       (1360, 'mark_as_draft', 'Mark as draft'),
       (1361, 'completed', 'Completed'),
       (1362, 'uncheck', 'Uncheck'),
       (1363, 'submit_assignment', 'Submit assignment'),
       (1364, 'download_attached_file:', 'Download attached file:'),
       (1365, 'submit_assignment_form', 'Submit assignment form'),
       (1366, 'questions:', 'Questions:'),
       (1367, 'upload_file', 'Upload file'),
       (1368, 'enter_your_private_note', 'Enter your private note'),
       (1369, 'assignment_submitted_successfully', 'Assignment submitted successfully'),
       (1370, 'reply', 'Reply'),
       (1371, 'write_a_reply', 'Write a reply'),
       (1372, 'publish_reply', 'Publish reply'),
       (1373, 'assignment_reviewing_form', 'Assignment reviewing form'),
       (1374, 'back_to_assignment_submission_list', 'Back to assignment submission list'),
       (1375, 'your_questions:', 'Your questions:'),
       (1376, 'download_question_file:', 'Download question file:'),
       (1377, 'student\'s_submission:', 'Student\'s submission:'),
       (1378, 'submitted_by:_', 'Submitted by: '),
       (1379, 'answers:', 'Answers:'),
       (1380, 'download_answer_file:', 'Download answer file:'),
       (1381, 'provide_your_assessment:', 'Provide your assessment:'),
       (1382, 'marks_(_out_of_', 'Marks ( out of '),
       (1383, 'remarks', 'Remarks'),
       (1384, 'assignment_marks_has_been_updated', 'Assignment marks has been updated'),
       (1385, 'reviewed', 'Reviewed'),
       (1386, 'review', 'Review'),
       (1387, 'write_a_review', 'Write a review'),
       (1388, '1_start_rating', '1 start rating'),
       (1389, '2_start_rating', '2 start rating'),
       (1390, '3_start_rating', '3 start rating'),
       (1391, '4_start_rating', '4 start rating'),
       (1392, '5_start_rating', '5 start rating'),
       (1393, 'write_your_comment', 'Write your comment'),
       (1394, 'profile_photo', 'Profile photo'),
       (1395, 'update_your_profile_photo_and_personal_details', 'Update your profile photo and personal details'),
       (1396, 'upload_photo', 'Upload photo'),
       (1397, 'profile_info', 'Profile info'),
       (1398, 'short_title_about_yourself', 'Short title about yourself'),
       (1399, 'your_skills', 'Your skills'),
       (1400, 'add_your_twitter_link', 'Add your twitter link'),
       (1401, 'add_your_facebook_link', 'Add your facebook link'),
       (1402, 'add_your_linkedin_link', 'Add your linkedin link'),
       (1403, 'my_bundles', 'My bundles'),
       (1404, 'bundles', 'Bundles'),
       (1405, 'rating_updated_successfully', 'Rating updated successfully'),
       (1406, 'please_select_a_rating_greater_than_0', 'Please select a rating greater than 0'),
       (1407, 'your_subscription_date_is_over_please_renew_your_bundle',
        'Your subscription date is over please renew your bundle'),
       (1408, 'remove', 'Remove'),
       (1409, 'you_have_successfully_rated_the_course', 'You have successfully rated the course'),
       (1410, 'user_deleted_successfully', 'User deleted successfully'),
       (1411, 'course_updated_successfully', 'Course updated successfully'),
       (1412, 'assignment_deleted_successfully', 'Assignment deleted successfully'),
       (1413, 'enroll_now', 'Enroll now'),
       (1414, 'successfully_enrolled', 'Successfully enrolled'),
       (1415, 'notice', 'Notice'),
       (1416, 'you_have_completed', 'You have completed'),
       (1417, 'of_the_course', 'Of the course'),
       (1418, 'you_can_download_the_course_completion_certificate_after_completing_the_course',
        'You can download the course completion certificate after completing the course'),
       (1419, 'update_assignment', 'Update assignment'),
       (1420, 'assignment_updated_successfully', 'Assignment updated successfully'),
       (1421, 'view_result', 'View result'),
       (1422, 'assignment_result', 'Assignment result'),
       (1423, 'submitted_assignment_result', 'Submitted assignment result'),
       (1424, 'results:', 'Results:'),
       (1425, 'student_name:_', 'Student name: '),
       (1426, 'marks:_', 'Marks: '),
       (1427, 'remarks:_', 'Remarks: '),
       (1428, '90', '90'),
       (1429, 'comment_on_forum', 'Comment on forum'),
       (1430, 'quiz_title', 'Quiz title'),
       (1431, 'quiz_duration', 'Quiz duration'),
       (1432, 'if_you_want_to_disable_the_timer,_set_the_duration_to',
        'If you want to disable the timer, set the duration to'),
       (1433, 'pass_mark', 'Pass mark'),
       (1434, 'drip_content_rule_for_quiz', 'Drip content rule for quiz'),
       (1435, 'this_will_only_work_if_drip_content_is_enabled', 'This will only work if drip content is enabled'),
       (1436, 'students_can_start_the_next_lesson_by_submitting_the_quiz',
        'Students can start the next lesson by submitting the quiz'),
       (1437, 'students_must_achieve_pass_mark_to_start_the_next_lesson',
        'Students must achieve pass mark to start the next lesson'),
       (1438, 'number_of_quiz_retakes', 'Number of quiz retakes'),
       (1439, 'enter_0_if_you_want_to_disable_multiple_attempts', 'Enter 0 if you want to disable multiple attempts'),
       (1440, 'instruction', 'Instruction'),
       (1441, 'mon', 'Mon'),
       (1442, 'sep', 'Sep'),
       (1443, 'number_of_authorized_devices_web', 'Number of authorized devices from web'),
       (1444, 'number_of_authorized_devices_mob', 'Number of authorized devices from mobile');

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson`
(
    `id`                                int(11) UNSIGNED NOT NULL,
    `title`                             varchar(255) DEFAULT NULL,
    `duration`                          varchar(255) DEFAULT NULL,
    `course_id`                         int(11) DEFAULT NULL,
    `section_id`                        int(11) DEFAULT NULL,
    `video_type`                        varchar(255) DEFAULT NULL,
    `cloud_video_id`                    int(20) DEFAULT NULL,
    `video_url`                         varchar(255) DEFAULT NULL,
    `audio_url`                         varchar(400) DEFAULT NULL,
    `date_added`                        int(11) DEFAULT NULL,
    `last_modified`                     int(11) DEFAULT NULL,
    `lesson_type`                       varchar(255) DEFAULT NULL,
    `attachment`                        longtext     DEFAULT NULL,
    `attachment_type`                   varchar(255) DEFAULT NULL,
    `caption`                           varchar(255) DEFAULT NULL,
    `summary`                           longtext     DEFAULT NULL,
    `is_free`                           int(11) NOT NULL DEFAULT 0,
    `order`                             int(11) NOT NULL DEFAULT 0,
    `quiz_attempt`                      int(11) NOT NULL DEFAULT 0,
    `video_type_for_mobile_application` varchar(255) DEFAULT NULL,
    `video_url_for_mobile_application`  varchar(255) DEFAULT NULL,
    `duration_for_mobile_application`   varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`id`, `title`, `duration`, `course_id`, `section_id`, `video_type`, `cloud_video_id`, `video_url`,
                      `audio_url`, `date_added`, `last_modified`, `lesson_type`, `attachment`, `attachment_type`,
                      `caption`, `summary`, `is_free`, `order`, `quiz_attempt`, `video_type_for_mobile_application`,
                      `video_url_for_mobile_application`, `duration_for_mobile_application`)
VALUES (1, 'dawdwad', NULL, 1, 1, NULL, NULL, NULL, NULL, 1725854400, NULL, 'text',
        '&lt;p&gt;wadawdwadwdwadwa&lt;/p&gt;', 'description', NULL, '&lt;p&gt;dwadwdawdaw&lt;/p&gt;', 0, 0, 0, NULL,
        NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log`
(
    `id`   int(11) NOT NULL,
    `from` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message`
(
    `message_id`          int(20) NOT NULL,
    `message_thread_code` varchar(255) DEFAULT NULL,
    `message`             longtext     DEFAULT NULL,
    `sender`              int(20) DEFAULT NULL,
    `receiver`            int(20) DEFAULT NULL,
    `timestamp`           varchar(255) DEFAULT NULL,
    `read_status`         int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message_thread`
--

CREATE TABLE `message_thread`
(
    `message_thread_id`      int(11) NOT NULL,
    `message_thread_code`    varchar(255) DEFAULT NULL,
    `sender`                 varchar(255) DEFAULT '',
    `receiver`               varchar(255) DEFAULT '',
    `last_message_timestamp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters`
(
    `id`          int(11) NOT NULL,
    `subject`     varchar(255) DEFAULT NULL,
    `description` mediumtext   DEFAULT NULL,
    `created_at`  varchar(255) DEFAULT NULL,
    `updated_at`  varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_histories`
--

CREATE TABLE `newsletter_histories`
(
    `id`          int(20) NOT NULL,
    `email`       varchar(255) DEFAULT NULL,
    `subject`     varchar(255) DEFAULT NULL,
    `description` longtext     DEFAULT NULL,
    `status`      varchar(100) DEFAULT NULL,
    `tried_times` int(11) DEFAULT NULL,
    `sent_at`     varchar(100) DEFAULT NULL,
    `created_at`  varchar(100) DEFAULT NULL,
    `updated_at`  varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_subscriber`
--

CREATE TABLE `newsletter_subscriber`
(
    `id`         int(11) NOT NULL,
    `email`      varchar(255) DEFAULT NULL,
    `created_at` varchar(255) DEFAULT NULL,
    `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications`
(
    `id`          bigint(20) NOT NULL,
    `from_user`   int(11) DEFAULT NULL,
    `to_user`     int(11) DEFAULT NULL,
    `type`        varchar(255) DEFAULT NULL,
    `title`       varchar(255) DEFAULT NULL,
    `description` text         DEFAULT NULL,
    `status`      int(11) DEFAULT NULL,
    `created_at`  varchar(255) DEFAULT NULL,
    `updated_at`  varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `from_user`, `to_user`, `type`, `title`, `description`, `status`, `created_at`,
                             `updated_at`)
VALUES (1, 2, 2, 'forum', 'Forum queries: hello ? ',
        '<p>dwadawd</p> <a href=\"http://localhost/last/home/lesson/dawddaw/1?tab=forum-content\">View</a>', 0,
        '1725884518', NULL),
       (3, 3, 2, 'certificate_eligibility', 'Certificate eligibility',
        '\n    <div>Course: <a href=\"http://localhost/last/home/course/dawddaw/1\" target=\"_blank\">dawddaw</a>\r\nStudent: Mahmoud Galal\r\nCertificate link: <a href=\"http://localhost/last/certificate/f08e2cf1b1\" target=\"_blank\"> Certificate link</a></div>\n    ',
        0, '1725884545', NULL),
       (4, 2, 2, 'forum', 'Forum queries: awdawdwad',
        '<p>dawdawdaw</p> <a href=\"http://localhost/last/home/lesson/dawddaw/1?tab=forum-content\">View</a>', 0,
        '1725905887', NULL),
       (5, 4, 4, 'certificate_eligibility', 'certificate eligibility',
        '\n    <div>Course: <a href=\"http://localhost/last/home/course/dawddaw/1\" target=\"_blank\">dawddaw</a>\r\nInstructor: Mahmoud Galal\r\nCertificate link: <a href=\"http://localhost/last/certificate/131642ad3b\" target=\"_blank\"> Certificate link</a></div>\n    ',
        0, '1725906365', NULL),
       (6, 4, 2, 'certificate_eligibility', 'Certificate eligibility',
        '\n    <div>Course: <a href=\"http://localhost/last/home/course/dawddaw/1\" target=\"_blank\">dawddaw</a>\r\nStudent: Mahmoud Galal\r\nCertificate link: <a href=\"http://localhost/last/certificate/131642ad3b\" target=\"_blank\"> Certificate link</a></div>\n    ',
        0, '1725906365', NULL),
       (7, 2, 3, 'forum', 'Comment on forum',
        '<p>good&nbsp;</p><p><br></p> <a href=\"http://localhost/last/home/lesson/dawddaw/1?tab=forum-content\">View</a>',
        0, '1725906522', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notification_settings`
--

CREATE TABLE `notification_settings`
(
    `id`                  int(11) NOT NULL,
    `type`                varchar(255) DEFAULT NULL,
    `is_editable`         int(11) DEFAULT NULL,
    `addon_identifier`    varchar(255) DEFAULT NULL,
    `user_types`          varchar(400) DEFAULT NULL,
    `system_notification` varchar(400) DEFAULT NULL,
    `email_notification`  varchar(400) DEFAULT NULL,
    `subject`             varchar(255) DEFAULT NULL,
    `template`            longtext     DEFAULT NULL,
    `setting_title`       varchar(255) DEFAULT NULL,
    `setting_sub_title`   varchar(255) DEFAULT NULL,
    `date_updated`        varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notification_settings`
--

INSERT INTO `notification_settings` (`id`, `type`, `is_editable`, `addon_identifier`, `user_types`,
                                     `system_notification`, `email_notification`, `subject`, `template`,
                                     `setting_title`, `setting_sub_title`, `date_updated`)
VALUES (1, 'signup', 1, NULL, '[\"admin\",\"user\"]', '{\"admin\":\"1\",\"user\":\"1\"}',
        '{\"admin\":\"0\",\"user\":\"0\"}', '{\"admin\":\"New user registered\",\"user\":\"Registered successfully\"}',
        '{\"admin\":\"New user registered [user_name] \\r\\n<br>User email: <b>[user_email]<\\/b>\",\"user\":\"You have successfully registered with us at [system_name].\"}',
        'New user registration', 'Get notified when a new user signs up', '1693215071'),
       (2, 'email_verification', 0, NULL, '[\"user\"]', '{\"user\":\"0\"}', '{\"user\":\"1\"}',
        '{\"user\":\"Email verification code\"}',
        '{\"user\":\"You have received a email verification code. Your verification code is [email_verification_code]\"}',
        'Email verification', 'It is permanently enabled for student email verification.', '1684135777'),
       (3, 'forget_password_mail', 0, NULL, '[\"user\"]', '{\"user\":\"0\"}', '{\"user\":\"1\"}',
        '{\"user\":\"Forgot password verification code\"}',
        '{\"user\":\"You have received a email verification code. Your verification code is [system_name] [verification_link] [minutes]\"}',
        'Forgot password mail', 'It is permanently enabled for student email verification.', '1684145383'),
       (4, 'new_device_login_confirmation', 0, NULL, '[\"user\"]', '{\"user\":\"0\"}', '{\"user\":\"1\"}',
        '{\"user\":\"Please confirm your login\"}',
        '{\"user\":\"Have you tried logging in with a different device? Confirm using the verification code. Your verification code is [verification_code]. Remember that you will lose access to your previous device after logging in to the new device <b>[user_agent]<\\/b>.<br> Use the verification code within [minutes] minutes\"}',
        'Account security alert', 'Send verification code for login from a new device', '1684145383'),
       (6, 'course_purchase', 1, NULL, '[\"admin\",\"student\",\"instructor\"]',
        '{\"admin\":\"1\",\"student\":\"1\",\"instructor\":\"1\"}',
        '{\"admin\":\"0\",\"student\":\"0\",\"instructor\":\"0\"}',
        '{\"admin\":\"A new course has been sold\",\"instructor\":\"A new course has been sold\",\"student\":\"You have purchased a new course\"}',
        '{\"admin\":\"<p>Course title: [course_title]<\\/p><p>Student: [student_name]\\r\\n<\\/p><p>Paid amount: [paid_amount]<\\/p><p>Instructor: [instructor_name]<\\/p>\",\"instructor\":\"Course title: [course_title]\\r\\nStudent: [student_name]\\r\\nPaid amount: [paid_amount]\",\"student\":\"Course title: [course_title]\\r\\nPaid amount: [paid_amount]\\r\\nInstructor: [instructor_name]\"}',
        'Course purchase notification', 'Stay up-to-date on student course purchases.', '1684303456'),
       (7, 'course_completion_mail', 1, NULL, '[\"student\",\"instructor\"]',
        '{\"student\":\"1\",\"instructor\":\"1\"}', '{\"student\":\"0\",\"instructor\":\"0\"}',
        '{\"instructor\":\"Course completion\",\"student\":\"You have completed a new course\"}',
        '{\"instructor\":\"Course completed [course_title]\\r\\nStudent: [student_name]\",\"student\":\"Course: [course_title]\\r\\nInstructor: [instructor_name]\"}',
        'Course completion mail', 'Stay up to date on student course completion.', '1699431547'),
       (8, 'certificate_eligibility', 1, 'certificate', '[\"student\",\"instructor\"]',
        '{\"student\":\"1\",\"instructor\":\"1\"}', '{\"student\":\"0\",\"instructor\":\"0\"}',
        '{\"instructor\":\"Certificate eligibility\",\"student\":\"certificate eligibility\"}',
        '{\"instructor\":\"Course: [course_title]\\r\\nStudent: [student_name]\\r\\nCertificate link: [certificate_link]\",\"student\":\"Course: [course_title]\\r\\nInstructor: [instructor_name]\\r\\nCertificate link: [certificate_link]\"}',
        'Course eligibility notification', 'Stay up to date on course certificate eligibility.', '1684303460'),
       (9, 'offline_payment_suspended_mail', 1, 'offline_payment', '[\"student\"]', '{\"student\":\"1\"}',
        '{\"student\":\"0\"}', '{\"student\":\"Your payment has been suspended\"}',
        '{"student":"<p>Your offline payment has been <b style=\'color: red;\'>suspended</b>!</p><p>Please provide a valid document of your payment.</p>"}'
       , 'Offline payment suspended mail', 'If students provides fake information, notify them of the suspension'
       , '1684303463'),
       (10, 'bundle_purchase', 1, 'course_bundle', '[\"admin\",\"student\",\"instructor\"]',
        '{\"admin\":\"1\",\"student\":\"1\",\"instructor\":\"1\"}',
        '{\"admin\":\"0\",\"student\":\"0\",\"instructor\":\"0\"}',
        '{\"admin\":\"A new course bundle has been sold \",\"instructor\":\"A new course bundle has been sold \",\"student\":\"You have purchased a new course bundle test\"}',
        '{\"admin\":\"Course bundle: [bundle_title]\\r\\nStudent: [student_name]\\r\\nInstructor: [instructor_name] \",\"instructor\":\"Course bundle: [bundle_title]\\r\\nStudent: [student_name] \",\"student\":\"Course bundle: [bundle_title]\\r\\nInstructor: [instructor_name] \"}',
        'Course bundle purchase notification', 'Stay up-to-date on student course bundle purchases.', '1684303467'),
       (13, 'add_new_user_as_affiliator', 0, 'affiliate_course', '[\"affiliator\"]', '{\"affiliator\":\"0\"}',
        '{\"affiliator\":\"1\"}', '{\"affiliator\":\"Congratulation ! You are assigned as an affiliator\"}',
        '{\"affiliator\":\"You are assigned as a website Affiliator.\\r\\nWebsite: [website_link]\\r\\n<br>\\r\\nPassword: [password]\"}',
        'New user added as affiliator', 'Send account information to the new user', '1684135777'),
       (14, 'affiliator_approval_notification', 1, 'affiliate_course', '[\"affiliator\"]', '{\"affiliator\":\"1\"}',
        '{\"affiliator\":\"0\"}', '{\"affiliator\":\"Congratulations! Your affiliate request has been approved\"}',
        '{\"affiliator\":\"Congratulations! Your affiliate request has been approved\"}',
        'Affiliate approval notification', 'Send affiliate approval mail to the user account', '1684303472'),
       (15, 'affiliator_request_cancellation', 1, 'affiliate_course', '[\"affiliator\"]', '{\"affiliator\":\"1\"}',
        '{\"affiliator\":\"0\"}', '{\"affiliator\":\"Sorry ! Your request has been currently refused\"}',
        '{\"affiliator\":\"Sorry ! Your request has been currently refused.\"}', 'Affiliator request cancellation',
        'Send mail, when you cancel the affiliation request', '1684303473'),
       (16, 'affiliation_amount_withdrawal_request', 1, 'affiliate_course', '[\"admin\",\"affiliator\"]',
        '{\"admin\":\"1\",\"affiliator\":\"1\"}', '{\"admin\":\"0\",\"affiliator\":\"0\"}',
        '{\"admin\":\"New money withdrawal request\",\"affiliator\":\"New money withdrawal request\"}',
        '{\"admin\":\"New money withdrawal request by [user_name] [amount]\",\"affiliator\":\"Your Withdrawal request of [amount] has been sent to authority\"}',
        'Affiliation money withdrawal request', 'Send mail, when the users request the withdrawal of money',
        '1684303476'),
       (17, 'approval_affiliation_amount_withdrawal_request', 1, 'affiliate_course', '[\"affiliator\"]',
        '{\"affiliator\":\"1\"}', '{\"affiliator\":\"0\"}',
        '{\"affiliator\":\"Congartulation ! Your withdrawal request has been approved\"}',
        '{\"affiliator\":\"Congartulation ! Your payment request has been approved.\"}',
        'Approval of withdrawal request of affiliation',
        'Send mail, when you approved the affiliation withdrawal request', '1684303480'),
       (18, 'course_gift', 1, NULL, '[\"payer\",\"receiver\"]', '{\"payer\":\"1\",\"receiver\":\"1\"}',
        '{\"payer\":\"1\",\"receiver\":\"1\"}',
        '{\"payer\":\"You have gift a course\",\"receiver\":\"You have received a course gift\"}',
        '{\"payer\":\"You have gift a course to [user_name] [course_title][instructor]\",\"receiver\":\"You have received a course gift by [payer][course_title][instructor]\"}',
        'Course gift notification', 'Notify users after course gift', '1691818623'),
       (20, 'noticeboard', 1, 'noticeboard', '[\"student\"]', '{\"student\":\"1\"}', '{\"student\":\"1\"}',
        '{\"student\":\"Noticeboard\"}',
        '{\"student\":\"Hi, You have a new notice by [instructor_name]. The course [course_title] [notice_title][notice_description]\"}',
        'Course Noticeboard',
        'Notify to enrolled students when announcements are created by the instructor for a particular course.\n',
        '1699525375');


-- --------------------------------------------------------
--
-- Table structure for table `offline_payment`
--

CREATE TABLE `offline_payment`
(
    `id`             int(11) UNSIGNED NOT NULL,
    `user_id`        int(11) DEFAULT NULL,
    `amount`         varchar(255) DEFAULT NULL,
    `course_id`      varchar(255) DEFAULT NULL,
    `item_id`        varchar(255) DEFAULT NULL,
    `item_type`      varchar(255) DEFAULT NULL,
    `item_info`      longtext     DEFAULT NULL,
    `document_image` varchar(255) DEFAULT NULL,
    `timestamp`      varchar(255) DEFAULT NULL,
    `status`         int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment`
(
    `id`                        int(11) UNSIGNED NOT NULL,
    `user_id`                   int(11) DEFAULT NULL,
    `payment_type`              varchar(50)  DEFAULT NULL,
    `course_id`                 int(11) DEFAULT NULL,
    `amount` double DEFAULT NULL,
    `date_added`                int(11) DEFAULT NULL,
    `last_modified`             int(11) DEFAULT NULL,
    `admin_revenue`             varchar(255) DEFAULT NULL,
    `instructor_revenue`        varchar(255) DEFAULT NULL,
    `tax` double DEFAULT NULL,
    `instructor_payment_status` int(11) DEFAULT 0,
    `transaction_id`            varchar(255) DEFAULT NULL,
    `session_id`                varchar(255) DEFAULT NULL,
    `coupon`                    varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways`
(
    `id`                int(11) NOT NULL,
    `identifier`        varchar(255) DEFAULT NULL,
    `currency`          varchar(100) NOT NULL,
    `title`             varchar(255) NOT NULL,
    `description`       text         NOT NULL,
    `keys`              text         NOT NULL,
    `model_name`        varchar(255) DEFAULT NULL,
    `enabled_test_mode` int(11) NOT NULL,
    `status`            int(11) NOT NULL,
    `is_addon`          int(11) NOT NULL,
    `created_at`        varchar(100) NOT NULL,
    `updated_at`        varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `identifier`, `currency`, `title`, `description`, `keys`, `model_name`,
                                `enabled_test_mode`, `status`, `is_addon`, `created_at`, `updated_at`)
VALUES (1, 'paypal', 'USD', 'Paypal', '',
        '{\"sandbox_client_id\":\"AfGaziKslex-scLAyYdDYXNFaz2aL5qGau-SbDgE_D2E80D3AFauLagP8e0kCq9au7W4IasmFbirUUYc\",\"sandbox_secret_key\":\"EMa5pCTuOpmHkhHaCGibGhVUcKg0yt5-C3CzJw-OWJCzaXXzTlyD17SICob_BkfM_0Nlk7TWnN42cbGz\",\"production_client_id\":\"1234\",\"production_secret_key\":\"12345\"}',
        'Payment_model', 1, 1, 0, '', '1673263724'),
       (2, 'stripe', 'USD', 'Stripe', '',
        '{\"public_key\":\"pk_test_CAC3cB1mhgkJqXtypYBTGb4f\",\"secret_key\":\"sk_test_iatnshcHhQVRXdygXw3L2Pp2\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxxxxx\"}',
        'Payment_model', 1, 1, 0, '', '1673263724'),
       (3, 'razorpay', 'INR', 'Razorpay', '',
        '{\"key_id\":\"rzp_test_J60bqBOi1z1aF5\",\"secret_key\":\"uk935K7p4j96UCJgHK8kAU4q\",\"theme_color\":\"#23d792\"}',
        'Payment_model', 1, 1, 0, '', '1708580304'),
       (4, 'xendit', 'USD', 'Xendit', '',
        '{\"api_key\":\"xnd_development_44KVee2PG4HeeZxG69R5eXOJHVD7t84FZUIH8dMxa37ZU3bZ8KDKV9ugPfy5fRK\",\"secret_key\":\"your_xendit_secret_key\",\"other_parameter\":\"value\"}',
        'Payment_model', 1, 1, 0, '', '1700647736'),
       (5, 'payu', 'PLN', 'Payu', '',
        '{\"pos_id\":\"PKf789971N2ig5hbF71y1BX46k\",\"second_key\":\"vaWDmIqbwiVUOVitXet9ZlC9mQ\",\"client_id\":\"PKf789971N2ig5hbF71y1BX46k\",\"client_secret\":\"vaWDmIqbwiVUOVitXet9ZlC9mQ\"}',
        'Payment_model', 1, 1, 0, '', '1707980726'),
       (6, 'pagseguro', 'BRL', 'Pagseguro', '',
        '{\"api_key\":\"BAE981AF77CA4768A93849AFF5BF2331\",\"secret_key\":\"8045696DBFBF765FF4189FBAE1E02AB5\",\"other_parameter\":\"value\"}',
        'Payment_model', 1, 1, 0, '', '1705559611'),
       (7, 'sslcommerz', 'USD', 'SSL Commerz', '',
        '{\"store_id\":\"sslcommerz_store_id\",\"store_password\":\"sslcommerz_store_password\"}', 'Payment_model', 1,
        1, 0, '', '1673264610'),
       (8, 'skrill', 'USD', 'Skrill', '',
        '{\"skrill_merchant_email\":\"urwatech@gmail.com\",\"secret_passphrase\":\"your_skrill_secret_key\"}',
        'Payment_model', 1, 1, 0, '', '1700647745'),
       (10, 'doku', 'USD', 'Doku', '',
        '{\"client_id\":\"BRN-0271-1700996849302\",\"shared_key\":\"SK-BxOS4PfUdIEMHLccyMI3\"}', 'Payment_model', 1, 1,
        0, '', '1708603994'),
       (11, 'bkash', 'BDT', 'Bkash', '',
        '{\"app_key\":\"app-key\",\"app_secret\":\"app-secret\",\"username\":\"username\",\"password\":\"passwoed\"}',
        'Payment_model', 1, 1, 0, '1700997440', '1701596645'),
       (12, 'cashfree', 'INR', 'CashFree', '',
        '{\"client_id\":\"TEST100748308df0665cabda6c2f38b903847001\",\"client_secret\":\"cfsk_ma_test_71065d7cadf8695e7845e86244bd7011_fff5714b\"}',
        'Payment_model', 1, 1, 0, '1700997440', '1701688995'),
       (13, 'maxicash', 'USD', 'Maxicash', '',
        '{\"merchant_id\":\"TEST100748308df0665cabda6c2f38b903847001\",\"merchant_password\":\"cfsk_ma_test_71065d7cadf8695e7845e86244bd7011_fff5714b\"}',
        'Payment_model', 1, 1, 0, '1700997440', '1701688995'),
       (14, 'aamarpay', 'BDT', 'Aamarpay', '',
        '{\"store_id\":\"aamarpaytest\",\"signature_key\":\"dbb74894e82415a2f7ff0ec3a97e4183\"}', 'Payment_model', 1, 1,
        0, '1700997440', '1711366991'),
       (15, 'flutterwave', 'NGN', 'Flutterwave', '',
        '{\"public_key\":\"FLWPUBK_TEST-b6fbee21fd2d9f13be74bf4d87fe6197-X\",\"secret_key\":\"FLWSECK_TEST-70c3f071a83a1d14bb8a0061e53845a7-X\"}',
        'Payment_model', 1, 1, 0, '1700997440', '1711366991'),
       (16, 'tazapay', 'USD', 'Tazapay', '',
        '{\"public_key\":\"pk_test_audpDpZGmHmYT46kmHvA\",\"api_key\":\"ak_test_CRXTUMNGV4MVPO7RDGT2\",\"api_secret\":\"sk_test_0OfyPSFUX4YqcQGkeyOWCVkEQ7WAWeZ6SmsNNpfFQ989qm15f8mu2gqmYhiXkZ87iF26Ej1Ex9pgNuTq9YoxksPmQjDEbyATBoWw0bNH12mQPIJQ4VGqEPIB5FEizarZ\"}',
        'Payment_model', 1, 1, 0, '1700997440', '1711366991'),
       (17, 'offline_payment', 'USD', 'Offline payment', '', '[]', 'Offline_payment_model', 0, 1, 1, '1724149872', '');

-- --------------------------------------------------------

--
-- Table structure for table `payout`
--

CREATE TABLE `payout`
(
    `id`            int(11) UNSIGNED NOT NULL,
    `user_id`       int(11) DEFAULT NULL,
    `payment_type`  varchar(255) DEFAULT NULL,
    `amount` double DEFAULT NULL,
    `date_added`    int(11) DEFAULT NULL,
    `last_modified` int(11) DEFAULT NULL,
    `status`        int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions`
(
    `id`          bigint(20) UNSIGNED NOT NULL,
    `admin_id`    int(11) DEFAULT NULL,
    `permissions` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question`
(
    `id`                int(11) UNSIGNED NOT NULL,
    `quiz_id`           int(11) DEFAULT NULL,
    `title`             longtext     DEFAULT NULL,
    `type`              varchar(255) DEFAULT NULL,
    `number_of_options` int(11) DEFAULT NULL,
    `options`           longtext     DEFAULT NULL,
    `correct_answers`   longtext     DEFAULT NULL,
    `order`             int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quiz_results`
--

CREATE TABLE `quiz_results`
(
    `quiz_result_id`  int(11) NOT NULL,
    `quiz_id`         int(11) NOT NULL,
    `user_id`         int(11) NOT NULL,
    `user_answers`    longtext     NOT NULL,
    `correct_answers` longtext     NOT NULL COMMENT 'question_id',
    `total_obtained_marks` double NOT NULL,
    `date_added`      varchar(100) NOT NULL,
    `date_updated`    varchar(100) NOT NULL,
    `is_submitted`    int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating`
(
    `id`            int(11) UNSIGNED NOT NULL,
    `rating` double DEFAULT NULL,
    `user_id`       int(11) DEFAULT NULL,
    `ratable_id`    int(11) DEFAULT NULL,
    `ratable_type`  varchar(50) DEFAULT NULL,
    `date_added`    int(11) DEFAULT NULL,
    `last_modified` int(11) DEFAULT NULL,
    `review`        longtext    DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `rating`, `user_id`, `ratable_id`, `ratable_type`, `date_added`, `last_modified`, `review`)
VALUES (1, 5, 3, 1, 'course', 1725854400, NULL, 'dswaqda');

-- --------------------------------------------------------

--
-- Table structure for table `resource_files`
--

CREATE TABLE `resource_files`
(
    `id`         int(11) NOT NULL,
    `lesson_id`  int(20) DEFAULT NULL,
    `title`      varchar(255) DEFAULT NULL,
    `file_name`  varchar(255) DEFAULT NULL,
    `created_at` varchar(255) DEFAULT NULL,
    `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role`
(
    `id`            int(11) UNSIGNED NOT NULL,
    `name`          varchar(255) DEFAULT NULL,
    `date_added`    int(11) DEFAULT NULL,
    `last_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `date_added`, `last_modified`)
VALUES (1, 'Admin', 1234567890, 1234567890),
       (2, 'User', 1234567890, 1234567890);

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section`
(
    `id`            int(11) NOT NULL,
    `title`         varchar(255) DEFAULT NULL,
    `course_id`     int(11) DEFAULT NULL,
    `start_date`    varchar(255) DEFAULT NULL,
    `end_date`      varchar(255) DEFAULT NULL,
    `restricted_by` varchar(255) DEFAULT NULL,
    `order`         int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`id`, `title`, `course_id`, `start_date`, `end_date`, `restricted_by`, `order`)
VALUES (1, 'he', 1, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings`
(
    `id`    int(11) UNSIGNED NOT NULL,
    `key`   varchar(255) DEFAULT NULL,
    `value` longtext     DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`)
VALUES (1, 'language', 'english'),
       (2, 'system_name', 'SoftDomi'),
       (3, 'system_title', 'Academy Learning Club'),
       (4, 'system_email', 'academy@example.com'),
       (5, 'address', 'Sydney, Australia'),
       (6, 'phone', '+143-52-9933631'),
       (7, 'purchase_code', 'your-purchase-code'),
       (8, 'paypal',
        '[{\"active\":\"1\",\"mode\":\"sandbox\",\"sandbox_client_id\":\"AfGaziKslex-scLAyYdDYXNFaz2aL5qGau-SbDgE_D2E80D3AFauLagP8e0kCq9au7W4IasmFbirUUYc\",\"sandbox_secret_key\":\"EMa5pCTuOpmHkhHaCGibGhVUcKg0yt5-C3CzJw-OWJCzaXXzTlyD17SICob_BkfM_0Nlk7TWnN42cbGz\",\"production_client_id\":\"1234\",\"production_secret_key\":\"12345\"}]'),
       (9, 'stripe_keys',
        '[{\"active\":\"1\",\"testmode\":\"on\",\"public_key\":\"pk_test_CAC3cB1mhgkJqXtypYBTGb4f\",\"secret_key\":\"sk_test_iatnshcHhQVRXdygXw3L2Pp2\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxxxxx\"}]'),
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
       (32, 'instructor_application_note',
        'Fill all the fields carefully and share if you want to share any document with us it will help us to evaluate you as an instructor.'),
       (33, 'razorpay_keys',
        '[{\"active\":\"1\",\"key\":\"rzp_test_J60bqBOi1z1aF5\",\"secret_key\":\"uk935K7p4j96UCJgHK8kAU4q\",\"theme_color\":\"#c7a600\"}]'),
       (34, 'razorpay_currency', 'USD'),
       (35, 'fb_app_id', NULL),
       (36, 'fb_app_secret', NULL),
       (37, 'fb_social_login', NULL),
       (38, 'drip_content_settings',
        '{\"lesson_completion_role\":\"percentage\",\"minimum_duration\":15,\"minimum_percentage\":\"30\",\"locked_lesson_message\":\"&lt;h3 xss=&quot;removed&quot; style=&quot;text-align: center; &quot;&gt;&lt;span xss=&quot;removed&quot;&gt;&lt;strong&gt;Permission denied!&lt;\\/strong&gt;&lt;\\/span&gt;&lt;\\/h3&gt;&lt;p xss=&quot;removed&quot; style=&quot;text-align: center; &quot;&gt;&lt;span xss=&quot;removed&quot;&gt;This course supports drip content, so you must complete the previous lessons.&lt;\\/span&gt;&lt;\\/p&gt;\"}'),
       (41, 'course_accessibility', 'publicly'),
       (42, 'smtp_crypto', 'tls'),
       (43, 'allowed_device_number_of_loging', '5'),
       (44, 'logging_device_from_mob', '2'),
       (45, 'logging_device_from_web', '2'),
       (47, 'academy_cloud_access_token', 'jdfghasdfasdfasdfasdfasdf'),
       (48, 'course_selling_tax', '0'),
       (49, 'ccavenue_keys',
        '[{\"active\":\"1\",\"ccavenue_merchant_id\":\"cmi_xxxxxx\",\"ccavenue_working_key\":\"cwk_xxxxxxxxxxxx\",\"ccavenue_access_code\":\"ccc_xxxxxxxxxxxxx\"}]'),
       (50, 'ccavenue_currency', 'INR'),
       (51, 'iyzico_keys',
        '[{\"active\":\"1\",\"testmode\":\"on\",\"iyzico_currency\":\"TRY\",\"api_test_key\":\"atk_xxxxxxxx\",\"secret_test_key\":\"stk_xxxxxxxx\",\"api_live_key\":\"alk_xxxxxxxx\",\"secret_live_key\":\"slk_xxxxxxxx\"}]'),
       (52, 'iyzico_currency', 'TRY'),
       (53, 'paystack_keys',
        '[{\"active\":\"1\",\"testmode\":\"on\",\"secret_test_key\":\"sk_test_c746060e693dd50c6f397dffc6c3b2f655217c94\",\"public_test_key\":\"pk_test_0816abbed3c339b8473ff22f970c7da1c78cbe1b\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxx\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxx\"}]'),
       (54, 'paystack_currency', 'NGN'),
       (55, 'paytm_keys',
        '[{\"PAYTM_MERCHANT_KEY\":\"PAYTM_MERCHANT_KEY\",\"PAYTM_MERCHANT_MID\":\"PAYTM_MERCHANT_MID\",\"PAYTM_MERCHANT_WEBSITE\":\"DEFAULT\",\"INDUSTRY_TYPE_ID\":\"Retail\",\"CHANNEL_ID\":\"WEB\"}]'),
       (57, 'google_analytics_id', ''),
       (58, 'meta_pixel_id', ''),
       (59, 'smtp_from_email', 'admin@example.com'),
       (61, 'language_dirs', '{\"english\":\"ltr\",\"hindi\":\"rtl\",\"arabic\":\"rtl\"}'),
       (62, 'timezone', 'America/New_York'),
       (63, 'account_disable', '0'),
       (64, 'offline_bank_information', 'Enter your bank information'),
       (65, 'randCallRange', '20'),
       (70, 'wasabi_key', 'access-key'),
       (71, 'wasabi_secret_key', 'secret-key'),
       (72, 'wasabi_bucketname', 'bucket-name'),
       (73, 'wasabi_region', 'region-name'),
       (74, 'bbb_setting',
        '{\"endpoint\":\"https:\\/\\/manager.bigbluemeeting.com\\/bigbluebutton\\/\",\"secret\":\"shared-secret-or-salt\"}'),
       (75, 'iso_country_codes',
        '{\"AF\": \"Afghanistan\",\"AX\": \"Åland Islands\",\"AL\": \"Albania\",\"DZ\": \"Algeria\",\"AS\": \"American Samoa\",\"AD\": \"Andorra\",\"AO\": \"Angola\",\"AI\": \"Anguilla\",\"AQ\": \"Antarctica\",\"AG\": \"Antigua and Barbuda\",\"AR\": \"Argentina\",\"AM\": \"Armenia\",\"AW\": \"Aruba\",\"AU\": \"Australia\",\"AT\": \"Austria\",\"AZ\": \"Azerbaijan\",\"BS\": \"Bahamas\",\"BH\": \"Bahrain\",\"BD\": \"Bangladesh\",\"BB\": \"Barbados\",\"BY\": \"Belarus\",\"BE\": \"Belgium\",\"BZ\": \"Belize\",\"BJ\": \"Benin\",\"BM\": \"Bermuda\",\"BT\": \"Bhutan\",\"BO\": \"Bolivia (Plurinational State of)\",\"BQ\": \"Bonaire, Sint Eustatius and Saba\",\"BA\": \"Bosnia and Herzegovina\",\"BW\": \"Botswana\",\"BV\": \"Bouvet Island\",\"BR\": \"Brazil\",\"IO\": \"British Indian Ocean Territory\",\"BN\": \"Brunei Darussalam\",\"BG\": \"Bulgaria\",\"BF\": \"Burkina Faso\",\"BI\": \"Burundi\",\"CV\": \"Cabo Verde\",\"KH\": \"Cambodia\",\"CM\": \"Cameroon\",\"CA\": \"Canada\",\"KY\": \"Cayman Islands\",\"CF\": \"Central African Republic\",\"TD\": \"Chad\",\"CL\": \"Chile\",\"CN\": \"China\",\"CX\": \"Christmas Island\",\"CC\": \"Cocos (Keeling) Islands\",\"CO\": \"Colombia\",\"KM\": \"Comoros\",\"CG\": \"Congo\",\"CD\": \"Congo (Democratic Republic of the)\",\"CK\": \"Cook Islands\",\"CR\": \"Costa Rica\",\"CI\": \"Côte d\'Ivoire\",\"HR\": \"Croatia\",\"CU\": \"Cuba\",\"CW\": \"Curaçao\",\"CY\": \"Cyprus\",\"CZ\": \"Czech Republic\",\"DK\": \"Denmark\",\"DJ\": \"Djibouti\",\"DM\": \"Dominica\",\"DO\": \"Dominican Republic\",\"EC\": \"Ecuador\",\"EG\": \"Egypt\",\"SV\": \"El Salvador\",\"GQ\": \"Equatorial Guinea\",\"ER\": \"Eritrea\",\"EE\": \"Estonia\",\"ET\": \"Ethiopia\",\"FK\": \"Falkland Islands (Malvinas)\",\"FO\": \"Faroe Islands\",\"FJ\": \"Fiji\",\"FI\": \"Finland\",\"FR\": \"France\",\"GF\": \"French Guiana\",\"PF\": \"French Polynesia\",\"TF\": \"French Southern Territories\",\"GA\": \"Gabon\",\"GM\": \"Gambia\",\"GE\": \"Georgia\",\"DE\": \"Germany\",\"GH\": \"Ghana\",\"GI\": \"Gibraltar\",\"GR\": \"Greece\",\"GL\": \"Greenland\",\"GD\": \"Grenada\",\"GP\": \"Guadeloupe\",\"GU\": \"Guam\",\"GT\": \"Guatemala\",\"GG\": \"Guernsey\",\"GN\": \"Guinea\",\"GW\": \"Guinea-Bissau\",\"GY\": \"Guyana\",\"HT\": \"Haiti\",\"HM\": \"Heard Island and McDonald Islands\",\"VA\": \"Holy See\",\"HN\": \"Honduras\",\"HK\": \"Hong Kong\",\"HU\": \"Hungary\",\"IS\": \"Iceland\",\"IN\": \"India\",\"ID\": \"Indonesia\",\"IR\": \"Iran (Islamic Republic of)\",\"IQ\": \"Iraq\",\"IE\": \"Ireland\",\"IM\": \"Isle of Man\",\"IL\": \"Israel\",\"IT\": \"Italy\",\"JM\": \"Jamaica\",\"JP\": \"Japan\",\"JE\": \"Jersey\",\"JO\": \"Jordan\",\"KZ\": \"Kazakhstan\",\"KE\": \"Kenya\",\"KI\": \"Kiribati\",\"KP\": \"Korea (Democratic People\'s Republic of)\",\"KR\": \"Korea (Republic of)\",\"KW\": \"Kuwait\",\"KG\": \"Kyrgyzstan\",\"LA\": \"Lao People\'s Democratic Republic\",\"LV\": \"Latvia\",\"LB\": \"Lebanon\",\"LS\": \"Lesotho\",\"LR\": \"Liberia\",\"LY\": \"Libya\",\"LI\": \"Liechtenstein\",\"LT\": \"Lithuania\",\"LU\": \"Luxembourg\",\"MO\": \"Macao\",\"MK\": \"North Macedonia\",\"MG\": \"Madagascar\",\"MW\": \"Malawi\",\"MY\": \"Malaysia\",\"MV\": \"Maldives\",\"ML\": \"Mali\",\"MT\": \"Malta\",\"MH\": \"Marshall Islands\",\"MQ\": \"Martinique\",\"MR\": \"Mauritania\",\"MU\": \"Mauritius\",\"YT\": \"Mayotte\",\"MX\": \"Mexico\",\"FM\": \"Micronesia (Federated States of)\",\"MD\": \"Moldova (Republic of)\",\"MC\": \"Monaco\",\"MN\": \"Mongolia\",\"ME\": \"Montenegro\",\"MS\": \"Montserrat\",\"MA\": \"Morocco\",\"MZ\": \"Mozambique\",\"MM\": \"Myanmar\",\"NA\": \"Namibia\",\"NR\": \"Nauru\",\"NP\": \"Nepal\",\"NL\": \"Netherlands\",\"NC\": \"New Caledonia\",\"NZ\": \"New Zealand\",\"NI\": \"Nicaragua\",\"NE\": \"Niger\",\"NG\": \"Nigeria\",\"NU\": \"Niue\",\"NF\": \"Norfolk Island\",\"MP\": \"Northern Mariana Islands\",\"NO\": \"Norway\",\"OM\": \"Oman\",\"PK\": \"Pakistan\",\"PW\": \"Palau\",\"PS\": \"Palestine, State of\",\"PA\": \"Panama\",\"PG\": \"Papua New Guinea\",\"PY\": \"Paraguay\",\"PE\": \"Peru\",\"PH\": \"Philippines\",\"PN\": \"Pitcairn\",\"PL\": \"Poland\",\"PT\": \"Portugal\",\"PR\": \"Puerto Rico\",\"QA\": \"Qatar\",\"RE\": \"Réunion\",\"RO\": \"Romania\",\"RU\": \"Russian Federation\",\"RW\": \"Rwanda\",\"BL\": \"Saint Barthélemy\",\"SH\": \"Saint Helena, Ascension and Tristan da Cunha\",\"KN\": \"Saint Kitts and Nevis\",\"LC\": \"Saint Lucia\",\"MF\": \"Saint Martin (French part)\",\"PM\": \"Saint Pierre and Miquelon\",\"VC\": \"Saint Vincent and the Grenadines\",\"WS\": \"Samoa\",\"SM\": \"San Marino\",\"ST\": \"Sao Tome and Principe\",\"SA\": \"Saudi Arabia\",\"SN\": \"Senegal\",\"RS\": \"Serbia\",\"SC\": \"Seychelles\",\"SL\": \"Sierra Leone\",\"SG\": \"Singapore\",\"SX\": \"Sint Maarten (Dutch part)\",\"SK\": \"Slovakia\",\"SI\": \"Slovenia\",\"SB\": \"Solomon Islands\",\"SO\": \"Somalia\",\"ZA\": \"South Africa\",\"GS\": \"South Georgia and the South Sandwich Islands\",\"SS\": \"South Sudan\",\"ES\": \"Spain\",\"LK\": \"Sri Lanka\",\"SD\": \"Sudan\",\"SR\": \"Suriname\",\"SJ\": \"Svalbard and Jan Mayen\",\"SE\": \"Sweden\",\"CH\": \"Switzerland\",\"SY\": \"Syrian Arab Republic\",\"TW\": \"Taiwan, Province of China\",\"TJ\": \"Tajikistan\",\"TZ\": \"Tanzania, United Republic of\",\"TH\": \"Thailand\",\"TL\": \"Timor-Leste\",\"TG\": \"Togo\",\"TK\": \"Tokelau\",\"TO\": \"Tonga\",\"TT\": \"Trinidad and Tobago\",\"TN\": \"Tunisia\",\"TR\": \"Turkey\",\"TM\": \"Turkmenistan\",\"TC\": \"Turks and Caicos Islands\",\"TV\": \"Tuvalu\",\"UG\": \"Uganda\",\"UA\": \"Ukraine\",\"AE\": \"United Arab Emirates\",\"GB\": \"United Kingdom of Great Britain and Northern Ireland\",\"UM\": \"United States Minor Outlying Islands\",\"US\": \"United States of America\",\"UY\": \"Uruguay\",\"UZ\": \"Uzbekistan\",\"VU\": \"Vanuatu\",\"VE\": \"Venezuela (Bolivarian Republic of)\",\"VN\": \"Viet Nam\",\"VG\": \"Virgin Islands (British)\",\"VI\": \"Virgin Islands (U.S.)\",\"WF\": \"Wallis and Futuna\",\"EH\": \"Western Sahara\",\"YE\": \"Yemen\",\"ZM\": \"Zambia\",\"ZW\": \"Zimbabwe\"}'),
(76, 'certificate_template', 'This is to certify that Mr. / Ms. {student} successfully completed the course with on certificate for {course}.'),
        (77, 'certificate-text-positons',
         '\n			\n			&lt;div class=&quot;this-template&quot; style=&quot;width: 750px; position: relative;&quot;&gt;\n				&lt;img width=&quot;100%&quot; src=&quot;..\\..\\uploads/certificates/template.jpg&quot;&gt;\n				&lt;div class=&quot;draggable instructor_name&quot; style=&quot;position: absolute; font-family: &amp;quot;Miss Fajardose&amp;quot;; font-size: 40px; top: 373.892px; left: 553.889px;&quot;&gt;{instructor}&lt;/div&gt;&lt;div class=&quot;draggable course_level&quot; style=&quot;position: absolute;font-size: 16px;top: 444.861px;left: 84.8681px;&quot;&gt;{course_level}&lt;/div&gt;\n&lt;div class=&quot;draggable course_language&quot; style=&quot;position: absolute; font-size: 16px; top: 155.84px; left: 65.8473px;&quot;&gt;{course_language}&lt;/div&gt;\n&lt;div class=&quot;draggable student_name&quot; style=&quot;position: absolute; font-family: &amp;quot;Miss Fajardose&amp;quot;, cursive; font-size: 40px; top: 373.92px; left: 59.9063px;&quot;&gt;{student}&lt;/div&gt;\n&lt;div class=&quot;draggable duration_name&quot; style=&quot;position: absolute; font-size: 16px; top: 341.837px; left: 328.806px;&quot;&gt;{total_duration}&lt;/div&gt;\n&lt;div class=&quot;draggable lesson_name&quot; style=&quot;position: absolute;font-size: 16px;top: 341.882px;left: 124.868px;&quot;&gt;{total_lesson}&lt;/div&gt;\n				&lt;div class=&quot;draggable course_completion_date&quot; style=&quot;position: absolute; font-size: 20px; top: 151.924px; left: 543.896px;&quot;&gt;{date}&lt;/div&gt;\n				&lt;div class=&quot;draggable certificate_text&quot; style=&quot;position: absolute;width: 500px;text-align: center;font-size: 28px;top: 228.948px;font-family: &amp;quot;Pinyon Script&amp;quot;;left: 123.903px;&quot;&gt;This is to certify that Mr. / Ms. {student} successfully completed the course with on certificate for {course}.&lt;/div&gt;\n				&lt;div class=&quot;draggable qrCode&quot; style=&quot;position: absolute; width: 65px; height: 65px; text-align: center; font-size: 20px; top: 128.912px; left: 336.913px;&quot;&gt;&lt;p style=&quot;text-align: center; padding: 4px 0px;&quot;&gt;Qr code&lt;/p&gt;&lt;/div&gt;\n			&lt;/div&gt;\n																																																																																						'),
        (78, 'open_ai',
         '{\"model\":\"gpt-3.5-turbo-0125\",\"max_tokens\":\"200\",\"ai_secret_key\":\"\",\"number_of_image_creation\":\"4\"}'),
        (79, 'allowed_device_number_of_logging_web', '2'),
        (80, 'allowed_device_number_of_logging_mob', '2');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag`
(
    `id`            int(11) UNSIGNED NOT NULL,
    `tag`           varchar(255) DEFAULT NULL,
    `tagable_id`    int(11) DEFAULT NULL,
    `tagable_type`  varchar(255) DEFAULT NULL,
    `date_added`    int(11) DEFAULT NULL,
    `last_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users`
(
    `id`                int(11) UNSIGNED NOT NULL,
    `first_name`        varchar(255) DEFAULT NULL,
    `last_name`         varchar(255) DEFAULT NULL,
    `email`             varchar(50)  DEFAULT NULL,
    `phone`             varchar(255) DEFAULT NULL,
    `address`           varchar(255) DEFAULT NULL,
    `password`          varchar(255) DEFAULT NULL,
    `skills`            longtext NOT NULL,
    `social_links`      longtext     DEFAULT NULL,
    `biography`         longtext     DEFAULT NULL,
    `role_id`           int(11) DEFAULT NULL,
    `date_added`        int(11) DEFAULT NULL,
    `last_modified`     int(11) DEFAULT NULL,
    `wishlist`          longtext     DEFAULT NULL,
    `title`             longtext     DEFAULT NULL,
    `payment_keys`      longtext NOT NULL,
    `verification_code` longtext     DEFAULT NULL,
    `status`            int(11) DEFAULT NULL,
    `is_instructor`     int(11) DEFAULT 0,
    `image`             varchar(255) DEFAULT NULL,
    `temp`              longtext     DEFAULT NULL,
    `sessions`          longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `password`, `skills`, `social_links`,
                     `biography`, `role_id`, `date_added`, `last_modified`, `wishlist`, `title`, `payment_keys`,
                     `verification_code`, `status`, `is_instructor`, `image`, `temp`, `sessions`)
VALUES (2, 'Mahmoud', 'Galal', 'admin@example.com', NULL, NULL, 'd033e22ae348aeb5660fc2140aec35850c4da997', '',
        '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 1, NULL, NULL, NULL, NULL, '', NULL, 1, 1, NULL,
        NULL, ''),
       (4, 'Mahmoud', 'Galal', 'mahmoud2galal55555@gmail.com', '01030238448', 'طهطا - البنك الاهلي - شارع الثوره',
        '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}',
        '<p>dawdwa</p>', 2, 1725735474, NULL, '[]', NULL,
        '{\"paypal\":{\"sandbox_client_id\":\"\",\"sandbox_secret_key\":\"\",\"production_client_id\":\"\",\"production_secret_key\":\"\"},\"stripe\":{\"public_key\":\"\",\"secret_key\":\"\",\"public_live_key\":\"\",\"secret_live_key\":\"\"},\"razorpay\":{\"key_id\":\"\",\"secret_key\":\"\",\"theme_color\":\"\"},\"xendit\":{\"api_key\":\"\",\"secret_key\":\"\",\"other_parameter\":\"\"},\"payu\":{\"pos_id\":\"\",\"second_key\":\"\",\"client_id\":\"\",\"client_secret\":\"\"},\"pagseguro\":{\"api_key\":\"\",\"secret_key\":\"\",\"other_parameter\":\"\"},\"sslcommerz\":{\"store_id\":\"\",\"store_password\":\"\"},\"skrill\":{\"skrill_merchant_email\":\"\",\"secret_passphrase\":\"\"},\"doku\":{\"client_id\":\"\",\"shared_key\":\"\"},\"bkash\":{\"app_key\":\"\",\"app_secret\":\"\",\"username\":\"\",\"password\":\"\"},\"cashfree\":{\"client_id\":\"\",\"client_secret\":\"\"},\"maxicash\":{\"merchant_id\":\"\",\"merchant_password\":\"\"},\"aamarpay\":{\"store_id\":\"\",\"signature_key\":\"\"},\"flutterwave\":{\"public_key\":\"\",\"secret_key\":\"\"},\"tazapay\":{\"public_key\":\"\",\"api_key\":\"\",\"api_secret\":\"\"}}',
        NULL, 1, 1, '5ba2b31995d7e6f8cae89a65df1d4865', NULL, '[]');

-- --------------------------------------------------------

--
-- Table structure for table `watched_duration`
--

CREATE TABLE `watched_duration`
(
    `watched_id`         int(11) UNSIGNED NOT NULL,
    `watched_student_id` int(11) DEFAULT NULL,
    `watched_course_id`  int(11) DEFAULT NULL,
    `watched_lesson_id`  int(11) DEFAULT NULL,
    `current_duration`   int(20) DEFAULT NULL,
    `watched_counter`    longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `watch_histories`
--

CREATE TABLE `watch_histories`
(
    `watch_history_id`   int(11) NOT NULL,
    `course_id`          int(11) NOT NULL,
    `student_id`         int(11) NOT NULL,
    `completed_lesson`   longtext NOT NULL,
    `course_progress`    int(11) NOT NULL,
    `watching_lesson_id` int(11) NOT NULL,
    `quiz_result`        longtext NOT NULL,
    `completed_date`     varchar(255) DEFAULT NULL,
    `date_added`         varchar(100) DEFAULT NULL,
    `date_updated`       varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `watch_histories`
--

INSERT INTO `watch_histories` (`watch_history_id`, `course_id`, `student_id`, `completed_lesson`, `course_progress`,
                               `watching_lesson_id`, `quiz_result`, `completed_date`, `date_added`, `date_updated`)
VALUES (1, 1, 3, '[\"1\"]', 100, 1, '', '1725884545', '1725884503', '1725906244'),
       (2, 1, 2, '', 0, 1, '', NULL, '1725906093', NULL),
       (3, 1, 4, '[\"1\"]', 100, 0, '', '1725906365', '1725906358', '1725906486');


--
-- Table structure for table `complains`
--

CREATE TABLE `complains`
(
    `id`              int(11) NOT NULL,
    `complain_type`   enum('user','admin') NOT NULL DEFAULT 'user',
    `user_id`         int(11) NOT NULL,
    `name`            varchar(255) NOT NULL,
    `email`           varchar(255) NOT NULL,
    `phone`           int(11) DEFAULT NULL,
    `course_id`       int(11) DEFAULT NULL,
    `problem_type`    enum('technical_problem','quiz_problem','content_problem','general_problem','general_matter','payment_problem','sign_problem') DEFAULT NULL,
    `message`         text         NOT NULL,
    `status`          enum('open','closed') DEFAULT 'open',
    `created_at`      timestamp    NOT NULL DEFAULT current_timestamp(),
    `updated_at`      timestamp    NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
    `replay_admin_id` int(11) DEFAULT NULL,
    `replay_message`  text                  DEFAULT NULL,
    `replay_date`     timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


--
-- Indexes for dumped tables
--

-- Indexes for table `complains`
--
ALTER TABLE `complains`
    ADD PRIMARY KEY (`id`);

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
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
    ADD PRIMARY KEY (`assignment_id`);

--
-- Indexes for table `assignment_submission`
--
ALTER TABLE `assignment_submission`
    ADD PRIMARY KEY (`submission_id`);

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
-- Indexes for table `bundle_payment`
--
ALTER TABLE `bundle_payment`
    ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bundle_rating`
--
ALTER TABLE `bundle_rating`
    ADD PRIMARY KEY (`id`);

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
-- Indexes for table `course_bundle`
--
ALTER TABLE `course_bundle`
    ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_forum`
--
ALTER TABLE `course_forum`
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
-- Indexes for table `ebook`
--
ALTER TABLE `ebook`
    ADD PRIMARY KEY (`ebook_id`);

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
    MODIFY `id` int (11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

-- AUTO_INCREMENT for table `complains`
--
ALTER TABLE `complains`
    MODIFY `id` int (11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
    MODIFY `id` int (11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
    MODIFY `assignment_id` int (11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `assignment_submission`
--
ALTER TABLE `assignment_submission`
    MODIFY `submission_id` int (11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bbb_meetings`
--
ALTER TABLE `bbb_meetings`
    MODIFY `id` int (20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
    MODIFY `blog_id` int (11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
    MODIFY `blog_category_id` int (11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
    MODIFY `blog_comment_id` int (11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bundle_payment`
--
ALTER TABLE `bundle_payment`
    MODIFY `id` int (11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bundle_rating`
--
ALTER TABLE `bundle_rating`
    MODIFY `id` int (11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
    MODIFY `id` int (11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
    MODIFY `id` int (11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
    MODIFY `id` int (11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
    MODIFY `id` int (21) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
    MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
    MODIFY `id` int (11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course_bundle`
--
ALTER TABLE `course_bundle`
    MODIFY `id` int (11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_forum`
--
ALTER TABLE `course_forum`
    MODIFY `id` int (11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
    MODIFY `id` int (11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `custom_page`
--
ALTER TABLE `custom_page`
    MODIFY `custom_page_id` int (11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ebook`
--
ALTER TABLE `ebook`
    MODIFY `ebook_id` int (11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enrol`
--
ALTER TABLE `enrol`
    MODIFY `id` int (11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `frontend_settings`
--
ALTER TABLE `frontend_settings`
    MODIFY `id` int (11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
    MODIFY `phrase_id` int (11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1443;

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
    MODIFY `id` int (11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
    MODIFY `message_id` int (20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `message_thread`
--
ALTER TABLE `message_thread`
    MODIFY `message_thread_id` int (11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
    MODIFY `id` int (11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newsletter_histories`
--
ALTER TABLE `newsletter_histories`
    MODIFY `id` int (20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newsletter_subscriber`
--
ALTER TABLE `newsletter_subscriber`
    MODIFY `id` int (11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
    MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `notification_settings`
--
ALTER TABLE `notification_settings`
    MODIFY `id` int (11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `offline_payment`
--
ALTER TABLE `offline_payment`
    MODIFY `id` int (11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
    MODIFY `id` int (11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
    MODIFY `id` int (11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `payout`
--
ALTER TABLE `payout`
    MODIFY `id` int (11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
    MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
    MODIFY `id` int (11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quiz_results`
--
ALTER TABLE `quiz_results`
    MODIFY `quiz_result_id` int (11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
    MODIFY `id` int (11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `resource_files`
--
ALTER TABLE `resource_files`
    MODIFY `id` int (11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
    MODIFY `id` int (11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
    MODIFY `id` int (11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
    MODIFY `id` int (11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
    MODIFY `id` int (11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
    MODIFY `id` int (11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `watched_duration`
--
ALTER TABLE `watched_duration`
    MODIFY `watched_id` int (11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `watch_histories`
--
ALTER TABLE `watch_histories`
    MODIFY `watch_history_id` int (11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;