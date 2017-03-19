-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2017 at 08:49 PM
-- Server version: 5.5.54-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `students`
--

-- --------------------------------------------------------

--
-- Table structure for table `labs`
--

CREATE TABLE IF NOT EXISTS `labs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `description` varchar(128) NOT NULL,
  `link` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `student` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `student`) VALUES
(1, '12345', '12345'),
(2, '12345', '123');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `stud_group` varchar(128) NOT NULL,
  `github` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `stud_group`, `github`) VALUES
(1, 'Борисов Алексей Андреевич', 'ИВТ-11МО', 'https://github.com/anoriar/web'),
(2, 'Бритнев Андрей Александрович', 'ИВТ-11МО', 'https://github.com/britnevichok/webrepo'),
(3, 'Демидов Алексей Алексеевич', 'ИВТ-11МО', 'https://github.com/Dremron/Alex_Demidov'),
(4, 'Карпеш Сергей Валерьевич', 'ИВТ-11МО', 'https://github.com/walhi/webdev'),
(5, 'Коваленко Даниил Валерьевич', 'ИВТ-11МО', 'https://github.com/kovalenkodaniil/web'),
(6, 'Криночкин Иван', 'ИВТ-11МО', 'https://github.com/flaik/project'),
(7, 'Кулькова Марина', 'ИВТ-11МО', 'https://github.com/mkulkova/project'),
(8, 'Лученкова Татьяна Ван', 'ИВТ-11МО', 'https://github.com/tatyanaluch/webcourse'),
(9, 'Мартынов Андрей Олегович', 'ИВТ-11МО', 'https://github.com/lokaur/FogSoft.Web.Course'),
(10, 'Миронычев Александр Андреевич', 'ИВТ-11МО', 'https://github.com/acelost/webcourse'),
(11, 'Петров Алексей Анатольевич', 'ИВТ-11МО', 'https://github.com/Reyk0n/Alex-Petrov'),
(12, 'Абдурахмонова Алина', 'ИТ-11MO', 'https://github.com/Alinanyshka/Web_dew'),
(13, 'Большаков Артем', 'ИТ-11МО', 'https://github.com/Torin14/abolshakov'),
(14, 'Беляев Алексей', 'ИТ-31БО', 'https://github.com/DisLexSu/WeBCourse'),
(15, 'Виноградов Тимофей', 'ИТ-31БО', 'https://github.com/kelr0nd/kelr0nd_project'),
(16, 'Груздев Егор', 'ИТ-31БО', 'https://github.com/CrazY777SpeeD/Egor-Gruzdev'),
(17, 'Воробьёв Алексей Игоревич', 'ИТ-31БО', 'https://github.com/fktsst/example'),
(18, 'Илюхин Кирилл Сергеевич', 'ИТ-31БО', 'https://github.com/ken4egg/web'),
(19, 'Кондаков Роман Николаевич', 'ИТ-31БО', 'https://github.com/loremon/kondakov'),
(20, 'Мартьянов Вадим Дмитриевич', 'ИТ-31БО', 'https://github.com/VadimDmitrievich/studywell'),
(21, 'Шаронов Никита Сергеевич', 'ИТ-31БО', 'https://github.com/NikiZ97/Web'),
(22, 'Захарьяш Виталий Леонидович', 'МКН-11МО', 'https://github.com/Vitalyator/Course-web-programming-Zakharyash'),
(23, 'Заплатин Егор', 'ПИ-11МО', 'https://github.com/kron4545/big_deal'),
(24, 'Смирнов Дмитрий Владиславович', 'ПИ-11МО', 'https://github.com/dimkasmirnoff/dimkasmirnoff'),
(25, 'Филонов Дмитрий', 'ПИ-11МО', 'https://github.com/FilonovDmitry/WebDevelopmentProjects'),
(26, 'Хорев Никита Олегович', 'ПИ-11МО', 'https://github.com/kho-nikita/web-prog'),
(27, 'Сенаторов Алексей', 'МКН-11МО', 'https://github.com/alex-senik/web'),
(28, 'Ковалева Алла Николаевна', 'ПИЭ-31БО', 'https://github.com/amllr/studing'),
(29, 'Кротов Егор Андреевич', 'ПИЭ-31БО', 'https://github.com/Ankerok4/web'),
(30, 'Левашов Михаил Викторович', 'ПИЭ-31БО', 'https://github.com/LevashovMikhail/lmv_ie31_2017'),
(31, 'Мосейкова Марина', 'ПИЭ-31БО', 'https://github.com/MoseykovaMarina/MaryOrv'),
(32, 'Тимофеев Никита Андреевич', 'ПМИ-11МО', 'https://github.com/TimofeevNikita/web'),
(33, 'Салкалин Илья', '', 'https://github.com/Salkalin/Edustudplace'),
(34, 'Никитин Евгений', '', 'https://github.com/Phant76/university-web'),
(35, 'Дьяченко Владислав Андреевич', '', 'https://github.com/VolandDDB/Web'),
(36, '', '', 'https://github.com/nxtSwitch/Web');

-- --------------------------------------------------------

--
-- Table structure for table `students_labs`
--

CREATE TABLE IF NOT EXISTS `students_labs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `lab_id` int(11) NOT NULL,
  `mark` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `student_id` (`student_id`),
  KEY `lab_id` (`lab_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `students_tasks`
--

CREATE TABLE IF NOT EXISTS `students_tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `passed` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `student_id` (`student_id`),
  KEY `task_id` (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE IF NOT EXISTS `tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` int(11) NOT NULL,
  `description` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `students_labs`
--
ALTER TABLE `students_labs`
  ADD CONSTRAINT `students_labs_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `students_labs_ibfk_2` FOREIGN KEY (`lab_id`) REFERENCES `labs` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
