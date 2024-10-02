-- 3 - Construa uma query SQL para criar a tabela CAR_MODEL (modelos) no banco de dados, e logo em seguida insira os modelos abaixo:

-- ID	MODEL_NAME
-- 1	Conversível
-- 2	Sedã
-- 3	Hatch
-- 4	Coupé
-- 5	Perua
-- 6	SUV
-- 7	Picape
-- 8	Minivan
-- 9	Utilitário
-- 10	Buggy

CREATE TABLE CAR_MODELS(
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    MODEL_NAME VARCHAR(120) NOT NULL
);

INSERT INTO CAR_MODELS(MODEL_NAME) VALUES
('Conversível'),
('Sedã'),
('Hatch'),
('Coupé'),
('Perua'),
('SUV'),
('Picape'),
('Minivan'),
('Utilitário'),
('Buggy');