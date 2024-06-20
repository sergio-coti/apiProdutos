CREATE DATABASE bd_apiprodutos;
USE bd_apiprodutos;

CREATE TABLE categoria(
	id				INTEGER			AUTO_INCREMENT,
	nome			VARCHAR(50)		NOT NULL UNIQUE,
	PRIMARY KEY(id)
);

CREATE TABLE produto(
	id				INTEGER			AUTO_INCREMENT,
	nome			VARCHAR(100)	NOT NULL,
	preco			DECIMAL(10, 2)	NOT NULL,
	quantidade		INTEGER			NOT NULL,
	categoria_id	INTEGER			NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY(categoria_id) REFERENCES categoria(id)
);

INSERT INTO categoria(nome) VALUES('Informática');
INSERT INTO categoria(nome) VALUES('Eletrônicos');
INSERT INTO categoria(nome) VALUES('Livraria');
INSERT INTO categoria(nome) VALUES('Vestuário');
INSERT INTO categoria(nome) VALUES('Outros');

SELECT * FROM categoria;

SELECT id, nome FROM categoria ORDER BY nome ASC;

INSERT INTO produto(nome, preco, quantidade, categoria_id)
VALUES('Notebook Dell', 6000, 10, 1);

SELECT 
	p.id AS idproduto, 
    p.nome AS nomeproduto, 
    p.preco, 
    p.quantidade, 
    c.id AS idcategoria,
    c.nome AS nomecategoria
FROM produto p
INNER JOIN categoria c
ON c.id = p.categoria_id
ORDER BY p.nome ASC;