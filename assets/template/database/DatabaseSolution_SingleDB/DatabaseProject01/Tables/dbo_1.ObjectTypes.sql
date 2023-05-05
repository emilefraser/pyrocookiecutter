CREATE TABLE [dbo].[ObjectTypes] (
    [ObjectTypeId]   INT          IDENTITY (1, 1) NOT NULL,
    [ObjectTypeCode] NVARCHAR (5) NULL,
    [ObjectTypeName] [sysname]    NOT NULL,
    PRIMARY KEY CLUSTERED ([ObjectTypeId] ASC)
);

