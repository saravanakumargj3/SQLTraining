CREATE TRIGGER CreateFeeDetails 
   ON  Studentdetails 
   AFTER INSERT
AS 
BEGIN
	INSERT INTO Studentdetails(StudentID,Reason,Fee)
	VALUES(2,'sh', 70000)
END
GO


CREATE TABLE Studentdetails
(StudentID int , Reason varchar(200), Fee int);


SELECT * FROM Studentdetails


INSERT INTO Studentdetails(StudentID,Reason,Fee)
VALUES(1, 'tuition', 19000)


INSERT INTO Studentdetails(StudentID,Reason,Fee)
VALUES(3, 'blah', 19000)