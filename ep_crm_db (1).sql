-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Мар 01 2026 г., 22:03
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
(1, 1, 'Satteldach', 2, 0, '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL),
(2, 1, 'Pultdach', 2, 1, '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL),
(3, 1, 'Flachdach', 3, 2, '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL),
(4, 2, 'Ziegel', 4, 0, '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL),
(5, 2, 'Trapezblech', 4, 1, '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL),
(6, 3, 'Bitumen', 4, 0, '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL),
(7, 3, 'Folie', 4, 1, '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL),
(8, 3, 'Kies', 4, 2, '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL),
(9, 4, 'So schnell wie möglich', NULL, 0, '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL),
(10, 4, 'In 3-6 Monaten', NULL, 1, '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL),
(11, 5, 'Einfamilienhaus', 6, 0, '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL),
(12, 5, 'Reihenhaus', 6, 1, '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL),
(13, 5, 'Mehrfamilienhaus', 6, 2, '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL),
(14, 6, 'ANY', NULL, 0, '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL),
(15, 7, 'Komplett neu', NULL, 0, '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL),
(16, 7, 'Erweiterung', NULL, 1, '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL),
(17, 7, 'Nur Prüfung', NULL, 2, '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL),
(18, 8, '123 333', 9, 0, '2026-02-25 21:04:18', '2026-02-25 21:04:56', NULL),
(19, 8, 'wqe', 13, 0, '2026-02-25 21:04:49', '2026-02-25 21:14:58', NULL),
(20, 9, 'weqwe', 8, 0, '2026-02-25 21:05:17', '2026-02-25 21:05:17', NULL),
(21, 9, 'qewqe', NULL, 0, '2026-02-25 21:05:28', '2026-02-25 21:05:28', NULL),
(22, 11, 'wqeqwe', 10, 0, '2026-02-25 21:09:22', '2026-02-25 21:09:22', NULL),
(23, 11, 'eqwewq', NULL, 0, '2026-02-25 21:09:27', '2026-02-25 21:09:27', NULL),
(24, 14, 'eeeee', 8, 0, '2026-02-25 21:23:57', '2026-02-25 21:23:57', NULL),
(25, 14, 'dddd', NULL, 0, '2026-02-25 21:24:05', '2026-02-25 21:24:05', NULL);

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
(1, 'ce58a285-19b0-4a60-8bb1-ec51d61ad82a', 'Photovoltaik (PV)', 'Solaranlagen und Speicher', 'fa-solar-panel', 0, '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL),
(2, 'ce58a285-19b0-4a60-8bb1-ec51d61ad82a', 'Wärmepumpe (WP)', 'Heizsysteme und Installation', 'fa-fire-burner', 1, '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL),
(3, 'ce58a285-19b0-4a60-8bb1-ec51d61ad82a', 'Elektroinstallation', 'Zählerschrank, Wallbox, Smart Home', 'fa-bolt', 2, '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL),
(4, 'ce58a285-19b0-4a60-8bb1-ec51d61ad82a', 'Sanitär & Heizung', 'Badsanierung, Wasserrohre', 'fa-faucet-drip', 3, '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL),
(5, 'ce58a285-19b0-4a60-8bb1-ec51d61ad82a', 'Dach & Fassade', 'Dachdeckerarbeiten, Dämmung', 'fa-house', 4, '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL),
(6, 'ce58a285-19b0-4a60-8bb1-ec51d61ad82a', 'Maler & Trockenbau', 'Wände streichen, Wände ziehen', 'fa-paint-roller', 5, '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL),
(7, 'ce58a285-19b0-4a60-8bb1-ec51d61ad82a', 'Garten & Landschaftsbau', 'Pflasterarbeiten, Zäune', 'fa-leaf', 6, '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL),
(8, 'ce58a285-19b0-4a60-8bb1-ec51d61ad82a', '134', 'rrr', '', 0, '2026-02-25 21:03:38', '2026-02-25 21:03:38', NULL);

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
  `notes` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `source` enum('funnelforms','admin_panel') DEFAULT 'funnelforms'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `clients`
--

INSERT INTO `clients` (`id`, `company_id`, `name`, `contact_person`, `email`, `phone`, `address`, `zip_code`, `city`, `type`, `status`, `notes`, `created_at`, `updated_at`, `deleted_at`, `source`) VALUES
(1, 'ce58a285-19b0-4a60-8bb1-ec51d61ad82a', 'Immobilien Meier GmbH', 'Herr Schmidt', 'info@immo-meier.de', '089 123456', 'Hauptstraße 15', '80331', 'München', 'company', 'active', 'Stammkunde seit 2020.', '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL, 'funnelforms'),
(2, 'ce58a285-19b0-4a60-8bb1-ec51d61ad82a', 'Baugenossenschaft Süd', 'Frau Weber', 'bauleitung@bg-sued.de', '089 987654', 'Südpark 3', '81373', 'München', 'company', 'active', NULL, '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL, 'funnelforms'),
(3, 'ce58a285-19b0-4a60-8bb1-ec51d61ad82a', 'Privatier Wagner', 'Max Wagner', 'm.wagner@private.de', '0151 5556667', 'Villenviertel 8', '82031', 'Grünwald', 'private', 'lead', 'Interesse an Badsanierung.', '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL, 'funnelforms'),
(4, 'ce58a285-19b0-4a60-8bb1-ec51d61ad82a', 't', NULL, 'kvadrat01042015@gmail.com', '45353', NULL, NULL, NULL, 'company', 'active', NULL, '2026-03-01 20:08:20', '2026-03-01 20:08:20', NULL, 'admin_panel');

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
('ce58a285-19b0-4a60-8bb1-ec51d61ad82a', 'EP Bauunternehmen GmbH', 'enterprise', '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL);

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
(1, 'ce58a285-19b0-4a60-8bb1-ec51d61ad82a', NULL, 1, 'Anfrage Solaranlage Meier', 'Familie Meier', 'meier.familie@example.com', '0151 1234567', '80331 München', 'new', 'Kunde wünscht schnellen Rückruf.', '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL),
(2, 'ce58a285-19b0-4a60-8bb1-ec51d61ad82a', NULL, 2, 'Neue Wärmepumpe für Altbau', 'Johannes Schmidt', 'j.schmidt@example.com', NULL, 'Außenbezirk 12', 'contacted', 'Hat bereits ein Angebot von Konkurrenz.', '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL),
(3, 'ce58a285-19b0-4a60-8bb1-ec51d61ad82a', NULL, 1, 'цйуйц', 'цйуйц', 'eee@g.g', 'ууууу', 'уцйу', 'new', 'gfdgfd', '2026-02-25 21:00:06', '2026-02-25 21:00:06', NULL),
(4, 'ce58a285-19b0-4a60-8bb1-ec51d61ad82a', NULL, 1, 'цйуйц', 'цйуйц', 'eee@g.g', 'ууууу', 'уцйу', 'new', 'gfdgfdgggg ggg', '2026-02-25 21:00:20', '2026-02-25 21:00:20', NULL),
(5, 'ce58a285-19b0-4a60-8bb1-ec51d61ad82a', NULL, 1, 'weqw', 'aeasdas', 'ddd@ds.f', 'asdas', 'asdasd', 'new', NULL, '2026-02-25 21:11:56', '2026-02-25 21:11:56', NULL),
(6, 'ce58a285-19b0-4a60-8bb1-ec51d61ad82a', NULL, 8, 'sdfs', 'dfsf', 'f@f.df', 'fsdfsd', 'sdfsd', 'new', 'd', '2026-02-25 21:20:13', '2026-02-25 21:27:34', '2026-02-25 21:27:34');

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
(1, 1, 1, 1, 'Satteldach', '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL),
(2, 1, 2, 4, 'Ziegel', '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL),
(3, 2, 5, 11, 'Einfamilienhaus', '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL),
(4, 2, 6, NULL, '140', '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL),
(13, 5, 1, 2, 'Pultdach', '2026-02-25 21:11:56', '2026-02-25 21:11:56', NULL),
(14, 5, 2, 5, 'Trapezblech', '2026-02-25 21:11:56', '2026-02-25 21:11:56', NULL),
(15, 5, 4, 10, 'In 3-6 Monaten', '2026-02-25 21:11:56', '2026-02-25 21:11:56', NULL),
(16, 6, 8, 19, 'wqe', '2026-02-25 21:20:13', '2026-02-25 21:20:13', NULL),
(17, 6, 9, 20, 'weqwe', '2026-02-25 21:20:13', '2026-02-25 21:20:13', NULL);

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
(1, 'Material fehlt', 'Auf Baustelle A fehlen noch 5 Sack Zement. Bitte nachliefern.', '2026-02-25', 'yellow', 0, '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL, '73e6c58f-a45e-4946-98ba-a3a9658cb697'),
(2, 'Wetterwarnung', 'Morgen starker Regen erwartet. Dacharbeiten verschieben.', '2026-02-26', 'blue', 0, '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL, '354ac19e-4146-4960-9346-a4a35cbc51fa');

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
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `projects`
--

INSERT INTO `projects` (`id`, `project_number`, `title`, `description`, `address`, `status`, `progress`, `start_date`, `end_date`, `client_id`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
('30119c8b-8183-4c5e-b559-cfdfdf8209ea', 'EP-003', 'sadsa', 'asdas', 'dsad', 'Aktiv', 0, NULL, NULL, 2, '0bf07309-0b26-472c-8e75-8c16401c42b1', '2026-03-01 20:27:10', '2026-03-01 20:27:10', NULL),
('7e52bd3e-427e-43c2-86c4-364b4c1ff2bc', 'EP-005', 'cvx', '', 'cxv', 'Aktiv', 0, NULL, NULL, 2, '0bf07309-0b26-472c-8e75-8c16401c42b1', '2026-03-01 20:59:54', '2026-03-01 20:59:54', NULL),
('95c9a963-dba4-4622-a4a0-dbf8266376f8', 'EP-002', 'sdfsd', 'fds', 'fds', 'Aktiv', 0, NULL, NULL, 1, '0bf07309-0b26-472c-8e75-8c16401c42b1', '2026-03-01 20:17:48', '2026-03-01 20:17:48', NULL),
('e2bc9947-76f9-45df-8c8b-dcae3c989401', 'EP-004', 'cs', '', 'ss', 'Aktiv', 0, NULL, NULL, 2, '0bf07309-0b26-472c-8e75-8c16401c42b1', '2026-03-01 20:41:03', '2026-03-01 20:41:03', NULL),
('f7d2cde4-6952-4f96-93fd-05dc78897ee6', 'EP-001', 'dsf', 'dsf', 'dsf', 'Aktiv', 0, NULL, NULL, 2, '0bf07309-0b26-472c-8e75-8c16401c42b1', '2026-03-01 20:17:26', '2026-03-01 20:17:26', NULL);

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
('15e4f46b-e698-4f84-b028-7b4a74a422a4', 'e2bc9947-76f9-45df-8c8b-dcae3c989401', 5, 11, 'Einfamilienhaus', '2026-03-01 20:41:03', '2026-03-01 20:41:03', NULL),
('c5c27f25-e06e-478f-b530-659edc5fd722', '7e52bd3e-427e-43c2-86c4-364b4c1ff2bc', 11, 23, 'eqwewq', '2026-03-01 20:59:54', '2026-03-01 20:59:54', NULL);

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
('3b54a64a-a429-4f40-8caa-adaad2a16b87', 'f7d2cde4-6952-4f96-93fd-05dc78897ee6', '/uploads/projects/EP-001/PixVerse_Image_Effect_prompt_Ð§ÐµÑÐ½ÑÐ¹ Ð·Ð°ÑÐµÐ¼Ð½ÐµÐ½Ð½Ñ (1).jpg', 'PixVerse_Image_Effect_prompt_Ð§ÐµÑÐ½ÑÐ¹ Ð·Ð°ÑÐµÐ¼Ð½ÐµÐ½Ð½Ñ (1).jpg', '0bf07309-0b26-472c-8e75-8c16401c42b1', '2026-03-01 20:17:26', '2026-03-01 20:17:26', NULL),
('446a4df1-5590-48a8-b3ca-14e5153a31a1', '95c9a963-dba4-4622-a4a0-dbf8266376f8', '/uploads/projects/EP-002/PixVerse_Image_Effect_prompt_Ð§ÐµÑÐ½ÑÐ¹ Ð·Ð°ÑÐµÐ¼Ð½ÐµÐ½Ð½Ñ (1).jpg', 'PixVerse_Image_Effect_prompt_Ð§ÐµÑÐ½ÑÐ¹ Ð·Ð°ÑÐµÐ¼Ð½ÐµÐ½Ð½Ñ (1).jpg', '0bf07309-0b26-472c-8e75-8c16401c42b1', '2026-03-01 20:17:48', '2026-03-01 20:17:48', NULL),
('5cd372ef-02a5-49aa-9556-6c2d3cdfd646', 'e2bc9947-76f9-45df-8c8b-dcae3c989401', '/uploads/projects/EP-004/PixVerse_Image_Effect_prompt_Ð§ÐµÑÐ½ÑÐ¹ Ð·Ð°ÑÐµÐ¼Ð½ÐµÐ½Ð½Ñ (1).jpg', 'PixVerse_Image_Effect_prompt_Ð§ÐµÑÐ½ÑÐ¹ Ð·Ð°ÑÐµÐ¼Ð½ÐµÐ½Ð½Ñ (1).jpg', '0bf07309-0b26-472c-8e75-8c16401c42b1', '2026-03-01 20:41:03', '2026-03-01 20:41:03', NULL),
('c7e7c6fb-6686-4981-8423-c1a5d742987a', '30119c8b-8183-4c5e-b559-cfdfdf8209ea', '/uploads/projects/EP-003/PixVerse_Image_Effect_prompt_Ð§ÐµÑÐ½ÑÐ¹ Ð·Ð°ÑÐµÐ¼Ð½ÐµÐ½Ð½Ñ (1).jpg', 'PixVerse_Image_Effect_prompt_Ð§ÐµÑÐ½ÑÐ¹ Ð·Ð°ÑÐµÐ¼Ð½ÐµÐ½Ð½Ñ (1).jpg', '0bf07309-0b26-472c-8e75-8c16401c42b1', '2026-03-01 20:27:10', '2026-03-01 20:27:10', NULL);

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
('635e7eba-e5c3-4de4-b435-d284ef6c3d25', '7e52bd3e-427e-43c2-86c4-364b4c1ff2bc', '354ac19e-4146-4960-9346-a4a35cbc51fa', '', '2026-03-01 20:59:54', '2026-03-01 20:59:54', NULL),
('9fa676d2-b86a-4f50-a85b-332e8a089134', '30119c8b-8183-4c5e-b559-cfdfdf8209ea', '354ac19e-4146-4960-9346-a4a35cbc51fa', 'projektleiter', '2026-03-01 20:27:10', '2026-03-01 20:27:10', NULL),
('d93a49ef-b7cb-455b-86e8-cb2507abc525', 'f7d2cde4-6952-4f96-93fd-05dc78897ee6', '354ac19e-4146-4960-9346-a4a35cbc51fa', 'projektleiter', '2026-03-01 20:17:26', '2026-03-01 20:17:26', NULL),
('e6d9ad18-0a05-4b60-9bff-5aba77300528', 'e2bc9947-76f9-45df-8c8b-dcae3c989401', '354ac19e-4146-4960-9346-a4a35cbc51fa', 'projektleiter', '2026-03-01 20:41:03', '2026-03-01 20:41:03', NULL);

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
(1, 1, NULL, 'Welche Form hat das Dach?', NULL, '', NULL, NULL, 0, '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL),
(2, 1, NULL, 'Woraus besteht die Dacheindeckung?', NULL, '', NULL, NULL, 1, '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL),
(3, 1, NULL, 'Welche Abdichtung hat das Flachdach?', NULL, '', NULL, NULL, 2, '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL),
(4, 1, NULL, 'Wann soll die Installation erfolgen?', NULL, '', NULL, NULL, 3, '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL),
(5, 2, NULL, 'Art des Gebäudes?', NULL, '', NULL, NULL, 0, '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL),
(6, 2, NULL, 'Wie groß ist die zu beheizende Wohnfläche?', NULL, 'slider', 'm²', '{\"min\":50,\"max\":400,\"step\":10,\"default\":150}', 1, '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL),
(7, 3, NULL, 'Welche Leistung benötigen Sie für den Zählerschrank?', NULL, '', NULL, NULL, 0, '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL),
(8, 4, '', '12312e ', NULL, 'select', '', '{\"min\":0,\"max\":100,\"step\":1}', 0, '2026-02-25 21:03:55', '2026-02-25 21:24:34', '2026-02-25 21:24:34'),
(9, 4, '', 'ddd', NULL, 'checkbox', '', '{\"min\":0,\"max\":100,\"step\":1}', 0, '2026-02-25 21:04:28', '2026-02-25 21:24:32', '2026-02-25 21:24:32'),
(10, 5, '', 'ff', NULL, 'input', '', '{\"min\":0,\"max\":100,\"step\":1}', 0, '2026-02-25 21:06:31', '2026-02-25 21:10:49', '2026-02-25 21:10:49'),
(11, 5, '', 'dsadasaa', NULL, 'radio', '', '{\"min\":0,\"max\":100,\"step\":1}', 0, '2026-02-25 21:09:10', '2026-02-25 21:09:10', NULL),
(12, 5, '', 'wqeqweqeeeeee', NULL, 'slider', '', '{\"min\":0,\"max\":100,\"step\":1}', 0, '2026-02-25 21:09:40', '2026-02-25 21:11:14', '2026-02-25 21:11:14'),
(13, 4, '', 'qweeee', NULL, '', '', '{\"min\":0,\"max\":100,\"step\":1}', 0, '2026-02-25 21:12:38', '2026-02-25 21:19:40', '2026-02-25 21:19:40'),
(14, 4, '', 'sdsa', NULL, '', '', '{\"min\":0,\"max\":100,\"step\":1}', 0, '2026-02-25 21:20:30', '2026-02-25 21:20:30', NULL);

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
('2021aba7-a766-409c-9ae0-a9187ec4c551', 'Gruppenleiter'),
('8cc6edd2-4b8e-4662-a1fd-ca9aa36552c3', 'Worker'),
('c53c24c3-58fe-435f-9b8e-35f8e9a1d2b4', 'Büro'),
('d8b39a6a-1020-45d7-82e0-6df7d6145ce1', 'Admin'),
('fabcc61e-c211-4ae4-89d7-41222ac5b0b1', 'Projektleiter');

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
(1, 1, 'PV Planung & Dach', 'Dachdetails klären', 0, '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL),
(2, 2, 'WP Gebäudeangaben', 'Haus details', 0, '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL),
(3, 3, 'Zählerschrank / Hauptverteilung', 'Erneuerung Zähleranlagen', 0, '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL),
(4, 8, 'fff', 'ddd', 0, '2026-02-25 21:03:44', '2026-02-25 21:03:44', NULL),
(5, 8, 'dddd', 'dfff', 0, '2026-02-25 21:06:04', '2026-02-25 21:06:04', NULL);

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
(1, 'ce58a285-19b0-4a60-8bb1-ec51d61ad82a', 'Müller Elektrotechnik', 'Elektriker', 'Hans Müller', 'info@mueller-elektro.de', '0170 1234567', 'Stromweg 1', '80331', 'München', 65.00, 'active', 'Zuverlässig für Großprojekte.', '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL),
(2, 'ce58a285-19b0-4a60-8bb1-ec51d61ad82a', 'Schmidt Sanitäranlagen', 'Sanitär', 'Peter Schmidt', 'kontakt@schmidt-sanitaer.de', '0172 9876543', 'Wasserstraße 5', '80469', 'München', 70.00, 'active', NULL, '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL),
(3, 'ce58a285-19b0-4a60-8bb1-ec51d61ad82a', 'Dachdecker Profis GmbH', 'Dachdecker', NULL, NULL, NULL, NULL, NULL, NULL, 55.00, 'inactive', NULL, '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` enum('In Arbeit','Erledigt','Warten') DEFAULT 'In Arbeit',
  `project_id` int(11) DEFAULT NULL,
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
(1, 'Fundament gießen', 'Auf Baustelle Villa Schmidt das Fundament gießen laut Plan.', 'In Arbeit', NULL, '4252e23f-762b-45a0-9df3-86b7977fc94a', '73e6c58f-a45e-4946-98ba-a3a9658cb697', '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL),
(2, 'Elektroinstallation prüfen', 'Prüfen der Installationen im Südkomplex vor der Abnahme.', 'Erledigt', NULL, '73e6c58f-a45e-4946-98ba-a3a9658cb697', '354ac19e-4146-4960-9346-a4a35cbc51fa', '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
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

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password_hash`, `status`, `company_id`, `role_id`, `manager_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
('0bf07309-0b26-472c-8e75-8c16401c42b1', 'System Admin', 'admin@ep-bau.de', NULL, '$2b$10$CW41KsYSShqNdeoErhU78eaoLyzINRuWyBdZHPZnKt8Ztfeef5ccS', 'active', 'ce58a285-19b0-4a60-8bb1-ec51d61ad82a', 'd8b39a6a-1020-45d7-82e0-6df7d6145ce1', NULL, '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL),
('354ac19e-4146-4960-9346-a4a35cbc51fa', 'Klaus Projektleiter', 'klaus.pl@ep-bau.de', NULL, '$2b$10$CW41KsYSShqNdeoErhU78eaoLyzINRuWyBdZHPZnKt8Ztfeef5ccS', 'active', 'ce58a285-19b0-4a60-8bb1-ec51d61ad82a', 'fabcc61e-c211-4ae4-89d7-41222ac5b0b1', '0bf07309-0b26-472c-8e75-8c16401c42b1', '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL),
('4252e23f-762b-45a0-9df3-86b7977fc94a', 'Jan Worker', 'jan.w@ep-bau.de', NULL, '$2b$10$CW41KsYSShqNdeoErhU78eaoLyzINRuWyBdZHPZnKt8Ztfeef5ccS', 'active', 'ce58a285-19b0-4a60-8bb1-ec51d61ad82a', '8cc6edd2-4b8e-4662-a1fd-ca9aa36552c3', '73e6c58f-a45e-4946-98ba-a3a9658cb697', '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL),
('597499cd-2d61-4e6c-82bf-d071e7810c31', 'Sabine (Büro)', 'buero@ep-bau.de', NULL, '$2b$10$CW41KsYSShqNdeoErhU78eaoLyzINRuWyBdZHPZnKt8Ztfeef5ccS', 'active', 'ce58a285-19b0-4a60-8bb1-ec51d61ad82a', 'c53c24c3-58fe-435f-9b8e-35f8e9a1d2b4', NULL, '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL),
('73e6c58f-a45e-4946-98ba-a3a9658cb697', 'Thomas Gruppenleiter', 'thomas.gl@ep-bau.de', NULL, '$2b$10$CW41KsYSShqNdeoErhU78eaoLyzINRuWyBdZHPZnKt8Ztfeef5ccS', 'active', 'ce58a285-19b0-4a60-8bb1-ec51d61ad82a', '2021aba7-a766-409c-9ae0-a9187ec4c551', '354ac19e-4146-4960-9346-a4a35cbc51fa', '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL),
('c39922c6-4935-4e1a-b1ed-c417a667151d', 'Peter Worker', 'peter.w@ep-bau.de', NULL, '$2b$10$CW41KsYSShqNdeoErhU78eaoLyzINRuWyBdZHPZnKt8Ztfeef5ccS', 'active', 'ce58a285-19b0-4a60-8bb1-ec51d61ad82a', '8cc6edd2-4b8e-4662-a1fd-ca9aa36552c3', '73e6c58f-a45e-4946-98ba-a3a9658cb697', '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL),
('d0059528-7fe6-4db7-a773-81e198a94799', 'Lukas Worker', 'lukas.w@ep-bau.de', NULL, '$2b$10$CW41KsYSShqNdeoErhU78eaoLyzINRuWyBdZHPZnKt8Ztfeef5ccS', 'inactive', 'ce58a285-19b0-4a60-8bb1-ec51d61ad82a', '8cc6edd2-4b8e-4662-a1fd-ca9aa36552c3', 'e972360a-c269-4fc5-9a3c-df61d91d87d4', '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL),
('e972360a-c269-4fc5-9a3c-df61d91d87d4', 'Markus Gruppenleiter', 'markus.gl@ep-bau.de', NULL, '$2b$10$CW41KsYSShqNdeoErhU78eaoLyzINRuWyBdZHPZnKt8Ztfeef5ccS', 'active', 'ce58a285-19b0-4a60-8bb1-ec51d61ad82a', '2021aba7-a766-409c-9ae0-a9187ec4c551', '354ac19e-4146-4960-9346-a4a35cbc51fa', '2026-02-25 20:03:49', '2026-02-25 20:03:49', NULL);

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
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `name_2` (`name`),
  ADD UNIQUE KEY `name_3` (`name`);

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
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `email_2` (`email`),
  ADD UNIQUE KEY `email_3` (`email`),
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `inquiries`
--
ALTER TABLE `inquiries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `inquiry_answers`
--
ALTER TABLE `inquiry_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  ADD CONSTRAINT `inquiries_ibfk_7` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `inquiries_ibfk_8` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `inquiries_ibfk_9` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `inquiry_answers`
--
ALTER TABLE `inquiry_answers`
  ADD CONSTRAINT `inquiry_answers_ibfk_7` FOREIGN KEY (`inquiry_id`) REFERENCES `inquiries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inquiry_answers_ibfk_8` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inquiry_answers_ibfk_9` FOREIGN KEY (`answer_id`) REFERENCES `answers` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `notes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `projects_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

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
  ADD CONSTRAINT `tasks_ibfk_2` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_7` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_ibfk_8` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `users_ibfk_9` FOREIGN KEY (`manager_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
