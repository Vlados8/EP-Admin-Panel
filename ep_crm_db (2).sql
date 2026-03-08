-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Мар 02 2026 г., 16:17
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `ep_crm_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `answers`
--

CREATE TABLE `answers` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer_text` varchar(255) NOT NULL,
  `next_question_id` int(11) DEFAULT NULL,
  `order_index` int(11) DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `answers`
--

INSERT INTO `answers` (`id`, `question_id`, `answer_text`, `next_question_id`, `order_index`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Satteldach', 2, 0, '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL),
(2, 1, 'Pultdach', 2, 1, '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL),
(3, 1, 'Flachdach', 3, 2, '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL),
(4, 2, 'Ziegel', 4, 0, '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL),
(5, 2, 'Trapezblech', 4, 1, '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL),
(6, 3, 'Bitumen', 4, 0, '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL),
(7, 3, 'Folie', 4, 1, '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL),
(8, 3, 'Kies', 4, 2, '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL),
(9, 4, 'So schnell wie möglich', NULL, 0, '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL),
(10, 4, 'In 3-6 Monaten', NULL, 1, '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL),
(11, 5, 'Einfamilienhaus', 6, 0, '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL),
(12, 5, 'Reihenhaus', 6, 1, '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL),
(13, 5, 'Mehrfamilienhaus', 6, 2, '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL),
(14, 6, 'ANY', NULL, 0, '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL),
(15, 7, 'Komplett neu', NULL, 0, '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL),
(16, 7, 'Erweiterung', NULL, 1, '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL),
(17, 7, 'Nur Prüfung', NULL, 2, '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `company_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `order_index` int(11) DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `company_id`, `name`, `description`, `icon`, `order_index`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '9e499cb6-7003-4f45-82df-3e8fd7006eea', 'Photovoltaik (PV)', 'Solaranlagen und Speicher', 'fa-solar-panel', 0, '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL),
(2, '9e499cb6-7003-4f45-82df-3e8fd7006eea', 'Wärmepumpe (WP)', 'Heizsysteme und Installation', 'fa-fire-burner', 1, '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL),
(3, '9e499cb6-7003-4f45-82df-3e8fd7006eea', 'Elektroinstallation', 'Zählerschrank, Wallbox, Smart Home', 'fa-bolt', 2, '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL),
(4, '9e499cb6-7003-4f45-82df-3e8fd7006eea', 'Sanitär & Heizung', 'Badsanierung, Wasserrohre', 'fa-faucet-drip', 3, '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL),
(5, '9e499cb6-7003-4f45-82df-3e8fd7006eea', 'Dach & Fassade', 'Dachdeckerarbeiten, Dämmung', 'fa-house', 4, '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL),
(6, '9e499cb6-7003-4f45-82df-3e8fd7006eea', 'Maler & Trockenbau', 'Wände streichen, Wände ziehen', 'fa-paint-roller', 5, '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL),
(7, '9e499cb6-7003-4f45-82df-3e8fd7006eea', 'Garten & Landschaftsbau', 'Pflasterarbeiten, Zäune', 'fa-leaf', 6, '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `company_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact_person` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `type` enum('company','private') DEFAULT 'company',
  `status` enum('active','inactive','lead') DEFAULT 'active',
  `source` enum('funnelforms','admin_panel') DEFAULT 'funnelforms',
  `notes` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `clients`
--

INSERT INTO `clients` (`id`, `company_id`, `name`, `contact_person`, `email`, `phone`, `address`, `zip_code`, `city`, `type`, `status`, `source`, `notes`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '9e499cb6-7003-4f45-82df-3e8fd7006eea', 'Immobilien Meier GmbH', 'Herr Schmidt', 'info@immo-meier.de', '089 123456', 'Hauptstraße 15', '80331', 'München', 'company', 'active', 'funnelforms', 'Stammkunde seit 2020.', '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL),
(2, '9e499cb6-7003-4f45-82df-3e8fd7006eea', 'Baugenossenschaft Süd', 'Frau Weber', 'bauleitung@bg-sued.de', '089 987654', 'Südpark 3', '81373', 'München', 'company', 'active', 'funnelforms', NULL, '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL),
(3, '9e499cb6-7003-4f45-82df-3e8fd7006eea', 'Privatier Wagner', 'Max Wagner', 'm.wagner@private.de', '0151 5556667', 'Villenviertel 8', '82031', 'Grünwald', 'private', 'lead', 'funnelforms', 'Interesse an Badsanierung.', '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `companies`
--

CREATE TABLE `companies` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(255) NOT NULL,
  `billing_plan` enum('free','pro','enterprise') DEFAULT 'pro',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `companies`
--

INSERT INTO `companies` (`id`, `name`, `billing_plan`, `created_at`, `updated_at`, `deleted_at`) VALUES
('9e499cb6-7003-4f45-82df-3e8fd7006eea', 'EP Bauunternehmen GmbH', 'enterprise', '2026-03-02 11:14:22', '2026-03-02 11:14:22', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `inquiries`
--

CREATE TABLE `inquiries` (
  `id` int(11) NOT NULL,
  `company_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `contact_name` varchar(255) NOT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `contact_phone` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `status` enum('new','contacted','qualified','proposal','won','lost') DEFAULT 'new',
  `notes` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `inquiries`
--

INSERT INTO `inquiries` (`id`, `company_id`, `client_id`, `category_id`, `title`, `contact_name`, `contact_email`, `contact_phone`, `location`, `status`, `notes`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '9e499cb6-7003-4f45-82df-3e8fd7006eea', NULL, 1, 'Anfrage Solaranlage Meier', 'Familie Meier', 'meier.familie@example.com', '0151 1234567', '80331 München', 'new', 'Kunde wünscht schnellen Rückruf.', '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL),
(2, '9e499cb6-7003-4f45-82df-3e8fd7006eea', NULL, 2, 'Neue Wärmepumpe für Altbau', 'Johannes Schmidt', 'j.schmidt@example.com', NULL, 'Außenbezirk 12', 'contacted', 'Hat bereits ein Angebot von Konkurrenz.', '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL),
(3, '9e499cb6-7003-4f45-82df-3e8fd7006eea', NULL, 1, 'dasd', 'sadsa', 'asd@gmail.cmo', 'dd', 'sadsad', 'new', NULL, '2026-03-02 12:04:45', '2026-03-02 12:04:45', NULL),
(4, '9e499cb6-7003-4f45-82df-3e8fd7006eea', NULL, 1, 'f', 'f', NULL, NULL, 'f', 'new', NULL, '2026-03-02 13:17:20', '2026-03-02 13:17:20', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `inquiry_answers`
--

CREATE TABLE `inquiry_answers` (
  `id` int(11) NOT NULL,
  `inquiry_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer_id` int(11) DEFAULT NULL,
  `answer_value` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `inquiry_answers`
--

INSERT INTO `inquiry_answers` (`id`, `inquiry_id`, `question_id`, `answer_id`, `answer_value`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 1, 'Satteldach', '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL),
(2, 1, 2, 4, 'Ziegel', '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL),
(3, 2, 5, 11, 'Einfamilienhaus', '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL),
(4, 2, 6, NULL, '140', '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL),
(5, 3, 1, 2, 'Pultdach', '2026-03-02 12:04:45', '2026-03-02 12:04:45', NULL),
(6, 3, 2, 5, 'Trapezblech', '2026-03-02 12:04:45', '2026-03-02 12:04:45', NULL),
(7, 3, 4, 10, 'In 3-6 Monaten', '2026-03-02 12:04:45', '2026-03-02 12:04:45', NULL),
(8, 4, 1, 2, 'Pultdach', '2026-03-02 13:17:20', '2026-03-02 13:17:20', NULL),
(9, 4, 2, 5, 'Trapezblech', '2026-03-02 13:17:20', '2026-03-02 13:17:20', NULL),
(10, 4, 4, 10, 'In 3-6 Monaten', '2026-03-02 13:17:20', '2026-03-02 13:17:20', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `date` date NOT NULL,
  `color` varchar(255) NOT NULL DEFAULT 'blue',
  `is_done` tinyint(1) DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `notes`
--

INSERT INTO `notes` (`id`, `title`, `content`, `date`, `color`, `is_done`, `created_at`, `updated_at`, `deleted_at`, `user_id`) VALUES
(1, 'Material fehlt', 'Auf Baustelle A fehlen noch 5 Sack Zement. Bitte nachliefern.', '2026-03-02', 'yellow', 0, '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL, 'c1cd8740-38c5-4064-86ff-f4937ed91c3c'),
(2, 'Wetterwarnung', 'Morgen starker Regen erwartet. Dacharbeiten verschieben.', '2026-03-03', 'blue', 0, '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL, 'd034aa64-5cda-45a5-92fe-183597651e62');

-- --------------------------------------------------------

--
-- Структура таблицы `projects`
--

CREATE TABLE `projects` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `project_number` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'aktiv',
  `progress` int(11) NOT NULL DEFAULT 0,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `main_image` varchar(255) DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `subcategory_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `projects`
--

INSERT INTO `projects` (`id`, `project_number`, `title`, `description`, `address`, `status`, `progress`, `start_date`, `end_date`, `client_id`, `main_image`, `created_by`, `created_at`, `updated_at`, `deleted_at`, `category_id`, `subcategory_id`) VALUES
('865e09b7-27d7-4c74-87c1-f8e8bde85692', 'EP-002', 'ewqe', 'dsa dsad ', 'ewqee 2', 'Aktiv', 25, '2026-03-13 00:00:00', '0000-00-00 00:00:00', 2, '/uploads/projects/EP-002/main_1772453771604.png', 'd8f941a0-2b3e-4bba-a3a5-9f009c1b9d6a', '2026-03-02 12:16:11', '2026-03-02 14:46:13', '2026-03-02 14:46:13', 1, 1),
('9cd3a612-bd67-4a10-b8b5-2e64ce85cb6f', 'EP-003', 'dd', '', '', 'Aktiv', 32, '2026-03-05 00:00:00', '0000-00-00 00:00:00', 1, '/uploads/projects/9cd3a612-bd67-4a10-b8b5-2e64ce85cb6f/main_1772455286867.jpg', 'd8f941a0-2b3e-4bba-a3a5-9f009c1b9d6a', '2026-03-02 12:41:26', '2026-03-02 14:46:09', '2026-03-02 14:46:09', 1, 1),
('b1922451-8465-4976-b07e-47f27087f8b4', 'EP-001', 'Sanierung Villa Schmidt', 'Komplettsanierung des Erdgeschosses inklusive Elektrik und Sanitär.1', 'Goethestraße 12, 80336 München', 'Aktiv', 35, '2026-03-02 00:00:00', '0000-00-00 00:00:00', 1, NULL, 'd8f941a0-2b3e-4bba-a3a5-9f009c1b9d6a', '2026-03-02 11:14:23', '2026-03-02 14:46:17', '2026-03-02 14:46:17', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `project_answers`
--

CREATE TABLE `project_answers` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `project_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer_id` int(11) DEFAULT NULL,
  `custom_value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `project_answers`
--

INSERT INTO `project_answers` (`id`, `project_id`, `question_id`, `answer_id`, `custom_value`, `created_at`, `updated_at`, `deleted_at`) VALUES
('04e53ddc-c28f-4864-94b9-e0a13920873b', '865e09b7-27d7-4c74-87c1-f8e8bde85692', 4, 10, 'In 3-6 Monaten', '2026-03-02 12:16:11', '2026-03-02 12:16:11', '2026-03-02 14:46:13'),
('0a7ffc96-9a7c-4a59-9665-109d830d13fa', '9cd3a612-bd67-4a10-b8b5-2e64ce85cb6f', 4, 10, 'In 3-6 Monaten', '2026-03-02 13:48:48', '2026-03-02 13:48:48', '2026-03-02 14:46:09'),
('107c7508-7194-4b76-9577-bdaad97e9401', '9cd3a612-bd67-4a10-b8b5-2e64ce85cb6f', 1, 2, 'Pultdach', '2026-03-02 13:48:30', '2026-03-02 13:48:30', '2026-03-02 13:48:48'),
('1f98f877-65d8-4b45-abd2-5635db0b2e97', '865e09b7-27d7-4c74-87c1-f8e8bde85692', 2, 5, 'Trapezblech', '2026-03-02 12:16:11', '2026-03-02 12:16:11', '2026-03-02 14:46:13'),
('40d10889-3f12-4752-9373-62b1632f05e0', '9cd3a612-bd67-4a10-b8b5-2e64ce85cb6f', 1, 1, 'Satteldach', '2026-03-02 13:48:48', '2026-03-02 13:48:48', '2026-03-02 14:46:09'),
('41fa45f4-00f3-4af1-a082-143f25813df9', '9cd3a612-bd67-4a10-b8b5-2e64ce85cb6f', 4, 10, 'In 3-6 Monaten', '2026-03-02 12:41:26', '2026-03-02 12:41:26', '2026-03-02 13:48:30'),
('45144040-ab4c-42aa-9710-adcb063dedb6', '9cd3a612-bd67-4a10-b8b5-2e64ce85cb6f', 4, 9, 'So schnell wie möglich', '2026-03-02 13:48:30', '2026-03-02 13:48:30', '2026-03-02 13:48:48'),
('599d0c5e-0616-448e-aab7-063f05db40fa', '9cd3a612-bd67-4a10-b8b5-2e64ce85cb6f', 1, 2, 'Pultdach', '2026-03-02 12:41:26', '2026-03-02 12:41:26', '2026-03-02 13:48:30'),
('771cf1cc-d283-4a27-a9f1-f16e4a5f2d3a', '9cd3a612-bd67-4a10-b8b5-2e64ce85cb6f', 2, 5, 'Trapezblech', '2026-03-02 13:48:48', '2026-03-02 13:48:48', '2026-03-02 14:46:09'),
('78fb5ff1-dce7-48a5-842f-00bfa6eee513', '865e09b7-27d7-4c74-87c1-f8e8bde85692', 1, 2, 'Pultdach', '2026-03-02 12:16:11', '2026-03-02 12:16:11', '2026-03-02 14:46:13'),
('e03d0879-f519-451b-927c-5329f71788c0', '9cd3a612-bd67-4a10-b8b5-2e64ce85cb6f', 2, 5, 'Trapezblech', '2026-03-02 13:48:30', '2026-03-02 13:48:30', '2026-03-02 13:48:48'),
('e3039d19-1399-4d74-9291-936fc0d34a36', '9cd3a612-bd67-4a10-b8b5-2e64ce85cb6f', 2, 5, 'Trapezblech', '2026-03-02 12:41:26', '2026-03-02 12:41:26', '2026-03-02 13:48:30');

-- --------------------------------------------------------

--
-- Структура таблицы `project_images`
--

CREATE TABLE `project_images` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `project_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `uploaded_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `project_images`
--

INSERT INTO `project_images` (`id`, `project_id`, `file_path`, `file_name`, `uploaded_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
('b72fcfb1-5c41-4911-9a23-0ddc35027693', '865e09b7-27d7-4c74-87c1-f8e8bde85692', '/uploads/projects/EP-002/1772453771606_0.jpg', '1772453771606_0.jpg', 'd8f941a0-2b3e-4bba-a3a5-9f009c1b9d6a', '2026-03-02 12:16:11', '2026-03-02 12:16:11', '2026-03-02 14:46:13');

-- --------------------------------------------------------

--
-- Структура таблицы `project_stages`
--

CREATE TABLE `project_stages` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `project_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(255) DEFAULT 'In Arbeit',
  `assigned_to_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_by_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `project_stages`
--

INSERT INTO `project_stages` (`id`, `project_id`, `title`, `description`, `status`, `assigned_to_id`, `created_by_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
('3610f4b0-52a5-409d-bc99-5df4b38d5a18', '9cd3a612-bd67-4a10-b8b5-2e64ce85cb6f', 'frdg', 'fdgdf', 'In Arbeit', NULL, 'd8f941a0-2b3e-4bba-a3a5-9f009c1b9d6a', '2026-03-02 12:41:51', '2026-03-02 14:46:09', '2026-03-02 14:46:09'),
('4bc2c96b-9ce8-42ae-9454-50c587918e37', '865e09b7-27d7-4c74-87c1-f8e8bde85692', '1', '2', 'In Arbeit', 'd034aa64-5cda-45a5-92fe-183597651e62', 'd8f941a0-2b3e-4bba-a3a5-9f009c1b9d6a', '2026-03-02 12:16:44', '2026-03-02 14:46:13', '2026-03-02 14:46:13'),
('7b70c69d-c899-4b48-9559-260b82e76fcf', 'b1922451-8465-4976-b07e-47f27087f8b4', '5y54y6www', 'trytrrtytryddd', 'In Arbeit', NULL, 'd8f941a0-2b3e-4bba-a3a5-9f009c1b9d6a', '2026-03-02 11:28:51', '2026-03-02 14:46:17', '2026-03-02 14:46:17'),
('85699abc-0c46-4266-9212-9f24c5110681', 'b1922451-8465-4976-b07e-47f27087f8b4', 'Abbrucharbeiten', 'Alte Böden und nicht tragende Wände entfernen.', 'In Arbeit', 'c1cd8740-38c5-4064-86ff-f4937ed91c3c', 'd034aa64-5cda-45a5-92fe-183597651e62', '2026-03-02 11:14:23', '2026-03-02 14:46:17', '2026-03-02 14:46:17'),
('8fbec0a2-6d6e-4a98-bfd5-dd8f15c40d2e', 'b1922451-8465-4976-b07e-47f27087f8b4', 'Baustelleneinrichtung', 'Container aufstellen, Absperrungen errichten, Strom/Wasser anschließen.', 'Erledigt', 'd034aa64-5cda-45a5-92fe-183597651e62', 'd8f941a0-2b3e-4bba-a3a5-9f009c1b9d6a', '2026-03-02 11:14:23', '2026-03-02 14:46:17', '2026-03-02 14:46:17'),
('94c91a21-f2a5-4913-91f9-39304fc05ffe', 'b1922451-8465-4976-b07e-47f27087f8b4', 'sdfdsf', NULL, 'In Arbeit', NULL, 'd8f941a0-2b3e-4bba-a3a5-9f009c1b9d6a', '2026-03-02 11:20:24', '2026-03-02 11:25:16', '2026-03-02 11:25:16'),
('e3d3f374-388e-4a8a-ae23-539d39862240', '9cd3a612-bd67-4a10-b8b5-2e64ce85cb6f', 'bb', 'bbb', 'In Arbeit', NULL, 'd8f941a0-2b3e-4bba-a3a5-9f009c1b9d6a', '2026-03-02 14:45:52', '2026-03-02 14:46:09', '2026-03-02 14:46:09');

-- --------------------------------------------------------

--
-- Структура таблицы `project_stage_images`
--

CREATE TABLE `project_stage_images` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `project_stage_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `path` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `project_stage_images`
--

INSERT INTO `project_stage_images` (`id`, `project_stage_id`, `path`, `created_at`, `updated_at`, `deleted_at`) VALUES
('41cc8a94-80f3-4153-8907-981728381b3c', '94c91a21-f2a5-4913-91f9-39304fc05ffe', '/uploads/projects/b1922451-8465-4976-b07e-47f27087f8b4/stages/94c91a21-f2a5-4913-91f9-39304fc05ffe/1772450424869_presentation.png', '2026-03-02 11:20:24', '2026-03-02 11:20:24', NULL),
('70100370-6474-44ca-a8db-b36bf2482b29', '7b70c69d-c899-4b48-9559-260b82e76fcf', '/uploads/projects/b1922451-8465-4976-b07e-47f27087f8b4/stages/7b70c69d-c899-4b48-9559-260b82e76fcf/1772452544495_PixVerse_Image_Effect_prompt_Ð§ÐµÑÐ½ÑÐ¹ Ð·Ð°ÑÐµÐ¼Ð½ÐµÐ½Ð½Ñ.jpg', '2026-03-02 11:55:44', '2026-03-02 11:55:44', '2026-03-02 14:46:17'),
('d0c66dd4-c937-4b61-8c5c-92570299735c', '4bc2c96b-9ce8-42ae-9454-50c587918e37', '/uploads/projects/865e09b7-27d7-4c74-87c1-f8e8bde85692/stages/4bc2c96b-9ce8-42ae-9454-50c587918e37/1772453804661_PixVerse_Image_Effect_prompt_ÑÐ´ÐµÐ»Ð°ÑÑ Ð·Ð°Ð´Ð½Ð¸Ð¹ ÑÐ¾.jpg', '2026-03-02 12:16:44', '2026-03-02 12:16:44', '2026-03-02 14:46:13'),
('d397ff4c-c59a-4ca4-91c2-bd297cd487c8', '7b70c69d-c899-4b48-9559-260b82e76fcf', '/uploads/projects/b1922451-8465-4976-b07e-47f27087f8b4/stages/7b70c69d-c899-4b48-9559-260b82e76fcf/1772450931709_PixVerse_Image_Effect_prompt_Ð§ÐµÑÐ½ÑÐ¹ Ð·Ð°ÑÐµÐ¼Ð½ÐµÐ½Ð½Ñ (1).jpg', '2026-03-02 11:28:51', '2026-03-02 11:28:51', '2026-03-02 14:46:17'),
('fc0ae2ab-fe49-47ba-bc4e-f63c62614f33', '3610f4b0-52a5-409d-bc99-5df4b38d5a18', '/uploads/projects/9cd3a612-bd67-4a10-b8b5-2e64ce85cb6f/stages/3610f4b0-52a5-409d-bc99-5df4b38d5a18/1772455311388_ChatGPT Image 28 ÑÐµÐ²Ñ. 2026 Ð³., 19_36_58.png', '2026-03-02 12:41:51', '2026-03-02 12:41:51', '2026-03-02 14:46:09'),
('ff390615-dd2f-424f-a745-f0d492afce31', 'e3d3f374-388e-4a8a-ae23-539d39862240', '/uploads/projects/9cd3a612-bd67-4a10-b8b5-2e64ce85cb6f/stages/e3d3f374-388e-4a8a-ae23-539d39862240/1772462752930_ChatGPT Image 28 ÑÐµÐ²Ñ. 2026 Ð³., 19_36_58.png', '2026-03-02 14:45:52', '2026-03-02 14:45:52', '2026-03-02 14:46:09');

-- --------------------------------------------------------

--
-- Структура таблицы `project_subcontractors`
--

CREATE TABLE `project_subcontractors` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `project_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `subcontractor_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `project_subcontractors`
--

INSERT INTO `project_subcontractors` (`id`, `project_id`, `subcontractor_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
('0cb31ccf-c5cf-451a-bf83-95a0fbfe7c05', 'b1922451-8465-4976-b07e-47f27087f8b4', 2, '2026-03-02 11:57:33', '2026-03-02 11:57:33', '2026-03-02 12:15:32'),
('b1d2257c-4b15-424b-aa6c-dfce505e107c', 'b1922451-8465-4976-b07e-47f27087f8b4', 2, '2026-03-02 12:15:32', '2026-03-02 12:15:32', '2026-03-02 14:46:17');

-- --------------------------------------------------------

--
-- Структура таблицы `project_users`
--

CREATE TABLE `project_users` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `project_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `role` enum('projektleiter','gruppenleiter','worker') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `project_users`
--

INSERT INTO `project_users` (`id`, `project_id`, `user_id`, `role`, `created_at`, `updated_at`, `deleted_at`) VALUES
('3c3d7ab8-4055-43ca-8362-89b7954f4475', '865e09b7-27d7-4c74-87c1-f8e8bde85692', 'd034aa64-5cda-45a5-92fe-183597651e62', 'projektleiter', '2026-03-02 12:18:11', '2026-03-02 12:18:11', '2026-03-02 14:46:13'),
('6440f5d0-2aa9-41ea-ab2f-3fda4785047d', 'b1922451-8465-4976-b07e-47f27087f8b4', 'd034aa64-5cda-45a5-92fe-183597651e62', 'projektleiter', '2026-03-02 11:32:56', '2026-03-02 11:32:56', '2026-03-02 11:57:33'),
('87a72f24-615b-42c4-9f49-64b6af54a113', 'b1922451-8465-4976-b07e-47f27087f8b4', 'd034aa64-5cda-45a5-92fe-183597651e62', 'projektleiter', '2026-03-02 11:57:33', '2026-03-02 11:57:33', '2026-03-02 12:15:32'),
('a34cd34d-abe6-4611-a7cf-fea5888b2bc7', 'b1922451-8465-4976-b07e-47f27087f8b4', 'd034aa64-5cda-45a5-92fe-183597651e62', 'projektleiter', '2026-03-02 12:15:32', '2026-03-02 12:15:32', '2026-03-02 14:46:17'),
('bcfccef0-88e6-4639-9473-9af5acc3e126', '865e09b7-27d7-4c74-87c1-f8e8bde85692', 'd034aa64-5cda-45a5-92fe-183597651e62', 'projektleiter', '2026-03-02 12:16:11', '2026-03-02 12:16:11', '2026-03-02 12:18:11');

-- --------------------------------------------------------

--
-- Структура таблицы `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `field_key` varchar(255) DEFAULT NULL,
  `question_text` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `type` enum('radio','checkbox','input','select','slider') DEFAULT 'radio',
  `unit` varchar(255) DEFAULT NULL,
  `config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`config`)),
  `order_index` int(11) DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `questions`
--

INSERT INTO `questions` (`id`, `subcategory_id`, `field_key`, `question_text`, `description`, `type`, `unit`, `config`, `order_index`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, NULL, 'Welche Form hat das Dach?', NULL, '', NULL, NULL, 0, '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL),
(2, 1, NULL, 'Woraus besteht die Dacheindeckung?', NULL, '', NULL, NULL, 1, '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL),
(3, 1, NULL, 'Welche Abdichtung hat das Flachdach?', NULL, '', NULL, NULL, 2, '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL),
(4, 1, NULL, 'Wann soll die Installation erfolgen?', NULL, '', NULL, NULL, 3, '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL),
(5, 2, NULL, 'Art des Gebäudes?', NULL, '', NULL, NULL, 0, '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL),
(6, 2, NULL, 'Wie groß ist die zu beheizende Wohnfläche?', NULL, 'slider', 'm²', '{\"min\":50,\"max\":400,\"step\":10,\"default\":150}', 1, '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL),
(7, 3, NULL, 'Welche Leistung benötigen Sie für den Zählerschrank?', NULL, '', NULL, NULL, 0, '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
('73c8e2a1-3e46-4860-b79d-01df7e6401af', 'Gruppenleiter'),
('7460e50d-4ee8-4998-81de-9e511dcd769f', 'Büro'),
('85b840ab-ab36-423f-a8e0-4a790dec2a85', 'Worker'),
('a05c865d-d8c3-490c-8e28-654c5f664b06', 'Projektleiter'),
('fee838b3-9f49-4e04-9281-bd0ae72e4910', 'Admin');

-- --------------------------------------------------------

--
-- Структура таблицы `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `order_index` int(11) DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `name`, `description`, `order_index`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'PV Planung & Dach', 'Dachdetails klären', 0, '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL),
(2, 2, 'WP Gebäudeangaben', 'Haus details', 0, '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL),
(3, 3, 'Zählerschrank / Hauptverteilung', 'Erneuerung Zähleranlagen', 0, '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `subcontractors`
--

CREATE TABLE `subcontractors` (
  `id` int(11) NOT NULL,
  `company_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(255) NOT NULL,
  `trade` varchar(255) NOT NULL,
  `contact_person` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `hourly_rate` decimal(10,2) DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `notes` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `subcontractors`
--

INSERT INTO `subcontractors` (`id`, `company_id`, `name`, `trade`, `contact_person`, `email`, `phone`, `address`, `zip_code`, `city`, `hourly_rate`, `status`, `notes`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '9e499cb6-7003-4f45-82df-3e8fd7006eea', 'Müller Elektrotechnik', 'Elektriker', 'Hans Müller', 'info@mueller-elektro.de', '0170 1234567', 'Stromweg 1', '80331', 'München', 65.00, 'active', 'Zuverlässig für Großprojekte.', '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL),
(2, '9e499cb6-7003-4f45-82df-3e8fd7006eea', 'Schmidt Sanitäranlagen', 'Sanitär', 'Peter Schmidt', 'kontakt@schmidt-sanitaer.de', '0172 9876543', 'Wasserstraße 5', '80469', 'München', 70.00, 'active', NULL, '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL),
(3, '9e499cb6-7003-4f45-82df-3e8fd7006eea', 'Dachdecker Profis GmbH', 'Dachdecker', NULL, NULL, NULL, NULL, NULL, NULL, 55.00, 'inactive', NULL, '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` enum('In Arbeit','Erledigt','Warten') DEFAULT 'In Arbeit',
  `project_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `assigned_to_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_by_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `status`, `project_id`, `assigned_to_id`, `created_by_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Fundament gießen', 'Auf Baustelle Villa Schmidt das Fundament gießen laut Plan.', 'In Arbeit', NULL, 'ee64e3a5-e44f-41d5-b83e-cda994b28309', 'c1cd8740-38c5-4064-86ff-f4937ed91c3c', '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL),
(2, 'Elektroinstallation prüfen', 'Prüfen der Installationen im Südkomplex vor der Abnahme.', 'Erledigt', NULL, 'c1cd8740-38c5-4064-86ff-f4937ed91c3c', 'd034aa64-5cda-45a5-92fe-183597651e62', '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `task_images`
--

CREATE TABLE `task_images` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `path` varchar(255) NOT NULL,
  `task_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `specialty` varchar(255) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `status` enum('active','inactive','suspended') DEFAULT 'active',
  `company_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `role_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `manager_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `specialty`, `password_hash`, `status`, `company_id`, `role_id`, `manager_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
('07396c39-557d-411f-b423-819d8f80fbb2', 'Sabine (Büro)', 'buero@ep-bau.de', NULL, NULL, '$2b$10$xNRoVoBIkQMyMhb0B/lf7efKQuKqmy0h4dSy6CaPIoEQ/qOnlNaqa', 'active', '9e499cb6-7003-4f45-82df-3e8fd7006eea', '7460e50d-4ee8-4998-81de-9e511dcd769f', NULL, '2026-03-02 11:14:22', '2026-03-02 11:14:22', NULL),
('8ccac8d1-f2f9-491a-9d64-d45f5fc29380', 'Lukas Worker', 'lukas.w@ep-bau.de', NULL, NULL, '$2b$10$xNRoVoBIkQMyMhb0B/lf7efKQuKqmy0h4dSy6CaPIoEQ/qOnlNaqa', 'inactive', '9e499cb6-7003-4f45-82df-3e8fd7006eea', '85b840ab-ab36-423f-a8e0-4a790dec2a85', 'b3a7f14b-ced2-47c0-abd6-90e367f2e36b', '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL),
('a1c39d35-a91f-4cf3-94d4-6da3f02034ed', 'Peter Worker', 'peter.w@ep-bau.de', NULL, NULL, '$2b$10$xNRoVoBIkQMyMhb0B/lf7efKQuKqmy0h4dSy6CaPIoEQ/qOnlNaqa', 'active', '9e499cb6-7003-4f45-82df-3e8fd7006eea', '85b840ab-ab36-423f-a8e0-4a790dec2a85', 'c1cd8740-38c5-4064-86ff-f4937ed91c3c', '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL),
('b3a7f14b-ced2-47c0-abd6-90e367f2e36b', 'Markus Gruppenleiter', 'markus.gl@ep-bau.de', NULL, NULL, '$2b$10$xNRoVoBIkQMyMhb0B/lf7efKQuKqmy0h4dSy6CaPIoEQ/qOnlNaqa', 'active', '9e499cb6-7003-4f45-82df-3e8fd7006eea', '73c8e2a1-3e46-4860-b79d-01df7e6401af', 'd034aa64-5cda-45a5-92fe-183597651e62', '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL),
('c1cd8740-38c5-4064-86ff-f4937ed91c3c', 'Thomas Gruppenleiter', 'thomas.gl@ep-bau.de', NULL, NULL, '$2b$10$xNRoVoBIkQMyMhb0B/lf7efKQuKqmy0h4dSy6CaPIoEQ/qOnlNaqa', 'active', '9e499cb6-7003-4f45-82df-3e8fd7006eea', '73c8e2a1-3e46-4860-b79d-01df7e6401af', 'd034aa64-5cda-45a5-92fe-183597651e62', '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL),
('d034aa64-5cda-45a5-92fe-183597651e62', 'Klaus Projektleiter', 'klaus.pl@ep-bau.de', NULL, NULL, '$2b$10$xNRoVoBIkQMyMhb0B/lf7efKQuKqmy0h4dSy6CaPIoEQ/qOnlNaqa', 'active', '9e499cb6-7003-4f45-82df-3e8fd7006eea', 'a05c865d-d8c3-490c-8e28-654c5f664b06', 'd8f941a0-2b3e-4bba-a3a5-9f009c1b9d6a', '2026-03-02 11:14:22', '2026-03-02 11:14:22', NULL),
('d8f941a0-2b3e-4bba-a3a5-9f009c1b9d6a', 'System Admin', 'admin@ep-bau.de', NULL, NULL, '$2b$10$xNRoVoBIkQMyMhb0B/lf7efKQuKqmy0h4dSy6CaPIoEQ/qOnlNaqa', 'active', '9e499cb6-7003-4f45-82df-3e8fd7006eea', 'fee838b3-9f49-4e04-9281-bd0ae72e4910', NULL, '2026-03-02 11:14:22', '2026-03-02 11:14:22', NULL),
('ee64e3a5-e44f-41d5-b83e-cda994b28309', 'Jan Worker', 'jan.w@ep-bau.de', NULL, NULL, '$2b$10$xNRoVoBIkQMyMhb0B/lf7efKQuKqmy0h4dSy6CaPIoEQ/qOnlNaqa', 'active', '9e499cb6-7003-4f45-82df-3e8fd7006eea', '85b840ab-ab36-423f-a8e0-4a790dec2a85', 'c1cd8740-38c5-4064-86ff-f4937ed91c3c', '2026-03-02 11:14:23', '2026-03-02 11:14:23', NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `next_question_id` (`next_question_id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`);

--
-- Индексы таблицы `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`);

--
-- Индексы таблицы `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `inquiries`
--
ALTER TABLE `inquiries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Индексы таблицы `inquiry_answers`
--
ALTER TABLE `inquiry_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inquiry_id` (`inquiry_id`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `answer_id` (`answer_id`);

--
-- Индексы таблицы `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `project_number` (`project_number`),
  ADD UNIQUE KEY `project_number_2` (`project_number`),
  ADD KEY `projects_category_id_foreign_idx` (`category_id`),
  ADD KEY `projects_subcategory_id_foreign_idx` (`subcategory_id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `created_by` (`created_by`);

--
-- Индексы таблицы `project_answers`
--
ALTER TABLE `project_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `answer_id` (`answer_id`);

--
-- Индексы таблицы `project_images`
--
ALTER TABLE `project_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `uploaded_by` (`uploaded_by`);

--
-- Индексы таблицы `project_stages`
--
ALTER TABLE `project_stages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `assigned_to_id` (`assigned_to_id`),
  ADD KEY `created_by_id` (`created_by_id`);

--
-- Индексы таблицы `project_stage_images`
--
ALTER TABLE `project_stage_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_stage_id` (`project_stage_id`);

--
-- Индексы таблицы `project_subcontractors`
--
ALTER TABLE `project_subcontractors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `subcontractor_id` (`subcontractor_id`);

--
-- Индексы таблицы `project_users`
--
ALTER TABLE `project_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategory_id` (`subcategory_id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Индексы таблицы `subcontractors`
--
ALTER TABLE `subcontractors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`);

--
-- Индексы таблицы `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assigned_to_id` (`assigned_to_id`),
  ADD KEY `created_by_id` (`created_by_id`);

--
-- Индексы таблицы `task_images`
--
ALTER TABLE `task_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_id` (`task_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `company_id` (`company_id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `manager_id` (`manager_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `inquiries`
--
ALTER TABLE `inquiries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `inquiry_answers`
--
ALTER TABLE `inquiry_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `subcontractors`
--
ALTER TABLE `subcontractors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `answers_ibfk_2` FOREIGN KEY (`next_question_id`) REFERENCES `questions` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `inquiries`
--
ALTER TABLE `inquiries`
  ADD CONSTRAINT `inquiries_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `inquiries_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `inquiries_ibfk_3` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `inquiry_answers`
--
ALTER TABLE `inquiry_answers`
  ADD CONSTRAINT `inquiry_answers_ibfk_1` FOREIGN KEY (`inquiry_id`) REFERENCES `inquiries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inquiry_answers_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inquiry_answers_ibfk_3` FOREIGN KEY (`answer_id`) REFERENCES `answers` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `notes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_category_id_foreign_idx` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `projects_ibfk_3` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `projects_ibfk_4` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `projects_subcategory_id_foreign_idx` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `project_answers`
--
ALTER TABLE `project_answers`
  ADD CONSTRAINT `project_answers_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `project_answers_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `project_answers_ibfk_3` FOREIGN KEY (`answer_id`) REFERENCES `answers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `project_images`
--
ALTER TABLE `project_images`
  ADD CONSTRAINT `project_images_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `project_images_ibfk_2` FOREIGN KEY (`uploaded_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `project_stages`
--
ALTER TABLE `project_stages`
  ADD CONSTRAINT `project_stages_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `project_stages_ibfk_2` FOREIGN KEY (`assigned_to_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `project_stages_ibfk_3` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `project_stage_images`
--
ALTER TABLE `project_stage_images`
  ADD CONSTRAINT `project_stage_images_ibfk_1` FOREIGN KEY (`project_stage_id`) REFERENCES `project_stages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `project_subcontractors`
--
ALTER TABLE `project_subcontractors`
  ADD CONSTRAINT `project_subcontractors_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `project_subcontractors_ibfk_2` FOREIGN KEY (`subcontractor_id`) REFERENCES `subcontractors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `project_users`
--
ALTER TABLE `project_users`
  ADD CONSTRAINT `project_users_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `project_users_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `subcontractors`
--
ALTER TABLE `subcontractors`
  ADD CONSTRAINT `subcontractors_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`assigned_to_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `tasks_ibfk_2` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `task_images`
--
ALTER TABLE `task_images`
  ADD CONSTRAINT `task_images_ibfk_1` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `users_ibfk_3` FOREIGN KEY (`manager_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
