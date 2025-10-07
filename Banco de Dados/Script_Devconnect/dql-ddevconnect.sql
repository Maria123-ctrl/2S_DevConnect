USE tb_ddevconnect;

SELECT TOP 2 nome_completo FROM tabela_usuario;

SELECT id 
FROM tb_usuario
ORDER BY id ASC;

SELECT TOp 2 nome_usuario 
FROM tb_usuario
ORDER BY id DESC;

SELECT email, senha
FROM tb_usuario
WHERE nome = 'Eduarda De Costas Santos';

SELECT nome_completo, email
