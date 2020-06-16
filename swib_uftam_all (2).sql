-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2020 at 10:31 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `swib_uftam_all`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_condidat`
--

CREATE TABLE `t_condidat` (
  `con_id` int(11) NOT NULL,
  `con_f_name` varchar(50) DEFAULT NULL,
  `con_l_name` varchar(50) DEFAULT NULL,
  `con_email` varchar(100) DEFAULT NULL,
  `con_date` date DEFAULT NULL,
  `con_number` varchar(50) DEFAULT NULL,
  `for_id` int(11) NOT NULL,
  `con_dial_code` varchar(10) DEFAULT NULL,
  `con_country` varchar(50) DEFAULT NULL,
  `con_form_condidat` varchar(255) DEFAULT NULL,
  `con_identity` varchar(255) DEFAULT NULL,
  `con_releve_note` varchar(255) DEFAULT NULL,
  `con_cv` varchar(255) DEFAULT NULL,
  `con_motivation_letter` varchar(255) DEFAULT NULL,
  `con_recommendation_letter` varchar(255) DEFAULT NULL,
  `con_document` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_condidat`
--

INSERT INTO `t_condidat` (`con_id`, `con_f_name`, `con_l_name`, `con_email`, `con_date`, `con_number`, `for_id`, `con_dial_code`, `con_country`, `con_form_condidat`, `con_identity`, `con_releve_note`, `con_cv`, `con_motivation_letter`, `con_recommendation_letter`, `con_document`) VALUES
(37, 'qsfd', 'qsdf', 'essam@gmail.com', '2020-04-18', '5165', 26, '+91', 'IN', '180218.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'ess', 'ab', 'abedissam@gmail.com', '2020-06-03', '20833787', 24, '216', 'TN', 'none', 'none', 'none', 'none', 'none', 'none', 'none');

-- --------------------------------------------------------

--
-- Table structure for table `t_diplome`
--

CREATE TABLE `t_diplome` (
  `dip_id` int(11) NOT NULL,
  `dip_lib` varchar(255) DEFAULT NULL,
  `dip_logo` varchar(255) NOT NULL,
  `for_id` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_diplome`
--

INSERT INTO `t_diplome` (`dip_id`, `dip_lib`, `dip_logo`, `for_id`, `type`) VALUES
(3, 'universit aix marseille', 'universit aix marseille.png', 26, 1),
(4, 'faculte des sciences de tunis', 'faculte des sciences de tunis.png', 26, 1),
(5, 'universite de carthage', 'universite de carthage.png', 26, 1),
(7, 'faculte des sciences bizerte', 'faculte des sciences bizerte.png', 26, 1),
(8, 'universite manar', 'universite manar.png', 26, 1),
(9, 'universite manar', 'universite manar.png', 20, 1),
(10, 'faculte des sciences de tunis', 'faculte des sciences de tunis.png', 20, 1),
(11, 'universit aix marseille', 'universit aix marseille.png', 20, 1),
(12, 'universite de carthage', 'universite de carthage.png', 20, 1),
(13, 'faculte des sciences bizert', 'faculte des sciences bizerte.png', 20, 1),
(14, 'universitye sorbonne', 'universite sorbonne.png', 21, 1),
(15, 'essect', 'essect.png', 21, 1),
(16, 'universite de tunis', 'universite de tunis.png', 21, 1),
(18, 'universite manar', 'universite manar.png', 22, 1),
(19, 'universite de carthage', 'universite de carthage.png', 22, 1),
(20, 'ensta', 'ensta.png', 22, 1),
(21, 'enit', 'enit.png', 22, 1),
(22, 'supcom', 'supcom.png', 22, 1),
(23, 'universite de tunis', 'universite de tunis.png', 23, 1),
(24, 'universite paris saclay', 'universite paris saclay.png', 23, 1),
(25, 'ensit', 'ensit.png', 23, 1),
(26, 'ecole normale paris saclay', 'ecole normale paris saclay.png', 23, 1),
(27, 'universite de carthage', 'universite de carthage.png', 24, 1),
(28, 'universite cote azur', 'universite cote azur.png', 24, 1),
(30, 'universite manar', 'universite manar.png', 25, 1),
(31, 'universit aix marseille', 'universit aix marseille.png', 25, 1),
(32, 'universite de tunis', 'universite de tunis.png', 25, 1),
(33, 'faculte droit', 'faculte droit.png', 25, 1),
(34, 'faculte de droit aix marseille', 'faculte de droit aix marseille.png', 25, 0),
(35, 'universite cote azur', 'universite cote azur.png', 26, 1),
(36, 'France Water Team', 'france_water_team.jpg', 26, 2),
(37, 'SONEDE', 'sonede.jpg', 26, 2),
(38, 'Ministère de l\'Agriculture, des Ressources hydrauliques et de la pêche', 'agriculture.jpg', 26, 2),
(39, 'France Water Team', 'france_water_team.jpg', 20, 2),
(40, 'SONEDE', 'sonede.jpg', 20, 2),
(41, 'Ministère de l\'Agriculture, des Ressources hydrauliques et de la pêche', 'agriculture.jpg', 20, 2),
(42, 'afd.png', 'afd.png', 21, 2),
(43, 'ird.png', 'ird.png', 21, 2),
(44, 'arru.jpg', 'arru.jpg', 21, 2),
(45, 'cirad.jpg', 'cirad.jpg', 21, 2),
(46, 'atos.jpg', 'atos.jpg', 22, 2),
(47, 'huawei.jpg', 'huawei.jpg', 22, 2),
(48, 'orange.jpg', 'orange.jpg', 22, 2),
(49, 'sagemcom.jpg', 'sagemcom.jpg', 22, 2),
(50, 'stmicrolectronics.jpg', 'stmicrolectronics.jpg', 22, 2),
(57, 'universite manar', 'universite manar.png', 27, 1),
(58, 'universite de tunis', 'universite de tunis.png', 27, 1),
(59, 'ihec', 'logo ihec.png', 27, 1),
(60, 'universite manar', 'universite manar.png', 28, 1),
(61, 'universite de carthage', 'universite de carthage.png', 28, 1),
(62, 'universite cote azur', 'universite cote azur.png', 28, 1);

-- --------------------------------------------------------

--
-- Table structure for table `t_event`
--

CREATE TABLE `t_event` (
  `eve_id` int(11) NOT NULL,
  `eve_img` varchar(255) DEFAULT NULL,
  `eve_img_situational` varchar(255) DEFAULT NULL,
  `eve_lib` varchar(255) DEFAULT NULL,
  `eve_description` text,
  `eve_date` date DEFAULT NULL,
  `tte_id` int(11) DEFAULT NULL,
  `eve_details` text,
  `eve_active` varchar(5) DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_event`
--

INSERT INTO `t_event` (`eve_id`, `eve_img`, `eve_img_situational`, `eve_lib`, `eve_description`, `eve_date`, `tte_id`, `eve_details`, `eve_active`) VALUES
(40, 'event 1 B.png', 'event 1 B.png', '1<sup>er</sup> Salon Virtuel des Ã©tudes en France ( sÃ©nÃ©gale)', 'Lieux : en ligne <br> UFTAM y participe !  Salon 100% Virtuel ! <br> Un lieu de rencontres et dâ€™Ã©changesâ€¼ï¸ <br> Des confÃ©rences, des discussions et  des halls en ligne ! Le salon reproduira en ligne lâ€™ambiance et lâ€™environnement dâ€™un salon traditionnel dans un confort de visites en ligne avec lâ€™interactivitÃ© en plus.(4,5 juin 2020)', '2020-06-04', 1, NULL, 'yes'),
(41, 'event 2 B.png', 'event 2 B.png', 'Les vendredis de lâ€™orientation Ã  lâ€™UFTAM', 'Chaque vendredi, les Ã©tudiants se connectent Ã  une plateforme pour discuter avec lâ€™Ã©quipe pÃ©dagogique de lâ€™UFTAM et regarder les vidÃ©os animÃ©es par les enseignants chercheurs de lâ€™UFTAM. (Premier rendez-vous le vendredi 22 mai 2020, DeuxiÃ¨me rendez-vous le vendredi 29 mai 2020)', '2020-05-22', 1, NULL, 'yes'),
(43, 'event 4 B.png', 'event 4 B.png', 'Salon virtuel de lâ€™orientation et des Ã©tudes Ã  lâ€™Ã©tranger', 'Lieu :  En ligne <br> Lâ€™UFTAM a eu un stand virtuel dans Ce salon 100% en ligne qui a compris plusieurs espaces:  <br> -Espace Orientation et Formation: <br> Dans cet espace le visiteur a eu lâ€™occasion dâ€™entrer en contact avec lâ€™exposant via un outil de chat en ligne pour lui poser toutes ses questions , consulter ses brochures, regarder ses vidÃ©os et lui envoyer un Email. <br> -Espace ConfÃ©rence: <br> Cette espace a permis dâ€™animer des confÃ©rences live avec interaction avec les visiteurs <br> -Espace Coaching: <br> Il sâ€™agissait dâ€™un espace rÃ©servÃ© au conseillers dâ€™orientation pour donner tous les dÃ©tails qui concernent les dÃ©marches Ã  suivre pour choisir la bonne formation et rÃ©ussir son orientation 2 confÃ©rences animÃ©es par monsieur Adel Ben Youssef ont Ã©tÃ© prÃ©sentÃ©es au cours de ce salon;(Les 26,27 et 28 Mars 2020).', '2020-05-26', 1, NULL, 'yes'),
(45, 'event 3 B.png', 'event 3 B.png', 'JournÃ©e portes ouvertes virtuelle', 'Lieu :  En ligne <br> Cette journÃ©e a Ã©tÃ© une occasion pour les participants de dÃ©couvrir les filiÃ¨res de lâ€™UFTAM Ã  travers des visioconfÃ©rences animÃ©es par les enseignants chercheurs de lâ€™UFTAM ainsi que de poser toutes leurs questions Ã  lâ€™Ã©quipe pÃ©dagogique.', '2020-04-18', 1, NULL, 'yes'),
(46, 'event 5 B.png', 'event 5 B.png', 'Forum International des RÃ©alitÃ©s : SantÃ© numÃ©rique', 'Lieu :  Alhambra Thalasso Ã  Hammamet <br> Ce workshop sâ€™est tenu en marge du 5Ã©me forum international de la santÃ© numÃ©rique de rÃ©alitÃ©s. Cet atelier a cherchÃ© Ã  comprendre le processus de digitalisation du secteur de la santÃ© et des impacts de celui-ci sur lâ€™efficacitÃ© des soins, les couts de prise en charge et lâ€™efficience des opÃ©rateurs de la santÃ© en gÃ©nÃ©ral. Les objectifs de ce forum Ã©taient dâ€™identifier les premiÃ¨res Ã©valuations rÃ©alisÃ©es et Ã©valuer les retours dâ€™expertise par les Ã©conomistes, les gestionnaires et les autres disciplines scientifiques.  <br> Autres participants : STB, UniversitÃ© Centrale, Centre Informatique du MinistÃ¨re de la SantÃ©, Tunisie Telecom, Sanofi, Laboratoires Saiph, Industrie Pharmaceutique Said, Taha Pharma.(Les 27,28 et 29 FÃ©vrier 2020)', '2020-02-27', 1, NULL, 'yes'),
(47, 'event 6 B.png', 'event 6 B.png', 'Khotwa, le salon de lâ€™Ã©tudiant et des nouvelles perspectives', 'Lieu : Palais de la culture Moufdi Zakaria Ã  Alger <br> Ce grand Ã©vÃ©nement est un vaste espace dâ€™Ã©change sur les choix dâ€™Ã©tudes, les formations et les opportunitÃ©s Ã  saisir pour bÃ¢tir un avenir prometteur pour toute la jeunesse algÃ©rienne. Les dizaines de milliers de jeunes visiteurs ont ainsi Ã©tÃ© orientÃ©s de faÃ§on efficace, grÃ¢ce Ã  la prÃ©sence des professionnels de la formation, des acteurs de lâ€™enseignement supÃ©rieur et de la formation professionnelle, les organismes de soutien Ã  lâ€™entrepreneuriat et les recruteurs ont apportÃ© un Ã©clairage pertinent aux visiteurs sur leurs plans de carriÃ¨re et leurs projets futurs. <br> ', '2020-02-15', 1, '<div>&#10;<p class=\"MsoNormal\">Autres participants : EduCanda, Cesi Alg&#233;rie Formation et&#10;conseil, Education USA, ESHRA, Coll&#232;ge Canada, Sky Training aviation, France&#10;International Graduate Schools, Ecole Sup&#233;rieure Alg&#233;rienne des Affaires,&#10;AIESEC, eftg Business School, IMAA, Iracademy, Wise master, NAS, ALMAS,&#10;Education First, Royal School, Ecole Nationale Sup&#233;rieure de Management, DSIA,&#10;Campus Start @Innov Alg&#233;rie, IFEG, Ecole DHEB param&#233;dicale, Algerian Learning&#10;Centers, RACUS, Al-ILM, In-tuition , ANSEJ, IMS, Agence Nationale de l&#8217;Emploi&#10;et&#160; Yassir.</p>&#10;</div>&#10;', 'yes'),
(48, 'event 7 B.png', 'event 7 B.png', 'JournÃ©e des Ã©tudes en France', 'Lieu : HÃ´tel Africa <br> Cet Ã©vÃ©nement organisÃ© par Estudiant Ã©tait une occasion pour les Ã©tudiants de faire le point sur leur parcours dâ€™Ã©tude. Ils ont pu dÃ©couvrir les avantages de la vie quotidienne et Ã©tudiante en France et poser toutes les questions sur lâ€™orientation, les domaines dâ€™Ã©tudes, procÃ©dures, logement et visa. <br> Ils ont Ã©tÃ© Ã©coutÃ©s, conseillÃ©s, accompagnÃ©s leur votre projet dâ€™Ã©tudes en France. Ils ont eu lâ€™occasion de : <br> - Assister Ã  de multiples confÃ©rences sur des sujets qui concernent les Ã©tudes en France <br> - Rencontrer des experts dâ€™orientation  <br> - Participer Ã  diffÃ©rents ateliers <br> - Passer plusieurs tests (dâ€™orientation, dâ€™Ã©valuation,â€¦) <br> Autres participants : Campus France, centre de langue de lâ€™Institut FranÃ§ais de Tunisie et EduFrance.', '2020-02-01', 1, NULL, 'yes'),
(49, 'event 8 B.png', 'event 8 B.png', 'Salon des Ã©tudes en France', 'Lieu : Lâ€™UTICA <br> Le salon des Ã©tudes en France est une opportunitÃ© dâ€™avoir toutes les informations nÃ©cessaires pour rÃ©pondre facilement aux questions posÃ©es par les Ã©tudiants sur le choix dâ€™une licence, BTS, bachelor, Ã©cole dâ€™ingÃ©nieur ou de commerce. En dÃ©couvrant les diffÃ©rents Ã©tablissements de la France et en comparant leurs programmes, les Ã©tudiants auront toutes les clÃ©s en main pour dÃ©cider sereinement de leur avenir. <br> ', '2020-01-31', 1, '<div>&#10;<p class=\"MsoNormal\">Autres participants : Universit&#233; internationale de&#10;Casablanca, l\'&#233;cole EDHEC, l\'&#233;cole KEDGE, ECAM Lyon, Glion, PSB Paris School of&#10;Business, ELITECH &#233;cole des &#233;lites en commerce et informatique, L\'EDHEC France,&#10;les &#233;coles du P&#244;le L&#233;onard de Vinci, Efrei Paris, Autograf, Essca school of&#10;management, L&#8217;ESM-A management school, 3iL, Studely, L&#8217;&#201;cole Sup&#233;rieure de&#10;Commerce de La Rochelle, KEDGE Business School, L&#8217;Universit&#233; Priv&#233;e de&#10;Marrakech, Pr&#233;pa La r&#233;sidence, SKEMA Business School&#8230;</p>&#10;</div>&#10;', 'yes'),
(50, 'event 9B.png', 'event 9B.png', 'JournÃ©e Campus France Tunisie', 'Lieu : Institut FranÃ§ais de Tunisie  <br> Pour le lancement de sa nouvelle campagne de candidature 2019-2020, Campus France Tunisie  a organisÃ© Â«Les journÃ©es Campus France Â» avec une tournÃ©e dans 06 villes tunisiennes qui a dÃ©butÃ© Ã  lâ€™Institut FranÃ§ais de Tunis le samedi 07 dÃ©cembre. ', '2019-12-07', 1, 'div style=&#34;font-family: \'poppins\'; font-weight:500&#34;&gt;&#10;<p class=\"MsoNormal\">Autres participants : Centre de langue de l&#8217;Institut&#10;Fran&#231;ais et Campus France&#160;</p>&#10;&#10;', 'yes'),
(52, 'event 10 B.png', 'event 10 B.png', 'Foire Study in Europe', 'Lieu : CitÃ© de la culture  <br> OrganisÃ©e par lâ€™Union EuropÃ©enne, cette foire a visÃ© la promotion les Ã©tudes en Europe pour les Ã©tudiants Tunisiens (accords avec les UniversitÃ©s europÃ©ennes, diffÃ©rents programmes et bourses pour les Tunisiens). <br>', '2019-11-28', 1, '<div>&#10;<p class=\"MsoNormal\">Autres participants : Erasmus +, Ambassade du Su&#232;de, SEPIE&#10;Espagne, ambassade de Finlande, Institut Stralang France, ambassade de la&#10;r&#233;publique de Malte, ISAG European Business School, Portugal, Universit&#233; de&#10;Cracovie Roumanie, Institut Fran&#231;ais de Tunisie, British Council Tunisie,&#10;Wallonie Bruxelles Campus, DAAD Tunisie&#8230;</p>&#10;</div>&#10;', 'yes'),
(53, 'ActualitÃ© 1 B.png', 'ActualitÃ© 1 B.png', 'Workshop Design thinking', 'Workshop â€œDesign Thinkingâ€ en collaboration avec le PNUD Tunisie animÃ© par les enseignants de lâ€™UFTAM au Novotel Tunis Mohamed V. <br> Worshop Design Thinking : La formation des coachs en entrepreneuriat spÃ©cial SUD assurÃ©e par lâ€™UFTAM, en partenariat avec la PNUD, sâ€™est dÃ©roulÃ©e du 8 au 11 novembre Ã  lâ€™HÃ´tel Hasdrubal Prestige Djerba. Les ateliers ont Ã©tÃ© animÃ©s par des enseignants de lâ€™UFTAM.', '2020-06-15', 3, NULL, 'yes'),
(54, 'ActualitÃ© 2 B.png', 'ActualitÃ© 2 B.png', 'Mapathon', 'Salle comble Ã  lâ€™UFTAM pour le mapathon AFD â€“ Agence FranÃ§aise de DÃ©veloppement , CartONG en partenariat avec lâ€™IRD , lâ€™Union europÃ©enne Tunisie et lâ€™ARRU. DÃ©couvrir les outils libres de cartographie au service de lâ€™Ã©valuation des projets urbains. <br> Un mapathon est un moment convivial et ludique durant lequel nous apprenons Ã  cartographier avec OpenStreetMap (OSM) tout en contribuant Ã  lâ€™amÃ©lioration de la carte libre du monde. Aujourdâ€™hui OSM est une base de donnÃ©es solide et de qualitÃ©, elle est devenue trÃ¨s rapidement un outil incontournable de recherche, dâ€™utilisation et de crÃ©ation de donnÃ©es gÃ©ographiques pour de nombreux professionnels et spÃ©cialistes.', '2020-06-15', 3, NULL, 'yes'),
(55, 'ActualitÃ© 3B.png', 'ActualitÃ© 3B.png', 'Sortie de nos Ã©tudiants', '- Sortie de nos Ã©tudiants <br> - Visite Ã  Nefza et Barrage Barrak dans le cadre du parcours sciences de lâ€™eau <br> - Visite Ã  lâ€™Institut SupÃ©rieur des Sciences et Technologies de lâ€™Environnement situÃ© Ã  Borj Cedria <br> Les Ã©tudiants de la premiÃ¨re annÃ©e master Gestion de lâ€™environnement et mÃ©tiers de lâ€™eau, accompagnÃ©s de leur enseignant Pascal Wong, ont eu la chance de partir en visite Ã  lâ€™Institut SupÃ©rieur des Sciences et Technologies de lâ€™Environnement situÃ© Ã  Borj Cedria. Cette sortie a Ã©tÃ© une occasion pour eux de voir en pratique des mÃ©thodes Ã©tudiÃ©es durant leur cours de chimie analytique de lâ€™environnement.', '2020-06-15', 3, NULL, 'yes'),
(56, 'actualitÃ© 4 B.png', 'actualitÃ© 4 B.png', 'ConfÃ©rence ', '<b>ConfÃ©rence Africinvest</b> <br> Nos Ã©tudiants en expertise Ã©conomique, invitÃ©s Ã  une confÃ©rence dans les locaux dâ€™AfricInvest <br> <b> ConfÃ©rence labâ€™ess </b> <br> Les Ã©tudiants de lâ€™UFTAM UniversitÃ© franco-tunisienne pour lâ€™Afrique et la MÃ©diterranÃ©e sont venus rencontrer les incubÃ©s de la #Promo6 & de la #Promo5 ! PrÃ©sentation du Labâ€™ess, questions & rÃ©ponses sur la structure, puis Ã©change avec les entrepreneurs. Les Ã©tudiants de lâ€™UFTAM ont pu Ã©changer sur lâ€™expÃ©rience du projet Kufanya â€“ Incubateur pour entrepreneurs migrants en tant quâ€™entreprise sociale en Tunisie, ainsi que notre parcours dâ€™incubation au sein du Labâ€™ess â€“ AccÃ©lÃ©rateur dâ€™innovation sociale. Cette rencontre a  permis aux Ã©tudiants dâ€™avoir une perception rÃ©aliste des dÃ©fis de la migration en Tunisie et de dÃ©battre sur lâ€™impact des actions de lâ€™incubateur auprÃ¨s des migrants.', '2020-06-15', 3, NULL, 'yes'),
(57, 'ActualitÃ© 5 B.png', 'ActualitÃ© 5 B.png', 'Tunisie : premiÃ¨re promotion du master en Ã©tudes du dÃ©veloppement de lâ€™UFTAM', 'Lâ€™universitÃ© Paris 1 PanthÃ©on-Sorbonne est lâ€™une des universitÃ©s fondatrices de lâ€™UniversitÃ© Franco-Tunisienne pour lâ€™Afrique et la MÃ©diterranÃ©e (UFTAM), qui se donne comme objectif principal dâ€™offrir aux jeunes Tunisiens, et plus gÃ©nÃ©ralement aux jeunes Africains, des parcours dÃ©bouchant sur lâ€™employabilitÃ© immÃ©diate des Ã©tudiants diplÃ´mÃ©s. <br> ', '2020-06-15', 3, 'div style=&#34;font-family:\'poppins\';font-weight:500&#34;&gt; &#10;<p class=\"MsoNormal\">Paris 1 Panth&#233;on-Sorbonne s&#8217;est engag&#233;e aux c&#244;t&#233;s de&#10;l&#8217;Universit&#233; de Tunis dans ce projet visionnaire, souhait&#233; par les&#10;gouvernements fran&#231;ais et tunisien. L&#8217;Institut d&#8217;&#201;tudes du D&#233;veloppement de la&#10;Sorbonne (IEDES) de l&#8217;universit&#233; Paris 1 Panth&#233;on-Sorbonne et l&#8217;&#201;cole&#10;Sup&#233;rieure des Sciences &#201;conomiques et Commerciales de Tunis (ESSECT) ont&#10;inaugur&#233; en octobre 2019 un double dipl&#244;me de niveau Master 2 en &#233;tudes du&#10;d&#233;veloppement, parcours &#171; Expertise &#233;conomique des politiques et projets de&#10;d&#233;veloppement &#187;, dirig&#233; par Mohamed Ali Marouani, enseignant-chercheur &#224; Paris&#10;1 Panth&#233;on-Sorbonne, actuellement d&#233;tach&#233; au poste de directeur de l&#8217;Institut&#10;de recherche pour le d&#233;veloppement (IRD) en Tunisie.</p>&#10;&#10;<p class=\"MsoNormal\">&#160;</p>&#10;&#10;<p class=\"MsoNormal\">La premi&#232;re promotion de seize &#233;tudiants s&#233;lectionn&#233;s pour&#10;2019-2020 marque le d&#233;but de la participation de Paris 1 Panth&#233;on-Sorbonne aux&#10;programmes de l&#8217;UFTAM. Celle-ci est appel&#233;e &#224; se diversifier et &#224; s&#8217;enrichir&#10;dans les ann&#233;es &#224; venir par l&#8217;ouverture de nouveaux programmes de licence et&#10;master.</p>&#10;&#10;<p class=\"MsoNormal\">&#160;</p>&#10;&#10;<p class=\"MsoNormal\">Le 16 janvier, une rencontre entre le pr&#233;sident de&#10;l&#8217;Universit&#233; de Tunis, Pr Habib Sidhom, la vice-pr&#233;sidente aux relations&#10;internationales de l&#8217;universit&#233; Paris 1 Panth&#233;on-Sorbonne, Pr Maria&#10;Gravari-Barbas, la vice-pr&#233;sidente aux relations internationales de&#10;l&#8217;Universit&#233; de Tunis, Pr Saoussen Krichen et Mohamed Ali Marouani a par&#10;ailleurs permis d&#8217;&#233;changer sur des opportunit&#233;s de coop&#233;ration bilat&#233;rale entre&#10;les deux universit&#233;s &#224; la fois dans les secteurs de l&#8217;enseignement et de la&#10;recherche.</p>&#10;&#10;<p class=\"MsoNormal\">La Tunisie constitue un pays partenaire privil&#233;gi&#233; pour&#10;Paris 1 Panth&#233;on-Sorbonne, qui compte de nombreuses collaborations&#10;d&#8217;enseignement et de recherche avec 6 universit&#233;s tunisiennes. Le partenariat&#10;avec l&#8217;Universit&#233; de Tunis dans le cadre de l&#8217;UFTAM ouvre des perspectives&#10;particuli&#232;rement prometteuses pour les ann&#233;es &#224; venir.</p>&#10;&#10;<p class=\"MsoNormal\">&#160;</p>&#10;&#10;<p class=\"MsoNormal\">&#160;Source: Pantheon&#10;sorbonne</p>&#10;&#10;', 'yes'),
(58, 'ActualitÃ© 6 B.png', 'ActualitÃ© 6 B.png', 'Lancement officiel de lâ€™UFTAM', 'Le  vendredi 4 octobre 2019, a eu lieu le lancement officiel de lâ€™UniversitÃ© franco-tunisienne pour lâ€™Afrique et la MÃ©diterranÃ©e (#UFTAM), en prÃ©sence de : <br> ðŸ”¹ FrÃ©dÃ©rique Vidal, Ministre franÃ§aise de lâ€™Enseignement supÃ©rieur, de la Recherche et de lâ€™Innovation, <br>ðŸ”¹ Slim Khalbous, Ministre tunisien de lâ€™Enseignement supÃ©rieur et de la Recherche scientifique,<br> ðŸ”¹ SEMA Olivier Poivre dâ€™Arvor, Ambassadeur de France en Tunisie,<br> ðŸ”¹ et des chargÃ©s de la prÃ©figuration de lâ€™UFTAM : Habib Sidhom, prÃ©sident de lâ€™UniversitÃ© de Tunis et Gilles PÃ©cout, recteur de lâ€™acadÃ©mie de Paris, chancelier des universitÃ©s et en prÃ©sence de Sophie Renaud, Directrice de lâ€™Institut franÃ§ais de Tunisie et ConseillÃ¨re de coopÃ©ration et dâ€™action culturelle <br> ', '2020-06-15', 3, 'div style=&#34;font-family:\'poppins\'; font-weight:500&#34;&gt; &#10;<p class=\"MsoNormal\">Une conf&#233;rence sur le th&#232;me &#171; Quels m&#233;tiers n&#233;cessaires pour&#10;l&#8217;Afrique de demain ? &#187; a &#233;t&#233; organis&#233;e avec l&#8217;intervention introductive de&#10;Aziz Mebarek, co-fondateur, directeur g&#233;n&#233;ral Tuninvest, AfricInvest, et avec&#10;la participation de Youssef Fennira, directeur g&#233;n&#233;ral de l&#8217;ANETI, Emna Khrouf,&#10;pr&#233;sidente de l&#8217;Atuge Atuge, Badreddine Ouali, PDG de Vermeg, Fethi Sellaouti,&#10;pr&#233;sident de l&#8217;Universit&#233; de Tunis El Manar, Olfa Benouda, pr&#233;sidente de&#10;l&#8217;Universit&#233; de Carthage et Jaziri Anis, secr&#233;taire g&#233;n&#233;ral de TABC.</p>&#10;&#10;<p class=\"MsoNormal\">&#160;</p>&#10;&#10;<p class=\"MsoNormal\"><span>&#128308;</span> Vous pouvez revoir l&#8217;int&#233;gralit&#233; de la&#10;c&#233;r&#233;monie de lancement de l&#8217;UFTAM ici :</p>&#10;&#10;<p class=\"MsoNormal\">&#160;</p>&#10;&#10;<p class=\"MsoNormal\">www.facebook.com/IFTunisie/videos/2746686965349756/</p>&#10;&#10;<p class=\"MsoNormal\">&#160;</p>&#10;&#10;<p class=\"MsoNormal\">L&#8217;universit&#233; franco-tunisienne pour l&#8217;Afrique et la&#10;M&#233;diterran&#233;e (UFTAM) ouvre ses portes &#224; la rentr&#233;e 2019 pour offrir &#224; des&#10;&#233;tudiants de l&#8217;Afrique sub-saharienne autant qu&#8217;&#224; des &#233;tudiants tunisiens,&#10;fran&#231;ais ou m&#233;diterran&#233;ens un panel de formations d&#8217;excellence co-construites&#10;par de tr&#232;s grandes universit&#233;s publiques fran&#231;aises et tunisiennes.</p>&#10;&#10;<p class=\"MsoNormal\">&#160;</p>&#10;&#10;<p class=\"MsoNormal\">Annonc&#233;e conjointement par la Tunisie et la France lors de&#10;la visite officielle du Pr&#233;sident Macron &#224; Tunis en janvier 2018, l&#8217;UFTAM&#10;illustre la volont&#233; des deux pays de constituer en Tunisie un hub r&#233;gional&#10;d&#8217;enseignement sup&#233;rieur, pour former les futures g&#233;n&#233;rations d&#8217;entrepreneurs,&#10;de cadres sup&#233;rieurs et de salari&#233;s dont l&#8217;Afrique et l&#8217;espace m&#233;diterran&#233;en&#10;ont besoin.</p>&#10;&#10;', 'yes'),
(59, 'ActualitÃ© 7B.png', 'ActualitÃ© 7B.png', 'Bourses dâ€™excellence', 'Pour le dÃ©marrage de lâ€™UFTAM, Lâ€™Institut FranÃ§ais de Tunisie et le ministÃ¨re de lâ€™enseignement supÃ©rieur tunisien ont attribuÃ© 12 bourses aux Ã©tudiants tunisiens les plus mÃ©ritants. La sÃ©lection des Ã©tudiants boursiers sâ€™est basÃ©e sur lâ€™excellence acadÃ©mique, le lieu de rÃ©sidence ainsi que sur la situation familiale et financiÃ¨re.  Les 12 Ã©tudiants sÃ©lectionnÃ©s ont donc pu profiter de lâ€™exonÃ©ration totale de leur frais de scolaritÃ©.', '2020-06-15', 3, NULL, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `t_formation`
--

CREATE TABLE `t_formation` (
  `for_id` int(11) NOT NULL,
  `for_img` varchar(255) DEFAULT NULL,
  `for_slide` varchar(255) DEFAULT NULL,
  `for_document` varchar(255) DEFAULT NULL,
  `for_lib` varchar(150) DEFAULT NULL,
  `for_presentation` text,
  `for_description` text,
  `ttf_id` int(11) DEFAULT NULL,
  `for_niveau` text,
  `for_prerequis` text,
  `for_duration` text,
  `for_regime` text,
  `for_mod_admission` text,
  `for_enjeux` text,
  `for_program` text,
  `for_debouche` text,
  `for_public_acceuil` text,
  `for_active` varchar(5) NOT NULL DEFAULT 'yes',
  `for_modification_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_formation`
--

INSERT INTO `t_formation` (`for_id`, `for_img`, `for_slide`, `for_document`, `for_lib`, `for_presentation`, `for_description`, `ttf_id`, `for_niveau`, `for_prerequis`, `for_duration`, `for_regime`, `for_mod_admission`, `for_enjeux`, `for_program`, `for_debouche`, `for_public_acceuil`, `for_active`, `for_modification_date`) VALUES
(20, 'master-gestion-envir.jpg', 'master-gestion-envir.png', 'plaquette 1-11.pdf', 'Gestion de l&rsquo;environnement et M&eacute;tiers de l&rsquo;eau', 'Ce master propose un enseignement bas&eacute; sur les plus r&eacute;centes &eacute;volutions des concepts et\r\ndes techniques n&eacute;cessaires &agrave; une approche scientifique du fonctionnement, de la gestion, de\r\nla protection et de la r&eacute;habilitation des &eacute;cosyst&egrave;mes aquatiques et continentaux &hellip;', 'description ici', 3, 'vide', '<p>Etudiants d&eacute;tenteurs d&rsquo;une licence Fondamentale ou appliqu&eacute;e de Chimie&nbsp;ou de Physique- Chimie, Sciences et Vie de la Terre, ou Sciences de la Vie orient&eacute;es vers les Sciences de l&rsquo;Univers et de l&rsquo;Environnement.</p>', NULL, NULL, NULL, '<p>Ce master propose un enseignement bas&eacute; sur les plus r&eacute;centes &eacute;volutions des concepts et des techniques n&eacute;cessaires &agrave; une approche scientifique du fonctionnement, de la gestion, de la protection et de la r&eacute;habilitation des &eacute;cosyst&egrave;mes aquatiques et continentaux, l&rsquo;analyse et la gestion des risques naturels, des risques anthropiques et des crises environnementales, L&rsquo;enseignement pluridisciplinaire, qui balaie les sciences dures en lien avec&nbsp; la&nbsp; th&eacute;matique de l&rsquo;eau, construit un socle solide qui est contextualis&eacute; par des sciences humaines et sociales avec un renforcement des &laquo; softs skills &raquo; tout au long du cursus.</p>', '<table>\n<tbody>\n<tr>\n<th>1 &egrave;re ann&eacute;e Licence</th>\n<td><strong>Semestre 1</strong><br />\n<ul>\n<li>Analyses de donn&eacute;es en sciences environnementales</li>\n<li>Fondamentaux en g&eacute;omatique</li>\n<li>Echantillonnage et mesures en ligne et in situ (eau)</li>\n<li>Bases de droit et acteurs de l&rsquo;eau</li>\n<li>Fondamentaux en hydrologie, hydraulique et dynamique s&eacute;dimentaire</li>\n<li>Hydrobiologie des &eacute;cosyst&egrave;mes lotiques et lentiques</li>\n<li>Chimie analytique de l\'environnement 1</li>\n<li>Microbiologie environnementale et sanitaire</li>\n<li>Potabilisation des eaux</li>\n</ul>\n</td>\n<td><strong>Semestre 2</strong><br />\n<ul>\n<li>Projet environnemental de premi&egrave;re ann&eacute;e</li>\n<li>Anglais et valorisation des comp&eacute;tences</li>\n<li>Hydrog&eacute;ologie : caract&eacute;risation de la ressource en eau</li>\n<li>Outils math&eacute;matiques pour les sciences de l\'ing&eacute;nieur</li>\n<li>G&eacute;omatique appliqu&eacute;s &agrave; la ressource en eau et &agrave; la qualit&eacute; des milieux</li>\n<li>Hydrobiologie, effets perturbations sur les &eacute;cosyst&egrave;mes aquatiques</li>\n<li>R&eacute;utilisation des eaux us&eacute;es en contexte africain</li>\n<li>Enjeux soci&eacute;taux de l\'eau et de l\'assainissement</li>\n<li>Activit&eacute; de mise en situation professionnelle : Ecole terrain printemps g&eacute;ophysique appliqu&eacute;e</li>\n</ul>\n</td>\n</tr>\n<tr>\n<th><strong>2 &egrave;me ann&eacute;e Licence</strong></th>\n<td><strong>Semestre 3</strong><br />\n<ul>\n<li>Analyse et traitement physico-chimique et biologique des eaux us&eacute;es</li>\n<li>Outils professionnels</li>\n<li>Hydrologie, hydraulique appliqu&eacute;e et pr&eacute;vention des inondations</li>\n<li>Gestion int&eacute;gr&eacute;e des ressources en eau</li>\n<li>Gestion des milieux aquatiques : de la conservation &agrave; la restauration</li>\n<li>Enjeux sur la ressource en eau du changement climatique en Afrique</li>\n<li>Politiques publiques de l&rsquo;eau, acc&egrave;s &agrave; l&rsquo;eau et aide au d&eacute;veloppement</li>\n<li>Mod&eacute;lisation des transferts r&eacute;actifs</li>\n</ul>\n</td>\n<td><strong>Semestre 4</strong><br />\n<ul>\n<li>Stage professionnalisant en entreprise ou au laboratoire (m&eacute;moire et soutenance)</li>\n</ul>\n</td>\n</tr>\n</tbody>\n</table>', '<ul>\n<li>Charg&eacute; de mission/projet en bureau d&rsquo;&eacute;tude (impact/risques)</li>\n<li>Ing&eacute;nieur hydraulicien&nbsp;&nbsp;</li>\n<li>HSE/QHSE en industrie</li>\n<li>Hydrobiologiste/Hydrologue</li>\n<li>Hydrog&eacute;ologue</li>\n<li>Charg&eacute; d&rsquo;&eacute;tudes assainissement / potabilisation&nbsp;&nbsp;</li>\n<li>Charg&eacute; de projet eau et milieux&nbsp;</li>\n</ul>', '<p><strong>Niveau </strong>: Master Professionnel&nbsp;</p>\n<p><strong>Dur&eacute;e : </strong>3 semestres et stage&nbsp;</p>\n<p><strong>R&eacute;gime : </strong>Formation initiale ; plein temps</p>', 'yes', '2020-06-15 15:46:31'),
(21, 'master-expertise-eco.jpg', 'master-expertise-eco.png', 'plaquette 1-07.pdf', 'Expertise &eacute;conomique des Politiques et Projets de D&eacute;veloppement', '<p>Ce master vise la formation de cadres sup&eacute;rieurs :</p>\r\n<p>- Pour le domaine des politiques publiques</p>\r\n<p>- Pour le domaine des projets de d&eacute;veloppement</p>', 'description ici', 3, 'vide', '<p>Candidats ayant des formations en sciences &eacute;conomiques, gestion, &eacute;coles de&nbsp;commerce et &eacute;coles d&rsquo;ing&eacute;nieur ou autres parcours jug&eacute;s adapt&eacute;s.</p>', NULL, NULL, NULL, '<p>Ce master vise la formation de cadres sup&eacute;rieurs :</p>\n<ul>\n<li>Pour le domaine des politiques publiques : l&rsquo;appr&eacute;hension des outils essentiels des administrations nationales et des organisations internationales comme la th&eacute;orie &eacute;conomique, macro- et micro-&eacute;conom&eacute;trie, mod&eacute;lisation en &eacute;quilibre g&eacute;n&eacute;ral calculable et techniques de micro-simulations sont utilis&eacute;s&nbsp;</li>\n<li>Pour le domaine des projets de d&eacute;veloppement : L&rsquo;obtention des outils n&eacute;cessaires relatifs &agrave; la conduite de diff&eacute;rents types de cycle de projet publics et priv&eacute;s ainsi que leur &eacute;valuation financi&egrave;re, sociale et environnementale est acquise par les &eacute;tudiants durant ce module.</li>\n</ul>', '<table>\n<tbody>\n<tr>\n<th>1 &egrave;re ann&eacute;e Licence</th>\n<td><strong>Semestre 1</strong> <br />\n<ul>\n<li>Mise en perspective du d&eacute;veloppement</li>\n<li>Analyse socio-&eacute;conomique du d&eacute;veloppement</li>\n<li>Analyse &eacute;conomique du d&eacute;veloppement</li>\n<li>G&eacute;opolitique du d&eacute;veloppement</li>\n<li>D&eacute;mographie, environnement et d&eacute;veloppement</li>\n</ul>\n</td>\n<td><strong>Semestre 2</strong> <br />\n<ul>\n<li>Aide au d&eacute;veloppement : politiques et acteurs (TC)</li>\n<li>Modules op&eacute;rationnels</li>\n<li>Statistiques et &eacute;conom&eacute;trie</li>\n<li>Probl&eacute;matiques &eacute;conomiques du d&eacute;veloppement</li>\n<li>Economie et outils d&rsquo;analyse</li>\n</ul>\n</td>\n</tr>\n<tr>\n<th><strong>2 &egrave;me ann&eacute;e Licence</strong></th>\n<td><strong>Semestre 3</strong><br />-Parcours 1: Politiques<br />\n<ul>\n<li>Economie et &eacute;valuation</li>\n<li>Outils et analyse</li>\n<li>Approche de mod&eacute;lisation</li>\n<li>Finance et commerce international</li>\n<li>Politiques et d&eacute;veloppement</li>\n<li>Ressources naturelles, mondialisation et d&eacute;veloppement</li>\n</ul>\n-Parcours 2: Projets<br />\n<ul>\n<li>Economie et &eacute;valuation</li>\n<li>Outils et analyse</li>\n<li>Gestion de projet et &eacute;valuation financi&egrave;re</li>\n<li>Gouvernance et RSE</li>\n<li>Politiques et d&eacute;veloppement</li>\n<li>Ressources naturelles, mondialisation et d&eacute;veloppement</li>\n</ul>\n</td>\n<td><strong>Semestre 4</strong><br />\n<ul>\n<li>Stage en entreprise</li>\n</ul>\n</td>\n</tr>\n</tbody>\n</table>', '<ul>\n<li>Charg&eacute;(e) de mission, d&rsquo;&eacute;tudes, d&rsquo;affaires</li>\n<li>Consultant(e)</li>\n<li>Responsable/coordinateur(trice) de programmes/projets de d&eacute;veloppement</li>\n<li>Conseiller(&egrave;re) en politiques publiques</li>\n<li>Formateur(trice) &agrave; la conduite de projets de coop&eacute;ration</li>\n</ul>', '<p><strong>Niveau : </strong>Master Professionnel&nbsp;</p>\n<p><strong>Dur&eacute;e : </strong>3 semestres et stage&nbsp;</p>\n<p><strong>R&eacute;gime : </strong>Formation initiale ; plein temps</p>', 'yes', '2020-06-15 15:46:21'),
(22, 'master-data-science.jpg', 'master-data-science.png', 'plaquette 1-13.pdf', 'Sciences des donnÃ©es pour les nouveaux mÃ©tiers du numÃ©rique', 'Le traitement des flux de donn&eacute;es massives (big data) est aujourd&rsquo;hui indispensable pour\r\nappr&eacute;hender les nouveaux m&eacute;tiers du num&eacute;rique. L&rsquo;accent sera mis sur l&rsquo;aptitude &agrave; g&eacute;rer,\r\nexploiter et s&eacute;curiser les flux de donn&eacute;es tout en pr&eacute;servant leur confidentialit&eacute; et leur\r\nstockage.', 'description ici', 3, 'vide', '<p>Ce programme s&rsquo;adresse aux :</p>\n<ul>\n<li>Dipl&ocirc;m&eacute;s d&eacute;j&agrave; titulaires d&rsquo;un master ou d&rsquo;un dipl&ocirc;me d&rsquo;ing&eacute;nieur en informatique, t&eacute;l&eacute;communication et r&eacute;seaux informatiques, math&eacute;matiques ou &eacute;quivalent.</li>\n<li>Etudiants titulaires d&rsquo;un M1, en informatique, t&eacute;l&eacute;communication et r&eacute;seaux informatiques, math&eacute;matique,</li>\n<li>Professionnels du num&eacute;rique et du traitement de donn&eacute;es,</li>\n<li>Personnes en recherche d&rsquo;emploi ou en reconversion professionnelle dans ces domaines (M1 valid&eacute;, master, ing&eacute;nieur ou &eacute;quivalent).</li>\n<li>Dipl&ocirc;m&eacute;s d&rsquo;une Licence en informatique, t&eacute;l&eacute;communication et r&eacute;seaux informatiques, math&eacute;matique ou &eacute;quivalent.</li>\n</ul>', NULL, NULL, NULL, '<p>Le traitement des flux de donn&eacute;es massives (big data) est aujourd&rsquo;hui indispensable pour appr&eacute;hender les nouveaux m&eacute;tiers du num&eacute;rique. L&rsquo;accent sera mis sur l&rsquo;aptitude &agrave; g&eacute;rer, exploiter et s&eacute;curiser les flux de donn&eacute;es tout en pr&eacute;servant leur confidentialit&eacute; et leur stockage. Les concepts sur le traitement des donn&eacute;es via des outils de mod&eacute;lisation seront &eacute;tudi&eacute;s afin de viser des applications concr&egrave;tes dans des domaines des r&eacute;seaux urbains (smart city), des r&eacute;seaux &eacute;lectriques (smart grids) et de l&rsquo;agriculture (smart Agriculture) qui ont&nbsp;recours &agrave; des r&eacute;seaux de capteurs connect&eacute;s.</p>', '<table>\n<tbody>\n<tr>\n<th><span style=\"font-weight: 400;\">1 &egrave;re ann&eacute;e Licence</span></th>\n<td>\n<p><strong>Semestre 1</strong></p>\n<ul>\n<li>Math&eacute;matiques pour les sciences de donn&eacute;es</li>\n<li>Introduction au Big Data</li>\n<li>Optimisation</li>\n<li>Software I</li>\n<li>Langues et culture de l&rsquo;entreprise</li>\n</ul>\n</td>\n<td><strong>Semestre 2</strong><br />\n<ul>\n<li>Analyse de donn&eacute;es</li>\n<li>Sciences de donn&eacute;es</li>\n<li>Notions d&rsquo;apprentissage</li>\n<li>Software II</li>\n<li>Langues et entreprenariat</li>\n</ul>\n</td>\n</tr>\n<tr>\n<th><span style=\"font-weight: 400;\">2 &egrave;me ann&eacute;e Licence</span></th>\n<td><strong>Semestre 3</strong><br />\n<ul>\n<li>S&eacute;curit&eacute; et donn&eacute;es</li>\n<li>Intelligence d&eacute;cisionnelle</li>\n<li>Traitement et analyse de donn&eacute;es</li>\n<li>Syst&egrave;mes de syst&egrave;mes et donn&eacute;es</li>\n<li>Langue et culture d\'entreprise</li>\n</ul>\n</td>\n<td><strong>Semestre 4</strong> <br />\n<ul>\n<li>Stage Obligatoire d&rsquo;un dur&eacute;e de 4 mois minimum</li>\n</ul>\n</td>\n</tr>\n</tbody>\n</table>', '<p>Les d&eacute;bouch&eacute;s sont nombreux dans tous les m&eacute;tiers de &laquo;&nbsp;data scientists&nbsp;&raquo; o&ugrave; le traitement informatique des donn&eacute;es est un avantage comp&eacute;titif et/ou un outil d&rsquo;aide &agrave; la d&eacute;cision permettant le d&eacute;veloppement d&rsquo;applications nouvelles dans les domaines suivants&nbsp;: transport, &eacute;nergie, banque, agriculture, sant&eacute;, e-commerce, etc.</p>', '<p><strong>Niveau : </strong>Master Professionnel&nbsp;</p>\n<p><strong>Dur&eacute;e : </strong>3 semestres et un stage&nbsp;</p>\n<p><strong>R&eacute;gime : </strong>Formation initiale ; plein temps</p>', 'yes', '2020-06-15 15:45:32'),
(23, 'master-gÃ©nie-electrique-.png', 'master-gÃ©nie-electrique-.png', 'plaquette 1-05.pdf', 'gÃ©nie Ã©lectrique et informatique industrielle pour lâ€™enseignement et lâ€™industrie', 'Former sur le plan disciplinaire et peÌdagogique, dans le domaine du GeÌnie Electrique et de lâ€™Informatique Industrielle, des formateurs : enseignants pour le lyceÌe, pour les ISET, pour les eÌcoles dâ€™ingeÌnieurs et lâ€™UniversiteÌ.', 'description ici', 3, 'Master Professionnel', 'PrÃ©requisÂ :Cette formation sâ€™adresse Ã  des Ã©tudiants issus de master 1 dâ€™Ã©coles dâ€™ingÃ©nieurs\nou Ã  des enseignants pour le lycÃ©e, pour les iset , disposant de solides connaissances en\nmathÃ©matiques et physique ainsi que dans les domaines de ', '3 semestres et 3 stages', 'Formation initiale', 'Lâ€™admissibiliteÌ se fait sur dossier et lâ€™admission par un entretien.', 'Former sur le plan disciplinaire et peÌdagogique, dans le domaine du GeÌnie Electrique et de\nlâ€™Informatique Industrielle, des formateurs : enseignants pour le lyceÌe, pour les ISET, pour les\neÌcoles dâ€™ingeÌnieurs et lâ€™UniversiteÌ.', 'La formation sâ€™appuie sur lâ€™expeÌrience reconnue de lâ€™IPEST dans la preÌparation aÌ€ lâ€™agreÌgation\nde physique, sur lâ€™expeÌrience en enseignement technique de lâ€™ENSIT et sur les masters de\nformation aÌ€ lâ€™enseignement supeÌrieur preÌpareÌs aÌ€ lâ€™ENS Paris-Saclay.\nLe programme apporte un treÌ€s haut niveau scientifique et technique dans les 4 domaines\nsuivants : <br>\nâ€“ Informatique Industrielle <br>\nâ€“ TeÌleÌcommunications <br>\n\nâ€“ Automatique et traitement du signal <br>\nâ€“ Conversion dâ€™Energie. <br>\nLes uniteÌs dâ€™enseignement disciplinaires, abordeÌes avec des peÌdagogies actives varieÌes, sont\ncompleÌteÌes par une formation peÌdagogique : <br>\nâ€“ Stage peÌdagogique de 2 semaines <br>\nâ€“ Ateliers autour des meÌthodes peÌdagogiques, aÌ€ partir des expeÌriences, aÌ€ lâ€™UFTAM et en\nstage et de confeÌrences / deÌbats <br>\nâ€“ Mise en pratique de ces meÌthodes pour concevoir des seÌquences peÌdagogiques <br>\nâ€“ PreÌparation, conception et mise en Å“uvre de seÌquences peÌdagogiques aÌ€ destination du\nreste de la promotion <br>\nâ€“ DeÌveloppement de ressources dâ€™enseignement aÌ€ distance. <br>', 'En plus des meÌtiers de formateurs, au centre de ce master, les eÌtudiants peuvent eÌgalement\npoursuivre en doctorat (dans le domaine des sciences de lâ€™ingeÌnieur ou de la didactique) ou\nsâ€™inteÌgrer dans lâ€™industrie sur des postes neÌcessitant une haute expertise scientifique et\ntechnique ou sur des postes de formateur.', 'Cette formation sâ€™adresse aÌ€ des eÌtudiants issus de master 1, dâ€™eÌcoles dâ€™ingeÌnieurs ou aÌ€ des\nenseignants, disposant de solides connaissances en matheÌmatiques et physique ainsi que\ndans les domaines de la conversion dâ€™eÌnergie, de lâ€™automatique, de lâ€™eÌlectronique et de\nlâ€™informatique industrielle.', 'yes', '2020-06-15 15:35:26'),
(24, 'master-Intelligence-Economique-Africaine.jpg', 'master-Intelligence-Economique-Africaine.png', 'plaquette 1-15.pdf', 'M2 Intelligence Economique Africaine', 'Ce Master vise &agrave; sensibiliser les futurs cadres des pouvoirs publics, des repr&eacute;sentations\r\ndiplomatiques, des partenaires au d&eacute;veloppement, des entreprises, et du monde &eacute;ducatif\r\naux enjeux de la veille et de l&rsquo;intelligence &eacute;conomique en Afrique', 'description ici', 3, 'vide', '<p>candidats ayant des formations en sciences &eacute;conomiques, gestion, &eacute;coles de&nbsp;commerce et &eacute;coles d&rsquo;ing&eacute;nieur ou autres parcours jug&eacute;s adapt&eacute;s.</p>', '   vide', '   vide', '   vide', '<p>Ce Master vise &agrave; sensibiliser les futurs cadres des pouvoirs publics, des repr&eacute;sentations diplomatiques, des partenaires au d&eacute;veloppement, des entreprises, et du monde &eacute;ducatif aux enjeux de la veille et de l&rsquo;intelligence &eacute;conomique en Afrique pour :&nbsp;</p>\r\n<ul>\r\n<li>Aider &agrave; la cr&eacute;ation et au d&eacute;veloppement des dispositifs de veille sectorielle et d&rsquo;intelligence &eacute;conomique et strat&eacute;gique au sein des institutions publiques et priv&eacute;es ;</li>\r\n<li>Aider les &Eacute;tats, investisseurs, entreprises, organismes de d&eacute;veloppement et m&eacute;dias &agrave; mieux appr&eacute;hender les march&eacute;s africains gr&acirc;ce &agrave; l&rsquo;intelligence &eacute;conomique ;</li>\r\n<li>Renforcer les capacit&eacute;s de compr&eacute;hension des march&eacute;s africains aupr&egrave;s des institutions publiques et priv&eacute;es ainsi qu&rsquo;aupr&egrave;s des porteurs de projets individuels ;</li>\r\n<li>Permettre &agrave; tout investisseur et &agrave; toute entreprise de trouver les meilleures r&eacute;ponses &agrave; ses questions concernant ses projets d&rsquo;investissements, ses recherches de partenaires locaux et ses implantations potentielles en Afrique ;</li>\r\n<li>Contribuer &agrave; la f&eacute;d&eacute;ration, &agrave; la repr&eacute;sentation, &agrave; la d&eacute;fense, et &agrave; la promotion des int&eacute;r&ecirc;ts &eacute;conomiques des &Eacute;tats et des entreprises d&rsquo;Afrique aupr&egrave;s des institutions supranationales et para&eacute;tatiques gr&acirc;ce &agrave; la veille et l&rsquo;intelligence &eacute;conomique ;</li>\r\n<li>Aider les entreprises, les institutions &eacute;tatiques, para&eacute;tatiques ou priv&eacute;es &agrave; r&eacute;sister &agrave; la concurrence, &agrave; prot&eacute;ger leur r&eacute;putation, &agrave; promouvoir leur image, &agrave; &eacute;valuer leur forces/faiblesses et &agrave; anticiper les tendances futures du march&eacute; Africain</li>\r\n</ul>', '<table>\n<tbody>\n<tr>\n<th><span style=\"font-weight: 400;\">1 &egrave;re ann&eacute;e Licence</span></th>\n<td>\n<p><strong>Semestre 1</strong></p>\n<ul>\n<li>Introduction &agrave; l&rsquo;IE</li>\n<li>M&eacute;thodologie de l&rsquo;IE</li>\n<li>Cadres juridiques de l&rsquo;IE &amp; Protection de l&rsquo;information</li>\n<li>M&eacute;thodes d&rsquo;influence</li>\n<li>Renforcement des capacit&eacute;s</li>\n<li>Langues et outils</li>\n</ul>\n</td>\n<td><strong>Semestre 2</strong><br />\n<ul>\n<li>M&eacute;moire de Stage de fin d&rsquo;&eacute;tudes</li>\n</ul>\n</td>\n</tr>\n</tbody>\n</table>', '<ul>\r\n<li>Cadre d&rsquo;administration de l&rsquo;Etat</li>\r\n<li>Cadre strat&eacute;gique en entreprise</li>\r\n<li>Consultant&nbsp;</li>\r\n</ul>', '<p><strong>Niveau : </strong>Master Professionnel</p>\r\n<p><strong>Dur&eacute;e : </strong>2 semestres</p>\r\n<p><strong>R&eacute;gime : </strong>Formation initiale ; plein temps</p>', 'yes', '2020-06-15 15:35:02'),
(25, 'master-mutation-digit.jpg', 'master-mutation-digit.png', 'plaquette 1-09.pdf', 'Mutations Digitales', 'Ce mast&egrave;re met en &eacute;vidence une d&eacute;marche interdisciplinaire adapt&eacute;e aux sp&eacute;cificit&eacute;s du\r\nmarch&eacute; de l&rsquo;emploi et aux particularit&eacute;s des nouvelles donnes de la mondialisation,\r\n>notamment en ce qui concerne l&rsquo;&eacute;mergence des nouvelles technologies de l&rsquo;information et\r\nde la communication', 'description ici', 3, 'vide', '<p>La formation est ouverte aux &eacute;tudiants titulaires d\'une licence en droit, en sciences de gestion et en marketing et en sciences de l&rsquo;information. L&rsquo;exp&eacute;rience professionnelle acquise est prise en compte apr&egrave;s examen du dossier et avis du conseil scientifique et p&eacute;dagogique du master</p>', NULL, NULL, NULL, '<p>Ce Mast&egrave;re, situ&eacute; au croisement du droit et du digital marketing, vise &agrave; apporter une sp&eacute;cialisation juridique et manag&eacute;riale dans le domaine des m&eacute;dias et de la communication, concernant l&rsquo;ensemble des secteurs de la communication que cette derni&egrave;re soit audiovisuelle, digitale, ou presse &eacute;crite, ainsi qu&rsquo;en mati&egrave;re de propri&eacute;t&eacute; intellectuelle, de droit des contrats, de droit de la concurrence et de la r&eacute;gulation dans les champs du num&eacute;rique et des m&eacute;dias.</p>\r\n<p>Ce mast&egrave;re met en &eacute;vidence une d&eacute;marche interdisciplinaire adapt&eacute;e aux sp&eacute;cificit&eacute;s du march&eacute; de l&rsquo;emploi et aux particularit&eacute;s des nouvelles donnes de la mondialisation, notamment en ce qui concerne l&rsquo;&eacute;mergence des nouvelles technologies de l&rsquo;information et de la communication. Il touche &agrave; la fois &agrave; la gestion notamment au marketing et au droit public (libert&eacute; d\'expression, de communication et d&rsquo;information, r&eacute;partition des comp&eacute;tences de r&eacute;gulation), au droit p&eacute;nal (d&eacute;lits de presse, responsabilit&eacute; p&eacute;nale, cybercriminalit&eacute;), au droit priv&eacute; (responsabilit&eacute; civile, droits d\'auteur, protection de la vie priv&eacute;e, droit &agrave; l\'image, droit des donn&eacute;es personnelles), au droit &eacute;conomique (r&eacute;glementation de la publicit&eacute;, contr&ocirc;le des concentrations) et au droit international, &agrave; l&rsquo;&eacute;conomie num&eacute;rique ou au marketing</p>', '<table>\n<tbody>\n<tr>\n<th><span style=\"font-weight: 400;\">1 &egrave;re ann&eacute;e Licence</span></th>\n<td>\n<p><strong>Semestre 1</strong></p>\n<ul>\n<li>Principes de gestion et du marketing digital</li>\n<li>Principes fondamentaux du droit du num&eacute;rique et des m&eacute;dias</li>\n<li>Droits et libert&eacute;s fondamentaux</li>\n<li>Anglais appliqu&eacute; au num&eacute;rique et m&eacute;dia</li>\n<li>Principes de langage de programmation</li>\n<li>Cr&eacute;ation et gestion d&rsquo;un projet entrepreneurial </li>\n</ul>\n</td>\n<td><strong>Semestre 2</strong><br />\n<ul>\n<li>Principes fondamentaux de la concurrence et de la r&eacute;gulation</li>\n<li>Nouvelles tendances de consommation et comportement du cyber consommateur<br />communication digitale</li>\n<li>Techniques de communication et de prise de parole</li>\n<li>Modules optionnels :</li>\n<li>Initiation au business games</li>\n<li>&eacute;conomie des m&eacute;dias</li>\n</ul>\n</td>\n</tr>\n<tr>\n<th><span style=\"font-weight: 400;\">2 &egrave;me ann&eacute;e Licence</span></th>\n<td>\n<p><strong>Semestre 3</strong></p>\n<p><strong>Mention Droit du Num&eacute;rique et des M&eacute;dias</strong></p>\n<ul>\n<li>Droit des contrats, des m&eacute;dias et du num&eacute;rique</li>\n<li>Aspects p&eacute;naux appliqu&eacute;s &agrave; l&rsquo;&eacute;conomie num&eacute;rique</li>\n<li>Droit international du num&eacute;rique et des m&eacute;dias</li>\n<li>M&eacute;thodologie professionnelle</li>\n<li>Modules optionnels</li>\n</ul>\n<p><strong>Mention Marketing et Economie Num&eacute;rique</strong></p>\n<ul>\n<li>Strat&eacute;gies de Distribution, e-commerce et phygitalisation&nbsp;</li>\n<li>Marketing mobile</li>\n<li>Cr&eacute;ation et gestion de sites Web</li>\n<li>Analyses des sites web</li>\n<li>E-CRM, automation marketing et processus d&rsquo;entreposage de donn&eacute;es</li>\n<li>Cr&eacute;ation et gestion d&rsquo;un projet entrepreneurial&nbsp;digital</li>\n<li>Modules optionnels&nbsp;:</li>\n<li>Business Ethics and marketing</li>\n<li>Transformation digitale de l&rsquo;&eacute;conomie</li>\n</ul>\n</td>\n<td><strong>Semestre 4</strong> <br />\n<ul>\n<li>Stage en entreprise Etude de cas ou Autres</li>\n</ul>\n</td>\n</tr>\n</tbody>\n</table>', '<ul>\r\n<li>Juriste sp&eacute;cialiste en droit du num&eacute;rique et des m&eacute;dias &eacute;lectroniques et audiovisuels</li>\r\n<li>Sp&eacute;cialiste des m&eacute;tiers du marketing digital, de l&rsquo;information et de la communication</li>\r\n<li>Juriste en cabinet d&rsquo;avocats</li>\r\n<li>Avocat sp&eacute;cialis&eacute; en droit du num&eacute;rique et des m&eacute;dias</li>\r\n<li>Webd&eacute;veloppeur</li>\r\n<li>Community manager</li>\r\n<li>Social m&eacute;dia manager / Consultant SMO</li>\r\n<li>Chef digital officer</li>\r\n<li>Digital Brand Manager</li>\r\n<li>E- store Manager</li>\r\n<li>Trafic Manager</li>\r\n<li>Consultant en r&eacute;f&eacute;rencement</li>\r\n<li>Consultant en M&eacute;dia-planning</li>\r\n</ul>', '<p><strong>Niveau : </strong>Master Professionnel&nbsp;</p>\r\n<p><strong>Dur&eacute;e : </strong>3 semestres et stage&nbsp;</p>\r\n<p><strong>R&eacute;gime : </strong>Formation initiale ; plein temps</p>', 'yes', '2020-06-15 15:45:51'),
(26, 'licence_environnement.jpg', 'licence_environnement.png', 'plaquette 1-03.pdf', 'Pluridisciplinaire pour la gestion de l\'Environnement', 'Cette Licence Pluridisciplinaire en Gestion de l&rsquo;Environnement (LPGE) vise &agrave; former des\r\ntechniciens capables d&rsquo;op&eacute;rer dans le domaine de la gestion int&eacute;gr&eacute;e et concert&eacute;e de\r\nl&amp;#39;environnement en tant que charg&eacute; de mission (ou de projet).', 'description ici', 1, 'vide', '<ul>\n<li>Baccalaur&eacute;at Sciences exp&eacute;rimentales,</li>\n<li>Baccalaur&eacute;at<strong>&nbsp;</strong>Math&eacute;matiques<strong>, </strong></li>\n<li>Baccalaur&eacute;at Technique.</li>\n</ul>', NULL, NULL, NULL, '<p>Cette Licence Pluridisciplinaire en Gestion de l&rsquo;Environnement (LPGE) vise &agrave; former des techniciens capables d&rsquo;op&eacute;rer dans le domaine de la gestion int&eacute;gr&eacute;e et concert&eacute;e de l\'environnement en tant que charg&eacute; de mission (ou de projet).</p>\n<p>Elle s&rsquo;appuie sur l&rsquo;acquisition de comp&eacute;tence et de connaissances approfondies sur les concepts et les techniques n&eacute;cessaires &agrave; une approche scientifique de la gestion de l&rsquo;environnement dans le contexte du changement global, de la rar&eacute;faction des ressources naturelles et du d&eacute;veloppement socio-&eacute;conomique durable. Les principaux enseignements concernent la caract&eacute;risation de la biodiversit&eacute; et des &eacute;cosyst&egrave;mes, la conservation et la r&eacute;habilitation des ressources naturelles (bio-ressources, eau, &eacute;nergie et sol), la d&eacute;termination des diff&eacute;rents types de pollutions, leurs devenirs et leurs impacts sur l&rsquo;environnement,&nbsp;la ma&icirc;trise des technologies de pr&eacute;vention et de rem&eacute;diation pour r&eacute;pondre aux d&eacute;fis environnementaux du XXI<sup>&egrave;me</sup> si&egrave;cle ainsi que la lutte contre toute forme de pollution.&nbsp; &nbsp;</p>', '<table>\n<tbody>\n<tr>\n<th>1 &egrave;re ann&eacute;e Licence</th>\n<td><strong>Semestre 1</strong> <br />\n<ul>\n<li>Terre habitable</li>\n<li>Biologie animale et v&eacute;g&eacute;tale</li>\n<li>Outils math&eacute;matiques</li>\n<li>Atomistiques et liaisons chimiques</li>\n<li>Conf&eacute;rences environnement et sant&eacute;</li>\n<li>Mol&eacute;cules du vivant</li>\n</ul>\n</td>\n<td><strong>Semestre 2</strong><br />\n<ul>\n<li>Morpho-anatomie du vivant</li>\n<li>Mat&eacute;riaux de la lithosph&egrave;re</li>\n<li>Statistiques</li>\n<li>Stage terrain en g&eacute;ologie</li>\n<li>D&eacute;veloppement durable et responsabilit&eacute; sociale des entreprises</li>\n<li>Thermochimie et &eacute;quilibres chimiques</li>\n<li>Anglais 1</li>\n</ul>\n</td>\n</tr>\n<tr>\n<th><strong>2 &egrave;me ann&eacute;e Licence</strong></th>\n<td><strong>Semestre 3</strong><br />\n<ul>\n<li>Chimie des solutions et &eacute;lectrochimie</li>\n<li>Cartographie et g&eacute;omatique</li>\n<li>Sciences du sol et de l&rsquo;eau</li>\n<li>Biologie et chimie de l&rsquo;environnement</li>\n<li>Anglais 2</li>\n<li>Fran&ccedil;ais</li>\n</ul>\n</td>\n<td><strong>Semestre 4</strong><br />\n<ul>\n<li>Biologie de l&rsquo;environnement 2</li>\n<li>Cin&eacute;tique et r&eacute;actions organiques</li>\n<li>G&eacute;omorphologie et climatologie</li>\n<li>Environnement num&eacute;rique</li>\n<li>Outils math&eacute;matiques et physiques</li>\n<li>Anglais 3</li>\n</ul>\n</td>\n</tr>\n<tr>\n<th><strong>3 &egrave;me ann&eacute;e Licence</strong></th>\n<td><strong>Semestre 5</strong>\n<ul>\n<li>Gestion de risques</li>\n<li>Microbiologie des eaux et des sols</li>\n<li>Analyses spectrales et s&eacute;paratives</li>\n<li>Chimie des eaux naturelles</li>\n<li>Exploitation des g&eacute;oressources et environnement</li>\n<li>Anglais 4</li>\n</ul>\n</td>\n<td><strong>Semestre 6</strong><br />\n<ul>\n<li>Traitement des eaux, des d&eacute;chets</li>\n<li>Acteurs de l&rsquo;environnement et normes environnementales</li>\n<li>G&eacute;ochimie des contaminant</li>\n<li>Impacts sanitaire et environnemental des pollutions</li>\n<li>CV Num&eacute;rique</li>\n<li>Atelier environnemental</li>\n</ul>\n</td>\n</tr>\n</tbody>\n</table>', '<ul>\n<li>Op&eacute;rateurs dans le traitement de l&rsquo;eau, des d&eacute;chets et de l&rsquo;&eacute;nergie.</li>\n<li>Technicien en qualit&eacute;, s&eacute;curit&eacute; et environnement,</li>\n<li>Agent charg&eacute; de protection et de sauvegarde du patrimoine naturel</li>\n<li>Technicien en g&eacute;nie sanitaire et environnement</li>\n<li>Charg&eacute; d\'&eacute;tudes d&rsquo;impact sur l&rsquo;environnement</li>\n<li>Technicien en chimie environnement en industrie</li>\n<li>Technicien de mesure de la qualit&eacute; de l&rsquo;eau</li>\n<li>Technicien en traitement des eaux</li>\n</ul>', '<p><strong>Niveau : </strong>Licence&nbsp;(3 ans)</p>\n<p><strong>Dur&eacute;e : </strong>6 semestres</p>\n<p><strong>R&eacute;gime : </strong>Formation initiale ; plein temps</p>', 'yes', '2020-06-15 15:46:14'),
(27, 'H.png', 'certificat 1.png', NULL, 'Certificat Soft skills, entrepreneuriat et crÃ©ativitÃ©', 'La formation â€ soft skills â€ est modulaire. AprÃ¨s avoir suivi un module du programme au sein de sa formation principale, lâ€™Ã©tudiant peut capitaliser les crÃ©dits obtenus et sâ€™inscrire Ã  dâ€™autres modules tout au long de son cursus universitaire afin dâ€™obtenir la certification complÃ¨te â€ soft skills â€œ.', 'description ici', 4, ' vide', ' ', ' ', ' ', 'Le module â€ soft skills â€ est ouvert Ã  tous les Ã©tudiants admis Ã  lâ€™UFTAM. Les cadres et salariÃ©s dâ€™entreprises peuvent sâ€™inscrire aux modules â€ soft skills â€ sous rÃ©serve de lâ€™obtention dâ€™un financement de leur employeur ou dâ€™un organisme prescripteur de formation ou de financement personnel. En cas de rÃ©ussite, ils obtiennent le certificat correspondant', 'DÃ©velopper lâ€™esprit dâ€™innovation et la culture entrepreneuriale\nFaire Ã©merger des concepts de startups,\nConnaÃ®tre lâ€™Ã©cosystÃ¨me de lâ€™innovation et de lâ€™entrepreneuriat\nAcquÃ©rir les compÃ©tences clÃ©s du 21Ã¨me siÃ¨cle : innovation, crÃ©ativitÃ©, rÃ©solution de problÃ¨mes complexes, analyse critique, intelligence collective.\n', 'Les modules de la certification â€ soft skills â€ sont basÃ©s sur des dÃ©fis rÃ©els identifiÃ©s avec un partenaire Ã©conomique ou institutionnel. Ils sont toujours rÃ©alisÃ©s selon un format de formation-action oÃ¹ lâ€™Ã©tudiant travaille en Ã©quipe pluridisciplinaire et avec des partenaires socio-Ã©conomiques. Ils se dÃ©roulent sur des durÃ©es variables selon le cas rÃ©el sur lesquels ils sont basÃ©s. <br>\nReflect : des ateliers intensifs de co-crÃ©ation pour approfondir une thÃ©matique ou une approche liÃ©e Ã  lâ€™innovation et pour acquÃ©rir les mÃ©thodes de rÃ©solutions de problÃ¨mes complexes et dâ€™innovation.\nImpact : des projets business ou sociÃ©taux, accompagnÃ©s par des mÃ©thodes dâ€™innovation tournÃ©es sur lâ€™utilisateur final et son environnement. Le programme Invent Business pour trouver des solutions innovantes Ã  la problÃ©matique dâ€™une entreprise, le programme Invent Impact Social pour rÃ©soudre un problÃ¨me sociÃ©tal en open source.\nExplore : des learning expÃ©ditions pour dÃ©couvrir et rÃ©soudre in-situ et en cocrÃ©ation des challenges portÃ©s par des associations citoyennes, des collectivitÃ©s ou des ONG\n', 'La formation â€ soft skills â€ est modulaire. AprÃ¨s avoir suivi un module du programme au sein de sa formation principale, lâ€™Ã©tudiant peut capitaliser les crÃ©dits obtenus et sâ€™inscrire Ã  dâ€™autres modules tout au long de son cursus universitaire afin dâ€™obtenir la certification complÃ¨te â€ soft skills â€œ. <br>\nA la suite de ce programme lâ€™Ã©tudiant est en capacitÃ© de concevoir un projet innovant Ã  vocation Ã©conomique ou sociale, le prototyper, le prÃ©senter pour obtenir des financements et dÃ©velopper son propre concept de startup.\n', 'Ce programme sâ€™adresse Ã  tous les Ã©tudiants, quel que soit leur niveau et discipline ; il est accessible Ã©galement aux salariÃ©s dâ€™entreprises, diplÃ´mÃ©s en reconversion, PHD.', 'yes', '2020-06-15 15:52:54'),
(28, 'I.png', 'certificat 2.png', NULL, 'Certificat IngÃ©nierie de projets euro-mÃ©diterranÃ©ens', 'La Tunisie est un pays associÃ© Ã  lâ€™Union EuropÃ©enne, Ã©ligible aux financements europÃ©ens ainsi quâ€™Ã  des fonds flÃ©chÃ©s pour le dÃ©veloppement de lâ€™axe euro-mÃ©diterranÃ©en.', 'description ici', 4, ' vide', ' ', ' ', ' ', 'La formation IPE est ouverte Ã  tous les Ã©tudiants admis Ã  lâ€™UFTAM. Les cadres et salariÃ©s dâ€™entreprises peuvent Ã©galement sâ€™inscrire aux modules, sous rÃ©serve de lâ€™obtention dâ€™un financement de leur employeur ou dâ€™un organisme prescripteur de formation ou de financement personnel.', 'La Tunisie est un pays associÃ© Ã  lâ€™Union EuropÃ©enne, Ã©ligible aux financements europÃ©ens ainsi quâ€™Ã  des fonds flÃ©chÃ©s pour le dÃ©veloppement de lâ€™axe euro-mÃ©diterranÃ©en. Lâ€™enjeu majeur de la formation IPEM est dâ€™offrir un programme complet et trÃ¨s professionnalisant (mÃªlant thÃ©orie et surtout Ã©tude de cas pratique) sur le montage et la gestion des projets euro-mÃ©diterranÃ©ens.\nConnaÃ®tre la diversitÃ© des fonds, la diversitÃ© des acteurs, la spÃ©cificitÃ© des rÃ¨gles financiÃ¨res et administratives europÃ©ennes\nComprendre les structures, mÃ©canismes et procÃ©dÃ©s en passant par les techniques de montage et de gestion ;\nAcquÃ©rir une formation la plus complÃ¨te possible et pouvant Ãªtre mise en pratique immÃ©diatement par les participants dans leur environnement professionnel\n', 'Le programme est composÃ© de plusieurs modules. Le premier module vise Ã  â€ lisser â€ le niveau des participants sur les financements euro-mÃ©diterranÃ©ens ; les autres modules sont indÃ©pendants les uns des autres et abordent chacun de faÃ§on thÃ©orique et pratique, un aspect des financements europÃ©ens.\nLes participants peuvent au choix : <br>\nâ€“ Soit suivre lâ€™ensemble des modules et obtenir, aprÃ¨s rÃ©ussite Ã  lâ€™Ã©valuation finale, le DiplÃ´me dâ€™IngÃ©nierie de projets europÃ©ens (possibilitÃ© Ã©galement de lisser lâ€™apprentissage sur plusieurs annÃ©es acadÃ©miques) <br>\nâ€“ Soit ne suivre que certains modules (en fonction des centres dâ€™intÃ©rÃªt et ou des besoins immÃ©diats de formation) et obtenir des certificats correspondants.\n', 'Travailler au sein dâ€™agences dâ€™expertise et de consultation, intÃ©grer des services de montage de rÃ©ponse Ã  appel Ã  projets, gÃ©rer des projets existants, Ã©tablir des justifications et des bilans de projetsâ€¦', 'Ce programme sâ€™adresse potentiellement Ã  tous les Ã©tudiants de niveau Bac +3 quelle que soit leur discipline, aux professionnels, aux personnes en recherche dâ€™emploi ou en reconversion professionnelle.\n', 'yes', '2020-06-15 15:53:01');

-- --------------------------------------------------------

--
-- Table structure for table `t_la_vie`
--

CREATE TABLE `t_la_vie` (
  `tlv_id` int(11) NOT NULL,
  `tlv_active` varchar(5) NOT NULL DEFAULT 'yes',
  `tlv_lib` varchar(50) NOT NULL,
  `tlv_description` text NOT NULL,
  `tlv_img` varchar(255) NOT NULL,
  `tlv_specialty` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_la_vie`
--

INSERT INTO `t_la_vie` (`tlv_id`, `tlv_active`, `tlv_lib`, `tlv_description`, `tlv_img`, `tlv_specialty`) VALUES
(19, 'yes', 'Talel SAHMIM', 'J\'ai dÃ©couvert l\'UFTAM Ã  l\'occasion de la lecture d\'un article de presse portant sur son inauguration et cela m\'a amenÃ© Ã  m\'informer sur les formations proposÃ©es...(2Ã©me annÃ©e master expertise Ã©conomique des politiques et projets de dÃ©veloppement)', 'first.png', 'Etudiant en 2&eacute;me ann&eacute;e master expertise &eacute;conomique des politiques et projets de d&eacute;veloppement'),
(20, 'no', 'Parfait BEUGRE', 'L\'UFTAM offre une pÃ©dagogie originale, centrÃ©e sur le transfert dâ€™expÃ©rience dans lâ€™action, pluridisciplinaire, tournÃ©e vers l\'international pour faire Ã©merger les grands entrepreneurs et les grands projets de demain. (2Ã©me annÃ©e master expertise Ã©conomique des politiques et projets de dÃ©veloppement)', 'second.png', 'Etudiant en 2&eacute;me ann&eacute;e master expertise &eacute;conomique des politiques et projets de d&eacute;veloppement'),
(21, 'yes', 'Mehdi EL BATTI', 'J\'ai dÃ©couvert l\'UFTAM Ã  l\'occasion de la lecture d\'un article de presse portant sur son inauguration et cela m\'a amenÃ© Ã  m\'informer sur les formations proposÃ©s. J\'ai ainsi dÃ©couvert le mastÃ¨re expertise Ã©conomique qui m\'a attirÃ© Ã©tant...', 'third.png', 'Etudiant en 2&eacute;me ann&eacute;e master expertise &eacute;conomique des politiques et projets de d&eacute;veloppement'),
(22, 'no', 'Parfait BEUGRE', 'Seule lâ€™UFTAM proposait une telle formation, jâ€™ai donc dÃ©cidÃ© de relever le dÃ©fi ! Â« Ã€ l\'instar des autres UniversitÃ©s prÃ©sentent en Tunisie, lâ€™UFTAM propose des formations de trÃ¨s haut niveau, voire dâ€™un niveau (2Ã©me annÃ©e master expertise Ã©conomique des politiques et projets de dÃ©veloppement)...', 'fourth.png', 'Etudiant en 2&eacute;me ann&eacute;e master expertise &eacute;conomique des politiques et projets de d&eacute;veloppement'),
(23, 'yes', 'Wadii JELASSI', 'J\'aime cette petite institution hors du commun, car ses cours en bloc, ses mÃ©thodes et ses stratÃ©gies pÃ©dagogiques ont Ã©tÃ© pour moi une expÃ©rience fantastique dans mon cursus universitaire...(2Ã©me annÃ©e master expertise Ã©conomique des politiques et projets de dÃ©veloppement)', 'fifth.png', 'Etudiant en 2&eacute;me ann&eacute;e master expertise &eacute;conomique des politiques et projets de d&eacute;veloppement'),
(24, 'yes', ' Maria Gravari Barbas', 'Madame Maria Gravari Barbas, enseignante Ã  Paris 1 PanthÃ©on Sorbonne de son expÃ©rience Ã  l\'UFTAM: \"Ma mission dans le cadre de lâ€™UFTAM (UniversitÃ© Franco-Tunisienne pour lâ€™Afrique et la MÃ©diterranÃ©e) vient de se terminer. Jâ€™ai eu le plaisir de travailler pendant 4 jours avec 16 Ã©tudiants trÃ¨s engagÃ©s qui suivent le diplÃ´me M2 Expertise Ã©conomique des politiques et projets de dÃ©veloppement co-habilitÃ© entre Paris 1 PanthÃ©on-Sorbonne et lâ€™UniversitÃ© de Tunis.\r\n', 'seventh.jpg', 'Enseignante &agrave; Paris 1 Panth&eacute;on Sorbonne de son exp&eacute;rience &agrave; l&#39;UFTAM'),
(25, 'yes', 'Hornella DUAMBE', 'Un des avantages les plus importants d\'Ã©tudier Ã  l\'UFTAM est quâ€™il s\'agit nÃ©cessairement de l\'ouverture Ã  l\'Ã©chelle internationale, de quoi dÃ©coulent plusieurs avantages. La garantie d\'un diplÃ´me qui pourrait Ãªtre reconnu Ã  l\'international est avantageux pour tous, car actuellement, la qualitÃ© du diplÃ´me est aussi jugÃ©e en raison de sa provenance. L\'UFTAM travaille sur une mÃ©thodologie qui permet Ã  tous les Ã©tudiants d\'avoir accÃ¨s aux Ã©lÃ©ments nÃ©cessaires et indispensables Ã  leur formation.Â Un cours est d\'autant plus apprÃ©ciÃ© lorsque son domaine thÃ©orie et son domaine pratique se joignent lors de l\'apprentissage. A lâ€™UFTAM, les approches tournÃ©es vers des Ã©tudes de cas et vers des pratiques prÃ©parent Ã  la rÃ©alitÃ© professionnelle et cela est trÃ¨s important. Nous sommes appelÃ©s Ã  rÃ©flÃ©chir et rÃ©pondre aux questions, et s\'imprÃ©gner de ce devoir lors de la formation nous est d&#39;une grande importance.', 'sixth.jpeg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_newsletter`
--

CREATE TABLE `t_newsletter` (
  `new_id` int(11) NOT NULL,
  `new_email` varchar(50) NOT NULL,
  `new_submit_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_newsletter`
--

INSERT INTO `t_newsletter` (`new_id`, `new_email`, `new_submit_date`) VALUES
(5, 'abed@gmail.com', '2020-06-15 20:40:05'),
(6, 'sdqjfml@gmail.com', '2020-06-15 20:43:21'),
(7, 'abedissam@gmail.com', '2020-06-16 14:24:32'),
(8, 'qsf@ga.com', '2020-06-16 17:44:16');

-- --------------------------------------------------------

--
-- Table structure for table `t_partner`
--

CREATE TABLE `t_partner` (
  `par_id` int(11) NOT NULL,
  `par_lib` varchar(50) DEFAULT NULL,
  `par_logo` varchar(255) DEFAULT NULL,
  `par_ing_subpage` varchar(5) NOT NULL DEFAULT 'no',
  `par_active` varchar(5) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_partner`
--

INSERT INTO `t_partner` (`par_id`, `par_lib`, `par_logo`, `par_ing_subpage`, `par_active`) VALUES
(48, 'ecole normale paris saclay', 'ecole normale paris saclay.png', 'no', 'yes'),
(49, 'enit', 'enit.png', 'no', 'yes'),
(50, 'ensit', 'ensit.png', 'no', 'yes'),
(51, 'ensta', 'ensta.png', 'no', 'yes'),
(52, 'essect', 'essect.png', 'no', 'yes'),
(53, 'facultÃ© de droit aix marseille', 'facultÃ© de droit aix marseille.png', 'no', 'yes'),
(54, 'faculte des sciences bizerte', 'faculte des sciences bizerte.png', 'no', 'yes'),
(55, 'faculte des sciences de tunis', 'faculte des sciences de tunis.png', 'no', 'yes'),
(56, 'faculte droit', 'faculte droit.png', 'no', 'yes'),
(57, 'supcom', 'supcom.png', 'no', 'yes'),
(58, 'universit aix marseille', 'universit aix marseille.png', 'no', 'yes'),
(59, 'universite cote azur', 'universite cote azur.png', 'no', 'yes'),
(60, 'universite de carthage', 'universite de carthage.png', 'no', 'yes'),
(61, 'universitÃ© de tunis', 'universitÃ© de tunis.png', 'no', 'yes'),
(62, 'universite manar', 'universite manar.png', 'no', 'yes'),
(63, 'universite paris saclay', 'universite paris saclay.png', 'no', 'yes'),
(64, 'universityÃ© sorbonne', 'universityÃ© sorbonne.png', 'no', 'yes'),
(65, 'afd', 'afd.png', 'no', 'yes'),
(66, 'ambassade fr', 'ambassade fr.png', 'no', 'yes'),
(67, 'ift', 'ift.png', 'no', 'yes'),
(68, 'ird', 'ird.png', 'no', 'yes'),
(69, 'republique tun', 'republique tun.png', 'no', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `t_student_exp`
--

CREATE TABLE `t_student_exp` (
  `tse_id` int(11) NOT NULL,
  `tse_active` varchar(5) NOT NULL DEFAULT 'yes',
  `tse_lib` text NOT NULL,
  `tse_description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_student_exp`
--

INSERT INTO `t_student_exp` (`tse_id`, `tse_active`, `tse_lib`, `tse_description`) VALUES
(6, 'yes', 'AccessibilitÃ© du campus et transport en commun', 'Les Frais dâ€™abonnement aux transports en commun (bus, mÃ©tro et train) sont variables  en fonction du trajet et du moyen de transport concernÃ© (bus ; mÃ©tro et train) : de 12dt Ã  130dt annuels.'),
(11, 'yes', 'Bourses dâ€™Ã©tudes', 'Les bourses dâ€™Ã©tude du MinistÃ¨re de lâ€™Enseignement SupÃ©rieur Tunisien sont offertes aux Ã©tudiants tunisiens sÃ©lectionnÃ©s Ã  lâ€™une des formations de lâ€™UFTAM. Un dossier sera Ã  constituer Ã  la rentrÃ©e en parallÃ¨le du dossier dâ€™inscription.'),
(12, 'yes', 'La restauration universitaire', 'Les Ã©tudiants de UFTAM sont accueillis au restaurant universitaire du Campus au sein des locaux et qui est sous la tutelle de l\'Office des Å’uvres Universitaires pour le Nord ils peuvent prendre leur dÃ®ner Ã  la CitÃ© Universitaire Morouj et Montfleuri.'),
(13, 'yes', 'Le logement universitaire', 'Les Ã©tudiants de lâ€™UFTAM disposent dâ€™un accÃ¨s rÃ©servÃ© aux logements des citÃ©s universitaires de Mourouj pour les filles et pour les garÃ§ons Montfleuri.');

-- --------------------------------------------------------

--
-- Table structure for table `t_trust_campany`
--

CREATE TABLE `t_trust_campany` (
  `ttc_id` int(11) NOT NULL,
  `ttc_active` varchar(5) NOT NULL DEFAULT 'yes',
  `ttc_lib` varchar(50) DEFAULT NULL,
  `ttc_logo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_trust_campany`
--

INSERT INTO `t_trust_campany` (`ttc_id`, `ttc_active`, `ttc_lib`, `ttc_logo`) VALUES
(9, 'yes', 'logo bh', 'logo bh.png'),
(10, 'yes', 'logo-internieur', 'logo-internieur.png'),
(11, 'yes', 'rtci logo', 'rtci logo.png'),
(12, 'yes', 'tv5 mondelogo', 'tv5 mondelogo.png'),
(13, 'yes', 'PNUD', 'PNUD_Logo-Bleu-Tagline_Noir FRENCH.png');

-- --------------------------------------------------------

--
-- Table structure for table `t_type_event`
--

CREATE TABLE `t_type_event` (
  `tte_id` int(11) NOT NULL,
  `tte_active` varchar(5) NOT NULL DEFAULT 'yes',
  `tte_lib` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_type_event`
--

INSERT INTO `t_type_event` (`tte_id`, `tte_active`, `tte_lib`) VALUES
(1, 'yes', 'first'),
(3, 'yes', 'second'),
(4, 'yes', 'third');

-- --------------------------------------------------------

--
-- Table structure for table `t_type_formation`
--

CREATE TABLE `t_type_formation` (
  `ttf_id` int(11) NOT NULL,
  `ttf_active` varchar(5) NOT NULL DEFAULT 'yes',
  `ttf_lib` varchar(50) NOT NULL,
  `ttf_modification_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_type_formation`
--

INSERT INTO `t_type_formation` (`ttf_id`, `ttf_active`, `ttf_lib`, `ttf_modification_date`) VALUES
(1, 'yes', 'Licence', '2020-05-27 14:01:01'),
(3, 'yes', 'Masters', '2020-05-27 14:01:15'),
(4, 'yes', 'Certificats', '2020-05-27 14:01:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_condidat`
--
ALTER TABLE `t_condidat`
  ADD PRIMARY KEY (`con_id`),
  ADD KEY `fk_formation` (`for_id`);

--
-- Indexes for table `t_diplome`
--
ALTER TABLE `t_diplome`
  ADD PRIMARY KEY (`dip_id`),
  ADD KEY `fk2_formation` (`for_id`);

--
-- Indexes for table `t_event`
--
ALTER TABLE `t_event`
  ADD PRIMARY KEY (`eve_id`),
  ADD KEY `fk1_type_event` (`tte_id`);

--
-- Indexes for table `t_formation`
--
ALTER TABLE `t_formation`
  ADD PRIMARY KEY (`for_id`),
  ADD KEY `fk1_type_formation` (`ttf_id`);

--
-- Indexes for table `t_la_vie`
--
ALTER TABLE `t_la_vie`
  ADD PRIMARY KEY (`tlv_id`);

--
-- Indexes for table `t_newsletter`
--
ALTER TABLE `t_newsletter`
  ADD PRIMARY KEY (`new_id`);

--
-- Indexes for table `t_partner`
--
ALTER TABLE `t_partner`
  ADD PRIMARY KEY (`par_id`);

--
-- Indexes for table `t_student_exp`
--
ALTER TABLE `t_student_exp`
  ADD PRIMARY KEY (`tse_id`);

--
-- Indexes for table `t_trust_campany`
--
ALTER TABLE `t_trust_campany`
  ADD PRIMARY KEY (`ttc_id`);

--
-- Indexes for table `t_type_event`
--
ALTER TABLE `t_type_event`
  ADD PRIMARY KEY (`tte_id`);

--
-- Indexes for table `t_type_formation`
--
ALTER TABLE `t_type_formation`
  ADD PRIMARY KEY (`ttf_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_condidat`
--
ALTER TABLE `t_condidat`
  MODIFY `con_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `t_diplome`
--
ALTER TABLE `t_diplome`
  MODIFY `dip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `t_event`
--
ALTER TABLE `t_event`
  MODIFY `eve_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `t_formation`
--
ALTER TABLE `t_formation`
  MODIFY `for_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `t_la_vie`
--
ALTER TABLE `t_la_vie`
  MODIFY `tlv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `t_newsletter`
--
ALTER TABLE `t_newsletter`
  MODIFY `new_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `t_partner`
--
ALTER TABLE `t_partner`
  MODIFY `par_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `t_student_exp`
--
ALTER TABLE `t_student_exp`
  MODIFY `tse_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `t_trust_campany`
--
ALTER TABLE `t_trust_campany`
  MODIFY `ttc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `t_type_event`
--
ALTER TABLE `t_type_event`
  MODIFY `tte_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `t_type_formation`
--
ALTER TABLE `t_type_formation`
  MODIFY `ttf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `t_condidat`
--
ALTER TABLE `t_condidat`
  ADD CONSTRAINT `fk_formation` FOREIGN KEY (`for_id`) REFERENCES `t_formation` (`for_id`);

--
-- Constraints for table `t_diplome`
--
ALTER TABLE `t_diplome`
  ADD CONSTRAINT `fk2_formation` FOREIGN KEY (`for_id`) REFERENCES `t_formation` (`for_id`);

--
-- Constraints for table `t_event`
--
ALTER TABLE `t_event`
  ADD CONSTRAINT `fk1_type_event` FOREIGN KEY (`tte_id`) REFERENCES `t_type_event` (`tte_id`);

--
-- Constraints for table `t_formation`
--
ALTER TABLE `t_formation`
  ADD CONSTRAINT `fk1_type_formation` FOREIGN KEY (`ttf_id`) REFERENCES `t_type_formation` (`ttf_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
