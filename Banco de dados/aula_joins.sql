CREATE DATABASE join_da_giovana;
USE join_da_giovana; 
CREATE TABLE Clientes (
    ID_Cliente INT NOT NULL IDENTITY,
    Nome_Cliente VARCHAR(100),
    Email VARCHAR(100),
    CONSTRAINT pk_clientes PRIMARY KEY (ID_Cliente)
);
CREATE TABLE Produtos (
    ID_Produto INT NOT NULL,
    Nome_Produto VARCHAR(100),
    Preco DECIMAL(10, 2),
    CONSTRAINT pk_Produtos PRIMARY KEY (ID_Produto)
);
CREATE TABLE Vendas (
    ID_Venda INT NOT NULL IDENTITY,
    ID_Cliente_FK INT,  
    ID_Produto_FK INT,  
    Quantidade INT,
    CONSTRAINT pk_vendas PRIMARY KEY (ID_Venda),
    CONSTRAINT fk_id_cliente FOREIGN KEY (ID_Cliente_FK) REFERENCES Clientes(ID_Cliente),
    CONSTRAINT fk_id_produto FOREIGN KEY (ID_Produto_FK) REFERENCES Produtos(ID_Produto)
);
 INSERT INTO Clientes VALUES ('Ana Beatriz', 'ana@email.com'),('Bruno Dias', 'bruno@email.com'), 
('Marcos Lima', 'marcos@email.com'),('Julia Mendes', 'julia@email.com'),('Sofia Reis', 'sofia@email.com');
INSERT INTO Produtos VALUES(101, 'Teclado Mecânico', 350.00), (102, 'Mouse Óptico', 120.50),
(103, 'Headset Gamer', 499.90),(104, 'Webcam HD', 210.00), (105, 'Monitor 4K', 1800.00);
INSERT INTO Vendas (ID_Cliente_FK, ID_Produto_FK, Quantidade)
VALUES (1, 101, 1),
(2, 102, 2), 
(1, 103, 1), 
(3, 101, 1), 
(3, 104, 1); 

--verificando inserts
SELECT * FROM Clientes;
SELECT * FROM Produtos;
SELECT * FROM Vendas;
--INNER JOIN
--LEFT JOIN
--OUTTER
--FULL JOIN
SELECT clientes.Nome_Cliente, produtos.Nome_Produto, vendas.Quantidade
FROM vendas
JOIN clientes ON vendas.ID_cliente_FK = clientes.ID_Cliente
JOIN produtos ON vendas.ID_produto_FK = produtos.ID_Produto
/*PT-BR
SELECIONE tabelaCliente.nomeCliente, tabelaProduto.nomeProduto, tabelaVendas.quantidade
DE tabelaVendas
JUNTO COM tabelaClientes LIGADAS PELO id_cliente EM AMBAS TABELAS 
JUNTO COM tabelaProdutos LIGADOS PELO id_produto EM AMBAS TABELAS
*/
--USANDO O ALIASING (TRAZER NOME PRODUTO E QUANTIDADE DE VENDA)
SELECT p.Nome_Produto, v.Quantidade
FROM Produtos AS p
JOIN Vendas AS v 
ON p.ID_Produto = v.ID_Produto_FK

--clientes que fizeram uma compra pelo menos
SELECT Nome_Cliente FROM Clientes
JOIN Vendas ON Clientes.ID_Cliente = Vendas.ID_Cliente_FK

--USANDO O DISTINCT (tirar duplicados)
SELECT DISTINCT c.Nome_Cliente FROM Clientes AS c
JOIN Vendas AS v ON c.ID_Cliente = v.ID_Cliente_FK

--USANDO LEFT JOIN (TRAZ TUDO DA TABELA DA ESQUERDA)
SELECT c.Nome_Cliente, v.ID_Venda
FROM Clientes AS c
LEFT JOIN Vendas as v
ON c.ID_Cliente = v.ID_Cliente_FK




--USANDO RIGHT JOIN 
SELECT p.Nome_Produto, v.ID_Venda
FROM Vendas AS v 
RIGHT JOIN Produtos AS p
ON v.ID_Produto_FK = p.ID_Produto

--USANDO FULL JOIN (TRAZ TUDO DE TODAS AS TABELAS)
SELECT c.Nome_Cliente, p.Nome_Produto
FROM Clientes AS c
FULL JOIN Vendas AS v ON c.ID_Cliente = v.ID_Cliente_FK
FULL JOIN Produtos AS p ON v.ID_Produto_FK = p.ID_Produto

--USANDO CROSS JOIN (junta tabela A+ tabela B, sem critério)
SELECT c.Nome_Cliente, p.Nome_Produto
FROM Clientes AS c
CROSS JOIN Produtos AS p

-- DESAFIO: LISTAR QUEM NUNCA FEZ COMPRA (usando where)
SELECT c.Nome_Cliente
FROM Clientes AS c
LEFT JOIN Vendas AS v 
ON c.ID_Cliente = v.ID_Cliente_FK
WHERE v.ID_Venda IS NULL


-- DESAFIO - MOSTRA NOME DOS CLIENTES QUE COMPRARAM UM TECLADO MECANICO
SELECT DISTINCT c.Nome_Cliente
FROM Clientes AS c
JOIN Vendas AS v ON c.ID_Cliente = v.ID_Cliente_FK
JOIN Produtos AS p ON v.ID_Produto_FK = p.ID_Produto
WHERE p.Nome_Produto = 'Teclado Mecânico';

-- DESAFIO - CALCULE FATURAMENTO TOTAL (PRECO*QUANTIDADE) DE CADA CLIENTE
SELECT c.Nome_Cliente, 
	SUM(p.Preco * v.Quantidade) AS Faturamento_Total
FROM Clientes AS c
JOIN Vendas AS v ON c.ID_Cliente = v.ID_Cliente_FK
JOIN Produtos AS p ON v.ID_Produto_FK = p.ID_Produto
GROUP BY c.Nome_Cliente;

-- DESAFIO - LISTE TODOS CLIENTES QUE COMPRARAM MAIS QUE UM PRODUTO
SELECT DISTINCT c.Nome_Cliente
FROM Clientes AS c
WHERE c.ID_Cliente IN (
    SELECT ID_Cliente_FK
    FROM Vendas
    GROUP BY ID_Cliente_FK
    HAVING COUNT(ID_Produto_FK) > 1
);

