-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 03-Abr-2017 Ã s 12:49
-- VersÃ£o do servidor: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `chronit_rally`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `competition`
--

CREATE TABLE IF NOT EXISTS `competition` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(128) NOT NULL,
  `title` varchar(128) NOT NULL,
  `description` text,
  `status` tinyint(3) unsigned NOT NULL,
  `time_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `time_update` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `competition`
--

INSERT INTO `competition` (`id`, `identifier`, `title`, `description`, `status`, `time_create`, `time_update`) VALUES
  (1, 'trcam', 'TrofÃ©u de Ralis do Canal AlÃ©m Mar dos AÃ§ores', '', 5, '2015-06-30 19:20:41', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `competition_x_events`
--

CREATE TABLE IF NOT EXISTS `competition_x_events` (
  `id` int(10) unsigned NOT NULL,
  `id_event` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`,`id_event`),
  KEY `competition_x_events_fk2` (`id_event`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `competition_x_events`
--

INSERT INTO `competition_x_events` (`id`, `id_event`) VALUES
  (1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `country`
--

CREATE TABLE IF NOT EXISTS `country` (
  `id` int(10) unsigned NOT NULL,
  `identifier` varchar(64) NOT NULL,
  `iso2` char(2) NOT NULL,
  `iso3` char(3) NOT NULL,
  `title` varchar(128) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `time_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `time_update` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_ux1` (`identifier`) USING HASH,
  UNIQUE KEY `country_ux2` (`iso2`) USING HASH,
  UNIQUE KEY `country_ux3` (`iso3`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `country`
--

INSERT INTO `country` (`id`, `identifier`, `iso2`, `iso3`, `title`, `status`, `time_create`, `time_update`) VALUES
  (1, 'afghanistan', 'AF', 'AFG', 'Afghanistan', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:57'),
  (2, 'aland-islands', 'AX', 'ALA', 'Aland Islands', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:57'),
  (3, 'albania', 'AL', 'ALB', 'Albania', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:57'),
  (4, 'algeria', 'DZ', 'DZA', 'Algeria', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:57'),
  (5, 'american-samoa', 'AS', 'ASM', 'American Samoa', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:57'),
  (6, 'andorra', 'AD', 'AND', 'Andorra', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:57'),
  (7, 'angola', 'AO', 'AGO', 'Angola', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:57'),
  (8, 'anguilla', 'AI', 'AIA', 'Anguilla', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:57'),
  (9, 'antarctica', 'AQ', 'ATA', 'Antarctica', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:57'),
  (10, 'antigua-and-barbuda', 'AG', 'ATG', 'Antigua and Barbuda', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:57'),
  (11, 'argentina', 'AR', 'ARG', 'Argentina', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:57'),
  (12, 'armenia', 'AM', 'ARM', 'Armenia', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:57'),
  (13, 'aruba', 'AW', 'ABW', 'Aruba', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:57'),
  (14, 'australia', 'AU', 'AUS', 'Australia', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:57'),
  (15, 'austria', 'AT', 'AUT', 'Austria', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:57'),
  (16, 'azerbaijan', 'AZ', 'AZE', 'Azerbaijan', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:57'),
  (17, 'bahamas', 'BS', 'BHS', 'Bahamas', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:57'),
  (18, 'bahrain', 'BH', 'BHR', 'Bahrain', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:57'),
  (19, 'bangladesh', 'BD', 'BGD', 'Bangladesh', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:57'),
  (20, 'barbados', 'BB', 'BRB', 'Barbados', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:57'),
  (21, 'belarus', 'BY', 'BLR', 'Belarus', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:58'),
  (22, 'belgium', 'BE', 'BEL', 'Belgium', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:58'),
  (23, 'belize', 'BZ', 'BLZ', 'Belize', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:58'),
  (24, 'benin', 'BJ', 'BEN', 'Benin', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:58'),
  (25, 'bermuda', 'BM', 'BMU', 'Bermuda', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:58'),
  (26, 'bhutan', 'BT', 'BTN', 'Bhutan', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:58'),
  (27, 'bolivia', 'BO', 'BOL', 'Bolivia', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:58'),
  (28, 'bonaire-sint-eustatius-and-saba', 'BQ', 'BES', 'Bonaire, Sint Eustatius and Saba', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:58'),
  (29, 'bosnia-and-herzegovina', 'BA', 'BIH', 'Bosnia and Herzegovina', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:58'),
  (30, 'botswana', 'BW', 'BWA', 'Botswana', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:58'),
  (31, 'bouvet-island', 'BV', 'BVT', 'Bouvet Island', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:58'),
  (32, 'brazil', 'BR', 'BRA', 'Brazil', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:58'),
  (33, 'british-indian-ocean-territory', 'IO', 'IOT', 'British Indian Ocean Territory', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:58'),
  (34, 'brunei', 'BN', 'BRN', 'Brunei', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:58'),
  (35, 'bulgaria', 'BG', 'BGR', 'Bulgaria', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:58'),
  (36, 'burkina-faso', 'BF', 'BFA', 'Burkina Faso', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:58'),
  (37, 'burundi', 'BI', 'BDI', 'Burundi', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:58'),
  (38, 'cambodia', 'KH', 'KHM', 'Cambodia', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:58'),
  (39, 'cameroon', 'CM', 'CMR', 'Cameroon', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:58'),
  (40, 'canada', 'CA', 'CAN', 'Canada', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:58'),
  (41, 'cape-verde', 'CV', 'CPV', 'Cape Verde', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:59'),
  (42, 'cayman-islands', 'KY', 'CYM', 'Cayman Islands', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:59'),
  (43, 'central-african-republic', 'CF', 'CAF', 'Central African Republic', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:59'),
  (44, 'chad', 'TD', 'TCD', 'Chad', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:59'),
  (45, 'chile', 'CL', 'CHL', 'Chile', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:59'),
  (46, 'china', 'CN', 'CHN', 'China', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:59'),
  (47, 'christmas-island', 'CX', 'CXR', 'Christmas Island', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:59'),
  (48, 'cocos-keeling-islands', 'CC', 'CCK', 'Cocos (Keeling) Islands', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:59'),
  (49, 'colombia', 'CO', 'COL', 'Colombia', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:59'),
  (50, 'comoros', 'KM', 'COM', 'Comoros', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:59'),
  (51, 'congo', 'CG', 'COG', 'Congo', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:59'),
  (52, 'cook-islands', 'CK', 'COK', 'Cook Islands', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:59'),
  (53, 'costa-rica', 'CR', 'CRI', 'Costa Rica', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:59'),
  (54, 'cote-d-ivoire-ivory-coast', 'CI', 'CIV', 'Cote d''ivoire (Ivory Coast)', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:59'),
  (55, 'croatia', 'HR', 'HRV', 'Croatia', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:59'),
  (56, 'cuba', 'CU', 'CUB', 'Cuba', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:59'),
  (57, 'curacao', 'CW', 'CUW', 'Curacao', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:59'),
  (58, 'cyprus', 'CY', 'CYP', 'Cyprus', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:59'),
  (59, 'czech-republic', 'CZ', 'CZE', 'Czech Republic', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:59'),
  (60, 'democratic-republic-of-the-congo', 'CD', 'COD', 'Democratic Republic of the Congo', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:59'),
  (61, 'denmark', 'DK', 'DNK', 'Denmark', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:59'),
  (62, 'djibouti', 'DJ', 'DJI', 'Djibouti', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:59'),
  (63, 'dominica', 'DM', 'DMA', 'Dominica', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:59'),
  (64, 'dominican-republic', 'DO', 'DOM', 'Dominican Republic', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:59'),
  (65, 'ecuador', 'EC', 'ECU', 'Ecuador', 5, '2015-06-22 22:26:51', '2015-06-22 22:30:59'),
  (66, 'egypt', 'EG', 'EGY', 'Egypt', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:00'),
  (67, 'el-salvador', 'SV', 'SLV', 'El Salvador', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:00'),
  (68, 'equatorial-guinea', 'GQ', 'GNQ', 'Equatorial Guinea', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:00'),
  (69, 'eritrea', 'ER', 'ERI', 'Eritrea', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:00'),
  (70, 'estonia', 'EE', 'EST', 'Estonia', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:00'),
  (71, 'ethiopia', 'ET', 'ETH', 'Ethiopia', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:00'),
  (72, 'falkland-islands-malvinas', 'FK', 'FLK', 'Falkland Islands (Malvinas)', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:00'),
  (73, 'faroe-islands', 'FO', 'FRO', 'Faroe Islands', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:00'),
  (74, 'fiji', 'FJ', 'FJI', 'Fiji', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:00'),
  (75, 'finland', 'FI', 'FIN', 'Finland', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:00'),
  (76, 'france', 'FR', 'FRA', 'France', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:00'),
  (77, 'french-guiana', 'GF', 'GUF', 'French Guiana', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:00'),
  (78, 'french-polynesia', 'PF', 'PYF', 'French Polynesia', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:00'),
  (79, 'french-southern-territories', 'TF', 'ATF', 'French Southern Territories', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:00'),
  (80, 'gabon', 'GA', 'GAB', 'Gabon', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:00'),
  (81, 'gambia', 'GM', 'GMB', 'Gambia', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:00'),
  (82, 'georgia', 'GE', 'GEO', 'Georgia', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:00'),
  (83, 'germany', 'DE', 'DEU', 'Germany', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:00'),
  (84, 'ghana', 'GH', 'GHA', 'Ghana', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:00'),
  (85, 'gibraltar', 'GI', 'GIB', 'Gibraltar', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:00'),
  (86, 'greece', 'GR', 'GRC', 'Greece', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:00'),
  (87, 'greenland', 'GL', 'GRL', 'Greenland', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:00'),
  (88, 'grenada', 'GD', 'GRD', 'Grenada', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:00'),
  (89, 'guadaloupe', 'GP', 'GLP', 'Guadaloupe', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:00'),
  (90, 'guam', 'GU', 'GUM', 'Guam', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:01'),
  (91, 'guatemala', 'GT', 'GTM', 'Guatemala', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:01'),
  (92, 'guernsey', 'GG', 'GGY', 'Guernsey', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:01'),
  (93, 'guinea', 'GN', 'GIN', 'Guinea', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:01'),
  (94, 'guinea-bissau', 'GW', 'GNB', 'Guinea-Bissau', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:01'),
  (95, 'guyana', 'GY', 'GUY', 'Guyana', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:01'),
  (96, 'haiti', 'HT', 'HTI', 'Haiti', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:01'),
  (97, 'heard-island-and-mc-donald-islands', 'HM', 'HMD', 'Heard Island and McDonald Islands', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:01'),
  (98, 'honduras', 'HN', 'HND', 'Honduras', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:01'),
  (99, 'hong-kong', 'HK', 'HKG', 'Hong Kong', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:01'),
  (100, 'hungary', 'HU', 'HUN', 'Hungary', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:01'),
  (101, 'iceland', 'IS', 'ISL', 'Iceland', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:01'),
  (102, 'india', 'IN', 'IND', 'India', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:01'),
  (103, 'indonesia', 'ID', 'IDN', 'Indonesia', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:01'),
  (104, 'iran', 'IR', 'IRN', 'Iran', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:01'),
  (105, 'iraq', 'IQ', 'IRQ', 'Iraq', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:01'),
  (106, 'ireland', 'IE', 'IRL', 'Ireland', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:01'),
  (107, 'isle-of-man', 'IM', 'IMN', 'Isle of Man', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:01'),
  (108, 'israel', 'IL', 'ISR', 'Israel', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:01'),
  (109, 'italy', 'IT', 'ITA', 'Italy', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:01'),
  (110, 'jamaica', 'JM', 'JAM', 'Jamaica', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:01'),
  (111, 'japan', 'JP', 'JPN', 'Japan', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:01'),
  (112, 'jersey', 'JE', 'JEY', 'Jersey', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:02'),
  (113, 'jordan', 'JO', 'JOR', 'Jordan', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:02'),
  (114, 'kazakhstan', 'KZ', 'KAZ', 'Kazakhstan', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:02'),
  (115, 'kenya', 'KE', 'KEN', 'Kenya', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:02'),
  (116, 'kiribati', 'KI', 'KIR', 'Kiribati', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:02'),
  (117, 'kosovo', 'XK', '---', 'Kosovo', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:02'),
  (118, 'kuwait', 'KW', 'KWT', 'Kuwait', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:02'),
  (119, 'kyrgyzstan', 'KG', 'KGZ', 'Kyrgyzstan', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:02'),
  (120, 'laos', 'LA', 'LAO', 'Laos', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:02'),
  (121, 'latvia', 'LV', 'LVA', 'Latvia', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:02'),
  (122, 'lebanon', 'LB', 'LBN', 'Lebanon', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:02'),
  (123, 'lesotho', 'LS', 'LSO', 'Lesotho', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:02'),
  (124, 'liberia', 'LR', 'LBR', 'Liberia', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:02'),
  (125, 'libya', 'LY', 'LBY', 'Libya', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:02'),
  (126, 'liechtenstein', 'LI', 'LIE', 'Liechtenstein', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:02'),
  (127, 'lithuania', 'LT', 'LTU', 'Lithuania', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:02'),
  (128, 'luxembourg', 'LU', 'LUX', 'Luxembourg', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:02'),
  (129, 'macao', 'MO', 'MAC', 'Macao', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:02'),
  (130, 'macedonia', 'MK', 'MKD', 'Macedonia', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:02'),
  (131, 'madagascar', 'MG', 'MDG', 'Madagascar', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:02'),
  (132, 'malawi', 'MW', 'MWI', 'Malawi', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:02'),
  (133, 'malaysia', 'MY', 'MYS', 'Malaysia', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:02'),
  (134, 'maldives', 'MV', 'MDV', 'Maldives', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:02'),
  (135, 'mali', 'ML', 'MLI', 'Mali', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:03'),
  (136, 'malta', 'MT', 'MLT', 'Malta', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:03'),
  (137, 'marshall-islands', 'MH', 'MHL', 'Marshall Islands', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:03'),
  (138, 'martinique', 'MQ', 'MTQ', 'Martinique', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:03'),
  (139, 'mauritania', 'MR', 'MRT', 'Mauritania', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:03'),
  (140, 'mauritius', 'MU', 'MUS', 'Mauritius', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:03'),
  (141, 'mayotte', 'YT', 'MYT', 'Mayotte', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:03'),
  (142, 'mexico', 'MX', 'MEX', 'Mexico', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:03'),
  (143, 'micronesia', 'FM', 'FSM', 'Micronesia', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:03'),
  (144, 'moldava', 'MD', 'MDA', 'Moldava', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:03'),
  (145, 'monaco', 'MC', 'MCO', 'Monaco', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:03'),
  (146, 'mongolia', 'MN', 'MNG', 'Mongolia', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:03'),
  (147, 'montenegro', 'ME', 'MNE', 'Montenegro', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:03'),
  (148, 'montserrat', 'MS', 'MSR', 'Montserrat', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:03'),
  (149, 'morocco', 'MA', 'MAR', 'Morocco', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:03'),
  (150, 'mozambique', 'MZ', 'MOZ', 'Mozambique', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:03'),
  (151, 'myanmar-burma', 'MM', 'MMR', 'Myanmar (Burma)', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:03'),
  (152, 'namibia', 'NA', 'NAM', 'Namibia', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:03'),
  (153, 'nauru', 'NR', 'NRU', 'Nauru', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:03'),
  (154, 'nepal', 'NP', 'NPL', 'Nepal', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:03'),
  (155, 'netherlands', 'NL', 'NLD', 'Netherlands', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:03'),
  (156, 'new-caledonia', 'NC', 'NCL', 'New Caledonia', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:03'),
  (157, 'new-zealand', 'NZ', 'NZL', 'New Zealand', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:03'),
  (158, 'nicaragua', 'NI', 'NIC', 'Nicaragua', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:04'),
  (159, 'niger', 'NE', 'NER', 'Niger', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:04'),
  (160, 'nigeria', 'NG', 'NGA', 'Nigeria', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:04'),
  (161, 'niue', 'NU', 'NIU', 'Niue', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:04'),
  (162, 'norfolk-island', 'NF', 'NFK', 'Norfolk Island', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:04'),
  (163, 'north-korea', 'KP', 'PRK', 'North Korea', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:04'),
  (164, 'northern-mariana-islands', 'MP', 'MNP', 'Northern Mariana Islands', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:04'),
  (165, 'norway', 'NO', 'NOR', 'Norway', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:04'),
  (166, 'oman', 'OM', 'OMN', 'Oman', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:04'),
  (167, 'pakistan', 'PK', 'PAK', 'Pakistan', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:04'),
  (168, 'palau', 'PW', 'PLW', 'Palau', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:04'),
  (169, 'palestine', 'PS', 'PSE', 'Palestine', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:04'),
  (170, 'panama', 'PA', 'PAN', 'Panama', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:04'),
  (171, 'papua-new-guinea', 'PG', 'PNG', 'Papua New Guinea', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:04'),
  (172, 'paraguay', 'PY', 'PRY', 'Paraguay', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:04'),
  (173, 'peru', 'PE', 'PER', 'Peru', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:04'),
  (174, 'phillipines', 'PH', 'PHL', 'Phillipines', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:04'),
  (175, 'pitcairn', 'PN', 'PCN', 'Pitcairn', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:04'),
  (176, 'poland', 'PL', 'POL', 'Poland', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:04'),
  (177, 'portugal', 'PT', 'PRT', 'Portugal', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:04'),
  (178, 'puerto-rico', 'PR', 'PRI', 'Puerto Rico', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:04'),
  (179, 'qatar', 'QA', 'QAT', 'Qatar', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:04'),
  (180, 'reunion', 'RE', 'REU', 'Reunion', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:04'),
  (181, 'romania', 'RO', 'ROU', 'Romania', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:04'),
  (182, 'russia', 'RU', 'RUS', 'Russia', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:04'),
  (183, 'rwanda', 'RW', 'RWA', 'Rwanda', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:05'),
  (184, 'saint-barthelemy', 'BL', 'BLM', 'Saint Barthelemy', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:05'),
  (185, 'saint-helena', 'SH', 'SHN', 'Saint Helena', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:05'),
  (186, 'saint-kitts-and-nevis', 'KN', 'KNA', 'Saint Kitts and Nevis', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:05'),
  (187, 'saint-lucia', 'LC', 'LCA', 'Saint Lucia', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:05'),
  (188, 'saint-martin', 'MF', 'MAF', 'Saint Martin', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:05'),
  (189, 'saint-pierre-and-miquelon', 'PM', 'SPM', 'Saint Pierre and Miquelon', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:05'),
  (190, 'saint-vincent-and-the-grenadines', 'VC', 'VCT', 'Saint Vincent and the Grenadines', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:05'),
  (191, 'samoa', 'WS', 'WSM', 'Samoa', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:05'),
  (192, 'san-marino', 'SM', 'SMR', 'San Marino', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:05'),
  (193, 'sao-tome-and-principe', 'ST', 'STP', 'Sao Tome and Principe', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:05'),
  (194, 'saudi-arabia', 'SA', 'SAU', 'Saudi Arabia', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:05'),
  (195, 'senegal', 'SN', 'SEN', 'Senegal', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:05'),
  (196, 'serbia', 'RS', 'SRB', 'Serbia', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:05'),
  (197, 'seychelles', 'SC', 'SYC', 'Seychelles', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:05'),
  (198, 'sierra-leone', 'SL', 'SLE', 'Sierra Leone', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:05'),
  (199, 'singapore', 'SG', 'SGP', 'Singapore', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:05'),
  (200, 'sint-maarten', 'SX', 'SXM', 'Sint Maarten', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:05'),
  (201, 'slovakia', 'SK', 'SVK', 'Slovakia', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:05'),
  (202, 'slovenia', 'SI', 'SVN', 'Slovenia', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:05'),
  (203, 'solomon-islands', 'SB', 'SLB', 'Solomon Islands', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:05'),
  (204, 'somalia', 'SO', 'SOM', 'Somalia', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:05'),
  (205, 'south-africa', 'ZA', 'ZAF', 'South Africa', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:05'),
  (206, 'south-georgia-and-the-south-sandwich-islands', 'GS', 'SGS', 'South Georgia and the South Sandwich Islands', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:06'),
  (207, 'south-korea', 'KR', 'KOR', 'South Korea', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:06'),
  (208, 'south-sudan', 'SS', 'SSD', 'South Sudan', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:06'),
  (209, 'spain', 'ES', 'ESP', 'Spain', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:06'),
  (210, 'sri-lanka', 'LK', 'LKA', 'Sri Lanka', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:06'),
  (211, 'sudan', 'SD', 'SDN', 'Sudan', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:06'),
  (212, 'suriname', 'SR', 'SUR', 'Suriname', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:06'),
  (213, 'svalbard-and-jan-mayen', 'SJ', 'SJM', 'Svalbard and Jan Mayen', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:06'),
  (214, 'swaziland', 'SZ', 'SWZ', 'Swaziland', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:06'),
  (215, 'sweden', 'SE', 'SWE', 'Sweden', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:06'),
  (216, 'switzerland', 'CH', 'CHE', 'Switzerland', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:06'),
  (217, 'syria', 'SY', 'SYR', 'Syria', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:06'),
  (218, 'taiwan', 'TW', 'TWN', 'Taiwan', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:06'),
  (219, 'tajikistan', 'TJ', 'TJK', 'Tajikistan', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:06'),
  (220, 'tanzania', 'TZ', 'TZA', 'Tanzania', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:06'),
  (221, 'thailand', 'TH', 'THA', 'Thailand', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:06'),
  (222, 'timor-leste-east-timor', 'TL', 'TLS', 'Timor-Leste (East Timor)', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:06'),
  (223, 'togo', 'TG', 'TGO', 'Togo', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:06'),
  (224, 'tokelau', 'TK', 'TKL', 'Tokelau', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:06'),
  (225, 'tonga', 'TO', 'TON', 'Tonga', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:06'),
  (226, 'trinidad-and-tobago', 'TT', 'TTO', 'Trinidad and Tobago', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:06'),
  (227, 'tunisia', 'TN', 'TUN', 'Tunisia', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:06'),
  (228, 'turkey', 'TR', 'TUR', 'Turkey', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:06'),
  (229, 'turkmenistan', 'TM', 'TKM', 'Turkmenistan', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:06'),
  (230, 'turks-and-caicos-islands', 'TC', 'TCA', 'Turks and Caicos Islands', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:07'),
  (231, 'tuvalu', 'TV', 'TUV', 'Tuvalu', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:07'),
  (232, 'uganda', 'UG', 'UGA', 'Uganda', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:07'),
  (233, 'ukraine', 'UA', 'UKR', 'Ukraine', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:07'),
  (234, 'united-arab-emirates', 'AE', 'ARE', 'United Arab Emirates', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:07'),
  (235, 'united-kingdom', 'GB', 'GBR', 'United Kingdom', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:07'),
  (236, 'united-states', 'US', 'USA', 'United States', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:07'),
  (237, 'united-states-minor-outlying-islands', 'UM', 'UMI', 'United States Minor Outlying Islands', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:07'),
  (238, 'uruguay', 'UY', 'URY', 'Uruguay', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:07'),
  (239, 'uzbekistan', 'UZ', 'UZB', 'Uzbekistan', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:07'),
  (240, 'vanuatu', 'VU', 'VUT', 'Vanuatu', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:07'),
  (241, 'vatican-city', 'VA', 'VAT', 'Vatican City', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:07'),
  (242, 'venezuela', 'VE', 'VEN', 'Venezuela', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:07'),
  (243, 'vietnam', 'VN', 'VNM', 'Vietnam', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:07'),
  (244, 'virgin-islands-british', 'VG', 'VGB', 'Virgin Islands, British', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:07'),
  (245, 'virgin-islands-us', 'VI', 'VIR', 'Virgin Islands, US', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:07'),
  (246, 'wallis-and-futuna', 'WF', 'WLF', 'Wallis and Futuna', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:07'),
  (247, 'western-sahara', 'EH', 'ESH', 'Western Sahara', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:07'),
  (248, 'yemen', 'YE', 'YEM', 'Yemen', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:07'),
  (249, 'zambia', 'ZM', 'ZMB', 'Zambia', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:07'),
  (250, 'zimbabwe', 'ZW', 'ZWE', 'Zimbabwe', 5, '2015-06-22 22:26:51', '2015-06-22 22:31:07');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dropout_type`
--

CREATE TABLE IF NOT EXISTS `dropout_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(128) DEFAULT NULL,
  `title` varchar(256) NOT NULL,
  `description` text,
  `status` int(10) NOT NULL,
  `time_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `time_update` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `dropout_type`
--

INSERT INTO `dropout_type` (`id`, `identifier`, `title`, `description`, `status`, `time_create`, `time_update`) VALUES
  (3, 'avaria-mecanica', 'Avaria MecÃ¢nica', NULL, 5, '2015-07-04 05:34:47', '0000-00-00 00:00:00'),
  (4, 'excluido', 'ExcluÃ­do', NULL, 5, '2015-07-04 05:34:47', '0000-00-00 00:00:00'),
  (5, 'despiste', 'Despiste', NULL, 5, '2015-07-04 05:34:56', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_rally` int(10) unsigned NOT NULL,
  `identifier` varchar(128) NOT NULL,
  `reference` varchar(128) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `time_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `time_update` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `time_start` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `time_end` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `event_ux1` (`identifier`) USING HASH,
  UNIQUE KEY `event_ux2` (`reference`) USING HASH,
  KEY `event_fk1` (`id_rally`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Extraindo dados da tabela `event`
--

INSERT INTO `event` (`id`, `id_rally`, `identifier`, `reference`, `status`, `time_create`, `time_update`, `time_start`, `time_end`) VALUES
  (1, 1, 'x-rali-de-verao-alem-mar', 'X Rali de VerÃ£o - AlÃ©m Mar', 5, '2015-06-29 23:08:46', NULL, '2015-07-04 14:05:00', '2015-07-04 19:06:00'),
  (2, 2, 'xi-rali-da-primavera', 'XI Rali da Primavera', 5, '2016-04-15 15:19:24', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
  (3, 1, 'test-rally', 'test rally', 5, '2017-03-24 09:12:04', NULL, '2017-03-25 00:00:00', '2017-03-30 23:00:00'),
  (4, 1, 'test-rally2', 'test rally 2', 5, '2017-03-24 10:10:48', NULL, '2017-03-25 00:00:00', '2017-03-30 23:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `event_stage`
--

CREATE TABLE IF NOT EXISTS `event_stage` (
  `id_event` int(10) unsigned NOT NULL,
  `id_stage` int(10) unsigned NOT NULL,
  `position` int(10) DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `time_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `time_update` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_event`,`id_stage`),
  KEY `id_stage` (`id_stage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `event_stage`
--

INSERT INTO `event_stage` (`id_event`, `id_stage`, `position`, `status`, `time_create`, `time_update`) VALUES
  (1, 1, 0, 6, '2015-06-30 21:02:06', '2015-07-04 15:36:11'),
  (1, 2, 1, 6, '2015-06-30 21:02:06', '2015-07-04 15:36:06'),
  (1, 3, 2, 6, '2015-06-30 21:12:35', '2015-07-04 15:36:00'),
  (1, 4, 3, 6, '2015-06-30 21:12:35', '2015-07-04 15:35:54'),
  (1, 5, 4, 6, '2015-06-30 21:12:35', '2015-07-04 15:35:49'),
  (1, 6, 5, 6, '2015-06-30 21:12:35', '2015-07-04 09:47:17'),
  (1, 7, 6, 6, '2015-06-30 21:12:35', '2015-07-04 16:23:03'),
  (1, 8, 7, 6, '2015-06-30 21:12:35', '2015-07-04 16:23:13'),
  (1, 10, 8, 5, '2015-06-30 21:12:35', '2015-07-04 09:47:17'),
  (1, 11, 9, 5, '2015-06-30 21:12:35', '2015-07-04 09:47:17'),
  (1, 12, 10, 5, '2015-06-30 21:12:35', '2015-07-04 09:47:17'),
  (1, 13, 11, 5, '2015-06-30 21:12:35', '2015-07-04 09:47:17'),
  (1, 15, 12, 5, '2015-06-30 21:12:35', '2015-07-04 09:47:17'),
  (1, 16, 13, 5, '2015-06-30 21:12:35', '2015-07-04 09:47:17'),
  (1, 17, 14, 5, '2015-06-30 21:12:35', '2015-07-04 09:47:17'),
  (1, 18, 15, 5, '2015-06-30 21:12:35', '2015-07-04 09:47:17'),
  (1, 19, 16, 5, '2015-06-30 21:12:35', '2015-07-04 09:47:17'),
  (1, 20, 17, 5, '2015-06-30 21:12:35', '2015-07-04 09:47:17'),
  (1, 21, 18, 5, '2015-06-30 21:12:35', '2015-07-04 09:47:17'),
  (1, 22, 19, 5, '2015-06-30 21:12:35', '2015-07-04 09:47:17'),
  (1, 23, 20, 5, '2015-06-30 21:12:35', '2015-07-04 09:47:17'),
  (1, 25, 21, 5, '2015-06-30 21:12:35', '2015-07-04 09:47:17'),
  (1, 26, 22, 5, '2015-06-30 21:12:35', '2015-07-04 09:47:17'),
  (1, 27, 23, 5, '2015-06-30 21:12:35', '2015-07-04 09:47:17'),
  (1, 28, 24, 5, '2015-06-30 21:12:35', '2015-07-04 09:47:17');

-- --------------------------------------------------------

--
-- Estrutura da tabela `event_stage_dropout`
--

CREATE TABLE IF NOT EXISTS `event_stage_dropout` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_event` int(10) unsigned NOT NULL,
  `id_stage` int(10) unsigned NOT NULL,
  `id_team` int(10) unsigned NOT NULL,
  `id_dropout_type` int(10) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `time_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `time_update` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_event` (`id_event`,`id_stage`,`id_team`,`id_dropout_type`),
  KEY `id_stage` (`id_stage`),
  KEY `id_team` (`id_team`),
  KEY `id_dropout_type` (`id_dropout_type`),
  KEY `id_dropout_type_2` (`id_dropout_type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `event_stage_dropout`
--

INSERT INTO `event_stage_dropout` (`id`, `id_event`, `id_stage`, `id_team`, `id_dropout_type`, `status`, `time_create`, `time_update`, `comment`) VALUES
  (3, 1, 19, 3, 3, 5, '2015-07-04 18:43:56', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `event_stage_penalty`
--

CREATE TABLE IF NOT EXISTS `event_stage_penalty` (
  `id_stage` int(10) unsigned NOT NULL,
  `id_team` int(10) unsigned NOT NULL,
  `id_penalty_type` int(10) unsigned NOT NULL,
  `penalty` bigint(20) NOT NULL,
  `comment` text,
  `status` tinyint(3) unsigned NOT NULL,
  `time_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `time_update` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_event` int(10) unsigned NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `event_penalty_fk1` (`id_stage`),
  KEY `event_penalty_fk2` (`id_team`),
  KEY `event_penalty_fk3` (`id_penalty_type`),
  KEY `id_event` (`id_event`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Extraindo dados da tabela `event_stage_penalty`
--

INSERT INTO `event_stage_penalty` (`id_stage`, `id_team`, `id_penalty_type`, `penalty`, `comment`, `status`, `time_create`, `time_update`, `id_event`, `id`) VALUES
  (18, 10, 2, 60000, NULL, 5, '2015-07-04 18:42:45', '2015-07-04 18:45:39', 1, 11);

-- --------------------------------------------------------

--
-- Estrutura da tabela `event_stage_result`
--

CREATE TABLE IF NOT EXISTS `event_stage_result` (
  `id_event` int(10) unsigned NOT NULL,
  `id_stage` int(10) unsigned NOT NULL,
  `id_team` int(10) unsigned NOT NULL,
  `departure` bigint(20) DEFAULT NULL,
  `completion` bigint(20) DEFAULT NULL,
  `total` bigint(20) DEFAULT NULL,
  `speed` double(5,2) DEFAULT NULL,
  `speed_top` double(5,2) DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `time_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `time_update` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_event`,`id_stage`,`id_team`),
  KEY `event_stage_result_fk2` (`id_stage`),
  KEY `id_team` (`id_team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `event_stage_result`
--

INSERT INTO `event_stage_result` (`id_event`, `id_stage`, `id_team`, `departure`, `completion`, `total`, `speed`, `speed_top`, `status`, `time_create`, `time_update`) VALUES
  (1, 6, 1, 52860000, 53076000, 216000, 103.00, NULL, 5, '2015-07-04 14:47:14', '2015-07-04 14:58:52'),
  (1, 6, 2, 52980000, 53203090, 223090, 99.73, NULL, 5, '2015-07-04 14:47:53', '2015-07-04 15:01:04'),
  (1, 6, 3, 53100000, 53350000, 250000, 88.99, NULL, 5, '2015-07-04 14:49:07', '2015-07-04 15:01:40'),
  (1, 6, 4, 53220000, 53483050, 263050, 84.58, NULL, 5, '2015-07-04 14:53:40', '2015-07-04 15:02:19'),
  (1, 6, 5, 53340000, 53583000, 243000, 91.56, NULL, 5, '2015-07-04 14:54:47', '2015-07-04 15:06:31'),
  (1, 6, 6, 53460000, 53720900, 260900, 85.27, NULL, 5, '2015-07-04 15:07:14', '2015-07-04 15:07:40'),
  (1, 6, 7, 53580000, 53856500, 276500, 80.46, NULL, 5, '2015-07-04 15:08:16', '2015-07-04 15:08:48'),
  (1, 6, 8, 53700000, 53954400, 254400, 87.45, NULL, 5, '2015-07-04 15:09:09', '2015-07-04 15:09:32'),
  (1, 6, 9, 53820000, NULL, NULL, NULL, NULL, 5, '2015-07-04 15:09:57', NULL),
  (1, 6, 10, 53820000, 54078000, 258000, 86.23, NULL, 5, '2015-07-04 15:17:39', '2015-07-04 15:18:15'),
  (1, 8, 1, 55260000, 55471050, 211050, 105.42, NULL, 5, '2015-07-04 15:24:47', '2015-07-04 16:42:05'),
  (1, 8, 2, 55380000, 55602000, 222000, 100.22, NULL, 5, '2015-07-04 15:25:10', '2015-07-04 15:29:53'),
  (1, 8, 3, 55500000, 55746900, 246900, 90.11, NULL, 5, '2015-07-04 15:25:40', '2015-07-04 15:36:16'),
  (1, 8, 4, 55620000, 55884600, 264600, 84.08, NULL, 5, '2015-07-04 15:36:32', '2015-07-04 15:36:54'),
  (1, 8, 5, 55740000, 55982300, 242300, 91.82, NULL, 5, '2015-07-04 15:37:29', '2015-07-04 15:40:09'),
  (1, 8, 6, 55860000, 56108100, 248100, 89.67, NULL, 5, '2015-07-04 15:40:42', '2015-07-04 15:41:12'),
  (1, 8, 7, 55980000, 56242900, 262900, 84.63, NULL, 5, '2015-07-04 15:41:48', '2015-07-04 15:42:12'),
  (1, 8, 8, 56100000, 56346060, 246060, 90.42, NULL, 5, '2015-07-04 16:07:51', '2015-07-04 16:08:21'),
  (1, 8, 10, 56220000, 56468030, 248030, 89.70, NULL, 5, '2015-07-04 16:08:53', '2015-07-04 16:09:14'),
  (1, 16, 1, 59760000, 59986000, 226000, 98.44, NULL, 5, '2015-07-04 16:49:37', '2015-07-04 16:52:11'),
  (1, 16, 2, 59880000, 60109800, 229800, 96.81, NULL, 5, '2015-07-04 16:40:51', '2015-07-04 16:53:35'),
  (1, 16, 3, 60000000, 60248700, 248700, 89.46, NULL, 5, '2015-07-04 16:42:21', '2015-07-04 16:57:44'),
  (1, 16, 4, 60120000, 60385600, 265600, 83.77, NULL, 5, '2015-07-04 16:43:52', '2015-07-04 16:58:19'),
  (1, 16, 5, 60240000, 60483500, 243500, 91.37, NULL, 5, '2015-07-04 16:45:00', '2015-07-04 16:59:03'),
  (1, 16, 6, 60360000, 60622500, 262500, 84.75, NULL, 5, '2015-07-04 16:46:18', '2015-07-04 17:04:09'),
  (1, 16, 7, 60480000, 60750000, 270000, 82.40, NULL, 5, '2015-07-04 16:48:22', '2015-07-04 17:27:28'),
  (1, 16, 8, 60600000, 60855000, 255000, 87.25, NULL, 5, '2015-07-04 16:50:13', '2015-07-04 17:25:59'),
  (1, 16, 10, 60720000, 60979000, 259000, 85.90, NULL, 5, '2015-07-04 16:52:19', '2015-07-04 17:28:13'),
  (1, 18, 1, 62160000, 62388700, 228700, 97.28, NULL, 5, '2015-07-04 17:20:30', '2015-07-04 17:23:27'),
  (1, 18, 2, 62280000, 62509600, 229600, 96.90, NULL, 5, '2015-07-04 17:22:42', '2015-07-04 17:24:43'),
  (1, 18, 3, 62760000, 63019500, 259500, 85.73, NULL, 5, '2015-07-04 17:27:48', '2015-07-04 17:30:50'),
  (1, 18, 4, 62520000, 62785300, 265300, 83.86, NULL, 5, '2015-07-04 17:25:38', '2015-07-04 17:27:30'),
  (1, 18, 5, 62640000, 62884700, 244700, 90.92, NULL, 5, '2015-07-04 17:27:08', '2015-07-04 17:29:39'),
  (1, 18, 6, 62880000, 63130800, 250800, 88.71, NULL, 5, '2015-07-04 17:28:40', '2015-07-04 17:32:51'),
  (1, 18, 7, 63000000, 63267900, 267900, 83.05, NULL, 5, '2015-07-04 17:31:06', '2015-07-04 17:35:00'),
  (1, 18, 8, 63120000, 63367300, 247300, 89.96, NULL, 5, '2015-07-04 17:32:16', '2015-07-04 17:36:50'),
  (1, 18, 10, 63180000, 63453500, 273500, 81.35, NULL, 5, '2015-07-04 17:34:56', '2015-07-04 17:38:03'),
  (1, 25, 1, 66960000, 67052300, 92300, 59.28, NULL, 5, '2015-07-04 18:36:12', '2015-07-04 18:37:52'),
  (1, 25, 2, 67080000, 67177800, 97800, 55.95, NULL, 5, '2015-07-04 18:38:15', '2015-07-04 18:47:18'),
  (1, 25, 4, 67200000, 67308400, 108400, 50.48, NULL, 5, '2015-07-04 18:40:13', '2015-07-04 18:42:09'),
  (1, 25, 5, 67320000, 67418700, 98700, 55.44, NULL, 5, '2015-07-04 18:42:13', '2015-07-04 18:43:58'),
  (1, 25, 6, 67440000, 67540800, 100800, 54.29, NULL, 5, '2015-07-04 18:44:15', '2015-07-04 18:46:05'),
  (1, 25, 7, 67560000, 67670400, 110400, 49.57, NULL, 5, '2015-07-04 18:46:07', '2015-07-04 18:48:28'),
  (1, 25, 8, 67680000, 67780200, 100200, 54.61, NULL, 5, '2015-07-04 18:48:22', '2015-07-04 18:50:13'),
  (1, 25, 10, 67800000, 67898900, 98900, 55.33, NULL, 5, '2015-07-04 18:50:11', '2015-07-04 18:51:59');

-- --------------------------------------------------------

--
-- Estrutura da tabela `event_stage_schedule`
--

CREATE TABLE IF NOT EXISTS `event_stage_schedule` (
  `id_event` int(10) unsigned NOT NULL,
  `id_stage` int(10) unsigned NOT NULL,
  `id_event_vehicle` int(10) unsigned NOT NULL,
  `departure` bigint(20) unsigned NOT NULL,
  `time_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `time_update` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_event`,`id_stage`,`id_event_vehicle`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `event_stage_schedule`
--

INSERT INTO `event_stage_schedule` (`id_event`, `id_stage`, `id_event_vehicle`, `departure`, `time_create`, `time_update`) VALUES
  (1, 6, 3, 1436020860000, '2015-07-03 23:51:51', NULL),
  (1, 6, 4, 1436021040000, '2015-07-03 23:51:51', NULL),
  (1, 6, 5, 1436021220000, '2015-07-03 23:51:51', NULL),
  (1, 6, 6, 1436021400000, '2015-07-03 23:51:51', NULL),
  (1, 6, 7, 1436021580000, '2015-07-03 23:51:51', NULL),
  (1, 6, 8, 1436021760000, '2015-07-03 23:51:51', NULL),
  (1, 6, 9, 1436021940000, '2015-07-03 23:51:51', NULL),
  (1, 6, 10, 1436022120000, '2015-07-03 23:51:51', NULL),
  (1, 6, 11, 1436022300000, '2015-07-03 23:51:51', NULL),
  (1, 6, 12, 1436022480000, '2015-07-03 23:51:51', NULL),
  (1, 8, 3, 1436023260000, '2015-07-03 23:51:51', NULL),
  (1, 8, 4, 1436023440000, '2015-07-03 23:51:51', NULL),
  (1, 8, 5, 1436023620000, '2015-07-03 23:51:51', NULL),
  (1, 8, 6, 1436023800000, '2015-07-03 23:51:51', NULL),
  (1, 8, 7, 1436023980000, '2015-07-03 23:51:51', NULL),
  (1, 8, 8, 1436024160000, '2015-07-03 23:51:51', NULL),
  (1, 8, 9, 1436024340000, '2015-07-03 23:51:51', NULL),
  (1, 8, 10, 1436024520000, '2015-07-03 23:51:51', NULL),
  (1, 8, 11, 1436024700000, '2015-07-03 23:51:51', NULL),
  (1, 8, 12, 1436024880000, '2015-07-03 23:51:51', NULL),
  (1, 16, 3, 1436027760000, '2015-07-03 23:51:51', NULL),
  (1, 16, 4, 1436027940000, '2015-07-03 23:51:51', NULL),
  (1, 16, 5, 1436028120000, '2015-07-03 23:51:51', NULL),
  (1, 16, 6, 1436028300000, '2015-07-03 23:51:51', NULL),
  (1, 16, 7, 1436028480000, '2015-07-03 23:51:51', NULL),
  (1, 16, 8, 1436028660000, '2015-07-03 23:51:51', NULL),
  (1, 16, 9, 1436028840000, '2015-07-03 23:51:51', NULL),
  (1, 16, 10, 1436029020000, '2015-07-03 23:51:51', NULL),
  (1, 16, 11, 1436029200000, '2015-07-03 23:51:51', NULL),
  (1, 16, 12, 1436029380000, '2015-07-03 23:51:51', NULL),
  (1, 18, 3, 1436030160000, '2015-07-03 23:51:51', NULL),
  (1, 18, 4, 1436030340000, '2015-07-03 23:51:51', NULL),
  (1, 18, 5, 1436030520000, '2015-07-03 23:51:51', NULL),
  (1, 18, 6, 1436030700000, '2015-07-03 23:51:51', NULL),
  (1, 18, 7, 1436030880000, '2015-07-03 23:51:51', NULL),
  (1, 18, 8, 1436031060000, '2015-07-03 23:51:51', NULL),
  (1, 18, 9, 1436031240000, '2015-07-03 23:51:51', NULL),
  (1, 18, 10, 1436031420000, '2015-07-03 23:51:51', NULL),
  (1, 18, 11, 1436031600000, '2015-07-03 23:51:51', NULL),
  (1, 18, 12, 1436031780000, '2015-07-03 23:51:51', NULL),
  (1, 25, 3, 1436034960000, '2015-07-03 23:51:51', NULL),
  (1, 25, 4, 1436035140000, '2015-07-03 23:51:51', NULL),
  (1, 25, 5, 1436035320000, '2015-07-03 23:51:51', NULL),
  (1, 25, 6, 1436035500000, '2015-07-03 23:51:51', NULL),
  (1, 25, 7, 1436035680000, '2015-07-03 23:51:51', NULL),
  (1, 25, 8, 1436035860000, '2015-07-03 23:51:51', NULL),
  (1, 25, 9, 1436036040000, '2015-07-03 23:51:51', NULL),
  (1, 25, 10, 1436036220000, '2015-07-03 23:51:51', NULL),
  (1, 25, 11, 1436036400000, '2015-07-03 23:51:51', NULL),
  (1, 25, 12, 1436036580000, '2015-07-03 23:51:51', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `event_team`
--

CREATE TABLE IF NOT EXISTS `event_team` (
  `id_event` int(10) unsigned NOT NULL,
  `id_team` int(10) unsigned NOT NULL,
  `id_vehicle` int(10) unsigned NOT NULL,
  `reference` varchar(64) NOT NULL,
  `departure_order` tinyint(4) DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `time_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `time_update` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `event_team_ux1` (`id_event`,`reference`) USING HASH,
  UNIQUE KEY `event_team_ux2` (`id_event`,`id_team`) USING HASH,
  KEY `id_team` (`id_team`),
  KEY `id_vehicle` (`id_vehicle`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Extraindo dados da tabela `event_team`
--

INSERT INTO `event_team` (`id_event`, `id_team`, `id_vehicle`, `reference`, `departure_order`, `status`, `time_create`, `time_update`, `id`) VALUES
  (1, 1, 1, '1', 0, 5, '2015-06-29 23:14:24', '2015-07-03 21:08:23', 1),
  (1, 2, 11, '2', 1, 5, '2015-06-29 23:14:24', '2015-07-04 14:51:28', 2),
  (1, 3, 3, '3', 2, 5, '2015-06-29 23:14:24', '2015-07-03 21:08:23', 3),
  (1, 4, 4, '4', 3, 5, '2015-06-29 23:14:24', '2015-07-03 21:08:23', 4),
  (1, 5, 5, '5', 4, 5, '2015-06-29 23:14:24', '2015-07-03 21:08:23', 5),
  (1, 6, 6, '6', 5, 5, '2015-06-29 23:14:24', '2015-07-03 21:08:23', 6),
  (1, 7, 7, '7', 6, 5, '2015-06-29 23:14:24', '2015-07-03 21:08:23', 7),
  (1, 8, 8, '8', 7, 5, '2015-06-29 23:14:24', '2015-07-03 21:08:23', 8),
  (1, 9, 9, '9', 8, 1, '2015-06-29 23:14:24', '2015-07-04 14:52:13', 9),
  (1, 10, 10, '10', 9, 5, '2015-06-29 23:14:24', '2015-07-03 21:08:23', 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `event_vehicle`
--

CREATE TABLE IF NOT EXISTS `event_vehicle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_event` int(10) unsigned NOT NULL,
  `id_team` int(10) unsigned NOT NULL,
  `id_vehicle` int(10) unsigned NOT NULL,
  `id_pilot` int(10) unsigned NOT NULL,
  `id_copilot` int(10) unsigned NOT NULL,
  `number` int(10) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `time_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `time_update` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `cl` varchar(16) DEFAULT NULL,
  `grp` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `event_vehicle_ux1` (`id_event`,`id_team`,`id_vehicle`) USING HASH,
  KEY `event_vehicle_ix1` (`id_event`,`number`) USING BTREE,
  KEY `event_vehicle_fk2` (`id_team`),
  KEY `event_vehicle_fk3` (`id_vehicle`),
  KEY `event_vehicle_fk4` (`id_pilot`),
  KEY `event_vehicle_fk5` (`id_copilot`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Extraindo dados da tabela `event_vehicle`
--

INSERT INTO `event_vehicle` (`id`, `id_event`, `id_team`, `id_vehicle`, `id_pilot`, `id_copilot`, `number`, `status`, `time_create`, `time_update`, `cl`, `grp`) VALUES
  (3, 1, 1, 1, 2, 3, 1, 5, '2015-06-29 23:22:32', '2015-07-03 16:56:03', 'VI', '4 RM'),
  (4, 1, 2, 2, 7, 8, 2, 5, '2015-06-29 23:22:32', '2015-07-03 16:56:03', 'VI', '4 RM'),
  (5, 1, 3, 3, 19, 20, 3, 5, '2015-06-29 23:23:45', '2015-07-03 16:55:43', 'IV', '2 RM'),
  (6, 1, 4, 4, 11, 12, 4, 5, '2015-06-29 23:23:45', '2015-07-03 16:55:43', 'III', '2 RM'),
  (7, 1, 5, 5, 17, 18, 5, 5, '2015-06-29 23:25:01', '2015-07-03 16:55:43', 'IV', '2 RM'),
  (8, 1, 6, 6, 1, 4, 6, 5, '2015-06-29 23:25:01', '2015-07-03 16:55:43', 'II', '2 RM'),
  (9, 1, 7, 7, 5, 6, 7, 5, '2015-06-29 23:26:46', '2015-07-03 16:55:43', 'IV', '2 RM'),
  (10, 1, 8, 8, 9, 10, 8, 5, '2015-06-29 23:26:46', '2015-07-03 16:55:43', 'II', '2 RM'),
  (11, 1, 9, 9, 13, 14, 9, 5, '2015-06-29 23:27:51', '2015-07-03 16:55:43', 'II', '2 RM'),
  (12, 1, 10, 10, 15, 16, 10, 5, '2015-06-29 23:27:51', '2015-07-04 19:30:26', 'III', '2 RM');

-- --------------------------------------------------------

--
-- Estrutura da tabela `leg_stage`
--

CREATE TABLE IF NOT EXISTS `leg_stage` (
  `id_leg` int(10) unsigned NOT NULL,
  `id_stage` int(10) unsigned NOT NULL,
  `position` tinyint(3) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `time_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `time_update` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_leg`,`id_stage`),
  UNIQUE KEY `rally_stage_ux1` (`id_stage`,`position`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `leg_stage`
--

INSERT INTO `leg_stage` (`id_leg`, `id_stage`, `position`, `status`, `time_create`, `time_update`) VALUES
  (1, 1, 0, 5, '2015-06-30 21:02:06', '2015-06-30 21:19:41'),
  (1, 2, 1, 5, '2015-06-30 21:02:06', '2015-06-30 21:19:41'),
  (1, 3, 2, 5, '2015-06-30 21:12:35', '2015-06-30 21:19:41'),
  (1, 4, 3, 5, '2015-06-30 21:12:35', '2015-06-30 21:19:41'),
  (1, 5, 4, 5, '2015-06-30 21:12:35', '2015-06-30 21:19:41'),
  (1, 6, 5, 5, '2015-06-30 21:12:35', '2015-06-30 21:19:41'),
  (1, 7, 6, 5, '2015-06-30 21:12:35', '2015-06-30 21:19:41'),
  (1, 8, 7, 5, '2015-06-30 21:12:35', '2015-06-30 21:19:41'),
  (1, 10, 8, 5, '2015-06-30 21:12:35', '2015-06-30 21:19:41'),
  (1, 11, 9, 5, '2015-06-30 21:12:35', '2015-06-30 21:19:41'),
  (1, 12, 10, 5, '2015-06-30 21:12:35', '2015-06-30 21:19:41'),
  (1, 13, 11, 5, '2015-06-30 21:12:35', '2015-06-30 21:19:41'),
  (1, 15, 12, 5, '2015-06-30 21:12:35', '2015-06-30 21:19:41'),
  (1, 16, 13, 5, '2015-06-30 21:12:35', '2015-06-30 21:19:41'),
  (1, 17, 14, 5, '2015-06-30 21:12:35', '2015-06-30 21:19:41'),
  (1, 18, 15, 5, '2015-06-30 21:12:35', '2015-06-30 21:19:41'),
  (1, 19, 16, 5, '2015-06-30 21:12:35', '2015-06-30 21:19:41'),
  (1, 20, 17, 5, '2015-06-30 21:12:35', '2015-06-30 21:19:41'),
  (1, 21, 18, 5, '2015-06-30 21:12:35', '2015-06-30 21:19:41'),
  (1, 22, 19, 5, '2015-06-30 21:12:35', '2015-06-30 21:19:41'),
  (1, 23, 20, 5, '2015-06-30 21:12:35', '2015-06-30 21:19:41'),
  (1, 25, 21, 5, '2015-06-30 21:12:35', '2015-06-30 21:19:41'),
  (1, 26, 22, 5, '2015-06-30 21:12:35', '2015-06-30 21:19:41'),
  (1, 27, 23, 5, '2015-06-30 21:12:35', '2015-06-30 21:19:41'),
  (1, 28, 24, 5, '2015-06-30 21:12:35', '2015-06-30 21:19:41');

-- --------------------------------------------------------

--
-- Estrutura da tabela `migration`
--

CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
  ('m000000_000000_base', 1468834001),
  ('m130524_201442_init', 1468834004);

-- --------------------------------------------------------

--
-- Estrutura da tabela `penalty_type`
--

CREATE TABLE IF NOT EXISTS `penalty_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(128) NOT NULL,
  `title` varchar(128) NOT NULL,
  `briefing` varchar(255) NOT NULL,
  `description` text,
  `status` tinyint(3) unsigned NOT NULL,
  `time_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `time_update` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `penalty_type`
--

INSERT INTO `penalty_type` (`id`, `identifier`, `title`, `briefing`, `description`, `status`, `time_create`, `time_update`) VALUES
  (1, 'atraso', 'Entrada por atraso', '', NULL, 5, '2015-07-02 12:13:11', NULL),
  (2, 'avanÃ§o', 'Entrada por avanÃ§o', '', NULL, 5, '2015-07-02 12:13:44', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `person`
--

CREATE TABLE IF NOT EXISTS `person` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_person_blood_type` int(10) unsigned DEFAULT NULL,
  `id_nationality` int(10) unsigned DEFAULT NULL,
  `id_naturality` int(10) unsigned DEFAULT NULL,
  `identifier` varchar(128) NOT NULL,
  `name` varchar(128) NOT NULL,
  `birthday` timestamp NULL DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `time_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `time_update` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `x_license` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `person_fk1` (`id_person_blood_type`),
  KEY `person_fk2` (`id_nationality`),
  KEY `person_fk3` (`id_naturality`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Extraindo dados da tabela `person`
--

INSERT INTO `person` (`id`, `id_person_blood_type`, `id_nationality`, `id_naturality`, `identifier`, `name`, `birthday`, `status`, `time_create`, `time_update`, `x_license`) VALUES
  (1, NULL, 177, 177, 'antonio-ortins', 'AntÃ³nio Ortins', NULL, 5, '2015-06-29 21:31:12', '2015-06-29 21:32:13', '7352'),
  (2, NULL, 177, 177, 'marco-silva', 'Marco Silva', '2015-06-29 21:33:18', 5, '2015-06-29 21:33:18', NULL, '6042'),
  (3, NULL, 177, 177, 'miguel-angelo', 'Miguel Ã‚ngelo', '2015-06-29 21:33:18', 5, '2015-06-29 21:33:18', '2015-07-04 14:46:52', '8156'),
  (4, NULL, 177, 177, 'carlos-miguel', 'Carlos Miguel', NULL, 5, '2015-06-29 21:33:21', NULL, '7187'),
  (5, NULL, 177, 177, 'mario-machado', 'MÃ¡rio Machado', NULL, 5, '2015-06-29 21:34:08', NULL, '7094'),
  (6, NULL, 177, 177, 'isidro-machado', 'Isidro Machado', NULL, 5, '2015-06-29 21:34:08', NULL, '7095'),
  (7, NULL, 177, 177, 'jose-paula', 'JosÃ© Paula', NULL, 5, '2015-06-29 21:34:37', NULL, '5462'),
  (8, NULL, 177, 177, 'miguel-ribeiro', 'Miguel Ribeiro', NULL, 5, '2015-06-29 21:34:37', NULL, '5463'),
  (9, NULL, 177, 177, 'paulo-silva', 'Paulo Silva', NULL, 5, '2015-06-29 21:35:06', NULL, '6416'),
  (10, NULL, 177, 177, 'elio-medeiros', 'Ã‰lio Medeiros', NULL, 5, '2015-06-29 21:35:06', NULL, '8123'),
  (11, NULL, 177, 177, 'sergio-rosa', 'SÃ©rgio Rosa', NULL, 5, '2015-06-29 21:35:43', NULL, '8125'),
  (12, NULL, 177, 177, 'rui-correia', 'Rui Correia', NULL, 5, '2015-06-29 21:35:43', NULL, '8122'),
  (13, NULL, 177, 177, 'marco-goulart', 'Marco Goulart', NULL, 5, '2015-06-29 21:36:04', NULL, '5464'),
  (14, NULL, 177, 177, 'hugo-goulart', 'Hugo Goulart', NULL, 5, '2015-06-29 21:36:04', NULL, '5465'),
  (15, NULL, 177, 177, 'joao-silva', 'JoÃ£o Silva', NULL, 5, '2015-06-29 21:36:48', NULL, '3820'),
  (16, NULL, 177, 177, 'miguel-marques', 'Miguel Marques', NULL, 5, '2015-06-29 21:36:48', NULL, '5775'),
  (17, NULL, 177, 177, 'paulo-neves', 'Paulo Neves', NULL, 5, '2015-06-29 21:37:20', NULL, '5066'),
  (18, NULL, 177, 177, 'aquilino-bettencourt', 'Aquilino Bettencourt', NULL, 5, '2015-06-29 21:37:20', NULL, '5067'),
  (19, NULL, 177, 177, 'pedro-mendonca', 'Pedro MendonÃ§a', NULL, 5, '2015-06-29 21:40:13', NULL, '6434'),
  (20, NULL, 177, 177, 'marco-garcia', 'Marco Garcia', NULL, 5, '2015-06-29 21:40:13', NULL, '5335');

-- --------------------------------------------------------

--
-- Estrutura da tabela `person_blood_type`
--

CREATE TABLE IF NOT EXISTS `person_blood_type` (
  `id` int(10) unsigned NOT NULL,
  `identifier` varchar(128) NOT NULL,
  `title` varchar(128) NOT NULL,
  `time_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `time_update` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `person_blood_type_ux1` (`identifier`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `person_blood_type`
--

INSERT INTO `person_blood_type` (`id`, `identifier`, `title`, `time_create`, `time_update`) VALUES
  (1, 'o-positive', 'O POSITIVO', '2015-06-22 22:10:37', NULL),
  (2, 'o-negative', 'O NEGATIVO', '2015-06-22 22:10:37', NULL),
  (3, 'a-positive', 'A POSITIVO', '2015-06-22 22:11:07', NULL),
  (4, 'a-negative', 'A NEGATIVO', '2015-06-22 22:11:07', NULL),
  (5, 'b-positive', 'B POSITIVO', '2015-06-22 22:11:33', NULL),
  (6, 'b-negative', 'B NEGATIVO', '2015-06-22 22:11:33', NULL),
  (7, 'ab-positive', 'AB POSTIVO', '2015-06-22 22:11:55', NULL),
  (8, 'ab-negative', 'AB NEGATIVO', '2015-06-22 22:11:55', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `person_origin`
--

CREATE TABLE IF NOT EXISTS `person_origin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_country` int(10) unsigned NOT NULL,
  `short` varchar(8) NOT NULL,
  `title` varchar(128) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `time_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `time_update` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `person_origin_fk1` (`id_country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `rally`
--

CREATE TABLE IF NOT EXISTS `rally` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `title` varchar(128) NOT NULL,
  `description` text,
  `status` tinyint(3) unsigned NOT NULL,
  `time_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `time_update` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `rally`
--

INSERT INTO `rally` (`id`, `identifier`, `title`, `description`, `status`, `time_create`, `time_update`) VALUES
  (1, 'x-rali-de-verao-alem-mar', 'X Rali de VerÃ£o - AlÃ©m Mar', NULL, 5, '2015-06-29 23:06:15', NULL),
  (2, 'xi-rali-da-primavera', 'XI Rali da Primavera', NULL, 5, '2016-04-15 15:17:19', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `rally_leg`
--

CREATE TABLE IF NOT EXISTS `rally_leg` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_rally` int(10) unsigned NOT NULL,
  `reference` varchar(128) NOT NULL,
  `title` varchar(128) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `time_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `time_update` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `rally_leg_fk1` (`id_rally`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `rally_leg`
--

INSERT INTO `rally_leg` (`id`, `id_rally`, `reference`, `title`, `status`, `time_create`, `time_update`) VALUES
  (1, 1, 'S1', 'SecÃ§Ã£o 1', 5, '2015-06-29 23:09:49', '2015-07-03 17:38:39');

-- --------------------------------------------------------

--
-- Estrutura da tabela `stage`
--

CREATE TABLE IF NOT EXISTS `stage` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_stage_type` int(10) unsigned NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `reference` varchar(16) NOT NULL,
  `pe_number` tinyint(3) unsigned DEFAULT NULL,
  `title` varchar(128) NOT NULL,
  `description` text,
  `distance` double(8,2) unsigned DEFAULT NULL,
  `average_speed` double(5,2) unsigned DEFAULT NULL,
  `time` time DEFAULT NULL,
  `time_start` time DEFAULT NULL,
  `time_end` time DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `time_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `time_update` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `stage_fk1` (`id_stage_type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Extraindo dados da tabela `stage`
--

INSERT INTO `stage` (`id`, `id_stage_type`, `identifier`, `reference`, `pe_number`, `title`, `description`, `distance`, `average_speed`, `time`, `time_start`, `time_end`, `status`, `time_create`, `time_update`) VALUES
  (1, 7, 'lp', '', NULL, 'LigaÃ§Ã£o Ã  Partida', NULL, 1.17, 14.04, '00:05:00', NULL, '14:00:00', 5, '2015-06-30 02:43:17', NULL),
  (2, 8, '0', '0', NULL, 'Partida - PÃ³dio - Cais do Porto Velho', NULL, 0.00, NULL, NULL, '14:00:00', '14:05:00', 5, '2015-06-30 02:53:33', NULL),
  (3, 1, '0A', '0A', NULL, 'AssistÃªncia - A - entrada', NULL, 1.15, 13.80, '00:05:00', '14:05:00', '14:10:00', 5, '2015-06-30 02:53:33', NULL),
  (4, 2, '0B', '0B', NULL, 'AssistÃªncia - A - saÃ­da', NULL, 0.00, NULL, '00:10:00', '14:10:00', '14:20:00', 5, '2015-06-30 02:59:25', NULL),
  (5, 3, '1', '1', NULL, 'Terras Lavradas', NULL, 13.57, 45.23, '00:18:00', '14:20:00', '14:38:00', 5, '2015-06-30 02:59:25', NULL),
  (6, 4, 'PE1', 'PE 1', 1, 'Terras Lavradas / CabeÃ§o Grande - 1', NULL, 6.18, NULL, NULL, '14:38:00', '14:41:00', 5, '2015-06-30 03:06:09', '2015-07-02 01:45:37'),
  (7, 3, '2', '2', NULL, 'Terras Lavradas', NULL, 15.29, 34.82, '00:37:00', '14:41:00', '15:18:00', 5, '2015-06-30 03:06:09', NULL),
  (8, 4, 'PE2', 'PE 2', 2, 'Terras Lavradas / CabeÃ§o Grande - 2', NULL, 6.18, NULL, NULL, '15:18:00', '15:21:00', 5, '2015-06-30 03:08:25', '2015-07-02 01:45:40'),
  (10, 3, '2A', '2A', NULL, 'AssistÃªncia - B - entrada', NULL, 6.28, 37.38, '00:20:00', '15:21:00', '15:41:00', 5, '2015-06-30 10:51:52', '2015-06-30 10:53:36'),
  (11, 2, '2B', '2B', NULL, 'AssistÃªncia - B - saÃ­da', NULL, 0.00, NULL, '00:30:00', '15:41:00', '16:11:00', 5, '2015-06-30 12:02:16', NULL),
  (12, 1, '2C', '2C', NULL, 'Reagrupamento - entrada', NULL, 0.15, 4.50, '00:02:00', '16:11:00', '16:13:00', 5, '2015-06-30 12:03:52', NULL),
  (13, 2, '2D', '2D', NULL, 'Reagrupamento - saÃ­da', NULL, 0.00, NULL, '00:10:00', '16:13:00', '16:23:00', 5, '2015-06-30 12:04:50', '2015-06-30 12:08:48'),
  (15, 3, '3', '3', NULL, 'CabeÃ§o Grande', NULL, 6.27, 37.62, '00:10:00', '16:23:00', '16:33:00', 5, '2015-06-30 12:06:46', NULL),
  (16, 4, 'PE3', 'PE 3', 3, 'CabeÃ§o Grande / Terras Lavradas - 1', NULL, 6.18, NULL, NULL, '16:33:00', '16:36:00', 5, '2015-06-30 12:08:42', '2015-07-02 01:45:42'),
  (17, 3, '4', '4', NULL, 'CabeÃ§o Grande', NULL, 15.29, 34.82, '00:37:00', '16:36:00', '17:13:00', 5, '2015-06-30 12:11:11', NULL),
  (18, 4, 'PE4', 'PE 4', 4, 'CabeÃ§o Grande / Terras Lavradas - 2', NULL, 6.18, NULL, NULL, '17:13:00', '17:16:00', 5, '2015-06-30 12:12:53', '2015-07-02 01:45:46'),
  (19, 1, '4A', '4A', NULL, 'AssistÃªncia - C - entrada', NULL, 13.49, 39.34, '00:30:00', '17:16:00', '17:46:00', 5, '2015-06-30 16:33:35', NULL),
  (20, 2, '4B', '4B', NULL, 'AssistÃªncia - C - saÃ­da', NULL, 0.00, NULL, '00:30:00', '17:46:00', '18:16:00', 5, '2015-06-30 16:34:49', NULL),
  (21, 1, '4C', '4C', NULL, 'Reagrupamento - entrada', NULL, 0.15, 4.50, '00:02:00', '18:16:00', '18:18:00', 5, '2015-06-30 16:45:05', NULL),
  (22, 2, '4D', '4D', NULL, 'Reagrupamento - saÃ­da', NULL, 0.00, NULL, '00:10:00', '18:18:00', '18:28:00', 5, '2015-06-30 16:55:37', NULL),
  (23, 3, '5', '5', NULL, 'Vila da Madalena', NULL, 1.57, 18.84, '00:05:00', '18:28:00', '18:33:00', 5, '2015-06-30 16:56:53', NULL),
  (25, 4, 'PE5', 'PE 5', 5, 'Vila da Madalena', NULL, 1.52, NULL, NULL, '18:33:00', '18:36:00', 5, '2015-06-30 16:59:08', '2015-07-02 01:45:50'),
  (26, 1, '5A', '5A', NULL, 'AssistÃªncia - D - entrada', NULL, 0.91, 9.72, '00:15:00', '18:36:00', '18:51:00', 5, '2015-06-30 17:04:36', NULL),
  (27, 2, '5B', '5B', NULL, 'AssistÃªncia - D - saÃ­da', NULL, 0.00, NULL, '00:05:00', '18:51:00', '18:56:00', 5, '2015-06-30 17:05:30', '2015-06-30 17:05:58'),
  (28, 3, '5C', '5C', NULL, 'Chegada - PÃ³dio - Cais do Porto Velho', NULL, 1.26, 7.56, '00:10:00', '18:56:00', '19:06:00', 5, '2015-06-30 17:07:40', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `stage_category`
--

CREATE TABLE IF NOT EXISTS `stage_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `short` varchar(8) NOT NULL,
  `title` varchar(128) NOT NULL,
  `description` text,
  `status` int(10) unsigned NOT NULL,
  `time_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `time_update` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `stage_category`
--

INSERT INTO `stage_category` (`id`, `short`, `title`, `description`, `status`, `time_create`, `time_update`) VALUES
  (1, 'CH', 'Controlo HorÃ¡rio', NULL, 5, '2015-06-30 02:23:07', NULL),
  (2, 'Partida', 'Partida', NULL, 5, '2015-06-30 02:23:07', NULL),
  (3, 'ND', 'NÃ£o definido', NULL, 5, '2015-06-30 02:31:31', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `stage_type`
--

CREATE TABLE IF NOT EXISTS `stage_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_stage_category` int(10) unsigned NOT NULL,
  `short` varchar(8) NOT NULL,
  `title` varchar(128) NOT NULL,
  `description` text,
  `status` int(10) unsigned NOT NULL,
  `time_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `time_update` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `stage_type_fk1` (`id_stage_category`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Extraindo dados da tabela `stage_type`
--

INSERT INTO `stage_type` (`id`, `id_stage_category`, `short`, `title`, `description`, `status`, `time_create`, `time_update`) VALUES
  (1, 1, 'entrada', 'entrada', NULL, 5, '2015-06-30 02:25:35', NULL),
  (2, 1, 'saÃ­da', 'saÃ­da', NULL, 5, '2015-06-30 02:25:35', NULL),
  (3, 1, 'atÃ© CH', 'atÃ© controlo horÃ¡rio', NULL, 5, '2015-06-30 02:27:24', NULL),
  (4, 2, 'PE', 'Prova Especial', NULL, 5, '2015-06-30 02:27:24', NULL),
  (5, 2, 'PEC', 'Prova Especial de ClassificaÃ§Ã£o', NULL, 5, '2015-06-30 02:28:55', NULL),
  (6, 2, 'SE', 'Super Especial', NULL, 5, '2015-06-30 02:28:55', NULL),
  (7, 3, 'nd', 'nÃ£o definido', NULL, 5, '2015-06-30 02:33:44', NULL),
  (8, 2, 'Partida', 'Partida', NULL, 5, '2015-06-30 02:44:42', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `team`
--

CREATE TABLE IF NOT EXISTS `team` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(128) NOT NULL,
  `title` varchar(128) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `time_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `time_update` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Extraindo dados da tabela `team`
--

INSERT INTO `team` (`id`, `identifier`, `title`, `status`, `time_create`, `time_update`) VALUES
  (1, 'marco-silva', 'Marco Silva', 5, '2015-06-29 21:16:43', NULL),
  (2, 'jose-paula', 'JosÃ© Paula', 5, '2015-06-29 21:16:56', NULL),
  (3, 'pedro-mendonca', 'Pedro MendonÃ§a', 5, '2015-06-29 21:18:40', NULL),
  (4, 'sergio-rosa', 'SÃ©rgio Rosa', 5, '2015-06-29 21:18:57', NULL),
  (5, 'paulo-neves', 'Paulo Neves', 5, '2015-06-29 21:19:10', NULL),
  (6, 'antonio-ortins', 'AntÃ³nio Ortins', 5, '2015-06-29 21:19:23', NULL),
  (7, 'mario-machado', 'MÃ¡rio Machado', 5, '2015-06-29 21:19:35', NULL),
  (8, 'paulo-silva', 'Paulo Silva', 5, '2015-06-29 21:19:46', NULL),
  (9, 'marco-goulart', 'Marco Goulart', 5, '2015-06-29 21:20:13', NULL),
  (10, 'joao-silva', 'JoÃ£o Silva', 5, '2015-06-29 21:20:34', NULL),
  (11, 'fabio-silva', 'Fabio Silva', 5, '2016-04-15 15:30:53', NULL),
  (12, 'nuno-freitas', 'Nuno Freitas', 5, '2016-04-15 15:30:53', NULL),
  (13, 'marco-medeiros', 'Marco Medeiros', 5, '2016-04-15 15:31:57', NULL),
  (14, 'carlos-andrade', 'Carlos Andrade', 5, '2016-04-15 15:31:57', NULL),
  (15, 'paulo-silva', 'Paulo Silva', 5, '2016-04-15 15:36:28', NULL),
  (16, 'mario-nunes', 'Mario Nunes', 5, '2016-04-15 15:37:25', NULL),
  (17, 'pedro-ferreira', 'Pedro Ferreira', 5, '2016-04-15 15:37:25', NULL),
  (18, 'tania-vargas', 'Tania Vargas', 5, '2016-04-16 11:01:53', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `team_member`
--

CREATE TABLE IF NOT EXISTS `team_member` (
  `id_team` int(10) unsigned NOT NULL,
  `id_team_member_role` int(10) unsigned NOT NULL,
  `id_person` int(10) unsigned NOT NULL,
  `status` int(10) unsigned NOT NULL,
  `time_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `time_update` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_team`,`id_person`),
  KEY `team_member_fk2` (`id_team_member_role`),
  KEY `team_member_fk3` (`id_person`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `team_member`
--

INSERT INTO `team_member` (`id_team`, `id_team_member_role`, `id_person`, `status`, `time_create`, `time_update`) VALUES
  (1, 2, 3, 5, '2015-06-29 21:46:37', '2015-06-29 22:10:02'),
  (1, 1, 7, 5, '2015-06-29 21:46:37', '2015-06-29 22:10:02'),
  (2, 1, 7, 5, '2015-06-29 21:47:06', '2017-03-24 15:34:25'),
  (2, 2, 8, 5, '2015-06-29 21:47:06', '2015-06-29 22:10:02'),
  (3, 1, 19, 5, '2015-06-29 21:48:13', '2015-06-29 22:10:02'),
  (3, 2, 20, 5, '2015-06-29 21:48:13', '2015-06-29 22:10:02'),
  (4, 1, 11, 5, '2015-06-29 21:48:52', '2015-06-29 22:10:02'),
  (4, 2, 12, 5, '2015-06-29 21:48:52', '2015-06-29 22:10:02'),
  (5, 1, 17, 5, '2015-06-29 21:49:20', '2015-06-29 22:10:02'),
  (5, 2, 18, 5, '2015-06-29 21:49:20', '2015-06-29 22:10:02'),
  (6, 1, 1, 5, '2015-06-29 21:46:43', '2015-06-29 22:10:02'),
  (6, 2, 4, 5, '2015-06-29 21:46:43', '2015-06-29 22:10:02'),
  (7, 1, 5, 5, '2015-06-29 21:47:17', '2015-06-29 22:10:02'),
  (7, 2, 6, 5, '2015-06-29 21:47:17', '2015-06-29 22:10:02'),
  (8, 1, 9, 5, '2015-06-29 21:47:58', '2015-06-29 22:10:02'),
  (8, 2, 10, 5, '2015-06-29 21:47:58', '2015-06-29 22:10:02'),
  (9, 1, 13, 5, '2015-06-29 21:48:15', '2015-06-29 22:10:02'),
  (9, 2, 14, 5, '2015-06-29 21:48:15', '2015-06-29 22:10:02'),
  (10, 1, 15, 5, '2015-06-29 21:48:44', '2015-06-29 22:10:02'),
  (10, 2, 16, 5, '2015-06-29 21:48:44', '2015-06-29 22:10:02');

-- --------------------------------------------------------

--
-- Estrutura da tabela `team_member_role`
--

CREATE TABLE IF NOT EXISTS `team_member_role` (
  `id` int(10) unsigned NOT NULL,
  `identifier` varchar(128) NOT NULL,
  `title` varchar(128) NOT NULL,
  `description` text,
  `status` tinyint(3) unsigned NOT NULL,
  `time_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `time_update` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `team_member_role_ux1` (`identifier`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `team_member_role`
--

INSERT INTO `team_member_role` (`id`, `identifier`, `title`, `description`, `status`, `time_create`, `time_update`) VALUES
  (1, 'piloto', 'Piloto', NULL, 5, '2015-06-30 19:25:39', NULL),
  (2, 'navegador', 'Navegador', NULL, 5, '2015-06-30 19:25:39', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `team_vehicle`
--

CREATE TABLE IF NOT EXISTS `team_vehicle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_team` int(10) unsigned NOT NULL,
  `id_vehicle` int(10) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `time_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `time_update` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `team_vehicle_ux1` (`id_team`,`id_vehicle`) USING HASH,
  KEY `team_vehicle_fk2` (`id_vehicle`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Extraindo dados da tabela `team_vehicle`
--

INSERT INTO `team_vehicle` (`id`, `id_team`, `id_vehicle`, `status`, `time_create`, `time_update`) VALUES
  (3, 1, 1, 5, '2015-06-29 23:00:59', NULL),
  (4, 10, 2, 5, '2015-06-29 23:00:59', NULL),
  (5, 3, 3, 5, '2015-06-29 23:01:59', NULL),
  (6, 4, 4, 5, '2015-06-29 23:01:59', NULL),
  (7, 5, 5, 5, '2015-06-29 23:02:32', NULL),
  (8, 6, 6, 5, '2015-06-29 23:02:32', NULL),
  (9, 7, 7, 5, '2015-06-29 23:03:16', NULL),
  (10, 8, 8, 5, '2015-06-29 23:03:16', NULL),
  (11, 9, 9, 5, '2015-06-29 23:03:36', NULL),
  (12, 10, 10, 5, '2015-06-29 23:03:36', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
  (1, 'nsbettencourt', 'SkMfcbrV0mw5jeM2zOOYJ8r6AHSOpUsG', '$2y$13$TZAEp7R8f5YGpWLnsAbAfevw4UYguMnZYw5PoNYqZqxcmqf.H1Xf2', 'c1VvhIOzcvuvCkjNqiXkz5JDHSb4fLH6_1468834272', 'nsbettencourt@gmail.com', 10, 1468834131, 1468834272);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vehicle`
--

CREATE TABLE IF NOT EXISTS `vehicle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_vehicle_model` int(10) unsigned NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `year` smallint(5) unsigned DEFAULT NULL,
  `plate` varchar(32) DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `time_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `time_update` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vehicle_ux1` (`plate`) USING HASH,
  KEY `vehicle_ix1` (`id`,`identifier`) USING HASH,
  KEY `vehicle_fk1` (`id_vehicle_model`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Extraindo dados da tabela `vehicle`
--

INSERT INTO `vehicle` (`id`, `id_vehicle_model`, `identifier`, `title`, `year`, `plate`, `status`, `time_create`, `time_update`) VALUES
  (1, 1, 'mitsubishi-lancer-evo-vii', 'Mitsubishi Lancer EVO VII', NULL, NULL, 5, '2015-06-29 22:54:43', NULL),
  (2, 2, 'Subaru Impreza', 'Subaru Impreza', NULL, NULL, 5, '2015-06-29 22:54:43', '2015-07-04 14:53:29'),
  (3, 3, 'peugeot-205-gti', 'Peugeot 205 GTI', NULL, NULL, 5, '2015-06-29 22:55:26', NULL),
  (4, 5, 'renault-clio', 'Renault Clio', NULL, NULL, 5, '2015-06-29 22:55:26', NULL),
  (5, 6, 'peugeot-309-gti', 'Peugeot 309 GTI', NULL, NULL, 5, '2015-06-29 22:56:04', NULL),
  (6, 11, 'toyota-yaris', 'Toyota Yaris', NULL, NULL, 5, '2015-06-29 22:56:04', NULL),
  (7, 4, 'peugeot-306', 'Peugeot 306', NULL, NULL, 5, '2015-06-29 22:56:38', NULL),
  (8, 8, 'toyota-starlet-13', 'Toyota Starlet 1.3', NULL, NULL, 5, '2015-06-29 22:56:38', NULL),
  (9, 7, 'toyota-starlet', 'Toyota Starlet', NULL, NULL, 5, '2015-06-29 22:57:30', NULL),
  (10, 12, 'fiat-500-abarth', 'Fiat 500 Abarth', NULL, NULL, 5, '2015-06-29 22:57:30', NULL),
  (11, 6, 'subaru-Impreza', 'Subaru Impreza', NULL, NULL, 5, '2015-07-04 14:49:29', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vehicle_make`
--

CREATE TABLE IF NOT EXISTS `vehicle_make` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(64) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text,
  `status` tinyint(3) unsigned NOT NULL,
  `time_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `time_update` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vehicle_make_ux1` (`identifier`) USING HASH
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Extraindo dados da tabela `vehicle_make`
--

INSERT INTO `vehicle_make` (`id`, `identifier`, `title`, `description`, `status`, `time_create`, `time_update`) VALUES
  (1, 'mitsubishi', 'Mitsubishi', NULL, 5, '2015-06-29 22:30:21', NULL),
  (2, 'peugeot', 'Peugeot', NULL, 5, '2015-06-29 22:30:21', NULL),
  (3, 'renault', 'Renault', NULL, 5, '2015-06-29 22:30:43', NULL),
  (4, 'toyota', 'Toyota', NULL, 5, '2015-06-29 22:30:43', NULL),
  (5, 'fiat', 'Fiat', NULL, 5, '2015-06-29 22:30:59', NULL),
  (6, 'subaru', 'Subaru', NULL, 5, '2015-07-04 14:47:59', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vehicle_model`
--

CREATE TABLE IF NOT EXISTS `vehicle_model` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_vehicle_make` int(10) unsigned NOT NULL,
  `identifier` varchar(64) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text,
  `year` smallint(5) unsigned DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `time_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `time_update` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vehicle_model_ux1` (`id_vehicle_make`,`identifier`) USING HASH
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Extraindo dados da tabela `vehicle_model`
--

INSERT INTO `vehicle_model` (`id`, `id_vehicle_make`, `identifier`, `title`, `description`, `year`, `status`, `time_create`, `time_update`) VALUES
  (1, 1, 'lancer-evo-vii', 'Lancer EVO VII', NULL, NULL, 5, '2015-06-29 22:32:56', '2015-06-29 22:48:43'),
  (2, 1, 'lancer-evo-ix', 'Lancer EVO IX', NULL, NULL, 5, '2015-06-29 22:32:56', '2015-06-29 22:48:43'),
  (3, 2, '205-gti', '205 GTI', NULL, NULL, 5, '2015-06-29 22:38:33', '2015-06-29 22:48:43'),
  (4, 2, '306', '306', NULL, NULL, 5, '2015-06-29 22:38:33', '2015-06-29 22:48:43'),
  (5, 3, 'clio', 'Clio', NULL, NULL, 5, '2015-06-29 22:39:43', '2015-06-29 22:48:43'),
  (6, 2, '309-gti', '309 GTI', NULL, NULL, 5, '2015-06-29 22:42:54', '2015-06-29 22:48:43'),
  (7, 4, 'starlet', 'Starlet', NULL, NULL, 5, '2015-06-29 22:44:32', '2015-06-29 22:48:43'),
  (8, 4, 'starlet-1300', 'Starlet 1.3', NULL, NULL, 5, '2015-06-29 22:44:32', '2015-06-29 22:48:43'),
  (11, 4, 'yaris', 'Yaris', NULL, NULL, 5, '2015-06-29 22:45:32', '2015-06-29 22:48:43'),
  (12, 5, '500-abarth', '500 Abarth', NULL, NULL, 5, '2015-06-29 22:45:32', '2015-06-29 22:48:43'),
  (13, 6, 'impreza', 'Impreza', NULL, NULL, 5, '2015-07-04 14:48:38', NULL);

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `competition_x_events`
--
ALTER TABLE `competition_x_events`
  ADD CONSTRAINT `competition_x_events_fk1` FOREIGN KEY (`id`) REFERENCES `competition` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `competition_x_events_fk2` FOREIGN KEY (`id_event`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `event_fk1` FOREIGN KEY (`id_rally`) REFERENCES `rally` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `event_stage`
--
ALTER TABLE `event_stage`
  ADD CONSTRAINT `event_stage_ibfk_1` FOREIGN KEY (`id_event`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `event_stage_ibfk_2` FOREIGN KEY (`id_stage`) REFERENCES `stage` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `event_stage_dropout`
--
ALTER TABLE `event_stage_dropout`
  ADD CONSTRAINT `event_stage_dropout_ibfk_1` FOREIGN KEY (`id_event`) REFERENCES `event` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `event_stage_dropout_ibfk_2` FOREIGN KEY (`id_stage`) REFERENCES `stage` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `event_stage_dropout_ibfk_3` FOREIGN KEY (`id_team`) REFERENCES `team` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `event_stage_dropout_ibfk_4` FOREIGN KEY (`id_dropout_type`) REFERENCES `dropout_type` (`id`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `event_stage_penalty`
--
ALTER TABLE `event_stage_penalty`
  ADD CONSTRAINT `event_stage_penalty_ibfk_1` FOREIGN KEY (`id_stage`) REFERENCES `stage` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `event_stage_penalty_ibfk_2` FOREIGN KEY (`id_team`) REFERENCES `event_team` (`id_team`) ON UPDATE CASCADE,
  ADD CONSTRAINT `event_stage_penalty_ibfk_3` FOREIGN KEY (`id_penalty_type`) REFERENCES `penalty_type` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `event_stage_penalty_ibfk_4` FOREIGN KEY (`id_event`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `event_stage_result`
--
ALTER TABLE `event_stage_result`
  ADD CONSTRAINT `event_stage_result_fk1` FOREIGN KEY (`id_event`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `event_stage_result_fk2` FOREIGN KEY (`id_stage`) REFERENCES `stage` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `event_stage_result_ibfk_1` FOREIGN KEY (`id_team`) REFERENCES `team` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `event_stage_schedule`
--
ALTER TABLE `event_stage_schedule`
  ADD CONSTRAINT `event_stage_schedule_ibfk_1` FOREIGN KEY (`id_event`, `id_stage`) REFERENCES `event_stage` (`id_event`, `id_stage`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `event_team`
--
ALTER TABLE `event_team`
  ADD CONSTRAINT `event_team_ibfk_1` FOREIGN KEY (`id_event`) REFERENCES `event` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `event_team_ibfk_2` FOREIGN KEY (`id_team`) REFERENCES `team` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `event_team_ibfk_3` FOREIGN KEY (`id_vehicle`) REFERENCES `vehicle` (`id`);

--
-- Limitadores para a tabela `event_vehicle`
--
ALTER TABLE `event_vehicle`
  ADD CONSTRAINT `event_vehicle_fk1` FOREIGN KEY (`id_event`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `event_vehicle_fk2` FOREIGN KEY (`id_team`) REFERENCES `team` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `event_vehicle_fk3` FOREIGN KEY (`id_vehicle`) REFERENCES `vehicle` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `event_vehicle_fk4` FOREIGN KEY (`id_pilot`) REFERENCES `person` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `event_vehicle_fk5` FOREIGN KEY (`id_copilot`) REFERENCES `person` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `leg_stage`
--
ALTER TABLE `leg_stage`
  ADD CONSTRAINT `rally_stage_fk1` FOREIGN KEY (`id_leg`) REFERENCES `rally_leg` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rally_stage_fk2` FOREIGN KEY (`id_stage`) REFERENCES `stage` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `person`
--
ALTER TABLE `person`
  ADD CONSTRAINT `person_fk1` FOREIGN KEY (`id_person_blood_type`) REFERENCES `person_blood_type` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `person_fk2` FOREIGN KEY (`id_nationality`) REFERENCES `country` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `person_fk3` FOREIGN KEY (`id_naturality`) REFERENCES `country` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limitadores para a tabela `person_origin`
--
ALTER TABLE `person_origin`
  ADD CONSTRAINT `person_origin_fk1` FOREIGN KEY (`id_country`) REFERENCES `country` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `rally_leg`
--
ALTER TABLE `rally_leg`
  ADD CONSTRAINT `rally_leg_fk1` FOREIGN KEY (`id_rally`) REFERENCES `rally` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `stage`
--
ALTER TABLE `stage`
  ADD CONSTRAINT `stage_fk1` FOREIGN KEY (`id_stage_type`) REFERENCES `stage_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `stage_type`
--
ALTER TABLE `stage_type`
  ADD CONSTRAINT `stage_type_fk1` FOREIGN KEY (`id_stage_category`) REFERENCES `stage_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `team_member`
--
ALTER TABLE `team_member`
  ADD CONSTRAINT `team_member_fk1` FOREIGN KEY (`id_team`) REFERENCES `team` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `team_member_fk2` FOREIGN KEY (`id_team_member_role`) REFERENCES `team_member_role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `team_member_fk3` FOREIGN KEY (`id_person`) REFERENCES `person` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `team_vehicle`
--
ALTER TABLE `team_vehicle`
  ADD CONSTRAINT `team_vehicle_fk1` FOREIGN KEY (`id_team`) REFERENCES `team` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `team_vehicle_fk2` FOREIGN KEY (`id_vehicle`) REFERENCES `vehicle` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `vehicle`
--
ALTER TABLE `vehicle`
  ADD CONSTRAINT `vehicle_fk1` FOREIGN KEY (`id_vehicle_model`) REFERENCES `vehicle_model` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `vehicle_model`
--
ALTER TABLE `vehicle_model`
  ADD CONSTRAINT `vehicle_model_fk1` FOREIGN KEY (`id_vehicle_make`) REFERENCES `vehicle_make` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;