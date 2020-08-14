-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3308
-- Время создания: Авг 14 2020 г., 16:33
-- Версия сервера: 8.0.18
-- Версия PHP: 7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`) VALUES
(1, 'Game mouses'),
(2, 'Game keyboards'),
(3, 'Game headphones');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `image`, `category_id`) VALUES
(7, 'Razer mouse', 'Super game razer mouse for Pro gamers ', 'Razer2.jpg', 1),
(8, 'Razer mouse', 'Super game razer mouse for Pro gamers ', 'Razer3.jpg', 1),
(9, 'Msi mouse ', 'Super game Msi mouse for Pro gamers ', 'Msi-mouse.jpg', 1),
(10, 'Msi mouse ', 'Super game Msi mouse for Pro gamers ', 'Msi-mouse2.jpg', 1),
(11, 'Roccat mouse ', 'Super game Roccat mouse for Pro gamers ', 'Roccat-mouse.jpg', 1),
(12, 'Roccat mouse ', 'Super game Roccat mouse for Pro gamers ', 'Roccat-mouse1.jpg', 1),
(14, 'Razer keyboard', 'Insane keyboard from Razer for Pro Gamers ', 'Razer-keyboard2.jpg', 2),
(15, 'Razer keyboard', 'Insane keyboard from Razer for Pro Gamers ', 'Razer-keyboard3.jpg', 2),
(17, 'Msi keyboard', 'Insane keyboard from Msi for Pro Gamers ', 'Msi-keyboard3.jpg', 2),
(18, 'Msi keyboard', 'Insane keyboard from Msi for Pro Gamers ', 'Msi-keyboard4.jpg', 2),
(19, 'Kingston keyboard', 'Insane keyboard from Kingston for Pro Gamers ', 'Hyperx-keyboard1.jpg', 2),
(20, 'Kingston keyboard', 'Insane keyboard from Kingston for Pro Gamers ', 'Hyperx-keyboard2.jpg', 2),
(21, 'Razer headphones ', 'Unreal game volume effects from Razer especially for pro gamers', 'Razer-headphones1.jpg', 3),
(22, 'Razer headphones ', 'Unreal game volume effects from Razer especially for pro gamers', 'Razer-headphones2.jpg', 3),
(23, 'Steelseries headphones ', 'Unreal game volume effects from Steelseries especially for pro gamers', 'Steelseries-headphones1.jpg', 3),
(24, 'Steelseries headphones ', 'Unreal game volume effects from Steelseries especially for pro gamers', 'Steelseries-headphones2.jpg', 3),
(25, 'Kingston headphones ', 'Unreal game volume effects from Kingston especially for pro gamers', 'Hyperx-headphones1.jpg', 3),
(26, 'Kingston headphones ', 'Unreal game volume effects from Kingston especially for pro gamers', 'Hyperx-headphones2.jpg', 3);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
