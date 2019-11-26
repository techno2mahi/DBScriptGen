CREATE TABLE [dbo].[ReleaseVersion] (
    ReleaseDate Datetime NOT NULL,
    ReleaseVersion  VARCHAR (10) not NULL,
	ReleaseDescription  VARCHAR (100) NOT NULL,
	DBScriptFileName VARCHAR (50) NOT NULL 
);

