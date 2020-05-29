CREATE TABLE `virtual_domains` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `virtual_users` (
  `id` int(11) NOT NULL auto_increment,
  `domain_id` int(11) NOT NULL,
  `password` varchar(106) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  FOREIGN KEY (domain_id) REFERENCES virtual_domains(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET= utf8mb4;

CREATE TABLE `virtual_aliases` (
  `id` int(11) NOT NULL auto_increment,
  `domain_id` int(11) NOT NULL,
  `source` varchar(100) NOT NULL,
  `destination` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (domain_id) REFERENCES virtual_domains(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET= utf8mb4;



INSERT INTO `mailserver`.`virtual_domains`
  (`id` ,`name`)
VALUES
  ('1', 'wt2-9.ephec-ti.be'),
  ('2', 'mail.wt2-9.ephec-ti.be'),
  ('3', 'mail'),
  ('4', 'localhost.wt2-9.ephec-ti.be');



INSERT INTO `mailserver`.`virtual_users`
  (`id`, `domain_id`, `password` , `email`)
VALUES
  ('3', '1', 'user1234', 'root@wt2-9.ephec-ti.be'),
  ('1', '1', 'user1234', 'contact@wt2-9.ephec-ti.be'),
  ('4', '1', 'user1234', 'directeur@wt2-9.ephec-ti.be'),
  ('5', '1', 'user1234', 'b2b@wt2-9.ephec-ti.be'),
  ('2', '1', 'user1234', 'florent@wt2-9.ephec-ti.be');


INSERT INTO `mailserver`.`virtual_aliases`
  (`id`, `domain_id`, `source`, `destination`)
VALUES
  ('1', '1', 'florent@wt2-9.ephec-ti.be', 'florent@wt2-9.ephec-ti.be');
