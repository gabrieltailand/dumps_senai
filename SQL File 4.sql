CREATE DATABASE v0712;

USE v0712;

CREATE TABLE cliente (
nome VARCHAR(50),
telefone VARCHAR(20)
);

SELECT * FROM cliente;

DESC cliente;
SHOW TABLES;
DROP TABLE cliente;
DROP DATABASE v0712;

INSERT INTO cliente (nome, telefone)
VALUES
  ('João', '445-0988'),
  ('Alberto', '465-98-87'),
  ('Maria', '789-9877'),
  ('Francisco', "");
  
  SELECT * FROM cliente WHERE nome = 'joão';
  SELECT nome FROM cliente WHERE nome = 'joão';
  SELECT telefone FROM cliente WHERE nome = 'joão';
  
INSERT INTO cliente (nome, telefone)
VALUES
  ('Sônia', null);
  
ALTER TABLE cliente
ALTER telefone SET DEFAULT 'NULL';

SELECT * FROM cliente;

UPDATE cliente SET telefone = '882-3344' WHERE nome = 'Sônia';

INSERT INTO cliente (nome, telefone)
VALUES
  ('Pedro', DEFAULT);
  
  SELECT * FROM cliente WHERE nome = 'Sônia';
  
  DELETE FROM cliente WHERE nome = 'Sônia';
  
  UPDATE cliente SET telefone = DEFAULT;
  
  DELETE FROM cliente WHERE nome = 'João';
  
  DELETE FROM cliente;
  DROP DATABASE v0712;
  
  CREATE DATABASE sfibra;
  USE sfibra;
  
  