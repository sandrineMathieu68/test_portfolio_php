-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           5.6.12-log - MySQL Community Server (GPL)
-- Serveur OS:                   Win64
-- HeidiSQL Version:             8.1.0.4545
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Export de la structure de table tuto. categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Export de données de la table tuto.categories: 3 rows
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `name`, `slug`) VALUES
	(7, 'Wordpress', 'wordpress'),
	(6, 'CakePHP', 'cakephp'),
	(8, 'Photoshop', 'photoshop');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;


-- Export de la structure de table tuto. images
CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `work_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `work_id` (`work_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- Export de données de la table tuto.images: 3 rows
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` (`id`, `name`, `work_id`) VALUES
	(13, '13.jpg', 3),
	(15, '15.jpg', 1),
	(16, '16.jpg', 1);
/*!40000 ALTER TABLE `images` ENABLE KEYS */;


-- Export de la structure de table tuto. users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Export de données de la table tuto.users: 1 rows
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `username`, `password`) VALUES
	(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;


-- Export de la structure de table tuto. works
CREATE TABLE IF NOT EXISTS `works` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `category_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `image_id` (`image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Export de données de la table tuto.works: 2 rows
/*!40000 ALTER TABLE `works` DISABLE KEYS */;
INSERT INTO `works` (`id`, `name`, `slug`, `content`, `category_id`, `image_id`) VALUES
	(1, 'Portfolio', 'portfolio', '<p><span style="font-size: 11px;">Yes, if you make it look like an electrical fire. When you do things right, people won\'t be sure you\'ve done anything at all. Shinier than yours, meatbag. Does anybody else feel jealous and aroused and worried?</span></p>\r\n<h2>A Flight to Remember</h2>\r\n<p>You\'re going to do his laundry? And from now on you\'re all named Bender Jr. I\'m a thing.</p>\r\n<ul>\r\n<li>Take me to your leader!</li>\r\n<li>I\'ll get my kit!</li>\r\n<li>I didn\'t ask for a completely reasonable excuse! I asked you to get busy!</li>\r\n<li>And yet you haven\'t said what I told you to say! How can any of us trust you?</li>\r\n<li>I didn\'t ask for a completely reasonable excuse! I asked you to get busy!</li>\r\n</ul>\r\n<h3>The Sting</h3>\r\n<p>Good news, everyone! There\'s a report on TV with some very bad news! Fetal stemcells, aren\'t those controversial? And when we woke up, we had these bodies. A true inspiration for the children.</p>\r\n<h4>Less Than Hero</h4>\r\n<p>Have you ever tried just turning off the TV, sitting down with your children, and hitting them? I\'m Santa Claus! No, I\'m Santa Claus!</p>\r\n<ol>\r\n<li>But I know you in the future. I cleaned your poop.</li>\r\n<li>If rubbin\' frozen dirt in your crotch is wrong, hey I don\'t wanna be right.</li>\r\n<li>Son, as your lawyer, I declare y\'all are in a 12-piece bucket o\' trouble. But I done struck you a deal: Five hours of community service cleanin\' up that ol\' mess you caused.</li>\r\n</ol>\r\n<h5>A Clone of My Own</h5>\r\n<p>Anyone who laughs is a communist! I\'m Santa Claus! And then the battle\'s not so bad? Soothe us with sweet lies. Well I\'da done better, but it\'s plum hard pleading a case while awaiting trial for that there incompetence. Michelle, I don\'t regret this, but I both rue and lament it.</p>', 8, 16),
	(3, 'Nouvelle rÃ©alisation', 'nouvelle-realisation', '', 6, 13);
/*!40000 ALTER TABLE `works` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
