CREATE TABLE `covercomments` (
  `boardNum` int(11) NOT NULL,
  `comments` varchar(200) NOT NULL,
  `id` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `num` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8