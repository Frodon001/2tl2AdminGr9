create database WoodyToys;
use WoodyToys;

CREATE TABLE Client
(
id_Client char(4) not null,
NOM  varchar(12) not null,
ADRESSE varchar(20) not null,
LOCALITE varchar(12) not null,
COMPTE decimal(9,2) not null,
primary key (id_Client)
) COMMENT='this is my client table';

CREATE TABLE Produit
(
id_Product  char(5) not null,
LIBELLE varchar(20) not null,
PRIX decimal(5,0) not null,
QSTOCK decimal(6,0) not null,
primary key (id_Product)
) COMMENT='this is my Produit table';

CREATE TABLE Commande
(
id_Commande char(5) not null,
id_Client char(4) not null,
DATECOM datetime not null,
PRIMARY KEY (id_Commande, id_Client),
FOREIGN KEY (id_Client) REFERENCES Client(id_Client)
) COMMENT='this is my Commande table';

create table Detail
(
id_Commande char(5) not null,
id_Product char(5) not null,
quantiteCommande decimal(4,0) not null,
primary key (id_Commande,id_Product),
foreign key (id_Commande) references Commande(id_Commande),
foreign key (id_Product) references Produit(id_Product)
) COMMENT='this is my Facture table';

CREATE TABLE employe
(
id_Employe char(4) not null,
nom varchar(25) NOT NULL,
adresse TEXT NOT NULL,
localite varchar(12) not null,
dateEngage DATETIME NOT NULL,
iswork BIT NOT NULL DEFAULT 1,
PRIMARY KEY (id_Employe)
) COMMENT='this is my employe table';

CREATE user 'wbServer'@172.18.0.132 identified by 'wbServer';
CREATE user 'admin'@'localhost' identified by 'administrateur';
grant all privileges on *.* TO 'wbServer'@172.18.0.132;
grant all privileges on *.* TO 'admin'@'localhost';

flush privileges;
