CREATE TABLE [dbo].[PurchaseOrders]
(
[PurchaseOrderID] [int] NOT NULL IDENTITY(1, 1),
[CustomerID] [nchar] (40) NOT NULL,
[PODate] [date] NOT NULL CONSTRAINT [DF__PurchaseO__PODat__3E1D39E1] DEFAULT (CONVERT([date],getdate()))
)
GO
ALTER TABLE [dbo].[PurchaseOrders] ADD CONSTRAINT [PK__Purchase__036BAC4430D0C51E] PRIMARY KEY CLUSTERED ([PurchaseOrderID])
GO
