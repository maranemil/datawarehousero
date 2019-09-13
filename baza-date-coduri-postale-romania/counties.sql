-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2018 at 11:28 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lister`
--

-- --------------------------------------------------------

--
-- Table structure for table `counties`
--

CREATE TABLE `counties` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_country` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `counties`
--

INSERT INTO `counties` (`id`, `id_country`, `name`) VALUES
(1, 1, 'Arad'),
(2, 1, 'Arges'),
(3, 1, 'Bacau'),
(4, 1, 'Bihor'),
(5, 1, 'Bistrita-Nasaud'),
(6, 1, 'Botosani'),
(7, 1, 'Braila'),
(8, 1, 'Brasov'),
(9, 1, 'Bucuresti'),
(15, 1, 'Buzau'),
(16, 1, 'Calarasi'),
(17, 1, 'Caras-Severin'),
(18, 1, 'Cluj'),
(19, 1, 'Constanta'),
(20, 1, 'Covasna'),
(21, 1, 'Dambovita'),
(22, 1, 'Dolj'),
(23, 1, 'Galati'),
(24, 1, 'Giurgiu'),
(25, 1, 'Gorj'),
(26, 1, 'Harghita'),
(27, 1, 'Hunedoara'),
(28, 1, 'Ialomita'),
(29, 1, 'Iasi'),
(30, 1, 'Ilfov'),
(31, 1, 'Maramures'),
(32, 1, 'Mehedinti'),
(33, 1, 'Mures'),
(34, 1, 'Neamt'),
(35, 1, 'Olt'),
(36, 1, 'Prahova'),
(37, 1, 'Salaj'),
(38, 1, 'Satu-Mare'),
(39, 1, 'Sibiu'),
(40, 1, 'Suceava'),
(41, 1, 'Teleorman'),
(42, 1, 'Timis'),
(43, 1, 'Tulcea'),
(44, 1, 'Valcea'),
(45, 1, 'Vaslui'),
(46, 1, 'Vrancea'),
(47, 1, 'Alba');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `counties`
--
ALTER TABLE `counties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `counties_id_country_foreign` (`id_country`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `counties`
--
ALTER TABLE `counties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `counties`
--
ALTER TABLE `counties`
  ADD CONSTRAINT `counties_id_country_foreign` FOREIGN KEY (`id_country`) REFERENCES `countries` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
