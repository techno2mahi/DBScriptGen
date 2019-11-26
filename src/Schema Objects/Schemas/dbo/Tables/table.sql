CREATE TABLE [dbo].[ReleaseVersion] (
    ReleaseDate Datetime NOT NULL,
    ReleaseVersion  VARCHAR (10) not NULL,
	ReleaseDescription  VARCHAR (10) NOT NULL,
	DBScriptFileName VARCHAR (10) NOT NULL 
);

