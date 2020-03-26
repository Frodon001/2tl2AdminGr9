CREATE TABLE employees (
id int primary key not null AUTO_INCREMENT,
name varchar(25),
last_name  varchar(25),
department varchar(15),
email  varchar(50)
);

CREATE TABLE produits (
id int primary key not null AUTO_INCREMENT,
name  varchar(25),
categ varchar(15),
stock  int,
);