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
values ('pierre','paul','IT','p.paul@wt.be');

insert into produits (name, categ, stock)
values ('cheval en bois', 'bois', 100);