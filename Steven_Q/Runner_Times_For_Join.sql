USE [Runner_Data]
GO

DROP TABLE [dbo].[Runner_Times]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Runner_Times](
	[runnerId] [varchar](50) NULL,
	[5K] [varchar](50) NULL,
	[10K] [varchar](50) NULL,
	[15K] [varchar](50) NULL,
	[20K] [varchar](50) NULL,
	[25K] [varchar](50) NULL,
	[30K] [varchar](50) NULL,
	[35K] [varchar](50) NULL,
	[40K] [varchar](50) NULL
) ON [PRIMARY]
GO


BULK INSERT Runner_Times
FROM 'C:\Users\Steven Quitugua\Desktop\ETL-runners-project\Steven_Q\Runner_Times.csv'
WITH
(
FIRSTROW = 2,
FIELDTERMINATOR =',',
ROWTERMINATOR ='\n'
)
SELECT * FROM Runner_Times;