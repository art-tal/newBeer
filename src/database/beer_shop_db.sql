-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 04 2021 г., 01:53
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `beer_shop_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `access`
--

CREATE TABLE `access` (
  `access_id` int(11) UNSIGNED NOT NULL,
  `name_access` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `beers`
--

CREATE TABLE `beers` (
  `beer_id` int(11) UNSIGNED NOT NULL,
  `sortName` varchar(255) NOT NULL,
  `origin` varchar(255) NOT NULL COMMENT 'place of production',
  `alcohol` varchar(5) NOT NULL COMMENT 'the alcohol content of the drink',
  `description` text NOT NULL,
  `photo` text NOT NULL,
  `price` longtext NOT NULL,
  `value_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The table of sorts of beers';

-- --------------------------------------------------------

--
-- Структура таблицы `beer_volume`
--

CREATE TABLE `beer_volume` (
  `beer_id` int(11) UNSIGNED NOT NULL,
  `volume_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `clients`
--

CREATE TABLE `clients` (
  `client_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `address` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `client_email`
--

CREATE TABLE `client_email` (
  `client_id` int(11) UNSIGNED NOT NULL,
  `email_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `client_phone`
--

CREATE TABLE `client_phone` (
  `client_id` int(11) UNSIGNED NOT NULL,
  `phone_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `distributors`
--

CREATE TABLE `distributors` (
  `distributor_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `phone_id` int(11) UNSIGNED NOT NULL,
  `email_id` int(11) UNSIGNED NOT NULL,
  `doc` longtext NOT NULL,
  `invoice` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `distributor_email`
--

CREATE TABLE `distributor_email` (
  `distributor_id` int(11) UNSIGNED NOT NULL,
  `email_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `distributor_phone`
--

CREATE TABLE `distributor_phone` (
  `distributor_id` int(11) UNSIGNED NOT NULL,
  `phone_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `emails`
--

CREATE TABLE `emails` (
  `email_id` int(11) UNSIGNED NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `employees`
--

CREATE TABLE `employees` (
  `id_employee` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(32) NOT NULL,
  `position_id` int(255) UNSIGNED NOT NULL,
  `access_id` int(11) NOT NULL COMMENT 'resources available to the employee',
  `address` text NOT NULL,
  `phone` varchar(13) NOT NULL,
  `status` varchar(255) NOT NULL,
  `note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Employees of the shop';

-- --------------------------------------------------------

--
-- Структура таблицы `employee_access`
--

CREATE TABLE `employee_access` (
  `employee_id` int(11) UNSIGNED NOT NULL,
  `access_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `employee_email`
--

CREATE TABLE `employee_email` (
  `employee_id` int(11) UNSIGNED NOT NULL,
  `email_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `employee_order`
--

CREATE TABLE `employee_order` (
  `employee_id` int(11) UNSIGNED NOT NULL,
  `order_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `employee_phone`
--

CREATE TABLE `employee_phone` (
  `employee_id` int(11) UNSIGNED NOT NULL,
  `phone_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `employee_position`
--

CREATE TABLE `employee_position` (
  `employee_id` int(11) UNSIGNED NOT NULL,
  `position_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `employee_supply`
--

CREATE TABLE `employee_supply` (
  `employee_id` int(11) UNSIGNED NOT NULL,
  `supply_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) UNSIGNED NOT NULL,
  `beer_id` int(11) NOT NULL COMMENT 'products in order',
  `sale` tinyint(1) NOT NULL COMMENT 'Completed order flag',
  `sum` int(11) NOT NULL COMMENT 'The total cost of the order',
  `date` date NOT NULL,
  `worker_id` int(11) NOT NULL COMMENT 'Employee wrapping the order',
  `client_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `order_beer`
--

CREATE TABLE `order_beer` (
  `order_id` int(11) UNSIGNED NOT NULL,
  `beer_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `phones`
--

CREATE TABLE `phones` (
  `phone_id` int(11) UNSIGNED NOT NULL,
  `phone` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `positions`
--

CREATE TABLE `positions` (
  `position_id` int(11) UNSIGNED NOT NULL,
  `position_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `supplies`
--

CREATE TABLE `supplies` (
  `supply_id` int(11) UNSIGNED NOT NULL,
  `beer_id` int(10) UNSIGNED NOT NULL,
  `sale` tinyint(1) NOT NULL,
  `date` date NOT NULL,
  `employee_id` int(11) NOT NULL,
  `sum` int(11) NOT NULL,
  `distributor_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `supply_beer`
--

CREATE TABLE `supply_beer` (
  `beer_id` int(11) UNSIGNED NOT NULL,
  `supply_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `volumes`
--

CREATE TABLE `volumes` (
  `id_volume` int(11) UNSIGNED NOT NULL,
  `volume` varchar(10) NOT NULL,
  `cost` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `access`
--
ALTER TABLE `access`
  ADD PRIMARY KEY (`access_id`);

--
-- Индексы таблицы `beers`
--
ALTER TABLE `beers`
  ADD PRIMARY KEY (`beer_id`),
  ADD KEY `value_id` (`value_id`);

--
-- Индексы таблицы `beer_volume`
--
ALTER TABLE `beer_volume`
  ADD KEY `beer_id` (`beer_id`),
  ADD KEY `volume_id` (`volume_id`);

--
-- Индексы таблицы `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Индексы таблицы `client_email`
--
ALTER TABLE `client_email`
  ADD KEY `client_id` (`client_id`,`email_id`),
  ADD KEY `email_id` (`email_id`);

--
-- Индексы таблицы `client_phone`
--
ALTER TABLE `client_phone`
  ADD KEY `client_id` (`client_id`,`phone_id`),
  ADD KEY `phone_id` (`phone_id`);

--
-- Индексы таблицы `distributors`
--
ALTER TABLE `distributors`
  ADD PRIMARY KEY (`distributor_id`),
  ADD KEY `email_id` (`email_id`),
  ADD KEY `phone_id` (`phone_id`);

--
-- Индексы таблицы `distributor_email`
--
ALTER TABLE `distributor_email`
  ADD KEY `distributor_id` (`distributor_id`,`email_id`),
  ADD KEY `email_id` (`email_id`);

--
-- Индексы таблицы `distributor_phone`
--
ALTER TABLE `distributor_phone`
  ADD KEY `distributor_id` (`distributor_id`,`phone_id`),
  ADD KEY `phone_id` (`phone_id`);

--
-- Индексы таблицы `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`email_id`);

--
-- Индексы таблицы `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id_employee`),
  ADD KEY `access` (`access_id`),
  ADD KEY `position_id` (`position_id`);

--
-- Индексы таблицы `employee_access`
--
ALTER TABLE `employee_access`
  ADD KEY `access_id` (`access_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Индексы таблицы `employee_email`
--
ALTER TABLE `employee_email`
  ADD KEY `employee_id` (`employee_id`,`email_id`),
  ADD KEY `email_id` (`email_id`);

--
-- Индексы таблицы `employee_order`
--
ALTER TABLE `employee_order`
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `employee_phone`
--
ALTER TABLE `employee_phone`
  ADD KEY `employee_id` (`employee_id`,`phone_id`),
  ADD KEY `phone_id` (`phone_id`);

--
-- Индексы таблицы `employee_position`
--
ALTER TABLE `employee_position`
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `position_id` (`position_id`);

--
-- Индексы таблицы `employee_supply`
--
ALTER TABLE `employee_supply`
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `supply_id` (`supply_id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `positions` (`beer_id`),
  ADD KEY `worker` (`worker_id`),
  ADD KEY `client_id` (`client_id`);

--
-- Индексы таблицы `order_beer`
--
ALTER TABLE `order_beer`
  ADD KEY `order_id` (`order_id`),
  ADD KEY `beer_id` (`beer_id`);

--
-- Индексы таблицы `phones`
--
ALTER TABLE `phones`
  ADD PRIMARY KEY (`phone_id`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Индексы таблицы `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`position_id`);

--
-- Индексы таблицы `supplies`
--
ALTER TABLE `supplies`
  ADD PRIMARY KEY (`supply_id`),
  ADD KEY `position` (`beer_id`),
  ADD KEY `worker` (`employee_id`),
  ADD KEY `provid` (`distributor_id`);

--
-- Индексы таблицы `supply_beer`
--
ALTER TABLE `supply_beer`
  ADD KEY `beer_id` (`beer_id`),
  ADD KEY `supply_id` (`supply_id`);

--
-- Индексы таблицы `volumes`
--
ALTER TABLE `volumes`
  ADD PRIMARY KEY (`id_volume`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `access`
--
ALTER TABLE `access`
  MODIFY `access_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `beers`
--
ALTER TABLE `beers`
  MODIFY `beer_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `clients`
--
ALTER TABLE `clients`
  MODIFY `client_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `distributors`
--
ALTER TABLE `distributors`
  MODIFY `distributor_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `emails`
--
ALTER TABLE `emails`
  MODIFY `email_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `employees`
--
ALTER TABLE `employees`
  MODIFY `id_employee` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `phones`
--
ALTER TABLE `phones`
  MODIFY `phone_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `positions`
--
ALTER TABLE `positions`
  MODIFY `position_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `supplies`
--
ALTER TABLE `supplies`
  MODIFY `supply_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `volumes`
--
ALTER TABLE `volumes`
  MODIFY `id_volume` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `beers`
--
ALTER TABLE `beers`
  ADD CONSTRAINT `beers_ibfk_1` FOREIGN KEY (`beer_id`) REFERENCES `beer_volume` (`beer_id`);

--
-- Ограничения внешнего ключа таблицы `beer_volume`
--
ALTER TABLE `beer_volume`
  ADD CONSTRAINT `beer_volume_ibfk_1` FOREIGN KEY (`volume_id`) REFERENCES `volumes` (`id_volume`);

--
-- Ограничения внешнего ключа таблицы `client_email`
--
ALTER TABLE `client_email`
  ADD CONSTRAINT `client_email_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`client_id`),
  ADD CONSTRAINT `client_email_ibfk_2` FOREIGN KEY (`email_id`) REFERENCES `emails` (`email_id`);

--
-- Ограничения внешнего ключа таблицы `client_phone`
--
ALTER TABLE `client_phone`
  ADD CONSTRAINT `client_phone_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`client_id`),
  ADD CONSTRAINT `client_phone_ibfk_2` FOREIGN KEY (`phone_id`) REFERENCES `phones` (`phone_id`);

--
-- Ограничения внешнего ключа таблицы `distributors`
--
ALTER TABLE `distributors`
  ADD CONSTRAINT `distributors_ibfk_1` FOREIGN KEY (`email_id`) REFERENCES `emails` (`email_id`),
  ADD CONSTRAINT `distributors_ibfk_2` FOREIGN KEY (`phone_id`) REFERENCES `phones` (`phone_id`);

--
-- Ограничения внешнего ключа таблицы `distributor_email`
--
ALTER TABLE `distributor_email`
  ADD CONSTRAINT `distributor_email_ibfk_1` FOREIGN KEY (`distributor_id`) REFERENCES `distributors` (`distributor_id`),
  ADD CONSTRAINT `distributor_email_ibfk_2` FOREIGN KEY (`email_id`) REFERENCES `emails` (`email_id`);

--
-- Ограничения внешнего ключа таблицы `distributor_phone`
--
ALTER TABLE `distributor_phone`
  ADD CONSTRAINT `distributor_phone_ibfk_1` FOREIGN KEY (`distributor_id`) REFERENCES `distributors` (`distributor_id`),
  ADD CONSTRAINT `distributor_phone_ibfk_2` FOREIGN KEY (`phone_id`) REFERENCES `phones` (`phone_id`);

--
-- Ограничения внешнего ключа таблицы `employee_access`
--
ALTER TABLE `employee_access`
  ADD CONSTRAINT `employee_access_ibfk_1` FOREIGN KEY (`access_id`) REFERENCES `access` (`access_id`),
  ADD CONSTRAINT `employee_access_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id_employee`);

--
-- Ограничения внешнего ключа таблицы `employee_email`
--
ALTER TABLE `employee_email`
  ADD CONSTRAINT `employee_email_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id_employee`),
  ADD CONSTRAINT `employee_email_ibfk_2` FOREIGN KEY (`email_id`) REFERENCES `emails` (`email_id`);

--
-- Ограничения внешнего ключа таблицы `employee_order`
--
ALTER TABLE `employee_order`
  ADD CONSTRAINT `employee_order_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id_employee`),
  ADD CONSTRAINT `employee_order_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

--
-- Ограничения внешнего ключа таблицы `employee_phone`
--
ALTER TABLE `employee_phone`
  ADD CONSTRAINT `employee_phone_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id_employee`),
  ADD CONSTRAINT `employee_phone_ibfk_2` FOREIGN KEY (`phone_id`) REFERENCES `phones` (`phone_id`);

--
-- Ограничения внешнего ключа таблицы `employee_position`
--
ALTER TABLE `employee_position`
  ADD CONSTRAINT `employee_position_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id_employee`),
  ADD CONSTRAINT `employee_position_ibfk_2` FOREIGN KEY (`position_id`) REFERENCES `positions` (`position_id`);

--
-- Ограничения внешнего ключа таблицы `employee_supply`
--
ALTER TABLE `employee_supply`
  ADD CONSTRAINT `employee_supply_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id_employee`),
  ADD CONSTRAINT `employee_supply_ibfk_2` FOREIGN KEY (`supply_id`) REFERENCES `supplies` (`supply_id`);

--
-- Ограничения внешнего ключа таблицы `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`client_id`) REFERENCES `clients` (`client_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `order_beer`
--
ALTER TABLE `order_beer`
  ADD CONSTRAINT `order_beer_ibfk_1` FOREIGN KEY (`beer_id`) REFERENCES `beers` (`beer_id`),
  ADD CONSTRAINT `order_beer_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

--
-- Ограничения внешнего ключа таблицы `supplies`
--
ALTER TABLE `supplies`
  ADD CONSTRAINT `supplies_ibfk_3` FOREIGN KEY (`distributor_id`) REFERENCES `distributors` (`distributor_id`);

--
-- Ограничения внешнего ключа таблицы `supply_beer`
--
ALTER TABLE `supply_beer`
  ADD CONSTRAINT `supply_beer_ibfk_1` FOREIGN KEY (`beer_id`) REFERENCES `beers` (`beer_id`),
  ADD CONSTRAINT `supply_beer_ibfk_2` FOREIGN KEY (`supply_id`) REFERENCES `supplies` (`supply_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
