-- 8- Construa uma query SQL para criar a tabela LOCATIONS (Locações) no banco de dados, e logo em seguida insira as locações abaixo:


-- ID	START_DATE	END_DATE	TOTAL	CUSTOMER_ID	CAR_ID	EMPLOYEE_ID
-- 1	2021-04-01	2021-04-07	1500	1	1	2
-- 2	2022-05-20	2022-05-30	1800	2	1	5
-- 3	2021-03-10	2021-03-21	2500	5	6	5
-- 4	2018-02-20	2018-03-05	1250	6	4	6
-- 5	2022-11-20	2022-11-29	900	1	3	2
-- 6	2019-10-01	2019-10-29	2800	3	1	6

CREATE TABLE LOCATIONS (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    START_DATE DATETIME NOT NULL,
    END_DATE DATETIME NOT NULL,
    TOTAL FLOAT(10,2) NOT NULL,
    CUSTOMER_ID INTEGER,
    CAR_ID INTEGER,
    EMPLOYEE_ID INTEGER,

    FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMERS(ID),
    FOREIGN KEY (CAR_ID) REFERENCES CARS(ID),
    FOREIGN KEY (EMPLOYEE_ID) REFERENCES EMPLOYEES(ID)
);

INSERT INTO LOCATIONS (ID, START_DATE, END_DATE, TOTAL, CUSTOMER_ID, CAR_ID, EMPLOYEE_ID) VALUES
(1, '2021-04-01', '2021-04-07', 1500, 1, 1, 2),
(2, '2022-05-20', '2022-05-30', 1800, 2, 1, 5),
(3, '2021-03-10', '2021-03-21', 2500, 5, 6, 5),
(4, '2018-02-20', '2018-03-05', 1250, 6, 4, 6),
(5, '2022-11-20', '2022-11-29', 900, 1, 3, 2),
(6, '2019-10-01', '2019-10-29', 2800, 3, 1, 6);
