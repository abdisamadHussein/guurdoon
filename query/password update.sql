USE [Guryosamo]
GO



-- TODO: Set parameter values here.

EXECUTE usp_Users
	@email_address = 'nacima@gmail.com'
	,@password = '123'
  ,@StatementType = 'Update'
GO

