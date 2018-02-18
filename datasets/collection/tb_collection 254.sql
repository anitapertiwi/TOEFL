-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 16 Jan 2018 pada 13.00
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
-- Struktur dari tabel `tb_collection`
--

CREATE TABLE `tb_collection` (
  `id` int(11) NOT NULL,
  `text` mediumtext NOT NULL,
  `postext` mediumtext,
  `underline` varchar(255) NOT NULL,
  `answer` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tb_collection`
--

INSERT INTO `tb_collection` (`id`, `text`, `postext`, `underline`, `answer`) VALUES
(1, 'These television are all to expensive for we to buy at this time, but perhaps we will return later', 'DT NN VBP DT TO JJ IN PRP TO VB IN DT NN CC RB PRP MD VB RB', '0,4,7-8-9,11-12', NULL),
(2, 'They only teachers who were required to attend the meeting were George, Betty, Jill, and me', 'PRP RB NNS WP VBD VBN TO VB DT NN VBD NNP NNP NNP CC PRP', '0-1,3-4,6-7,14', NULL),
(3, 'Us students would rather not attend night classes in the summer, but we of ten have to', 'NNP NNS MD RB RB VB NN NNS IN DT NN CC PRP IN CD VBP TO', '0-1,2-3-4-5,12,14-15', NULL),
(4, 'It was him who came running into the classroom with the news', 'PRP VBD PRP WP VBD VBG IN DT NN IN DT NN', '2,3,6,10', NULL),
(5, 'The test administrator ordered we not to open our books until he told us to do so', 'DT NN NN VBD PRP RB TO VB PRP$ NNS IN PRP VBD PRP TO VB RB', '1,4,5-6-7,12-13-14-15-16', NULL),
(6, 'After she had bought herself a new automobile, she sold her bicycle', 'IN PRP VBD VBN PRP DT JJ NN PRP VBD PRP$ NN', '2-3,4,9,10', NULL),
(7, 'Because Sam and Michelle had done all of the work theirselves, they were unwilling to give the results to Joan', 'IN NNP CC NNP VBD VBN DT IN DT NN RB PRP VBD JJ TO VB DT NNS TO NNP', '0,5-6,11,14-16', NULL),
(8, 'Writers and media personnel sell theirselves best by the impression given in their verbal expression', 'NNPS CC NNS NNS VBP RB RB IN DT NN VBN IN PRP$ JJ NN', '3,5,7-8,14', NULL),
(9, 'For along time, this officials have been known throughout the country as politcal bosses and law onforcers', 'IN IN NN DT NNS VBP VBN VBN IN DT NN IN JJ NNS CC NN NNS', '4,6-7-8,11,15-16', NULL),
(10, 'Those homework that your teacher assigned is due on Tuesday unless you have made prior arrangements to turn it in late', 'DT NN WDT PRP$ NN VBN VBZ JJ IN NNP IN PRP VBP VBN JJ NNS TO VB PRP IN JJ', '0,5,8-9,12-13', NULL),
(11, 'The man, of whom the red car is parked in front of our house, is a prominent physician in this town', 'DT NN IN WP DT JJ NN VBZ VBN IN NN IN PRP$ NN VBZ DT JJ NN IN DT NN', '3-4-5,9,12-13-14,15-16', NULL),
(12, 'He is the only candidate who the faculty members voted not to retain on the list of eligible replacements for Professor Kotey', 'PRP VBZ DT JJ NN WP DT NN NNS VBD RB TO VB IN DT NN IN JJ NNS IN NNP NNP', '4,6,11-12-13,14-15-16', NULL),
(13, 'This class, that is a prerequisite for microbiology, is so difficult that I would rather drop it', 'DT NN WDT VBZ DT NN IN NN VBZ RB JJ IN PRP MD RB VB PRP', '2,5,9-10,13-14-15-16', NULL),
(14, 'Dr. Harder, which is the professor for this class, will be abbsent this week because of illness.', 'NNP NNP WDT VBZ DT NN IN DT NN MD VB JJ DT NN IN IN NN', '2,9-10,12-13,15-16', NULL),
(15, 'Angie''s billingual ability and previous experience were the qualities that which helped her get the job over all the other candidates', 'NNP VBZ JJ NN CC JJ NN VBD DT NNS WDT WDT VBD PRP VB DT NN IN PDT DT JJ NNS', '7,10-11,12-13,19-20', NULL),
(16, 'My book is different than yours because mine has a vocabulary section at the bottom of each page, and yours has one in the back', 'PRP$ NN VBZ JJ IN PRP$ IN PRP VBZ DT NN NN IN DT NN IN DT NN CC PRP$ VBZ CD IN DT NN', '4,5-6-7,12-13,19-20', NULL),
(17, 'John decided to buy in the morning a new car, but in the afternoon he changed his mind', 'NNP VBD TO VB IN DT NN DT JJ NN CC IN DT NN PRP VBD PRP$ NN', '3,11,16', NULL),
(39, 'Having multiple sclerosis has diminished Mr Wilson’s physical condition,\nbut his ability to maintain a positive attitude and continue working is an\ninspiration', 'VBG JJ NN VBZ VBN NNP NNP POS JJ NN CC PRP$ NN TO VB DT JJ NN CC VBP VBG VBZ DT NN', '0,4,10,19', 19),
(40, 'The huge increase in popularity of specialty coffees has contributed to the success of Starbucks, Barney’s and other coffee purveyors', 'DT JJ NN IN NN IN NN NNS VBZ VBN TO DT NN IN NNP NNP POS CC JJ NN NNS', '1,9,12,16', 9),
(41, 'After it had concluded work on the budget, the legislature adjourned until the\nnext session', 'IN PRP VBD VBN NN IN DT NN DT NN VBN IN DT JJ NN', '3,8,10,11', 3),
(42, 'Even when awarded a scholarship, a student generally must still pay for\r\nbooks, living expenses, and other costs', 'RB WRB VBN DT NN DT NN RB MD RB VB IN NNS VBG NNS CC JJ NNS', '2,10,12,15', 10),
(43, 'The US government, along with a number of states, is fighting a protracted\nlegal battle with tobacco companies in order to obtain relief for the huge\nmedical costs caused by smoking', 'DT NNP NN IN IN DT NN IN NNS VBZ VBG DT JJ JJ NN IN NN NNS IN NN TO VB NN IN DT JJ JJ NNS VBN IN NN', '10,20,21', 10),
(44, 'The teachers are expecting to call a meeting tomorrow in order to review the disciplinary problems', 'DT NNS VBP VBG TO VB DT NN NN IN NN TO VB DT JJ NNS', '3,7,12,13', 7),
(45, 'The rain forest, with is large trees that provide shade to the vegetation below, is home to unique flora and fauna', 'DT NN NN IN VBZ JJ NNS WDT VBP NN TO DT NN IN VBZ NN TO JJ NN CC NNS', '3,4,8,14', 4),
(46, 'Despite the polar bear’s tremendous weight and height, it is capable of sprinting at tremendous speed', 'IN DT JJ NN POS JJ NN CC NN PRP VBZ JJ IN VBG IN JJ NN', '0,9,10,12', 10),
(47, 'Patients on Interferon are advised to inject themselves just before going to sleep, so that they can sleep through the night without notice the flu-like symptoms that are characteristic of the drug', 'NNS IN NN VBP VBN TO VB PRP RB IN VBG TO VB RB IN PRP MD VB IN DT NN IN NN DT JJ NNS WDT VBP JJ IN DT NN', '3,7,14,25', 7),
(48, 'The leaders of the two countries have recently reached an agreement to avoid future conflicts', 'DT NNS IN DT CD NNS VBP RB VBN DT NN TO VB JJ NNS', '2,6,8,9', 6),
(49, 'Instructors who lack teaching ability are prevalent at this university because publishing is one of the major criteria for tenure', 'NNS WP VBP NN NN VBP JJ IN DT NN IN NN VBZ CD IN DT JJ NNS IN NN', '2,5,11,18', 2),
(50, 'Not all textbooks that have been written on this subject are as detailed as this one', 'RB DT NNS WDT VBP VBN VBN IN DT NN VBP IN VBN IN DT CD', '2,7,10,12', 10),
(51, 'The oldest tree in this part of the world is the readwood, which may be thousands of years old', 'DT JJS NN IN DT NN IN DT NN VBZ DT NN WDT MD VB NNS IN NNS JJ', '1,6,12,17', 12),
(52, 'The oncologist studied the results of the biopsy and decided to order additional tests', 'DT NN VBD DT NNS IN DT NN CC VBD TO VB JJ NNS', '2,5,9,10', 10),
(53, 'That carcinogenic substances are contained in many common household items is well-known', 'DT JJ NNS VBP VBN IN JJ JJ NN NNS VBZ JJ', '2,3,6,10', 3),
(54, 'If the man had transported to the hospital sooner than he was, he could have survived the electrocution', 'IN DT NN VBD VBN TO DT NN RBR IN PRP VBD PRP MD VB VBN DT NN', '3,8,13,15', 3),
(55, 'Porpoises, which are actually mammals because they breathe air through an orifice in their heads, are playful and intelligent', 'NNS WDT VBP RB NNS IN PRP VBP NN IN DT NN IN PRP$ NNS VBP JJ CC JJ', '2,6,13,15', 2),
(56, 'Floridas''s timberlands suffered considerable damage from the wildfires of 1998, resulted from insufficient rainfall', 'NNP POS NNS VBD JJ NN IN DT NNS IN CD VBD IN JJ NNS', '2,3,10,12', 10),
(57, 'Whereas Internet proponents say that someday all computer programs and data will reside on an Internet server instead of individual computers, many individuals are afraid to lose control over their own documents', 'IN NN NNS VBP IN RB DT NN NNS CC NNS MD VB IN DT NN NN RB IN JJ NNS JJ NNS VBP JJ TO VB NN IN PRP$ JJ NNS', '0,12,13,28', 28),
(58, 'After having been suspended for misbehaviour, the student requested reconsideration', 'IN VBG VBN VBN IN NN DT NN VBD NN', '1,2,6,8', 1),
(59, 'Why so many people die from this illness is unknown, but researchers have learned much about the source of the problem', 'WRB RB JJ NNS VBP IN DT NN VBZ JJ CC NNS VBP VBN JJ IN DT NN IN DT NN', '5,8,12,13', 8),
(60, 'Guppies are sometimes called rainbow fish because of the males'' bright colors', 'NNS VBP RB VBN NN NN IN IN DT NNS POS JJ NNS', '3,5,6,10', NULL),
(61, 'Serving several terms in Congress, Shriley Chisholm became an important United States politician', 'VBG JJ NNS IN NNP NNP NNP VBD DT JJ NNP NNPS NN', '0,2,9,12', NULL),
(62, 'Electrical disturbances on Earth are frequently caused with storms on the surface of the sun', 'JJ NNS IN NNP VBP RB VBN IN NNS IN DT NN IN DT NN', '4,5,10,11', NULL),
(63, 'Inventor Granville Woods recieved him first patent on Januari 3, 1884, for a steam boiler furnace', 'NNP NNP NNP VBD PRP RB VB IN NNP CD CD IN DT NN NN NN', '4,7,11,13', NULL),
(64, 'A deficient of folic acid is rarely found in humas because the vitamin is contained in a wide variety of foods', 'DT JJ IN JJ NN VBZ RB VBN IN NNS IN DT NN VBZ VBN IN DT JJ NN IN NNS', '1,3,6,15', NULL),
(65, 'The gopher digs with the big strong claws of its two front foot and with its overhanging front teeth', 'DT NN VBZ IN DT JJ JJ NNS IN PRP$ CD JJ NN CC IN PRP$ VBG JJ NNS', '2,9,12,16', NULL),
(66, 'An internationally famous ballerina, Maria Tallchief demonstrated that the quality of ballet in North America could equal those of the ballet in Europe', 'DT RB JJ NNP NNP NNP VBD IN DT NN IN JJ IN NNP NNP MD VB DT IN DT JJ IN NNP', '2,6,8,17', NULL),
(67, 'As two nuclei move closer together, their mutual electrostatic potential energy becomes more large and more positive', 'IN CD NNS VBP RBR RB PRP$ JJ JJ JJ NN VBZ RBR JJ CC RBR JJ', '0,7,11,12', NULL),
(68, 'Fewest than half of all adults fully understand the kinds and amounts of exercise necessary for an effective physical fitness program', 'JJS IN DT IN DT NNS RB VBP DT NNS CC NNS IN NN JJ IN DT JJ JJ NN NN', '0,9,17,20', NULL),
(69, 'How many people know that the Brooklyn Bridge, built in 1883, were the world''s first suspension bridge?', 'WRB JJ NNS VBP IN DT NNP NNP VBN IN CD VBD DT NN POS JJ NN NN .', '1,4,8,11', NULL),
(70, 'Anna Maxwell''s gift for organization was exemplified by her service while the Spanish-American War in 1898', 'NNP NNP POS NN IN NN VBD VBN IN PRP$ NN IN DT JJ NN IN CD', '2,4,6,10', NULL),
(71, 'When a severe ankle injury forced herself to give up reporting in 1926, Margaret Mitchell began writing her novel, Gone with the Wind', 'WRB DT JJ NN NN VBD PRP TO VB RP VBG IN CD NNP NNP VBD VBG PRP$ JJ VBN IN DT NN', '2,4,6,15', NULL),
(72, 'Anne Elizabeth McDowell is best remembered for a weekly journal, Woman''s Advocate, who she launched in January 1855', 'NNP NNP NNP VBZ JJS VBN IN DT JJ NN NNP POS NNP WP PRP VBD IN NNP CD', '5,6,8,12', NULL),
(73, 'A ray of light passing through the center of a thin lens keep its original direction', 'DT NN IN JJ VBG IN DT NN IN DT JJ NN VB PRP$ JJ NN', '5,6,12,14', NULL),
(74, 'On Ellesmere Island in the Arctic one fossil forest consist of a nearly hundred large stumps scattered on an exposed coal bed', 'IN NNP NNP IN DT NNP CD JJ NN VBP IN DT RB CD JJ NNS VBN IN DT VBN NN NN', '9,12,16,19', NULL),
(75, 'The midnight sun is a phenomenon in which the Sun visible remains in the sky for twenty-four hours or longer', 'DT NN NN VBZ DT NN IN WDT DT NNP JJ NNS IN DT NN IN CD NNS CC JJR', '3,11,13,19', NULL),
(76, '﻿Paint must be stirred and sometimes dilution before it is applied', 'VB MD VB VBN CC RB NN IN PRP VBZ VBN', '2,3,6,8', NULL),
(77, 'A great aviation pioneer, Amelia Earhart was already famous when she sets out on her ill-fated attempt to circle the globe in 1937', 'DT JJ NN NN NNP NNP VBD RB JJ WRB PRP VBZ RP IN PRP$ JJ NN TO NN DT NN IN CD', '2,7,11,17', NULL),
(78, 'Although apples do not grow during the cold season, apple trees must have a such season in order to flourish', 'IN NNS VBP RB VB IN DT JJ NN NN NNS MD VB DT JJ NN IN NN TO VB', '0,5,13,18', NULL),
(79, 'Two unique features of the Arctic they are lack of precipitation and permanently frozen ground', 'CD JJ NNS IN DT NNP PRP VBP NN IN NN CC RB JJ NN', '2,7,9,12', NULL),
(80, 'Faced with petroleum shortages in the 1970''s, scientists and engineers in the United States stepped up its efforts to develop more efficient heating systems and better insulation', 'VBN IN NN NNS IN DT CD POS NNS CC NNS IN DT NNP NNPS VBD RP PRP$ NNS TO VB RBR JJ NN NNS CC JJR NN', '1,16,19,23', NULL),
(81, 'Rabbits have large front tooth, short tails, and hind legs and feet adapted for running and jumping', 'NNS VBP JJ JJ NN JJ NNS CC JJ NNS CC NNS VBN IN VBG CC VBG', '0,10,14', NULL),
(82, 'Dentistry is a branch of medicine that has developed very dramatic in the last twenty years', 'NNP VBZ DT NN IN NN WDT VBZ VBN RB JJ IN DT JJ CD NNS', '0,3,6,10', NULL),
(83, 'The ease of solving a jigsaw puzzle depends the number of pieces, their shapes and shadings, and the design of the picture', 'DT NN IN VBG DT NN NN VBZ DT NN IN NNS PRP$ NNS CC NNS CC DT NN IN DT NN', '2,8,14,17', NULL),
(84, 'Plants range in size to tiny, single-celled, blue-green algae, invisible to the naked eye, to giant sequoias, the largest living plants', 'NNS VBP IN NN TO JJ JJ JJ NN JJ TO DT JJ NN TO JJ NNS DT JJS NN NNS', '1,4,9,19', NULL),
(85, 'During the 1940''s science and engineering had an impact on the way music reach its audience and even influenced the way in which it was composed', 'IN DT CD POS NN CC NN VBD DT NN IN DT NN NN VBP PRP$ NN CC RB VBD DT NN IN WDT PRP VBD VBN', '10,13,17,22', NULL),
(86, 'By 1860 the railroads of the United States had 3,000 miles of track, three-quarters of which it was east of the Mississippi River and north of the Ohio River', 'IN CD DT NNS IN DT NNP NNPS VBD CD NNS IN NN NNS IN WDT PRP VBD JJ IN DT NNP NNP CC NN IN DT NNP NNP', '0,8,11,15', NULL),
(87, 'Ballads were early types of poetry and may have been among a first kinds of music', 'NNS VBD JJ NNS IN NN CC MD VB VBN IN DT JJ NNS IN NN', '1,5,11,15', NULL),
(88, 'The thin outer layer of the skin is called the epidermis, while the layer inner, which is slightly thicker, is called the dermis', 'DT JJ JJ NN IN DT NN VBZ VBN DT NN IN DT NN NN WDT VBZ RB JJR VBZ VBN DT NN', '1,8,11,13', NULL),
(89, 'With the incorporation of jazz history into current academic curricula, leading jazz musicians are now founding on the faculties of several universities', 'IN DT NN IN NN NN IN JJ JJ NN VBG NN NNS VBP RB VBG IN DT NNS IN JJ NNS', '2,7,10,15', NULL),
(90, 'Humus, a substance found in soil, is soft and spongy and enables plant roots to send out tiny hairs through that they absorb water and food', 'NNP DT NN VBN IN NN VBZ JJ CC JJ CC VBZ NN NNS TO VB RP JJ NNS IN IN PRP VBP NN CC NN', '3,7,16,20', NULL),
(91, 'Although flies live longest in cool temperatures, it breed prolifically when temperatures are warm, food is abundant, and humidity is moderate', 'IN NNS VBP JJS IN JJ NNS PRP VB RB WRB NNS VBP JJ NN VBZ JJ CC NN VBZ JJ', '1,3,7,20', NULL),
(92, 'Alaska''s vast areas of untamed wilderness attracts many people who enjoy the outdoors', 'NNP POS JJ NNS IN VBZ NN VBZ JJ NNS WP VBP DT NNS', '4,5,6,10', NULL),
(93, '﻿The antique collector must be able to distinguish real antiques from later imitations, which can be either reproductions nor fakes', 'DT JJ NN MD VB JJ TO VB JJ NNS IN JJ NNS WDT MD VB CC NNS CC NNS', '5,8,11,18', NULL),
(94, 'The firstly naval battle of the Revolutionary War was fought off the coast of Machias, Maine, in June 1775', 'DT RB JJ NN IN DT NNP NNP VBD VBN IN DT NN IN NNP NNP IN NNP CD', '1,8,10,16', NULL),
(95, 'The public ceremonies of the Plains Indians are lesser elaborate than those of the Navajo in the Southwest', 'DT JJ NNS IN DT NNP NNPS VBP JJR JJ IN DT IN DT NNP IN DT NN', '1,2,8,10', NULL),
(96, 'In some species of fish, such the three-spined stickleback, the male, not the female, performs the task of caring for the young', 'IN DT NNS IN NN JJ DT JJ NN DT NN RB DT JJ VBZ DT NN IN VBG IN DT JJ', '1,5,6,14,18', NULL),
(97, 'When she retires in September 1989, tennis champion Christine Evert was the most famous woman athlete in the United States', 'WRB PRP VBZ IN NNP CD NN NN NNP NNP VBD DT RBS JJ NN NN IN DT NNP NNPS', '2,7,12,14', NULL),
(98, 'The ancient Romans used vessels equipped with sails and banks of oars to transporting their armies', 'DT JJ NNPS VBD NNS VBN IN NNS CC NNS IN NNS TO VBG PRP$ NNS', '5,8,12,13', NULL),
(99, 'Dinosaurs are traditionally classified as cold-blooded reptiles, but recent evidence based on eating habits, posture, and skeletal structural suggests some may have been warm-blooded', 'NNS VBP RB VBN IN JJ NNS CC JJ NN VBN IN VBG NNS NN CC JJ JJ VBZ DT MD VB VBN JJ', '1,7,17,20', NULL),
(100, 'Since the Great Depression of the 1930’s, social programs such as Social Security have been built into the economy to help avert severity business declines', 'IN DT NNP NNP IN DT CD POS JJ NNS JJ IN NNP NNP VBP VBN VBN IN DT NN TO VB VB NN NN NNS', '8,15,19,22', NULL),
(101, 'In the 1970 consumer activities succeeded in promoting laws that set safety standards for automobiles, children’s clothing, and a widely range of household products', 'IN DT CD NN NNS VBD IN VBG NNS WDT VBP NN NNS IN NNS NNS POS NN CC DT RB NN IN NN NNS', '3,5,11,19', NULL),
(102, 'Zoos in New Orleans, San Diego, Detroit, and the Bronx have become biological parks where animals roams free and people watch from across a moat', 'NNS IN NNP NNP NNP NNP NNP CC DT NNP VBP VBN JJ NNS WRB NNS VBZ JJ CC NNS VBP IN IN DT NN', '10,14,16,20', NULL),
(103, 'In human beings, as in other mammals, hairs around the eyes are ears and in the nose prevent dust, insects, and other matter from entering these organs', 'IN JJ NNS IN IN JJ NNS NNS IN DT NNS VBP NNS CC IN DT NN VBP NN NNS CC JJ NN IN VBG DT NNS', '0,8,17,24', NULL),
(104, 'The Rocky Mountains were explored by fur traders during the early 1800’s in a decades preceding the United States Civil War', 'DT NNP NNS VBD VBN IN NN NNS IN DT JJ CD POS IN DT NNS VBG DT NNP NNPS NNP NNP', '3,5,13,15', NULL),
(105, 'The works of the author Herman Melville are literary creations of a high order, blending fact, fiction, adventure, and subtle symbolic', 'DT NNS IN DT NN NNP NNP VBP JJ NNS IN DT JJ NN VBG NN NN NN CC JJ JJ', '0,4,8,20', NULL),
(106, 'Each chemical element is characterized to the number of protons that an atom of that element contains, called its atomic number', 'DT NN NN VBZ VBN TO DT NN IN NNS IN DT NN IN DT NN VBZ VBN PRP$ JJ NN', '0,5,13,17', NULL),
(107, 'The body structure that developed in birds over millions of years is well designed for flight, being both lightly in weight and remarkably strong', 'DT NN NN WDT VBD IN NNS IN NNS IN NNS VBZ RB VBN IN NN VBG CC RB IN NN CC RB JJ', '2,13,16,22', NULL),
(108, 'From 1905 to 1920, American novelist Edith Wharton was at the height of her writing career, publishing of her three most famous novels', 'IN CD TO CD JJ NN NNP NNP VBD IN DT NN IN PRP$ NN NN NN IN PRP$ CD RBS JJ NNS', '0,8,18,20', NULL),
(109, 'In the early twentieth century, there was considerable interesting among sociologists in the fact that in the United States the family was losing its traditional role', 'IN DT JJ JJ NN EX VBD JJ JJ IN NNS IN DT NN IN IN DT NNP NNPS DT NN VBD VBG PRP$ JJ NN', '8,14,19,24', NULL),
(110, 'Although pure diamond is colorless and transparent, when contaminated with other material it may appear in various color, ranging from pastels to opaque black', 'IN JJ NN VBZ JJ CC JJ WRB VBN IN JJ NN PRP MD VB IN JJ NN VBG IN NNS TO JJ JJ', '0,4,7,12', NULL),
(111, 'Comparative anatomy is concerned to the structural differences among animal forms', 'JJ NN VBZ VBN TO DT JJ NNS IN JJ NNS', '3,6,8,10', NULL),
(112, 'A seismograph records oscillation of the ground caused by seismic waves, vibrations that travel from its point of origin through the Earth or along its surface', 'DT NN NNS NN IN DT NN VBN IN JJ NNS NNS WDT VBP IN PRP$ NN IN NN IN DT NNP CC IN PRP$ NN', '7,13,15,19', NULL),
(113, 'Electric lamps came into widespread use during the early 1900’s and have replaced other type of fat, gas, or oil lamps for almost every purpose', 'NNP NNS VBD IN JJ NN IN DT JJ CD POS CC VBP VBN JJ NN IN JJ NN CC NN NNS IN RB DT NN', '12,14,19,22', NULL),
(114, 'Located in Canada, the Columbia Icefield covers area of 120 square miles and is 3,300 feet thick in some places', 'VBN IN NNP DT NNP NNP VBZ NN IN CD JJ NNS CC VBZ CD NNS JJ IN DT NNS', '6,12,16,19', NULL),
(115, 'Composer Richard Rodgers and lyricist Oscar Hammerstein II brought to the musical Oklahoma', 'NN NNP NNP CC NN NNP NNP NNP VBD TO DT JJ NNP', '3,8,9,10', NULL),
(116, 'Because of its vast tracts of virtually uninhabited northern forest, Canada has one of the lowest population density in the world', 'IN IN PRP$ JJ NNS IN RB JJ JJ NN NNP VBZ CD IN DT JJS NN NN IN DT NN', '2,6,12,17', NULL),
(117, 'Rice, which it still forms the staple diet of much of the world’s population, grows best in hot, wet lands', 'NNP WDT PRP RB VBZ DT JJ NN IN JJ IN DT NN POS NN VBZ JJS IN JJ JJ NNS', '1,9,15', NULL),
(118, 'Government money appropriated for art in the 1930’s made possible hundreds of murals and statues still admiration in small towns all over the United States', 'NNP NN VBN IN NN IN DT CD POS VBN JJ NNS IN NNS CC NNS RB NN IN JJ NNS DT IN DT NNP NNPS', '3,10,16,21', NULL),
(119, 'Dairy farming is a leading agricultural activity in the United States', 'NN NN VBZ DT VBG JJ NN IN DT NNP NNPS', '3,4,7,8', NULL),
(120, 'Although thunder and lightening are produced at the same time, light waves travel faster than sound waves do, so we see the lightening before we hear the thunder ', 'IN NN CC VBG VBP VBN IN DT JJ NN JJ NNS VBP JJR IN JJ NNS VBP RB PRP VBP DT VBG IN PRP VBP DT NN', '4,14,21', NULL),
(121, 'Beef cattle are the most important of all livestock for economic growth in certain geographic regions', 'NN NNS VBP DT RBS JJ IN DT NN IN JJ NN IN JJ JJ NNS', '2,6,9,12', NULL),
(122, 'The discovery of the halftone process in photography in 1881 made it possible to reproduce photographs in books and newspapers', 'DT NN IN DT NN NN IN NN IN CD VBD PRP JJ TO VB NNS IN NNS CC NNS', '2,8,11,18', NULL),
(123, 'Flag Day is a legal holiday only in the state of Pennsylvania, where Betsy Ross sewed the first American flag', 'NNP NNP VBZ DT JJ NN RB IN DT NN IN NNP WRB NNP NNP VBD DT JJ JJ NN', '3,7,12,15', NULL),
(124, 'Because of the vastness of the Grand Canyon, it is difficult to capture it in a single photograph', 'IN IN DT NN IN DT NNP NNP PRP VBZ JJ TO VB PRP IN DT JJ NN', '4,9,13,15', NULL),
(125, 'Speciation, the formation of biological species, results when an animal population becomes isolated by some factor, usually geographic', 'NNP DT NN IN JJ NNS VBZ WRB DT NN NN VBZ VBN IN DT NN RB JJ', '2,6,7,12', NULL),
(126, 'In its pure state antimony has no important uses, but when combined physically or chemically with other substances, it is extremely useful metal ', 'IN PRP$ JJ NN NN VBZ DT JJ NNS CC WRB VBN RB CC RB IN JJ NNS PRP VBZ RB JJ NN', '5,11,15,18', NULL),
(127, 'The dawn redwood appears to have flourished some 100 million years ago in northern forests around the world', 'DT NN NN VBZ TO VB VBN DT CD CD NNS RB IN JJ NNS IN DT NN', '3,6,12,16', NULL),
(128, 'Beginning in the Middle Ages, composers of Western music used a system of notating their compositions so they could be performed by musicians', 'VBG IN DT NNP NNPS NNS IN JJ NN VBD DT NN IN VBG PRP$ NNS IN PRP MD VB VBN IN NNS', '0,9,13,18', NULL),
(129, 'Civil Rights are the freedoms and rights a person may have as a member of a community, state, or nation', 'NNP NNPS VBP DT NNS CC NNS DT NN MD VB IN DT NN IN DT NN NN CC NN', '2,7,9,14', NULL),
(130, 'Richard Wright enjoyed success and influence unparalleled among Black American writers of his era', 'NNP NNP VBD NN CC NN JJ IN JJ JJ NNS IN PRP$ NN', '2,6,10,12', NULL),
(131, 'Two species of large mammals once dominated the North American Prairies: the American bison and the pronghorn antelope', 'CD NNS IN JJ NNS RB VBD DT JJ JJ NNPS : DT JJ NN CC DT JJ NNS', '2,6,11,14', NULL),
(132, 'Franklin D Roosevelt was the first President to understand fully the great force of radio and the opportunity it provided for taking government policies directly to the people', 'NNP NNP NNP VBD DT JJ NN TO VB RB DT JJ NN IN NN CC DT NN PRP VBD IN VBG NN NNS RB TO DT NNS', '4,18,20,21', NULL),
(133, 'During the late fifteenth century, only a few of the native societies of America had professions in the fields of arts and crafts', 'IN DT JJ JJ NN RB DT JJ IN DT JJ NNS IN NNP VBD NNS IN DT NNS IN NNS CC NNS', '6,14,16,19', NULL),
(134, 'The ponderosa pine is the source of the most of the timber used by forestproduct firms in the Black Hills of South Dakota', 'DT NN VBP VBZ DT NN IN DT JJS IN DT NN VBN IN NN NNS IN DT NNP NNPS IN NNP NNP', '3,12,16,20', NULL),
(135, 'Computers that once took up entire rooms are now small enough to put on desktops and into wristwatches', 'NNS WDT RB VBD RP JJ NNS VBP RB JJ JJ TO VB RP NNS CC IN NNS', '0,3,7,16', NULL),
(136, 'According to some educators, the goal of teaching is to help students learn what they need to know to live a well-adjusted and successful life', 'VBG TO DT NNS DT NN IN NN VBZ TO VB NNS VBP WP PRP VBP TO VB TO VB DT JJ CC JJ NN', '0,7,12,20', NULL),
(137, 'Mango trees, which are densely covered with glossy leaves and bear small fragrant flowers, grow rapidly and can attain heights of up to 90 feet', 'NNP NNS WDT VBP RB VBN IN JJ NNS CC VB JJ JJ NNS VBP RB CC MD VB NNS IN RB TO CD NNS', '3,5,17,20', NULL),
(138, 'A prolific artist the Canadian composer Barbara Pentland wrote four symphonies, three concertos, and an opera, among other works', 'DT JJ NN DT JJ NN NNP NNP VBD CD NNS CD NNS CC DT NN IN JJ NNS', '3,8,14,18', NULL),
(139, 'The Chisos Mountains in Big Bend National park in Texas were created by volcanic eruptions that occurred when dinosaurs roamed the area', 'DT NNP NNS IN JJ NNP NNP NN IN NNP VBD VBN IN JJ NNS WDT VBD WRB NNS VBD DT NN', '3,10,11,16', NULL),
(140, 'In relief sculpture, a design projects very slightly from its background, as on some coins', 'IN NN NN DT NN NNS RB RB IN PRP$ NN IN IN DT NNS', '0,8,12', NULL),
(141, 'Alaska found the first years of its statehood costly because it had to take over the expense of services provided previously by the federal government', 'NNP VBD DT JJ NNS IN PRP$ NN JJ IN PRP VBD TO VB RP DT NN IN NNS VBN RB IN DT JJ NN', '5,11,17,19', NULL),
(142, 'With age, the mineral content of human bones decreases, thereby making them more fragile', 'IN NN DT NN NN IN JJ NNS VBZ RB VBG PRP RBR JJ', '2,5,10,11', NULL),
(143, 'The first explorer to reach California by land was Jedediah Strong Smith, a trapper who crossed the southwestern deserts of the United States in 1826', 'DT JJ NN TO VB NNP IN NN VBD NNP JJ NNP DT NN WP VBD DT JJ NNS IN DT NNP NNPS IN CD', '8,16,19,23', NULL),
(144, 'Written to be performed on a stage bare of scenery, Thornton Wilder play Our Town depicts life in a small New England community', 'VBN TO VB VBN IN DT NN JJ IN NN NNP NNP VB PRP$ NNP VBZ NN IN DT JJ NNP NNP NN', '0,3,8,12', NULL),
(145, 'There are many copper mines in the state of Arizona, a fact which contributes significantly to the state’s economy', 'EX VBP JJ NN NNS IN DT NN IN NNP DT NN WDT VBZ RB TO DT NN POS NN', '1,5,10,16', NULL),
(146, 'Margaret Mead studied many different cultures and she was one of the first anthropologists to photograph hers subjects', 'NNP NNP VBD JJ JJ NNS CC PRP VBD CD IN DT JJ NNS TO NN NNS NNS', '2,4,10,16', NULL),
(147, 'Talc, a soft mineral with a variety of uses, sold is in slabs or in powdered form', 'NNP DT JJ NN IN DT NN IN NNS VBN VBZ IN NNS CC IN JJ NN', '1,6,9,16', NULL),
(148, 'During the 1870’s iron workers in Alabama proved they could produce iron by burning iron ore with coke, instead than with charcoal', 'IN DT CD POS NN NNS IN NNP VBD PRP MD VB NN IN VBG NN NN IN NN RB IN IN NN', '0,9,13,18', NULL),
(149, 'Geologists at the Hawaiian Volcano Observatory rely on a number of instruments to studying the volcanoes in Hawaii', 'NNS IN DT JJ NNP NNP VBP IN DT NN IN NNS TO VBG DT NNS IN NNP', '0,6,8,13', NULL),
(150, 'Underlying aerodynamics and all other branches of theoretical mechanics are the laws of motion who were developed in the seventeenth century', 'JJ NNS CC DT JJ NNS IN JJ NNS VBP DT NNS IN NN WP VBD VBN IN DT JJ NN', '3,5,9,14', NULL),
(151, 'Was opened in 1918, the Philips Collection in Washington, DC, was the first museum in the United States devoted to modern art', 'VBD VBN IN CD DT NN NN IN NNP NNP VBD DT JJ NN IN DT NNP NNPS JJ TO JJ NN', '0,7,18,21', NULL),
(152, 'A mortgage enables a person to buy property without paying for it outright; thus more people are able to enjoy to own a house', 'DT NN VBZ DT NN TO VB NN IN VBG IN PRP RB : RB JJR NNS VBP JJ TO VB TO VB DT NN', '2,6,8,21', NULL),
(153, 'Alike ethnographers, ethnohistorians make systemic observations, but they also gather data from documentary and oral sources', 'JJ NNS NNS VBP JJ NNS CC PRP RB VBP NNS IN NN CC JJ NNS', '0,3,8,15', NULL),
(154, 'Basal body temperature refers to the most lowest temperature of a healthy individual during waking hours', 'JJ NN NN VBZ TO DT RBS JJS NN IN DT JJ NN IN VBG NNS', '3,6,11,13', NULL),
(155, 'Research in the United States on acupuncture has focused on it use in pain relief and anesthesia', 'NNP IN DT NNP NNPS IN NN VBZ VBN IN PRP VB IN NN NN CC NN', '0,8,10,13', NULL),
(156, 'The Moon’s gravitational field cannot keep atmospheric gases from escape into space', 'DT NNP POS JJ NN MD RB VB JJ NNS IN NN IN NN', '2,4,8,11', NULL),
(157, 'Although the pecan tree is chiefly value for its fruit, its wood is used extensively for flooring, furniture, boxes, and crates', 'IN DT NN NN VBZ RB NN IN PRP$ NN PRP$ NN VBZ VBN RB IN NN NN NNS CC NNS', '0,6,13,15', NULL),
(158, 'Born in Texas in 1890, Katherine Anne Porter produced three collection of short stories before publishing her well-known novel Ship of Fools in 1962', 'VBN IN NNP IN CD NNP NNP NNP VBD CD NN IN JJ NNS IN VBG PRP$ JJ JJ NN IN NNS IN CD', '0,10,13,15', NULL),
(159, 'Insulation from cold, protect against dust and sand, and camouflage are among the functions of hair for animals', 'NN IN JJ VBP IN NN CC NN CC NN VBP IN DT NNS IN NN IN NNS', '3,10,13', NULL),
(160, 'The notion that students are not sufficiently involved in their education is one reason for the recently surge of support for undergraduate research', 'DT NN IN NNS VBP RB RB VBN IN PRP$ NN VBZ CD NN IN DT RB NN IN NN IN JJ NN', '2,4,7,18', NULL),
(161, 'As secretary of transportation from 1975 to 1977, William Coleman worked to help the bankrupt railroads in the northeastern United States solved their financial problems', 'IN NN IN NN IN CD TO CD NNP NNP VBD TO VB DT JJ NNS IN DT JJ NNP NNPS VBD PRP$ JJ NNS', '0,12,21,23', NULL),
(162, 'Faults in the Earth’s crust are most evidently in sedimentary formations, where they interrupt previously continuous layers', 'NNS IN DT NNP POS NN VBP RBS RB IN JJ NNS WRB PRP VBP RB JJ NNS', '0,5,12,13', NULL),
(163, 'Many flowering plants benefit of pollination by adult butterflies and moths', 'JJ NN NNS NN IN NN IN JJ NNS CC NNS', '1,4,7,9', NULL),
(164, 'A number of the American Indian languages spoken at the time of the European arrival in the New World in the late fifteen century have become extinct', 'DT NN IN DT JJ JJ NNS VBN IN DT NN IN DT JJ NN IN DT NNP NNP IN DT JJ CD NN VBP VBN JJ', '2,7,10,25', NULL),
(165, 'George Gershwin was an American composer whose concert works joined the sounds of jazz with them of traditional orchestration', 'NNP NNP VBD DT JJ NN WP$ NN VBZ VBD DT NNS IN NN IN PRP IN JJ NN', '6,9,14,15', NULL),
(166, 'One of the problems of United States agriculture that has persisted during the 1920’s until the present day is the tendency of farm income to lag behind the costs of production', 'CD IN DT NNS IN NNP NNPS NN WDT VBZ VBN IN DT CD POS IN DT JJ NN VBZ DT NN IN NN NN TO VB IN DT NNS IN NN', '1,11,26,30', NULL),
(167, 'Volcanism occurs on Earth in several geological setting, most of which are associated with the boundaries of the enormous, rigid plates that make up the lithosphere', 'NN VBZ IN NNP IN JJ JJ NN JJS IN WDT VBP VBN IN DT NNS IN DT JJ JJ NNS WDT VBP RP DT NN', '1,22', NULL),
(168, 'Early European settlers in North America used medicines they made from plants native to treat colds, pneumonia, and ague, an illness similar to malaria', 'JJ JJ NNS IN NNP NNP VBD NNS PRP VBD IN NNS JJ TO VB NNS NN CC VB DT NN JJ TO NN', '6,8,11,19', NULL),
(169, 'Some insects bear a remarkable resemblance to dead twigs, being long, slenderness, wingless, and brownish in color', 'DT NNS VBP DT JJ NN TO JJ NNS VBG JJ NN JJ CC JJ IN NN', '0,9,15', NULL),
(170, 'A food additive is any chemical that food manufacturers intentional add to their products', 'DT NN JJ VBZ DT NN WDT NN NNS JJ VB TO PRP$ NNS', '2,4,9,13', NULL),
(171, 'After quartz, calcite is the most abundant mineral in the crust of the Earth', 'IN NN NN VBZ DT RBS JJ NN IN DT NN IN DT NNP', '0,5,8,11', NULL),
(172, 'Regarded as the world’s foremost linguistic theorist, Noam Chomsky continues to create new theories about language and language learning', 'VBN IN DT NN POS JJ JJ NN NNP NNP VBZ TO VB JJ NNS IN NN CC NN NN', '0,2,9,10', NULL),
(173, 'Whenever any area receives more water than the ground can absorb, the excess water flows to the lowest level, carrying loose mineral', 'NNP DT NN VBZ RBR NN IN DT NN MD VB DT JJ NN VBZ TO DT JJS NN VBG JJ NN', '0,6,15,19', NULL),
(174, 'In 1935 seismologist Charles F Richter devised a numerical scale for rating the strength of earthquakes', 'IN CD NN NNP NN NNP VBD DT JJ NN IN NN DT NN IN NNS', '0,6,10,14', NULL),
(175, 'After the Second World War the woman wage earner became a standard part of middle-class life in the United States', 'IN DT JJ NNP NNP DT NN NN JJ VBD DT JJ NN IN NN NN IN DT NNP NNPS', '5,8,9,16', NULL),
(176, 'Celluloid and plastics have largely replaced genuine ivory in the manufacture of such things as buttons, billiard balls, and piano keys', 'NNP CC NNS VBP RB VBN JJ NN IN DT NN IN JJ NNS IN NNS JJ NNS CC NN NNS', '3,5,11,14', NULL),
(177, 'One of the tenets of New Criticism is that a critic need not tell readers what to think about a story', 'CD IN DT NNS IN NNP NNP VBZ IN DT NN MD RB VB NNS WDT TO VB IN DT NN', '1,7,15,19', NULL),
(178, 'The outer ear, which includes the fleshy pinna and the auditory canal, picks up and funnels sound waves toward the eardrum', 'DT JJ NN WDT VBZ DT JJ NN CC DT JJ NN VBZ RB CC VBZ JJ NNS IN DT NN', '0,4,12,18', NULL),
(179, 'The chair may be the oldest type of furniture, although its importance has varied from time to time and from country to country', 'DT NN MD VB DT JJS NN IN NN IN PRP$ NN VBZ VBN IN NN TO NN CC IN NN TO NN', '0,7,9,13', NULL),
(180, 'When wood, natural gas, oil, or any other fuel burns, substances in the fuel combine with oxygen in the air to produce heat', 'WRB NN JJ NN NN CC DT JJ NN NNS NNS IN DT NN VBP IN NN IN DT NN TO VB NN', '11,14,15,21', NULL),
(181, 'Deserts are arid land areas where more water is lost through evaporation than is gained through precipitation', 'NNS VBP JJ NN NNS WRB RBR NN VBZ VBN IN NN IN VBZ VBN IN NN', '1,8,11,14', NULL),
(182, 'When goshawk chicks are young, both parents share in the hunting duties and in guarding the nest', 'WRB NN NNS VBP JJ CC NNS NN IN DT NN NNS CC IN VBG DT NN', '3,7,10,15', NULL),
(183, 'Not only are whales among the largest animals that ever lived, but they are also among the most intelligent', 'RB RB VBP NNS IN DT JJS NNS WDT RB VBD CC PRP VBP RB IN DT RBS JJ', '2,8,13,16', NULL),
(184, 'Fish are the most ancient form of vertebrate life, and from them evolved all other vertebrates', 'NN VBP DT RBS JJ NN IN JJ NN CC IN PRP VBD DT JJ NNS', '1,10,12,14', NULL),
(185, 'There are about 350 species of sharks, and although they are all carnivorous, only a few species will attack people', 'EX VBP IN CD NNS IN NNS CC IN PRP VBP DT JJ RB DT JJ NNS MD VB NNS', '1,5,10,14', NULL),
(186, 'The dandelion plant has a straight, smoothly, and hollow stem that contains a white, milky juice', 'DT JJ NN VBZ DT JJ RB CC JJ NN WDT VBZ DT JJ JJ NN', '2,10', NULL),
(187, 'Of the much factors that contributed to the growth of international tourism in the 1950’s, one of the most important was the advent of jet travel in 1958', 'IN DT JJ NNS WDT VBD TO DT NN IN JJ NN IN DT CD POS CD IN DT RBS JJ VBD DT NN IN NN NN IN CD', '2,5,8,15', NULL),
(188, 'The Canadian province of Alberta it is believed to have some of the richest oil deposits in the world', 'DT JJ NN IN NNP PRP VBZ VBN TO VB DT IN DT JJS NN NNS IN DT NN', '2,7,9,15', NULL),
(189, 'Elizabeth Bishop’s poems are frequently long and carefully constructed, uses elaborate rhyme or half-rhymes', 'NNP NNP POS NNS VBP RB JJ CC RB VBN NNS JJ NN CC NNS', '3,5,9,10', NULL),
(190, 'California has more land under irrigation than any another state', 'NNP VBZ JJR NN IN NN IN DT DT NN', '1,4,6,8', NULL),
(191, 'Thomas Moran’s magnificent, colorful paintings onto Wyoming landscapes captured the spirit of the western wilderness in the late nineteenth century', 'NNP NNP POS JJ JJ NNS IN NNP NNS VBD DT NN IN DT JJ NN IN DT JJ JJ NN', '3,5,11,17', NULL),
(192, 'Emily Dickinson, among the greatest women poets in the English language, died with all of hers poems unpublished, except for seven that appeared in publications of limited circulation', 'NNP NNP IN DT JJS NNS NNS IN DT NNP NN VBD IN DT IN NNS NNS JJ IN IN CD WDT VBD IN NNS IN JJ NN', '6,12,15,22', NULL),
(193, 'Protecting Florida’s coral reefs in difficult because some of the corals are very fragile even the touch of a diver’s hand can kill it', 'VBG NNP POS NN NNS IN JJ IN DT IN DT NNS VBP RB JJ RB DT NN IN DT NN POS NN MD VB PRP', '0,7,11,21', NULL),
(194, 'Martin Luther King, Jr, is well known for organize the huge human rights march that took place in Washington in 1963', 'NNP NNP NNP NNP VBZ RB VBN IN VB DT JJ JJ NNS NN WDT VBD NN IN NNP IN CD', '4,5,15,19', NULL),
(195, 'A lightning flash produces electromagnetic waves that may travels along the Earth’s magnetic field for long distances', 'DT NN NN VBZ JJ NNS WDT MD NNS IN DT NNP POS JJ NN IN JJ NNS', '0,7,14,16', NULL),
(196, 'One of the earliest plants domesticated in the Western Hemisphere, manioc was introduced to Europe by Spaniards returning from the New World', 'CD IN DT JJS NNS VBN IN DT JJ NNP NN VBD VBN TO NNP IN NNPS VBG IN DT NNP NNP', '5,11,15,17', NULL),
(197, 'Besides the age of nine and fifteen, almost all young people undergo a rapid series of physiological changes', 'IN DT NN IN CD CC CD RB DT JJ NNS VBP DT JJ NN IN JJ NNS', '0,7,9,13', NULL),
(198, 'The frequency of meteors in the Earth’s atmosphere increases when the Earth passes through a swarm of particle generated by the breakup of a comet', 'DT NN IN NNS IN DT NNP POS NN VBZ WRB DT NNP VBZ IN DT NN IN NN VBN IN DT NN IN DT NN', '0,8,12,18', NULL),
(199, 'Ponds are noted for their rich and varied types of plant and animal life, all maintain in a delicate ecological balance', 'NNS VBP VBN IN PRP$ JJ CC JJ NNS IN NN CC NN NN DT VBP IN DT JJ JJ NN', '1,7,15,17', NULL),
(200, 'In the 1920’s cinema became an important art form and one of the ten largest industry in the United States', 'IN DT CD POS NN VBD DT JJ NN NN CC CD IN DT CD JJS NN IN DT NNP NNPS', '0,4,10,15', NULL),
(201, 'To improvise effectively, a musician must through understand the conventions of a given musical style', 'TO VB RB DT NN MD RB VB DT NNS IN DT VBN JJ NN', '0,6,10,12', NULL),
(202, 'During the Jurassic period plant life was abundance, providing herbivores in particular with a plentiful supply of food', 'IN DT JJ NN NN NN VBD NN VBG NNS IN JJ IN DT JJ NN IN NN', '10,14,16', NULL),
(203, 'Some maple trees are raised for their sap, which has a high sugar content for yields sugar and syrup', 'DT NN NNS VBP VBN IN PRP$ VBP WDT VBZ DT JJ NN NN IN NNS NN CC NN', '0,3,8,14', NULL),
(204, 'Long before boats became important in recreation, they were valuable to people for many essential tasks, included transportation and fishing', 'JJ IN NNS VBD JJ IN NN PRP VBD JJ TO NNS IN JJ JJ NNS VBD NN CC NN', '1,9,16,18', NULL),
(205, 'Asteroids may be fragments of a planet shattered long ago or from material the nuclei of old comets', 'NNS MD VB NNS IN DT NN VBN RB RB CC IN NN DT NNS IN JJ NNS', '3,7,8,11', NULL),
(206, 'The first Native Americans to occupy what is now the southwestern United States were the Big-Game Hunters, which appeared about 10,000 BC', 'DT JJ JJ NNS TO VB WP VBZ RB DT JJ NNP NNPS VBD DT NNP NNS WDT VBD IN CD NN', '4,7,13,17', NULL),
(207, 'Some hangers, buildings used to hold large aircraft, are very tall that rain occasionally falls from clouds that form along the ceilings', 'DT NNS NNS VBN TO VB JJ NNS VBP RB JJ IN NN RB VBZ IN NNS WDT VBP IN DT NNS', '0,9,15,19', NULL),
(208, 'Most sand dunes are always in motion as wind pushes sand upward one side of each dune, over the top, and down the other side', 'JJS NN NNS VBP RB IN NN IN NN VBZ NN RB CD NN IN DT NN IN DT JJ CC IN DT JJ NN', '6,11,17,22', NULL),
(209, 'Farms of maize, beans, and tobacco, the Wendat, Native American tribes that inhabited present-day Michigan, lived a sedentary life in densely populated villages', 'NNPS IN NN NNS CC NN DT NNP JJ JJ NNS WDT VBD JJ NNP VBD DT JJ NN IN RB JJ NNS', '0,12,18,21', NULL),
(210, 'Recently scientists have apply new tools of biochemistry and molecular biology to investigate the structure of human hair', 'RB NNS VBP VB JJ NNS IN NN CC JJ NN TO VB DT NN IN JJ NN', '3,8,12,15', NULL),
(211, 'I enjoyed studying geography at school and now I have enrolled at the Economics Faculty', 'PRP VBD VBG NN IN NN CC RB PRP VBP VBN IN DT NNP NNP', '1,2,10,13', NULL),
(212, 'I used to be keen on all scientific subjects but now I would prefer to study art', 'PRP VBD TO VB JJ IN DT JJ NNS CC RB PRP MD VB TO VB NN', '1,5,7,12', NULL),
(213, 'I want some meet your sister when she comes to see you she sounds very nice', 'PRP VBP DT VBP PRP$ NN WRB PRP VBZ TO VB PRP PRP VBZ RB JJ', '2,6,12,14', NULL),
(214, 'My friends tell me the English exam is quite difficult but I’m not worried', 'PRP$ NNS VBP PRP DT NNP NN VBZ RB JJ CC PRP VBP RB VBN', '3,6,8,13', NULL),
(215, 'The tickets, which are extremely good value, can be bought from large supermarkets', 'DT NNS WDT VBP RB JJ NN MD VB VBN IN JJ NNS', '2,5,9,12', NULL),
(216, 'The number of people who asked for the discount was low but grew during the summer period', 'DT NN IN NNS WP VBD IN DT NN VBD JJ CC VBD IN DT NN NN', '4,5,9,12', NULL),
(217, 'He wanted always to be a doctor and after doing medicine he now works in a hospital', 'PRP VBD RB TO VB DT NN CC IN VBG NN PRP RB VBZ IN DT NN', '1,5,8,13', NULL),
(218, 'The informations they gave us was not very helpful so I consulted the website instead', 'DT NNS PRP VBD PRP VBD RB RB JJ IN PRP VBD DT NN RB', '1,3,8,9', NULL),
(219, 'There isn’t much time, do you think we should get a taxi to the exhibition centre?', 'EX VBZ RB JJ NN VBP PRP VB PRP MD VB DT NN TO DT NN NN .', '2,4,8,12', NULL),
(220, 'He graduated in languages in June and is now thinking of doing a second degree in psychology', 'PRP VBD IN NNS IN NNP CC VBZ RB VBG IN VBG DT JJ NN IN NN', '1,4,7,11', NULL),
(221, 'The policeman showed us an identikit picture of the man who stole the car', 'DT NN VBD PRP DT JJ NN IN DT NN WP VBD DT NN', '2,5,8,11', NULL),
(222, 'How long does it take to get at the station on foot from your house', 'WRB RB VBZ PRP VB TO VB IN DT NN IN NN IN PRP$ NN', '2,7,10,13', NULL),
(223, 'I was so angry that I took the broken watch to the jewellers to get my money back', 'PRP VBD RB JJ IN PRP VBD DT JJ NN TO DT NNS TO VB PRP$ NN RB', '2,6,10,14', NULL),
(224, 'He rang me this morning to tell me that he had passed his driving test', 'PRP VBD PRP DT NN TO VB PRP IN PRP VBD VBN PRP$ VBG NN', '1,5,10,13', NULL),
(225, 'I will not be able to go on holiday this year unless I will get a part-time job', 'PRP MD RB VB JJ TO VB IN NN DT NN IN PRP MD VB DT JJ NN', '3,7,11,15', NULL),
(226, 'It was such a nice day that they decided to have a picnic in the field', 'PRP VBD JJ DT JJ NN IN PRP VBD TO VB DT NN IN DT NN', '2,6,8,13', NULL),
(227, 'I have not never seen anybody who rides a horse so well before', 'PRP VBP RB RB VBN NN WP NNS DT NN RB RB IN', '1,5,7,10', NULL),
(228, 'My boyfriend always takes me to see horror films, but I do not like them', 'PRP$ NN RB VBZ PRP TO VB NN NNS CC PRP VBP RB VB PRP', '0,3,7,11', NULL),
(229, 'We went to Guatemala last year as we were tired of the usual beach holiday', 'PRP VBD TO NNP JJ NN IN PRP VBD VBN IN DT JJ NN NN', '1,6,9,11', NULL),
(231, 'Tomatoes grow all year long in Florida', 'NNS VBP DT NN RB IN NNP', '0,1,2,5', NULL),
(232, 'Even thought my aunt lost the beauty contest she is still the prettiest of all the other contestants', 'RB VBN PRP$ NN VBD DT NN NN PRP VBZ RB DT JJS IN DT DT JJ NNS', '1,4,9,12', NULL),
(233, 'The thief who stole my watch was compelled to restore it again', 'DT NN WP VBD PRP$ NN VBD VBN TO VB PRP RB', '2,7,8,10', NULL),
(234, 'I try to figure out the answer of what the function of the organization is', 'PRP VB TO VB RP DT NN IN WP DT NN IN DT NN VBZ', '1,3,8,14', NULL),
(235, 'The huge increase in popularity of specialty coffees has contributed to the success of Starbucks, Barney’s and other coffee purveyors', 'DT JJ NN IN NN IN NN NNS VBZ VBN TO DT NN IN NNP NNP POS CC JJ NN NNS', '1,9,12,16', NULL),
(240, 'The huge increase in popularity of specialty coffees has contributed to the success of Starbucks, Barney’s and other coffee purveyors', 'DT JJ NN IN NN IN NN NNS VBZ VBN TO DT NN IN NNP NNP POS CC JJ NN NNS', '1,9,12,16', NULL),
(242, 'Thank you for the time you have taken to speak with us, we really appreciate your time and interest', 'VB PRP IN DT NN PRP VBP VBN TO VB IN PRP PRP RB VB PRP$ NN CC NN', '3,6,7,15', NULL),
(243, 'While we enjoyed our conversation, we regret to inform you that we will not be pursuing your candidacy for this position', 'IN PRP VBD PRP$ NN PRP VBP TO VB PRP IN PRP MD RB VB VBG PRP$ NN IN DT NN', '0,2,7,14', NULL),
(244, 'Having multiple sclerosis has diminished Mr Wilson’s physical condition, but his ability to maintain a positive attitude and continue working an inspiration', 'VBG JJ NN VBZ VBN NNP NNP POS JJ NN CC PRP$ NN TO VB DT JJ NN CC VB VBG DT NN', '0,4,10,20', NULL),
(245, 'The huge increase in popularity of specialty coffees contribution to the success of Starbucks, Barney’s and other coffee purveyors', 'DT JJ NN IN NN IN NN NNS NN TO DT NN IN NNP NNP POS CC JJ NN NNS', '1,8,12,16', NULL),
(246, 'After it had conclude work on the budget, the legislature adjourned until the next session', 'IN PRP VBD VBP NN IN DT NN DT NN VBN IN DT JJ NN', '3,8,10,11', NULL),
(247, 'Even when awarded a scholarship, a student generally must still paying for books, living expenses, and other costs', 'RB WRB VBN DT NN DT NN RB MD RB VBG IN NNS VBG NNS CC JJ NNS', '2,10,13,16', NULL),
(248, 'The government, along with a number of states, is fight a protracted legal battle with tobacco companies in order to obtain relief for the huge medical costs caused by smoking', 'DT NN IN IN DT NN IN NNS VBZ VB DT JJ JJ NN IN NN NNS IN NN TO VB NN IN DT JJ JJ NNS VBN IN NN', '9,11,20,21', NULL),
(249, 'The teachers are expecting to call tomorrow a meeting in order to review the disciplinary problems', 'DT NNS VBP VBG TO VB NN DT NN IN NN TO VB DT JJ NNS', '3,8,12,14', NULL),
(250, 'If the man had transported to the hospital sooner than he was, he could have survived the electrocution', 'IN DT NN VBD VBN TO DT NN RBR IN PRP VBD PRP MD VB VBN DT NN', '4,8,13,15', NULL),
(251, 'Florida’s timberlands suffered considerable damage from the wildfires of 1998, resulted from insufficient rainfall', 'NNP POS NNS VBD JJ NN IN DT NNS IN CD VBD IN JJ NNS', '2,3,10,12', NULL),
(252, 'The results must have already be received by the examining committee because the members seem to be continuing their determinations', 'DT NNS MD VB RB VB VBN IN DT VBG NN IN DT NNS VBP TO VB VBG PRP$ NNS', '5,9,14,17', NULL),
(253, 'She has scored up to five as much times as Robert on that exam previously', 'PRP VBZ VBN RP TO CD RB JJ NNS IN NNP IN DT NN RB', '2,8,11,12', NULL),
(254, 'Private couriers, extremely popular in large cities, traveling by bicycle carrying packets containing documents and other items from office to office', 'JJ NNS RB JJ IN JJ NNS VBG IN NN VBG NNS VBG NNS CC JJ NNS IN NN TO NN', '2,7,10,17', NULL),
(255, 'The expenses were too much high for the program to continue, so the administration decided to terminate some positions', 'DT NNS VBD RB RB JJ IN DT NN TO VB IN DT NN VBD TO VB DT NNS', '4,9,11,15', NULL),
(256, 'Because the high risk of fire during the drought, the officials ordered that no outside fire of any sort could be set', 'IN DT JJ NN IN NN IN DT NN DT NNS VBD IN DT JJ NN IN DT NN MD VB VBN', '0,6,11,21', NULL),
(257, 'Hurricanes almost veer always to the northeast at some point after traveling in a westerly direction across the water', 'NNPS RB VB RB TO DT NN IN DT NN IN VBG IN DT JJ NN IN DT NN', '3,8,11,16', NULL),
(258, 'The girl fell into the water cold, but was rescued immediately', 'DT NN VBD IN DT NN JJ CC VBD VBN RB', '3,9,10', NULL),
(259, 'During the entire hour three deposition, the witness steadfastly denied having known the defendant previously', 'IN DT JJ NN CD NN DT NN RB VBD VBG VBN DT NN RB', '4,8,10,14', NULL),
(260, 'The people will likely election Ellen the winner of the race', 'DT NNS MD RB NN NNP DT NN IN DT NN', '1,4,7,9', NULL),
(261, 'She was convenience hidden away when the social worker visited', 'PRP VBD NN VBN RB WRB DT JJ NN VBD', '2,3,5,9', NULL),
(262, 'Her weigh has increased remarkably since she began receiving treatment', 'PRP$ VB VBZ VBN RB IN PRP VBD VBG NN', '0,1,4,5', NULL),
(263, 'Research involving animals is useful when researchers developing medicines to combat illnesses of both animals and people', 'NNP VBG NNS VBZ JJ WRB NNS VBG NNS TO VB NNS IN DT NNS CC NNS', '1,3,5,10', NULL),
(264, 'As a company grows in size, it is important to maintain communicate among the various departments', 'IN DT NN VBZ IN NN PRP VBZ JJ TO VB VB IN DT JJ NNS', '0,4,11,12', NULL),
(265, 'In 1947, Jackie Robinson became a first Black American to play major league baseball', 'IN CD NNP NNP VBD DT JJ JJ JJ TO VB JJ NN NN', '0,5,9,11', NULL);
INSERT INTO `tb_collection` (`id`, `text`, `postext`, `underline`, `answer`) VALUES
(266, 'The passionate and exhuberant display of the orchestra conductor moving several members of the audience to tears', 'DT JJ CC JJ NN IN DT NN NN VBG JJ NNS IN DT NN TO NNS', '3,5,9,14', NULL),
(267, 'Listening to recorded books while driving is a means of utilize time wisely', 'VBG TO VBN NNS IN VBG VBZ DT NN IN VB NN RB', '2,8,10,12', NULL),
(268, 'Numismatics, the study of coins, can be very rewarding once a person becomes familiar with determining the date and type of a coin, as well as grade it', 'NNS DT NN IN NNS MD VB RB JJ IN DT NN VBZ JJ IN VBG DT NN CC NN IN DT NN RB RB IN NN PRP', '8,9,13,26', NULL),
(269, 'John Steinbeck he wrote down-to-earth accounts of individuals and families who suffered through the Great Depression', 'NNP NNP PRP VBD JJ NNS IN NNS CC NNS WP VBD IN DT NNP NNP', '3,5,7,11', NULL),
(270, 'Universities often ignore a student’s lack of scholastically ability when the student has great athletic potential in a sport that is important to the school', 'NNS RB VBP DT NN POS NN IN RB NN WRB DT NN VBZ JJ JJ NN IN DT NN WDT VBZ JJ TO DT NN', '5,7,14,19', NULL),
(271, 'Effective speaking and proficient writing is generally seen as requirements for a professor to achieve tenure', 'JJ NN CC JJ NN VBZ RB VBN IN NNS IN DT NN TO VB NN', '1,3,5,7', NULL),
(272, 'The knee is the recipient of constant pressure, which causes them to fail often and requires replacement with artificial parts', 'DT NN VBZ DT JJ IN JJ NN WDT VBZ PRP TO VB RB CC VBZ NN IN JJ NNS', '4,8,10,12', NULL),
(273, 'Hepatitis C generally occurs 20 to 30 year after one is exposed to the illness', 'NNP NNP RB VBZ CD TO CD NN IN CD VBZ VBN TO DT NN', '3,7,10,11', NULL),
(274, 'Bob is certain to be hired for the position because at his interview he displayed his talents in writing, speaking, organizing, delegating and to lead', 'NNP VBZ JJ TO VB VBN IN DT NN IN IN PRP$ NN PRP VBD PRP$ NNS IN VBG VBG VBG VBG CC TO VB', '8,9,14,24', NULL),
(275, 'Though the danger had passed, officials were hesitant to allow residents to return to their homes because they were unsure how much damage caused by the high winds', 'IN DT NN VBD VBN NNS VBD JJ TO VB NNS TO VB TO PRP$ NNS IN PRP VBD JJ WRB JJ NN VBN IN DT JJ NNS', '7,12,23', NULL),
(276, 'In the early morning, the hikers broke camp and began the long trek towards home, hoping to before noon arrive', 'IN DT JJ NN DT NNS VBD NN CC VBD DT JJ NN IN NN VBG TO IN NN VBP', '2,9,13,17', NULL),
(277, 'Without a doubt, the best way to do well in college to keep up constantly with the homework, read everything that is required, and regularly outline all the class notes', 'IN DT NN DT JJS NN TO VB RB IN NN TO VB RP RB IN DT NN VBD NN WDT VBZ VBN CC RB VB PDT DT NN NNS', '11,14,24', NULL),
(278, 'Students may buy used books if they had been readily available and correctly priced', 'NNS MD VB VBN NNS IN PRP VBD VBN RB JJ CC RB VBN', '3,8,9,13', NULL),
(279, 'The committee voted purchase the land next to the company’s existing building, but the resolution was not approved at the full Board meeting', 'DT NN VBD NN DT NN JJ TO DT NN POS VBG NN CC DT NN VBD RB VBN IN DT JJ NNP NN', '2,6,10,17', NULL),
(280, 'St.Augustine, Florida, known as oldest city in the United States, is home to the oldest schoolhouse, a fort called Castillo de San Marcos, and other areas of historical interest', 'NNP NNP VBN IN JJS NN IN DT NNP NNPS VBZ NN TO DT JJS NN DT NN VBN NNP IN NNP NNP CC JJ NNS IN JJ NN', '2,4,18,24', NULL),
(281, 'Attorneys who practice in the area of personal injury generally spending', 'NNS WP VBP IN DT NN IN JJ NN RB VBG', '1,3,8,10', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_collection`
--
ALTER TABLE `tb_collection`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_collection`
--
ALTER TABLE `tb_collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=282;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
