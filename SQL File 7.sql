CREATE TABLE pai (
cd VARCHAR(10),
nome VARCHAR(20)
);

CREATE TABLE filho (
cd INT(3),
nome VARCHAR(20)
);

SHOW TABLES;
DESC pai;

ALTER TABLE pai
DROP COLUMN cod;

ALTER TABLE pai
ADD COLUMN cod VARCHAR(10) FIRST;

ALTER TABLE pai
MODIFY COLUMN cod INT(3) PRIMARY KEY AUTO_INCREMENT;

ALTER TABLE filho
ADD COLUMN cod INT(3) PRIMARY KEY AUTO_INCREMENT FIRST;

ALTER TABLE filho
DROP COLUMN cd;

DESC filho;

ALTER TABLE filho
ADD COLUMN cod_pai INT;

ALTER TABLE filho 
ADD FOREIGN KEY (cod_pai)
REFERENCES pai(cod);

SELECT * FROM pai;
INSERT INTO pai (nome) VALUES ('Calazan'), ('Geovanna');

UPDATE PAI
SET nome = 'Calazan', nome = 'Calazans'
WHERE cod = 2;

DELETE FROM pai WHERE cod = 5;

SELECT * FROM filho;
INSERT INTO filho (nome) VALUES ('Bit'), ('Byte');

SELECT pai.nome, filho.nome
FROM pai, filho
WHERE filho.cod_pai = pai.cod;

