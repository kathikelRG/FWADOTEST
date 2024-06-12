SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Creating [dbo].[PurchaseOrders]'
GO
CREATE TABLE [dbo].[PurchaseOrders]
(
[PurchaseOrderID] [int] NOT NULL IDENTITY(1, 1),
[CustomerID] [nchar] (40) NOT NULL,
[PODate] [date] NOT NULL CONSTRAINT [DF__PurchaseO__PODat__3E1D39E1] DEFAULT (CONVERT([date],getdate(),(0)))
)
GO
PRINT N'Creating primary key [PK__Purchase__036BAC4430D0C51E] on [dbo].[PurchaseOrders]'
GO
ALTER TABLE [dbo].[PurchaseOrders] ADD CONSTRAINT [PK__Purchase__036BAC4430D0C51E] PRIMARY KEY CLUSTERED ([PurchaseOrderID])
GO
PRINT N'Creating [dbo].[get_PurchaseOrder]'
GO
CREATE PROC [dbo].[get_PurchaseOrder](@PurchaseOrderID INT) AS
	SELECT *
	FROM dbo.PurchaseOrders 
	WHERE PurchaseOrderID = @PurchaseOrderID;
GO

