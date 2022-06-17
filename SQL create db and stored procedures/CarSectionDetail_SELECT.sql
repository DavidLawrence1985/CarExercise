USE [CarDB]
GO

/****** Object:  StoredProcedure [dbo].[Select_UserToDos]    Script Date: 6/15/2022 7:40:33 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		David Lawrence
-- Create date: 6/15/2022
-- Description:	Select Car Section Details by CarSectionID
-- =============================================
CREATE PROCEDURE [dbo].[CarSectionDetials_SELECT] 
	-- Add the parameters for the stored procedure here
	@CarSectionID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	SELECT * FROM CarSectionDetail where CarSectionID = @CarSectionID

END
GO


