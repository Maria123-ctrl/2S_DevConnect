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
WHERE nome = 'Eduarda De Costas'

--1 Exiba todos os nomes dos seguidores (de quem esta seguindo e de quem sera seguido)
SELECT 
    seguidor.nome_completo AS Nome_Seguidor,
    seguido.nome_completo AS Nome_Seguido
FROM tabela_seguidor ts
INNER JOIN tabela_usuario seguidor ON ts.idusuarioSeguidor = seguidor.id
    
INNER JOIN tabela_usuario seguido ON ts.idusuarioSeguir = seguido.id;

--2 exiba quando seguidores possui um respectivo usuario
SELECT 
    u.nome_usuario,
    COUNT(ts.idusuarioSeguidor) AS total_seguidores
FROM 
    tabela_usuario u
LEFT JOIN  
    tabela_seguidor ts ON u.id = ts.idusuarioSeguir
GROUP BY 
    u.nome_usuario, u.id;

--3 exiba todas as publicacoes contendo descricao, o caminho da imagem, o nome de usuario
SELECT 
    p.descricao,
    p.imagem_url,
    u.nome_usuario
FROM tabela_publicacao p
FULL JOIN tabela_usuario u ON p.imagem_url = u.nome_usuario;
    
--4 exiba todos os comentarios com o nome e o texto de uma respectiva publicacao
SELECT 
    p.descricao,
    u.nome_usuario
FROM tabela_publicacao p
FULL JOIN tabela_usuario u ON p.descricao = u.nome_usuario;

--5 exiba a quantidade de curtida de uma respectiva publicacao
SELECT
    p.id,
    p.descricao,
    COUNT(c.id) AS total_curtida
FROM
    tabela_publicacao AS p
LEFT JOIN
    tabela_curtida AS c ON p.id = c.id_publicacao
GROUP BY
    p.id, p.descricao
ORDER BY total_curtida DESC;



--6 exiba todos os usuarios que nao chegaram a fazer publicacoes
SELECT 
    u.id,
    u.nome_usuario
FROM tabela_usuario u
FULL JOIN tabela_publicacao p ON u.id = p.id_usuario
WHERE p.id IS NULL;

--7 exiba tods os usuarios que nao chegaram a fazer reacoes
SELECT 
    u.id,
    u.nome_usuario,
    u.nome_completo
FROM 
    tabela_usuario u
LEFT JOIN 
    tabela_curtida c ON u.id = c.id_usuario
WHERE 
    c.id IS NULL;

