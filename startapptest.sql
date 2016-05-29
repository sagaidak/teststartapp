-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Май 29 2016 г., 12:01
-- Версия сервера: 5.6.26-log
-- Версия PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `startapptest`
--

-- --------------------------------------------------------

--
-- Структура таблицы `assignment`
--

CREATE TABLE IF NOT EXISTS `assignment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `assignment`
--

INSERT INTO `assignment` (`id`, `user_id`, `project_id`, `role_id`) VALUES
(1, 3, 3, 1),
(2, 4, 1, 1),
(3, 5, 1, 1),
(4, 5, 4, 3),
(5, 3, 4, 2),
(6, 12, 5, 2),
(7, 15, 5, 3),
(8, 17, 5, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `city`
--

CREATE TABLE IF NOT EXISTS `city` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `city`
--

INSERT INTO `city` (`id`, `name`) VALUES
(1, 'Odessa'),
(2, 'Jmerenka'),
(3, 'Kiev');

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1464438629),
('m160528_122505_create_user_table', 1464438632);

-- --------------------------------------------------------

--
-- Структура таблицы `project`
--

CREATE TABLE IF NOT EXISTS `project` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `project`
--

INSERT INTO `project` (`id`, `name`, `status`, `description`) VALUES
(1, 'first project', 'first status', NULL),
(2, 'second', 'second st', 'second desc'),
(3, 'third', 'developing', 'third desc'),
(4, 'Another One', 'testing', 'Note: If a query already specifies the orderBy clause, the new ordering instructions given by end users (through the sort configuration) will be appended to the existing orderBy clause. Any existing limit and offset clauses will be overwritten by the pagination request from end users (through the pagination configuration).'),
(5, 'One more project', 'finished', 'Info: The totalCount property is required only if you need to paginate the data. This is because the SQL statement specified via sql will be modified by the provider to return only the currently requested page of data. The provider still needs to know the total number of data items in order to correctly calculate the number of pages available.');

-- --------------------------------------------------------

--
-- Структура таблицы `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'QA'),
(2, 'designer'),
(3, 'manager'),
(4, 'developer');

-- --------------------------------------------------------

--
-- Структура таблицы `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `status`
--

INSERT INTO `status` (`id`, `name`) VALUES
(1, 'developing'),
(2, 'testing'),
(3, 'finished'),
(4, 'design');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `name`, `city`) VALUES
(1, 'a@a.com', 'f4542db9ba30f7958ae42c113dd87ad21fb2eddb', NULL, NULL),
(2, 'b@b.com', 'f4542db9ba30f7958ae42c113dd87ad21fb2eddb', NULL, NULL),
(3, 'c@c.com', 'f4542db9ba30f7958ae42c113dd87ad21fb2eddb', 'Cname', 'Ccity'),
(4, 'q@q.com', 'f4542db9ba30f7958ae42c113dd87ad21fb2eddb', 'Qname', '1'),
(5, 'w@w.com', 'f4542db9ba30f7958ae42c113dd87ad21fb2eddb', 'Wname', 'Odessa'),
(10, 'e@e.com', 'f4542db9ba30f7958ae42c113dd87ad21fb2eddb', 'Ename', 'Odessa'),
(11, 'r@r.com', 'f4542db9ba30f7958ae42c113dd87ad21fb2eddb', 'Rname', 'Jmerenka'),
(12, 't@t.com', '386f47c570256177ea1461493414e3f346b165f8', 'Tname', 'Kiev'),
(13, 'y@y.com', 'f4542db9ba30f7958ae42c113dd87ad21fb2eddb', 'yName', 'Jmerenka'),
(14, 'u@u.com', 'f4542db9ba30f7958ae42c113dd87ad21fb2eddb', 'uName', 'Kiev'),
(15, 'i@i.com', 'f4542db9ba30f7958ae42c113dd87ad21fb2eddb', 'iName', 'Odessa'),
(16, 'a2@a.com', 'f4542db9ba30f7958ae42c113dd87ad21fb2eddb', 'aName', 'Odessa'),
(17, 'a3@a.com', 'f4542db9ba30f7958ae42c113dd87ad21fb2eddb', 'a3Name', 'Odessa'),
(18, 's@s.com', 'f4542db9ba30f7958ae42c113dd87ad21fb2eddb', 'sName', 'Kiev'),
(19, 'f@f.com', '386f47c570256177ea1461493414e3f346b165f8', 'fName', 'Odessa'),
(20, 'g@g.com', 'f4542db9ba30f7958ae42c113dd87ad21fb2eddb', 'gName', 'Jmerenka');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `assignment`
--
ALTER TABLE `assignment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
