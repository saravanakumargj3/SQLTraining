CREATE TABLE #StudentsMark --temporary data
( Physics int , Maths int, English int)

INSERT INTO #StudentsMark(Physics, Maths, English )
VALUES( 99,100,56);

CREATE TABLE #StudentsMark2 --temporary data
( Physics int , Maths int, English int)

INSERT INTO #StudentsMark2(Physics, Maths, English )
VALUES( 11,10,56);

SELECT * FROM #StudentsMark
UNION 
SELECT * FROM #StudentsMark2

SELECT * FROM #StudentsMark
INTERSECT

SELECT * FROM #StudentsMark2

UPDATE #StudentsMark2 SET Physics = 80 WHERE Maths=10