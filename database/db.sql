CREATE DATABASE IF NOT EXISTS meuBanco;
use meuBanco;

CREATE USER 'myuser'@'localhost' IDENTIFIED BY 'mypassword';
GRANT ALL PRIVILEGES ON mydatabase.* TO 'myuser'@'localhost';

CREATE TABLE meuBanco.mensagens (
	id int auto_increment NOT NULL,
	nome varchar(100) NOT NULL,
	email varchar(100) NOT NULL,
	comentario varchar(100) NOT NULL,
	CONSTRAINT mensagens_pk PRIMARY KEY (id)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_bin;

