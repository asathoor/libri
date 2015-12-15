-- phpMyAdmin SQL Dump
-- version 3.5.8.1
-- http://www.phpmyadmin.net
--
-- Host: multimusen.dk.mysql:3306
-- Generation Time: Dec 15, 2015 at 08:43 PM
-- Server version: 5.5.47-MariaDB-1~wheezy
-- PHP Version: 5.3.3-7+squeeze15

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `multimusen_dk`
--

-- --------------------------------------------------------

--
-- Table structure for table `libri`
--

CREATE TABLE IF NOT EXISTS `libri` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Author` text NOT NULL,
  `Title` text NOT NULL,
  `Where` text NOT NULL,
  `Year` int(4) NOT NULL,
  `Note` longtext NOT NULL,
  `Projekt` tinytext NOT NULL,
  `Hvor` tinytext NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Litteraturliste' AUTO_INCREMENT=50 ;

--
-- Dumping data for table `libri`
--

INSERT INTO `libri` (`Id`, `Author`, `Title`, `Where`, `Year`, `Note`, `Projekt`, `Hvor`) VALUES
(1, 'Kniberg, Henrik; Skarin, Mattias', 'Kanban and Scrum making the most of both', 'Info Q, USA', 2010, 'Praksisnær manual med udgangspunkt i det agile softwareudviklingsparadigme Scrum. Scrummologer arbejder med "scrumboards" = kanbaner.\r\n- jvf. dialog på LinkedIn', '0', 'Od-1.3'),
(2, 'Dewey, John', 'Experience & Education', 'Touchstone, NY', 1938, 'Anvendt udgave: 1997.', '0', 'Od-1.3'),
(3, 'Schön, Donald A.', 'Educating the Reflective Practiconer', 'Jossey-Bass,USA', 1987, 'Part Two: The Architectural Studio as Educational Model for Reflection-in-Action. \r\nBegreber: Reflection-in-Action, praksisnær vs. akademisk', '0', 'Od-1.3'),
(5, 'Dewey, John', 'How We Think', 'D.C. Health & Co., NY', 1909, 'The training of thought pp. 14', '0', 'Od-1.3'),
(6, 'Goffman, Erving', 'The Presentation of Self in Everyday Life', 'Penguin Books, USA', 1959, 'p. 28 Performances', '0', 'Od-1.3'),
(7, 'Benson, Jim; Barry, Tonianne DeMaria', 'Personal Kanban - Mapping Work | Navigating Life', 'Modus Cooperandi Press', 2009, 'En praksisnær manual baseret på personlige erfaringer.', '0', 'Od-1.3'),
(8, 'Burgess, Jean; Green, Joshua', 'Youtube', 'polity', 2009, 'p. 58 Youtube''s social network', '0', 'Od-1.3'),
(9, 'Nielsen, Jakob', 'Godt Webdesign', 'IDG', 2001, 'Klassiker: usability.', '0', 'EAL-skab'),
(10, 'Aristoteles', 'Poetik', 'Hans Reitzels Forlag', 1958, 'Aristoteles (384 - 322 fvt.) - værket er udgangspunkt for dramatisk fortælleteknik. Spændingskurven i berettermodellen er inspireret af Aristoteles. Kanban etablerer en fortælling.', '0', 'Aa-2-C3'),
(11, 'Shneiderman, Ben', '”Designing the User Interface”', 'Addison-Wesley', 2005, 'p. 121 - the four pillars of design, ill.', '0', 'Od-1.3'),
(12, 'Fischer, Louise & Oosterban, Marie', 'Digital Media Management', 'Nyt Teknisk Forlag', 2010, 'Eksempel på undervisningsmateriale på MDU. Ikke forskningsbaseret. Praksisnær manual. Indføring i et holistisk udviklingsparadigme, der både omfatter vandfaldsmodeller og agile metoder.', '0', 'Od-1.3'),
(13, 'Okasha, Samir', 'Philosophy of Science - A Very Short Introduction', 'Oxford', 2002, 'Videnskabsteorisk oversigtsværk.', '0', 'Od-1.3'),
(14, 'Porter, Joshua', 'designing for the social web', 'New Riders', 2008, 'Praktisk design. Håndværk.', '0', 'Od-1.3'),
(15, 'Bouvin, Niels Oluf & Hansen, Allan', 'Kompendium: Hypermedier og Web', 'Computer Science, Aarhus Universitet ', 2011, 'p. 95 Berners-Lee, Tim: "The Semantic Web" (2001)\np. 214 Nardi et al.: "Why we Blog" (2004)\np. 229 O''Reilly, Tim: "What is Web 2.0" (2005)\np. 54 Halaz, Frank G.: "Reflections on Notecards: Seven Issues for the Next Generation of Hypermedia Systems" (1988)', '0', 'Od-1.3'),
(16, 'Baym, Nancy', 'Personal Connections In The Digital Age', 'Polity', 2010, 'p. 6: Seven key concepts - måder at knytte sociale kontakter online.', '0', 'Od-1.3'),
(17, 'Lazaris, Louis', 'CSS Style Guide - 25 techniques you need to know', 'web Designer (nr. 206)', 2013, 'I CSS har jeg anvendt teknikker med billedskalering samt runde hjørner i CSS (virker i Chrome, Safari, Firefox - ikke i IE).', '0', 'Od'),
(18, 'Chalmers, A.F.', 'What is this thing called Science?', 'Open University Press', 1980, '2nd. Ed. 1982', '', ''),
(19, 'Engholm, Ida & Klastrup, Lisbeth', 'Digitale Verdener', 'Gyldendal', 2004, 'p. 19: Jørgensen, Anker H.: "Fra Beregning til æstetik"\r\np. 57: Engholm, Ida: "Webgenrer og stilarter"\r\np. 273: Thomsen, Mette R: "Fremtidens interfaces"', '', ''),
(20, 'Kniberg, Henrik', 'Lean from the Trenches - Managing Large-Scale Projects with Kanban', 'The Pragmatic Bookshelf (Dallas, Texas, Raleigh, North Carolina)', 2011, 'Et Lean projekt, hvor større grupper anvender kanbans i et softwareudviklingsprojekt.', '0', ''),
(22, 'Hung-da Wan & F. Frank Chen', 'AWeb-based Kanban system for job dispatching, tracking, and performance monitoring', 'Int J Adv Manuf Technol (2008) 38:995–1005, DOI 10.1007/s00170-007-1145-2', 2008, 'Programmerer en web baseret kanban efter Lean principper. Argumenterer for at notater ikke falder af eller bliver væk på en webkanban (ud over nettet øvrige kvaliteter som platform for samarbejde).', '0', ''),
(23, 'Manovich, Lev', 'The Language of New Media', 'Cambridge: MIT Press', 2001, 'Ch. 5.', '0', ''),
(24, 'Mulder, Steve & Yaar, Ziv', 'The User Is Always Right - A Practical Guide to Creating and Using Personas for the Web', 'New Riders', 2007, 'Manual om at udvikle og anvende personas.', '0', 'Od-1.3'),
(25, 'Jepsen, Leif Obel; Mathiasen, Lars; Nielsen, Peter Axel', 'Back To Thinking Mode: Diaries for the Management of Information Systems', 'Behavior and Information Technology, Vol. 8, Nr. 3', 1989, 'Dagbøger som reflektorisk instrument for softwareudviklere.', '0', ''),
(26, 'Grainger, Sheila ', 'Accessing Professional Artistry: The Importance of Cooperative Education and the Limitations of Classical Research', 'Christchurch College of Education – Nelson Campus, PO Box 10-12 Nelson, New Zealand', 2001, '"...the author argues that cooperative education, in the form or practicums, form an essential part of teacher training and is the means by which academic content or professional knowledge gains real value."', '0', ''),
(27, 'Ørngreen, Rikke N. ', 'Erfaringer med brug af multimediecases', 'Copenhagen Business School, Handelshøjskolen', 2011, 'RNØ undersøger brug af multimediecases på merkantile uddannelser. Studerende på MDU skal kunne udvikle multimedier. ', '0', ''),
(28, 'McLuhan, Marshall', 'Understanding Media - The extensions of man\r\n', 'London and New York\r\n', 1964, '"The Medium is the Message" p. 7', '0', ''),
(29, 'Fiske, John', 'Introduction to Communication Studies', 'Routledge', 1990, '2nd. ed.', '0', ''),
(30, 'Tognazzini', 'Tog on Interface', 'Addison Wesley', 1990, 'Ch. 14 "User Testing on the Cheap"', '0', 'Kompendium'),
(31, 'WordPress', 'Codex', 'http://codex.wordpress.org/', 2013, 'Codex er den officielle WordPress wiki. Her er dokumentation til almen brug af WordPress samt API. Codex vedligeholdes af en lang række forfattere.', '0', 'http://codex.wordpress.org/'),
(32, 'PHP', 'php.net', 'http://www.php.net', 2013, 'Officiel dokumentation om PHP. Det er en wiki med adskillige forfattere.', '0', 'http://www.php.net'),
(33, 'Berners-Lee, Tim', 'Semantic Web Road map', 'http://student.bus.olemiss.edu/files/conlon/others/others/semantic%20web%20papers/roadmap.pdf', 1998, 'Visionen for www''s fremtid', '0', ''),
(34, 'Gyldendal et al.', 'Den Store Danske - Gyldendals åbne encyklopædi', 'http://www.denstoredanske.dk/', 2013, '"Den væsentligste forskel mellem Den Store Danske og andre hjemmesider med faktuel viden som fx Wikipedia er, at vi tilbyder verificerede versioner af artiklerne. Ikke af alle artikler og ikke nødvendigvis af seneste udvikling/detalje i artiklerne. Men af næsten alle artikler findes en verificeret version, så vores brugere altid har en basis af information, de kan stole på." (Kilde: http://www.denstoredanske.dk/Info/Om_den_store_danske dato: 19.4. 2013)', '0', ''),
(35, 'Hauge, Hans', 'Den litterære vending: dekonstruktiv videnskabsteori', 'Modtryk', 1995, '', '0', ''),
(36, 'Brazell, Aaron;  Jaquith, Mark', 'WordPress Bible', 'Wiley', 2010, 'Manual for brugere og udviklere.', '0', ''),
(44, 'Bakhtin, M.M.', 'The Problem of Speech Genres', 'Adam Jaworski, N. Coupland: „The discourse reader” p. 121. (Routledge)', 1999, '', '', ''),
(38, 'Welling, G. von', 'Opus Mago-Cabbalisticum et Theosophicum', 'Frankfurt und Leipzig', 1784, 'Alkymistisk værk der enten vrøvler uhæmmet eller skjuler hemmeligheden om de vises sten effektivt. Kildekritik var også vigtigt i 1784.', '0', 'Aar-C3.2'),
(39, 'Benjamin, Walter et al.', 'Walter Benjamin Oversat', 'Slagmarks Skyttegravsserie. Red. Tore Eriksen.', 1989, 'p. 121: "Om den mimetiske evne"', '0', ''),
(40, 'Dalsgaard, Christian', 'Mellem det personlige og det faglige\r\n– om forskerblogs', 'MedieKultur 2011, 51, 146-168', 2011, 'Undersøgelsen viser, at de danske forskerblogs er karakteriseret ved en seriøs, faglig og personlig publiceringsform. Især indlæg, der kombinerer det personlige og det faglige, er karakteristiske for forskerbloggen og skiller den ud fra andre publicerings- og formidlingsformer.', '0', ''),
(41, 'Obendorf, Hartmuth; Janneck, Monique; Finck, Matthias', 'Inter-Contextual Distributed Participatory Design', 'Scandinavian Journal of Information Systems, Volume 21', 2009, '"Key words: Distributed participatory design, community of practice, community of interest, community building, workshop, case studies."', '0', 'pdf'),
(42, 'Bartco, Thomas', 'Basal Icons', 'http://www.designkindle.com/2011/04/12/basal-icons/', 2011, 'Fri ikonsamling, brugt i navigationspanelet.', '', ''),
(43, 'Al-Tahat, M; Liverani, A.; Persiani F.', 'Design of a Marketing Decision Support Method for Price Quotation In a multi-Stage Single-product Kanban-Based Manufacturing Environment ', 'Electronic Procedngs of 12th International Conference on Design Tools and Methods in Industrial Engineering, September 5-7 2001', 2001, ' Definerer kanban: "Kanban stands for kan-“card”, ban-“signal”.', '0', 'pdf'),
(49, 'Duckett, Jon', 'JavaScript & Jquery', 'Wiley', 2014, 'God og pædagogisk gennemgang af JavaScript og Jquery. Fine og pædagogisk anvendelige illustrationer.', 'FossCMS', 'EAAA');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
