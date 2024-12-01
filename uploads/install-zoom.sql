
INSERT INTO `settings` (`key`, `value`)
VALUES ('zoom_settings', '{"account_id":"","client_id":"","client_secret":""}');

-- --------------------------------------------------------

--
-- Table structure for table `bbb_meetings`
--

CREATE TABLE `zoom_meetings`
(
    `id` int(20) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `course_id` int(11) NOT NULL,
    `meeting_id` int(11) NOT NULL,
    `topic` varchar(255) DEFAULT NULL,
    `duration` int(5) DEFAULT NULL,
    `join_url` varchar(255) DEFAULT NULL,
    `instructions` longtext DEFAULT NULL,
    `created_at` varchar(100) DEFAULT NULL,
    `updated_at` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------
