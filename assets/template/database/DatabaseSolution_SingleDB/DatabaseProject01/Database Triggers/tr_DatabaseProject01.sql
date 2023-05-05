
CREATE TRIGGER tr_DatabaseProject01 ON DATABASE 
	FOR DROP_TABLE, ALTER_TABLE
AS 
IF IS_MEMBER ('db_owner') = 0
BEGIN
   PRINT 'You must ask your DBA to drop or alter tables!' 
   ROLLBACK TRANSACTION
END

