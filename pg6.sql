-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Φιλοξενητής: 127.0.0.1
-- Χρόνος δημιουργίας: 29 Νοε 2017 στις 18:48:42
-- Έκδοση διακομιστή: 5.6.21
-- Έκδοση PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Βάση δεδομένων: `pg6`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `pic` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Άδειασμα δεδομένων του πίνακα `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `firstname`, `lastname`, `email`, `address`, `city`, `country`, `phone`, `pic`) VALUES
(1, 'user01', 'pass01', 'John', 'Papas', 'user1@gmail.com', 'user address 1', 'Athens', 'GR', '5454236367346', 'pics/user1.jpg'),
(2, 'user02', 'pass02', 'Joana', 'Statham', 'user2@gmail.com', 'user address 2', 'Athens', 'GR', '54657345824', 'pics/user2.jpg'),
(3, 'user3', 'pass3', 'Babis', 'Flou', 'user3@gmail.com', 'user address 3', 'Paris', 'FR', '35657235235', 'pics/user3.jpg'),
(4, 'user4', 'pass4', 'Mic', 'Jagger', 'user4@gmail.com', 'user address 4', 'Torino', 'IT', '35657235235', 'pics/user4.jpg'),
(5, 'user5', 'pass5', 'Sophi', 'Lauren', 'user5@gmail.com', 'user address 5', 'Paris', 'FR', '35657235235', 'pics/user5.jpg'),
(6, 'user6', 'pass6', 'Terens', 'Hill', 'user6@gmail.com', 'user address 6', 'Milano', 'IT', '35657235235', 'pics/user6.jpg'),
(7, 'user7', 'pass7', 'Bad', 'Spenser', 'user7@gmail.com', 'user address 7', 'Barcelona', 'ES', '35657235235', 'pics/user7.jpg'),
(8, 'user8', 'pass8', 'Soula', 'Boula', 'user8@gmail.com', 'user address 8', 'Athens', 'GR', '35657235235', 'pics/user8.jpg'),
(9, 'user9', 'pass9', 'Sakis', 'Rouvas', 'user9@gmail.com', 'user address 9', 'Milano', 'IT', '35657235235', 'pics/user9.jpg');

--
-- Ευρετήρια για άχρηστους πίνακες
--

--
-- Ευρετήρια για πίνακα `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT για άχρηστους πίνακες
--

--
-- AUTO_INCREMENT για πίνακα `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
