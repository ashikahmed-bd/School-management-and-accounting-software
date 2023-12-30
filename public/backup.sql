-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table unifiedtransform.academic_settings
CREATE TABLE IF NOT EXISTS `academic_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attendance_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'section',
  `marks_submission_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'off',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table unifiedtransform.academic_settings: ~1 rows (approximately)
INSERT INTO `academic_settings` (`id`, `attendance_type`, `marks_submission_status`, `created_at`, `updated_at`) VALUES
	(1, 'section', 'off', '2023-12-30 00:47:55', '2023-12-30 01:08:31');

-- Dumping structure for table unifiedtransform.assigned_teachers
CREATE TABLE IF NOT EXISTS `assigned_teachers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `teacher_id` int unsigned NOT NULL,
  `semester_id` int unsigned NOT NULL,
  `class_id` int unsigned NOT NULL,
  `section_id` int unsigned NOT NULL,
  `course_id` int unsigned NOT NULL,
  `session_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table unifiedtransform.assigned_teachers: ~0 rows (approximately)
INSERT INTO `assigned_teachers` (`id`, `teacher_id`, `semester_id`, `class_id`, `section_id`, `course_id`, `session_id`, `created_at`, `updated_at`) VALUES
	(1, 2, 2, 1, 1, 1, 2, '2023-12-30 01:02:12', '2023-12-30 01:02:12');

-- Dumping structure for table unifiedtransform.assignments
CREATE TABLE IF NOT EXISTS `assignments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `teacher_id` int unsigned NOT NULL,
  `semester_id` int unsigned NOT NULL,
  `class_id` int unsigned NOT NULL,
  `section_id` int unsigned NOT NULL,
  `course_id` int unsigned NOT NULL,
  `session_id` int unsigned NOT NULL,
  `assignment_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `assignment_file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table unifiedtransform.assignments: ~0 rows (approximately)

-- Dumping structure for table unifiedtransform.attendances
CREATE TABLE IF NOT EXISTS `attendances` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `course_id` int unsigned NOT NULL DEFAULT '0',
  `class_id` int unsigned NOT NULL DEFAULT '0',
  `section_id` int unsigned NOT NULL DEFAULT '0',
  `student_id` int unsigned NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table unifiedtransform.attendances: ~0 rows (approximately)
INSERT INTO `attendances` (`id`, `course_id`, `class_id`, `section_id`, `student_id`, `status`, `session_id`, `created_at`, `updated_at`) VALUES
	(1, 0, 1, 1, 3, 'on', 2, '2023-12-30 01:15:07', '2023-12-30 01:15:07');

-- Dumping structure for table unifiedtransform.courses
CREATE TABLE IF NOT EXISTS `courses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `course_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_id` int unsigned NOT NULL,
  `semester_id` int unsigned NOT NULL,
  `session_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table unifiedtransform.courses: ~0 rows (approximately)
INSERT INTO `courses` (`id`, `course_name`, `course_type`, `class_id`, `semester_id`, `session_id`, `created_at`, `updated_at`) VALUES
	(1, 'Bangla', 'Core', 1, 2, 2, '2023-12-30 00:57:24', '2023-12-30 00:57:24'),
	(2, 'English', 'Core', 1, 2, 2, '2023-12-30 00:57:34', '2023-12-30 00:57:34'),
	(3, 'Math', 'Core', 1, 2, 2, '2023-12-30 00:57:41', '2023-12-30 00:57:41');

-- Dumping structure for table unifiedtransform.events
CREATE TABLE IF NOT EXISTS `events` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `session_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table unifiedtransform.events: ~0 rows (approximately)

-- Dumping structure for table unifiedtransform.exams
CREATE TABLE IF NOT EXISTS `exams` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `exam_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `class_id` int unsigned NOT NULL,
  `course_id` int unsigned NOT NULL,
  `semester_id` int unsigned NOT NULL,
  `session_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table unifiedtransform.exams: ~0 rows (approximately)
INSERT INTO `exams` (`id`, `exam_name`, `start_date`, `end_date`, `class_id`, `course_id`, `semester_id`, `session_id`, `created_at`, `updated_at`) VALUES
	(1, 'Daily', '2023-12-30 13:06:00', '2023-12-30 01:12:00', 1, 1, 2, 2, '2023-12-30 01:06:24', '2023-12-30 01:06:24');

-- Dumping structure for table unifiedtransform.exam_rules
CREATE TABLE IF NOT EXISTS `exam_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `total_marks` double(8,2) NOT NULL,
  `pass_marks` double(8,2) NOT NULL,
  `marks_distribution_note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `exam_id` int unsigned NOT NULL,
  `session_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table unifiedtransform.exam_rules: ~0 rows (approximately)
INSERT INTO `exam_rules` (`id`, `total_marks`, `pass_marks`, `marks_distribution_note`, `exam_id`, `session_id`, `created_at`, `updated_at`) VALUES
	(1, 100.00, 33.00, 'Writing 5 , MCQ 20', 1, 2, '2023-12-30 01:07:24', '2023-12-30 01:07:24');

-- Dumping structure for table unifiedtransform.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table unifiedtransform.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table unifiedtransform.final_marks
CREATE TABLE IF NOT EXISTS `final_marks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `calculated_marks` double(8,2) NOT NULL DEFAULT '0.00',
  `final_marks` double(8,2) NOT NULL DEFAULT '0.00',
  `note` text COLLATE utf8mb4_unicode_ci,
  `student_id` int unsigned NOT NULL,
  `class_id` int unsigned NOT NULL,
  `section_id` int unsigned NOT NULL,
  `course_id` int unsigned NOT NULL,
  `semester_id` int unsigned NOT NULL,
  `session_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table unifiedtransform.final_marks: ~0 rows (approximately)

-- Dumping structure for table unifiedtransform.grade_rules
CREATE TABLE IF NOT EXISTS `grade_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `point` double(8,2) NOT NULL,
  `grade` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_at` double(8,2) NOT NULL,
  `end_at` double(8,2) NOT NULL,
  `grading_system_id` int unsigned NOT NULL,
  `session_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table unifiedtransform.grade_rules: ~0 rows (approximately)

-- Dumping structure for table unifiedtransform.grading_systems
CREATE TABLE IF NOT EXISTS `grading_systems` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `system_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_id` int unsigned NOT NULL,
  `semester_id` int unsigned NOT NULL,
  `session_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table unifiedtransform.grading_systems: ~0 rows (approximately)
INSERT INTO `grading_systems` (`id`, `system_name`, `class_id`, `semester_id`, `session_id`, `created_at`, `updated_at`) VALUES
	(1, 'out of 5.00', 1, 2, 2, '2023-12-30 01:07:57', '2023-12-30 01:07:57');

-- Dumping structure for table unifiedtransform.marks
CREATE TABLE IF NOT EXISTS `marks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `marks` double(8,2) NOT NULL DEFAULT '0.00',
  `student_id` int unsigned NOT NULL,
  `class_id` int unsigned NOT NULL,
  `section_id` int unsigned NOT NULL,
  `course_id` int unsigned NOT NULL,
  `exam_id` int unsigned NOT NULL,
  `session_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table unifiedtransform.marks: ~0 rows (approximately)

-- Dumping structure for table unifiedtransform.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table unifiedtransform.migrations: ~0 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2021_08_14_063609_create_permission_tables', 1),
	(5, '2021_08_29_082638_create_school_sessions_table', 1),
	(6, '2021_08_29_082900_create_semesters_table', 1),
	(7, '2021_08_29_082956_create_school_classes_table', 1),
	(8, '2021_08_29_083021_create_sections_table', 1),
	(9, '2021_08_29_083216_create_courses_table', 1),
	(10, '2021_08_29_083346_create_academic_settings_table', 1),
	(11, '2021_08_29_083429_create_promotions_table', 1),
	(12, '2021_08_29_083504_create_exam_rules_table', 1),
	(13, '2021_08_29_083523_create_grade_rules_table', 1),
	(14, '2021_08_29_083603_create_marks_table', 1),
	(15, '2021_08_29_083628_create_exams_table', 1),
	(16, '2021_08_29_083730_create_student_parent_infos_table', 1),
	(17, '2021_08_29_083742_create_student_academic_infos_table', 1),
	(18, '2021_08_29_083934_create_attendances_table', 1),
	(19, '2021_08_29_084019_create_notices_table', 1),
	(20, '2021_08_29_084030_create_events_table', 1),
	(21, '2021_08_29_084041_create_syllabi_table', 1),
	(22, '2021_08_29_084056_create_routines_table', 1),
	(23, '2021_10_07_134023_create_assigned_teachers_table', 1),
	(24, '2021_10_09_061039_create_grading_systems_table', 1),
	(25, '2021_10_16_123559_create_final_marks_table', 1),
	(26, '2021_11_26_040801_create_assignments_table', 1);

-- Dumping structure for table unifiedtransform.model_has_permissions
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table unifiedtransform.model_has_permissions: ~55 rows (approximately)
INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
	(1, 'App\\Models\\User', 1),
	(2, 'App\\Models\\User', 1),
	(3, 'App\\Models\\User', 1),
	(5, 'App\\Models\\User', 1),
	(6, 'App\\Models\\User', 1),
	(7, 'App\\Models\\User', 1),
	(8, 'App\\Models\\User', 1),
	(9, 'App\\Models\\User', 1),
	(10, 'App\\Models\\User', 1),
	(11, 'App\\Models\\User', 1),
	(12, 'App\\Models\\User', 1),
	(13, 'App\\Models\\User', 1),
	(14, 'App\\Models\\User', 1),
	(15, 'App\\Models\\User', 1),
	(16, 'App\\Models\\User', 1),
	(17, 'App\\Models\\User', 1),
	(18, 'App\\Models\\User', 1),
	(19, 'App\\Models\\User', 1),
	(20, 'App\\Models\\User', 1),
	(21, 'App\\Models\\User', 1),
	(22, 'App\\Models\\User', 1),
	(23, 'App\\Models\\User', 1),
	(25, 'App\\Models\\User', 1),
	(26, 'App\\Models\\User', 1),
	(27, 'App\\Models\\User', 1),
	(28, 'App\\Models\\User', 1),
	(30, 'App\\Models\\User', 1),
	(31, 'App\\Models\\User', 1),
	(32, 'App\\Models\\User', 1),
	(33, 'App\\Models\\User', 1),
	(34, 'App\\Models\\User', 1),
	(35, 'App\\Models\\User', 1),
	(36, 'App\\Models\\User', 1),
	(37, 'App\\Models\\User', 1),
	(38, 'App\\Models\\User', 1),
	(39, 'App\\Models\\User', 1),
	(40, 'App\\Models\\User', 1),
	(43, 'App\\Models\\User', 1),
	(45, 'App\\Models\\User', 1),
	(46, 'App\\Models\\User', 1),
	(47, 'App\\Models\\User', 1),
	(49, 'App\\Models\\User', 1),
	(50, 'App\\Models\\User', 1),
	(51, 'App\\Models\\User', 1),
	(52, 'App\\Models\\User', 1),
	(53, 'App\\Models\\User', 1),
	(54, 'App\\Models\\User', 1),
	(55, 'App\\Models\\User', 1),
	(56, 'App\\Models\\User', 1),
	(57, 'App\\Models\\User', 1),
	(58, 'App\\Models\\User', 1),
	(59, 'App\\Models\\User', 1),
	(60, 'App\\Models\\User', 1),
	(61, 'App\\Models\\User', 1),
	(62, 'App\\Models\\User', 1),
	(2, 'App\\Models\\User', 2),
	(7, 'App\\Models\\User', 2),
	(11, 'App\\Models\\User', 2),
	(15, 'App\\Models\\User', 2),
	(19, 'App\\Models\\User', 2),
	(22, 'App\\Models\\User', 2),
	(23, 'App\\Models\\User', 2),
	(25, 'App\\Models\\User', 2),
	(26, 'App\\Models\\User', 2),
	(27, 'App\\Models\\User', 2),
	(28, 'App\\Models\\User', 2),
	(38, 'App\\Models\\User', 2),
	(39, 'App\\Models\\User', 2),
	(42, 'App\\Models\\User', 2),
	(43, 'App\\Models\\User', 2),
	(44, 'App\\Models\\User', 2),
	(2, 'App\\Models\\User', 3),
	(7, 'App\\Models\\User', 3),
	(11, 'App\\Models\\User', 3),
	(15, 'App\\Models\\User', 3),
	(19, 'App\\Models\\User', 3),
	(23, 'App\\Models\\User', 3),
	(39, 'App\\Models\\User', 3),
	(41, 'App\\Models\\User', 3),
	(43, 'App\\Models\\User', 3),
	(45, 'App\\Models\\User', 3);

-- Dumping structure for table unifiedtransform.model_has_roles
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table unifiedtransform.model_has_roles: ~0 rows (approximately)

-- Dumping structure for table unifiedtransform.notices
CREATE TABLE IF NOT EXISTS `notices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `notice` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table unifiedtransform.notices: ~0 rows (approximately)
INSERT INTO `notices` (`id`, `notice`, `session_id`, `created_at`, `updated_at`) VALUES
	(1, 'Hello', 2, '2023-12-30 01:00:14', '2023-12-30 01:00:14');

-- Dumping structure for table unifiedtransform.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table unifiedtransform.password_resets: ~0 rows (approximately)

-- Dumping structure for table unifiedtransform.permissions
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table unifiedtransform.permissions: ~62 rows (approximately)
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(1, 'create users', 'web', '2023-12-30 00:47:55', '2023-12-30 00:47:55'),
	(2, 'view users', 'web', '2023-12-30 00:47:55', '2023-12-30 00:47:55'),
	(3, 'edit users', 'web', '2023-12-30 00:47:55', '2023-12-30 00:47:55'),
	(4, 'delete users', 'web', '2023-12-30 00:47:55', '2023-12-30 00:47:55'),
	(5, 'promote students', 'web', '2023-12-30 00:47:55', '2023-12-30 00:47:55'),
	(6, 'create notices', 'web', '2023-12-30 00:47:55', '2023-12-30 00:47:55'),
	(7, 'view notices', 'web', '2023-12-30 00:47:55', '2023-12-30 00:47:55'),
	(8, 'edit notices', 'web', '2023-12-30 00:47:55', '2023-12-30 00:47:55'),
	(9, 'delete notices', 'web', '2023-12-30 00:47:55', '2023-12-30 00:47:55'),
	(10, 'create events', 'web', '2023-12-30 00:47:55', '2023-12-30 00:47:55'),
	(11, 'view events', 'web', '2023-12-30 00:47:55', '2023-12-30 00:47:55'),
	(12, 'edit events', 'web', '2023-12-30 00:47:55', '2023-12-30 00:47:55'),
	(13, 'delete events', 'web', '2023-12-30 00:47:55', '2023-12-30 00:47:55'),
	(14, 'create syllabi', 'web', '2023-12-30 00:47:55', '2023-12-30 00:47:55'),
	(15, 'view syllabi', 'web', '2023-12-30 00:47:55', '2023-12-30 00:47:55'),
	(16, 'edit syllabi', 'web', '2023-12-30 00:47:55', '2023-12-30 00:47:55'),
	(17, 'delete syllabi', 'web', '2023-12-30 00:47:55', '2023-12-30 00:47:55'),
	(18, 'create routines', 'web', '2023-12-30 00:47:55', '2023-12-30 00:47:55'),
	(19, 'view routines', 'web', '2023-12-30 00:47:55', '2023-12-30 00:47:55'),
	(20, 'edit routines', 'web', '2023-12-30 00:47:55', '2023-12-30 00:47:55'),
	(21, 'delete routines', 'web', '2023-12-30 00:47:55', '2023-12-30 00:47:55'),
	(22, 'create exams', 'web', '2023-12-30 00:47:55', '2023-12-30 00:47:55'),
	(23, 'view exams', 'web', '2023-12-30 00:47:55', '2023-12-30 00:47:55'),
	(24, 'delete exams', 'web', '2023-12-30 00:47:55', '2023-12-30 00:47:55'),
	(25, 'create exams rule', 'web', '2023-12-30 00:47:55', '2023-12-30 00:47:55'),
	(26, 'view exams rule', 'web', '2023-12-30 00:47:55', '2023-12-30 00:47:55'),
	(27, 'edit exams rule', 'web', '2023-12-30 00:47:55', '2023-12-30 00:47:55'),
	(28, 'delete exams rule', 'web', '2023-12-30 00:47:55', '2023-12-30 00:47:55'),
	(29, 'view exams history', 'web', '2023-12-30 00:47:55', '2023-12-30 00:47:55'),
	(30, 'create grading systems', 'web', '2023-12-30 00:47:55', '2023-12-30 00:47:55'),
	(31, 'view grading systems', 'web', '2023-12-30 00:47:55', '2023-12-30 00:47:55'),
	(32, 'edit grading systems', 'web', '2023-12-30 00:47:55', '2023-12-30 00:47:55'),
	(33, 'delete grading systems', 'web', '2023-12-30 00:47:55', '2023-12-30 00:47:55'),
	(34, 'create grading systems rule', 'web', '2023-12-30 00:47:55', '2023-12-30 00:47:55'),
	(35, 'view grading systems rule', 'web', '2023-12-30 00:47:55', '2023-12-30 00:47:55'),
	(36, 'edit grading systems rule', 'web', '2023-12-30 00:47:55', '2023-12-30 00:47:55'),
	(37, 'delete grading systems rule', 'web', '2023-12-30 00:47:55', '2023-12-30 00:47:55'),
	(38, 'take attendances', 'web', '2023-12-30 00:47:55', '2023-12-30 00:47:55'),
	(39, 'view attendances', 'web', '2023-12-30 00:47:55', '2023-12-30 00:47:55'),
	(40, 'update attendances type', 'web', '2023-12-30 00:47:55', '2023-12-30 00:47:55'),
	(41, 'submit assignments', 'web', '2023-12-30 00:47:55', '2023-12-30 00:47:55'),
	(42, 'create assignments', 'web', '2023-12-30 00:47:55', '2023-12-30 00:47:55'),
	(43, 'view assignments', 'web', '2023-12-30 00:47:55', '2023-12-30 00:47:55'),
	(44, 'save marks', 'web', '2023-12-30 00:47:55', '2023-12-30 00:47:55'),
	(45, 'view marks', 'web', '2023-12-30 00:47:55', '2023-12-30 00:47:55'),
	(46, 'create school sessions', 'web', '2023-12-30 00:47:55', '2023-12-30 00:47:55'),
	(47, 'create semesters', 'web', '2023-12-30 00:47:55', '2023-12-30 00:47:55'),
	(48, 'view semesters', 'web', '2023-12-30 00:47:55', '2023-12-30 00:47:55'),
	(49, 'edit semesters', 'web', '2023-12-30 00:47:55', '2023-12-30 00:47:55'),
	(50, 'assign teachers', 'web', '2023-12-30 00:47:56', '2023-12-30 00:47:56'),
	(51, 'create courses', 'web', '2023-12-30 00:47:56', '2023-12-30 00:47:56'),
	(52, 'view courses', 'web', '2023-12-30 00:47:56', '2023-12-30 00:47:56'),
	(53, 'edit courses', 'web', '2023-12-30 00:47:56', '2023-12-30 00:47:56'),
	(54, 'view academic settings', 'web', '2023-12-30 00:47:56', '2023-12-30 00:47:56'),
	(55, 'update marks submission window', 'web', '2023-12-30 00:47:56', '2023-12-30 00:47:56'),
	(56, 'update browse by session', 'web', '2023-12-30 00:47:56', '2023-12-30 00:47:56'),
	(57, 'create classes', 'web', '2023-12-30 00:47:56', '2023-12-30 00:47:56'),
	(58, 'view classes', 'web', '2023-12-30 00:47:56', '2023-12-30 00:47:56'),
	(59, 'edit classes', 'web', '2023-12-30 00:47:56', '2023-12-30 00:47:56'),
	(60, 'create sections', 'web', '2023-12-30 00:47:56', '2023-12-30 00:47:56'),
	(61, 'view sections', 'web', '2023-12-30 00:47:56', '2023-12-30 00:47:56'),
	(62, 'edit sections', 'web', '2023-12-30 00:47:56', '2023-12-30 00:47:56');

-- Dumping structure for table unifiedtransform.promotions
CREATE TABLE IF NOT EXISTS `promotions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `student_id` int unsigned NOT NULL,
  `class_id` int unsigned NOT NULL,
  `section_id` int unsigned NOT NULL,
  `session_id` int unsigned NOT NULL,
  `id_card_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table unifiedtransform.promotions: ~0 rows (approximately)
INSERT INTO `promotions` (`id`, `student_id`, `class_id`, `section_id`, `session_id`, `id_card_number`, `created_at`, `updated_at`) VALUES
	(1, 3, 1, 1, 2, '2654646546464', '2023-12-30 01:03:57', '2023-12-30 01:03:57');

-- Dumping structure for table unifiedtransform.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table unifiedtransform.roles: ~0 rows (approximately)

-- Dumping structure for table unifiedtransform.role_has_permissions
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table unifiedtransform.role_has_permissions: ~0 rows (approximately)

-- Dumping structure for table unifiedtransform.routines
CREATE TABLE IF NOT EXISTS `routines` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `start` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weekday` int NOT NULL,
  `class_id` int unsigned NOT NULL,
  `section_id` int unsigned NOT NULL,
  `course_id` int unsigned NOT NULL,
  `session_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table unifiedtransform.routines: ~0 rows (approximately)
INSERT INTO `routines` (`id`, `start`, `end`, `weekday`, `class_id`, `section_id`, `course_id`, `session_id`, `created_at`, `updated_at`) VALUES
	(1, '10:30pm', '1130pm', 1, 1, 1, 1, 2, '2023-12-30 00:59:46', '2023-12-30 00:59:46');

-- Dumping structure for table unifiedtransform.school_classes
CREATE TABLE IF NOT EXISTS `school_classes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `class_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table unifiedtransform.school_classes: ~0 rows (approximately)
INSERT INTO `school_classes` (`id`, `class_name`, `session_id`, `created_at`, `updated_at`) VALUES
	(1, 'One', 2, '2023-12-30 00:50:11', '2023-12-30 00:50:11'),
	(2, 'Two', 2, '2023-12-30 00:56:43', '2023-12-30 00:56:43'),
	(3, 'Three', 2, '2023-12-30 00:56:50', '2023-12-30 00:56:50'),
	(4, 'Four', 2, '2023-12-30 00:56:55', '2023-12-30 00:56:55');

-- Dumping structure for table unifiedtransform.school_sessions
CREATE TABLE IF NOT EXISTS `school_sessions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `session_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table unifiedtransform.school_sessions: ~0 rows (approximately)
INSERT INTO `school_sessions` (`id`, `session_name`, `created_at`, `updated_at`) VALUES
	(1, '2024-2025', '2023-12-30 00:49:08', '2023-12-30 00:49:08'),
	(2, '2025-2026', '2023-12-30 00:49:57', '2023-12-30 00:49:57');

-- Dumping structure for table unifiedtransform.sections
CREATE TABLE IF NOT EXISTS `sections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `section_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_id` int unsigned NOT NULL,
  `session_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table unifiedtransform.sections: ~0 rows (approximately)
INSERT INTO `sections` (`id`, `section_name`, `room_no`, `class_id`, `session_id`, `created_at`, `updated_at`) VALUES
	(1, 'A', '102', 1, 2, '2023-12-30 00:50:29', '2023-12-30 00:50:29'),
	(2, 'B', '202', 2, 2, '2023-12-30 00:57:05', '2023-12-30 00:57:05');

-- Dumping structure for table unifiedtransform.semesters
CREATE TABLE IF NOT EXISTS `semesters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `semester_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `session_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table unifiedtransform.semesters: ~0 rows (approximately)
INSERT INTO `semesters` (`id`, `semester_name`, `start_date`, `end_date`, `session_id`, `created_at`, `updated_at`) VALUES
	(1, 'First Semester', '2023-12-30', '2025-12-30', 1, '2023-12-30 00:49:38', '2023-12-30 00:49:38'),
	(2, 'second semester', '2023-12-30', '2024-12-30', 2, '2023-12-30 00:56:35', '2023-12-30 00:56:35');

-- Dumping structure for table unifiedtransform.student_academic_infos
CREATE TABLE IF NOT EXISTS `student_academic_infos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `board_reg_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table unifiedtransform.student_academic_infos: ~0 rows (approximately)
INSERT INTO `student_academic_infos` (`id`, `board_reg_no`, `student_id`, `created_at`, `updated_at`) VALUES
	(1, '456456454', 3, '2023-12-30 01:03:57', '2023-12-30 01:03:57');

-- Dumping structure for table unifiedtransform.student_parent_infos
CREATE TABLE IF NOT EXISTS `student_parent_infos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `student_id` int unsigned NOT NULL,
  `father_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table unifiedtransform.student_parent_infos: ~0 rows (approximately)
INSERT INTO `student_parent_infos` (`id`, `student_id`, `father_name`, `father_phone`, `mother_name`, `mother_phone`, `parent_address`, `created_at`, `updated_at`) VALUES
	(1, 3, 'fgfg', '4464545', 'jufgjhh', '45465456', 'fdggffg', '2023-12-30 01:03:57', '2023-12-30 01:03:57');

-- Dumping structure for table unifiedtransform.syllabi
CREATE TABLE IF NOT EXISTS `syllabi` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `syllabus_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `syllabus_file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_id` int unsigned NOT NULL,
  `course_id` int unsigned NOT NULL,
  `session_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table unifiedtransform.syllabi: ~0 rows (approximately)
INSERT INTO `syllabi` (`id`, `syllabus_name`, `syllabus_file_path`, `class_id`, `course_id`, `session_id`, `created_at`, `updated_at`) VALUES
	(1, 'Topic 1', 'syllabi/p51zag7fTMUnWgOBhM2U98vtLcFJYGvYpiu9pA2e.png', 1, 1, 2, '2023-12-30 00:59:13', '2023-12-30 00:59:13');

-- Dumping structure for table unifiedtransform.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table unifiedtransform.users: ~1 rows (approximately)
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `gender`, `nationality`, `phone`, `address`, `address2`, `city`, `zip`, `photo`, `birthday`, `blood_type`, `religion`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Ashik', 'Ahmed', 'admin@gmail.com', 'Male', 'Bangladeshi', 'Ex: 325 43657 7554', '568, Dhaka', 'Same', 'Dhaka', '32545', NULL, NULL, NULL, NULL, 'admin', '2023-12-30 00:47:56', '$2y$10$Ky/7qzhOiX0OEEPPcYIbsOz2uv26X2IoylQvRWzv8GNHRb6wlNlkK', 'iINulgDYoQSUyFSZ17mBEwAd1Us0SLfK4CvsE3BSedx5WhCq8F74TehJfgL5', '2023-12-30 00:47:56', '2023-12-30 00:47:56'),
	(2, 'Ashik', 'Ahmed', 'ashik@gmail.com', 'Male', 'Bangladeshi', '01911742255', 'Tapur Char', 'Rowmari', 'Rowmari', '5640', NULL, NULL, NULL, NULL, 'teacher', NULL, '$2y$10$B8en8/1KNYv8tOPeRBk86O08CqkcsUlVan3wx.P.BU.Coa0pnguym', NULL, '2023-12-30 01:01:44', '2023-12-30 01:01:44'),
	(3, 'Ashik', 'Ahmed', 'student@gmail.com', 'Male', 'Bangladeshi', '01911742255', 'Tapur Char', 'Tapur Char', 'Rowmari', '5640', NULL, '1202-02-02', 'A+', 'Islam', 'student', NULL, '$2y$10$7eMUuZMyMRMpx8grNcOCZu7cOihBAPKOqbAb0DY8.0AJbVmShHjpq', NULL, '2023-12-30 01:03:57', '2023-12-30 01:03:57');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
