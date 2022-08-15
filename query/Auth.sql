GO
CREATE PROCEDURE usp_Addmin (
	 @username varchar(255)= NULL ,
	 @email_address varchar(255) = NULL,
	 @password varchar(255) = NULL,
	 @StatementType nvarchar(20) = '')
AS 
BEGIN 
	IF @StatementType = 'Insert'
		BEGIN
			declare @salt  uniqueidentifier  = newid()
			INSERT INTO Addmin VALUES(
			@username
			,@email_address
			,hashbytes('sha2_512', @password+cast(@salt as nvarchar(36))),
			@salt)
		END
	IF @StatementType = 'Update'
		BEGIN
		UPDATE Addmin SET password = hashbytes('sha2_512', @password+cast(@salt as nvarchar(36))), salt = @salt WHERE email_address = @email_address
		END
	IF @StatementType = 'Auth'
		BEGIN
		SELECT username, email_address    from  Addmin WHERE email_address = @email_address AND password = hashbytes('sha2_512', @password+cast(salt as nvarchar(36)))
		END
END
GO


GO
CREATE PROCEDURE usp_Users (
	 @first_name varchar(255)= NULL ,
	 @midlle_name varchar(255)= NULL,
	 @last_name varchar(255) =NULL,
	 @gender varchar(255) =NULL,
	 @phone varchar(255)  =NULL,
	 @email_address varchar(255) = NULL,
	 @password varchar(255) = NULL,
	 @StatementType nvarchar(20) = '')
AS 
BEGIN 
	IF @StatementType = 'Insert'
		BEGIN
			
			INSERT INTO Users VALUES(
			@first_name
			,@midlle_name
			,@last_name
			,@gender
			,@phone
			,@email_address
			,NULL
			,NULL
			,'false')
		END
	IF @StatementType = 'Update'
		BEGIN
		declare @salt  uniqueidentifier  = newid()
		UPDATE Users SET password = hashbytes('sha2_512', @password+cast(@salt as nvarchar(36))), salt = @salt , verified = 'true' WHERE email_address = @email_address
		END
	IF @StatementType = 'Auth'
		BEGIN
		SELECT gender, email_address , verified   from Users WHERE email_address = @email_address AND password = hashbytes('sha2_512', @password+cast(salt as nvarchar(36)))
		END
END
GO

GO

SELECT  * FROM Users WHERE email_address =

EXECUTE  usp_Users

	@email_address = 'abc@gmail.com'
	,@password = '1234' 
	,@StatementType = 'Update'
GO




-- TODO: Set parameter values here.
GO
EXECUTE  usp_Users
   @first_name = 'Nor'
  ,@midlle_name = 'Ali'
  ,@last_name = 'Hassan'
  ,@gender = 'Male'
  ,@phone = '+252989898'
  ,@email_address = 'abc@gmail.com'
  ,@StatementType = 'Insert'
GO







EXECUTE  usp_Users
	@email_address = 'abc@gmail.com'
	,@password = '1234' 
	,@StatementType = 'Auth'
GO

select * from Users



EXECUTE usp_Addmin
	@username = 'admin' ,
	@email_address = 'addmin@gmail.com',
	@password = 'addmin123',
	@StatementType ='Insert'
GO

EXECUTE usp_Addmin
	@email_address = 'addmin@gmail.com',
	@password = 'addmin123',
	@StatementType ='Auth'
GO
select * from Addmin