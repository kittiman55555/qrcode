-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2018 at 04:07 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qrcode_smith`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts_brand`
--

CREATE TABLE `accounts_brand` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts_brand`
--

INSERT INTO `accounts_brand` (`id`, `name`) VALUES
(1, '55555555555555555'),
(2, '6666666666666666');

-- --------------------------------------------------------

--
-- Table structure for table `accounts_profile`
--

CREATE TABLE `accounts_profile` (
  `id` int(11) NOT NULL,
  `location` varchar(30) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `birthdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts_profile`
--

INSERT INTO `accounts_profile` (`id`, `location`, `brand_id`, `user_id`, `birthdate`) VALUES
(1, '', NULL, 1, NULL),
(3, '', NULL, 3, NULL),
(4, '', 1, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_register`
--

CREATE TABLE `accounts_register` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `date` datetime(6) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` longtext NOT NULL,
  `item_number` varchar(50) NOT NULL,
  `code` varchar(50) NOT NULL,
  `running` varchar(50) NOT NULL,
  `http_user` varchar(50) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL,
  `cf1` varchar(50) NOT NULL,
  `cf2` varchar(50) NOT NULL,
  `cf3` varchar(50) NOT NULL,
  `cf4` varchar(50) NOT NULL,
  `cf5` varchar(50) NOT NULL,
  `cf6` varchar(50) NOT NULL,
  `cf7` varchar(50) NOT NULL,
  `cf8` varchar(50) NOT NULL,
  `cf9` varchar(50) NOT NULL,
  `cf10` varchar(50) NOT NULL,
  `brands_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add brand', 7, 'add_brand'),
(26, 'Can change brand', 7, 'change_brand'),
(27, 'Can delete brand', 7, 'delete_brand'),
(28, 'Can view brand', 7, 'view_brand'),
(29, 'Can add register', 8, 'add_register'),
(30, 'Can change register', 8, 'change_register'),
(31, 'Can delete register', 8, 'delete_register'),
(32, 'Can view register', 8, 'view_register'),
(33, 'Can add profile', 9, 'add_profile'),
(34, 'Can change profile', 9, 'change_profile'),
(35, 'Can delete profile', 9, 'delete_profile'),
(36, 'Can view profile', 9, 'view_profile');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$120000$6W87iC0Grxes$Tc6+4gj88zTnYbDBOJdtGVDT9MLqno/R+uEgvZs2Smc=', '2018-12-21 14:45:48.391704', 1, 'atcreative', '', '', '', 1, 1, '2018-12-21 14:45:23.715172'),
(3, 'pbkdf2_sha256$120000$DFePExaIcDRE$y+dLDgWwvo+0hRbUTWDrhDSCkAziYbZc4wtLHvZ+Hq4=', NULL, 0, 'kittiman12313', '', '', '', 0, 1, '2018-12-21 14:47:00.000000'),
(4, 'pbkdf2_sha256$120000$XutVufGafvaP$CsAs713tx6xfQiMXQHR50jsOEKumy8mKPdzi1ik1/tw=', NULL, 0, 'kittiman12314', '', '', '', 0, 1, '2018-12-21 14:47:48.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_user_user_permissions`
--

INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(1, 3, 1),
(2, 3, 2),
(3, 3, 3),
(4, 3, 4),
(5, 3, 5),
(6, 3, 6),
(7, 3, 7),
(8, 3, 8),
(9, 3, 9),
(10, 3, 10),
(11, 3, 11),
(12, 3, 12),
(13, 3, 13),
(14, 3, 14),
(15, 3, 15),
(16, 3, 16),
(17, 3, 17),
(18, 3, 18),
(19, 3, 19),
(20, 3, 20),
(21, 3, 21),
(22, 3, 22),
(23, 3, 23),
(24, 3, 24),
(25, 3, 25),
(26, 3, 26),
(27, 3, 27),
(28, 3, 28),
(29, 3, 29),
(30, 3, 30),
(31, 3, 31),
(32, 3, 32),
(33, 3, 33),
(34, 3, 34),
(35, 3, 35),
(36, 3, 36);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2018-12-21 14:46:09.242855', '2', 'kittiman555', 1, '[{\"added\": {}}]', 4, 1),
(2, '2018-12-21 14:46:28.751586', '2', 'kittiman555', 3, '', 4, 1),
(3, '2018-12-21 14:46:38.661095', '1', 'Brand object (1)', 1, '[{\"added\": {}}]', 7, 1),
(4, '2018-12-21 14:46:42.810725', '2', 'Brand object (2)', 1, '[{\"added\": {}}]', 7, 1),
(5, '2018-12-21 14:47:01.017054', '3', 'kittiman12313', 1, '[{\"added\": {}}]', 4, 1),
(6, '2018-12-21 14:47:28.481708', '3', 'kittiman12313', 2, '[{\"changed\": {\"fields\": [\"user_permissions\"]}}]', 4, 1),
(7, '2018-12-21 14:47:49.464382', '4', 'kittiman12314', 1, '[{\"added\": {}}]', 4, 1),
(8, '2018-12-21 14:53:51.572614', '4', 'kittiman12314', 2, '[{\"changed\": {\"name\": \"profile\", \"object\": \"kittiman12314\", \"fields\": [\"brand\"]}}]', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(7, 'accounts', 'brand'),
(9, 'accounts', 'profile'),
(8, 'accounts', 'register'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-12-21 14:44:21.306060'),
(2, 'auth', '0001_initial', '2018-12-21 14:44:23.138050'),
(3, 'accounts', '0001_initial', '2018-12-21 14:44:23.697143'),
(4, 'accounts', '0002_userprofile', '2018-12-21 14:44:24.035334'),
(5, 'accounts', '0003_auto_20181221_2057', '2018-12-21 14:44:25.272914'),
(6, 'accounts', '0004_auto_20181221_2112', '2018-12-21 14:44:25.449515'),
(7, 'accounts', '0005_profile_birthdate', '2018-12-21 14:44:25.597788'),
(8, 'admin', '0001_initial', '2018-12-21 14:44:26.076691'),
(9, 'admin', '0002_logentry_remove_auto_add', '2018-12-21 14:44:26.109945'),
(10, 'admin', '0003_logentry_add_action_flag_choices', '2018-12-21 14:44:26.144752'),
(11, 'contenttypes', '0002_remove_content_type_name', '2018-12-21 14:44:26.444450'),
(12, 'auth', '0002_alter_permission_name_max_length', '2018-12-21 14:44:26.593573'),
(13, 'auth', '0003_alter_user_email_max_length', '2018-12-21 14:44:26.804753'),
(14, 'auth', '0004_alter_user_username_opts', '2018-12-21 14:44:26.859005'),
(15, 'auth', '0005_alter_user_last_login_null', '2018-12-21 14:44:27.042616'),
(16, 'auth', '0006_require_contenttypes_0002', '2018-12-21 14:44:27.051222'),
(17, 'auth', '0007_alter_validators_add_error_messages', '2018-12-21 14:44:27.090326'),
(18, 'auth', '0008_alter_user_username_max_length', '2018-12-21 14:44:27.290618'),
(19, 'auth', '0009_alter_user_last_name_max_length', '2018-12-21 14:44:27.489907'),
(20, 'sessions', '0001_initial', '2018-12-21 14:44:27.607558');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('jot5f8wn2c449vcmnoswc4b5kprqypvm', 'ODc5ZjI1ODBjNzkzMDk4NjE0NDZiYTllYjBlOWMyMTJjMWQwMGFkOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZmYwYjZjNjRlYjA1YWYyMTQ4OGY1NDgxNmUwYjg5N2ZlMmViMWU5In0=', '2019-01-04 14:45:48.403825');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts_brand`
--
ALTER TABLE `accounts_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accounts_profile`
--
ALTER TABLE `accounts_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `accounts_profile_brand_id_e378c4fa_fk_accounts_brand_id` (`brand_id`);

--
-- Indexes for table `accounts_register`
--
ALTER TABLE `accounts_register`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accounts_register_brands_id_46c588b2_fk_accounts_brand_id` (`brands_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts_brand`
--
ALTER TABLE `accounts_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `accounts_profile`
--
ALTER TABLE `accounts_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `accounts_register`
--
ALTER TABLE `accounts_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts_profile`
--
ALTER TABLE `accounts_profile`
  ADD CONSTRAINT `accounts_profile_brand_id_e378c4fa_fk_accounts_brand_id` FOREIGN KEY (`brand_id`) REFERENCES `accounts_brand` (`id`),
  ADD CONSTRAINT `accounts_profile_user_id_49a85d32_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `accounts_register`
--
ALTER TABLE `accounts_register`
  ADD CONSTRAINT `accounts_register_brands_id_46c588b2_fk_accounts_brand_id` FOREIGN KEY (`brands_id`) REFERENCES `accounts_brand` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
