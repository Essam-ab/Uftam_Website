-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2020 at 06:21 PM
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
-- Table structure for table `t_event`
--

CREATE TABLE `t_event` (
  `eve_id` int(11) NOT NULL,
  `eve_img` varchar(255) DEFAULT NULL,
  `eve_lib` varchar(255) DEFAULT NULL,
  `eve_description` text,
  `eve_date` date DEFAULT NULL,
  `tte_id` int(11) DEFAULT NULL,
  `eve_active` varchar(5) DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_event`
--

INSERT INTO `t_event` (`eve_id`, `eve_img`, `eve_lib`, `eve_description`, `eve_date`, `tte_id`, `eve_active`) VALUES
(5, 'event1.png', 'Bourses dâ€™excellence', ' Pour le dÃ©marrage de lâ€™UFTAM, Lâ€™Institut FranÃ§ais de Tunisie et le ministÃ¨re de lâ€™enseignement supÃ©rieur tunisien ont attribuÃ© 12 bourses aux Ã©tudiants tunisiens les plus mÃ©ritants. La sÃ©lection des Ã©tudiants boursiers sâ€™est basÃ©e sur lâ€™excellence acadÃ©mique, le lieu de rÃ©sidence ainsi que sur la situation familiale et financiÃ¨re.  Les 12 Ã©tudiants sÃ©lectionnÃ©s ont donc pu profiter de lâ€™exonÃ©ration totale de leur frais de scolaritÃ©.', '2020-05-01', 3, 'yes'),
(7, 'event1.png', 'Les Vendredis de l\'Orientation Ã  l\';Uftam : JournÃ©e Virtuelle', 'Vous n\'avez pas pu assister Ã  la journÃ©e de l\'orientation Ã  l\'UFTAM le vendredi 22 mai!? Nous vous donnons un deuxiÃ¨me rendez-vous en ligne â€¦', '2020-05-29', 1, 'yes'),
(10, 'event2.png', 'Sortie dâ€™Ã©tudes pour nos Ã©tudiants en master gestion de lâ€™eau Ã  Oued Meliane', 'Les Ã©tudiants de la premiÃ¨re annÃ©e master Gestion de lâ€™environnement et mÃ©tiers de lâ€™eau, accompagnÃ©s de leur enseignant Pascal Wong, ont eu la chance de partir en visite Ã  lâ€™Institut SupÃ©rieur des Sciences et Technologies de lâ€™Environnement situÃ© Ã  Borj Cedria.', '2020-05-27', 3, 'yes'),
(13, 'event2.png', 'Les vendredis de l\'orientation Ã  l\'UFTAM ! JournÃ©e virtuelle !', 'Pour cette rentrÃ©e, rejoignez lâ€™UFTAM (UniversitÃ© Franco-Tunisienne pour lâ€™Afrique et la MÃ©diterranÃ©e) et obtenez Ã  la fin de votre cursus un diplÃ´me franco-tunisien â€¦', '2020-05-22', 1, 'yes'),
(16, 'event3.png', 'JournÃ©e Portes Ouvertes Virtuelle', 'Au cours de cette journÃ©e, vous pourrez assister Ã  des confÃ©rences, posez vos questions Ã  lâ€™Ã©quipe pÃ©dagogique, tÃ©lÃ©charger nos brochuresâ€¦', '2020-04-18', 1, 'yes'),
(17, 'event3.png', 'Lancement officiel de lâ€™UFTAM', 'Une confÃ©rence sur le thÃ¨me Â« Quels mÃ©tiers nÃ©cessaires pour lâ€™Afrique de demain ? Â» a Ã©tÃ© organisÃ©e avec lâ€™intervention introductive de Aziz Mebarek, co-fondateur, directeur gÃ©nÃ©ral Tuninvest, AfricInvest, et avec la participation de Youssef Fennira, directeur gÃ©nÃ©ral de lâ€™ANETI, Emna Khrouf, prÃ©sidente de lâ€™Atuge Atuge, Badreddine Ouali, PDG de Vermeg, Fethi Sellaouti,â€¦', '2020-05-15', 3, 'yes'),
(27, 'event2.png', 'Tunisie : premiÃ¨re promotion du master en Ã©tudes du dÃ©veloppement de lâ€™UFTAM', 'Lâ€™universitÃ© Paris 1 PanthÃ©on-Sorbonne est lâ€™une des universitÃ©s fondatrices de lâ€™UniversitÃ© Franco-Tunisienne pour lâ€™Afrique et la MÃ©diterranÃ©e (UFTAM), qui se donne comme objectif principal dâ€™offrir aux jeunes Tunisiens, et plus gÃ©nÃ©ralement aux jeunes Africains, des parcours dÃ©bouchant sur lâ€™employabilitÃ© immÃ©diate des Ã©tudiants diplÃ´mÃ©s.', '2020-05-31', 3, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `t_formation`
--

CREATE TABLE `t_formation` (
  `for_id` int(11) NOT NULL,
  `for_img` varchar(255) DEFAULT NULL,
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

INSERT INTO `t_formation` (`for_id`, `for_img`, `for_document`, `for_lib`, `for_presentation`, `for_description`, `ttf_id`, `for_niveau`, `for_prerequis`, `for_duration`, `for_regime`, `for_mod_admission`, `for_enjeux`, `for_program`, `for_debouche`, `for_public_acceuil`, `for_active`, `for_modification_date`) VALUES
(20, 'master-gestion-envir.png', 'plaquette 1-11.pdf', 'Gestion de lâ€™environnement et mÃ©tiers de lâ€™eau', 'Le master Gestion de lâ€™environnement et mÃ©tiers de lâ€™eau a pour ambitions de rÃ©pondre aux enjeux de lâ€™eau, afin dâ€™assurer les besoins humains (â€ Leaving no one behind â€œ), en quantitÃ© et en qualitÃ©, tout en prÃ©servant la biodiversitÃ©.', 'description ici', 1, 'Master Professionnel', 'Etudiants dÃ©tenteurs dâ€™une licence Fondamentale ou appliquÃ©e en chimie ou de\nphysique-chimie, science et vie de la terre ou science de la vie orientÃ©e vers les sciences de\nlâ€™univers et de lâ€™environnementÂ .', '3 semestres et stage', 'Formation initiale , plein temps', 'Lâ€™admissibiliteÌ se fait sur dossier et lâ€™admission par un entretien.', 'Le master Gestion de lâ€™environnement et mÃ©tiers de lâ€™eau a pour ambitions de rÃ©pondre aux\nenjeux de lâ€™eau, afin dâ€™assurer les besoins humains (â€ Leaving no one behind â€œ), en quantitÃ©\net en qualitÃ©, tout en prÃ©servant la biodiversitÃ©. RÃ©solument pluridisciplinaire, il a pour\nobjectif de former les Ã©tudiants Ã  maÃ®triser les concepts et techniques relevant des\nÃ©volutions les plus rÃ©centes. Il sâ€™inscrit dans une approche scientifique visant le\nfonctionnement des systÃ¨mes et Ã©cosystÃ¨mes continentaux, leur protection et leur\nrÃ©habilitation, dans le contexte du changement global et de la rarÃ©faction des ressources.', 'Des enseignements au cÅ“ur de la spÃ©cialitÃ© en chimie, hydrologie, gÃ©nie Ã©cologique et gÃ©nie\ndes procÃ©dÃ©s. <br>\nDes enseignements complÃ©mentaires pour lâ€™exercice des fonctions dâ€™ingÃ©nieur ou de\nchercheur en mathÃ©matiques, gÃ©omatique, gestion des risques, communication de crise,\ngestion de projet, sociologie, gÃ©ographie et amÃ©nagement, droit de lâ€™environnement. <br>\n\nUne formation laissant une large part aux activitÃ©s de mise en situation : apprentissage par\nproblÃ¨me, projets intÃ©grateurs, Ã©tudes de cas, stages de terrain, stage de 6 mois en M2', 'Exemple de mÃ©tiers: <br>\n-ChargÃ© de mission/projet en bureau dâ€™Ã©tude (impact/risques) <br>\n-Hydrologue/hydrogÃ©ologue <br>\n-ChargÃ© dâ€™Ã©tudes assainissement/potabilisation <br>\n-ChargÃ© de projet eau et milieux aquatique <br>\n-Police de lâ€™eau <br>\nPoursuite dâ€™Ã©tudes: <br>\n-Doctorat en sciences de lâ€™environnement <br>\n-Conditions dâ€™admission <br>\n-Examen du dossier de candidature par la commission pÃ©dagogique franco-tunisienne puis\nentretien', 'Etudiant en formation initiale : 180 ECTS dâ€™une licence Fondamentale ou appliquÃ©e de\nChimie ou de Physique- Chimie , Sciences et Vie de la Terre, ou Sciences de la Vie orientÃ©es\nvers les Sciences de lâ€™Univers et de lâ€™Environnement.', 'yes', '2020-05-28 17:51:23'),
(21, 'master-expertise-eco.png', 'plaquette 1-07.pdf', 'Expertise Ã©conomique des politiques et projets de dÃ©veloppement', 'Dans un contexte marquÃ© par lâ€™InstabilitÃ© Ã©conomique et financiÃ¨re mondiales, des problÃ¨mes dâ€™emploi, de nombreux conflits et les risques majeurs du changement climatique.', 'description ici', 3, 'Master Professionnel', 'Candidats ayant des formations en sciences Ã©conomique', '3 semestres et stage', 'Formation initialeÂ ; plein temps', 'La sÃ©lection pour lâ€™entrÃ©e en Master 2 se fait sur dossier.', 'Dans un contexte marquÃ© par lâ€™InstabilitÃ© Ã©conomique et financiÃ¨re mondiales, des problÃ¨mes dâ€™emploi, de nombreux conflits et les risques majeurs du changement climatique. Le besoin en analyse dâ€™impact des politiques publiques et des projets de dÃ©veloppement est croissant Et donc la nÃ©cessitÃ© de former une gÃ©nÃ©ration de diplÃ´mÃ©s capables dâ€™intervenir dans ces deux grands champs de lâ€™expertise Ã©conomique.', 'Le programme du premier semestre se dÃ©cline en trois unitÃ©s : La premiÃ¨re unitÃ© introduit les outils mÃ©thodologiques communs aux deux parcours â€ politiques publiques â€ et â€ projets de dÃ©veloppement â€œ La deuxiÃ¨me unitÃ© se subdivise en deux parcours le parcours â€ politiques publiques â€œ, est consacrÃ© aux outils dâ€™analyse et dâ€™Ã©valuation prÃ©parant les Ã©tudiants Ã  jouer un rÃ´le essentiel dans lâ€™aide Ã  la dÃ©cision publique (techniques dâ€™Ã©valuation dâ€™impact, modÃ©lisation appliquÃ©e aux politiques publiques, etc.), tandis que le parcours â€ projets â€ prÃ©sente les stratÃ©gies et les mÃ©thodes propres au secteur privÃ© (gestion et Ã©valuation de projet, etc.) et initie les Ã©tudiants aux questions de responsabilitÃ© sociale des entreprises et dâ€™entrepreneuriat social. Une troisiÃ¨me unitÃ© porte sur les grandes problÃ©matiques de dÃ©veloppement (gestion des ressources naturelles, migration, inÃ©galitÃ©s ou impact de la mondialisation.), afin de prÃ©parer les Ã©tudiants Ã  savoir les analyser. Cette formation laisse une large part aux applications concrÃ¨tes Ã  partir des logiciels les plus reconnus sur le plan international et le second semestre est entiÃ¨rement consacrÃ© Ã  une expÃ©rience en milieu professionnel.', 'ChargÃ©s dâ€™Ã©tudes dans des cabinets de consultants, des administrations et des agences de coopÃ©ration, chefs de projets ou coordinateurs de programmes dans des ONG, Ã©conomistes dans des institutions financiÃ¨res privÃ©es ou des organisations internationales. CrÃ©ateurs dâ€™entreprises sociales Chercheurs sur les problÃ©matiques de dÃ©veloppement.', 'Sont recrutÃ©s des candidats ayant des formations en sciences Ã©conomiques, gestion, Ã©coles de commerce et Ã©coles dâ€™ingÃ©nieur ou autres parcours jugÃ©s adaptÃ©s.', 'yes', '2020-05-28 17:56:32'),
(22, 'master-data-science.png', 'plaquette 1-13.pdf', 'Sciences des donnÃ©es pour les nouveaux mÃ©tiers du numÃ©rique', 'Le traitement des flux de donnÃ©es massives (big data) est aujourdâ€™hui indispensable pour apprÃ©hender les nouveaux mÃ©tiers du numÃ©rique.', 'description ici', 1, 'Master Professionnel', 'Ce programme sÊ¼adresse aux : <br> â€¢ DiploÌ‚meÌs deÌjaÌ€ titulaires dÊ¼un master ou dÊ¼un diploÌ‚me dÊ¼ingeÌnieur en informatique, teÌleÌcommuni- cation et reÌseaux informatiques, matheÌmatiques ou eÌquivalent. <br> â€¢ Etudiants titulaires dÊ¼u', '3 semestres et stage', 'Formation initiale , plein temps', 'Examen du dossier de candidature par la commission pÃ©dagogique franco-tunisienne, puis entretien avec la commission.', 'Le traitement des flux de donnÃ©es massives (big data) est aujourdâ€™hui indispensable pour apprÃ©hender les nouveaux mÃ©tiers du numÃ©rique. Lâ€™accent sera mis sur lâ€™aptitude Ã  gÃ©rer et sÃ©curiser les flux de donnÃ©es tout en prÃ©servant leur confidentialitÃ© et leur stockage. Les concepts sur le traitement des donnÃ©es via des outils de modÃ©lisation seront Ã©tudiÃ©s afin de viser des applications concrÃ¨tes dans des domaines des rÃ©seaux urbains (smart city), des rÃ©seaux Ã©lectriques (smart grids) et de lâ€™agriculture qui ont recours Ã  des rÃ©seaux de capteurs connectÃ©s.', '<p>Le programme du premier semestre se d&eacute;cline en 4 unit&eacute;s d&rsquo;enseignements techniques <br>\r\nform&eacute;es de plusieurs modules portant sur <br>\r\n&ndash; la s&eacute;curisation des bases de donn&eacute;es et des r&eacute;seaux d&rsquo;&eacute;changes, <br>\r\n&ndash; l&rsquo;intelligence d&eacute;cisionnelle, <br>\r\n&ndash; le traitement et l&rsquo;analyse de donn&eacute;es<br>\r\n&ndash; et les syst&egrave;mes de syst&egrave;mes.<br>\r\nUne unit&eacute; d&rsquo;enseignements sera d&eacute;di&eacute;e aux modules transversaux (savoirs comportementaux et langues).<br>\r\nLes 4 unit&eacute;s d&rsquo;enseignements techniques comprennent chacune a minima un projet applicatif. Cette formation par les projets permettra une mise en situation professionnelle<br>\r\ndes apprenants qui les rendra op&eacute;rationnels dans leurs futurs emplois.<br>\r\nEnfin, le second semestre sera d&eacute;di&eacute; &agrave; un stage long men&eacute; en entreprise.</p>', 'Les dÃ©bouchÃ©s sont nombreux dans tous les mÃ©tiers de â€ data scientists â€ oÃ¹ le traitement informatique des donnÃ©es est un avantage compÃ©titif et/ou un outil dâ€™aide Ã  la dÃ©cision permettant le dÃ©veloppement dâ€™applications nouvelles : transport, Ã©nergie, banque, agriculture, santÃ©, e-commerce, etc. <br> Ce master est plutÃ´t professionnalisant, mais des poursuites dâ€™Ã©tude en doctorat seront aussi possibles pour les Ã©tudiants dÃ©jÃ  titulaires dâ€™un autre master, ingÃ©nieur ou dâ€™un diplÃ´me licence.', 'Ce programme sâ€™adresse: <br> 1) aux diplÃ´mÃ©s dÃ©jÃ  titulaires dâ€™un master ou dâ€™un diplÃ´me dâ€™ingÃ©nieur en informatique, tÃ©lÃ©communication et rÃ©seaux informatiques, mathÃ©matique, <br> 2) Ã  de trÃ¨s bons Ã©tudiants titulaires dâ€™un licence, master, ingÃ©nieur ou Ã©quivalent, <br> 3) aux professionnels du numÃ©rique et du traitement de donnÃ©es (formation continue) et <br> 4) aux personnes en recherche dâ€™emploi ou en reconversion professionnelle dans ces domaines (Licence, master, ingÃ©nieur ou Ã©quivalent).', 'yes', '2020-06-01 11:17:28'),
(23, 'master-gÃ©nie-electrique-.png', 'plaquette 1-05.pdf', 'gÃ©nie Ã©lectrique et informatique industrielle pour lâ€™enseignement et lâ€™industrie', 'Former sur le plan disciplinaire et peÌdagogique, dans le domaine du GeÌnie Electrique et de lâ€™Informatique Industrielle, des formateurs : enseignants pour le lyceÌe, pour les ISET, pour les eÌcoles dâ€™ingeÌnieurs et lâ€™UniversiteÌ.', 'description ici', 1, 'Master Professionnel', 'PrÃ©requisÂ :Cette formation sâ€™adresse Ã  des Ã©tudiants issus de master 1 dâ€™Ã©coles dâ€™ingÃ©nieurs\nou Ã  des enseignants pour le lycÃ©e, pour les iset , disposant de solides connaissances en\nmathÃ©matiques et physique ainsi que dans les domaines de ', '3 semestres et 3 stages', 'Formation initiale', 'Lâ€™admissibiliteÌ se fait sur dossier et lâ€™admission par un entretien.', 'Former sur le plan disciplinaire et peÌdagogique, dans le domaine du GeÌnie Electrique et de\nlâ€™Informatique Industrielle, des formateurs : enseignants pour le lyceÌe, pour les ISET, pour les\neÌcoles dâ€™ingeÌnieurs et lâ€™UniversiteÌ.', 'La formation sâ€™appuie sur lâ€™expeÌrience reconnue de lâ€™IPEST dans la preÌparation aÌ€ lâ€™agreÌgation\nde physique, sur lâ€™expeÌrience en enseignement technique de lâ€™ENSIT et sur les masters de\nformation aÌ€ lâ€™enseignement supeÌrieur preÌpareÌs aÌ€ lâ€™ENS Paris-Saclay.\nLe programme apporte un treÌ€s haut niveau scientifique et technique dans les 4 domaines\nsuivants : <br>\nâ€“ Informatique Industrielle <br>\nâ€“ TeÌleÌcommunications <br>\n\nâ€“ Automatique et traitement du signal <br>\nâ€“ Conversion dâ€™Energie. <br>\nLes uniteÌs dâ€™enseignement disciplinaires, abordeÌes avec des peÌdagogies actives varieÌes, sont\ncompleÌteÌes par une formation peÌdagogique : <br>\nâ€“ Stage peÌdagogique de 2 semaines <br>\nâ€“ Ateliers autour des meÌthodes peÌdagogiques, aÌ€ partir des expeÌriences, aÌ€ lâ€™UFTAM et en\nstage et de confeÌrences / deÌbats <br>\nâ€“ Mise en pratique de ces meÌthodes pour concevoir des seÌquences peÌdagogiques <br>\nâ€“ PreÌparation, conception et mise en Å“uvre de seÌquences peÌdagogiques aÌ€ destination du\nreste de la promotion <br>\nâ€“ DeÌveloppement de ressources dâ€™enseignement aÌ€ distance. <br>', 'En plus des meÌtiers de formateurs, au centre de ce master, les eÌtudiants peuvent eÌgalement\npoursuivre en doctorat (dans le domaine des sciences de lâ€™ingeÌnieur ou de la didactique) ou\nsâ€™inteÌgrer dans lâ€™industrie sur des postes neÌcessitant une haute expertise scientifique et\ntechnique ou sur des postes de formateur.', 'Cette formation sâ€™adresse aÌ€ des eÌtudiants issus de master 1, dâ€™eÌcoles dâ€™ingeÌnieurs ou aÌ€ des\nenseignants, disposant de solides connaissances en matheÌmatiques et physique ainsi que\ndans les domaines de la conversion dâ€™eÌnergie, de lâ€™automatique, de lâ€™eÌlectronique et de\nlâ€™informatique industrielle.', 'yes', '2020-05-28 17:56:51'),
(24, 'master-Intelligence-Economique-Africaine.png', 'plaquette 1-15.pdf', 'Intelligence Ã©conomique africaine', 'Ce Master vise Ã  sensibiliser les futurs cadres des pouvoirs publics, des reprÃ©sentations diplomatiques, des partenaires au dÃ©veloppement, des entreprises, et du monde Ã©ducatif aux enjeux de la veille.', 'description ici', 1, 'Master Professionnel', 'Candidats ayant des formations en sciences Ã©conomiques , gestion, Ã©coles de commerce et Ã©coles dâ€™ingÃ©nieur ou autres parcours jugÃ©s adaptÃ©s', '2 semestres', 'Formation initiale , plein temps', 'La sÃ©lection pour lâ€™entrÃ©e en Master 2 se fait sur dossier.', 'Ce Master vise Ã  sensibiliser les futurs cadres des pouvoirs publics, des reprÃ©sentations\ndiplomatiques, des partenaires au dÃ©veloppement, des entreprises, et du monde Ã©ducatif\naux enjeux de la veille et de lâ€™intelligence Ã©conomique en Afrique pour :\nâ€“ Aider Ã  la crÃ©ation et au dÃ©veloppement des dispositifs de veille sectorielle et\ndâ€™intelligence Ã©conomique et stratÃ©gique au sein des institutions publiques et privÃ©es ;\nâ€“ Aider les Ã‰tats, investisseurs, entreprises, organismes de dÃ©veloppement et mÃ©dias Ã \nmieux apprÃ©hender les marchÃ©s africains grÃ¢ce Ã  lâ€™intelligence Ã©conomique ;\n-Renforcer les capacitÃ©s de comprÃ©hension des marchÃ©s africains auprÃ¨s des institutions\npubliques et privÃ©es ainsi quâ€™auprÃ¨s des porteurs de projets individuels ;\nâ€“ Permettre Ã  tout investisseur et Ã  toute entreprise de trouver les meilleures rÃ©ponses Ã  ses\nquestions concernant ses projets dâ€™investissements, ses recherches de partenaires locaux et\nses implantations potentielles en Afrique ;\nâ€“ Contribuer Ã  la fÃ©dÃ©ration, Ã  la reprÃ©sentation, Ã  la dÃ©fense, et Ã  la promotion des intÃ©rÃªts\nÃ©conomiques des Ã‰tats et des entreprises dâ€™Afrique auprÃ¨s des institutions supranationales\net paraÃ©tatiques grÃ¢ce Ã  la veille et lâ€™intelligence Ã©conomique ;\n\n- Aider les entreprises, les institutions Ã©tatiques, para-Ã©tatiques ou privÃ©es Ã  rÃ©sister Ã \nla concurrence, Ã  protÃ©ger leur rÃ©putation, Ã  promouvoir leur image, Ã  Ã©valuer leur\nforces/faiblesses et Ã  anticiper les tendances futures du marchÃ© Africain', NULL, 'Cadre dâ€™administration de lâ€™Etat\nCadre stratÃ©gique en entreprise\nConsultant', NULL, 'yes', '2020-05-28 17:49:19'),
(25, 'master-mutation-digit.png', 'plaquette 1-09.pdf', 'Mutations Digitales', 'Ce MastÃ¨re, situÃ© au croisement du droit et du digital marketing, vise Ã  apporter une spÃ©cialisation juridique et managÃ©riale dans le domaine des mÃ©dias et de la communication, concernant lâ€™ensemble des secteursâ€¦', 'description ici', 3, 'Master Professionnel', 'la formation est ouverte aux Ã©tudiants titulaires dâ€™une licence en droit, en\nscience de gestion , et en marketing et en science de lâ€™information. Lâ€™expÃ©rience\nprofessionnelle acquise est prise en compte aprÃ¨s examen du dossier et avis du conseil\n', '3 semestres et stage', 'Formation initiale , plein temps', 'La sÃ©lection pour lâ€™entrÃ©e en Master se fait sur dossier.', 'Ce MastÃ¨re, situÃ© au croisement du droit et du digital marketing, vise Ã  apporter une\nspÃ©cialisation juridique et managÃ©riale dans le domaine des mÃ©dias et de la communication,\nconcernant lâ€™ensemble des secteurs de la communication que cette derniÃ¨re soit\naudiovisuelle, digitale, ou presse Ã©crite, ainsi quâ€™en matiÃ¨re de propriÃ©tÃ© intellectuelle, de\ndroit des contrats, de droit de la concurrence et de la rÃ©gulation dans les champs du\nnumÃ©rique et des mÃ©dias.\nCe mastÃ¨re met en Ã©vidence une dÃ©marche interdisciplinaire adaptÃ©e aux spÃ©cificitÃ©s du\nmarchÃ© de lâ€™emploi et aux particularitÃ©s des nouvelles donnes de la mondialisation,\nnotamment en ce qui concerne lâ€™Ã©mergence des nouvelles technologies de lâ€™information et\nde la communication. Il touche Ã  la fois Ã  la gestion notamment au marketing et au droit\npublic (libertÃ© dâ€™expression, de communication et dâ€™information, rÃ©partition des\ncompÃ©tences de rÃ©gulation), au droit pÃ©nal (dÃ©lits de presse, responsabilitÃ© pÃ©nale,\ncybercriminalitÃ©), au droit privÃ© (responsabilitÃ© civile, droits dâ€™auteur, protection de la vie\nprivÃ©e, droit Ã  lâ€™image, droit des donnÃ©es personnelles), au droit Ã©conomique\n\n(rÃ©glementation de la publicitÃ©, contrÃ´le des concentrations) et au droit international, Ã \nlâ€™Ã©conomie numÃ©rique ou au marketing', NULL, 'Juriste spÃ©cialiste en droit du numÃ©rique et des mÃ©dias Ã©lectroniques et audiovisuels\nSpÃ©cialiste des mÃ©tiers du marketing digital, de lâ€™information et de la communication\nJuriste en cabinet dâ€™avocats <br>\nAvocat spÃ©cialisÃ© en droit du numÃ©rique et des mÃ©dias <br>\nWebdÃ©veloppeur <br>\nCommunity manager <br>\nSocial mÃ©dia manager / Consultant SMO <br>\nChef digital officer <br>', NULL, 'yes', '2020-05-28 17:56:13'),
(26, 'LICENCE.png', 'plaquette 1-03.pdf', 'Licence Gestion de lâ€™environnement', 'Cette licence a pour objectif dâ€™offrir aux Ã©tudiants des connaissances approfondies dans la caractÃ©risation de la biodiversitÃ© et des Ã©cosystÃ¨mes, la conservation des ressources naturelles (bioressources, eau, Ã©nergie et sol),..', 'description ici', 1, 'Licence ( 3ans)', '<br> - BaccalaurÃ©at Sciences expÃ©rimentales <br> - BaccalaurÃ©at MathÃ©matiques <br> - BaccalaurÃ©at Technique', '6 semestres', 'Formation initiale , plein temps', 'Lâ€™admissibiliteÌ se fait sur dossier et lâ€™admission par un entretien.', 'Cette licence a pour objectif dâ€™offrir aux Ã©tudiants des connaissances approfondies dans la caractÃ©risation de la biodiversitÃ© et des Ã©cosystÃ¨mes, la conservation des ressources naturelles (bioressources, eau, Ã©nergie et sol), la dÃ©termination des diffÃ©rents types de pollutions, la maÃ®trise des technologies de prÃ©vention pour trouver des solutions aux problÃ¨mes environnementaux ainsi que la lutte contre toute forme de pollution.', 'Des enseignements au cÅ“ur de la spÃ©cialitÃ© en chimie, hydrologie, gÃ©nie Ã©cologique et gÃ©nie des procÃ©dÃ©s Des enseignements complÃ©mentaires pour lâ€™exercice des fonctions dâ€™ingÃ©nieur ou de chercheur en mathÃ©matiques, gÃ©omatique, gestion des risques, communication de crise, gestion de projet, sociologie, gÃ©ographie et amÃ©nagement, droit de lâ€™environnement Sciences de lâ€™eau : Echantillonnage et mesures en ligne et in situ ; Acteurs de lâ€™eau et outils de planification ; Potabilisation des eaux GÃ©omatique Soft Skills Projet professionnel : Projet environnemental ; Stage professionnel', 'OpÃ©rateurs dans le traitement de lâ€™eau, des dÃ©chets, du transport et de lâ€™Ã©nergie. Technicien en bureau dâ€™Ã©tudes, Technicien en qualitÃ©, sÃ©curitÃ© et environnement Poursuite dâ€™Ã©tudes: <br> -Master en sciences de lâ€™environnement <br> -Conditions dâ€™admission <br> -Examen du dossier de candidature par la commission pÃ©dagogique franco-tunisienne puis entretien', 'Niveau : BAC <br> DurÃ©e: 6 semaine', 'yes', '2020-05-28 17:58:20');

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
(13, 'yes', 'Titre', 'L\'UFTAM offre une pÃ©dagogie originale, centrÃ©e sur le transfert dâ€™expÃ©rience dans lâ€™action, pluridisciplinaire, tournÃ©e vers l\'international pour faire Ã©merger les grands entrepreneurs et les grands projets de demain.', 'person.png'),
(14, 'yes', 'Titre', 'Les cours qu\'on a reÃ§u jusqu\'Ã  maintenant m\'ont permis d\'enrichir mes connaissances surtout au niveau du traitement des donnÃ©es (modÃ©lisation, Ã©conomÃ©trie) et au niveau de mes connaissances macroÃ©conomique des concepts de dÃ©veloppement Ã©conomique.', 'person.png'),
(15, 'yes', 'Titre', 'Etudier Ã  l\'UFTAM et en Tunisie, me permet de travailler et en mÃªme temps approfondir mes connaissances avec des experts internationaux mobilisÃ©s par l\'UFTAM. en plus avoir un diplÃ´me d\'une Ã©cole franÃ§aise va me faciliter le dÃ©veloppement de ma carriÃ¨re Ã  l\'international.', 'person.png'),
(16, 'yes', 'Titre', 'J\'ai dÃ©couvert l\'UFTAM Ã  l\'occasion de la lecture d\'un article de presse portant sur son inauguration et cela m\'a amenÃ© Ã  m\'informer sur les formations proposÃ©es. J\'ai ainsi dÃ©couvert le mastÃ¨re expertise Ã©conomique qui m\'a attirÃ© Ã©tant donnÃ© mon travail actuel dans le secteur du dÃ©veloppement Ã©conomique.', 'person.png'),
(17, 'yes', 'Titre', 'Lâ€™UniversitÃ© mâ€™a permis de dÃ©velopper mon niveau d\'autonomie ainsi que ma faÃ§on de voir les phÃ©nomÃ¨nes observables. J\'aime cette petite institution hors du commun, car ses cours en bloc, ses mÃ©thodes et ses stratÃ©gies pÃ©dagogiques ont Ã©tÃ© pour moi une expÃ©rience fantastique dans mon cursus universitaire.', 'person.png'),
(18, 'yes', 'Titre', 'Seule lâ€™UFTAM proposait une telle formation, jâ€™ai donc dÃ©cidÃ© de relever le dÃ©fi ! Â« Ã€ l\'instar des autres UniversitÃ©s prÃ©sentent en Tunisie, lâ€™UFTAM propose des formations de trÃ¨s haut niveau, voire dâ€™un niveau supÃ©rieur Ã  celui de certaines institutions, prÃ©sentes en Europe, qui profitent dâ€™une certaine notoriÃ©tÃ©, non seulement auprÃ¨s de la communautÃ© Ã©tudiante, mais Ã©galement auprÃ¨s de nombreux recruteurs Nationaux et Internationaux.', 'person.png');

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
(13, 'yes', 'Le logement universitaire', 'Les Ã©tudiants de lâ€™UFTAM disposent dâ€™un accÃ¨s rÃ©servÃ© aux logements des citÃ©s universitaires de Mourouj pour les filles et pour les garÃ§ons Montfleuri.'),
(14, 'yes', 'La santÃ© Assistance psychologique et mÃ©dicale', 'La prÃ©sence pÃ©riodique d\'un psychologue et d\'un mÃ©decin sur le site est assurÃ©e pour les Ã©tudiants de lâ€™UFTAM.');

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
(12, 'yes', 'tv5 mondelogo', 'tv5 mondelogo.png');

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
-- AUTO_INCREMENT for table `t_event`
--
ALTER TABLE `t_event`
  MODIFY `eve_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `t_formation`
--
ALTER TABLE `t_formation`
  MODIFY `for_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `t_la_vie`
--
ALTER TABLE `t_la_vie`
  MODIFY `tlv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `t_partner`
--
ALTER TABLE `t_partner`
  MODIFY `par_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `t_student_exp`
--
ALTER TABLE `t_student_exp`
  MODIFY `tse_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `t_trust_campany`
--
ALTER TABLE `t_trust_campany`
  MODIFY `ttc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
