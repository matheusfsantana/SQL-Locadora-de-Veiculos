-- 14 - Construa uma consulta capaz de exibir somente o name, lastname e email dos clientes que moram no estado de SP

SELECT NAME, LASTNAME
FROM CUSTOMERS
WHERE STATE = 'SP';

-- 15 - Construa uma consulta capaz de exibir somente os automóveis que estão com o status “Liberado”

SELECT * FROM CARS
WHERE STATUS = 'Liberado';

-- 16 - Construa uma consulta capaz de exibir todos os automóveis do ano 2016.

SELECT * FROM CARS
WHERE YEAR = 2016;

-- 17 - Construa uma consulta capaz de exibir todos os funcionários e seus respectivos cargos

SELECT e.NAME, p.DESCRIPTION
FROM EMPLOYEES AS e 
INNER JOIN POSITIONS as p
WHERE p.id = e.POSITION_ID;

-- 18 - Construa uma consulta capaz de exibir somente os funcionários que realizaram mais ou igual a 2 locações.

SELECT e.NAME, COUNT(l.EMPLOYEE_ID) as 'LOCATIONS'
FROM EMPLOYEES as e
INNER JOIN LOCATIONS as l
WHERE e.id = l.EMPLOYEE_ID
GROUP BY e.NAME
HAVING COUNT(l.EMPLOYEE_ID) >= 2;


-- 19 - Construa uma consulta capaz de exibir somente os clientes que realizaram mais ou igual a 2 locações.

SELECT c.NAME, COUNT(l.CUSTOMER_ID) as 'LOCATIONS'
FROM CUSTOMERS as c
INNER JOIN LOCATIONS as l
WHERE c.id = l.CUSTOMER_ID
GROUP BY c.NAME
HAVING COUNT(l.CUSTOMER_ID) >= 2;

-- 20 - Construa uma consulta capaz de exibir todas as locações realizadas, assim como também o nome do cliente, do automóvel e do funcionário vinculados em cada locação

SELECT l.ID, l.START_DATE, l.END_DATE, l.TOTAL, c.NAME as 'CUSTOMER', car.NAME as 'CAR', e.NAME as 'EMPLOYEE'
FROM LOCATIONS as l
INNER JOIN CUSTOMERS as c
INNER JOIN CARS as car
INNER JOIN EMPLOYEES as e
WHERE l.CUSTOMER_ID = c.ID AND
l.CAR_ID = car.ID AND
l.EMPLOYEE_ID = e.ID;

-- 21 - Construa uma consulta capaz de exibir quantas locações existem na tabela de LOCATIONS

SELECT COUNT() as 'TOTAL LOCATIONS'
FROM LOCATIONS;

-- 22 - Construa uma consulta capaz de exibir qual foi a locação com o TOTAL com maior valor.

SELECT * FROM LOCATIONS
WHERE TOTAL = (SELECT MAX(TOTAL) FROM LOCATIONS);

-- 23 - Construa uma consulta capaz de exibir todas as locações realizadas, entre as datas “2022-05-20” a “2022-12-25”

SELECT * FROM LOCATIONS
WHERE START_DATE BETWEEN '2022-05-20' AND '2022-12-15';