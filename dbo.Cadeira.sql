CREATE TABLE [dbo].[Cadeira]
(
	[Codigo] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Cor] NVARCHAR(50) NOT NULL, 
    [Modelo] NVARCHAR(50) NOT NULL, 
    [Marca] NVARCHAR(50) NOT NULL, 
    [Preco] DECIMAL(18, 2) NOT NULL, 
    [DataCompra] DATETIME NOT NULL, 
    [Entrega] NVARCHAR(50) NOT NULL, 
    [Descricao] NVARCHAR(MAX) NOT NULL
)
