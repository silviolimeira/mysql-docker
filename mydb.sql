CREATE DATABASE IF NOT EXISTS mydb;

USE mydb;

CREATE TABLE customers ( 
	ID int NOT NULL, 
	name varchar(255) NOT NULL, 
	street varchar(255), 
	city varchar(255), 
	state char(2), 
    credit_limit decimal(10,2), 
    PRIMARY KEY (ID) 
);
--  drop table customers;

select * from customers;

INSERT INTO customers (id, name, street, city, state, credit_limit) 
	values (1, 'Pedro Augusto Rocha', 'Rua Pedro Carlos Hofman', 'Porto Alegre', 'RS', 700.00);
INSERT INTO customers (id, name, street, city, state, credit_limit) 
	values (2, 'Antonio Carlos Manoel', 'Av. Pinheiros', 'Belo Horizonte', 'MG', 3500.50);
INSERT INTO customers (id, name, street, city, state, credit_limit) 
	values (3, 'Luiza Augusta Mhor', 'Rua Salto Grande', 'Niteroi', 'RJ', 4000);
INSERT INTO customers (id, name, street, city, state, credit_limit) 
	values (4, 'Jane Ester', 'Av 7 de setembro', 'Erechim', 'RS', 800);
INSERT INTO customers (id, name, street, city, state, credit_limit) 
	values (5, 'Marcos Antônio dos Santos', 'Av Farrapos', 'Porto Alegre', 'RS', 4250.25);

select name, street from customers where Lower(city) in ('porto alegre');


