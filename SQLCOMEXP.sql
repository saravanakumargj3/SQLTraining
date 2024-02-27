CREATE TABLE #StudentsMark --temporary data
( Physics int , Maths int, English int)

INSERT INTO #StudentsMark(Physics, Maths, English )
VALUES( 99,100,56);

SELECT * FROM #StudentsMark


WITH CTE AS (
SELECT * FROM Sales WHERE CustomerID = 1)
SELECT*FROM CTE -- can only be used once