-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2023 at 12:50 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `knjizara`
--

-- --------------------------------------------------------

--
-- Table structure for table `knjiga`
--

CREATE TABLE `knjiga` (
  `knjigaId` int(11) NOT NULL,
  `imeKnjige` varchar(255) NOT NULL,
  `kolicina` int(255) NOT NULL,
  `cena` decimal(10,2) NOT NULL,
  `zanrId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `knjiga`
--

INSERT INTO `knjiga` (`knjigaId`, `imeKnjige`, `kolicina`, `cena`, `zanrId`) VALUES
(1, 'Sva siročad Bruklina', 3, '1199.00', 3),
(2, 'Princeza i obožavateljka', 2, '859.00', 6),
(3, 'Leto kad sam naučila da letim', 5, '999.00', 6),
(4, 'Dikensov London', 3, '1320.00', 2),
(5, 'Ojačaj samopouzdanje', 6, '1099.00', 1),
(6, 'Šake pune oblaka i druge drame', 7, '1300.00', 5),
(7, 'Zapisi iz mrtvog doma', 4, '999.00', 5),
(8, 'Marija Antoaneta: Životni put ', 4, '1899.00', 4),
(9, 'Metak koji je promašio', 5, '1099.00', 3),
(10, 'Mikelanđelova laž', 4, '1299.00', 3),
(11, 'Slučajnosti ne postoje', 9, '999.00', 1),
(12, 'Gradinar', 4, '799.00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `korisnikid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`korisnikid`, `username`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'marija13', 'marija13');

-- --------------------------------------------------------

--
-- Table structure for table `zanr`
--

CREATE TABLE `zanr` (
  `zanrId` int(11) NOT NULL,
  `nazivZanra` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `zanr`
--

INSERT INTO `zanr` (`zanrId`, `nazivZanra`) VALUES
(1, 'Popularna psihologija'),
(2, 'Klasici'),
(3, 'Trileri i misterije'),
(4, 'Biografije'),
(5, 'Opsta knjizevnost'),
(6, 'Tinejdz romani'),
(7, 'Domaci romani');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `knjiga`
--
ALTER TABLE `knjiga`
  ADD PRIMARY KEY (`knjigaId`),
  ADD KEY `zanrId` (`zanrId`);

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`korisnikid`);

--
-- Indexes for table `zanr`
--
ALTER TABLE `zanr`
  ADD PRIMARY KEY (`zanrId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `knjiga`
--
ALTER TABLE `knjiga`
  MODIFY `knjigaId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `korisnikid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `zanr`
--
ALTER TABLE `zanr`
  MODIFY `zanrId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `knjiga`
--
ALTER TABLE `knjiga`
  ADD CONSTRAINT `knjige_fk_1` FOREIGN KEY (`zanrId`) REFERENCES `zanr` (`zanrId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
