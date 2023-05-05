CREATE RULE [Sales].[shipdateafterlaunch]
    AS @shipperdate >= '2000-01-01';


GO
EXECUTE sp_bindrule @rulename = N'[Sales].[shipdateafterlaunch]', @objname = N'[Sales].[Orders].[shippeddate]';

