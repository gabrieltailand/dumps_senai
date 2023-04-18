CREATE DATABASE gabrielvieira;

CREATE TABLE `tabgabriel` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `phone` varchar(100) default NULL,
  `email` varchar(255) default NULL,
  `country` varchar(100) default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `tabgabriel` (`name`,`phone`,`email`,`country`)
VALUES
  ("Hedley Gibson","1-905-267-4124","urna.justo@outlook.couk","Norway"),
  ("Gareth Coleman","(523) 862-2971","ut.pellentesque.eget@protonmail.couk","Norway"),
  ("Lareina Robles","1-704-238-8587","sed.consequat@aol.edu","Norway"),
  ("Louis Burnett","1-414-258-1438","facilisis.facilisis@icloud.ca","India"),
  ("Faith Whitaker","1-325-471-4827","sit@outlook.edu","Norway");
  
  SELECT * FROM tabgabriel;