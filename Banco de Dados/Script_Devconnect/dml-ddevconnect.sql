USE tb_ddevconnect;

INSERT INTO tabela_usuario(nome_completo, nome_usuario, email, senha, foto_perfil_url)
VALUES
('Eduarda De Costas Santos', 'Doarda_Costa', 'duda@123', '123', NULL),
('Ronaldo dos Santos', 'Ronaldinho', 'roo@134', '133', NULL);

SELECT * FROM tabela_usuario;

INSERT INTO tabela_publicacao(descricao, imagem_url,data_publi)
VALUES
('O dia esta muito lindo, ate parece o filme do crepusculo', '', '2025/10/02');

SELECT * FROM tabela_publicacao;

INSERT INTO tabela_comentario(id_usuario, id_publicacao, texto)
VALUES
(1,1,'O dia esta lindo hoje, meu Deus');



SELECT * FROM tabela_comentario;

INSERT INTO tabela_seguidor (idusuarioSeguidor, idusuarioSeguir)
VALUES (1,1);