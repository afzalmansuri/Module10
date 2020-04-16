--Task 1------------------------------------------------------


CREATE FUNCTION dbo.IntegerListToTable
( @InputList nvarchar(MAX),@Delimiter nchar(1) = N',')
RETURNS @OutputTable TABLE (PositionInList int IDENTITY(1, 1) NOT NULL,IntegerValue int)
AS BEGIN
		INSERT INTO @OutputTable (IntegerValue)
		SELECT Value FROM STRING_SPLIT ( @InputList , @Delimiter );
	RETURN;
END;
GO




CREATE function funJoinNames
	(@FirstName varchar(20), @LastName varchar(20))
returns	@result table (FullName varchar(50))
as begin
	insert into @result(FullName) select concat(@FirstName,' ',@LastName) AS FullName;
	Return;
end;
go


--Task 2------------------------------------------------------


select * from dbo.funJoinNames('demo','azzza');
select * from dbo.funJoinNames('xyzaaa','zzz');
select * from dbo.funJoinNames('hsq','dgrger');