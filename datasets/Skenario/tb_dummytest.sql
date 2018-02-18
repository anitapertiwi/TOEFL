-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 13 Jan 2018 pada 03.52
-- Versi Server: 10.1.9-MariaDB
-- PHP Version: 7.0.1

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
-- Struktur dari tabel `tb_candidate`
--

CREATE TABLE `tb_candidate` (
  `id` int(11) NOT NULL,
  `idd` int(11) NOT NULL,
  `text` varchar(255) NOT NULL,
  `postext` varchar(255) DEFAULT NULL,
  `distance` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tb_candidate`
--

INSERT INTO `tb_candidate` (`id`, `idd`, `text`, `postext`, `distance`) VALUES
(2, 11, 'I enjoyed studying geography at school and now I have enrolled at the Economics Faculty', 'PRP VBD VBG NN IN NN CC RB PRP VBP VBN IN DT NNP NNP', '0-211'),
(3, 11, 'The teachers are expecting to call a meeting tomorrow in order to review the disciplinary problems', 'DT NNS VBP VBG TO VB DT NN NN IN NN TO VB DT JJ NNS', '0-44'),
(4, 11, 'I want some meet your sister when she comes to see you she sounds very nice', 'PRP VBP DT VBP PRP$ NN WRB PRP VBZ TO VB PRP PRP VBZ RB JJ', '0-213'),
(5, 11, 'My friends tell me the English exam is quite difficult but I am not worried', 'PRP$ NNS VBP PRP DT NNP NN VBZ RB JJ CC PRP VBP RB VBN', '0-214'),
(6, 11, 'The tickets, which are extremely good value, can be bought from large supermarkets', 'DT NNS WDT VBP RB JJ NN MD VB VBN IN JJ NNS', '0-215'),
(7, 11, 'The number of people who asked for the discount was low but grew during the summer period', 'DT NN IN NNS WP VBD IN DT NN VBD JJ CC VBD IN DT NN NN', '0-216'),
(8, 11, 'He wanted always to be a doctor and after doing medicine he now works in a hospital', 'PRP VBD RB TO VB DT NN CC IN VBG NN PRP RB VBZ IN DT NN', '0-217'),
(9, 11, 'The informations they gave us was not very helpful so I consulted the website instead', 'DT NNS PRP VBD PRP VBD RB RB JJ IN PRP VBD DT NN RB', '0-218'),
(10, 11, 'There isn’t much time, do you think we should get a taxi to the exhibition centre?', 'EX VBZ RB JJ NN VBP PRP VB PRP MD VB DT NN TO DT NN NN', '1-219'),
(11, 11, 'He graduated in languages in June and is now thinking of doing a second degree in psychology', 'PRP VBD IN NNS IN NNP CC VBZ RB VBG IN VBG DT JJ NN IN NN', '0-220'),
(12, 11, 'The policeman showed us an identikit picture of the man who stole the car', 'DT NN VBD PRP DT JJ NN IN DT NN WP VBD DT NN', '0-221'),
(13, 11, 'How long does it take to get at the station on foot from your house', 'WRB RB VBZ PRP VB TO VB IN DT NN IN NN IN PRP$ NN', '0-222'),
(14, 11, 'I was so angry that I took the broken watch to the jewellers to get my money back', 'PRP VBD RB JJ IN PRP VBD DT JJ NN TO DT NNS TO VB PRP$ NN RB', '0-223'),
(15, 11, 'He rang me this morning to tell me that he had passed his driving test', 'PRP VBD PRP DT NN TO VB PRP IN PRP VBD VBN PRP$ VBG NN', '0-224'),
(16, 11, 'I will not be able to go on holiday this year unless I will get a part-time job', 'PRP MD RB VB JJ TO VB IN NN DT NN IN PRP MD VB DT JJ NN', '0-225'),
(17, 11, 'It was such a nice day that they decided to have a picnic in the field', 'PRP VBD JJ DT JJ NN IN PRP VBD TO VB DT NN IN DT NN', '0-226'),
(18, 11, 'I have not never seen anybody who rides a horse so well before', 'PRP VBP RB RB VBN NN WP NNS DT NN RB RB IN', '0-227'),
(19, 11, 'My boyfriend always takes me to see horror films, but I do not like them', 'PRP$ NN RB VBZ PRP TO VB NN NNS CC PRP VBP RB VB PRP', '0-228'),
(20, 11, 'We went to Guatemala last year as we were tired of the usual beach holiday', 'PRP VBD TO NNP JJ NN IN PRP VBD VBN IN DT JJ NN NN', '0-229'),
(21, 11, 'After quartz, calcite is the most abundant mineral in the crust of the Earth', 'IN NN NN VBZ DT RBS JJ NN IN DT NN IN DT NNP', '0-171'),
(22, 11, 'Regarded as the world’s foremost linguistic theorist, Noam Chomsky continues to create new theories about language and language learning', 'VBN IN DT NN POS JJ JJ NN NNP NNP VBZ TO VB JJ NNS IN NN CC NN NN', '1-172'),
(23, 11, 'Whenever any area receives more water than the ground can absorb, the excess water flows to the lowest level, carrying loose mineral', 'NNP DT NN VBZ RBR NN IN DT NN MD VB DT JJ NN VBZ TO DT JJS NN VBG JJ NN', '0-173'),
(24, 11, 'In 1935 seismologist Charles F Richter devised a numerical scale for rating the strength of earthquakes', 'IN CD NN NNP NN NNP VBD DT JJ NN IN NN DT NN IN NNS', '0-174'),
(25, 11, 'After the Second World War the woman wage earner became a standard part of middle-class life in the United States', 'IN DT JJ NNP NNP DT NN NN JJ VBD DT JJ NN IN JJ NN IN DT NNP NNPS', '1-175'),
(26, 11, 'Celluloid and plastics have largely replaced genuine ivory in the manufacture of such things as buttons, billiard balls, and piano keys', 'NNP CC NNS VBP RB VBN JJ NN IN DT NN IN JJ NNS IN NNS JJ NNS CC NN NNS', '0-176'),
(27, 11, 'One of the tenets of New Criticism is that a critic need not tell readers what to think about a story', 'CD IN DT NNS IN NNP NNP VBZ IN DT NN MD RB VB NNS WDT TO VB IN DT NN', '0-177'),
(28, 11, 'The outer ear, which includes the fleshy pinna and the auditory canal, picks up and funnels sound waves toward the eardrum', 'DT JJ NN WDT VBZ DT JJ NN CC DT JJ NN VBZ RB CC VBZ JJ NNS IN DT NN', '0-178'),
(29, 11, 'The chair may be the oldest type of furniture, although its importance has varied from time to time and from country to country', 'DT NN MD VB DT JJS NN IN NN IN PRP$ NN VBZ VBN IN NN TO NN CC IN NN TO NN', '0-179'),
(30, 11, 'When wood, natural gas, oil, or any other fuel burns, substances in the fuel combine with oxygen in the air to produce heat', 'WRB NN JJ NN NN CC DT JJ NN NNS NNS IN DT NN VBP IN NN IN DT NN TO VB NN', '0-180'),
(31, 11, 'Deserts are arid land areas where more water is lost through evaporation than is gained through precipitation', 'NNS VBP JJ NN NNS WRB RBR NN VBZ VBN IN NN IN VBZ VBN IN NN', '0-181'),
(32, 11, 'When goshawk chicks are young, both parents share in the hunting duties and in guarding the nest', 'WRB NN NNS VBP JJ CC NNS NN IN DT NN NNS CC IN VBG DT NN', '0-182'),
(33, 11, 'Not only are whales among the largest animals that ever lived, but they are also among the most intelligent', 'RB RB VBP NNS IN DT JJS NNS WDT RB VBD CC PRP VBP RB IN DT RBS JJ', '0-183'),
(34, 11, 'Fish are the most ancient form of vertebrate life, and from them evolved all other vertebrates', 'NN VBP DT RBS JJ NN IN JJ NN CC IN PRP VBD DT JJ NNS', '0-184'),
(35, 11, 'There are about 350 species of sharks, and although they are all carnivorous, only a few species will attack people', 'EX VBP IN CD NNS IN NNS CC IN PRP VBP DT JJ RB DT JJ NNS MD VB NNS', '0-185'),
(36, 11, 'In the United States, there are many holidays throughout the year', 'IN DT NNP NNPS EX VBP JJ NNS IN DT NN', '0-230'),
(37, 11, 'Tomatoes grow all year long in Florida', 'NNS VBP DT NN RB IN NNP', '0-231'),
(38, 11, 'Even thought my aunt lost the beauty contest she is still the prettiest of all the other contestants', 'RB VBN PRP$ NN VBD DT NN NN PRP VBZ RB DT JJS IN DT DT JJ NNS', '0-232'),
(39, 11, 'The thief who stole my watch was compelled to restore it again', 'DT NN WP VBD PRP$ NN VBD VBN TO VB PRP RB', '0-233'),
(40, 11, 'I try to figure out the answer of what the function of the organization is', 'PRP VBP TO VB RP DT NN IN WP DT NN IN DT NN VBZ', '1-234'),
(41, 11, 'The huge increase in popularity of specialty coffees has contributed to the success of Starbucks, Barney’s and other coffee purveyors', 'DT JJ NN IN NN IN NN NNS VBZ VBN TO DT NN IN NNP NNP POS CC JJ NN NNS', '1-40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_candidate`
--
ALTER TABLE `tb_candidate`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_candidate`
--
ALTER TABLE `tb_candidate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
