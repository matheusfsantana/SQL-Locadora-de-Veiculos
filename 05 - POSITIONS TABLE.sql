-- 5 - Construa uma query SQL para criar a tabela POSITIONS (Cargos) no banco de dados, e logo em seguida insira os cargos abaixo:


-- ID	DESCRIPTION
-- 1	Gerente de vendas
-- 2	Gerente de compras
-- 3	Vendedor
-- 4	Mecânico
-- 5	Assistente Administrativo

CREATE TABLE POSITIONS(
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    DESCRIPTION VARCHAR(120) NOT NULL
);

INSERT INTO POSITIONS (DESCRIPTION) VALUES
('Gerente de vendas'),
('Gerente de compras'),
('Vendedor'),
('Mecânico'),
('Assistente Admnistrativo');