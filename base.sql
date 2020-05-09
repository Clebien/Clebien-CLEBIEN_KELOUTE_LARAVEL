-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 09 mai 2020 à 05:02
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `base`
--

-- --------------------------------------------------------

--
-- Structure de la table `annuaire`
--

CREATE TABLE `annuaire` (
  `annuaireID` int(11) NOT NULL,
  `titre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `annuaire`
--

INSERT INTO `annuaire` (`annuaireID`, `titre`) VALUES
(1, 'HARPEGE'),
(2, 'APOGEE'),
(3, 'FORMASUP');

-- --------------------------------------------------------

--
-- Structure de la table `appartenir`
--

CREATE TABLE `appartenir` (
  `Individu_ID` int(11) NOT NULL,
  `groupe_groupeID` int(11) NOT NULL,
  `Annee` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `appartenir`
--

INSERT INTO `appartenir` (`Individu_ID`, `groupe_groupeID`, `Annee`) VALUES
(1, 2, 2019),
(2, 2, 2019),
(3, 2, 2019),
(4, 2, 2019),
(5, 2, 2019),
(6, 2, 2019),
(7, 2, 2019),
(8, 2, 2019),
(9, 2, 2019),
(10, 2, 2019),
(11, 2, 2019),
(12, 2, 2019),
(13, 2, 2019),
(14, 2, 2019),
(15, 2, 2019),
(16, 2, 2019),
(17, 2, 2019),
(18, 2, 2019),
(19, 2, 2019),
(20, 2, 2019),
(21, 2, 2019),
(22, 2, 2019),
(23, 2, 2019),
(24, 2, 2019),
(25, 2, 2019),
(30, 1, 2018),
(31, 1, 2018),
(32, 3, 2018),
(34, 1, 2018),
(35, 1, 2018),
(36, 1, 2018),
(37, 1, 2018),
(38, 1, 2018),
(39, 1, 2018),
(40, 1, 2018),
(41, 1, 2018),
(42, 1, 2018),
(43, 1, 2018),
(44, 1, 2018),
(45, 1, 2018),
(46, 1, 2018),
(47, 1, 2018),
(48, 1, 2018),
(49, 1, 2018),
(50, 1, 2018),
(51, 1, 2018),
(52, 1, 2018),
(53, 1, 2018),
(54, 1, 2018),
(55, 1, 2018),
(56, 1, 2018),
(57, 1, 2018),
(58, 1, 2018),
(59, 1, 2018),
(60, 1, 2018),
(61, 1, 2018),
(62, 1, 2018),
(63, 1, 2018),
(64, 1, 2018),
(65, 1, 2018),
(66, 1, 2018),
(67, 1, 2018),
(68, 1, 2018),
(69, 1, 2018),
(70, 1, 2018),
(71, 1, 2018),
(72, 1, 2018),
(73, 1, 2018),
(74, 1, 2018),
(75, 1, 2018),
(76, 1, 2018),
(77, 1, 2018),
(78, 1, 2018),
(79, 1, 2018),
(80, 1, 2018),
(81, 1, 2018),
(82, 1, 2018),
(83, 1, 2018),
(84, 1, 2018),
(85, 1, 2018),
(86, 1, 2018),
(87, 1, 2018),
(88, 1, 2018),
(89, 1, 2018),
(90, 1, 2018),
(91, 1, 2018),
(92, 1, 2018),
(93, 1, 2018),
(94, 1, 2018),
(95, 1, 2018),
(96, 1, 2018),
(97, 1, 2018),
(98, 1, 2018),
(99, 1, 2018),
(100, 1, 2018),
(101, 1, 2018),
(102, 1, 2018),
(103, 1, 2018),
(104, 1, 2018),
(105, 1, 2018),
(106, 1, 2018),
(107, 1, 2018),
(108, 1, 2018),
(109, 1, 2018),
(110, 1, 2018),
(111, 1, 2018),
(112, 1, 2018),
(113, 1, 2018),
(114, 1, 2018),
(115, 1, 2018),
(116, 1, 2018),
(117, 1, 2018),
(119, 1, 2018),
(120, 1, 2018),
(121, 1, 2018),
(122, 1, 2018),
(123, 1, 2018),
(124, 1, 2018),
(125, 1, 2018),
(126, 1, 2018),
(127, 1, 2018),
(128, 1, 2018),
(129, 1, 2018),
(130, 1, 2018),
(205, 4, 2017),
(206, 1, 2018);

-- --------------------------------------------------------

--
-- Structure de la table `groupe`
--

CREATE TABLE `groupe` (
  `groupeID` int(11) NOT NULL,
  `libelle` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `groupe`
--

INSERT INTO `groupe` (`groupeID`, `libelle`) VALUES
(1, 'L2_MIASHS'),
(2, 'L3_MIAGE_APPRENTISSAGE'),
(3, 'L3_MIAGE_CLASSIQUE'),
(4, 'PROFESSEUR');

-- --------------------------------------------------------

--
-- Structure de la table `individu`
--

CREATE TABLE `individu` (
  `ID` int(11) NOT NULL,
  `nom` varchar(45) NOT NULL,
  `prenom` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `num` int(11) NOT NULL,
  `annuaire` int(11) NOT NULL,
  `statut` int(11) NOT NULL,
  `groupe` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `individu`
--

INSERT INTO `individu` (`ID`, `nom`, `prenom`, `email`, `num`, `annuaire`, `statut`, `groupe`) VALUES
(1, 'Ahmed', 'Noufeine', 'AhmedNoufeine@parisnanterre.fr', 340001, 3, 1, 2),
(2, 'Ait akli', 'Litissia', 'Ait akliLitissia@parisnanterre.fr', 340002, 3, 1, 2),
(3, 'Ba', 'Adja', 'BaAdja@parisnanterre.fr', 340003, 3, 1, 2),
(4, 'Binous', 'Wassim', 'BinousWassim@parisnanterre.fr', 340004, 3, 1, 2),
(5, 'Bocoum', 'Idy', 'BocoumIdy@parisnanterre.fr', 340005, 3, 1, 2),
(6, 'Brochado', 'Alexandre', 'BrochadoAlexandre@parisnanterre.fr', 340006, 3, 1, 2),
(7, 'Clebien', 'Nangninta', 'ClebienNangninta@parisnanterre.fr', 340007, 3, 1, 2),
(8, 'Das', 'Rahul', 'DasRahul@parisnanterre.fr', 340008, 3, 1, 2),
(9, 'Elarj', 'Aniss', 'ElarjAniss@parisnanterre.fr', 340009, 3, 1, 2),
(10, 'Fall', 'Seynabou', 'FallSeynabou@parisnanterre.fr', 340010, 3, 1, 2),
(11, 'Jestin', 'Gabriel', 'JestinGabriel@parisnanterre.fr', 340011, 3, 1, 2),
(12, 'Keloute ndamukong', 'Ubald', 'Keloute ndamukongUbald@parisnanterre.fr', 340012, 3, 1, 2),
(13, 'Khalfi', 'Sofian', 'KhalfiSofian@parisnanterre.fr', 340013, 3, 1, 2),
(14, 'Le men', 'Yann', 'Le menYann@parisnanterre.fr', 340014, 3, 1, 2),
(15, 'Mboup', 'Gaye', 'MboupGaye@parisnanterre.fr', 340015, 3, 1, 2),
(16, 'Mouzouri', 'Ilhame', 'MouzouriIlhame@parisnanterre.fr', 340016, 3, 1, 2),
(17, 'Ndiaye', 'Moussa', 'NdiayeMoussa@parisnanterre.fr', 340017, 3, 1, 2),
(18, 'Quellec', 'Nathan', 'QuellecNathan@parisnanterre.fr', 340018, 3, 1, 2),
(19, 'Rajaratnam', 'Sarujan', 'RajaratnamSarujan@parisnanterre.fr', 340019, 3, 1, 2),
(20, 'Raypoulet', 'Hemanath', 'RaypouletHemanath@parisnanterre.fr', 340020, 3, 1, 2),
(21, 'Sakho', 'Assane', 'SakhoAssane@parisnanterre.fr', 340021, 3, 1, 2),
(22, 'Schauffler', 'Ophelie', 'SchaufflerOphelie@parisnanterre.fr', 340022, 3, 1, 2),
(23, 'Si-mohammed', 'Samy', 'Si-mohammedSamy@parisnanterre.fr', 340023, 3, 1, 2),
(24, 'Sidate', 'Alexis', 'SidateAlexis@parisnanterre.fr', 340024, 3, 1, 2),
(25, 'Zemali', 'Lynda', 'ZemaliLynda@parisnanterre.fr', 340025, 3, 1, 2),
(26, 'Abalil', 'Rizlane', 'AbalilRizlane@parisnanterre.fr', 340026, 3, 1, NULL),
(27, 'Achou', 'Sara', 'AchouSara@parisnanterre.fr', 340027, 3, 1, NULL),
(28, 'Akkoura', 'Aniesse', 'AkkouraAniesse@parisnanterre.fr', 340028, 3, 1, NULL),
(29, 'Ali', 'Ikram-masjid', 'AliIkram-masjid@parisnanterre.fr', 340029, 3, 1, NULL),
(30, 'Ali', 'Faiz', 'AliFaiz@parisnanterre.fr', 340030, 3, 1, 1),
(31, 'Ali', 'Ikram-masjid', 'AliIkram-masjid@parisnanterre.fr', 340031, 3, 1, 1),
(32, 'Alouda', 'Lidao', 'AloudaLidao@parisnanterre.fr', 340032, 2, 1, 3),
(34, 'Askar', 'Mohammad', 'AskarMohammad@parisnanterre.fr', 340034, 2, 1, 1),
(35, 'Auger', 'Antoine', 'AugerAntoine@parisnanterre.fr', 340035, 2, 1, 1),
(36, 'Auger', 'Antoine', 'AugerAntoine@parisnanterre.fr', 340036, 2, 1, 1),
(37, 'Balde', 'Mamadou saliou', 'BaldeMamadou saliou@parisnanterre.fr', 340037, 2, 1, 1),
(38, 'Baro', 'Mohamed', 'BaroMohamed@parisnanterre.fr', 340038, 2, 1, 1),
(39, 'Barolle', 'Romain', 'BarolleRomain@parisnanterre.fr', 340039, 2, 1, 1),
(40, 'Barolle', 'Romain', 'BarolleRomain@parisnanterre.fr', 340040, 2, 1, 1),
(41, 'Barry', 'Aissatou', 'BarryAissatou@parisnanterre.fr', 340041, 2, 1, 1),
(42, 'Belhaimeur', 'Mohamed', 'BelhaimeurMohamed@parisnanterre.fr', 340042, 2, 1, 1),
(43, 'Benaissa', 'Adam', 'BenaissaAdam@parisnanterre.fr', 340043, 2, 1, 1),
(44, 'Benali', 'Ahmed', 'BenaliAhmed@parisnanterre.fr', 340044, 2, 1, 1),
(45, 'Berte', 'Ulrich', 'BerteUlrich@parisnanterre.fr', 340045, 2, 1, 1),
(46, 'Berte', 'Ulrich', 'BerteUlrich@parisnanterre.fr', 340046, 2, 1, 1),
(47, 'Beyaz', 'Sefkan', 'BeyazSefkan@parisnanterre.fr', 340047, 2, 1, 1),
(48, 'Bodart', 'Valentin', 'BodartValentin@parisnanterre.fr', 340048, 2, 1, 1),
(49, 'Boucamus', 'Cassandra', 'BoucamusCassandra@parisnanterre.fr', 340049, 2, 1, 1),
(50, 'Boumaza', 'Karim', 'BoumazaKarim@parisnanterre.fr', 340050, 2, 1, 1),
(51, 'Bouzekri', 'Ryan', 'BouzekriRyan@parisnanterre.fr', 340051, 2, 1, 1),
(52, 'Bouzekri', 'Ryan', 'BouzekriRyan@parisnanterre.fr', 340052, 2, 1, 1),
(53, 'Callet', 'Theo', 'CalletTheo@parisnanterre.fr', 340053, 2, 1, 1),
(54, 'Callet', 'Theo', 'CalletTheo@parisnanterre.fr', 340054, 2, 1, 1),
(55, 'Cazenave', 'Louis', 'CazenaveLouis@parisnanterre.fr', 340055, 2, 1, 1),
(56, 'Chatillon', 'Julien', 'ChatillonJulien@parisnanterre.fr', 340056, 2, 1, 1),
(57, 'Chatillon', 'Julien', 'ChatillonJulien@parisnanterre.fr', 340057, 2, 1, 1),
(58, 'Chen', 'Juline', 'ChenJuline@parisnanterre.fr', 340058, 2, 1, 1),
(59, 'Chen', 'Juline', 'ChenJuline@parisnanterre.fr', 340059, 2, 1, 1),
(60, 'Crentsil', 'Robert', 'CrentsilRobert@parisnanterre.fr', 340060, 2, 1, 1),
(61, 'Crentsil', 'Robert', 'CrentsilRobert@parisnanterre.fr', 340061, 2, 1, 1),
(62, 'Dandeu', 'Tom', 'DandeuTom@parisnanterre.fr', 340062, 2, 1, 1),
(63, 'Dandeu', 'Tom', 'DandeuTom@parisnanterre.fr', 340063, 2, 1, 1),
(64, 'Delaporte', 'Lucie', 'DelaporteLucie@parisnanterre.fr', 340064, 2, 1, 1),
(65, 'Delaporte', 'Lucie', 'DelaporteLucie@parisnanterre.fr', 340065, 2, 1, 1),
(66, 'Diop', 'Maguette', 'DiopMaguette@parisnanterre.fr', 340066, 2, 1, 1),
(67, 'Djamaldine ben', 'Hadji', 'Djamaldine benHadji@parisnanterre.fr', 340067, 2, 1, 1),
(68, 'Dubois', 'Dorian', 'DuboisDorian@parisnanterre.fr', 340068, 2, 1, 1),
(69, 'El amrani', 'Amine', 'El amraniAmine@parisnanterre.fr', 340069, 2, 1, 1),
(70, 'Esmel', 'Nome', 'EsmelNome@parisnanterre.fr', 340070, 2, 1, 1),
(71, 'Fahim', 'Aymane', 'FahimAymane@parisnanterre.fr', 340071, 2, 1, 1),
(72, 'Fekih', 'Kevin', 'FekihKevin@parisnanterre.fr', 340072, 2, 1, 1),
(73, 'Feugier', 'Augustin', 'FeugierAugustin@parisnanterre.fr', 340073, 2, 1, 1),
(74, 'Gac', 'Kevin', 'GacKevin@parisnanterre.fr', 340074, 2, 1, 1),
(75, 'Ganeshn', 'Haresh', 'GaneshnHaresh@parisnanterre.fr', 340075, 2, 1, 1),
(76, 'Gavalda', 'Clement', 'GavaldaClement@parisnanterre.fr', 340076, 2, 1, 1),
(77, 'Gilbert', 'Cyprien', 'GilbertCyprien@parisnanterre.fr', 340077, 2, 1, 1),
(78, 'Gilbert', 'Cyprien', 'GilbertCyprien@parisnanterre.fr', 340078, 2, 1, 1),
(79, 'Gorlicki', 'Paul', 'GorlickiPaul@parisnanterre.fr', 340079, 2, 1, 1),
(80, 'Goyet', 'Camille', 'GoyetCamille@parisnanterre.fr', 340080, 2, 1, 1),
(81, 'Goyet', 'Camille', 'GoyetCamille@parisnanterre.fr', 340081, 2, 1, 1),
(82, 'Grandelaude', 'Mathias', 'GrandelaudeMathias@parisnanterre.fr', 340082, 2, 1, 1),
(83, 'Hadjara', 'Celina', 'HadjaraCelina@parisnanterre.fr', 340083, 2, 1, 1),
(84, 'Houhou', 'Sara', 'HouhouSara@parisnanterre.fr', 340084, 2, 1, 1),
(85, 'Igoudjilene', 'Kenza', 'IgoudjileneKenza@parisnanterre.fr', 340085, 2, 1, 1),
(86, 'Jalloh', 'Yusuf', 'JallohYusuf@parisnanterre.fr', 340086, 2, 1, 1),
(87, 'Jardin', 'Samy', 'JardinSamy@parisnanterre.fr', 340087, 2, 1, 1),
(88, 'Jardin', 'Samy', 'JardinSamy@parisnanterre.fr', 340088, 2, 1, 1),
(89, 'Jules', 'Julissa', 'JulesJulissa@parisnanterre.fr', 340089, 2, 1, 1),
(90, 'Kadi', 'Imane', 'KadiImane@parisnanterre.fr', 340090, 2, 1, 1),
(91, 'Kadri', 'Nassim', 'KadriNassim@parisnanterre.fr', 340091, 2, 1, 1),
(92, 'Kende', 'Emmanuela', 'KendeEmmanuela@parisnanterre.fr', 340092, 2, 1, 1),
(93, 'Kouhafa', 'Latifa', 'KouhafaLatifa@parisnanterre.fr', 340093, 2, 1, 1),
(94, 'Lacom', 'Marveen', 'LacomMarveen@parisnanterre.fr', 340094, 2, 1, 1),
(95, 'Le', 'Phong sac', 'LePhong sac@parisnanterre.fr', 340095, 2, 1, 1),
(96, 'Le lorier', 'Lucas', 'Le lorierLucas@parisnanterre.fr', 340096, 2, 1, 1),
(97, 'Legendre', 'Angele', 'LegendreAngele@parisnanterre.fr', 340097, 2, 1, 1),
(98, 'Lemaza kunday ndjuka', 'Revelle', 'Lemaza kunday ndjukaRevelle@parisnanterre.fr', 340098, 2, 1, 1),
(99, 'Limbasse', 'Noemie', 'LimbasseNoemie@parisnanterre.fr', 340099, 2, 1, 1),
(100, 'Limbasse', 'Noemie', 'LimbasseNoemie@parisnanterre.fr', 340100, 2, 1, 1),
(101, 'Lin', 'Xinlei', 'LinXinlei@parisnanterre.fr', 340101, 2, 1, 1),
(102, 'Louveau', 'Christophe', 'LouveauChristophe@parisnanterre.fr', 340102, 2, 1, 1),
(103, 'Malinvaud', 'Paul', 'MalinvaudPaul@parisnanterre.fr', 340103, 2, 1, 1),
(104, 'Martin', 'Vanessa', 'MartinVanessa@parisnanterre.fr', 340104, 2, 1, 1),
(105, 'Medaoud', 'Salim', 'MedaoudSalim@parisnanterre.fr', 340105, 2, 1, 1),
(106, 'Mousset', 'Pierre', 'MoussetPierre@parisnanterre.fr', 340106, 2, 1, 1),
(107, 'Mousset', 'Pierre', 'MoussetPierre@parisnanterre.fr', 340107, 2, 1, 1),
(108, 'Nanquette', 'Olivier', 'NanquetteOlivier@parisnanterre.fr', 340108, 2, 1, 1),
(109, 'Nanquette', 'Olivier', 'NanquetteOlivier@parisnanterre.fr', 340109, 2, 1, 1),
(110, 'Nass', 'Julien', 'NassJulien@parisnanterre.fr', 340110, 2, 1, 1),
(111, 'Nass', 'Julien', 'NassJulien@parisnanterre.fr', 340111, 2, 1, 1),
(112, 'Noursaid', 'Lahcen', 'NoursaidLahcen@parisnanterre.fr', 340112, 2, 1, 1),
(113, 'Oumbe oumbe', 'David', 'Oumbe oumbeDavid@parisnanterre.fr', 340113, 2, 1, 1),
(114, 'Pires', 'Dany', 'PiresDany@parisnanterre.fr', 340114, 2, 1, 1),
(115, 'Pires', 'Dany', 'PiresDany@parisnanterre.fr', 340115, 2, 1, 1),
(116, 'Quenum', 'Heloise', 'QuenumHeloise@parisnanterre.fr', 340116, 2, 1, 1),
(117, 'Quenum', 'Heloise', 'QuenumHeloise@parisnanterre.fr', 340117, 2, 1, 1),
(119, 'Rageh', 'Nydel', 'RagehNydel@parisnanterre.fr', 340119, 2, 1, 1),
(120, 'Ripert', 'Alexandre', 'RipertAlexandre@parisnanterre.fr', 340120, 2, 1, 1),
(121, 'Sadat', 'Halima', 'SadatHalima@parisnanterre.fr', 340121, 2, 1, 1),
(122, 'Sardaoui', 'Amine', 'SardaouiAmine@parisnanterre.fr', 340122, 2, 1, 1),
(123, 'Sereir', 'Zohra', 'SereirZohra@parisnanterre.fr', 340123, 2, 1, 1),
(124, 'Sharma', 'Aurelien', 'SharmaAurelien@parisnanterre.fr', 340124, 2, 1, 1),
(125, 'Sintes', 'Manon', 'SintesManon@parisnanterre.fr', 340125, 2, 1, 1),
(126, 'Smahi', 'Lydia', 'SmahiLydia@parisnanterre.fr', 340126, 2, 1, 1),
(127, 'Soleil', 'Emilie', 'SoleilEmilie@parisnanterre.fr', 340127, 2, 1, 1),
(128, 'Soumare', 'Fatimata', 'SoumareFatimata@parisnanterre.fr', 340128, 2, 1, 1),
(129, 'Sun', 'Jialei', 'SunJialei@parisnanterre.fr', 340129, 2, 1, 1),
(130, 'Tahir', 'Mohamed - imrane', 'TahirMohamed - imrane@parisnanterre.fr', 340130, 2, 1, 1),
(131, 'Tissot', 'Guilhem', 'TissotGuilhem@parisnanterre.fr', 340131, 2, 1, NULL),
(132, 'Tliba', 'Ahmed', 'TlibaAhmed@parisnanterre.fr', 340132, 2, 1, NULL),
(133, 'LE ROUX', 'Annaig', 'LE ROUXAnnaig@parisnanterre.fr', 34100, 1, 2, 4),
(134, 'Bouchakhchoukha', 'Adel', 'BouchakhchoukhaAdel@parisnanterre.fr', 34101, 1, 2, 4),
(137, 'Mesnager', 'Laurent', 'MesnagerLaurent@parisnanterre.fr', 34104, 1, 2, 4),
(138, 'Le Cun', 'Bertrand', 'Le CunBertrand@parisnanterre.fr', 34105, 1, 2, 4),
(139, 'Hanen', 'Claire', 'HanenClaire@parisnanterre.fr', 34106, 1, 2, 4),
(140, 'Guyon', 'Thomas', 'GuyonThomas@parisnanterre.fr', 34107, 1, 2, 4),
(141, 'Ben Hamida Mrabet', 'Sana', 'Ben Hamida MrabetSana@parisnanterre.fr', 34108, 1, 2, 4),
(142, 'Ikken', 'Sonia', 'IkkenSonia@parisnanterre.fr', 34109, 1, 2, 4),
(143, 'Gervais', 'Marie-Pierre', 'GervaisMarie-Pierre@parisnanterre.fr', 34110, 1, 2, 4),
(144, 'Duvernet', 'Laurent', 'DuvernetLaurent@parisnanterre.fr', 34111, 1, 2, 4),
(145, 'Castillo_', 'Alberto', 'Castillo_Alberto@parisnanterre.fr', 34112, 1, 2, 4),
(146, 'Baarir', 'Souheib', 'BaarirSouheib@parisnanterre.fr', 34113, 1, 2, 4),
(148, 'Azhar-Arnal', 'Juliette', 'Azhar-ArnalJuliette@parisnanterre.fr', 34115, 1, 2, 4),
(149, 'Rukoz-Castillo', 'Marta', 'Rukoz-CastilloMarta@parisnanterre.fr', 34116, 1, 2, 4),
(150, 'Legond-Aubry', 'Fabrice', 'Legond-AubryFabrice@parisnanterre.fr', 34117, 1, 2, 4),
(151, 'Quinio', 'Bernard', 'QuinioBernard@parisnanterre.fr', 34118, 1, 2, 4),
(153, 'Ameur', 'Yannick', 'AmeurYannick@parisnanterre.fr', 34120, 1, 2, 4),
(155, 'Dubois', 'Alois', 'DuboisAlois@parisnanterre.fr', 34122, 1, 2, 4),
(156, 'Duriez', 'Nathalie', 'DuriezNathalie@parisnanterre.fr', 34123, 1, 2, 4),
(157, 'Florea', 'Paul', 'FloreaPaul@parisnanterre.fr', 34124, 1, 2, 4),
(158, 'Isoard', 'Thierry Michel', 'IsoardThierry Michel@parisnanterre.fr', 34125, 1, 2, 4),
(159, 'Latif', 'Youssef', 'LatifYoussef@parisnanterre.fr', 34126, 1, 2, 4),
(160, 'Leloir', 'Nicole', 'LeloirNicole@parisnanterre.fr', 34127, 1, 2, 4),
(161, 'Novelli', 'Emmanuelle', 'NovelliEmmanuelle@parisnanterre.fr', 34128, 1, 2, 4),
(162, 'Pujol', 'Nicolas', 'PujolNicolas@parisnanterre.fr', 34129, 1, 2, 4),
(163, 'Renaud', 'Francis', 'RenaudFrancis@parisnanterre.fr', 34130, 1, 2, 4),
(164, 'Serdoun', 'Samy', 'SerdounSamy@parisnanterre.fr', 34131, 1, 2, 4),
(165, 'Starck', 'Monia', 'StarckMonia@parisnanterre.fr', 34132, 1, 2, 4),
(167, 'Tourvieille', 'Marc', 'TourvieilleMarc@parisnanterre.fr', 34134, 1, 2, 4),
(168, 'Zamfirou', 'Michel', 'ZamfirouMichel@parisnanterre.fr', 34135, 1, 2, 4),
(169, 'Zilova', 'Jana', 'ZilovaJana@parisnanterre.fr', 34136, 1, 2, 4),
(170, 'Menouer', 'Tarek', 'MenouerTarek@parisnanterre.fr', 34137, 1, 2, 4),
(171, 'Rodier', 'Lise', 'RodierLise@parisnanterre.fr', 34138, 1, 2, 4),
(172, 'Angarita Arocha', 'Rafael Enrique', 'Angarita ArochaRafael Enrique@parisnanterre.fr', 34139, 1, 2, 4),
(173, 'Ait Salaht', 'Farah', 'Ait SalahtFarah@parisnanterre.fr', 34140, 1, 2, 4),
(174, 'Rousseau', 'Pierre', 'RousseauPierre@parisnanterre.fr', 34141, 1, 2, 4),
(175, 'Medjek', 'Sarah', 'MedjekSarah@parisnanterre.fr', 34142, 1, 2, 4),
(177, 'D_Alfonso', 'Giovanna', 'D_AlfonsoGiovanna@parisnanterre.fr', 34144, 1, 2, 4),
(178, 'KELLOU-MENOUER', 'Kenza', 'KELLOU-MENOUERKenza@parisnanterre.fr', 34145, 1, 2, 4),
(179, 'Oulhaci', 'Faiza', 'OulhaciFaiza@parisnanterre.fr', 34146, 1, 2, 4),
(180, 'Poizat', 'Pascal', 'PoizatPascal@parisnanterre.fr', 34147, 1, 2, 4),
(181, 'SADDEM', 'Rim ', 'SADDEMRim @parisnanterre.fr', 34148, 1, 2, 4),
(182, 'BENAMMAR', 'Nassima ', 'BENAMMARNassima @parisnanterre.fr', 34149, 1, 2, 4),
(183, 'ARFAOUI', 'Khadija', 'ARFAOUIKhadija@parisnanterre.fr', 34150, 1, 2, 4),
(184, 'Walter', 'Jean-Marc', 'WalterJean-Marc@parisnanterre.fr', 34151, 1, 2, 4),
(185, 'Bendraou', 'Reda', 'BendraouReda@parisnanterre.fr', 34152, 1, 2, 4),
(186, 'Cojean', 'Bruno', 'CojeanBruno@parisnanterre.fr', 34153, 1, 2, 4),
(187, 'Abrantes', 'Pedro', 'AbrantesPedro@parisnanterre.fr', 34154, 1, 2, 4),
(188, 'Zouari', 'Belhassen', 'ZouariBelhassen@parisnanterre.fr', 34155, 1, 2, 4),
(189, 'HOUHOU', 'Sara ', 'HOUHOUSara @parisnanterre.fr', 34156, 1, 2, 4),
(190, 'GUEHIS-SAADAOUI', 'Sonia', 'GUEHIS-SAADAOUISonia@parisnanterre.fr', 34157, 1, 2, 4),
(191, 'Hillah', 'Lom Messan', 'HillahLom Messan@parisnanterre.fr', 34158, 1, 2, 4),
(192, 'Hmedeh', 'Zeinab', 'HmedehZeinab@parisnanterre.fr', 34159, 1, 2, 4),
(193, 'Gherbi', 'Tahar', 'GherbiTahar@parisnanterre.fr', 34160, 1, 2, 4),
(194, 'Alaoui', 'Malek', 'AlaouiMalek@parisnanterre.fr', 34161, 1, 2, 4),
(195, 'Non defini', 'Non defini', 'Non definiNon defini@parisnanterre.fr', 404, 1, 2, 4),
(196, 'Pierre', 'Laurent', 'PierreLaurent@parisnanterre.fr', 34163, 1, 2, 4),
(197, 'Hyon', 'Emmanuel', 'HyonEmmanuel@parisnanterre.fr', 34164, 1, 2, 4),
(205, 'Moussa', 'Adamo', 'adamo@gmail.com', 34165, 1, 2, 4);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `statut`
--

CREATE TABLE `statut` (
  `statutID` int(11) NOT NULL,
  `libelle` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `statut`
--

INSERT INTO `statut` (`statutID`, `libelle`) VALUES
(1, 'Etudiant'),
(2, 'Enseignant');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `annuaire`
--
ALTER TABLE `annuaire`
  ADD PRIMARY KEY (`annuaireID`);

--
-- Index pour la table `appartenir`
--
ALTER TABLE `appartenir`
  ADD UNIQUE KEY `Individu_ID` (`Individu_ID`),
  ADD KEY `groupe_groupeID` (`groupe_groupeID`);

--
-- Index pour la table `groupe`
--
ALTER TABLE `groupe`
  ADD PRIMARY KEY (`groupeID`);

--
-- Index pour la table `individu`
--
ALTER TABLE `individu`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `num` (`num`),
  ADD KEY `individu_ibfk_1` (`annuaire`),
  ADD KEY `individu_ibfk_2` (`statut`),
  ADD KEY `groupe` (`groupe`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `statut`
--
ALTER TABLE `statut`
  ADD PRIMARY KEY (`statutID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `annuaire`
--
ALTER TABLE `annuaire`
  MODIFY `annuaireID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `groupe`
--
ALTER TABLE `groupe`
  MODIFY `groupeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `individu`
--
ALTER TABLE `individu`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `statut`
--
ALTER TABLE `statut`
  MODIFY `statutID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `appartenir`
--
ALTER TABLE `appartenir`
  ADD CONSTRAINT `appartenir_ibfk_2` FOREIGN KEY (`groupe_groupeID`) REFERENCES `groupe` (`groupeID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `individu`
--
ALTER TABLE `individu`
  ADD CONSTRAINT `individu_ibfk_1` FOREIGN KEY (`annuaire`) REFERENCES `annuaire` (`annuaireID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `individu_ibfk_2` FOREIGN KEY (`groupe`) REFERENCES `groupe` (`groupeID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `individu_ibfk_3` FOREIGN KEY (`statut`) REFERENCES `statut` (`statutID`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
