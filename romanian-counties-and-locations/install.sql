--
-- Table structure for table `#__romanian_counties`
--

CREATE TABLE IF NOT EXISTS `#__romanian_counties` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `county_code` int(2) unsigned NOT NULL DEFAULT 0,
  `county_name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_county_code` (`county_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 DEFAULT COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `#__romanian_locations`
--

CREATE TABLE IF NOT EXISTS `#__romanian_locations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `county_code` int(2) unsigned NOT NULL DEFAULT 0,
  `location_name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_county_code` (`county_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 DEFAULT COLLATE=utf8mb4_unicode_ci;
