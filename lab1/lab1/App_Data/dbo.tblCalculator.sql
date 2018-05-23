CREATE TABLE [dbo].[tblCalculator]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1), 
    [Operand1] DECIMAL(18, 2) NOT NULL, 
    [Operator] CHAR NOT NULL, 
    [Operand2] DECIMAL(18, 2) NOT NULL, 
    [Result] DECIMAL(38, 2) NOT NULL, 
    [TimeStamp] DATETIME NOT NULL, 
    [UserName] VARCHAR(50) NULL
)
