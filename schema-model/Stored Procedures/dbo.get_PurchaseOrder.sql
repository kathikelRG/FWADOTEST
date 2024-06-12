SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[get_PurchaseOrder](@PurchaseOrderID INT) AS
	SELECT *
	FROM dbo.PurchaseOrders 
	WHERE PurchaseOrderID = @PurchaseOrderID;
GO
