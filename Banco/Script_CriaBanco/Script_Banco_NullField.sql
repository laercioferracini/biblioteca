CREATE DATABASE DB_BIBLIOTECA
GO

CREATE TABLE TB_LIVROS
 
(
 
Id                           BIGINT IDENTITY(1,1),
Nome                         VARCHAR(100) NULL, 
Autor                        VARCHAR(50)  NULL,
Ano                          SMALLINT 	  NULL,
Genero                       VARCHAR(50)  NULL,
Editora                      VARCHAR(50)  NULL,
Paginas                      SMALLINT	  NULL,
Status                       CHAR(1) 	  NULL,

CONSTRAINT PK_TB_LIVROS_ID PRIMARY KEY NONCLUSTERED (ID)
)
GO

CREATE TABLE TB_FUNCIONARIOS
( 
Id			                  BIGINT IDENTITY(1,1),
Nome                          VARCHAR(100) NULL,
Endereco		              VARCHAR(50)  NULL,
Cidade		                  VARCHAR(50)  NULL,
Estado                        VARCHAR(30)  NULL,
Telefone                      VARCHAR(20)  NULL,
Cargo		                  VARCHAR(30)  NULL,
DataAdmissao                  DATETIME     NULL,
DataDemissao                  DATETIME     NULL,

CONSTRAINT PK_TB_FUNCIONARIOS_ID PRIMARY KEY NONCLUSTERED (ID)
)
GO

CREATE TABLE TB_CLIENTES
( 
Id	                         BIGINT IDENTITY(1,1),
Nome                         VARCHAR(100) NULL,
Endereco	                 VARCHAR(50)  NULL,
Cidadete                     VARCHAR(50)  NULL,
Estado                       VARCHAR(30)  NULL,
Telefone                     VARCHAR(20)  NULL,
Status                       CHAR(1)      NULL,

CONSTRAINT PK_TB_CLIENTES_ID PRIMARY KEY NONCLUSTERED (ID)
)
GO

CREATE TABLE TB_LOGIN
( 
Id	                         BIGINT IDENTITY(1,1),
IdPessoa                     BIGINT      NOT NULL,
Usuario		                 VARCHAR(50) NOT NULL,
Senha	                     VARCHAR(50) NOT NULL,
Status                       CHAR(1)     NOT NULL,
DataCadastro				 DATETIME    NOT NULL,
TipoUsuario					 CHAR(1)     NOT NULL,

CONSTRAINT PK_TB_LOGIN_ID PRIMARY KEY NONCLUSTERED (ID)
)
GO