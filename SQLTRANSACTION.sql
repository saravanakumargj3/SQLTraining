CREATE TABLE StudentsMark 
( Grade int,Physics int , Maths int, English int)

INSERT INTO StudentsMark(Grade,Physics, Maths, English )
VALUES(1,99,100,56);

CREATE TABLE StudentsMark2 --temporary data
(Grade int, Physics int , Maths int, English int)

INSERT INTO StudentsMark2(Grade,Physics, Maths, English )
VALUES(2, 11,10,56);


BEGIN TRANSACTION
UPDATE StudentsMark2 set Grade =3
SELECT * FROM StudentsMark2
rollback TRANSACTION
SELECT * FROM StudentsMark2
COMMIT Transaction

SELECT * FROM StudentsMark2

UPDATE StudentsMark2 SET Grade = 1