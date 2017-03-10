--CREATE DATABASE coches

CREATE TABLE `coche` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `price` int(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

--Algunos inset de ejemplo
INSERT INTO coche(name,price) VALUES('Mercedes',500000);

