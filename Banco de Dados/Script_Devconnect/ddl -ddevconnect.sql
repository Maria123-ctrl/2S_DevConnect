CREATE DATABASE tb_ddevconnect;

USE tb_ddevconnect;

create TABLE tabela_usuario(
	id INT IDENTITY (1,1) PRIMARY KEY,
	nome_completo NVARCHAR(255),
	nome_usuario NVARCHAR(30) UNIQUE,
	email NVARCHAR(255) UNIQUE NOT NULL,
	senha NVARCHAR(50) UNIQUE NOT NULL,
	foto_perfil_url NVARCHAR(150) NULL

);

SELECT * FROM tabela_usuario;

--ALTER TABLE tabela_usuario
--ALTER COLUMN foto_perfil_url NVARCHAR(150) NULL;


CREATE TABLE tabela_publicacao(
	id INT IDENTITY(1,1) PRIMARY KEY,
	descricao NVARCHAR(255),
	imagem_url NVARCHAR(255) NOT NULL,
	data_publi DATE,

	
	id_usuario INT FOREIGN KEY REFERENCES tabela_usuario(id)
);

SELECT * FROM tabela_publicacao;

CREATE TABLE tabela_comentario(
	id INT IDENTITY(1,1) PRIMARY KEY,
	id_usuario INT NOT NULL FOREIGN KEY REFERENCES tabela_usuario(id),
	id_publicacao INT NOT NULL FOREIGN KEY REFERENCES tabela_publicacao(id),
	texto NVARCHAR(255) NOT NULL

);

SELECT * FROM tabela_comentario;

CREATE TABLE tabela_seguidor(
	idusuarioSeguir INT NOT NULL,
	idusuarioSeguidor INT NOT NULL,
	PRIMARY KEY (idusuarioseguir, idusuarioseguidor),

);
SELECT * FROM tabela_seguidor;

CREATE TABLE tabela_curtida(
	id INT IDENTITY(1,1) PRIMARY KEY,
	id_usuario INT FOREIGN KEY REFERENCES tabela_usuario(id),
	id_publicacao INT FOREIGN KEY REFERENCES tabela_publicacao(id)
);

SELECT * FROM tabela_curtida;
