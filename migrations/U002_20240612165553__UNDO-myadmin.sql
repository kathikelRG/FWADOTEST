SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Dropping constraints from [dbo].[PurchaseOrders]'
GO
ALTER TABLE [dbo].[PurchaseOrders] DROP CONSTRAINT [PK__Purchase__036BAC4430D0C51E]
GO
PRINT N'Dropping constraints from [dbo].[PurchaseOrders]'
GO
ALTER TABLE [dbo].[PurchaseOrders] DROP CONSTRAINT [DF__PurchaseO__PODat__3E1D39E1]
GO
PRINT N'Dropping [dbo].[get_PurchaseOrder]'
GO
DROP PROCEDURE [dbo].[get_PurchaseOrder]
GO
PRINT N'Dropping [dbo].[PurchaseOrders]'
GO
DROP TABLE [dbo].[PurchaseOrders]
GO

