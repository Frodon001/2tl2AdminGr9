CREATE TABLE `domaines` (
  `domaine` varchar(220) NOT NULL default '',
  `etat` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`domaine`)
) ENGINE=MyISAM;

CREATE TABLE `comptes` (
  `email` varchar(220) NOT NULL default '',
  `password` varchar(220) NOT NULL default '',
  `quota` int(10) NOT NULL default '0',
  `etat` tinyint(1) NOT NULL default '1',
  `imap` tinyint(1) NOT NULL default '1',
  `pop3` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`email`)
) ENGINE=MyISAM;

CREATE TABLE `alias` (
  `source` varchar(220) NOT NULL default '',
  `destination` text NOT NULL,
  `etat` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`source`)
) ENGINE=MyISAM;

INSERT INTO `domaines`(`domaine`, `etat`) 
VALUES (
    'wt2-9.ephec-ti.be','1'
);

INSERT INTO `comptes`(`email`, `password`, `quota`, `etat`, `imap`, `pop3`)
VALUES ('contact@wt2-9.ephec-ti.be',SHA2('user1234',224),0,1,1,1);