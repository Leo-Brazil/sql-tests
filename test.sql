-- Criação da tabela de produto (banco de dados de teste)
CREATE TABLE tbproduto (
    PRODUTO VARCHAR(20),
    NOME VARCHAR(150),
    EMBALAGEM VARCHAR(50),
    TAMANHO VARCHAR(50),
    SABOR VARCHAR(50),
    PRECO_LISTA FLOAT
);

-- Inserindo dados na tabela
INSERT INTO tbproduto (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA)
VALUES ('1037797', 'Clean - 2 Litros - Laranja', 'PET', '2 Litros', 'Laranja', 16.01),
       ('1000889', 'Sabor da Montanha - 700 ml - Uva', 'Garrafa', '700 ml', 'Uva', 6.31),
       ('1004327', 'Videira do Campo - 1,5 Litros - Melância', 'PET', '1,5 Litros', 'Melância', 19.51),
       ('544931', 'Frescor do Verão - 350 ml - Limão', 'PET', '350 ml', 'Limão', 3.20),
       ('1078680', 'Frescor do Verão - 470 ml - Manga', 'Lata', '470 ml', 'Manga', 5.18);

-- Atualizando o registro da tabela
UPDATE tbproduto SET EMBALAGEM = 'Lata', PRECO_LISTA = 2.46 WHERE PRODUTO = '544931';
UPDATE tbproduto SET EMBALAGEM = 'Garrafa' WHERE PRODUTO = '1078680';

-- Deletando um registro da tabela
DELETE FROM tbproduto WHERE PRODUTO = '1078680';

-- Alternando a chave primaria do registro da tabela
ALTER TABLE tbproduto ADD PRIMARY KEY (PRODUTO);

-- Outra tabela de cliente agora em baixo

-- Teste de filtragem dos registros na hora de vê-los
SELECT * FROM tbcliente WHERE IDADE = 22;
SELECT * FROM tbcliente WHERE IDADE > 22;
SELECT * FROM tbcliente WHERE IDADE < 22;
SELECT * FROM tbcliente WHERE IDADE <= 22;
SELECT * FROM tbcliente WHERE IDADE <> 22;
SELECT * FROM tbcliente WHERE NOME > 'Fernando Cavalcante';
SELECT * FROM tbcliente WHERE NOME <> 'Fernando Cavalcante';

-- Filtragem por data de nascimento
SELECT * FROM tbcliente WHERE DATA_NASCIMENTO = '1995-01-13';
SELECT * FROM tbcliente WHERE DATA_NASCIMENTO > '1995-01-13';
SELECT * FROM tbcliente WHERE DATA_NASCIMENTO <= '1995-01-13';
SELECT * FROM tbcliente WHERE YEAR(DATA_NASCIMENTO) = 1995;
SELECT * FROM tbcliente WHERE MONTH(DATA_NASCIMENTO) = 10;

-- Diferentes filtragens para as duas tabelas "tbproduto" e "tbcliente"
SELECT * FROM tbproduto WHERE PRECO_LISTA BETWEEN 16.007 AND 16.009;
SELECT * FROM tbproduto WHERE EMBALAGEM = 'Garrafa' AND TAMANHO = '700 ml';
SELECT * FROM tbcliente;
SELECT * FROM tbcliente WHERE IDADE >= 18 AND SEXO = 'M';
SELECT * FROM tbcliente WHERE CIDADE = 'Rio de Janeiro' OR BAIRRO = 'Jardim';
