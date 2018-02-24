-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 24 Feb 2018 pada 03.37
-- Versi Server: 10.1.10-MariaDB
-- PHP Version: 7.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_toefl`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_koleksi`
--

CREATE TABLE `tb_koleksi` (
  `id` int(11) NOT NULL,
  `word` varchar(200) NOT NULL,
  `pos` varchar(10) NOT NULL,
  `prev_pos` varchar(10) NOT NULL,
  `next_pos` varchar(10) NOT NULL,
  `position` int(10) NOT NULL,
  `sentence` int(10) NOT NULL,
  `word_length` int(10) NOT NULL,
  `target` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_koleksi`
--

INSERT INTO `tb_koleksi` (`id`, `word`, `pos`, `prev_pos`, `next_pos`, `position`, `sentence`, `word_length`, `target`) VALUES
(1, 'rotation', 'NNP', '-', 'VBZ', 1, 15, 1, 0),
(2, 'refers', 'VBZ', 'NNP', 'TO', 2, 15, 1, 0),
(3, 'to', 'TO', 'VBZ', 'DT', 3, 15, 2, 0),
(4, 'the', 'DT', 'TO', 'NN', 4, 15, 4, 0),
(5, 'turning', 'NN', 'DT', 'IN', 5, 15, 1, 0),
(6, 'of', 'IN', 'NN', 'DT', 6, 15, 1, 0),
(7, 'the', 'DT', 'IN', 'NN', 7, 15, 4, 0),
(8, 'earth', 'NN', 'DT', 'CC', 8, 15, 1, 0),
(9, 'and revolution', 'CC NN', 'NN', 'TO', 9, 15, 1, 1),
(10, 'to', 'TO', 'CC NN', 'DT', 10, 15, 2, 0),
(11, 'the', 'DT', 'TO', 'NN', 11, 15, 4, 0),
(12, 'movement', 'NN', 'DT', 'IN', 12, 15, 1, 0),
(13, 'around', 'IN', 'NN', 'DT', 13, 15, 1, 0),
(14, 'the', 'DT', 'IN', 'NN', 14, 15, 4, 0),
(15, 'sun', 'NN', 'DT', '-', 15, 15, 1, 0),
(16, 'Portland', 'NNP', '-', 'NNP', 1, 11, 1, 0),
(17, 'Maine', 'NNP', 'NNP', 'NNP', 2, 11, 1, 0),
(18, 'is', 'VBZ', 'NNP', 'WRB', 3, 11, 1, 0),
(19, 'where', 'WRB', 'VBZ', 'NNP', 4, 11, 1, 1),
(20, 'Henry', 'NNP', 'WRB', 'NNP', 5, 11, 1, 0),
(21, 'Wadsworth', 'NNP', 'NNP', 'NNP', 6, 11, 1, 0),
(22, 'Longfellow', 'NNP', 'NNP', 'VBD', 7, 11, 1, 0),
(23, 'spent', 'VBD', 'NNP', 'PRP$', 8, 11, 1, 0),
(24, 'his', 'PRP$', 'VBD', 'JJ', 9, 11, 1, 0),
(25, 'early', 'JJ', 'PRP$', 'NNS', 10, 11, 1, 0),
(26, 'years', 'NNS', 'JJ', '-', 11, 11, 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_koleksi`
--
ALTER TABLE `tb_koleksi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_koleksi`
--
ALTER TABLE `tb_koleksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
