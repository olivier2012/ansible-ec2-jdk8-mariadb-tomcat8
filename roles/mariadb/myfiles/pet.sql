DROP TABLE IF EXISTS `Pet`;
CREATE TABLE IF NOT EXISTS `Pet` (
  `pet_id` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(128) NOT NULL,
  `fcolor` varchar(45) NOT NULL,
  `cod` boolean NOT NULL,
  PRIMARY KEY (`pet_id`),
  UNIQUE KEY `pet_id_UNIQUE` (`pet_id`),
  UNIQUE KEY `pname_UNIQUE` (`pname`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

INSERT INTO `Pet` (`pet_id`, `pname`, `fcolor`,`cod`)
VALUES
  (1, 'jiwawa', 'black',1),
  (2, 'German Black', 'black',1);
