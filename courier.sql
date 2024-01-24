-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2024 at 01:40 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `courier`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`) VALUES
(1, 'Afghanistan'),
(2, 'Aland Islands'),
(3, 'Albania'),
(4, 'Algeria'),
(5, 'American Samoa'),
(6, 'Andorra'),
(7, 'Angola'),
(8, 'Anguilla'),
(9, 'Antarctica'),
(10, 'Antigua and Barbuda'),
(11, 'Argentina'),
(12, 'Armenia'),
(13, 'Aruba'),
(14, 'Australia'),
(15, 'Austria'),
(16, 'Azerbaijan'),
(17, 'Bahamas'),
(18, 'Bahrain'),
(19, 'Bangladesh'),
(20, 'Barbados'),
(21, 'Belarus'),
(22, 'Belgium'),
(23, 'Belize'),
(24, 'Benin'),
(25, 'Bermuda'),
(26, 'Bhutan'),
(27, 'Bolivia'),
(28, 'Bonaire, Sint Eustatius and Saba'),
(29, 'Bosnia and Herzegovina'),
(30, 'Botswana'),
(31, 'Bouvet Island'),
(32, 'Brazil'),
(33, 'British Indian Ocean Territory'),
(34, 'Brunei Darussalam'),
(35, 'Bulgaria'),
(36, 'Burkina Faso'),
(37, 'Burundi'),
(38, 'Cambodia'),
(39, 'Cameroon'),
(40, 'Canada'),
(41, 'Cape Verde'),
(42, 'Cayman Islands'),
(43, 'Central African Republic'),
(44, 'Chad'),
(45, 'Chile'),
(46, 'China'),
(47, 'Christmas Island'),
(48, 'Cocos (Keeling) Islands'),
(49, 'Colombia'),
(50, 'Comoros'),
(51, 'Congo'),
(52, 'Congo, Democratic Republic of the Congo'),
(53, 'Cook Islands'),
(54, 'Costa Rica'),
(55, 'Cote D\'Ivoire'),
(56, 'Croatia'),
(57, 'Cuba'),
(58, 'Curacao'),
(59, 'Cyprus'),
(60, 'Czech Republic'),
(61, 'Denmark'),
(62, 'Djibouti'),
(63, 'Dominica'),
(64, 'Dominican Republic'),
(65, 'Ecuador'),
(66, 'Egypt'),
(67, 'El Salvador'),
(68, 'Equatorial Guinea'),
(69, 'Eritrea'),
(70, 'Estonia'),
(71, 'Ethiopia'),
(72, 'Falkland Islands (Malvinas)'),
(73, 'Faroe Islands'),
(74, 'Fiji'),
(75, 'Finland'),
(76, 'France'),
(77, 'French Guiana'),
(78, 'French Polynesia'),
(79, 'French Southern Territories'),
(80, 'Gabon'),
(81, 'Gambia'),
(82, 'Georgia'),
(83, 'Germany'),
(84, 'Ghana'),
(85, 'Gibraltar'),
(86, 'Greece'),
(87, 'Greenland'),
(88, 'Grenada'),
(89, 'Guadeloupe'),
(90, 'Guam'),
(91, 'Guatemala'),
(92, 'Guernsey'),
(93, 'Guinea'),
(94, 'Guinea-Bissau'),
(95, 'Guyana'),
(96, 'Haiti'),
(97, 'Heard Island and Mcdonald Islands'),
(98, 'Holy See (Vatican City State)'),
(99, 'Honduras'),
(100, 'Hong Kong'),
(101, 'Hungary'),
(102, 'Iceland'),
(103, 'India'),
(104, 'Indonesia'),
(105, 'Iran, Islamic Republic of'),
(106, 'Iraq'),
(107, 'Ireland'),
(108, 'Isle of Man'),
(109, 'Israel'),
(110, 'Italy'),
(111, 'Jamaica'),
(112, 'Japan'),
(113, 'Jersey'),
(114, 'Jordan'),
(115, 'Kazakhstan'),
(116, 'Kenya'),
(117, 'Kiribati'),
(118, 'Korea, Democratic People\'s Republic of'),
(119, 'Korea, Republic of'),
(120, 'Kosovo'),
(121, 'Kuwait'),
(122, 'Kyrgyzstan'),
(123, 'Lao People\'s Democratic Republic'),
(124, 'Latvia'),
(125, 'Lebanon'),
(126, 'Lesotho'),
(127, 'Liberia'),
(128, 'Libyan Arab Jamahiriya'),
(129, 'Liechtenstein'),
(130, 'Lithuania'),
(131, 'Luxembourg'),
(132, 'Macao'),
(133, 'Macedonia, the Former Yugoslav Republic of'),
(134, 'Madagascar'),
(135, 'Malawi'),
(136, 'Malaysia'),
(137, 'Maldives'),
(138, 'Mali'),
(139, 'Malta'),
(140, 'Marshall Islands'),
(141, 'Martinique'),
(142, 'Mauritania'),
(143, 'Mauritius'),
(144, 'Mayotte'),
(145, 'Mexico'),
(146, 'Micronesia, Federated States of'),
(147, 'Moldova, Republic of'),
(148, 'Monaco'),
(149, 'Mongolia'),
(150, 'Montenegro'),
(151, 'Montserrat'),
(152, 'Morocco'),
(153, 'Mozambique'),
(154, 'Myanmar'),
(155, 'Namibia'),
(156, 'Nauru'),
(157, 'Nepal'),
(158, 'Netherlands'),
(159, 'Netherlands Antilles'),
(160, 'New Caledonia'),
(161, 'New Zealand'),
(162, 'Nicaragua'),
(163, 'Niger'),
(164, 'Nigeria'),
(165, 'Niue'),
(166, 'Norfolk Island'),
(167, 'Northern Mariana Islands'),
(168, 'Norway'),
(169, 'Oman'),
(170, 'Pakistan'),
(171, 'Palau'),
(172, 'Palestinian Territory, Occupied'),
(173, 'Panama'),
(174, 'Papua New Guinea'),
(175, 'Paraguay'),
(176, 'Peru'),
(177, 'Philippines'),
(178, 'Pitcairn'),
(179, 'Poland'),
(180, 'Portugal'),
(181, 'Puerto Rico'),
(182, 'Qatar'),
(183, 'Reunion'),
(184, 'Romania'),
(185, 'Russian Federation'),
(186, 'Rwanda'),
(187, 'Saint Barthelemy'),
(188, 'Saint Helena'),
(189, 'Saint Kitts and Nevis'),
(190, 'Saint Lucia'),
(191, 'Saint Martin'),
(192, 'Saint Pierre and Miquelon'),
(193, 'Saint Vincent and the Grenadines'),
(194, 'Samoa'),
(195, 'San Marino'),
(196, 'Sao Tome and Principe'),
(197, 'Saudi Arabia'),
(198, 'Senegal'),
(199, 'Serbia'),
(200, 'Serbia and Montenegro'),
(201, 'Seychelles'),
(202, 'Sierra Leone'),
(203, 'Singapore'),
(204, 'Sint Maarten'),
(205, 'Slovakia'),
(206, 'Slovenia'),
(207, 'Solomon Islands'),
(208, 'Somalia'),
(209, 'South Africa'),
(210, 'South Georgia and the South Sandwich Islands'),
(211, 'South Sudan'),
(212, 'Spain'),
(213, 'Sri Lanka'),
(214, 'Sudan'),
(215, 'Suriname'),
(216, 'Svalbard and Jan Mayen'),
(217, 'Swaziland'),
(218, 'Sweden'),
(219, 'Switzerland'),
(220, 'Syrian Arab Republic'),
(221, 'Taiwan, Province of China'),
(222, 'Tajikistan'),
(223, 'Tanzania, United Republic of'),
(224, 'Thailand'),
(225, 'Timor-Leste'),
(226, 'Togo'),
(227, 'Tokelau'),
(228, 'Tonga'),
(229, 'Trinidad and Tobago'),
(230, 'Tunisia'),
(231, 'Turkey'),
(232, 'Turkmenistan'),
(233, 'Turks and Caicos Islands'),
(234, 'Tuvalu'),
(235, 'Uganda'),
(236, 'Ukraine'),
(237, 'United Arab Emirates'),
(238, 'United Kingdom'),
(239, 'United States'),
(240, 'United States Minor Outlying Islands'),
(241, 'Uruguay'),
(242, 'Uzbekistan'),
(243, 'Vanuatu'),
(244, 'Venezuela'),
(245, 'Viet Nam'),
(246, 'Virgin Islands, British'),
(247, 'Virgin Islands, U.s.'),
(248, 'Wallis and Futuna'),
(249, 'Western Sahara'),
(250, 'Yemen'),
(251, 'Zambia'),
(252, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `discussion`
--

CREATE TABLE `discussion` (
  `id` int(11) NOT NULL,
  `discussion_header` varchar(255) DEFAULT NULL,
  `discussion_body` text DEFAULT NULL,
  `thread_id` int(11) DEFAULT NULL,
  `byUser_id` int(11) DEFAULT NULL,
  `lastActive` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `thread`
--

CREATE TABLE `thread` (
  `id` int(11) NOT NULL,
  `header` varchar(255) DEFAULT NULL,
  `body` text DEFAULT NULL,
  `byUser_id` int(11) DEFAULT NULL,
  `thread_type_id` int(11) DEFAULT NULL,
  `followBy_id` int(11) DEFAULT NULL,
  `viewBy` int(11) DEFAULT NULL,
  `date_created` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `thread`
--

INSERT INTO `thread` (`id`, `header`, `body`, `byUser_id`, `thread_type_id`, `followBy_id`, `viewBy`, `date_created`) VALUES
(3, 'Genisis ', 'In the beginning, There is only I.', 41, 7, NULL, NULL, '2024-01-24'),
(5, 'Entertainments', 'Something Cute and Funny.', 41, 1, NULL, NULL, '2024-01-24'),
(6, 'Basketball ', 'Basketball was invented by James Naismith in Springfield, Massachusetts, in 1891. Within a few decades, the new game became popular throughout the United States as an indoor sport. The popularity spread overseas and the International Basketball Federation (FIBA) was organized in 1932 in Geneva, Switzerland.', 41, 6, NULL, NULL, '2024-01-24');
INSERT INTO `thread` (`id`, `header`, `body`, `byUser_id`, `thread_type_id`, `followBy_id`, `viewBy`, `date_created`) VALUES
(7, 'The Bee Movie', 'Scripts.com\r\nBee Movie\r\nBy Jerry Seinfeld\r\n\r\nNARRATOR:\r\n(Black screen with text; The sound of buzzing bees can be heard)\r\nAccording to all known laws\r\nof aviation,\r\n :\r\nthere is no way a bee\r\nshould be able to fly.\r\n :\r\nIts wings are too small to get\r\nits fat little body off the ground.\r\n :\r\nThe bee, of course, flies anyway\r\n :\r\nbecause bees don\'t care\r\nwhat humans think is impossible.\r\nBARRY BENSON:\r\n(Barry is picking out a shirt)\r\nYellow, black. Yellow, black.\r\nYellow, black. Yellow, black.\r\n :\r\nOoh, black and yellow!\r\nLet\'s shake it up a little.\r\nJANET BENSON:\r\nBarry! Breakfast is ready!\r\nBARRY:\r\nComing!\r\n :\r\nHang on a second.\r\n(Barry uses his antenna like a phone)\r\n :\r\nHello?\r\nADAM FLAYMAN:\r\n\r\n(Through phone)\r\n- Barry?\r\nBARRY:\r\n- Adam?\r\nADAM:\r\n- Can you believe this is happening?\r\nBARRY:\r\n- I can\'t. I\'ll pick you up.\r\n(Barry flies down the stairs)\r\n :\r\nMARTIN BENSON:\r\nLooking sharp.\r\nJANET:\r\nUse the stairs. Your father\r\npaid good money for those.\r\nBARRY:\r\nSorry. I\'m excited.\r\nMARTIN:\r\nHere\'s the graduate.\r\nWe\'re very proud of you, son.\r\n :\r\nA perfect report card, all B\'s.\r\nJANET:\r\nVery proud.\r\n(Rubs Barry\'s hair)\r\nBARRY=\r\nMa! I got a thing going here.\r\nJANET:\r\n- You got lint on your fuzz.\r\nBARRY:\r\n- Ow! That\'s me!\r\n\r\nJANET:\r\n- Wave to us! We\'ll be in row 118,000.\r\n- Bye!\r\n(Barry flies out the door)\r\nJANET:\r\nBarry, I told you,\r\nstop flying in the house!\r\n(Barry drives through the hive,and is waved at by Adam who is reading a\r\nnewspaper)\r\nBARRY==\r\n- Hey, Adam.\r\nADAM:\r\n- Hey, Barry.\r\n(Adam gets in Barry\'s car)\r\n :\r\n- Is that fuzz gel?\r\nBARRY:\r\n- A little. Special day, graduation.\r\nADAM:\r\nNever thought I\'d make it.\r\n(Barry pulls away from the house and continues driving)\r\nBARRY:\r\nThree days grade school,\r\nthree days high school...\r\nADAM:\r\nThose were awkward.\r\nBARRY:\r\nThree days college. I\'m glad I took\r\na day and hitchhiked around the hive.\r\nADAM==\r\nYou did come back different.\r\n(Barry and Adam pass by Artie, who is jogging)\r\nARTIE:\r\n- Hi, Barry!\r\n\r\nBARRY:\r\n- Artie, growing a mustache? Looks good.\r\nADAM:\r\n- Hear about Frankie?\r\nBARRY:\r\n- Yeah.\r\nADAM==\r\n- You going to the funeral?\r\nBARRY:\r\n- No, I\'m not going to his funeral.\r\n :\r\nEverybody knows,\r\nsting someone, you die.\r\n :\r\nDon\'t waste it on a squirrel.\r\nSuch a hothead.\r\nADAM:\r\nI guess he could have\r\njust gotten out of the way.\r\n(The car does a barrel roll on the loop-shaped bridge and lands on the\r\nhighway)\r\n :\r\nI love this incorporating\r\nan amusement park into our regular day.\r\nBARRY:\r\nI guess that\'s why they say we don\'t need vacations.\r\n(Barry parallel parks the car and together they fly over the graduating\r\nstudents)\r\nBoy, quite a bit of pomp...\r\nunder the circumstances.\r\n(Barry and Adam sit down and put on their hats)\r\n :\r\n- Well, Adam, today we are men.\r\n\r\nADAM:\r\n- We are!\r\nBARRY=\r\n- Bee-men.\r\n=ADAM=\r\n- Amen!\r\nBARRY AND ADAM:\r\nHallelujah!\r\n(Barry and Adam both have a happy spasm)\r\nANNOUNCER:\r\nStudents, faculty, distinguished bees,\r\n :\r\nplease welcome Dean Buzzwell.\r\nDEAN BUZZWELL:\r\nWelcome, New Hive Oity\r\ngraduating class of...\r\n :\r\n...9:\r\n :\r\nThat concludes our ceremonies.\r\n :\r\nAnd begins your career\r\nat Honex Industries!\r\nADAM:\r\nWill we pick our job today?\r\n(Adam and Barry get into a tour bus)\r\nBARRY=\r\nI heard it\'s just orientation.\r\n(Tour buses rise out of the ground and the students are automatically\r\nloaded into the buses)\r\nTOUR GUIDE:\r\nHeads up! Here we go.\r\n\r\nANNOUNCER:\r\nKeep your hands and antennas\r\ninside the tram at all times.\r\nBARRY:\r\n- Wonder what it\'ll be like?\r\nADAM:\r\n- A little scary.\r\nTOUR GUIDE==\r\nWelcome to Honex,\r\na division of Honesco\r\n :\r\nand a part of the Hexagon Group.\r\nBarry:\r\nThis is it!\r\nBARRY AND ADAM:\r\nWow.\r\nBARRY:\r\nWow.\r\n(The bus drives down a road an on either side are the Bee\'s massive\r\ncomplicated Honey-making machines)\r\nTOUR GUIDE:\r\nWe know that you, as a bee,\r\nhave worked your whole life\r\n :\r\nto get to the point where you\r\ncan work for your whole life.\r\n :\r\nHoney begins when our valiant Pollen\r\nJocks bring the nectar to the hive.\r\n :\r\nOur top-secret formula\r\n :\r\nis automatically color-corrected,\r\n\r\nscent-adjusted and bubble-contoured\r\n :\r\ninto this soothing sweet syrup\r\n :\r\nwith its distinctive\r\ngolden glow you know as...\r\nEVERYONE ON BUS:\r\nHoney!\r\n(The guide has been collecting honey into a bottle and she throws it into\r\nthe crowd on the bus and it is caught by a girl in the back)\r\nADAM:\r\n- That girl was hot.\r\nBARRY:\r\n- She\'s my cousin!\r\nADAM==\r\n- She is?\r\nBARRY:\r\n- Yes, we\'re all cousins.\r\nADAM:\r\n- Right. You\'re right.\r\nTOUR GUIDE:\r\n- At Honex, we constantly strive\r\n :\r\nto improve every aspect\r\nof bee existence.\r\n :\r\nThese bees are stress-testing\r\na new helmet technology.\r\n(The bus passes by a Bee wearing a helmet who is being smashed into the\r\nground with fly-swatters, newspapers and boots. He lifts a thumbs up but\r\nyou can hear him groan)\r\n :\r\nADAM==\r\n\r\n- What do you think he makes?\r\nBARRY:\r\n- Not enough.\r\nTOUR GUIDE:\r\nHere we have our latest advancement,\r\nthe Krelman.\r\n(They pass by a turning wheel with Bees standing on pegs, who are each\r\nwearing a finger-shaped hat)\r\nBarry:\r\n- Wow, What does that do?\r\nTOUR GUIDE:\r\n- Catches that little strand of honey\r\n :\r\nthat hangs after you pour it.\r\nSaves us millions.\r\nADAM:\r\n(Intrigued)\r\nCan anyone work on the Krelman?\r\nTOUR GUIDE:\r\nOf course. Most bee jobs are\r\nsmall ones.\r\nBut bees know that every small job,\r\nif it\'s done well, means a lot.\r\n :\r\nBut choose carefully\r\n :\r\nbecause you\'ll stay in the job\r\nyou pick for the rest of your life.\r\n(Everyone claps except for Barry)\r\nBARRY:\r\nThe same job the rest of your life?\r\nI didn\'t know that.\r\nADAM:\r\n\r\nWhat\'s the difference?\r\nTOUR GUIDE:\r\nYou\'ll be happy to know that bees,\r\nas a species, haven\'t had one day off\r\n :\r\nin 27 million years.\r\nBARRY:\r\n(Upset)\r\nSo you\'ll just work us to death?\r\n :\r\nWe\'ll sure try.\r\n(Everyone on the bus laughs except Barry. Barry and Adam are walking back\r\nhome together)\r\nADAM:\r\nWow! That blew my mind!\r\nBARRY:\r\n\"What\'s the difference?\"\r\nHow can you say that?\r\n :\r\nOne job forever?\r\nThat\'s an insane choice to have to make.\r\nADAM:\r\nI\'m relieved. Now we only have\r\nto make one decision in life.\r\nBARRY:\r\nBut, Adam, how could they\r\nnever have told us that?\r\nADAM:\r\nWhy would you question anything?\r\nWe\'re bees.\r\n :\r\nWe\'re the most perfectly\r\nfunctioning society on Earth.\r\n\r\nBARRY:\r\nYou ever think maybe things\r\nwork a little too well here?\r\nADAM:\r\nLike what? Give me one example.\r\n(Barry and Adam stop walking and it is revealed to the audience that\r\nhundreds of cars are speeding by and narrowly missing them in perfect\r\nunison)\r\nBARRY:\r\nI don\'t know. But you know\r\nwhat I\'m talking about.\r\nANNOUNCER:\r\nPlease clear the gate.\r\nRoyal Nectar Force on approach.\r\nBARRY:\r\nWait a second. Check it out.\r\n(The Pollen jocks fly in, circle around and landing in line)\r\n :\r\n- Hey, those are Pollen Jocks!\r\nADAM:\r\n- Wow.\r\n :\r\nI\'ve never seen them this close.\r\nBARRY:\r\nThey know what it\'s like\r\noutside the hive.\r\nADAM:\r\nYeah, but some don\'t come back.\r\nGIRL BEES:\r\n- Hey, Jocks!\r\n- Hi, Jocks!\r\n(The Pollen Jocks hook up their backpacks to machines that pump the nectar\r\nto trucks, which drive away)\r\n\r\nLOU LO DUVA:\r\nYou guys did great!\r\n :\r\nYou\'re monsters!\r\nYou\'re sky freaks!\r\nI love it!\r\n(Punching the Pollen Jocks in joy)\r\nI love it!\r\nADAM:\r\n- I wonder where they were.\r\nBARRY:\r\n- I don\'t know.\r\n :\r\nTheir day\'s not planned.\r\n :\r\nOutside the hive, flying who knows\r\nwhere, doing who knows what.\r\n :\r\nYou can\'t just decide to be a Pollen\r\nJock. You have to be bred for that.\r\nADAM==\r\nRight.\r\n(Barry and Adam are covered in some pollen that floated off of the Pollen\r\nJocks)\r\nBARRY:\r\nLook at that. That\'s more pollen\r\nthan you and I will see in a lifetime.\r\nADAM:\r\nIt\'s just a status symbol.\r\nBees make too much of it.\r\nBARRY:\r\nPerhaps. Unless you\'re wearing it\r\nand the ladies see you wearing it.\r\n(Barry waves at 2 girls standing a little away from them)\r\n\r\nADAM==\r\nThose ladies?\r\nAren\'t they our cousins too?\r\nBARRY:\r\nDistant. Distant.\r\nPOLLEN JOCK #1:\r\nLook at these two.\r\nPOLLEN JOCK #2:\r\n- Couple of Hive Harrys.\r\nPOLLEN JOCK #1:\r\n- Let\'s have fun with them.\r\nGIRL BEE #1:\r\nIt must be dangerous\r\nbeing a Pollen Jock.\r\nBARRY:\r\nYeah. Once a bear pinned me\r\nagainst a mushroom!\r\n :\r\nHe had a paw on my throat,\r\nand with the other, he was slapping me!\r\n(Slaps Adam with his hand to represent his scenario)\r\nGIRL BEE #2:\r\n- Oh, my!\r\nBARRY:\r\n- I never thought I\'d knock him out.\r\nGIRL BEE #1:\r\n(Looking at Adam)\r\nWhat were you doing during this?\r\nADAM:\r\nObviously I was trying to alert the authorities.\r\nBARRY:\r\nI can autograph that.\r\n\r\n(The pollen jocks walk up to Barry and Adam, they pretend that Barry and\r\nAdam really are pollen jocks.)\r\nPOLLEN JOCK #1:\r\nA little gusty out there today,\r\nwasn\'t it, comrades?\r\nBARRY:\r\nYeah. Gusty.\r\nPOLLEN JOCK #1:\r\nWe\'re hitting a sunflower patch\r\nsix miles from here tomorrow.\r\nBARRY:\r\n- Six miles, huh?\r\nADAM:\r\n- Barry!\r\nPOLLEN JOCK #2:\r\nA puddle jump for us,\r\nbut maybe you\'re not up for it.\r\nBARRY:\r\n- Maybe I am.\r\nADAM:\r\n- You are not!\r\nPOLLEN JOCK #1:\r\nWe\'re going 0900 at J-Gate.\r\n :\r\nWhat do you think, buzzy-boy?\r\nAre you bee enough?\r\nBARRY:\r\nI might be. It all depends\r\non what 0900 means.\r\n(The scene cuts to Barry looking out on the hive-city from his balcony at\r\nnight)\r\nMARTIN:\r\n\r\nHey, Honex!\r\nBARRY:\r\nDad, you surprised me.\r\nMARTIN:\r\nYou decide what you\'re interested in?\r\nBARRY:\r\n- Well, there\'s a lot of choices.\r\n- But you only get one.\r\n :\r\nDo you ever get bored\r\ndoing the same job every day?\r\nMARTIN:\r\nSon, let me tell you about stirring.\r\n :\r\nYou grab that stick, and you just\r\nmove it around, and you stir it around.\r\n :\r\nYou get yourself into a rhythm.\r\nIt\'s a beautiful thing.\r\nBARRY:\r\nYou know, Dad,\r\nthe more I think about it,\r\n :\r\nmaybe the honey field\r\njust isn\'t right for me.\r\nMARTIN:\r\nYou were thinking of what,\r\nmaking balloon animals?\r\n :\r\nThat\'s a bad job\r\nfor a guy with a stinger.\r\n :\r\n\r\nJanet, your son\'s not sure\r\nhe wants to go into honey!\r\nJANET:\r\n- Barry, you are so funny sometimes.\r\nBARRY:\r\n- I\'m not trying to be funny.\r\nMARTIN:\r\nYou\'re not funny! You\'re going\r\ninto honey. Our son, the stirrer!\r\nJANET:\r\n- You\'re gonna be a stirrer?\r\nBARRY:\r\n- No one\'s listening to me!\r\nMARTIN:\r\nWait till you see the sticks I have.\r\nBARRY:\r\nI could say anything right now.\r\nI\'m gonna get an ant tattoo!\r\n(Barry\'s parents don\'t listen to him and continue to ramble on)\r\nMARTIN:\r\nLet\'s open some honey and celebrate!\r\nBARRY:\r\nMaybe I\'ll pierce my thorax.\r\nShave my antennae.\r\n :\r\nShack up with a grasshopper. Get\r\na gold tooth and call everybody \"dawg\"!\r\nJANET:\r\nI\'m so proud.\r\n(The scene cuts to Barry and Adam waiting in line to get a job)\r\nADAM:\r\n- We\'re starting work today!\r\n\r\nBARRY:\r\n- Today\'s the day.\r\nADAM:\r\nCome on! All the good jobs\r\nwill be gone.\r\nBARRY:\r\nYeah, right.\r\nJOB LISTER:\r\nPollen counting, stunt bee, pouring,\r\nstirrer, front desk, hair removal...\r\nBEE IN FRONT OF LINE:\r\n- Is it still available?\r\nJOB LISTER:\r\n- Hang on. Two left!\r\n :\r\nOne of them\'s yours! Congratulations!\r\nStep to the side.\r\nADAM:\r\n- What\'d you get?\r\nBEE IN FRONT OF LINE:\r\n- Picking crud out. Stellar!\r\n(He walks away)\r\nADAM:\r\nWow!\r\nJOB LISTER:\r\nCouple of newbies?\r\nADAM:\r\nYes, sir! Our first day! We are ready!\r\nJOB LISTER:\r\nMake your choice.\r\n(Adam and Barry look up at the job board. There are hundreds of constantly\r\nchanging panels that contain available or unavailable jobs. It looks very\r\nconfusing)\r\n\r\nADAM:\r\n- You want to go first?\r\nBARRY:\r\n- No, you go.\r\nADAM:\r\nOh, my. What\'s available?\r\nJOB LISTER:\r\nRestroom attendant\'s open,\r\nnot for the reason you think.\r\nADAM:\r\n- Any chance of getting the Krelman?\r\nJOB LISTER:\r\n- Sure, you\'re on.\r\n(Puts the Krelman finger-hat on Adam\'s head)\r\n(Suddenly the sign for Krelman closes out)\r\n :\r\nI\'m sorry, the Krelman just closed out.\r\n(Takes Adam\'s hat off)\r\nWax monkey\'s always open.\r\nADAM:\r\nThe Krelman opened up again.\r\n :\r\nWhat happened?\r\nJOB LISTER:\r\nA bee died. Makes an opening. See?\r\nHe\'s dead. Another dead one.\r\n :\r\nDeady. Deadified. Two more dead.\r\n :\r\nDead from the neck up.\r\nDead from the neck down. That\'s life!\r\n\r\nADAM:\r\nOh, this is so hard!\r\n(Barry remembers what the Pollen Jock offered him and he flies off)\r\nHeating, cooling,\r\nstunt bee, pourer, stirrer,\r\n :\r\nhumming, inspector number seven,\r\nlint coordinator, stripe supervisor,\r\n :\r\nmite wrangler. Barry, what\r\ndo you think I should... Barry?\r\n(Adam turns around and sees Barry flying away)\r\n :\r\nBarry!\r\nPOLLEN JOCK:\r\nAll right, we\'ve got the sunflower patch\r\nin quadrant nine...\r\nADAM:\r\n(Through phone)\r\nWhat happened to you?\r\nWhere are you?\r\nBARRY:\r\n- I\'m going out.\r\nADAM:\r\n- Out? Out where?\r\nBARRY:\r\n- Out there.\r\nADAM:\r\n- Oh, no!\r\nBARRY:\r\nI have to, before I go\r\nto work for the rest of my life.\r\nADAM:\r\n\r\nYou\'re gonna die! You\'re crazy!\r\n(Barry hangs up)\r\nHello?\r\nPOLLEN JOCK #2:\r\nAnother call coming in.\r\n :\r\nIf anyone\'s feeling brave,\r\nthere\'s a Korean deli on 83rd\r\n :\r\nthat gets their roses today.\r\nBARRY:\r\nHey, guys.\r\nPOLLEN JOCK #1 ==\r\n- Look at that.\r\nPOLLEN JOCK #2:\r\n- Isn\'t that the kid we saw yesterday?\r\nLOU LO DUVA:\r\nHold it, son, flight deck\'s restricted.\r\nPOLLEN JOCK #1:\r\nIt\'s OK, Lou. We\'re gonna take him up.\r\n(Puts hand on Barry\'s shoulder)\r\nLOU LO DUVA:\r\n(To Barry) Really? Feeling lucky, are you?\r\nBEE WITH CLIPBOARD:\r\n(To Barry) Sign here, here. Just initial that.\r\n :\r\n- Thank you.\r\nLOU LO DUVA:\r\n- OK.\r\n :\r\nYou got a rain advisory today,\r\n :\r\n\r\nand as you all know,\r\nbees cannot fly in rain.\r\n :\r\nSo be careful. As always,\r\nwatch your brooms,\r\n :\r\nhockey sticks, dogs,\r\nbirds, bears and bats.\r\n :\r\nAlso, I got a couple of reports\r\nof root beer being poured on us.\r\n :\r\nMurphy\'s in a home because of it,\r\nbabbling like a cicada!\r\nBARRY:\r\n- That\'s awful.\r\nLOU LO DUVA:\r\n(Still talking through megaphone)\r\n- And a reminder for you rookies,\r\n :\r\nbee law number one,\r\nabsolutely no talking to humans!\r\n :\r\nAll right, launch positions!\r\nPOLLEN JOCKS:\r\n(The Pollen Jocks run into formation)\r\n :\r\nBuzz, buzz, buzz, buzz! Buzz, buzz,\r\nbuzz, buzz! Buzz, buzz, buzz, buzz!\r\nLOU LU DUVA:\r\nBlack and yellow!\r\nPOLLEN JOCKS:\r\n\r\nHello!\r\nPOLLEN JOCK #1:\r\n(To Barry)You ready for this, hot shot?\r\nBARRY:\r\nYeah. Yeah, bring it on.\r\nPOLLEN JOCK\'s:\r\nWind, check.\r\n :\r\n- Antennae, check.\r\n- Nectar pack, check.\r\n :\r\n- Wings, check.\r\n- Stinger, check.\r\nBARRY:\r\nScared out of my shorts, check.\r\nLOU LO DUVA:\r\nOK, ladies,\r\n :\r\nlet\'s move it out!\r\n :\r\nPound those petunias,\r\nyou striped stem-suckers!\r\n :\r\nAll of you, drain those flowers!\r\n(The pollen jocks fly out of the hive)\r\nBARRY:\r\nWow! I\'m out!\r\n :\r\nI can\'t believe I\'m out!\r\n :\r\nSo blue.\r\n\r\n :\r\nI feel so fast and free!\r\n :\r\nBox kite!\r\n(Barry flies through the kite)\r\n :\r\nWow!\r\n :\r\nFlowers!\r\n(A pollen jock puts on some high tech goggles that shows flowers similar to\r\nheat sink goggles.)\r\nPOLLEN JOCK:\r\nThis is Blue Leader.\r\nWe have roses visual.\r\n :\r\nBring it around 30 degrees and hold.\r\n :\r\nRoses!\r\nPOLLEN JOCK #1:\r\n30 degrees, roger. Bringing it around.\r\n :\r\nStand to the side, kid.\r\nIt\'s got a bit of a kick.\r\n(The pollen jock fires a high-tech gun at the flower, shooting tubes that\r\nsuck up the nectar from the flower and collects it into a pouch on the gun)\r\nBARRY:\r\nThat is one nectar collector!\r\nPOLLEN JOCK #1==\r\n- Ever see pollination up close?\r\nBARRY:\r\n- No, sir.\r\nPOLLEN JOCK #1:\r\n\r\n(Barry and the Pollen jock fly over the field, the pollen jock sprinkles\r\npollen as he goes)\r\n :\r\nI pick up some pollen here, sprinkle it\r\nover here. Maybe a dash over there,\r\n :\r\na pinch on that one.\r\nSee that? It\'s a little bit of magic.\r\nBARRY:\r\nThat\'s amazing. Why do we do that?\r\nPOLLEN JOCK #1:\r\nThat\'s pollen power. More pollen, more\r\nflowers, more nectar, more honey for us.\r\nBARRY:\r\nCool.\r\nPOLLEN JOCK #1:\r\nI\'m picking up a lot of bright yellow.\r\ncould be daisies. Don\'t we need those?\r\nPOLLEN JOCK #2:\r\nCopy that visual.\r\n :\r\nWait. One of these flowers\r\nseems to be on the move.\r\nPOLLEN JOCK #1:\r\nSay again? You\'re reporting\r\na moving flower?\r\nPOLLEN JOCK #2:\r\nAffirmative.\r\n(The Pollen jocks land near the \"flowers\" which, to the audience are\r\nobviously just tennis balls)\r\nKEN:\r\n(In the distance) That was on the line!\r\n\r\nPOLLEN JOCK #1:\r\nThis is the coolest. What is it?\r\nPOLLEN JOCK #2:\r\nI don\'t know, but I\'m loving this color.\r\n :\r\nIt smells good.\r\nNot like a flower, but I like it.\r\nPOLLEN JOCK #1:\r\nYeah, fuzzy.\r\n(Sticks his hand on the ball but it gets stuck)\r\nPOLLEN JOCK #3==\r\nChemical-y.\r\n(The pollen jock finally gets his hand free from the tennis ball)\r\nPOLLEN JOCK #1:\r\nCareful, guys. It\'s a little grabby.\r\n(The pollen jocks turn around and see Barry lying his entire body on top of\r\none of the tennis balls)\r\nPOLLEN JOCK #2:\r\nMy sweet lord of bees!\r\nPOLLEN JOCK #3:\r\nCandy-brain, get off there!\r\nPOLLEN JOCK #1:\r\n(Pointing upwards)\r\nProblem!\r\n(A human hand reaches down and grabs the tennis ball that Barry is stuck\r\nto)\r\nBARRY:\r\n- Guys!\r\nPOLLEN JOCK #2:\r\n- This could be bad.\r\nPOLLEN JOCK #3:\r\nAffirmative.\r\n(Vanessa Bloome starts bouncing the tennis ball, not knowing Barry is stick\r\nto it)\r\n\r\nBARRY==\r\nVery close.\r\n :\r\nGonna hurt.\r\n :\r\nMama\'s little boy.\r\n(Barry is being hit back and forth by two humans playing tennis. He is\r\nstill stuck to the ball)\r\nPOLLEN JOCK #1:\r\nYou are way out of position, rookie!\r\nKEN:\r\nComing in at you like a MISSILE!\r\n(Barry flies past the pollen jocks, still stuck to the ball)\r\nBARRY:\r\n(In slow motion)\r\nHelp me!\r\nPOLLEN JOCK #2:\r\nI don\'t think these are flowers.\r\nPOLLEN JOCK #3:\r\n- Should we tell him?\r\nPOLLEN JOCK #1:\r\n- I think he knows.\r\nBARRY:\r\nWhat is this?!\r\nKEN:\r\nMatch point!\r\n :\r\nYou can start packing up, honey,\r\nbecause you\'re about to EAT IT!\r\n(A pollen jock coughs which confused Ken and he hits the ball the wrong way\r\nwith Barry stuck to it and it goes flying into the city)\r\nBARRY:\r\n\r\nYowser!\r\n(Barry bounces around town and gets stuck in the engine of a car. He flies\r\ninto the air conditioner and sees a bug that was frozen in there)\r\nBARRY:\r\nEw, gross.\r\n(The man driving the car turns on the air conditioner which blows Barry\r\ninto the car)\r\nGIRL IN CAR:\r\nThere\'s a bee in the car!\r\n :\r\n- Do something!\r\nDAD DRIVING CAR:\r\n- I\'m driving!\r\nBABY GIRL:\r\n(Waving at Barry)\r\n- Hi, bee.\r\n(Barry smiles and waves at the baby girl)\r\nGUY IN BACK OF CAR:\r\n- He\'s back here!\r\n :\r\nHe\'s going to sting me!\r\nGIRL IN CAR:\r\nNobody move. If you don\'t move,\r\nhe won\'t sting you. Freeze!\r\n(Barry freezes as well, hovering in the middle of the car)\r\n :\r\nGRANDMA IN CAR==\r\nHe blinked!\r\n(The grandma whips out some bee-spray and sprays everywhere in the car,\r\nclimbing into the front seat, still trying to spray Barry)\r\nGIRL IN CAR:\r\nSpray him, Granny!\r\nDAD DRIVING THE CAR:\r\nWhat are you doing?!\r\n(Barry escapes the car through the air conditioner and is flying high above\r\n\r\nthe ground, safe.)\r\nBARRY:\r\nWow... the tension level\r\nout here is unbelievable.\r\n(Barry sees that storm clouds are gathering and he can see rain clouds\r\nmoving into this direction)\r\n :\r\nI gotta get home.\r\n :\r\nCan\'t fly in rain.\r\n :\r\nCan\'t fly in rain.\r\n(A rain drop hits Barry and one of his wings is damaged)\r\n :\r\nCan\'t fly in rain.\r\n(A second rain drop hits Barry again and he spirals downwards)\r\nMayday! Mayday! Bee going down!\r\n(WW2 plane sound effects are played as he plummets, and he crash-lands on a\r\nplant inside an apartment near the window)\r\nVANESSA BLOOME:\r\nKen, could you close\r\nthe window please?\r\nKEN==\r\nHey, check out my new resume.\r\nI made it into a fold-out brochure.\r\n :\r\nYou see?\r\n(Folds brochure resume out)\r\nFolds out.\r\n(Ken closes the window, trapping Barry inside)\r\nBARRY:\r\nOh, no. More humans. I don\'t need this.\r\n(Barry tries to fly away but smashes into the window and falls again)\r\n :\r\nWhat was that?\r\n\r\n(Barry keeps trying to fly out the window but he keeps being knocked back\r\nbecause the window is closed)\r\nMaybe this time. This time. This time.\r\nThis time! This time! This...\r\n :\r\nDrapes!\r\n(Barry taps the glass. He doesn\'t understand what it is)\r\nThat is diabolical.\r\nKEN:\r\nIt\'s fantastic. It\'s got all my special\r\nskills, even my top-ten favorite movies.\r\nANDY:\r\nWhat\'s number one? Star Wars?\r\nKEN:\r\nNah, I don\'t go for that...\r\n(Ken makes finger guns and makes \"pew pew pew\" sounds and then stops)\r\n :\r\n...kind of stuff.\r\nBARRY:\r\nNo wonder we shouldn\'t talk to them.\r\nThey\'re out of their minds.\r\nKEN:\r\nWhen I leave a job interview, they\'re\r\nflabbergasted, can\'t believe what I say.\r\nBARRY:\r\n(Looking at the light on the ceiling)\r\nThere\'s the sun. Maybe that\'s a way out.\r\n(Starts flying towards the lightbulb)\r\n :\r\nI don\'t remember the sun\r\nhaving a big 75 on it.\r\n(Barry hits the lightbulb and falls into the dip on the table that the\r\nhumans are sitting at)\r\nKEN:\r\n\r\nI predicted global warming.\r\n :\r\nI could feel it getting hotter.\r\nAt first I thought it was just me.\r\n(Andy dips a chip into the bowl and scoops up some dip with Barry on it and\r\nis about to put it in his mouth)\r\n :\r\nWait! Stop! Bee!\r\n(Andy drops the chip with Barry in fear and backs away. All the humans\r\nfreak out)\r\n :\r\nStand back. These are winter boots.\r\n(Ken has winter boots on his hands and he is about to smash the bee but\r\nVanessa saves him last second)\r\nVANESSA:\r\nWait!\r\n :\r\nDon\'t kill him!\r\n(Vanessa puts Barry in a glass to protect him)\r\nKEN:\r\nYou know I\'m allergic to them!\r\nThis thing could kill me!\r\nVANESSA:\r\nWhy does his life have\r\nless value than yours?\r\nKEN:\r\nWhy does his life have any less value\r\nthan mine? Is that your statement?\r\nVANESSA:\r\nI\'m just saying all life has value. You\r\ndon\'t know what he\'s capable of feeling.\r\n(Vanessa picks up Ken\'s brochure and puts it under the glass so she can\r\ncarry Barry back to the window. Barry looks at Vanessa in amazement)\r\nKEN:\r\n\r\nMy brochure!\r\nVANESSA:\r\nThere you go, little guy.\r\n(Vanessa opens the window and lets Barry out but Barry stays back and is\r\nstill shocked that a human saved his life)\r\nKEN:\r\nI\'m not scared of him.\r\nIt\'s an allergic thing.\r\nVANESSA:\r\nPut that on your resume brochure.\r\nKEN:\r\nMy whole face could puff up.\r\nANDY:\r\nMake it one of your special skills.\r\nKEN:\r\nKnocking someone out\r\nis also a special skill.\r\n(Ken walks to the door)\r\nRight. Bye, Vanessa. Thanks.\r\n :\r\n- Vanessa, next week? Yogurt night?\r\nVANESSA:\r\n- Sure, Ken. You know, whatever.\r\n :\r\n(Vanessa tries to close door)\r\nKEN==\r\n- You could put carob chips on there.\r\nVANESSA:\r\n- Bye.\r\n(Closes door but Ken opens it again)\r\nKEN:\r\n- Supposed to be less calories.\r\n\r\nVANESSA:\r\n- Bye.\r\n(Closes door)\r\n(Fast forward to the next day, Barry is still inside the house. He flies\r\ninto the kitchen where Vanessa is doing dishes)\r\nBARRY==\r\n(Talking to himself)\r\nI gotta say something.\r\n :\r\nShe saved my life.\r\nI gotta say something.\r\n :\r\nAll right, here it goes.\r\n(Turns back)\r\nNah.\r\n :\r\nWhat would I say?\r\n :\r\nI could really get in trouble.\r\n :\r\nIt\'s a bee law.\r\nYou\'re not supposed to talk to a human.\r\n :\r\nI can\'t believe I\'m doing this.\r\n :\r\nI\'ve got to.\r\n(Barry disguises himself as a character on a food can as Vanessa walks by\r\nagain)\r\n :\r\nOh, I can\'t do it. Come on!\r\n :\r\nNo. Yes. No.\r\n :\r\nDo it. I can\'t.\r\n\r\n :\r\nHow should I start it?\r\n(Barry strikes a pose and wiggles his eyebrows)\r\n\"You like jazz?\"\r\nNo, that\'s no good.\r\n(Vanessa is about to walk past Barry)\r\nHere she comes! Speak, you fool!\r\n :\r\n...Hi!\r\n(Vanessa gasps and drops the dishes in fright and notices Barry on the\r\ncounter)\r\n :\r\nI\'m sorry.\r\nVANESSA:\r\n- You\'re talking.\r\nBARRY:\r\n- Yes, I know.\r\nVANESSA:\r\n(Pointing at Barry)\r\nYou\'re talking!\r\nBARRY:\r\nI\'m so sorry.\r\nVANESSA:\r\nNo, it\'s OK. It\'s fine.\r\nI know I\'m dreaming.\r\n :\r\nBut I don\'t recall going to bed.\r\nBARRY:\r\nWell, I\'m sure this\r\nis very disconcerting.\r\nVANESSA:\r\nThis is a bit of a surprise to me.\r\nI mean, you\'re a bee!\r\n\r\nBARRY:\r\nI am. And I\'m not supposed\r\nto be doing this,\r\n(Pointing to the living room where Ken tried to kill him last night)\r\nbut they were all trying to kill me.\r\n :\r\nAnd if it wasn\'t for you...\r\n :\r\nI had to thank you.\r\nIt\'s just how I was raised.\r\n(Vanessa stabs her hand with a fork to test whether she\'s dreaming or not)\r\n :\r\nThat was a little weird.\r\nVANESSA:\r\n- I\'m talking with a bee.\r\nBARRY:\r\n- Yeah.\r\nVANESSA:\r\nI\'m talking to a bee.\r\nAnd the bee is talking to me!\r\nBARRY:\r\nI just want to say I\'m grateful.\r\nI\'ll leave now.\r\n(Barry turns to leave)\r\nVANESSA:\r\n- Wait! How did you learn to do that?\r\nBARRY:\r\n(Flying back)\r\n- What?\r\nVANESSA:\r\nThe talking...thing.\r\nBARRY:\r\n\r\nSame way you did, I guess.\r\n\"Mama, Dada, honey.\" You pick it up.\r\nVANESSA:\r\n- That\'s very funny.\r\nBARRY:\r\n- Yeah.\r\n :\r\nBees are funny. If we didn\'t laugh,\r\nwe\'d cry with what we have to deal with.\r\n :\r\nAnyway...\r\nVANESSA:\r\nCan I...\r\n :\r\n...get you something?\r\nBARRY:\r\n- Like what?\r\nVANESSA:\r\nI don\'t know. I mean...\r\nI don\'t know. Coffee?\r\nBARRY:\r\nI don\'t want to put you out.\r\nVANESSA:\r\nIt\'s no trouble. It takes two minutes.\r\n :\r\n- It\'s just coffee.\r\nBARRY:\r\n- I hate to impose.\r\n(Vanessa starts making coffee)\r\nVANESSA:\r\n- Don\'t be ridiculous!\r\n\r\nBARRY:\r\n- Actually, I would love a cup.\r\nVANESSA:\r\nHey, you want rum cake?\r\nBARRY:\r\n- I shouldn\'t.\r\nVANESSA:\r\n- Have some.\r\nBARRY:\r\n- No, I can\'t.\r\nVANESSA:\r\n- Come on!\r\nBARRY:\r\nI\'m trying to lose a couple micrograms.\r\nVANESSA:\r\n- Where?\r\nBARRY:\r\n- These stripes don\'t help.\r\nVANESSA:\r\nYou look great!\r\nBARRY:\r\nI don\'t know if you know\r\nanything about fashion.\r\n :\r\nAre you all right?\r\nVANESSA:\r\n(Pouring coffee on the floor and missing the cup completely)\r\nNo.\r\n(Flash forward in time. Barry and Vanessa are sitting together at a table\r\non top of the apartment building drinking coffee)\r\n\r\n :\r\nBARRY==\r\nHe\'s making the tie in the cab\r\nas they\'re flying up Madison.\r\n :\r\nHe finally gets there.\r\n :\r\nHe runs up the steps into the church.\r\nThe wedding is on.\r\n :\r\nAnd he says, \"Watermelon?\r\nI thought you said Guatemalan.\r\n :\r\nWhy would I marry a watermelon?\"\r\n(Barry laughs but Vanessa looks confused)\r\nVANESSA:\r\nIs that a bee joke?\r\nBARRY:\r\nThat\'s the kind of stuff we do.\r\nVANESSA:\r\nYeah, different.\r\n :\r\nSo, what are you gonna do, Barry?\r\n(Barry stands on top of a sugar cube floating in his coffee and paddles it\r\naround with a straw like it\'s a gondola)\r\nBARRY:\r\nAbout work? I don\'t know.\r\n :\r\nI want to do my part for the hive,\r\nbut I can\'t do it the way they want.\r\nVANESSA:\r\nI know how you feel.\r\n\r\nBARRY:\r\n- You do?\r\nVANESSA:\r\n- Sure.\r\n :\r\nMy parents wanted me to be a lawyer or\r\na doctor, but I wanted to be a florist.\r\nBARRY:\r\n- Really?\r\nVANESSA:\r\n- My only interest is flowers.\r\nBARRY:\r\nOur new queen was just elected\r\nwith that same campaign slogan.\r\n :\r\nAnyway, if you look...\r\n(Barry points to a tree in the middle of Central Park)\r\n :\r\nThere\'s my hive right there. See it?\r\nVANESSA:\r\nYou\'re in Sheep Meadow!\r\nBARRY:\r\nYes! I\'m right off the Turtle Pond!\r\nVANESSA:\r\nNo way! I know that area.\r\nI lost a toe ring there once.\r\nBARRY:\r\n- Why do girls put rings on their toes?\r\nVANESSA:\r\n- Why not?\r\nBARRY:\r\n\r\n- It\'s like putting a hat on your knee.\r\nVANESSA:\r\n- Maybe I\'ll try that.\r\n(A custodian installing a lightbulb looks over at them but to his\r\nperspective it looks like Vanessa is talking to a cup of coffee on the\r\ntable)\r\nCUSTODIAN:\r\n- You all right, ma\'am?\r\nVANESSA:\r\n- Oh, yeah. Fine.\r\n :\r\nJust having two cups of coffee!\r\nBARRY:\r\nAnyway, this has been great.\r\nThanks for the coffee.\r\nVANESSA==\r\nYeah, it\'s no trouble.\r\nBARRY:\r\nSorry I couldn\'t finish it. If I did,\r\nI\'d be up the rest of my life.\r\n(Barry points towards the rum cake)\r\n :\r\nCan I take a piece of this with me?\r\nVANESSA:\r\nSure! Here, have a crumb.\r\n(Vanessa hands Barry a crumb but it is still pretty big for Barry)\r\nBARRY:\r\n- Thanks!\r\nVANESSA:\r\n- Yeah.\r\nBARRY:\r\nAll right. Well, then...\r\nI guess I\'ll see you around.\r\n\r\n :\r\nOr not.\r\nVANESSA:\r\nOK, Barry...\r\nBARRY:\r\nAnd thank you\r\nso much again... for before.\r\nVANESSA:\r\nOh, that? That was nothing.\r\nBARRY:\r\nWell, not nothing, but... Anyway...\r\n(Vanessa and Barry hold hands, but Vanessa has to hold out a finger because\r\nher hands is to big and Barry holds that)\r\n(The custodian looks over again and it appears Vanessa is laughing at her\r\ncoffee again. The lightbulb that he was screwing in sparks and he falls off\r\nthe ladder)\r\n(Fast forward in time and we see two Bee Scientists testing out a parachute\r\nin a Honex wind tunnel)\r\nBEE SCIENTIST #1:\r\nThis can\'t possibly work.\r\nBEE SCIENTIST #2:\r\nHe\'s all set to go.\r\nWe may as well try it.\r\n :\r\nOK, Dave, pull the chute.\r\n(Dave pulls the chute and the wind slams him against the wall and he falls\r\non his face.The camera pans over and we see Barry and Adam walking\r\ntogether)\r\nADAM:\r\n- Sounds amazing.\r\nBARRY:\r\n- It was amazing!\r\n :\r\nIt was the scariest,\r\nhappiest moment of my life.\r\n\r\nADAM:\r\nHumans! I can\'t believe\r\nyou were with humans!\r\n :\r\nGiant, scary humans!\r\nWhat were they like?\r\nBARRY:\r\nHuge and crazy. They talk crazy.\r\n :\r\nThey eat crazy giant things.\r\nThey drive crazy.\r\nADAM:\r\n- Do they try and kill you, like on TV?\r\nBARRY:\r\n- Some of them. But some of them don\'t.\r\nADAM:\r\n- How\'d you get back?\r\nBARRY:\r\n- Poodle.\r\nADAM:\r\nYou did it, and I\'m glad. You saw\r\nwhatever you wanted to see.\r\n :\r\nYou had your \"experience.\" Now you\r\ncan pick out your job and be normal.\r\nBARRY:\r\n- Well...\r\nADAM:\r\n- Well?\r\nBARRY:\r\nWell, I met someone.\r\n\r\nADAM:\r\nYou did? Was she Bee-ish?\r\n :\r\n- A wasp?! Your parents will kill you!\r\nBARRY:\r\n- No, no, no, not a wasp.\r\nADAM:\r\n- Spider?\r\nBARRY:\r\n- I\'m not attracted to spiders.\r\n :\r\nI know, for everyone else, it\'s the hottest thing,\r\nwith the eight legs and all.\r\n :\r\nI can\'t get by that face.\r\nADAM:\r\nSo who is she?\r\nBARRY:\r\nShe\'s... human.\r\nADAM:\r\nNo, no. That\'s a bee law.\r\nYou wouldn\'t break a bee law.\r\nBARRY:\r\n- Her name\'s Vanessa.\r\n(Adam puts his head in his hands)\r\nADAM:\r\n- Oh, boy.\r\nBARRY==\r\nShe\'s so nice. And she\'s a florist!\r\nADAM:\r\nOh, no! You\'re dating a human florist!\r\n\r\nBARRY:\r\nWe\'re not dating.\r\nADAM:\r\nYou\'re flying outside the hive, talking\r\nto humans that attack our homes\r\n :\r\nwith power washers and M-80s!\r\nThat\'s one-eighth a stick of dynamite!\r\nBARRY:\r\nShe saved my life!\r\nAnd she understands me.\r\nADAM:\r\nThis is over!\r\nBARRY:\r\nEat this.\r\n(Barry gives Adam a piece of the crumb that he got from Vanessa. Adam eats\r\nit)\r\nADAM:\r\n(Adam\'s tone changes)\r\nThis is not over! What was that?\r\nBARRY:\r\n- They call it a crumb.\r\nADAM:\r\n- It was so stingin\' stripey!\r\nBARRY:\r\nAnd that\'s not what they eat.\r\nThat\'s what falls off what they eat!\r\n :\r\n- You know what a Cinnabon is?\r\nADAM:\r\n- No.\r\n(Adam opens a door behind him and he pulls Barry in)\r\n\r\nBARRY:\r\nIt\'s bread and cinnamon and frosting.\r\nADAM:\r\nBe quiet!\r\nBARRY:\r\nThey heat it up...\r\nADAM:\r\nSit down!\r\n(Adam forces Barry to sit down)\r\nBARRY:\r\n(Still rambling about Cinnabons)\r\n...really hot!\r\n(Adam grabs Barry by the shoulders)\r\nADAM:\r\n- Listen to me!\r\n :\r\nWe are not them! We\'re us.\r\nThere\'s us and there\'s them!\r\nBARRY==\r\nYes, but who can deny\r\nthe heart that is yearning?\r\nADAM:\r\nThere\'s no yearning.\r\nStop yearning. Listen to me!\r\n :\r\nYou have got to start thinking bee,\r\nmy friend. Thinking bee!\r\nBARRY:\r\n- Thinking bee.\r\nWORKER BEE:\r\n- Thinking bee.\r\nWORKER BEES AND ADAM:\r\nThinking bee! Thinking bee!\r\n\r\nThinking bee! Thinking bee!\r\n(Flash forward in time; Barry is laying on a raft in a pool full of honey.\r\nHe is wearing sunglasses)\r\nJANET:\r\nThere he is. He\'s in the pool.\r\nMARTIN:\r\nYou know what your problem is, Barry?\r\n(Barry pulls down his sunglasses and he looks annoyed)\r\nBARRY:\r\n(Sarcastic)\r\nI gotta start thinking bee?\r\nJANET:\r\nHow much longer will this go on?\r\nMARTIN:\r\nIt\'s been three days!\r\nWhy aren\'t you working?\r\n(Puts sunglasses back on)\r\nBARRY:\r\nI\'ve got a lot of big life decisions\r\nto think about.\r\nMARTIN:\r\nWhat life? You have no life!\r\nYou have no job. You\'re barely a bee!\r\nJANET:\r\nWould it kill you\r\nto make a little honey?\r\n(Barry rolls off the raft and sinks into the honey pool)\r\n :\r\nBarry, come out.\r\nYour father\'s talking to you.\r\n :\r\nMartin, would you talk to him?\r\nMARTIN:\r\n\r\nBarry, I\'m talking to you!\r\n(Barry keeps sinking into the honey until he is suddenly in Central Park\r\nhaving a picnic with Vanessa)\r\n(Barry has a cup of honey and he clinks his glass with Vanessas. Suddenly a\r\nmosquito lands on Vanessa and she slaps it, killing it. They both gasp but\r\nthen burst out laughing)\r\nVANESSA:\r\nYou coming?\r\n(The camera pans over and Vanessa is climbing into a small yellow airplane)\r\nBARRY:\r\nGot everything?\r\nVANESSA:\r\nAll set!\r\nBARRY:\r\nGo ahead. I\'ll catch up.\r\n(Vanessa lifts off and flies ahead)\r\nVANESSA:\r\nDon\'t be too long.\r\n(Barry catches up with Vanessa and he sticks out his arms like ana irplane.\r\nHe rolls from side to side, and Vanessa copies him with the airplane)\r\nVANESSA:\r\nWatch this!\r\n(Barry stays back and watches as Vanessa draws a heart in the air using\r\npink smoke from the plane, but on the last loop-the-loop she suddenly\r\ncrashes into a mountain and the plane explodes. The destroyed plane falls\r\ninto some rocks and explodes a second time)\r\nBARRY:\r\nVanessa!\r\n(As Barry is yelling his mouth fills with honey and he wakes up,\r\ndiscovering that he was just day dreaming. He slowly sinks back into the\r\nhoney pool)\r\nMARTIN:\r\n- We\'re still here.\r\n\r\nJANET:\r\n- I told you not to yell at him.\r\n :\r\nHe doesn\'t respond to yelling!\r\nMARTIN:\r\n- Then why yell at me?\r\nJANET:\r\n- Because you don\'t listen!\r\nMARTIN:\r\nI\'m not listening to this.\r\nBARRY:\r\nSorry, I\'ve gotta go.\r\nMARTIN:\r\n- Where are you going?\r\nBARRY:\r\n- I\'m meeting a friend.\r\nJANET:\r\nA girl? Is this why you can\'t decide?\r\nBARRY:\r\nBye.\r\n(Barry flies out the door and Martin shakes his head)\r\n :\r\nJANET==\r\nI just hope she\'s Bee-ish.\r\n(Fast forward in time and Barry is sitting on Vanessa\'s shoulder and she is\r\nclosing up her shop)\r\nBARRY:\r\nThey have a huge parade\r\nof flowers every year in Pasadena?\r\nVANESSA:\r\nTo be in the Tournament of Roses,\r\nthat\'s every florist\'s dream!\r\n\r\n :\r\nUp on a float, surrounded\r\nby flowers, crowds cheering.\r\nBARRY:\r\nA tournament. Do the roses\r\ncompete in athletic events?\r\nVANESSA:\r\nNo. All right, I\'ve got one.\r\nHow come you don\'t fly everywhere?\r\nBARRY:\r\nIt\'s exhausting. Why don\'t you\r\nrun everywhere? It\'s faster.\r\nVANESSA:\r\nYeah, OK, I see, I see.\r\nAll right, your turn.\r\nBARRY:\r\nTiVo. You can just freeze live TV?\r\nThat\'s insane!\r\nVANESSA:\r\nYou don\'t have that?\r\nBARRY:\r\nWe have Hivo, but it\'s a disease.\r\nIt\'s a horrible, horrible disease.\r\nVANESSA:\r\nOh, my.\r\n(A human walks by and Barry narrowly avoids him)\r\nPASSERBY:\r\nDumb bees!\r\nVANESSA:\r\nYou must want to sting all those jerks.\r\nBARRY:\r\nWe try not to sting.\r\n\r\nIt\'s usually fatal for us.\r\nVANESSA:\r\nSo you have to watch your temper\r\n(They walk into a store)\r\nBARRY:\r\nVery carefully.\r\nYou kick a wall, take a walk,\r\n :\r\nwrite an angry letter and throw it out.\r\nWork through it like any emotion:\r\n :\r\nAnger, jealousy, lust.\r\n(Suddenly an employee(Hector) hits Barry off of Vanessa\'s shoulder. Hector\r\nthinks he\'s saving Vanessa)\r\nVANESSA:\r\n(To Barry)\r\nOh, my goodness! Are you OK?\r\n(Barry is getting up off the floor)\r\nBARRY:\r\nYeah.\r\nVANESSA:\r\n(To Hector)\r\n- What is wrong with you?!\r\nHECTOR:\r\n(Confused)\r\n- It\'s a bug.\r\nVANESSA:\r\nHe\'s not bothering anybody.\r\nGet out of here, you creep!\r\n(Vanessa hits Hector across the face with the magazine he had and then hits\r\nhim in the head. Hector backs away covering his head)\r\nBarry:\r\nWhat was that? A Pic \'N\' Save circular?\r\n(Vanessa sets Barry back on her shoulder)\r\n\r\nVANESSA:\r\nYeah, it was. How did you know?\r\nBARRY:\r\nIt felt like about 10 pages.\r\nSeventy-five is pretty much our limit.\r\nVANESSA:\r\nYou\'ve really got that\r\ndown to a science.\r\nBARRY:\r\n- Oh, we have to. I lost a cousin to Italian Vogue.\r\nVANESSA:\r\n- I\'ll bet.\r\n(Barry looks to his right and notices there is honey for sale in the aisle)\r\nBARRY:\r\nWhat in the name\r\nof Mighty Hercules is this?\r\n(Barry looks at all the brands of honey, shocked)\r\nHow did this get here?\r\nCute Bee, Golden Blossom,\r\n :\r\nRay Liotta Private Select?\r\n(Barry puts his hands up and slowly turns around, a look of disgust on his\r\nface)\r\nVANESSA:\r\n- Is he that actor?\r\nBARRY:\r\n- I never heard of him.\r\n :\r\n- Why is this here?\r\nVANESSA:\r\n- For people. We eat it.\r\nBARRY:\r\n\r\nYou don\'t have\r\nenough food of your own?!\r\n(Hector looks back and notices that Vanessa is talking to Barry)\r\nVANESSA:\r\n- Well, yes.\r\nBARRY:\r\n- How do you get it?\r\nVANESSA:\r\n- Bees make it.\r\nBARRY:\r\n- I know who makes it!\r\n :\r\nAnd it\'s hard to make it!\r\n :\r\nThere\'s heating, cooling, stirring.\r\nYou need a whole Krelman thing!\r\nVANESSA:\r\n- It\'s organic.\r\nBARRY:\r\n- It\'s our-ganic!\r\nVANESSA:\r\nIt\'s just honey, Barry.\r\nBARRY:\r\nJust what?!\r\n :\r\nBees don\'t know about this!\r\nThis is stealing! A lot of stealing!\r\n :\r\nYou\'ve taken our homes, schools,\r\nhospitals! This is all we have!\r\n :\r\n\r\nAnd it\'s on sale?!\r\nI\'m getting to the bottom of this.\r\n :\r\nI\'m getting to the bottom\r\nof all of this!\r\n(Flash forward in time; Barry paints his face with black strikes like a\r\nsoldier and sneaks into the storage section of the store)\r\n(Two men, including Hector, are loading boxes into some trucks)\r\n :\r\nSUPERMARKET EMPLOYEE==\r\nHey, Hector.\r\n :\r\n- You almost done?\r\nHECTOR:\r\n- Almost.\r\n(Barry takes a step to peak around the corner)\r\n(Whispering)\r\nHe is here. I sense it.\r\n :\r\nWell, I guess I\'ll go home now\r\n(Hector pretends to walk away by walking in place and speaking loudly)\r\n :\r\nand just leave this nice honey out,\r\nwith no one around.\r\nBARRY:\r\nYou\'re busted, box boy!\r\nHECTOR:\r\nI knew I heard something!\r\nSo you can talk!\r\nBARRY:\r\nI can talk.\r\nAnd now you\'ll start talking!\r\n :\r\nWhere you getting the sweet stuff?\r\n\r\nWho\'s your supplier?\r\nHECTOR:\r\nI don\'t understand.\r\nI thought we were friends.\r\n :\r\nThe last thing we want\r\nto do is upset bees!\r\n(Hector takes a thumbtack out of the board behind him and sword-fights\r\nBarry. Barry is using his stinger like a sword)\r\n :\r\nYou\'re too late! It\'s ours now!\r\nBARRY:\r\nYou, sir, have crossed\r\nthe wrong sword!\r\nHECTOR:\r\nYou, sir, will be lunch\r\nfor my iguana, Ignacio!\r\n(Barry hits the thumbtack out of Hectors hand and Hector surrenders)\r\nBarry:\r\nWhere is the honey coming from?\r\n :\r\nTell me where!\r\nHECTOR:\r\n(Pointing to leaving truck)\r\nHoney Farms! It comes from Honey Farms!\r\n(Barry chases after the truck but it is getting away. He flies onto a\r\nbicyclists\' backpack and he catches up to the truck)\r\nCAR DRIVER:\r\n(To bicyclist)\r\nCrazy person!\r\n(Barry flies off and lands on the windshield of the Honey farms truck.\r\nBarry looks around and sees dead bugs splattered everywhere)\r\nBARRY:\r\nWhat horrible thing has happened here?\r\n\r\n :\r\nThese faces, they never knew\r\nwhat hit them. And now\r\n :\r\nthey\'re on the road to nowhere!\r\n(Barry hears a sudden whisper)\r\n(Barry looks up and sees Mooseblood, a mosquito playing dead)\r\nMOOSEBLOOD:\r\nJust keep still.\r\nBARRY:\r\nWhat? You\'re not dead?\r\nMOOSEBLOOD:\r\nDo I look dead? They will wipe anything\r\nthat moves. Where you headed?\r\nBARRY:\r\nTo Honey Farms.\r\nI am onto something huge here.\r\nMOOSEBLOOD:\r\nI\'m going to Alaska. Moose blood,\r\ncrazy stuff. Blows your head off!\r\nANOTHER BUG PLAYING DEAD:\r\nI\'m going to Tacoma.\r\n(Barry looks at another bug)\r\nBARRY:\r\n- And you?\r\nMOOSEBLOOD:\r\n- He really is dead.\r\nBARRY:\r\nAll right.\r\n(Another bug hits the windshield and the drivers notice. They activate the\r\nwindshield wipers)\r\nMOOSEBLOOD==\r\nUh-oh!\r\n(The windshield wipers are slowly sliding over the dead bugs and wiping\r\n\r\nthem off)\r\nBARRY:\r\n- What is that?!\r\nMOOSEBLOOD:\r\n- Oh, no!\r\n :\r\n- A wiper! Triple blade!\r\nBARRY:\r\n- Triple blade?\r\nMOOSEBLOOD:\r\nJump on! It\'s your only chance, bee!\r\n(Mooseblood and Barry grab onto the wiper and they hold on as it wipes the\r\nwindshield)\r\nWhy does everything have\r\nto be so doggone clean?!\r\n :\r\nHow much do you people need to see?!\r\n(Bangs on windshield)\r\n :\r\nOpen your eyes!\r\nStick your head out the window!\r\nRADIO IN TRUCK:\r\nFrom NPR News in Washington,\r\nI\'m Carl Kasell.\r\nMOOSEBLOOD:\r\nBut don\'t kill no more bugs!\r\n(Mooseblood and Barry are washed off by the wipr fluid)\r\nMOOSEBLOOD:\r\n- Bee!\r\nBARRY:\r\n- Moose blood guy!!\r\n(Barry starts screaming as he hangs onto the antenna)\r\n(Suddenly it is revealed that a water bug is also hanging on the antenna.\r\n\r\nThere is a pause and then Barry and the water bug both start screaming)\r\nTRUCK DRIVER:\r\n- You hear something?\r\nGUY IN TRUCK:\r\n- Like what?\r\nTRUCK DRIVER:\r\nLike tiny screaming.\r\nGUY IN TRUCK:\r\nTurn off the radio.\r\n(The antenna starts to lower until it gets to low and sinks into the truck.\r\nThe water bug flies off and Barry is forced to let go and he is blown away.\r\nHe luckily lands inside a horn on top of the truck where he finds\r\nMooseblood, who was blown into the same place)\r\nMOOSEBLOOD:\r\nWhassup, bee boy?\r\nBARRY:\r\nHey, Blood.\r\n(Fast forward in time and we see that Barry is deep in conversation with\r\nMooseblood. They have been sitting in this truck for a while)\r\nBARRY:\r\n...Just a row of honey jars,\r\nas far as the eye could see.\r\nMOOSEBLOOD:\r\nWow!\r\nBARRY:\r\nI assume wherever this truck goes\r\nis where they\'re getting it.\r\n :\r\nI mean, that honey\'s ours.\r\nMOOSEBLOOD:\r\n- Bees hang tight.\r\nBARRY:\r\n\r\n- We\'re all jammed in.\r\n :\r\nIt\'s a close community.\r\nMOOSEBLOOD:\r\nNot us, man. We on our own.\r\nEvery mosquito on his own.\r\nBARRY:\r\n- What if you get in trouble?\r\nMOOSEBLOOD:\r\n- You a mosquito, you in trouble.\r\n :\r\nNobody likes us. They just smack.\r\nSee a mosquito, smack, smack!\r\nBARRY:\r\nAt least you\'re out in the world.\r\nYou must meet girls.\r\nMOOSEBLOOD:\r\nMosquito girls try to trade up,\r\nget with a moth, dragonfly.\r\n :\r\nMosquito girl don\'t want no mosquito.\r\n(An ambulance passes by and it has a blood donation sign on it)\r\nYou got to be kidding me!\r\n :\r\nMooseblood\'s about to leave\r\nthe building! So long, bee!\r\n(Mooseblood leaves and flies onto the window of the ambulance where there\r\nare other mosquito\'s hanging out)\r\n :\r\n- Hey, guys!\r\nOTHER MOSQUITO:\r\n- Mooseblood!\r\n\r\nMOOSEBLOOD:\r\nI knew I\'d catch y\'all down here.\r\nDid you bring your crazy straw?\r\n(The truck goes out of view and Barry notices that the truck he\'s on is\r\npulling into a camp of some sort)\r\nTRUCK DRIVER:\r\nWe throw it in jars, slap a label on it,\r\nand it\'s pretty much pure profit.\r\n(Barry flies out)\r\nBARRY:\r\nWhat is this place?\r\nBEEKEEPER 1#:\r\nA bee\'s got a brain\r\nthe size of a pinhead.\r\nBEEKEEPER #2:\r\nThey are pinheads!\r\n :\r\nPinhead.\r\n :\r\n- Check out the new smoker.\r\nBEEKEEPER #1:\r\n- Oh, sweet. That\'s the one you want.\r\n :\r\nThe Thomas 3000!\r\nBARRY:\r\nSmoker?\r\nBEEKEEPER #1:\r\nNinety puffs a minute, semi-automatic.\r\nTwice the nicotine, all the tar.\r\n :\r\nA couple breaths of this\r\nknocks them right out.\r\n\r\nBEEKEEPER #2:\r\nThey make the honey,\r\nand we make the money.\r\nBARRY:\r\n\"They make the honey,\r\nand we make the money\"?\r\n(The Beekeeper sprays hundreds of cheap miniature apartments with the\r\nsmoker. The bees are fainting or passing out)\r\nOh, my!\r\n :\r\nWhat\'s going on? Are you OK?\r\n(Barry flies into one of the apartment and helps a Bee couple get off the\r\nground. They are coughing and its hard for them to stand)\r\nBEE IN APARTMENT:\r\nYeah. It doesn\'t last too long.\r\nBARRY:\r\nDo you know you\'re\r\nin a fake hive with fake walls?\r\nBEE IN APPARTMENT:\r\nOur queen was moved here.\r\nWe had no choice.\r\n(The apartment room is completely empty except for a photo on the wall of\r\nthe \"queen\" who is obviously a man in women\'s clothes)\r\nBARRY:\r\nThis is your queen?\r\nThat\'s a man in women\'s clothes!\r\n :\r\nThat\'s a drag queen!\r\n :\r\nWhat is this?\r\n(Barry flies out and he discovers that there are hundreds of these\r\nstructures, each housing thousands of Bees)\r\nOh, no!\r\n :\r\nThere\'s hundreds of them!\r\n(Barry takes out his camera and takes pictures of these Bee work camps. The\r\nbeekeepers look very evil in these depictions)\r\n\r\nBee honey.\r\n :\r\nOur honey is being brazenly stolen\r\non a massive scale!\r\n :\r\nThis is worse than anything bears\r\nhave done! I intend to do something.\r\n(Flash forward in time and Barry is showing these pictures to his parents)\r\nJANET:\r\nOh, Barry, stop.\r\nMARTIN:\r\nWho told you humans are taking\r\nour honey? That\'s a rumor.\r\nBARRY:\r\nDo these look like rumors?\r\n(Holds up the pictures)\r\nUNCLE CARL:\r\nThat\'s a conspiracy theory.\r\nThese are obviously doctored photos.\r\nJANET:\r\nHow did you get mixed up in this?\r\nADAM:\r\nHe\'s been talking to humans.\r\nJANET:\r\n- What?\r\nMARTIN:\r\n- Talking to humans?!\r\nADAM:\r\nHe has a human girlfriend.\r\nAnd they make out!\r\nJANET:\r\nMake out? Barry!\r\n\r\nBARRY:\r\nWe do not.\r\nADAM:\r\n- You wish you could.\r\nMARTIN:\r\n- Whose side are you on?\r\nBARRY:\r\nThe bees!\r\nUNCLE CARL:\r\n(He has been sitting in the back of the room this entire time)\r\nI dated a cricket once in San Antonio.\r\nThose crazy legs kept me up all night.\r\nJANET:\r\nBarry, this is what you want\r\nto do with your life?\r\nBARRY:\r\nI want to do it for all our lives.\r\nNobody works harder than bees!\r\n :\r\nDad, I remember you\r\ncoming home so overworked\r\n :\r\nyour hands were still stirring.\r\nYou couldn\'t stop.\r\nJANET:\r\nI remember that.\r\nBARRY:\r\nWhat right do they have to our honey?\r\n :\r\nWe live on two cups a year. They put it\r\nin lip balm for no reason whatsoever!\r\n\r\nADAM:\r\nEven if it\'s true, what can one bee do?\r\nBARRY:\r\nSting them where it really hurts.\r\nMARTIN:\r\nIn the face! The eye!\r\n :\r\n- That would hurt.\r\nBARRY:\r\n- No.\r\nMARTIN:\r\nUp the nose? That\'s a killer.\r\nBARRY:\r\nThere\'s only one place you can sting\r\nthe humans, one place where it matters.\r\n(Flash forward a bit in time and we are watching the Bee News)\r\nBEE NEWS NARRATOR:\r\nHive at Five, the hive\'s only\r\nfull-hour action news source.\r\nBEE PROTESTOR:\r\nNo more bee beards!\r\nBEE NEWS NARRATOR:\r\nWith Bob Bumble at the anchor desk.\r\n :\r\nWeather with Storm Stinger.\r\n :\r\nSports with Buzz Larvi.\r\n :\r\nAnd Jeanette Chung.\r\nBOB BUMBLE:\r\n- Good evening. I\'m Bob Bumble.\r\nJEANETTE CHUNG:\r\n\r\n- And I\'m Jeanette Chung.\r\nBOB BUMBLE:\r\nA tri-county bee, Barry Benson,\r\n :\r\nintends to sue the human race\r\nfor stealing our honey,\r\n :\r\npackaging it and profiting\r\nfrom it illegally!\r\nJEANETTE CHUNG:\r\nTomorrow night on Bee Larry King,\r\n :\r\nwe\'ll have three former queens here in\r\nour studio, discussing their new book,\r\n :\r\nClassy Ladies,\r\nout this week on Hexagon.\r\n(The scene changes to an interview on the news with Bee version of Larry\r\nKing and Barry)\r\nBEE LARRY KING:\r\nTonight we\'re talking to Barry Benson.\r\n :\r\nDid you ever think, \"I\'m a kid\r\nfrom the hive. I can\'t do this\"?\r\nBARRY:\r\nBees have never been afraid\r\nto change the world.\r\n :\r\nWhat about Bee Columbus?\r\nBee Gandhi? Bejesus?\r\nBEE LARRY KING:\r\nWhere I\'m from, we\'d never sue humans.\r\n\r\n :\r\nWe were thinking\r\nof stickball or candy stores.\r\nBARRY:\r\nHow old are you?\r\nBEE LARRY KING:\r\nThe bee community\r\nis supporting you in this case,\r\n :\r\nwhich will be the trial\r\nof the bee century.\r\nBARRY:\r\nYou know, they have a Larry King\r\nin the human world too.\r\nBEE LARRY KING:\r\nIt\'s a common name. Next week...\r\nBARRY:\r\nHe looks like you and has a show\r\nand suspenders and colored dots...\r\nBEE LARRY KING:\r\nNext week...\r\nBARRY:\r\nGlasses, quotes on the bottom from the\r\nguest even though you just heard \'em.\r\nBEE LARRY KING:\r\nBear Week next week!\r\nThey\'re scary, hairy and here, live.\r\n(Bee Larry King gets annoyed and flies away offscreen)\r\nBARRY:\r\nAlways leans forward, pointy shoulders,\r\nsquinty eyes, very Jewish.\r\n(Flash forward in time. We see Vanessa enter and Ken enters behind her.\r\nThey are arguing)\r\n\r\nKEN:\r\nIn tennis, you attack\r\nat the point of weakness!\r\nVANESSA:\r\nIt was my grandmother, Ken. She\'s 81.\r\nKEN==\r\nHoney, her backhand\'s a joke!\r\nI\'m not gonna take advantage of that?\r\nBARRY:\r\n(To Ken)\r\nQuiet, please.\r\nActual work going on here.\r\nKEN:\r\n(Pointing at Barry)\r\n- Is that that same bee?\r\nVANESSA:\r\n- Yes, it is!\r\n :\r\nI\'m helping him sue the human race.\r\nBARRY:\r\n- Hello.\r\nKEN:\r\n- Hello, bee.\r\nVANESSA:\r\nThis is Ken.\r\nBARRY:\r\n(Recalling the \"Winter Boots\" incident earlier)\r\nYeah, I remember you. Timberland, size\r\nten and a half. Vibram sole, I believe.\r\nKEN:\r\n(To Vanessa)\r\nWhy does he talk again?\r\nVANESSA:\r\n\r\nListen, you better go\r\n\'cause we\'re really busy working.\r\nKEN:\r\nBut it\'s our yogurt night!\r\nVANESSA:\r\n(Holding door open for Ken)\r\nBye-bye.\r\nKEN:\r\n(Yelling)\r\nWhy is yogurt night so difficult?!\r\n(Ken leaves and Vanessa walks over to Barry. His workplace is a mess)\r\nVANESSA:\r\nYou poor thing.\r\nYou two have been at this for hours!\r\nBARRY:\r\nYes, and Adam here\r\nhas been a huge help.\r\nADAM:\r\n- Frosting...\r\n- How many sugars?\r\n ==BARRY==\r\nJust one. I try not\r\nto use the competition.\r\n :\r\nSo why are you helping me?\r\nVANESSA:\r\nBees have good qualities.\r\n :\r\nAnd it takes my mind off the shop.\r\n :\r\nInstead of flowers, people\r\nare giving balloon bouquets now.\r\nBARRY:\r\n\r\nThose are great, if you\'re three.\r\nVANESSA:\r\nAnd artificial flowers.\r\nBARRY:\r\n- Oh, those just get me psychotic!\r\nVANESSA:\r\n- Yeah, me too.\r\n :\r\nBARRY:\r\nBent stingers, pointless pollination.\r\nADAM:\r\nBees must hate those fake things!\r\n :\r\nNothing worse\r\nthan a daffodil that\'s had work done.\r\n :\r\nMaybe this could make up\r\nfor it a little bit.\r\nVANESSA:\r\n- This lawsuit\'s a pretty big deal.\r\nBARRY:\r\n- I guess.\r\nADAM:\r\nYou sure you want to go through with it?\r\nBARRY:\r\nAm I sure? When I\'m done with\r\nthe humans, they won\'t be able\r\n :\r\nto say, \"Honey, I\'m home,\"\r\nwithout paying a royalty!\r\n(Flash forward in time and we are watching the human news. The camera shows\r\n\r\na crowd outside a courthouse)\r\nNEWS REPORTER:\r\nIt\'s an incredible scene\r\nhere in downtown Manhattan,\r\n :\r\nwhere the world anxiously waits,\r\nbecause for the first time in history,\r\n :\r\nwe will hear for ourselves\r\nif a honeybee can actually speak.\r\n(We are no longer watching through a news camera)\r\nADAM:\r\nWhat have we gotten into here, Barry?\r\nBARRY:\r\nIt\'s pretty big, isn\'t it?\r\nADAM==\r\n(Looking at the hundreds of people around the courthouse)\r\nI can\'t believe how many humans\r\ndon\'t work during the day.\r\nBARRY:\r\nYou think billion-dollar multinational\r\nfood companies have good lawyers?\r\nSECURITY GUARD:\r\nEverybody needs to stay\r\nbehind the barricade.\r\n(A limousine drives up and a fat man,Layton Montgomery, a honey industry\r\nowner gets out and walks past Barry)\r\nADAM:\r\n- What\'s the matter?\r\nBARRY:\r\n- I don\'t know, I just got a chill.\r\n(Fast forward in time and everyone is in the court)\r\nMONTGOMERY:\r\nWell, if it isn\'t the bee team.\r\n\r\n(To Honey Industry lawyers)\r\nYou boys work on this?\r\nMAN:\r\nAll rise! The Honorable\r\nJudge Bumbleton presiding.\r\nJUDGE BUMBLETON:\r\nAll right. Case number 4475,\r\n :\r\nSuperior Court of New York,\r\nBarry Bee Benson v. the Honey Industry\r\n :\r\nis now in session.\r\n :\r\nMr. Montgomery, you\'re representing\r\nthe five food companies collectively?\r\nMONTGOMERY:\r\nA privilege.\r\nJUDGE BUMBLETON:\r\nMr. Benson... you\'re representing\r\nall the bees of the world?\r\n(Everyone looks closely, they are waiting to see if a Bee can really talk)\r\n(Barry makes several buzzing sounds to sound like a Bee)\r\nBARRY:\r\nI\'m kidding. Yes, Your Honor,\r\nwe\'re ready to proceed.\r\nJUDGE BUMBLBETON:\r\nMr. Montgomery,\r\nyour opening statement, please.\r\nMONTGOMERY:\r\nLadies and gentlemen of the jury,\r\n :\r\nmy grandmother was a simple woman.\r\n :\r\n\r\nBorn on a farm, she believed\r\nit was man\'s divine right\r\n :\r\nto benefit from the bounty\r\nof nature God put before us.\r\n :\r\nIf we lived in the topsy-turvy world\r\nMr. Benson imagines,\r\n :\r\njust think of what would it mean.\r\n :\r\nI would have to negotiate\r\nwith the silkworm\r\n :\r\nfor the elastic in my britches!\r\n :\r\nTalking bee!\r\n(Montgomery walks over and looks closely at Barry)\r\n :\r\nHow do we know this isn\'t some sort of\r\n :\r\nholographic motion-picture-capture\r\nHollywood wizardry?\r\n :\r\nThey could be using laser beams!\r\n :\r\nRobotics! Ventriloquism!\r\nCloning! For all we know,\r\n :\r\nhe could be on steroids!\r\nJUDGE BUMBLETON:\r\nMr. Benson?\r\n\r\nBARRY:\r\nLadies and gentlemen,\r\nthere\'s no trickery here.\r\n :\r\nI\'m just an ordinary bee.\r\nHoney\'s pretty important to me.\r\n :\r\nIt\'s important to all bees.\r\nWe invented it!\r\n :\r\nWe make it. And we protect it\r\nwith our lives.\r\n :\r\nUnfortunately, there are\r\nsome people in this room\r\n :\r\nwho think they can take it from us\r\n :\r\n\'cause we\'re the little guys!\r\nI\'m hoping that, after this is all over,\r\n :\r\nyou\'ll see how, by taking our honey,\r\nyou not only take everything we have\r\n :\r\nbut everything we are!\r\nJANET==\r\n(To Martin)\r\nI wish he\'d dress like that\r\nall the time. So nice!\r\nJUDGE BUMBLETON:\r\nCall your first witness.\r\nBARRY:\r\nSo, Mr. Klauss Vanderhayden\r\n\r\nof Honey Farms, big company you have.\r\nKLAUSS VANDERHAYDEN:\r\nI suppose so.\r\nBARRY:\r\nI see you also own\r\nHoneyburton and Honron!\r\nKLAUSS:\r\nYes, they provide beekeepers\r\nfor our farms.\r\nBARRY:\r\nBeekeeper. I find that\r\nto be a very disturbing term.\r\n :\r\nI don\'t imagine you employ\r\nany bee-free-ers, do you?\r\nKLAUSS:\r\n(Quietly)\r\n- No.\r\nBARRY:\r\n- I couldn\'t hear you.\r\nKLAUSS:\r\n- No.\r\nBARRY:\r\n- No.\r\n :\r\nBecause you don\'t free bees.\r\nYou keep bees. Not only that,\r\n :\r\nit seems you thought a bear would be\r\nan appropriate image for a jar of honey.\r\nKLAUSS:\r\nThey\'re very lovable creatures.\r\n\r\n :\r\nYogi Bear, Fozzie Bear, Build-A-Bear.\r\nBARRY:\r\nYou mean like this?\r\n(The bear from Over The Hedge barges in through the back door and it is\r\nroaring and standing on its hind legs. It is thrashing its claws and people\r\nare screaming. It is being held back by a guard who has the bear on a\r\nchain)\r\n :\r\n(Pointing to the roaring bear)\r\nBears kill bees!\r\n :\r\nHow\'d you like his head crashing\r\nthrough your living room?!\r\n :\r\nBiting into your couch!\r\nSpitting out your throw pillows!\r\nJUDGE BUMBLETON:\r\nOK, that\'s enough. Take him away.\r\n(The bear stops roaring and thrashing and walks out)\r\nBARRY:\r\nSo, Mr. Sting, thank you for being here.\r\nYour name intrigues me.\r\n :\r\n- Where have I heard it before?\r\nMR. STING:\r\n- I was with a band called The Police.\r\nBARRY:\r\nBut you\'ve never been\r\na police officer, have you?\r\nSTING:\r\nNo, I haven\'t.\r\nBARRY:\r\n\r\nNo, you haven\'t. And so here\r\nwe have yet another example\r\n :\r\nof bee culture casually\r\nstolen by a human\r\n :\r\nfor nothing more than\r\na prance-about stage name.\r\nSTING:\r\nOh, please.\r\nBARRY:\r\nHave you ever been stung, Mr. Sting?\r\n :\r\nBecause I\'m feeling\r\na little stung, Sting.\r\n :\r\nOr should I say... Mr. Gordon M. Sumner!\r\nMONTGOMERY:\r\nThat\'s not his real name?! You idiots!\r\nBARRY:\r\nMr. Liotta, first,\r\nbelated congratulations on\r\n :\r\nyour Emmy win for a guest spot\r\non ER in 2005.\r\nRAY LIOTTA:\r\nThank you. Thank you.\r\nBARRY:\r\nI see from your resume\r\nthat you\'re devilishly handsome\r\n :\r\nwith a churning inner turmoil\r\n\r\nthat\'s ready to blow.\r\nRAY LIOTTA:\r\nI enjoy what I do. Is that a crime?\r\nBARRY:\r\nNot yet it isn\'t. But is this\r\nwhat it\'s come to for you?\r\n :\r\nExploiting tiny, helpless bees\r\nso you don\'t\r\n :\r\nhave to rehearse\r\nyour part and learn your lines, sir?\r\nRAY LIOTTA:\r\nWatch it, Benson!\r\nI could blow right now!\r\nBARRY:\r\nThis isn\'t a goodfella.\r\nThis is a badfella!\r\n(Ray Liotta looses it and tries to grab Barry)\r\nRAY LIOTTA:\r\nWhy doesn\'t someone just step on\r\nthis creep, and we can all go home?!\r\nJUDGE BUMBLETON:\r\n- Order in this court!\r\nRAY LIOTTA:\r\n- You\'re all thinking it!\r\n(Judge Bumbleton starts banging her gavel)\r\nJUDGE BUMBLETON:\r\nOrder! Order, I say!\r\nRAY LIOTTA:\r\n- Say it!\r\nMAN:\r\n\r\n- Mr. Liotta, please sit down!\r\n(We see a montage of magazines which feature the court case)\r\n(Flash forward in time and Barry is back home with Vanessa)\r\nBARRY:\r\nI think it was awfully nice\r\nof that bear to pitch in like that.\r\nVANESSA:\r\nI think the jury\'s on our side.\r\nBARRY:\r\nAre we doing everything right,you know, legally?\r\nVANESSA:\r\nI\'m a florist.\r\nBARRY:\r\nRight. Well, here\'s to a great team.\r\nVANESSA:\r\nTo a great team!\r\n(Ken walks in from work. He sees Barry and he looks upset when he sees\r\nBarry clinking his glass with Vanessa)\r\nKEN:\r\nWell, hello.\r\nVANESSA:\r\n- Oh, Ken!\r\nBARRY:\r\n- Hello!\r\nVANESSA:\r\nI didn\'t think you were coming.\r\n :\r\nNo, I was just late.\r\nI tried to call, but...\r\n(Ken holds up his phone and flips it open. The phone has no charge)\r\n...the battery...\r\nVANESSA:\r\n\r\nI didn\'t want all this to go to waste,\r\nso I called Barry. Luckily, he was free.\r\nKEN:\r\nOh, that was lucky.\r\n(Ken sits down at the table across from Barry and Vanessa leaves the room)\r\nVANESSA:\r\nThere\'s a little left.\r\nI could heat it up.\r\nKEN:\r\n(Not taking his eyes off Barry)\r\nYeah, heat it up, sure, whatever.\r\nBARRY:\r\nSo I hear you\'re quite a tennis player.\r\n :\r\nI\'m not much for the game myself.\r\nThe ball\'s a little grabby.\r\nKEN:\r\nThat\'s where I usually sit.\r\nRight...\r\n(Points to where Barry is sitting)\r\nthere.\r\nVANESSA:\r\n(Calling from other room)\r\nKen, Barry was looking at your resume,\r\n :\r\nand he agreed with me that eating with\r\nchopsticks isn\'t really a special skill.\r\nKEN:\r\n(To Barry)\r\nYou think I don\'t see what you\'re doing?\r\nBARRY:\r\nI know how hard it is to find\r\nthe right job. We have that in common.\r\n\r\nKEN:\r\nDo we?\r\nBARRY:\r\nBees have 100 percent employment,\r\nbut we do jobs like taking the crud out.\r\nKEN:\r\n(Menacingly)\r\nThat\'s just what\r\nI was thinking about doing.\r\n(Ken reaches for a fork on the table but knocks if on the floor. He goes to\r\npick it up)\r\nVANESSA:\r\nKen, I let Barry borrow your razor\r\nfor his fuzz. I hope that was all right.\r\n(Ken quickly rises back up after hearing this but hits his head on the\r\ntable and yells)\r\nBARRY:\r\nI\'m going to drain the old stinger.\r\nKEN:\r\nYeah, you do that.\r\n(Barry flies past Ken to get to the bathroom and Ken freaks out, splashing\r\nsome of the wine he was using to cool his head in his eyes. He yells in\r\nanger)\r\n(Barry looks at the magazines featuring his victories in court)\r\nBARRY:\r\nLook at that.\r\n(Barry flies into the bathroom)\r\n(He puts his hand on his head but this makes hurts him and makes him even\r\nmadder. He yells again)\r\n(Barry is washing his hands in the sink but then Ken walks in)\r\nKEN:\r\nYou know, you know I\'ve just about had it\r\n(Closes bathroom door behind him)\r\nwith your little mind games.\r\n(Ken is menacingly rolling up a magazine)\r\nBARRY:\r\n\r\n(Backing away)\r\n- What\'s that?\r\nKEN:\r\n- Italian Vogue.\r\nBARRY:\r\nMamma mia, that\'s a lot of pages.\r\nKEN:\r\nIt\'s a lot of ads.\r\nBARRY:\r\nRemember what Van said, why is\r\nyour life more valuable than mine?\r\nKEN:\r\nThat\'s funny, I just can\'t seem to recall that!\r\n(Ken smashes everything off the sink with the magazine and Barry narrowly\r\nescapes)\r\n(Ken follows Barry around and tries to hit him with the magazine but he\r\nkeeps missing)\r\n(Ken gets a spray bottle)\r\n :\r\nI think something stinks in here!\r\nBARRY:\r\n(Enjoying the spray)\r\nI love the smell of flowers.\r\n(Ken holds a lighter in front of the spray bottle)\r\nKEN:\r\nHow do you like the smell of flames?!\r\nBARRY:\r\nNot as much.\r\n(Ken fires his make-shift flamethrower but misses Barry, burning the\r\nbathroom. He torches the whole room but looses his footing and falls into\r\nthe bathtub. After getting hit in the head by falling objects 3 times he\r\npicks up the shower head, revealing a Water bug hiding under it)\r\nWATER BUG:\r\nWater bug! Not taking sides!\r\n\r\n(Barry gets up out of a pile of bathroom supplies and he is wearing a\r\nchapstick hat)\r\nBARRY:\r\nKen, I\'m wearing a Chapstick hat!\r\nThis is pathetic!\r\n(Ken switches the shower head to lethal)\r\nKEN:\r\nI\'ve got issues!\r\n(Ken sprays Barry with the shower head and he crash lands into the toilet)\r\n(Ken menacingly looks down into the toilet at Barry)\r\nWell, well, well, a royal flush!\r\nBARRY:\r\n- You\'re bluffing.\r\nKEN:\r\n- Am I?\r\n(flushes toilet)\r\n(Barry grabs a chapstick from the toilet seat and uses it to surf in the\r\nflushing toilet)\r\nBARRY:\r\nSurf\'s up, dude!\r\n(Barry flies out of the toilet on the chapstick and sprays Ken\'s face with\r\nthe toilet water)\r\n :\r\nEW,Poo water!\r\nBARRY:\r\nThat bowl is gnarly.\r\nKEN:\r\n(Aiming a toilet cleaner at Barry)\r\nExcept for those dirty yellow rings!\r\n(Barry cowers and covers his head and Vanessa runs in and takes the toilet\r\ncleaner from Ken just before he hits Barry)\r\nVANESSA:\r\nKenneth! What are you doing?!\r\nKEN==\r\n(Leaning towards Barry)\r\n\r\nYou know, I don\'t even like honey!\r\nI don\'t eat it!\r\nVANESSA:\r\nWe need to talk!\r\n(Vanessa pulls Ken out of the bathroom)\r\n :\r\nHe\'s just a little bee!\r\n :\r\nAnd he happens to be\r\nthe nicest bee I\'ve met in a long time!\r\nKEN:\r\nLong time? What are you talking about?!\r\nAre there other bugs in your life?\r\nVANESSA:\r\nNo, but there are other things bugging\r\nme in life. And you\'re one of them!\r\nKEN:\r\nFine! Talking bees, no yogurt night...\r\n :\r\nMy nerves are fried from riding\r\non this emotional roller coaster!\r\nVANESSA:\r\nGoodbye, Ken.\r\n(Ken huffs and walks out and slams the door. But suddenly he walks back in\r\nand stares at Barry)\r\n :\r\nAnd for your information,\r\nI prefer sugar-free, artificial\r\nsweeteners MADE BY MAN!\r\n(Ken leaves again and Vanessa leans in towards Barry)\r\nVANESSA:\r\nI\'m sorry about all that.\r\n(Ken walks back in again)\r\n\r\nKEN:\r\nI know it\'s got\r\nan aftertaste! I LIKE IT!\r\n(Ken leaves for the last time)\r\nVANESSA:\r\nI always felt there was some kind\r\nof barrier between Ken and me.\r\n :\r\nI couldn\'t overcome it.\r\nOh, well.\r\n :\r\nAre you OK for the trial?\r\nBARRY:\r\nI believe Mr. Montgomery\r\nis about out of ideas.\r\n(Flash forward in time and Barry, Adam, and Vanessa are back in court)\r\nMONTGOMERY--\r\nWe would like to call\r\nMr. Barry Benson Bee to the stand.\r\nADAM:\r\nGood idea! You can really see why he\'s\r\nconsidered one of the best lawyers...\r\n(Barry stares at Adam)\r\n...Yeah.\r\nLAWYER:\r\nLayton, you\'ve\r\ngotta weave some magic\r\nwith this jury,\r\nor it\'s gonna be all over.\r\nMONTGOMERY:\r\nDon\'t worry. The only thing I have\r\nto do to turn this jury around\r\n :\r\nis to remind them\r\nof what they don\'t like about bees.\r\n(To lawyer)\r\n\r\n- You got the tweezers?\r\nLAWYER:\r\n- Are you allergic?\r\nMONTGOMERY:\r\nOnly to losing, son. Only to losing.\r\n :\r\nMr. Benson Bee, I\'ll ask you\r\nwhat I think we\'d all like to know.\r\n :\r\nWhat exactly is your relationship\r\n(Points to Vanessa)\r\n :\r\nto that woman?\r\nBARRY:\r\nWe\'re friends.\r\nMONTGOMERY:\r\n- Good friends?\r\nBARRY:\r\n- Yes.\r\nMONTGOMERY:\r\nHow good? Do you live together?\r\nADAM:\r\nWait a minute...\r\n :\r\nMONTGOMERY:\r\nAre you her little...\r\n :\r\n...bedbug?\r\n(Adam\'s stinger starts vibrating. He is agitated)\r\nI\'ve seen a bee documentary or two.\r\nFrom what I understand,\r\n\r\n :\r\ndoesn\'t your queen give birth\r\nto all the bee children?\r\nBARRY:\r\n- Yeah, but...\r\nMONTGOMERY:\r\n(Pointing at Janet and Martin)\r\n- So those aren\'t your real parents!\r\nJANET:\r\n- Oh, Barry...\r\nBARRY:\r\n- Yes, they are!\r\nADAM:\r\nHold me back!\r\n(Vanessa tries to hold Adam back. He wants to sting Montgomery)\r\nMONTGOMERY:\r\nYou\'re an illegitimate bee,\r\naren\'t you, Benson?\r\nADAM:\r\nHe\'s denouncing bees!\r\nMONTGOMERY:\r\nDon\'t y\'all date your cousins?\r\n(Montgomery leans over on the jury stand and stares at Adam)\r\nVANESSA:\r\n- Objection!\r\n(Vanessa raises her hand to object but Adam gets free. He flies straight at\r\nMontgomery)\r\n=ADAM:\r\n- I\'m going to pincushion this guy!\r\nBARRY:\r\nAdam, don\'t! It\'s what he wants!\r\n(Adam stings Montgomery in the butt and he starts thrashing around)\r\n\r\nMONTGOMERY:\r\nOh, I\'m hit!!\r\n :\r\nOh, lordy, I am hit!\r\nJUDGE BUMBLETON:\r\n(Banging gavel)\r\nOrder! Order!\r\nMONTGOMERY:\r\n(Overreacting)\r\nThe venom! The venom\r\nis coursing through my veins!\r\n :\r\nI have been felled\r\nby a winged beast of destruction!\r\n :\r\nYou see? You can\'t treat them\r\nlike equals! They\'re striped savages!\r\n :\r\nStinging\'s the only thing\r\nthey know! It\'s their way!\r\nBARRY:\r\n- Adam, stay with me.\r\nADAM:\r\n- I can\'t feel my legs.\r\nMONTGOMERY:\r\n(Overreacting and throwing his body around the room)\r\nWhat angel of mercy\r\nwill come forward to suck the poison\r\n :\r\nfrom my heaving buttocks?\r\nJUDGE BUMLBETON:\r\nI will have order in this court. Order!\r\n\r\n :\r\nOrder, please!\r\n(Flash forward in time and we see a human news reporter)\r\nNEWS REPORTER:\r\nThe case of the honeybees\r\nversus the human race\r\n :\r\ntook a pointed turn against the bees\r\n :\r\nyesterday when one of their legal\r\nteam stung Layton T. Montgomery.\r\n(Adam is laying in a hospital bed and Barry flies in to see him)\r\nBARRY:\r\n- Hey, buddy.\r\nADAM:\r\n- Hey.\r\nBARRY:\r\n- Is there much pain?\r\nADAM:\r\n- Yeah.\r\n :\r\nI...\r\n :\r\nI blew the whole case, didn\'t I?\r\nBARRY:\r\nIt doesn\'t matter. What matters is\r\nyou\'re alive. You could have died.\r\nADAM:\r\nI\'d be better off dead. Look at me.\r\n(A small plastic sword is replaced as Adam\'s stinger)\r\nThey got it from the cafeteria\r\ndownstairs, in a tuna sandwich.\r\n\r\n :\r\nLook, there\'s\r\na little celery still on it.\r\n(Flicks off the celery and sighs)\r\nBARRY:\r\nWhat was it like to sting someone?\r\nADAM:\r\nI can\'t explain it. It was all...\r\n :\r\nAll adrenaline and then...\r\nand then ecstasy!\r\nBARRY:\r\n...All right.\r\nADAM:\r\nYou think it was all a trap?\r\nBARRY:\r\nOf course. I\'m sorry.\r\nI flew us right into this.\r\n :\r\nWhat were we thinking? Look at us. We\'re\r\njust a couple of bugs in this world.\r\nADAM:\r\nWhat will the humans do to us\r\nif they win?\r\nBARRY:\r\nI don\'t know.\r\nADAM:\r\nI hear they put the roaches in motels.\r\nThat doesn\'t sound so bad.\r\nBARRY:\r\nAdam, they check in,\r\nbut they don\'t check out!\r\n\r\nADAM:\r\nOh, my.\r\n(Coughs)\r\nCould you get a nurse\r\nto close that window?\r\nBARRY:\r\n- Why?\r\nADAM:\r\n- The smoke.\r\n(We can see that two humans are smoking cigarettes outside)\r\n :\r\nBees don\'t smoke.\r\nBARRY:\r\nRight. Bees don\'t smoke.\r\n :\r\nBees don\'t smoke!\r\nBut some bees are smoking.\r\n :\r\nThat\'s it! That\'s our case!\r\nADAM:\r\nIt is? It\'s not over?\r\nBARRY:\r\nGet dressed. I\'ve gotta go somewhere.\r\n :\r\nGet back to the court and stall.\r\nStall any way you can.\r\n(Flash forward in time and Adam is making a paper boat in the courtroom)\r\nADAM:\r\nAnd assuming you\'ve done step 29 correctly, you\'re ready for the tub!\r\n(We see that the jury have each made their own paper boats after being\r\ntaught how by Adam. They all look confused)\r\nJUDGE BUMBLETON:\r\n\r\nMr. Flayman.\r\nADAM:\r\nYes? Yes, Your Honor!\r\nJUDGE BUMBLETON:\r\nWhere is the rest of your team?\r\nADAM:\r\n(Continues stalling)\r\nWell, Your Honor, it\'s interesting.\r\n :\r\nBees are trained to fly haphazardly,\r\n :\r\nand as a result,\r\nwe don\'t make very good time.\r\n :\r\nI actually heard a funny story about...\r\nMONTGOMERY:\r\nYour Honor,\r\nhaven\'t these ridiculous bugs\r\n :\r\ntaken up', 41, 1, NULL, NULL, '2024-01-24');

-- --------------------------------------------------------

--
-- Table structure for table `thread_type`
--

CREATE TABLE `thread_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `thread_type`
--

INSERT INTO `thread_type` (`id`, `name`) VALUES
(1, 'Entertainment'),
(2, 'Food'),
(3, 'Gaming'),
(4, 'Beauty and Fashion'),
(5, 'Music'),
(6, 'Sports'),
(7, 'Science and Technology'),
(8, 'Travel');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(15) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`) VALUES
(41, 'asdf', 'asdf@gmail.com', '$2y$10$/VI/cvtXBTisa7XJZvpqnOT4QogRqjpetyOG.8ssVE9HXR47HdfIW');

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

CREATE TABLE `usertype` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usertype`
--

INSERT INTO `usertype` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discussion`
--
ALTER TABLE `discussion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thread_id` (`thread_id`),
  ADD KEY `byUser_id` (`byUser_id`);

--
-- Indexes for table `thread`
--
ALTER TABLE `thread`
  ADD PRIMARY KEY (`id`),
  ADD KEY `byUser_id` (`byUser_id`),
  ADD KEY `followBy_id` (`followBy_id`),
  ADD KEY `thread_type_id` (`thread_type_id`);

--
-- Indexes for table `thread_type`
--
ALTER TABLE `thread_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usertype`
--
ALTER TABLE `usertype`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `discussion`
--
ALTER TABLE `discussion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `thread`
--
ALTER TABLE `thread`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `thread_type`
--
ALTER TABLE `thread_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `usertype`
--
ALTER TABLE `usertype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `discussion`
--
ALTER TABLE `discussion`
  ADD CONSTRAINT `discussion_ibfk_1` FOREIGN KEY (`thread_id`) REFERENCES `thread` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `discussion_ibfk_2` FOREIGN KEY (`byUser_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `thread`
--
ALTER TABLE `thread`
  ADD CONSTRAINT `thread_ibfk_1` FOREIGN KEY (`byUser_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `thread_ibfk_2` FOREIGN KEY (`followBy_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `thread_ibfk_3` FOREIGN KEY (`thread_type_id`) REFERENCES `thread_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
