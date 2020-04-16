-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3366
-- Время создания: Апр 14 2020 г., 20:11
-- Версия сервера: 10.3.13-MariaDB-log
-- Версия PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mydata`
--

-- --------------------------------------------------------

--
-- Структура таблицы `h4t98hf47r_category`
--

CREATE TABLE `h4t98hf47r_category` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `title` varchar(70) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `thumbnail` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `h4t98hf47r_category`
--

INSERT INTO `h4t98hf47r_category` (`id`, `title`, `description`, `thumbnail`) VALUES
(1, 'Новости', '', ''),
(2, 'Это интересно', '', ''),
(3, 'Финансы', '', ''),
(4, 'Тестовая', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `h4t98hf47r_posts`
--

CREATE TABLE `h4t98hf47r_posts` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(70) DEFAULT NULL,
  `longtitle` varchar(120) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `introtext` varchar(250) DEFAULT NULL,
  `content` text,
  `thumbnail` varchar(100) DEFAULT 'NULL',
  `alias` varchar(100) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `publishedon` datetime NOT NULL DEFAULT current_timestamp(),
  `publishedby` tinyint(4) NOT NULL,
  `categoryid` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `h4t98hf47r_posts`
--

INSERT INTO `h4t98hf47r_posts` (`id`, `title`, `longtitle`, `description`, `introtext`, `content`, `thumbnail`, `alias`, `published`, `publishedon`, `publishedby`, `categoryid`) VALUES
(1, 'Первый пост', 'Первый пост', 'Далеко-далеко за словесными горами в стране, гласных и согласных живут рыбные тексты.', 'Далеко-далеко за словесными горами в стране, гласных и согласных живут рыбные тексты.', 'Далеко-далеко за словесными горами в стране, гласных и согласных живут рыбные тексты. Предупреждал использовало его даже языкового, это lorem над заглавных имени одна рукописи приставка текст, последний заголовок рекламных коварных первую послушавшись!', 'assets\\img\\blog\\02.jpg', 'pervy-post', 1, '2020-04-02 19:08:13', 1, 1),
(2, 'Второй пост', 'Второй пост', 'Далеко-далеко за словесными горами в стране, гласных и согласных живут рыбные тексты.', 'Далеко-далеко за словесными горами в стране, гласных и согласных живут рыбные тексты.', 'Далеко-далеко за словесными горами в стране, гласных и согласных живут рыбные тексты. Предупреждал использовало его даже языкового, это lorem над заглавных имени одна рукописи приставка текст, последний заголовок рекламных коварных первую послушавшись!', 'assets\\img\\blog\\01.jpg', 'vtoroy-post', 1, '2020-04-02 19:08:13', 1, 1),
(3, 'Третий пост', 'Третий пост', 'Далеко-далеко за словесными горами в стране, гласных и согласных живут рыбные тексты.', 'Далеко-далеко за словесными горами в стране, гласных и согласных живут рыбные тексты.', 'Далеко-далеко за словесными горами в стране, гласных и согласных живут рыбные тексты. Предупреждал использовало его даже языкового, это lorem над заглавных имени одна рукописи приставка текст, последний заголовок рекламных коварных первую послушавшись!', 'assets\\img\\blog\\03.jpg', 'tretiy-post', 1, '2020-04-02 19:08:13', 1, 2),
(13, 'Первый пост', 'Первый пост', 'Далеко-далеко за словесными горами в стране, гласных и согласных живут рыбные тексты.', 'Далеко-далеко за словесными горами в стране, гласных и согласных живут рыбные тексты.', 'Далеко-далеко за словесными горами в стране, гласных и согласных живут рыбные тексты. Предупреждал использовало его даже языкового, это lorem над заглавных имени одна рукописи приставка текст, последний заголовок рекламных коварных первую послушавшись!', 'assets\\img\\blog\\02.jpg', 'chetverty-post', 1, '2020-04-02 19:08:13', 1, 1),
(14, 'Второй пост', 'Второй пост', 'Далеко-далеко за словесными горами в стране, гласных и согласных живут рыбные тексты.', 'Далеко-далеко за словесными горами в стране, гласных и согласных живут рыбные тексты.', 'Далеко-далеко за словесными горами в стране, гласных и согласных живут рыбные тексты. Предупреждал использовало его даже языкового, это lorem над заглавных имени одна рукописи приставка текст, последний заголовок рекламных коварных первую послушавшись!', 'assets\\img\\blog\\01.jpg', 'pyaty-post', 1, '2020-04-02 19:08:13', 1, 1),
(15, 'Третий пост', 'Третий пост', 'Далеко-далеко за словесными горами в стране, гласных и согласных живут рыбные тексты.', 'Далеко-далеко за словесными горами в стране, гласных и согласных живут рыбные тексты.', 'Далеко-далеко за словесными горами в стране, гласных и согласных живут рыбные тексты. Предупреждал использовало его даже языкового, это lorem над заглавных имени одна рукописи приставка текст, последний заголовок рекламных коварных первую послушавшись!', 'assets\\img\\blog\\03.jpg', 'shety-post', 1, '2020-04-02 19:08:13', 1, 2),
(16, 'Третий пост', 'Третий пост', 'Далеко-далеко за словесными горами в стране, гласных и согласных живут рыбные тексты.', 'Далеко-далеко за словесными горами в стране, гласных и согласных живут рыбные тексты.', 'Далеко-далеко за словесными горами в стране, гласных и согласных живут рыбные тексты. Предупреждал использовало его даже языкового, это lorem над заглавных имени одна рукописи приставка текст, последний заголовок рекламных коварных первую послушавшись!', 'assets\\img\\blog\\03.jpg', 'sedmoy-post', 1, '2020-04-02 19:08:13', 1, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `h4t98hf47r_tags`
--

CREATE TABLE `h4t98hf47r_tags` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `h4t98hf47r_tags`
--

INSERT INTO `h4t98hf47r_tags` (`id`, `title`) VALUES
(3, 'Instagram'),
(5, 'Еда'),
(2, 'Интересно'),
(1, 'Популярное'),
(4, 'Фото');

-- --------------------------------------------------------

--
-- Структура таблицы `h4t98hf47r_tag_post`
--

CREATE TABLE `h4t98hf47r_tag_post` (
  `tagid` smallint(6) NOT NULL,
  `postid` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `h4t98hf47r_tag_post`
--

INSERT INTO `h4t98hf47r_tag_post` (`tagid`, `postid`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 3),
(3, 1),
(3, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `h4t98hf47r_users`
--

CREATE TABLE `h4t98hf47r_users` (
  `id` tinyint(3) UNSIGNED NOT NULL COMMENT 'Id пользователя',
  `login` varchar(30) NOT NULL COMMENT 'Логин пользователя',
  `password` varchar(255) NOT NULL COMMENT 'Пароль пользователя',
  `name` varchar(100) DEFAULT NULL COMMENT 'Имя пользователя',
  `email` varchar(100) NOT NULL COMMENT 'Email',
  `phone` varchar(20) DEFAULT NULL COMMENT 'Телефон',
  `isAdmin` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Является ли администратором',
  `isActive` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Действующий ли пользователь'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `h4t98hf47r_users`
--

INSERT INTO `h4t98hf47r_users` (`id`, `login`, `password`, `name`, `email`, `phone`, `isAdmin`, `isActive`) VALUES
(1, 'admin', '123456', 'Администратор', 'test@tut.by', NULL, 1, 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `h4t98hf47r_category`
--
ALTER TABLE `h4t98hf47r_category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `h4t98hf47r_posts`
--
ALTER TABLE `h4t98hf47r_posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`),
  ADD KEY `publishedby` (`publishedby`),
  ADD KEY `categoryid` (`categoryid`);

--
-- Индексы таблицы `h4t98hf47r_tags`
--
ALTER TABLE `h4t98hf47r_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Индексы таблицы `h4t98hf47r_tag_post`
--
ALTER TABLE `h4t98hf47r_tag_post`
  ADD PRIMARY KEY (`tagid`,`postid`);

--
-- Индексы таблицы `h4t98hf47r_users`
--
ALTER TABLE `h4t98hf47r_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `h4t98hf47r_category`
--
ALTER TABLE `h4t98hf47r_category`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `h4t98hf47r_posts`
--
ALTER TABLE `h4t98hf47r_posts`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `h4t98hf47r_tags`
--
ALTER TABLE `h4t98hf47r_tags`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `h4t98hf47r_users`
--
ALTER TABLE `h4t98hf47r_users`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id пользователя', AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
