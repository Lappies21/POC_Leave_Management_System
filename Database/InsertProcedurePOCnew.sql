create procedure POCInsert
@Firstname varchar(20),
@Lastname varchar(20),
@LeaveStartDate datetime,
@LeaveEndDate datetime,
@TypeOfLeave varchar(20),
@Reason varchar(250),
@TotalLeave int,
@TotalLeaveLeft int
as
begin
insert into Leave(First_Name,Last_Name,Leave_Start_Date,Leave_End_Date,Type_Of_Leave,Reason,Total_Leave,Total_Leave_Left)
values(@Firstname,@Lastname,@LeaveStartDate,@LeaveEndDate,@TypeOfLeave,@Reason,@TotalLeave,@TotalLeaveLeft)
end
