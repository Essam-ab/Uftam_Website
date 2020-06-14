-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2020 at 01:40 AM
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
(37, 'qsfd', 'qsdf', 'essam@gmail.com', '2020-04-18', '5165', 26, '+91', 'IN', '180218.jpg', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_diplome`
--

CREATE TABLE `t_diplome` (
  `dip_id` int(11) NOT NULL,
  `dip_lib` varchar(255) DEFAULT NULL,
  `dip_logo` varchar(255) NOT NULL,
  `for_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_diplome`
--

INSERT INTO `t_diplome` (`dip_id`, `dip_lib`, `dip_logo`, `for_id`) VALUES
(3, 'universit aix marseille', 'universit aix marseille.png', 26),
(4, 'faculte des sciences de tunis', 'faculte des sciences de tunis.png', 26),
(5, 'universite de carthage', 'universite de carthage.png', 26),
(7, 'faculte des sciences bizerte', 'faculte des sciences bizerte.png', 26),
(8, 'universite manar', 'universite manar.png', 26),
(9, 'universite manar', 'universite manar.png', 20),
(10, 'faculte des sciences de tunis', 'faculte des sciences de tunis.png', 20),
(11, 'universit aix marseille', 'universit aix marseille.png', 20),
(12, 'universite de carthage', 'universite de carthage.png', 20),
(13, 'faculte des sciences bizert', 'faculte des sciences bizerte.png', 20),
(14, 'universitye sorbonne', 'universitye sorbonne.png', 21),
(15, 'essect', 'essect.png', 21),
(16, 'universite de tunis', 'universite de tunis.png', 21),
(18, 'universite manar', 'universite manar.png', 22),
(19, 'universite de carthage', 'universite de carthage.png', 22),
(20, 'ensta', 'ensta.png', 22),
(21, 'enit', 'enit.png', 22),
(22, 'supcom', 'supcom.png', 22),
(23, 'universite de tunis', 'universite de tunis.png', 23),
(24, 'universite paris saclay', 'universite paris saclay.png', 23),
(25, 'ensit', 'ensit.png', 23),
(26, 'ecole normale paris saclay', 'ecole normale paris saclay.png', 23),
(27, 'universite de carthage', 'universite de carthage.png', 24),
(28, 'universite cote azur', 'universite cote azur.png', 24),
(30, 'universite manar', 'universite manar.png', 25),
(31, 'universit aix marseille', 'universit aix marseille.png', 25),
(32, 'universite de tunis', 'universite de tunis.png', 25),
(33, 'faculte droit', 'faculte droit.png', 25),
(34, 'faculte de droit aix marseille', 'faculte de droit aix marseille.png', 25);

-- --------------------------------------------------------

--
-- Table structure for table `t_event`
--

CREATE TABLE `t_event` (
  `eve_id` int(11) NOT NULL,
  `eve_img` varchar(255) DEFAULT NULL,
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

INSERT INTO `t_event` (`eve_id`, `eve_img`, `eve_lib`, `eve_description`, `eve_date`, `tte_id`, `eve_details`, `eve_active`) VALUES
(5, 'event1.png', 'Bourses dâ€™excellence', ' Pour le dÃ©marrage de lâ€™UFTAM, Lâ€™Institut FranÃ§ais de Tunisie et le ministÃ¨re de lâ€™enseignement supÃ©rieur tunisien ont attribuÃ© 12 bourses aux Ã©tudiants tunisiens les plus mÃ©ritants. La sÃ©lection des Ã©tudiants boursiers sâ€™est basÃ©e sur lâ€™excellence acadÃ©mique, le lieu de rÃ©sidence ainsi que sur la situation familiale et financiÃ¨re.  Les 12 Ã©tudiants sÃ©lectionnÃ©s ont donc pu profiter de lâ€™exonÃ©ration totale de leur frais de scolaritÃ©.', '2020-05-01', 3, '<div><b>s:qdkfj mqls</b></div>', 'yes'),
(7, 'event1.png', 'Les Vendredis de l\'Orientation Ã  l\'Uftam : JournÃ©e Virtuelle', 'Vous n\'avez pas pu assister Ã  la journÃ©e de l\'orientation Ã  l\'UFTAM le vendredi 22 mai!? Nous vous donnons un deuxiÃ¨me rendez-vous en ligne â€¦', '2020-05-29', 1, NULL, 'no'),
(10, 'event2.png', 'Sortie dâ€™Ã©tudes pour nos Ã©tudiants en master gestion de lâ€™eau Ã  Oued Meliane', 'Les Ã©tudiants de la premiÃ¨re annÃ©e master Gestion de lâ€™environnement et mÃ©tiers de lâ€™eau, accompagnÃ©s de leur enseignant Pascal Wong, ont eu la chance de partir en visite Ã  lâ€™Institut SupÃ©rieur des Sciences et Technologies de lâ€™Environnement situÃ© Ã  Borj Cedria.', '2020-05-27', 3, '<div><div>Lorem&#160;ipsum,&#160;dolor&#160;sit&#160;amet&#160;consectetur&#160;adipisicing&#160;elit.&#160;Mollitia&#160;ducimus&#160;blanditiis&#160;unde&#160;doloremque&#160;modi&#160;accusantium</div><div>omnis?&#160;Non&#160;consequuntur&#160;rerum&#160;asperiores&#160;alias,&#160;beatae,&#160;praesentium&#160;iusto&#160;dolore&#160;hic&#160;maiores&#160;ipsa&#160;fugiat&#160;voluptatum!</div></div>', 'yes'),
(16, 'event3.png', 'JournÃ©e Portes Ouvertes Virtuelle', 'Au cours de cette journÃ©e, vous pourrez assister Ã  des confÃ©rences, posez vos questions Ã  lâ€™Ã©quipe pÃ©dagogique, tÃ©lÃ©charger nos brochuresâ€¦', '2020-04-18', 1, NULL, 'yes'),
(17, 'event2.png', 'Lancement officiel de lâ€™UFTAM', 'Une confÃ©rence sur le thÃ¨me Â« Quels mÃ©tiers nÃ©cessaires pour lâ€™Afrique de demain ? Â» a Ã©tÃ© organisÃ©e avec lâ€™intervention introductive de Aziz Mebarek, co-fondateur, directeur gÃ©nÃ©ral Tuninvest, AfricInvest, et avec la participation de Youssef Fennira, directeur gÃ©nÃ©ral de lâ€™ANETI, Emna Khrouf, prÃ©sidente de lâ€™Atuge Atuge, Badreddine Ouali, PDG de Vermeg, Fethi Sellaouti,â€¦', '2020-05-15', 3, NULL, 'yes'),
(27, 'event2.png', 'Tunisie : premiÃ¨re promotion du master en Ã©tudes du dÃ©veloppement de lâ€™UFTAM', 'Lâ€™universitÃ© Paris 1 PanthÃ©on-Sorbonne est lâ€™une des universitÃ©s fondatrices de lâ€™UniversitÃ© Franco-Tunisienne pour lâ€™Afrique et la MÃ©diterranÃ©e (UFTAM), qui se donne comme objectif principal dâ€™offrir aux jeunes Tunisiens, et plus gÃ©nÃ©ralement aux jeunes Africains, des parcours dÃ©bouchant sur lâ€™employabilitÃ© immÃ©diate des Ã©tudiants diplÃ´mÃ©s.', '2020-05-31', 3, NULL, 'yes'),
(28, '', 'Foire Study in Europe', 'OrganisÃ©e par lâ€™Union EuropÃ©enne, cette foire a visÃ© la promotion les Ã©tudes en Europe pour les Ã©tudiants Tunisiens (accords avec les UniversitÃ©s europÃ©ennes, diffÃ©rents programmes et bourses pour les Tunisiens).', '2019-11-28', 3, '<div> &#10;<p class=\"MsoNormal\"><span>Lieu&#160;: </span><span>Cit&#233; de la culture </span></p>&#10;&#10;<p class=\"MsoNormal\"><span>Autres&#10;participants&#160;: </span><span>Erasmus +, Ambassade du Su&#232;de, SEPIE Espagne, ambassade de&#10;Finlande, Institut Stralang France, ambassade de la r&#233;publique de Malte, ISAG&#10;European Business School, Portugal, Universit&#233; de Cracovie Roumanie, Institut&#10;Fran&#231;ais de Tunisie, British Council Tunisie, Wallonie Bruxelles Campus, DAAD&#10;Tunisie&#8230;&#160;</span></p>&#10;</div>&#10;', 'yes'),
(30, 'Campus France Tunisie.jpg', 'JournÃ©e Campus France Tunisie ', 'Pour le lancement de sa nouvelle campagne de candidature 2019-2020, Campus France Tunisie  a organisÃ© Â«Les journÃ©es Campus France Â» avec une tournÃ©e dans 06 villes tunisiennes qui a dÃ©butÃ© Ã  lâ€™Institut FranÃ§ais de Tunis le samedi 07 dÃ©cembre. ', '2019-12-07', 3, '<div> &#10;<p class=\"MsoNormal\"><span>Au programme&#10;: </span></p>&#10;&#10;<p class=\"MsoNormal\"><span>- Pr&#233;sentation de la proc&#233;dure&#10;de candidature pour &#233;tudier en France <br>&#10;- Pr&#233;sentation &#34;Cr&#233;ation du dossier de candidature Campus France&#34;<br>&#10;- Pr&#233;sentation &#34;Comment pr&#233;parer et r&#233;ussir son entretien de&#10;motivation&#34;<br>&#10;- Pr&#233;sentation &#34;R&#233;daction d&#8217;un CV et d&#8217;une lettre de motivation&#34;&#160;</span></p><p class=\"MsoNormal\"><span><br></span></p><p class=\"MsoNormal\"><span>Lieu&#160;: </span><span>Institut Fran&#231;ais de&#10;Tunisie </span></p><p class=\"MsoNormal\">&#10;&#10;</p><p class=\"MsoNormal\"><span>Autres&#10;participants&#160;: </span><span>Centre de langue de l&#8217;Institut Fran&#231;ais et Campus France&#160;</span></p>&#10;</div>&#10;', 'yes'),
(31, 'Salon.jpg', NULL, NULL, NULL, NULL, NULL, 'yes'),
(32, 'Salon.jpg', 'Salon des Ã©tudes en France ', 'Le salon des Ã©tudes en France est une opportunitÃ© dâ€™avoir toutes les informations nÃ©cessaires pour rÃ©pondre facilement aux questions posÃ©es par les Ã©tudiants sur le choix dâ€™une licence, BTS, bachelor, Ã©cole dâ€™ingÃ©nieur ou de commerce. En dÃ©couvrant les diffÃ©rents Ã©tablissements de la France et en comparant leurs programmes, les Ã©tudiants auront toutes les clÃ©s en main pour dÃ©cider sereinement de leur avenir', '2020-01-31', 3, '&#10;<p class=\"MsoNormal\"><span>Lieu&#160;: </span><span>L&#8217;UTICA</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>Autres&#10;participants&#160;: </span><span>Universit&#233; internationale de Casablanca, l\'&#233;cole EDHEC, l\'&#233;cole&#10;KEDGE, ECAM Lyon, Glion, PSB Paris School of Business, ELITECH &#233;cole des &#233;lites&#10;en commerce et informatique, L\'EDHEC France, les &#233;coles du P&#244;le L&#233;onard de&#10;Vinci, Efrei Paris, Autograf, Essca school of management, L&#8217;ESM-A management&#10;school, 3iL, Studely, L&#8217;&#201;cole Sup&#233;rieure de Commerce de La Rochelle, KEDGE&#10;Business School, L&#8217;Universit&#233; Priv&#233;e de Marrakech, Pr&#233;pa La r&#233;sidence, SKEMA&#10;Business School&#8230;</span></p>&#10;', 'yes'),
(33, 'Journee des etudes en france.jpg', 'JournÃ©e des Ã©tudes en France', 'Cet Ã©vÃ©nement organisÃ© par Estudiant Ã©tait une occasion pour les Ã©tudiants de faire le point sur leur parcours dâ€™Ã©tude. Ils ont pu dÃ©couvrir les avantages de la vie quotidienne et Ã©tudiante en France et poser toutes les questions sur lâ€™orientation, les domaines dâ€™Ã©tudes, procÃ©dures, logement et visa.', '2020-02-01', 3, '&#10;<p class=\"MsoNormal\"><span>Ils ont &#233;t&#233;&#10;&#233;cout&#233;s, conseill&#233;s, accompagn&#233;s leur votre projet d&#8217;&#233;tudes en France.<br>&#10;Ils ont eu l&#8217;occasion de :<br>&#10;- Assister &#224; de multiples conf&#233;rences sur des sujets qui concernent les &#233;tudes&#10;en France<br>&#10;- Rencontrer des experts d&#8217;orientation <br>&#10;- Participer &#224; diff&#233;rents ateliers<br>&#10;- Passer plusieurs tests (d&#8217;orientation, d&#8217;&#233;valuation,&#8230;)</span></p><p class=\"MsoNormal\"><span>Lieu&#160;: </span><span>H&#244;tel Africa&#160; </span></p><p class=\"MsoNormal\">&#10;&#10;</p><p class=\"MsoNormal\"><span>Autres&#10;participants&#160;: </span><span>Campus&#10;France, centre de langue de l&#8217;Institut Fran&#231;ais de Tunisie et EduFrance.&#160;</span></p>&#10;', 'yes'),
(34, 'Khotwa.jpg', 'Khotwa, le salon de lâ€™Ã©tudiant et des nouvelles perspectives', 'Ce grand Ã©vÃ©nement est un vaste espace dâ€™Ã©change sur les choix dâ€™Ã©tudes, les formations et les opportunitÃ©s Ã  saisir pour bÃ¢tir un avenir prometteur pour toute la jeunesse algÃ©rienne. Les dizaines de milliers de jeunes visiteurs ont ainsi Ã©tÃ© orientÃ©s de faÃ§on efficace, grÃ¢ce Ã  la prÃ©sence des professionnels de la formation, des acteurs de lâ€™enseignement supÃ©rieur et de la formation professionnelle, les organismes de soutien Ã  lâ€™entrepreneuriat et les recruteurs ont apportÃ© un Ã©clairage pertinent aux visiteurs sur leurs plans de carriÃ¨re et leurs projets futurs.', '2020-02-16', 3, '&#10;<p class=\"MsoNormal\"><span>Dates&#160;: </span><span>Les 15 et 16 F&#233;vrier 2020 &#224; Alger </span></p>&#10;&#10;<p class=\"MsoNormal\"><span>Lieu&#160;: </span><span>Palais de la culture Moufdi Zakaria &#224; Alger </span></p>&#10;&#10;<p class=\"MsoNormal\"><span>Autres participants&#160;: </span><span>EduCanda,&#10;Cesi Alg&#233;rie Formation et conseil, Education USA, ESHRA, Coll&#232;ge Canada,&#10;Sky&#160;Training aviation, France International Graduate Schools, Ecole&#10;Sup&#233;rieure Alg&#233;rienne des Affaires, AIESEC, eftg Business School, IMAA,&#10;Iracademy, Wise master, NAS, ALMAS, Education First, Royal School, Ecole&#10;Nationale Sup&#233;rieure de Management, DSIA, Campus Start @Innov Alg&#233;rie, IFEG,&#10;Ecole DHEB param&#233;dicale, Algerian Learning Centers, RACUS, Al-ILM, In-tuition ,&#10;ANSEJ, IMS, Agence Nationale de l&#8217;Emploi et&#160;&#10;Yassir.&#160;</span></p>&#10;', 'yes'),
(35, 'Forum International des Realites.jpg', 'Forum International des RÃ©alitÃ©s : SantÃ© numÃ©rique ', 'Ce workshop sâ€™est tenu en marge du 5Ã©me forum international de la santÃ© numÃ©rique de rÃ©alitÃ©s. Cet atelier a cherchÃ© Ã  comprendre le processus de digitalisation du secteur de la santÃ© et des impacts de celui-ci sur lâ€™efficacitÃ© des soins, les couts de prise en charge et lâ€™efficience des opÃ©rateurs de la santÃ© en gÃ©nÃ©ral. Les objectifs de ce forum Ã©taient dâ€™identifier les premiÃ¨res Ã©valuations rÃ©alisÃ©es et Ã©valuer les retours dâ€™expertise par les Ã©conomistes, les gestionnaires et les autres disciplines scientifiques. ', '2020-02-29', 3, '&#10;<p class=\"MsoNormal\"><span>Dates&#160;: </span><span>Les 27,28 et 29 F&#233;vrier 2020 </span></p>&#10;&#10;<p class=\"MsoNormal\"><span>Lieu&#160;: </span><span>&#160;Alhambra Thalasso &#224;&#10;Hammamet</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>Autres participants&#160;: </span><span>STB,&#10;Universit&#233; Centrale, Centre Informatique du Minist&#232;re de la Sant&#233;, Tunisie&#10;Telecom, Sanofi, Laboratoires Saiph, Industrie Pharmaceutique Said, Taha&#10;Pharma,&#160;</span></p>&#10;', 'yes'),
(36, 'Salon virtuel.jpg', 'Salon virtuel de lâ€™orientation et des Ã©tudes Ã  lâ€™Ã©tranger ', 'Lâ€™UFTAM a eu un stand virtuel dans Ce salon 100% en ligne qui a compris plusieurs espaces: <br> -Espace Orientation et Formation: <br> Dans cet espace le visiteur a eu lâ€™occasion dâ€™entrer en contact avec lâ€™exposant via un outil de chat en ligne pour lui poser toutes ses questions , consulter ses brochures, regarder ses vidÃ©os et lui envoyer un Email. <br> -Espace ConfÃ©rence: <br> Cette espace a permis dâ€™animer des confÃ©rences live avec interaction avec les visiteurs -Espace Coaching: <br> Il sâ€™agissait dâ€™un espace rÃ©servÃ© au conseillers dâ€™orientation pour donner tous les dÃ©tails qui concernent les dÃ©marches Ã  suivre pour choisir la bonne formation et rÃ©ussir son orientation.', '2020-03-28', 3, '&#10;<p class=\"MsoNormal\"><span>2 conf&#233;rences anim&#233;es par monsieur Adel Ben Youssef ont&#10;&#233;t&#233; pr&#233;sent&#233;es au cours de ce salon;&#160;</span></p>&#10;', 'yes'),
(37, 'Journee portes ouvertes virtuelle.png', 'JournÃ©e portes ouvertes virtuelle ', 'Cette journÃ©e a Ã©tÃ© une occasion pour les participants de dÃ©couvrir les filiÃ¨res de lâ€™UFTAM Ã  travers des visioconfÃ©rences animÃ©es par les enseignants chercheurs de lâ€™UFTAM ainsi que de poser toutes leurs questions Ã  lâ€™Ã©quipe pÃ©dagogique. ', '2020-04-18', 3, '&#10;<p class=\"MsoNormal\"><span>Lieu&#160;: </span><span>&#160;En ligne&#160;</span></p>&#10;', 'yes'),
(39, 'salon_virtuel.png', 'Salon Virtuel de  Campus France SÃ©nÃ©gal ', '1 er salon virtuel des Ã©tudes en  France ! Salon 100% Virtuel ! <br> Les 4 et 5 juin 2020 : Un lieu de rencontres et dâ€™Ã©changesâ€¼ï¸ <br> Profitez de confÃ©rences, de discussion, de halls en ligne. Le salon reproduira en ligne lâ€™ambiance et lâ€™environnement dâ€™un salon traditionnel dans un confort de visites en ligne avec lâ€™interactivitÃ© en plus.', '2020-06-20', 1, NULL, 'yes');

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
  `for_niveau` varchar(50) DEFAULT NULL,
  `for_prerequis` varchar(255) DEFAULT NULL,
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
(20, 'master-gestion-envir.png', 'master-gestion-envir.png', 'plaquette 1-11.pdf', 'Gestion de lâ€™environnement et mÃ©tiers de lâ€™eau', 'Le master Gestion de lâ€™environnement et mÃ©tiers de lâ€™eau a pour ambitions de rÃ©pondre aux enjeux de lâ€™eau, afin dâ€™assurer les besoins humains (â€ Leaving no one behind â€œ), en quantitÃ© et en qualitÃ©, tout en prÃ©servant la biodiversitÃ©.', 'description ici', 3, 'Master Professionnel', 'Etudiants dÃ©tenteurs dâ€™une licence Fondamentale ou appliquÃ©e en chimie ou de\nphysique-chimie, science et vie de la terre ou science de la vie orientÃ©e vers les sciences de\nlâ€™univers et de lâ€™environnementÂ .', '3 semestres et stage', 'Formation initiale , plein temps', 'Lâ€™admissibiliteÌ se fait sur dossier et lâ€™admission par un entretien.', 'Le master Gestion de lâ€™environnement et mÃ©tiers de lâ€™eau a pour ambitions de rÃ©pondre aux\nenjeux de lâ€™eau, afin dâ€™assurer les besoins humains (â€ Leaving no one behind â€œ), en quantitÃ©\net en qualitÃ©, tout en prÃ©servant la biodiversitÃ©. RÃ©solument pluridisciplinaire, il a pour\nobjectif de former les Ã©tudiants Ã  maÃ®triser les concepts et techniques relevant des\nÃ©volutions les plus rÃ©centes. Il sâ€™inscrit dans une approche scientifique visant le\nfonctionnement des systÃ¨mes et Ã©cosystÃ¨mes continentaux, leur protection et leur\nrÃ©habilitation, dans le contexte du changement global et de la rarÃ©faction des ressources.', 'Des enseignements au cÅ“ur de la spÃ©cialitÃ© en chimie, hydrologie, gÃ©nie Ã©cologique et gÃ©nie\ndes procÃ©dÃ©s. <br>\nDes enseignements complÃ©mentaires pour lâ€™exercice des fonctions dâ€™ingÃ©nieur ou de\nchercheur en mathÃ©matiques, gÃ©omatique, gestion des risques, communication de crise,\ngestion de projet, sociologie, gÃ©ographie et amÃ©nagement, droit de lâ€™environnement. <br>\n\nUne formation laissant une large part aux activitÃ©s de mise en situation : apprentissage par\nproblÃ¨me, projets intÃ©grateurs, Ã©tudes de cas, stages de terrain, stage de 6 mois en M2', 'Exemple de mÃ©tiers: <br>\n-ChargÃ© de mission/projet en bureau dâ€™Ã©tude (impact/risques) <br>\n-Hydrologue/hydrogÃ©ologue <br>\n-ChargÃ© dâ€™Ã©tudes assainissement/potabilisation <br>\n-ChargÃ© de projet eau et milieux aquatique <br>\n-Police de lâ€™eau <br>\nPoursuite dâ€™Ã©tudes: <br>\n-Doctorat en sciences de lâ€™environnement <br>\n-Conditions dâ€™admission <br>\n-Examen du dossier de candidature par la commission pÃ©dagogique franco-tunisienne puis\nentretien', 'Etudiant en formation initiale : 180 ECTS dâ€™une licence Fondamentale ou appliquÃ©e de\nChimie ou de Physique- Chimie , Sciences et Vie de la Terre, ou Sciences de la Vie orientÃ©es\nvers les Sciences de lâ€™Univers et de lâ€™Environnement.', 'yes', '2020-06-08 15:42:25'),
(21, 'master-expertise-eco.png', 'master-expertise-eco.png', 'plaquette 1-07.pdf', 'Expertise Ã©conomique des politiques et projets de dÃ©veloppement', 'Dans un contexte marquÃ© par lâ€™InstabilitÃ© Ã©conomique et financiÃ¨re mondiales, des problÃ¨mes dâ€™emploi, de nombreux conflits et les risques majeurs du changement climatique.', 'description ici', 3, 'Master Professionnel', 'Candidats ayant des formations en sciences Ã©conomique', '3 semestres et stage', 'Formation initialeÂ ; plein temps', 'La sÃ©lection pour lâ€™entrÃ©e en Master 2 se fait sur dossier.', 'Dans un contexte marquÃ© par lâ€™InstabilitÃ© Ã©conomique et financiÃ¨re mondiales, des problÃ¨mes dâ€™emploi, de nombreux conflits et les risques majeurs du changement climatique. Le besoin en analyse dâ€™impact des politiques publiques et des projets de dÃ©veloppement est croissant Et donc la nÃ©cessitÃ© de former une gÃ©nÃ©ration de diplÃ´mÃ©s capables dâ€™intervenir dans ces deux grands champs de lâ€™expertise Ã©conomique.', 'Le programme du premier semestre se dÃ©cline en trois unitÃ©s : La premiÃ¨re unitÃ© introduit les outils mÃ©thodologiques communs aux deux parcours â€ politiques publiques â€ et â€ projets de dÃ©veloppement â€œ La deuxiÃ¨me unitÃ© se subdivise en deux parcours le parcours â€ politiques publiques â€œ, est consacrÃ© aux outils dâ€™analyse et dâ€™Ã©valuation prÃ©parant les Ã©tudiants Ã  jouer un rÃ´le essentiel dans lâ€™aide Ã  la dÃ©cision publique (techniques dâ€™Ã©valuation dâ€™impact, modÃ©lisation appliquÃ©e aux politiques publiques, etc.), tandis que le parcours â€ projets â€ prÃ©sente les stratÃ©gies et les mÃ©thodes propres au secteur privÃ© (gestion et Ã©valuation de projet, etc.) et initie les Ã©tudiants aux questions de responsabilitÃ© sociale des entreprises et dâ€™entrepreneuriat social. Une troisiÃ¨me unitÃ© porte sur les grandes problÃ©matiques de dÃ©veloppement (gestion des ressources naturelles, migration, inÃ©galitÃ©s ou impact de la mondialisation.), afin de prÃ©parer les Ã©tudiants Ã  savoir les analyser. Cette formation laisse une large part aux applications concrÃ¨tes Ã  partir des logiciels les plus reconnus sur le plan international et le second semestre est entiÃ¨rement consacrÃ© Ã  une expÃ©rience en milieu professionnel.', 'ChargÃ©s dâ€™Ã©tudes dans des cabinets de consultants, des administrations et des agences de coopÃ©ration, chefs de projets ou coordinateurs de programmes dans des ONG, Ã©conomistes dans des institutions financiÃ¨res privÃ©es ou des organisations internationales. CrÃ©ateurs dâ€™entreprises sociales Chercheurs sur les problÃ©matiques de dÃ©veloppement.', 'Sont recrutÃ©s des candidats ayant des formations en sciences Ã©conomiques, gestion, Ã©coles de commerce et Ã©coles dâ€™ingÃ©nieur ou autres parcours jugÃ©s adaptÃ©s.', 'yes', '2020-06-08 15:42:30'),
(22, 'master-data-science.png', 'master-data-science.png', 'plaquette 1-13.pdf', 'Sciences des donnÃ©es pour les nouveaux mÃ©tiers du numÃ©rique', 'Le traitement des flux de donnÃ©es massives (big data) est aujourdâ€™hui indispensable pour apprÃ©hender les nouveaux mÃ©tiers du numÃ©rique.', 'description ici', 3, 'Master Professionnel', 'Ce programme sÊ¼adresse aux : <br> â€¢ DiploÌ‚meÌs deÌjaÌ€ titulaires dÊ¼un master ou dÊ¼un diploÌ‚me dÊ¼ingeÌnieur en informatique, teÌleÌcommuni- cation et reÌseaux informatiques, matheÌmatiques ou eÌquivalent. <br> â€¢ Etudiants titulaires dÊ¼u', '3 semestres et stage', 'Formation initiale , plein temps', 'Examen du dossier de candidature par la commission pÃ©dagogique franco-tunisienne, puis entretien avec la commission.', 'Le traitement des flux de donnÃ©es massives (big data) est aujourdâ€™hui indispensable pour apprÃ©hender les nouveaux mÃ©tiers du numÃ©rique. Lâ€™accent sera mis sur lâ€™aptitude Ã  gÃ©rer et sÃ©curiser les flux de donnÃ©es tout en prÃ©servant leur confidentialitÃ© et leur stockage. Les concepts sur le traitement des donnÃ©es via des outils de modÃ©lisation seront Ã©tudiÃ©s afin de viser des applications concrÃ¨tes dans des domaines des rÃ©seaux urbains (smart city), des rÃ©seaux Ã©lectriques (smart grids) et de lâ€™agriculture qui ont recours Ã  des rÃ©seaux de capteurs connectÃ©s.', '<p>Le programme du premier semestre se d&eacute;cline en 4 unit&eacute;s d&rsquo;enseignements techniques <br>\r\nform&eacute;es de plusieurs modules portant sur <br>\r\n&ndash; la s&eacute;curisation des bases de donn&eacute;es et des r&eacute;seaux d&rsquo;&eacute;changes, <br>\r\n&ndash; l&rsquo;intelligence d&eacute;cisionnelle, <br>\r\n&ndash; le traitement et l&rsquo;analyse de donn&eacute;es<br>\r\n&ndash; et les syst&egrave;mes de syst&egrave;mes.<br>\r\nUne unit&eacute; d&rsquo;enseignements sera d&eacute;di&eacute;e aux modules transversaux (savoirs comportementaux et langues).<br>\r\nLes 4 unit&eacute;s d&rsquo;enseignements techniques comprennent chacune a minima un projet applicatif. Cette formation par les projets permettra une mise en situation professionnelle<br>\r\ndes apprenants qui les rendra op&eacute;rationnels dans leurs futurs emplois.<br>\r\nEnfin, le second semestre sera d&eacute;di&eacute; &agrave; un stage long men&eacute; en entreprise.</p>', 'Les dÃ©bouchÃ©s sont nombreux dans tous les mÃ©tiers de â€ data scientists â€ oÃ¹ le traitement informatique des donnÃ©es est un avantage compÃ©titif et/ou un outil dâ€™aide Ã  la dÃ©cision permettant le dÃ©veloppement dâ€™applications nouvelles : transport, Ã©nergie, banque, agriculture, santÃ©, e-commerce, etc. <br> Ce master est plutÃ´t professionnalisant, mais des poursuites dâ€™Ã©tude en doctorat seront aussi possibles pour les Ã©tudiants dÃ©jÃ  titulaires dâ€™un autre master, ingÃ©nieur ou dâ€™un diplÃ´me licence.', 'Ce programme sâ€™adresse: <br> 1) aux diplÃ´mÃ©s dÃ©jÃ  titulaires dâ€™un master ou dâ€™un diplÃ´me dâ€™ingÃ©nieur en informatique, tÃ©lÃ©communication et rÃ©seaux informatiques, mathÃ©matique, <br> 2) Ã  de trÃ¨s bons Ã©tudiants titulaires dâ€™un licence, master, ingÃ©nieur ou Ã©quivalent, <br> 3) aux professionnels du numÃ©rique et du traitement de donnÃ©es (formation continue) et <br> 4) aux personnes en recherche dâ€™emploi ou en reconversion professionnelle dans ces domaines (Licence, master, ingÃ©nieur ou Ã©quivalent).', 'yes', '2020-06-08 15:42:35'),
(23, 'master-gÃ©nie-electrique-.png', 'master-gÃ©nie-electrique-.png', 'plaquette 1-05.pdf', 'gÃ©nie Ã©lectrique et informatique industrielle pour lâ€™enseignement et lâ€™industrie', 'Former sur le plan disciplinaire et peÌdagogique, dans le domaine du GeÌnie Electrique et de lâ€™Informatique Industrielle, des formateurs : enseignants pour le lyceÌe, pour les ISET, pour les eÌcoles dâ€™ingeÌnieurs et lâ€™UniversiteÌ.', 'description ici', 3, 'Master Professionnel', 'PrÃ©requisÂ :Cette formation sâ€™adresse Ã  des Ã©tudiants issus de master 1 dâ€™Ã©coles dâ€™ingÃ©nieurs\nou Ã  des enseignants pour le lycÃ©e, pour les iset , disposant de solides connaissances en\nmathÃ©matiques et physique ainsi que dans les domaines de ', '3 semestres et 3 stages', 'Formation initiale', 'Lâ€™admissibiliteÌ se fait sur dossier et lâ€™admission par un entretien.', 'Former sur le plan disciplinaire et peÌdagogique, dans le domaine du GeÌnie Electrique et de\nlâ€™Informatique Industrielle, des formateurs : enseignants pour le lyceÌe, pour les ISET, pour les\neÌcoles dâ€™ingeÌnieurs et lâ€™UniversiteÌ.', 'La formation sâ€™appuie sur lâ€™expeÌrience reconnue de lâ€™IPEST dans la preÌparation aÌ€ lâ€™agreÌgation\nde physique, sur lâ€™expeÌrience en enseignement technique de lâ€™ENSIT et sur les masters de\nformation aÌ€ lâ€™enseignement supeÌrieur preÌpareÌs aÌ€ lâ€™ENS Paris-Saclay.\nLe programme apporte un treÌ€s haut niveau scientifique et technique dans les 4 domaines\nsuivants : <br>\nâ€“ Informatique Industrielle <br>\nâ€“ TeÌleÌcommunications <br>\n\nâ€“ Automatique et traitement du signal <br>\nâ€“ Conversion dâ€™Energie. <br>\nLes uniteÌs dâ€™enseignement disciplinaires, abordeÌes avec des peÌdagogies actives varieÌes, sont\ncompleÌteÌes par une formation peÌdagogique : <br>\nâ€“ Stage peÌdagogique de 2 semaines <br>\nâ€“ Ateliers autour des meÌthodes peÌdagogiques, aÌ€ partir des expeÌriences, aÌ€ lâ€™UFTAM et en\nstage et de confeÌrences / deÌbats <br>\nâ€“ Mise en pratique de ces meÌthodes pour concevoir des seÌquences peÌdagogiques <br>\nâ€“ PreÌparation, conception et mise en Å“uvre de seÌquences peÌdagogiques aÌ€ destination du\nreste de la promotion <br>\nâ€“ DeÌveloppement de ressources dâ€™enseignement aÌ€ distance. <br>', 'En plus des meÌtiers de formateurs, au centre de ce master, les eÌtudiants peuvent eÌgalement\npoursuivre en doctorat (dans le domaine des sciences de lâ€™ingeÌnieur ou de la didactique) ou\nsâ€™inteÌgrer dans lâ€™industrie sur des postes neÌcessitant une haute expertise scientifique et\ntechnique ou sur des postes de formateur.', 'Cette formation sâ€™adresse aÌ€ des eÌtudiants issus de master 1, dâ€™eÌcoles dâ€™ingeÌnieurs ou aÌ€ des\nenseignants, disposant de solides connaissances en matheÌmatiques et physique ainsi que\ndans les domaines de la conversion dâ€™eÌnergie, de lâ€™automatique, de lâ€™eÌlectronique et de\nlâ€™informatique industrielle.', 'yes', '2020-06-08 15:42:39'),
(24, 'master-Intelligence-Economique-Africaine.png', 'master-Intelligence-Economique-Africaine.png', 'plaquette 1-15.pdf', 'Intelligence Ã©conomique africaine', 'Ce Master vise Ã  sensibiliser les futurs cadres des pouvoirs publics, des reprÃ©sentations diplomatiques, des partenaires au dÃ©veloppement, des entreprises, et du monde Ã©ducatif aux enjeux de la veille.', 'description ici', 3, 'Master Professionnel', 'Candidats ayant des formations en sciences Ã©conomiques , gestion, Ã©coles de commerce et Ã©coles dâ€™ingÃ©nieur ou autres parcours jugÃ©s adaptÃ©s', '2 semestres', 'Formation initiale , plein temps', 'La sÃ©lection pour lâ€™entrÃ©e en Master 2 se fait sur dossier.', 'Ce Master vise Ã  sensibiliser les futurs cadres des pouvoirs publics, des reprÃ©sentations\ndiplomatiques, des partenaires au dÃ©veloppement, des entreprises, et du monde Ã©ducatif\naux enjeux de la veille et de lâ€™intelligence Ã©conomique en Afrique pour :\nâ€“ Aider Ã  la crÃ©ation et au dÃ©veloppement des dispositifs de veille sectorielle et\ndâ€™intelligence Ã©conomique et stratÃ©gique au sein des institutions publiques et privÃ©es ;\nâ€“ Aider les Ã‰tats, investisseurs, entreprises, organismes de dÃ©veloppement et mÃ©dias Ã \nmieux apprÃ©hender les marchÃ©s africains grÃ¢ce Ã  lâ€™intelligence Ã©conomique ;\n-Renforcer les capacitÃ©s de comprÃ©hension des marchÃ©s africains auprÃ¨s des institutions\npubliques et privÃ©es ainsi quâ€™auprÃ¨s des porteurs de projets individuels ;\nâ€“ Permettre Ã  tout investisseur et Ã  toute entreprise de trouver les meilleures rÃ©ponses Ã  ses\nquestions concernant ses projets dâ€™investissements, ses recherches de partenaires locaux et\nses implantations potentielles en Afrique ;\nâ€“ Contribuer Ã  la fÃ©dÃ©ration, Ã  la reprÃ©sentation, Ã  la dÃ©fense, et Ã  la promotion des intÃ©rÃªts\nÃ©conomiques des Ã‰tats et des entreprises dâ€™Afrique auprÃ¨s des institutions supranationales\net paraÃ©tatiques grÃ¢ce Ã  la veille et lâ€™intelligence Ã©conomique ;\n\n- Aider les entreprises, les institutions Ã©tatiques, para-Ã©tatiques ou privÃ©es Ã  rÃ©sister Ã \nla concurrence, Ã  protÃ©ger leur rÃ©putation, Ã  promouvoir leur image, Ã  Ã©valuer leur\nforces/faiblesses et Ã  anticiper les tendances futures du marchÃ© Africain', NULL, 'Cadre dâ€™administration de lâ€™Etat\nCadre stratÃ©gique en entreprise\nConsultant', NULL, 'yes', '2020-06-08 15:42:42'),
(25, 'master-mutation-digit.png', 'master-mutation-digit.png', 'plaquette 1-09.pdf', 'Mutations Digitales', 'Ce MastÃ¨re, situÃ© au croisement du droit et du digital marketing, vise Ã  apporter une spÃ©cialisation juridique et managÃ©riale dans le domaine des mÃ©dias et de la communication, concernant lâ€™ensemble des secteursâ€¦', 'description ici', 3, 'Master Professionnel', 'la formation est ouverte aux Ã©tudiants titulaires dâ€™une licence en droit, en\nscience de gestion , et en marketing et en science de lâ€™information. Lâ€™expÃ©rience\nprofessionnelle acquise est prise en compte aprÃ¨s examen du dossier et avis du conseil\n', '3 semestres et stage', 'Formation initiale , plein temps', 'La sÃ©lection pour lâ€™entrÃ©e en Master se fait sur dossier.', 'Ce MastÃ¨re, situÃ© au croisement du droit et du digital marketing, vise Ã  apporter une\nspÃ©cialisation juridique et managÃ©riale dans le domaine des mÃ©dias et de la communication,\nconcernant lâ€™ensemble des secteurs de la communication que cette derniÃ¨re soit\naudiovisuelle, digitale, ou presse Ã©crite, ainsi quâ€™en matiÃ¨re de propriÃ©tÃ© intellectuelle, de\ndroit des contrats, de droit de la concurrence et de la rÃ©gulation dans les champs du\nnumÃ©rique et des mÃ©dias.\nCe mastÃ¨re met en Ã©vidence une dÃ©marche interdisciplinaire adaptÃ©e aux spÃ©cificitÃ©s du\nmarchÃ© de lâ€™emploi et aux particularitÃ©s des nouvelles donnes de la mondialisation,\nnotamment en ce qui concerne lâ€™Ã©mergence des nouvelles technologies de lâ€™information et\nde la communication. Il touche Ã  la fois Ã  la gestion notamment au marketing et au droit\npublic (libertÃ© dâ€™expression, de communication et dâ€™information, rÃ©partition des\ncompÃ©tences de rÃ©gulation), au droit pÃ©nal (dÃ©lits de presse, responsabilitÃ© pÃ©nale,\ncybercriminalitÃ©), au droit privÃ© (responsabilitÃ© civile, droits dâ€™auteur, protection de la vie\nprivÃ©e, droit Ã  lâ€™image, droit des donnÃ©es personnelles), au droit Ã©conomique\n\n(rÃ©glementation de la publicitÃ©, contrÃ´le des concentrations) et au droit international, Ã \nlâ€™Ã©conomie numÃ©rique ou au marketing', NULL, 'Juriste spÃ©cialiste en droit du numÃ©rique et des mÃ©dias Ã©lectroniques et audiovisuels\nSpÃ©cialiste des mÃ©tiers du marketing digital, de lâ€™information et de la communication\nJuriste en cabinet dâ€™avocats <br>\nAvocat spÃ©cialisÃ© en droit du numÃ©rique et des mÃ©dias <br>\nWebdÃ©veloppeur <br>\nCommunity manager <br>\nSocial mÃ©dia manager / Consultant SMO <br>\nChef digital officer <br>', NULL, 'yes', '2020-06-08 15:42:50'),
(26, 'LICENCE.png', 'LICENCE.png', 'plaquette 1-03.pdf', 'Gestion de lâ€™environnement', 'Cette licence a pour objectif dâ€™offrir aux Ã©tudiants des connaissances approfondies dans la caractÃ©risation de la biodiversitÃ© et des Ã©cosystÃ¨mes, la conservation des ressources naturelles (bioressources, eau, Ã©nergie et sol),..', 'description ici', 1, 'Licence ( 3ans)', '<br> - BaccalaurÃ©at Sciences expÃ©rimentales <br> - BaccalaurÃ©at MathÃ©matiques <br> - BaccalaurÃ©at Technique', '6 semestres', 'Formation initiale , plein temps', 'Lâ€™admissibiliteÌ se fait sur dossier et lâ€™admission par un entretien.', 'Cette licence a pour objectif dâ€™offrir aux Ã©tudiants des connaissances approfondies dans la caractÃ©risation de la biodiversitÃ© et des Ã©cosystÃ¨mes, la conservation des ressources naturelles (bioressources, eau, Ã©nergie et sol), la dÃ©termination des diffÃ©rents types de pollutions, la maÃ®trise des technologies de prÃ©vention pour trouver des solutions aux problÃ¨mes environnementaux ainsi que la lutte contre toute forme de pollution.', 'Des enseignements au cÅ“ur de la spÃ©cialitÃ© en chimie, hydrologie, gÃ©nie Ã©cologique et gÃ©nie des procÃ©dÃ©s Des enseignements complÃ©mentaires pour lâ€™exercice des fonctions dâ€™ingÃ©nieur ou de chercheur en mathÃ©matiques, gÃ©omatique, gestion des risques, communication de crise, gestion de projet, sociologie, gÃ©ographie et amÃ©nagement, droit de lâ€™environnement Sciences de lâ€™eau : Echantillonnage et mesures en ligne et in situ ; Acteurs de lâ€™eau et outils de planification ; Potabilisation des eaux GÃ©omatique Soft Skills Projet professionnel : Projet environnemental ; Stage professionnel', 'OpÃ©rateurs dans le traitement de lâ€™eau, des dÃ©chets, du transport et de lâ€™Ã©nergie. Technicien en bureau dâ€™Ã©tudes, Technicien en qualitÃ©, sÃ©curitÃ© et environnement Poursuite dâ€™Ã©tudes: <br> -Master en sciences de lâ€™environnement <br> -Conditions dâ€™admission <br> -Examen du dossier de candidature par la commission pÃ©dagogique franco-tunisienne puis entretien', 'Niveau : BAC <br> DurÃ©e: 6 semaine', 'yes', '2020-06-08 15:42:54');

-- --------------------------------------------------------

--
-- Table structure for table `t_la_vie`
--

CREATE TABLE `t_la_vie` (
  `tlv_id` int(11) NOT NULL,
  `tlv_active` varchar(5) NOT NULL DEFAULT 'yes',
  `tlv_lib` varchar(50) NOT NULL,
  `tlv_description` text NOT NULL,
  `tlv_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_la_vie`
--

INSERT INTO `t_la_vie` (`tlv_id`, `tlv_active`, `tlv_lib`, `tlv_description`, `tlv_img`) VALUES
(19, 'yes', 'Talel SAHMIM', 'J\'ai dÃ©couvert l\'UFTAM Ã  l\'occasion de la lecture d\'un article de presse portant sur son inauguration et cela m\'a amenÃ© Ã  m\'informer sur les formations proposÃ©es...(2Ã©me annÃ©e master expertise Ã©conomique des politiques et projets de dÃ©veloppement)', 'first.png'),
(20, 'no', 'Parfait BEUGRE', 'L\'UFTAM offre une pÃ©dagogie originale, centrÃ©e sur le transfert dâ€™expÃ©rience dans lâ€™action, pluridisciplinaire, tournÃ©e vers l\'international pour faire Ã©merger les grands entrepreneurs et les grands projets de demain. (2Ã©me annÃ©e master expertise Ã©conomique des politiques et projets de dÃ©veloppement)', 'second.png'),
(21, 'yes', 'Mehdi EL BATTI', 'J\'ai dÃ©couvert l\'UFTAM Ã  l\'occasion de la lecture d\'un article de presse portant sur son inauguration et cela m\'a amenÃ© Ã  m\'informer sur les formations proposÃ©s. J\'ai ainsi dÃ©couvert le mastÃ¨re expertise Ã©conomique qui m\'a attirÃ© Ã©tant...', 'third.png'),
(22, 'no', 'Parfait BEUGRE', 'Seule lâ€™UFTAM proposait une telle formation, jâ€™ai donc dÃ©cidÃ© de relever le dÃ©fi ! Â« Ã€ l\'instar des autres UniversitÃ©s prÃ©sentent en Tunisie, lâ€™UFTAM propose des formations de trÃ¨s haut niveau, voire dâ€™un niveau (2Ã©me annÃ©e master expertise Ã©conomique des politiques et projets de dÃ©veloppement)...', 'fourth.png'),
(23, 'yes', 'Wadii JELASSI', 'J\'aime cette petite institution hors du commun, car ses cours en bloc, ses mÃ©thodes et ses stratÃ©gies pÃ©dagogiques ont Ã©tÃ© pour moi une expÃ©rience fantastique dans mon cursus universitaire...(2Ã©me annÃ©e master expertise Ã©conomique des politiques et projets de dÃ©veloppement)', 'fifth.png'),
(24, 'yes', ' Maria Gravari Barbas', 'Madame Maria Gravari Barbas, enseignante Ã  Paris 1 PanthÃ©on Sorbonne de son expÃ©rience Ã  l\'UFTAM: \"Ma mission dans le cadre de lâ€™UFTAM (UniversitÃ© Franco-Tunisienne pour lâ€™Afrique et la MÃ©diterranÃ©e) vient de se terminer. Jâ€™ai eu le plaisir de travailler pendant 4 jours avec 16 Ã©tudiants trÃ¨s engagÃ©s qui suivent le diplÃ´me M2 Expertise Ã©conomique des politiques et projets de dÃ©veloppement co-habilitÃ© entre Paris 1 PanthÃ©on-Sorbonne et lâ€™UniversitÃ© de Tunis.\r\n', 'sixth.jpg');

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
(1, 'jqsml@gmail.com', '2020-06-13 12:05:28'),
(2, 'qposiduifj@gmialqjsf.com', '2020-06-14 22:36:06');

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
(69, 'republique tun', 'republique tun.png', 'no', 'yes'),
(70, 'zzqsdf', 'allef-vinicius-fJTqyZMOh18-unsplash.jpg', 'no', 'yes');

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
  MODIFY `con_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `t_diplome`
--
ALTER TABLE `t_diplome`
  MODIFY `dip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `t_event`
--
ALTER TABLE `t_event`
  MODIFY `eve_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `t_formation`
--
ALTER TABLE `t_formation`
  MODIFY `for_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `t_la_vie`
--
ALTER TABLE `t_la_vie`
  MODIFY `tlv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `t_newsletter`
--
ALTER TABLE `t_newsletter`
  MODIFY `new_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `t_partner`
--
ALTER TABLE `t_partner`
  MODIFY `par_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

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
