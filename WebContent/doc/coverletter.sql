CREATE TABLE `coverletter` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(200) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `content` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `boarddate` date NOT NULL,
  `score` int(11) NOT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8