use POC
create table Leave
(
ID int identity(1,1) Primary key,
First_Name varchar(20),
Last_Name varchar(20),
Leave_Start_Date Datetime2,
Leave_End_Date datetime2,
Type_Of_Leave varchar(20),
Reason varchar(255),
Total_Leave int,
Total_Leave_Left int
)
go
