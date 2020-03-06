  
use WoodyToys;

insert into Client values ('B112','HANSENNE'    ,'23, a. Dumont'       ,'Poitiers' ,1250.00);
insert into Client values ('C123','MERCIER'     ,'25, r. Lemaitre'     ,'Namur'    ,-2300);
insert into Client values ('B332','MONTI'       ,'112, r. Neuve'       ,'Geneve'   ,0);
insert into Client values ('F010','TOUSSAINT'   ,'5, r. Godefroid'     ,'Poitiers' ,0);
insert into Client values ('K111','VANBIST'     ,'180, r. Florimont'   ,'Lille'    ,720);
insert into Client values ('S127','VANDERKA'    ,'3, av. des Roses'    ,'Namur'    ,-4580);

insert into Produit values ('CB262','CHEVAL EN BOIS',  75,  15);
insert into Produit values ('PC001','POUPEE CAT 1', 12.0, 30);
insert into Produit values ('PC006','POUPEE CAT 6', 2.20, 40);
insert into Produit values ('MK012' ,'MOLKKY 12PIECES',10.5, 58);
insert into Produit values ('PE33' ,'PLATEAU ECHEC', 40, 14);
insert into Produit values ('PB400' ,'PUISSANCE 4 EN BOIS', 40, 34);

insert into Commande values ('30178','K111','20081221');
insert into Commande values ('30179','C123','20081222');
insert into Commande values ('30182','S127','20081223');
insert into Commande values ('30184','C123','20081223');

insert into Detail values ('30178','PC001',5);
insert into Detail values ('30179','PE33',2);
insert into Detail values ('30179','CB262',1);
insert into Detail values ('30182','PE33',3);
insert into Detail values ('30184','PC006',20);
insert into Detail values ('30184','PB400',10);

insert into employe values ('C400','FERARD'      ,'65, r. du Tertre'    ,'Poitiers' ,'20061222',1);
insert into employe values ('C003','AVRON'       ,'8, ch. de la Cure'   ,'Toulouse' ,'20051223',1);
insert into employe values ('K729','NEUMAN'      ,'40, r. Bransart'     ,'Toulouse' ,'20081223',1);
insert into employe values ('F011','PONCELET'    ,'17, Clos des Erables','Toulouse' ,'20030102',0);
insert into employe values ('L422','FRANCK'      ,'60, r. de Wepion'    ,'Namur'    ,'20040102',1);
insert into employe values ('S712','GUILLAUME'   ,'14a, ch. des Roses'  ,'Paris'    ,'20070103',1);
