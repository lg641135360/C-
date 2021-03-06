USE [StuFileManagement]
GO
/****** Object:  StoredProcedure [dbo].[updateStuBySno]    Script Date: 07/07/2018 21:33:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[updateStuBySno]
@stuNo varchar(50),
@stuName varchar(50),
@stuSex varchar(2),
@stuNation varchar(50),
@stuBirthDate datetime,
@stuBirthPlace varchar(50),
@stuAdmissionTime datetime
as 
	begin 
		update StuInfo set name = @stuName,
						sex = @stuSex,
						nation = @stuNation,
						birthDate = @stuBirthDate,
						birthPlace = @stuBirthPlace,
						admissionTime = @stuAdmissionTime
				where sno = @stuNo
						
	end
