-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 10 2022 г., 14:11
-- Версия сервера: 10.4.21-MariaDB
-- Версия PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `lab1var4`
--

-- --------------------------------------------------------

--
-- Структура таблицы `actor`
--

CREATE TABLE `actor` (
  `ID_ACTOR` int(10) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `actor`
--

INSERT INTO `actor` (`ID_ACTOR`, `name`) VALUES
(1, 'Actor 1'),
(2, 'Actor 2'),
(3, 'Actor 3'),
(4, 'Actor 4'),
(5, 'Actor 5'),
(6, 'Actor 6'),
(7, 'Actor 7'),
(8, 'Actor 8'),
(9, 'Actor 9'),
(10, 'Actor 10');

-- --------------------------------------------------------

--
-- Структура таблицы `film`
--

CREATE TABLE `film` (
  `ID_FILM` int(10) NOT NULL,
  `name` text NOT NULL,
  `date` date NOT NULL,
  `country` text NOT NULL,
  `quality` text NOT NULL,
  `resolution` enum('640x480','1280x720','1920x1080','3840x2160') NOT NULL,
  `codec` text NOT NULL,
  `producer` text NOT NULL,
  `director` text NOT NULL,
  `carrier` enum('video','CD','DVD','BR') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `film`
--

INSERT INTO `film` (`ID_FILM`, `name`, `date`, `country`, `quality`, `resolution`, `codec`, `producer`, `director`, `carrier`) VALUES
(1, 'Film1', '2022-05-19', 'USA', 'SD', '640x480', 'MP4', 'producer1', 'director1', 'DVD'),
(2, 'Film2', '2022-05-19', 'USA', 'HD', '1280x720', 'MPEG', 'producer2', 'director2', 'BR'),
(3, 'Film3', '2022-05-18', 'USA', 'HD', '1280x720', 'VOB', 'producer3', 'director3', 'CD'),
(4, 'Film4', '2022-05-21', 'Ukraine', 'Full HD', '1920x1080', 'MKV', 'producer4', 'director4', 'video'),
(5, 'Film5', '2022-05-21', 'Ukraine', 'UHD', '3840x2160', 'WMV', 'producer5', 'director5', 'CD'),
(6, 'Film6', '2022-05-21', 'Ukraine', 'Full HD', '1920x1080', 'MKV', 'producer6', 'director6', 'DVD'),
(7, 'Film7', '2022-05-24', 'Ukraine', 'SD', '640x480', 'MP4', 'producer7', 'director7', 'BR'),
(8, 'Film8', '2022-05-23', 'Ukraine', 'Full HD	', '1920x1080', 'WMV', 'producer8', 'director8', 'video');

-- --------------------------------------------------------

--
-- Структура таблицы `film_actor`
--

CREATE TABLE `film_actor` (
  `FID_ACTOR` int(10) NOT NULL,
  `FID_FILM` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `film_actor`
--

INSERT INTO `film_actor` (`FID_ACTOR`, `FID_FILM`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 3),
(10, 2),
(8, 4),
(9, 5),
(10, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `film_genre`
--

CREATE TABLE `film_genre` (
  `FID_FILM` int(10) NOT NULL,
  `FID_GENRE` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `film_genre`
--

INSERT INTO `film_genre` (`FID_FILM`, `FID_GENRE`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 5),
(5, 3),
(6, 2),
(7, 3),
(1, 3),
(3, 4),
(5, 5),
(8, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `genre`
--

CREATE TABLE `genre` (
  `ID_GENRE` int(10) NOT NULL,
  `title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `genre`
--

INSERT INTO `genre` (`ID_GENRE`, `title`) VALUES
(1, 'genre1'),
(2, 'genre2'),
(3, 'genre3'),
(4, 'genre4'),
(5, 'genre5');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`ID_ACTOR`);

--
-- Индексы таблицы `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`ID_FILM`);

--
-- Индексы таблицы `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`ID_GENRE`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
