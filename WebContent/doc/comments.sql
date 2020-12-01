CREATE TABLE `board` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(20) NOT NULL,
  `subject` varchar(200) CHARACTER SET utf8 NOT NULL,
  `content` varchar(200) CHARACTER SET utf8 NOT NULL,
  `email` varchar(200) NOT NULL,
  `boarddate` date NOT NULL,
  `score` int(11) NOT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1