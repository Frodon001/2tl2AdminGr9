CREATE TABLE employees (
                           id int not null AUTO_INCREMENT,
                           name varchar(25),
                           last_name  varchar(25),
                           department varchar(15),
                           email  varchar(50),
                           primary key (id)
);

CREATE TABLE produits (
                          id int not null AUTO_INCREMENT,
                          name  varchar(25),
                          categ varchar(15),
                          stock  int,
                          primary key(id)
);


insert into employees (name, last_name, department, email)
values ('quiroulle','pierre','IT','P.quiroulle@wt.be'),
       ('dechaussure','marc','COMPTA','m.dechaussure@wt.be'),
       ('cavil','henry','MARKET','h.cavil@wt.be'),
       ('labrouette','bernadette','DIRECT','b.labrouette@wt.be'),
       ('a','alex','IT','a.a@wt.be');


insert into produits (name, categ, stock)
values ('cheval en bois', 'bois', 100),
       ('sculpture cheval', 'pierre', 35),
       ('maquette cheval', 'bois', 91),
       ('plaque', 'pierre', 10997),
       ('plaque', 'acier', 456),
       ('cheval en fer', 'fer', 987);

alter user 'user'@'172.16.99.2' identified with mysql_native_password by 'user1234';