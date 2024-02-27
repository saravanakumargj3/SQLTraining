Create TABLE Tableone
(ID int IDENTITY,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (ID)
);

SELECT * FROM Tableone

INSERT INTO Tableone
VALUES( 1, 'kumar', 'sk', 20),
(2, 'kumara', 'sh', 10),
(3, 'kumaran', 'hb', 21);



CREATE TABLE Tabletwo
(Company varchar(50),ID int IDENTITY, Work varchar(50), salary int);

SELECT * FROM Tabletwo

INSERT INTO Tabletwo
VALUES('lover', 'designer', 20000),
('dancer', 'songdancer', 10000),
('mover', 'truckdriver', 15000);



SELECT *
FROM Tableone T
INNER JOIN Tabletwo S ON T.ID = S.ID
FOR JSON AUTO 
-- to convert into JSON format


--easier method
SELECT *
FROM Tableone T, Tabletwo S 
WHERE T.ID = S.ID;


--cross join- gives all comabination
SELECT *
FROM Tableone T CROSS JOIN Tabletwo S 


INSERT INTO Tableone
VALUES( 4, 'kumars', 'sk', 20);
INSERT INTO Tabletwo
VALUES('lovers', 'designers', 30000);
INSERT INTO Tableone
VALUES( 5, 'lahh', 'sk', 20);

--FULL outer join - gives everything in both tables
SELECT *
FROM Tableone T FULL OUTER JOIN Tabletwo S  
ON T.ID = S.ID

INSERT INTO Tabletwo
VALUES('cha', 'singers', 30000);
INSERT INTO Tabletwo
VALUES('rs', 'dingners', 10000);
--left values are needed
SELECT *
FROM Tableone T LEFT OUTER JOIN Tabletwo S  
ON T.ID = S.ID


--right values are needed
SELECT *
FROM Tableone T RIGHT OUTER JOIN Tabletwo S  
ON T.ID = S.ID 


