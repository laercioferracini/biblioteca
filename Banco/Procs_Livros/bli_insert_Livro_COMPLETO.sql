USE [DB_BIBLIOTECA]
GO
/****** Object:  StoredProcedure [dbo].[BLI_INSERT_LIVRO]    Script Date: 30/08/2015 00:57:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[BLI_INSERT_LIVRO]
(
	@NOME  		AS VARCHAR(80),
	@AUTOR		AS VARCHAR(50),
	@ANO		AS SMALLINT,
	@GENERO		AS VARCHAR(50),
	@EDITORA	AS VARCHAR(50),
	@PAGINAS	AS SMALLINT,
	@STATUS		AS CHAR(1)
) 

AS 
	INSERT INTO TB_LIVROS (NOME, AUTOR, ANO, GENERO, EDITORA, PAGINAS, STATUS)
	VALUES (@NOME, @AUTOR, @ANO, @GENERO, @EDITORA,	@PAGINAS, @STATUS) 