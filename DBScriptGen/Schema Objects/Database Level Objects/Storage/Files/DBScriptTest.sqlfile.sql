ALTER DATABASE [$(DatabaseName)]
    ADD FILE (NAME = [DBScriptTest], FILENAME = '$(DefaultDataPath)$(DatabaseName).mdf', FILEGROWTH = 1024 KB) TO FILEGROUP [PRIMARY];

