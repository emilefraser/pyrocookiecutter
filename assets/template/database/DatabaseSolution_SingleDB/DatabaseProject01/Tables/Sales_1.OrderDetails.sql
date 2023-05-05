CREATE TABLE [Sales].[OrderDetails] (
    [orderid]   INT            NOT NULL,
    [productid] INT            NOT NULL,
    [unitprice] MONEY          CONSTRAINT [DFT_OrderDetails_unitprice] DEFAULT ((0)) NOT NULL,
    [qty]       SMALLINT       CONSTRAINT [DFT_OrderDetails_qty] DEFAULT ((1)) NOT NULL,
    [discount]  NUMERIC (4, 3) CONSTRAINT [DFT_OrderDetails_discount] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED ([orderid] ASC, [productid] ASC),
    CONSTRAINT [CHK_discount] CHECK ([discount]>=(0) AND [discount]<=(1)),
    CONSTRAINT [CHK_qty] CHECK ([qty]>(0)),
    CONSTRAINT [CHK_unitprice] CHECK ([unitprice]>=(0)),
    CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY ([productid]) REFERENCES [Production].[Products] ([productid])
);


GO
CREATE NONCLUSTERED INDEX [idx_nc_orderid]
    ON [Sales].[OrderDetails]([orderid] ASC);


GO
CREATE NONCLUSTERED INDEX [idx_nc_productid]
    ON [Sales].[OrderDetails]([productid] ASC);


GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [Sales].tr_Sales_OrderDetails
   ON  Sales.OrderDetails
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	

    -- Insert statements for trigger here
	INSERT INTO dbo.LogTable (LogValue)
	SELECT orderid from inserted

END
