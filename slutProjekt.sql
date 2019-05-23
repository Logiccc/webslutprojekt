-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Värd: localhost:3306
-- Tid vid skapande: 23 maj 2019 kl 19:13
-- Serverversion: 5.7.25-0ubuntu0.18.04.2
-- PHP-version: 7.2.15-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databas: `slutProjekt`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumpning av Data i tabell `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(3, '2019_05_22_072829_vapen', 1),
(4, '2019_05_23_065902_skins', 1);

-- --------------------------------------------------------

--
-- Tabellstruktur `skins`
--

CREATE TABLE `skins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vapenid` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rareity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumpning av Data i tabell `skins`
--

INSERT INTO `skins` (`id`, `vapenid`, `name`, `rareity`) VALUES
(1, 1, 'Fire Serpent', 'Covert'),
(2, 1, 'Vulcan', 'Covert'),
(3, 1, 'Asiimov', 'Covert'),
(4, 1, 'Aquamarine', 'Covert'),
(5, 1, 'Fuel Injector', 'Covert'),
(6, 2, 'Asiimov', 'Covert'),
(7, 2, 'Dragon Lore', 'Covert'),
(8, 2, 'Medusa', 'Covert'),
(9, 2, 'Hyper Beast', 'Covert'),
(10, 2, 'Lightning Strike', 'Covert');

-- --------------------------------------------------------

--
-- Tabellstruktur `vapen`
--

CREATE TABLE `vapen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vapensort` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumpning av Data i tabell `vapen`
--

INSERT INTO `vapen` (`id`, `name`, `vapensort`) VALUES
(1, 'AK-47', 'Rifle'),
(2, 'AWP', 'Rifle'),
(3, 'M4A1-S', 'Rifle'),
(4, 'M4A4', 'Rifle'),
(5, 'Glock-18', 'Pistol'),
(6, 'USP-S', 'Pistol'),
(7, 'Desert Eagle', 'Pistol'),
(8, 'AUG', 'Rifle'),
(9, 'SSG-08', 'Rifle'),
(10, 'SG-553', 'Rifle'),
(11, 'UMP-45', 'SMG'),
(12, 'MP7', 'SMG');

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index för tabell `skins`
--
ALTER TABLE `skins`
  ADD PRIMARY KEY (`id`);

--
-- Index för tabell `vapen`
--
ALTER TABLE `vapen`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT för dumpade tabeller
--

--
-- AUTO_INCREMENT för tabell `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT för tabell `skins`
--
ALTER TABLE `skins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT för tabell `vapen`
--
ALTER TABLE `vapen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
