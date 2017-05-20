-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
Use MSHA
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Alter PROCEDURE Geo_Location 
	-- Add the parameters for the stored procedure here
	@Longitude nvarchar(255), 
	@Latitude nvarchar(255),
	@rows	  nvarchar(255)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
DECLARE @h geography;
DECLARE	@r integer;
SET @h = geography::STGeomFromText('POINT(86.963333 33.038055)', 4326);
SET @h = geography::STGeomFromText('POINT(' + @Longitude + ' ' + @Latitude + ')', 4326);
set @r = @rows

    -- Insert statements for procedure here
SELECT top (@r) msha_Mine_curr_mine_nm as [Mine Name],msha_Mine_state_abbr as [State Code],msha_Mine_nearest_town as [Nearest Town], msha_Mine_longitude as [Longitude], msha_Mine_latitude as [Latitude], (geoLocation.STDistance(@h)) as Distance
from [MSHA_Mine]
where [msha_Mine_latitude] <> ''
---	SELECT <@Param1, sysname, @p1>, <@Param2, sysname, @p2>

	
END
GO


--- GeoLocation coloum creation

Alter table dbo.MSHA_Mine
add [GeoLocation] GEOGRAPHY 
Go


UPDATE [dbo].[MSHA_Mine]
SET [GeoLocation] = geography::STPointFromText('POINT(' + CAST([msha_Mine_longitude] AS VARCHAR(20)) + ' ' + 
                    CAST([msha_Mine_latitude] AS VARCHAR(20)) + ')', 4326)
     where [msha_Mine_latitude] <> '' and
           [msha_Mine_longitude] <> '' and 
       ( MSHA_Mine_Latitude < '90.0'
       )
GO


