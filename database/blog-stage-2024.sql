-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 28 août 2024 à 17:39
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `blogphp-stage2024`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `aimage` varchar(1000) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `introduction` text NOT NULL,
  `content` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `aimage`, `title`, `slug`, `introduction`, `content`, `created_at`, `updated_at`) VALUES
(151, NULL, '000CHAUDRONNERIE INDUSTRIELLE ET DES STRUCTURES MÉTALLIQUES', '000chaudronnerie-industrielle-et-des-structures-mÉtalliques', 'Le Technicien en Chaudronnerie Industrielle élabore un dossier de fabrication et réalise des équipements composés de pièces assemblées.', 'Le Technicien en Chaudronnerie Industrielle élabore un dossier de fabrication et réalise des équipements composés de pièces assemblées. Il utilise des moyens de production numériques (pliage, découpe), travaille le métal sous forme de tôles et de barres. Il trace, découpe, met en forme, préassemble, installe et contrôle ses fabrications. Sa fonction s&#039;articule essentiellement autour de quatre activités principales : - Participer aux études : dessiner les plans, apporter des solutions et des modifications, apporter des éléments de chiffrage.\r\n\r\nL', '2023-09-10 20:08:14', '2024-08-27 13:19:17'),
(152, NULL, 'Logistique et transport', 'logistique-et-transport', 'Le Technicien en Chaudronnerie Industrielle élabore un dossier de fabrication et réalise des équipements composés de pièces assemblées.', 'Le Technicien en Chaudronnerie Industrielle élabore un dossier de fabrication et réalise des équipements composés de pièces assemblées. Il utilise des moyens de production numériques (pliage, découpe), travaille le métal sous forme de tôles et de barres. Il trace, découpe, met en forme, préassemble, installe et contrôle ses fabrications. Sa fonction s\'articule essentiellement autour de quatre activités principales : - Participer aux études : dessiner les plans, apporter des solutions et des modifications, apporter des éléments de chiffrage.\r\n\r\n', '2023-09-10 20:08:57', '2024-08-27 13:19:17'),
(153, NULL, 'Sécrétariat Bureautique Bilingue', 'sécrétariat-bureautique-bilingue', 'Le (la) secrétaire, miroir de l’entreprise est un assistant qui décharge ses supérieurs des tâches administratives.', 'Le (la) secrétaire, miroir de l’entreprise est un assistant qui décharge ses supérieurs des tâches administratives. Il est l’un des principaux interlocuteurs entre l’entreprise et l’extérieur. Le (la) secrétaire bureautique assure le secrétariat d’un service ou d’un responsable de l’entreprise. Il maîtrise les techniques modernes de bureau et remplit fréquemment des fonctions d’organisation et de communication. Il tient l’agenda de son supérieur hiérarchique et organise matériellement ses réunions et ses déplacements. Son niveau de responsabilité et son degré d’autonomie varient beaucoup selon la taille de l’entreprise ou du service. Cette filière vise à former des secrétaires hautement qualifié(e)s dans le secrétariat\r\n', '2023-09-10 20:09:31', '2024-08-27 13:19:17'),
(154, NULL, 'Banque et Microfinance', 'banque-et-microfinance', 'Ce programme de formation professionnelle est conçu essentiellement pour équiper l’apprenant des connaissances pratiques le qualifiant à occuper un poste dans un Établissement bancaire et de Microfinance (EMF).', 'Ce programme de formation professionnelle est conçu essentiellement pour équiper l’apprenant des connaissances pratiques le qualifiant à occuper un poste dans un Établissement bancaire et de Microfinance (EMF). Il est donc question pour les enseignants qui sont des cadres de Banque ou d’EMF d’initier l’apprenant sur ce qui est fait quotidiennement et sur la théorie, les principes et la réglementation qui régissent l’activité bancaire.', '2023-09-10 20:09:58', '2024-08-27 13:19:17'),
(155, NULL, 'Entrepreneuriat et Gestion de PME', 'entrepreneuriat-et-gestion-de-pme', 'Aujourd’hui, l’envie de créer sa propre entreprise, d’être son propre patron et d’aller au bout de son projet semblent être des envies fortes chez les tous', 'Aujourd’hui, l’envie de créer sa propre entreprise, d’être son propre patron et d’aller au bout de son projet semblent être des envies fortes chez les tous. Chacun d\'entre nous dispose des qualités nécessaires pour se lancer et réussir. Partir de zéro ce n\'est simple pour personne. Un tempérament persévérant est une condition sine qua non pour se donner les moyens de ses ambitions. Sans l\'enthousiasme et la confiance en son projet aucun objectif n\'est atteignable. Pour ceux qui ont l’envie de se lancer mais se posent des questions comme', '2023-09-10 20:10:23', '2024-08-27 13:19:17'),
(146, NULL, 'developper and webmaster and mobile', 'developper-and-webmaster-and-mobile', 'developper and webmaster and mobile app reacts', 'dddddddddddddddddhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhyyyyyyyyyyyyyy', '2023-09-10 16:00:49', '2024-08-27 13:19:17'),
(127, 'http://localhost/cours_PHP_poo/blogtext1/appartements/image-10.jpg', 'Le confort de changer à sa source', 'molestiae-dolorum-nemo-minima-et-iusto-aliquid-asperiores-ad', 'Molestiae cumque nostrum sit numquam quia voluptas molestias dolorem. Voluptatem delectus praesentium iure sed praesentium dolorum aut. Omnis corporis sint dolores sunt. Laborum ipsa dolor voluptatem incidunt.', '<p>Ipsa sapiente earum ea quasi et. Sit autem accusamus quia beatae cupiditate. Atque aut voluptatem enim ut et ratione esse.</p><p>Nihil illum et mollitia repellendus earum ipsam aut. Eos aut voluptatem quasi quibusdam commodi. Nihil voluptatem placeat fuga minus et. Quia impedit incidunt accusamus magni. Natus tempore consequuntur ea enim totam odio.</p><p>Sed exercitationem omnis recusandae corporis est. Reiciendis et quod vitae quod.</p><p>Tempora animi illum sed quia a. Iste exercitationem voluptatum nobis. Sequi modi dolores iure iusto. Veniam aut aut tempore nobis voluptas recusandae eligendi. Dolores qui et animi libero quisquam dolore.</p><p>Accusamus quam corrupti et tenetur qui pariatur. Repellat et delectus voluptates veniam facilis saepe. Qui aut aut soluta quia ut in numquam.</p>', '2019-03-17 01:49:15', '2024-08-27 13:19:17'),
(128, 'http://localhost/cours_PHP_poo/blogtext1/appartements/image-11.jpg', 'Le droit de concrétiser vos projets plus facilement', 'saepe-iusto-tenetur-dolor-dicta-natus-et-repellendus', 'Vel est cum tempore aut provident quae explicabo animi. Est maiores ad quod aspernatur officiis velit est quas. At dolorem unde rerum. Voluptatem cupiditate quia necessitatibus non eum.', '<p>Est ea est tenetur ut voluptas facere cum consequatur. Impedit error explicabo qui officiis ratione tempora. Qui sint non vero in temporibus.</p><p>Et adipisci itaque sint odit animi perspiciatis ex cumque. Et quas atque culpa qui excepturi nobis. Consectetur ipsum sunt aliquid incidunt laudantium aspernatur non.</p><p>Iusto in nam et voluptas. Totam adipisci doloremque quis dolorem quae adipisci.</p><p>Id eos excepturi non molestiae sunt amet. Et optio itaque dolore autem. Beatae tenetur voluptatum laudantium qui ea autem. Eum earum non ratione.</p><p>Sint quas vitae earum. Porro omnis est est nostrum. Veniam cupiditate accusantium qui velit et quas. Consequatur enim sit quia molestiae saepe repudiandae.</p>', '2019-01-24 22:40:26', '2024-08-27 13:19:17'),
(129, 'http://localhost/cours_PHP_poo/blogtext1/appartements/image-12.jpg', 'La simplicité d\'évoluer autrement', 'inventore-libero-aut-modi-quae-vero-natus-impedit-nisi', 'Laborum optio corrupti id neque voluptatibus quia. Eligendi est quis quia eos ullam quis perferendis. Eligendi commodi incidunt non quo distinctio dicta. Et voluptatem est sint est vel doloremque. Quae nam animi sit sit illum vel quasi.', '<p>Qui aliquam eligendi aspernatur et quas et culpa. Quia porro deserunt non est. Minus est iste veritatis.</p><p>Tempora expedita non aut et impedit minima eos. Molestiae rerum explicabo aliquam nisi nihil recusandae tempore. Dolor ipsam voluptatem vero consequuntur doloremque id.</p><p>Tempore sit est ducimus ut libero. Aperiam aperiam praesentium illo error. Minima nemo distinctio atque voluptas fugiat ullam nihil. Deleniti natus quia laboriosam nemo aliquid tenetur.</p><p>Itaque omnis quos est magni consequatur. Dignissimos qui architecto excepturi molestiae praesentium ea sed. Corporis ab vitae aut id saepe.</p><p>Inventore dolor vitae molestias ut. Veritatis quia ratione delectus ab. Praesentium quos saepe harum aut. Maiores aliquid quia est delectus.</p>', '2019-03-21 13:10:34', '2024-08-27 13:19:17'),
(156, NULL, 'Qualité, Hygiène, Sécurité, Environnement (QHSE)', 'qualité,-hygiène,-sécurité,-environnement-(qhse)', 'La Qualité, l\'Hygiène, la Sécurité et l\'Environnement sont des sujets à ne pas prendre à la légère et des impératifs pour toutes les entreprises.', 'La Qualité, l\'Hygiène, la Sécurité et l\'Environnement sont des sujets à ne pas prendre à la légère et des impératifs pour toutes les entreprises. Les formations QHSE couvrent des domaines tels que l\'hygiène, la sécurité alimentaire, les premiers secours, la sécurité incendie, la sécurité sur le lieu de travail...', '2023-09-10 20:10:51', '2024-08-27 13:19:17'),
(157, NULL, 'Expertise Comptabilité (CPA)', 'expertise-comptabilité-(cpa)', 'La certification CPA (Certified Public Accountant) est le diplôme nécessaire à l\'exercice de la profession d\'expert-comptable.', 'La certification CPA (Certified Public Accountant) est le diplôme nécessaire à l\'exercice de la profession d\'expert-comptable. Cette Certification dema', '2023-09-10 20:12:05', '2024-08-27 13:19:17'),
(132, 'http://localhost/cours_PHP_poo/blogtext1/appartements/image-14.jpg', 'Le plaisir de concrétiser vos projets à sa source', 'dolorem-sequi-et-voluptas-odit-reiciendis-rem-facilis', 'Accusantium at occaecati quas. Qui corporis earum quisquam sit fuga. Perspiciatis mollitia est ea veritatis exercitationem officia libero. Corrupti ipsum ipsum quam necessitatibus voluptatum sit et.', '<p>Eum aliquam non consequatur deleniti quidem magnam numquam. Ratione exercitationem qui ex doloribus harum voluptates. Dolores exercitationem provident voluptatem qui nihil cupiditate doloremque. Sit nobis cupiditate non neque.</p><p>Quasi soluta a impedit sequi. Quis eos aperiam et autem velit laborum molestiae ratione.</p><p>Aut harum vel libero rem eligendi error. Impedit beatae qui qui et nobis. Architecto illo consequatur distinctio atque quia et beatae fugit.</p><p>Tempora optio sit explicabo molestiae eum corporis aut. Doloribus est ipsum molestiae. Rem dolores molestiae tempore voluptatem.</p><p>Doloribus dolores repellendus quia vel veniam iusto. Voluptatem asperiores ducimus voluptas. Aut nam repellat necessitatibus pariatur est qui quis.</p>', '2019-02-12 00:25:59', '2024-08-27 13:19:17'),
(133, 'http://localhost/cours_PHP_poo/blogtext1/appartements/image-15.jpg', 'La sécurité de louer de manière sûre', 'occaecati-nostrum-fugit-quas-ad', 'Est repellendus et quam repellendus et sed tenetur eaque. Similique sint a sint et quibusdam. A repellendus excepturi quisquam nostrum aut atque. Dolores nostrum nam sapiente perspiciatis vel ut.', '<p>Perspiciatis corrupti et qui quis eligendi a ad. Est ut eos porro tempora illum. Sequi et velit velit dolorum adipisci nulla dolore.</p><p>Sit earum ducimus dicta iusto. Et in eius eius quia. Maiores nesciunt atque molestias dicta. Sequi corporis ut dolorum explicabo vel.</p><p>Nostrum blanditiis iste iste impedit voluptatem sit. Consequatur iure eos pariatur omnis consequatur illo. Quas sed eius qui est voluptatum et. Magni quas et et occaecati enim laudantium.</p><p>Eos fugit voluptatem magni vel in qui voluptatem. Officia repudiandae eligendi quia dolores. Dolores adipisci voluptas sit. Unde nobis aut ex atque tempore eos tenetur.</p><p>Aut debitis qui at quo rerum. Optio enim nobis quo quasi ut quaerat. Suscipit et voluptatum non magni a voluptatem architecto. Vitae et sed eos sunt quasi dolore non. Soluta minus dolor nisi quos recusandae.</p>', '2019-04-27 12:38:02', '2024-08-27 13:19:17'),
(134, 'http://localhost/cours_PHP_poo/cours-php-poo-bolg/appartements/image-16.jpg', 'Le droit d\'atteindre vos buts plus facilement', 'ea-a-aut-excepturi-omnis-mollitia-non-doloribus', 'Dolore harum assumenda harum qui laudantium non sint dolor. Est odit iusto et sint aliquam reprehenderit. Qui sed velit nisi cumque. Qui non modi error quibusdam reiciendis.', '<p>Exercitationem labore officia quia ut quam nobis quasi odio. Consectetur aut sint occaecati cumque quae quia ut. Eligendi dolor officiis velit facere voluptatem. Magni ullam et quisquam exercitationem. Qui non aliquam mollitia quod.</p><p>Eum nihil aliquid officiis dolor. Quis iste voluptatem nihil ullam ullam totam. Quis vel impedit ab.</p><p>Non et odit eveniet fuga sit. Sit est dolorem consectetur veniam in voluptatem praesentium. Ut suscipit ex ullam et.</p><p>Incidunt cumque quo ullam non. Eos et accusamus sed. Laborum molestiae distinctio architecto qui est qui minima reprehenderit. Est doloremque enim delectus natus voluptatum ad.</p><p>Necessitatibus tempore similique eveniet minus. Error laborum mollitia sequi commodi. Doloremque et qui et optio incidunt.</p>', '2019-01-08 04:37:40', '2024-08-27 13:19:17'),
(135, 'http://localhost/cours_PHP_poo/cours-php-poo-bolg/appartements/image-10.jpg', 'La simplicité de changer plus rapidement', 'fugit-repudiandae-ad-ex-odio-voluptatem', 'Sit qui itaque maxime quibusdam. Saepe aliquid exercitationem suscipit blanditiis sunt consequatur voluptatum. Velit repellat autem quos ut odio qui. Adipisci accusantium et assumenda.', '<p>Doloremque voluptatem cumque odit id. Consequuntur ipsum et occaecati culpa ipsam consectetur. Facere et saepe et omnis amet. Laudantium ipsa quia voluptate aut fuga iure qui.</p><p>Nulla molestiae quae voluptas neque. Dolor dolor nihil dolorem officia. Beatae qui nisi voluptas iste consequuntur libero.</p><p>Sed ut est quibusdam facilis. Dolore corporis recusandae dolores odit. Ipsam assumenda repellendus totam aliquid aliquam ullam laudantium.</p><p>Numquam a a quidem illum. Voluptatum cum aut animi distinctio et voluptatum. Aliquid quasi earum rerum quibusdam aut dolores accusantium. Et mollitia quis ratione et quia rem.</p><p>Recusandae amet eius facere at temporibus asperiores quasi autem. Necessitatibus aut culpa dolores rerum repellendus quam dolore. Aut est asperiores id qui consequatur ea nostrum. Eum expedita distinctio consequatur iure voluptas.</p>', '2019-02-24 09:07:06', '2024-08-27 13:19:17'),
(138, 'http://localhost/cours_PHP_poo/cours-php-poo-bolg/appartements/image-13.jpg', 'La simplicité d\'atteindre vos buts en toute tranquilité', 'laudantium-quisquam-dolores-sit-eaque-qui-quam-culpa', 'Atque exercitationem tempora repellat non. Omnis delectus incidunt vitae labore. Quis ut soluta voluptatem nulla quia aut molestias illo. Aut dolor inventore doloribus suscipit aperiam. Perferendis dignissimos maiores mollitia illo.', '<p>Necessitatibus cumque molestiae odio. Quasi nihil minus beatae quia mollitia. Atque a officia fugiat aliquam. Voluptas aut consequatur repellat ut nihil quis. Quo nostrum architecto sed rem.</p><p>Quo est est sequi in accusamus asperiores. Tenetur dolorum deserunt amet quam cum. Et quod voluptas cum atque dicta aut aut. Et similique sunt placeat rem esse. Alias minus iure excepturi qui excepturi.</p><p>Vero ut natus quam fuga asperiores. Earum quia voluptates ullam. Aut cumque est enim quibusdam beatae quibusdam.</p><p>Dolor non recusandae optio quis culpa voluptas modi neque. Quia magnam ut quis eos illo magni exercitationem. Facere neque quaerat a quos exercitationem. Velit esse itaque est repudiandae ut.</p><p>Rerum temporibus distinctio et atque. Minima accusantium et quam officia qui. Rerum voluptas fugit deleniti assumenda voluptatibus accusantium quae. Praesentium ut quo aut velit.</p>', '2019-04-09 21:40:11', '2024-08-27 13:19:17'),
(139, 'http://localhost/cours_PHP_poo/cours-php-poo-bolg/appartements/image-14.jpg', 'L\'art d\'évoluer à la pointe', 'eveniet-est-qui-accusantium-ut', 'Aut soluta soluta ut asperiores. Eum saepe mollitia enim repellendus eos soluta. Est repudiandae voluptas ex. Molestiae nemo temporibus ut ea vel.', '<p>Aut nesciunt temporibus corrupti eius voluptatem velit. Rerum recusandae soluta necessitatibus. Velit ad aspernatur consequatur unde voluptatem minus.</p><p>Impedit repellendus nisi doloribus ad pariatur labore voluptas. Doloremque mollitia adipisci dicta atque omnis optio necessitatibus. Expedita rerum earum dolorum dolorum doloremque at velit.</p><p>Rerum dolores ipsam labore ipsa. Magni officia veritatis incidunt ullam minima. Error et dolorum fugiat architecto quo cumque dolorem vel.</p><p>Recusandae tenetur tempore consequatur non modi ut sit. Quia neque nobis quis autem et nostrum et debitis. Fugiat culpa aliquid temporibus accusamus voluptatem. Saepe aut aliquid iusto laborum quos eos perferendis.</p><p>Laudantium ipsa architecto voluptatibus qui pariatur sit corrupti. Voluptas voluptatem qui eveniet dolor. Amet omnis vel aut id quia.</p>', '2019-04-15 04:44:31', '2024-08-27 13:19:17'),
(140, 'http://localhost/cours_PHP_poo/cours-php-poo-bolg/appartements/image-15.jpg', 'La possibilité d\'avancer plus facilement', 'placeat-qui-quod-dolor-pariatur-eius-provident-corporis', 'Praesentium dolores rerum officiis culpa alias. Doloribus consequatur in ipsum perferendis. Voluptatem dolores aut consequatur corporis dolores vel quod nemo. Quis quis id ratione. Id dolores ut consequatur quam.', '<p>Molestias voluptatem optio et laborum enim. Provident doloribus similique esse officia at sequi odio. Est et ut ea et sunt accusantium.</p><p>Qui assumenda nam minima totam debitis. Architecto nobis sit tenetur aliquam velit rerum voluptas quisquam. Voluptates aut qui placeat optio.</p><p>Maiores soluta odit exercitationem qui. Quia perferendis ipsam repellat est iste dolores aperiam quis. Voluptatem quos aliquid dolorum pariatur repellendus suscipit. Quas sit est quod quos non.</p><p>Qui quod in qui commodi voluptates suscipit. Officia qui vitae neque distinctio provident molestias fugiat corrupti. Quam deleniti vero rerum qui corporis et similique.</p><p>Quia officiis beatae et voluptatem soluta ut. Aut incidunt et veritatis tempore suscipit. Quam expedita excepturi aut culpa aut ab. Totam maxime voluptates beatae aut. Qui quam quisquam nostrum nihil beatae.</p>', '2019-04-14 14:32:06', '2024-08-27 13:19:17'),
(141, 'http://localhost/cours_PHP_poo/cours-php-poo-bolg/appartements/image-16.jpg', 'L\'assurance de louer plus facilement', 'quaerat-molestiae-dignissimos-quaerat-deserunt', 'Sit ullam sequi et similique cum provident molestias dolores. Ea et et consequatur rerum qui. Aut et architecto dolor hic. Minima consequatur eum qui pariatur blanditiis.', '<p>Voluptates quis magni veniam autem aut. Velit est minus illum totam. Eum qui voluptas quidem excepturi neque vero doloribus. Totam consequatur eligendi nisi eaque voluptatem alias.</p><p>In facilis consequatur in beatae iusto est quasi ipsum. Culpa quia rerum aliquam. Sapiente ea consequatur illum.</p><p>Laborum accusamus vel tempore ut modi facere. Veniam quisquam aut voluptatibus reprehenderit porro. Veritatis quasi hic aut saepe corporis vitae.</p><p>Incidunt repellat recusandae aliquam. Qui ut tenetur totam ratione. Autem velit et molestias consequatur provident. Sit necessitatibus quo qui cum vel.</p><p>Suscipit sapiente maiores illum debitis qui quos reiciendis. Similique est facere quia consequuntur eos ipsam. Voluptatem corrupti debitis quia soluta voluptatem nesciunt.</p>', '2019-05-21 21:49:25', '2024-08-27 13:19:17'),
(158, NULL, 'ASSOCIATION OF CHARTERED CERTIFIED ACCOUNTANTS (ACCA)', 'association-of-chartered-certified-accountants-(acca)', 'Le programme ACCA comprend 14 Unités d’Enseignement (dispensés en anglais) et des cours complémentaires (dispensés en frança', 'Le programme ACCA comprend 14 Unités d’Enseignement (dispensés en anglais) et des cours complémentaires (dispensés en français) visant à renforcer la capacité de l’étudiant tant au niveau du bilinguisme qu’au niveau de la performance sur le terrain.', '2023-09-10 20:12:28', '2024-08-27 13:19:17'),
(159, NULL, 'Webmaster', 'webmaster', 'Touche-à-tout du web, le webmaster fait vivre son site en s’intéressant à la technique, au graphisme et au contenu. Ses objets fétiches ? Des écrans en tous genres, car il est aussi là pour s’assurer d’un rendu parfait sur tous les formats. On ', 'Touche-à-tout du web, le webmaster fait vivre son site en s’intéressant à la technique, au graphisme et au contenu. Ses objets fétiches ? Des écrans en tous genres, car il est aussi là pour s’assurer d’un rendu parfait sur tous les formats. On l’appelle aussi Webmestre – Administrateur (trice) de site web – Animateur (trice) web – Webmaster éditorial', '2023-09-10 20:13:00', '2024-08-27 13:19:17'),
(160, NULL, 'Développement d’application Web et mobile', 'développement-d’application-web-et-mobile', 'Le développeur web mobile est le chef d’orchestre des applications mobiles. Il conçoit des programmes informatiques, tel un développeur web, à la différence qu’il se spécialise dans le domaine mobile et nomade (mobile, smartphone, tablettes). ', 'Le développeur web mobile est le chef d’orchestre des applications mobiles. Il conçoit des programmes informatiques, tel un développeur web, à la différence qu’il se spécialise dans le domaine mobile et nomade (mobile, smartphone, tablettes). Découvrez le salaire junior moyen d’un développer web mobile, les compétences requises, des exemples de formations…', '2023-09-10 20:13:23', '2024-08-27 13:19:17'),
(161, NULL, 'COMPTABILITÉ INFORMATISÉE DE GESTION', 'comptabilitÉ-informatisÉe-de-gestion', 'COMPTABILITÉ INFORMATISÉE DE GESTION : est un ensemble des systèmes qui contribuent à la production des écritures comptable permettant de répertorier tous les mouvements de flux ,de dépenses et les recettes d’une entreprise. Non seulement il a révolutionné les méthodes traditionnelles sur papier de la comptabilité , mais elle a aussi crée de nouveaux type d’app', 'COMPTABILITÉ INFORMATISÉE DE GESTION : est un ensemble des systèmes qui contribuent à la production des écritures comptable permettant de répertorier tous les mouvements de flux ,de dépenses et les recettes d’une entreprise. Non seulement il a révolutionné les méthodes traditionnelles sur papier de la comptabilité , mais elle a aussi crée de nouveaux type d’application de comptabilité pour les entreprises.\r\n\r\n', '2023-09-10 20:13:59', '2024-08-27 13:19:17'),
(162, NULL, 'Secrétariat de Direction', 'secrétariat-de-direction', 'Dans une entreprise, un cabinet ou une administration, le secrétariat de direction est souvent un post destiné aux femmes. L’assistante est une employée assez polyvalente au sein de l’organisation puisqu’elle jongle entre l’accueil et les tâches administratives. Sa polyvalence et son efficacité sont deux ', 'Dans une entreprise, un cabinet ou une administration, le secrétariat de direction est souvent un post destiné aux femmes. L’assistante est une employée assez polyvalente au sein de l’organisation puisqu’elle jongle entre l’accueil et les tâches administratives. Sa polyvalence et son efficacité sont deux éléments primordiaux dans l’accomplissement de ses missions.', '2023-09-10 20:14:30', '2024-08-27 13:19:17'),
(163, NULL, 'Graphisme de production/infographie', 'graphisme-de-production/infographie', 'Le champ d’application de ce métier comprend entre autre la création ou l’optimisation des sites Internet ou des produits multimédia destinés au grand public. La personne qui exerce le métier de graphiste peut aussi être responsable de la création au niveau visuel de divers types de documents, par exemple, ', 'Le champ d’application de ce métier comprend entre autre la création ou l’optimisation des sites Internet ou des produits multimédia destinés au grand public. La personne qui exerce le métier de graphiste peut aussi être responsable de la création au niveau visuel de divers types de documents, par exemple, journaux, livres et revues, tout à l’aide de l’outil informatique.', '2023-09-10 20:15:05', '2024-08-27 13:19:17'),
(164, NULL, 'Secrétariat Comptable ok', 'secrétariat-comptable-ok', 'La secrétaire comptable cumule plusieurs fonction qui va de la pratique tu secrétariat à savoir la reception des clients, la gestion des clients et des fournisseurs et toute la matrise de la saisie administrative et bureautique. Comme son titre l’indique, elle assiste le comptable dans l’élaboration des documents tels que les fiches de paie et du personnel, s’occcupe des r', 'La secrétaire comptable cumule plusieurs fonction qui va de la pratique tu secrétariat à savoir la reception des clients, la gestion des clients et des fournisseurs et toute la matrise de la saisie administrative et bureautique. Comme son titre l’indique, elle assiste le comptable dans l’élaboration des documents tels que les fiches de paie et du personnel, s’occcupe des rapprochements bancaires et s’assure que les déclarations fiscales sont faites dans les délais.', '2023-09-10 20:15:31', '2024-08-27 13:19:17'),
(166, NULL, 'ddd-Software Engineer ou Ingénieur Logiciel', 'ddd-software-engineer-ou-ingénieur-logiciel', 'Le génie logiciel, aussi appelé ingénierie logicielle ou ingénierie informatique, est le processus de conception, construction, test, déploiement et maintenance de produits logiciels, de systèmes informatiques complexes et autres outils1.', 'Un Software Engineer est un ingénieur spécialisé dans la création de logiciels. Découvrez tout ce que vous devez savoir sur ce métier, et sur le rôle d’ingénieur DevOps !&lt;br/&gt;\r\nChaque jour, comme des millions de personnes, vous consultez des pages web, vous utilisez des applications mobiles et des logiciels sur PC.&lt;br/&gt;\r\n\r\nTous ces outils modernes occupent une place centrale dans nos sociétés modernes. Ils reposent sur des milliers de lignes de code écrites par des professionnels : les ingénieurs logiciels ou Software Engineers.&lt;br/&gt;\r\n\r\nQu’est-ce que l’ingénierie logicielle ?\r\nLe Software Engineering est le processus de conception, construction, test, déploiement et maintenance de produits logiciels, de systèmes informatiques complexes et autres outils.&lt;br/&gt;\r\n\r\nPour y parvenir, les Software Engineers utilisent des méthodes d’ingénierie, des principes informatiques et des langages de programmation.&lt;br/&gt;\r\n\r\nIls peuvent écrire du code pour des systèmes d’exploitation, des réseaux, des applications d’entreprise, des sites web ou encore des jeux vidéo.&lt;br/&gt;\r\n\r\nLe but est de produire des solutions répondant aux besoins des entreprises pour lesquelles ils travaillent et des utilisateurs finaux.&lt;br/&gt;\r\n\r\nQu’est-ce qu’un Software Engineer ?\r\nAu quotidien, l’ingénieur logiciel accomplit plusieurs tâches. Il analyse d’abord les besoins et exigences des utilisateurs, et cherche à comprendre la façon dont ils utilisent le logiciel.\r\n\r\nIl organise ces besoins en différentes catégories, afin d’implémenter les suggestions et les retours des utilisateurs.&lt;br/&gt;\r\n\r\nÀ l’aide de langages de programmation, il conçoit et construit les applications et systèmes. Son but est de créer des logiciels simples d’utilisation, accessibles, fiables, efficaces et sécurisés.&lt;br/&gt;\r\n\r\nLe rôle du Software Engineer est aussi de tester, déboguer, maintenir les logiciels existants et de résoudre leurs problèmes.\r\n\r\nIl se charge aussi d’optimiser le code pour maximiser les performances, la qualité, la vitesse et l’évolutivité.\r\n\r\nEn parallèle, cet expert crée aussi la documentation et les spécifications techniques retraçant le processus complet afin de partager ses découvertes et solutions avec les autres membres de l’équipe.&lt;br/&gt;\r\n\r\nEnfin, il consulte les responsables des différents départements et présente les mises à jour et nouvelles fonctionnalités aux dirigeants et clients de l’entreprise.&lt;br/&gt;\r\n\r\nToutefois, au-delà de ces responsabilités générales, les missions d’un Software Engineer dépendent de sa spécialisation.', '2024-05-25 21:36:04', '2024-08-28 16:25:43');

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `created_at` datetime NOT NULL,
  `article_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `content`, `created_at`, `article_id`, `user_id`) VALUES
(462, 'test prof waffo', '2024-08-27 15:07:16', 151, 37),
(463, 'test prof', '2024-08-27 17:43:43', 151, 37),
(464, 'test user', '2024-08-27 18:05:24', 151, 38),
(465, 'fff', '2024-08-27 19:11:36', 151, 38),
(466, 'rostand', '2024-08-27 19:11:54', 151, 38),
(467, 'bok', '2024-08-27 19:13:05', 166, 38),
(468, 'boss\r\nlele', '2024-08-27 19:16:48', 166, 38),
(469, 'ffff', '2024-08-27 20:34:16', 232, 37),
(470, 'ffggghhh', '2024-08-27 20:34:43', 232, 36),
(471, 'test prof12', '2024-08-28 16:08:21', 232, 36),
(472, 'waffo', '2024-08-28 16:09:21', 232, 39),
(473, 'test', '2024-08-28 16:17:47', 166, 40),
(474, 'test', '2024-08-28 16:20:36', 166, 1),
(475, 'ooo', '2024-08-28 16:25:09', 166, 1);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','default') NOT NULL DEFAULT 'default',
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`, `created`, `updated`) VALUES
(1, 'lele', 'lele@gmail.com', '$2y$10$0pE7y5v3vhfMjEYWQjPiM.9llMpldoqNx5PkSiMQwnd7ap4Tc4Y9a', 'admin', '2024-08-28 15:20:14', '2024-08-28 15:21:08');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_ARTICLES` (`article_id`),
  ADD KEY `FK_USERS` (`user_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=476;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
