CREATE TABLE [dbo].[Table1] (
    [Column1] NCHAR (10) NULL,
    [Column2] NCHAR (10) NULL,
    [Column3] NCHAR (10) NULL
);




GO
CREATE TRIGGER dbo.trg_Table1_audit
ON dbo.Table1
AFTER INSERT, DELETE
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO [dbo].[Table1_Transaction](
        [Column1], 
        [Column2],
        [Column3],
		[CreatedDate],
		[Action] 
    )
    SELECT
         [Column1], 
        [Column2],
        [Column3], 
        GETDATE(),
        'INS'
    FROM
        inserted i
    UNION ALL
    SELECT
      [Column1], 
        [Column2],
        [Column3], 
        GETDATE(),
        'DEL'
    FROM
        deleted d;
END