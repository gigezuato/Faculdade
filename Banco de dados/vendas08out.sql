-- Cria��o do banco de dados
CREATE DATABASE cc_Giovana;
USE cc_Giovana;

-- Cria��o da tabela
CREATE TABLE Vendas08OUT (
    ProdutoID INT NOT NULL,
    DescricaoProduto VARCHAR(255),
    PrecoProduto DECIMAL(10,2),
    NomeVendedor VARCHAR(100),
    EstadoVendedor CHAR(2),
    RendaMensalVendedor DECIMAL(10,2),
    CONSTRAINT pk_produto PRIMARY KEY (ProdutoID)
);

-- Inser��o dos registros
INSERT INTO Vendas08OUT (ProdutoID, DescricaoProduto, PrecoProduto, NomeVendedor, EstadoVendedor, RendaMensalVendedor) VALUES
(101, 'Notebook Gamer Avan�ado', 7500.00, 'Carlos Silva', 'SP', 8200.00),
(102, 'Mouse �ptico sem Fio', 120.50, 'Ana Pereira', 'RJ', 5500.00),
(103, 'Teclado Mec�nico RGB', 350.75, 'Jo�o Mendes', 'MG', 6100.00),
(104, 'Monitor LED 27 polegadas', 1800.00, 'Maria Oliveira', 'SP', 7800.00),
(105, 'Cadeira Gamer Ergon�mica', 1200.00, 'Carlos Silva', 'SP', 82000.00),
(106, 'Headset 7.1 Surround', 450.00, 'Fernanda Costa', 'BA', 4900.00),
(107, 'SSD 1TB NVMe', 899.90, 'Ana Pereira', 'RJ', 5500.00),
(108, 'Webcam Full HD 1080p', 250.00, 'Ricardo Alves', 'PR', 6300.00),
(109, 'Mesa Digitalizadora', 680.00, 'Maria Oliveira', 'SP', 7800.00),
(110, 'Impressora Multifuncional', 950.00, 'Jo�o Mendes', 'MG', 6100.00),
(111, 'Roteador Wi-Fi 6 Mesh', 780.00, 'Beatriz Lima', 'RS', 7100.00),
(112, 'Placa de V�deo RTX 4060', 4200.00, 'Lucas Martins', 'SC', 9500.00),
(113, 'Mem�ria RAM 16GB DDR5', 600.00, 'Carlos Silva', 'SP', 8200.00),
(114, 'Fonte de Alimenta��o 750W', 550.00, 'Ana Pereira', 'RJ', 5500.00),
(115, 'Gabinete Mid Tower', 400.00, 'Fernanda Costa', 'BA', 4900.00),
(116, 'Cooler para Processador', 280.00, 'Ricardo Alves', 'PR', 6300.00),
(117, 'Placa-m�e AM5', 1300.00, 'Lucas Martins', 'SC', 9500.00),
(118, 'HD Externo 2TB', 450.00, 'Beatriz Lima', 'RS', 7100.00),
(119, 'Caixa de Som Bluetooth', 320.00, 'Jo�o Mendes', 'MG', 6100.00),
(120, 'Filtro de Linha 8 Tomadas', 95.00, 'Maria Oliveira', 'SP', 7800.00),
(121, 'Notebook Ultra Fino', 5200.00, 'Carlos Silva', 'SP', 8200.00),
(122, 'Mousepad Gamer GG', 150.00, 'Ana Pereira', 'RJ', 5500.00),
(123, 'Teclado sem Fio Compacto', 210.00, 'Ricardo Alves', 'PR', 6300.00),
(124, 'Monitor Curvo 32 polegadas', 2500.00, 'Lucas Martins', 'SC', 9500.00),
(125, 'Cadeira de Escrit�rio', 900.00, 'Fernanda Costa', 'BA', 4900.00),
(126, 'Headset com Cancelamento de Ru�do', 650.00, 'Beatriz Lima', 'RS', 7100.00),
(127, 'SSD Externo 500GB', 550.00, 'Jo�o Mendes', 'MG', 6100.00),
(128, 'Microfone Condensador USB', 480.00, 'Maria Oliveira', 'SP', 7800.00),
(129, 'Tablet 10 polegadas', 1500.00, 'Carlos Silva', 'SP', 8200.00),
(130, 'Smartwatch', 1100.00, 'Ana Pereira', 'RJ', 5500.00),
(131, 'Projetor HD', 2200.00, 'Lucas Martins', 'SC', 9500.00),
(132, 'Placa de V�deo RTX 4070', 6800.00, 'Lucas Martins', 'SC', 9500.00),
(133, 'Mem�ria RAM 8GB DDR4', 250.00, 'Fernanda Costa', 'BA', 4900.00),
(134, 'Fonte de Alimenta��o 550W', 380.00, 'Ricardo Alves', 'PR', 6300.00),
(135, 'Gabinete Full Tower', 800.00, 'Carlos Silva', 'SP', 8200.00),
(136, 'Water Cooler 240mm', 700.00, 'Lucas Martins', 'SC', 9500.00),
(137, 'Placa-m�e B550', 950.00, 'Jo�o Mendes', 'MG', 6100.00),
(138, 'HD Interno 4TB', 600.00, 'Beatriz Lima', 'RS', 7100.00),
(139, 'Home Theater 5.1', 1800.00, 'Maria Oliveira', 'SP', 7800.00),
(140, 'No-break 1200VA', 650.00, 'Ana Pereira', 'RJ', 5500.00),
(141, 'Notebook Corporativo', 4800.00, 'Ricardo Alves', 'PR', 6300.00),
(142, 'Mouse Vertical Ergon�mico', 180.00, 'Fernanda Costa', 'BA', 4900.00),
(143, 'Teclado Num�rico USB', 80.00, 'Jo�o Mendes', 'MG', 6100.00),
(144, 'Monitor Port�til 15 polegadas', 1100.00, 'Carlos Silva', 'SP', 8200.00),
(145, 'Suporte para Monitor', 200.00, 'Maria Oliveira', 'SP', 7800.00),
(146, 'Fone de Ouvido Bluetooth', 300.00, 'Ana Pereira', 'RJ', 5500.00),
(147, 'SSD 2TB SATA', 1200.00, 'Lucas Martins', 'SC', 9500.00),
(148, 'Webcam 4K', 850.00, 'Beatriz Lima', 'RS', 7100.00),
(149, 'Capa para Notebook', 120.00, 'Fernanda Costa', 'BA', 4900.00),
(150, 'Scanner de Mesa', 750.00, 'Ricardo Alves', 'PR', 6300.00),
(151, 'Processador Core i7', 2800.00, 'Lucas Martins', 'SC', 9500.00),
(152, 'Mouse Gamer com Fio', 220.00, 'Carlos Silva', 'SP', 8200.00),
(153, 'Teclado de Membrana', 120.00, 'Jo�o Mendes', 'MG', 6100.00),
(154, 'Monitor Ultrawide 29 polegadas', 2100.00, 'Maria Oliveira', 'SP', 7800.00),
(155, 'Apoio para P�s', 150.00, 'Ana Pereira', 'RJ', 5500.00),
(156, 'Headset B�sico com Microfone', 90.00, 'Fernanda Costa', 'BA', 4900.00),
(157, 'Pen Drive 128GB', 110.00, 'Ricardo Alves', 'PR', 6300.00),
(158, 'C�mera de Seguran�a Wi-Fi', 350.00, 'Beatriz Lima', 'RS', 7100.00),
(159, 'Kindle Paperwhite', 599.00, 'Carlos Silva', 'SP', 8200.00),
(160, 'Echo Dot (Alexa)', 349.00, 'Maria Oliveira', 'SP', 7800.00),
(161, 'Chromecast 4K', 450.00, 'Ana Pereira', 'RJ', 5500.00),
(162, 'Processador Ryzen 7', 2500.00, 'Lucas Martins', 'SC', 9500.00),
(163, 'Mem�ria RAM 32GB DDR5', 1100.00, 'Lucas Martins', 'SC', 9500.00),
(164, 'Fonte de Alimenta��o 1000W', 950.00, 'Carlos Silva', 'SP', 8200.00),
(165, 'Gabinete Compacto Mini-ITX', 500.00, 'Jo�o Mendes', 'MG', 6100.00),
(166, 'Cooler Fan RGB (Kit com 3)', 180.00, 'Ricardo Alves', 'PR', 6300.00),
(167, 'Placa-m�e Z790', 2200.00, 'Lucas Martins', 'SC', 9500.00),
(168, 'HD Externo 5TB', 850.00, 'Beatriz Lima', 'RS', 7100.00),
(169, 'Soundbar com Subwoofer', 1300.00, 'Maria Oliveira', 'SP', 7800.00),
(170, 'Bateria Externa 20000mAh', 250.00, 'Ana Pereira', 'RJ', 5500.00),
(171, 'Notebook 2 em 1 Touchscreen', 6300.00, 'Carlos Silva', 'SP', 8200.00),
(172, 'Mousepad de Couro', 180.00, 'Fernanda Costa', 'BA', 4900.00),
(173, 'Teclado Ergon�mico Dividido', 550.00, 'Ricardo Alves', 'PR', 6300.00),
(174, 'Monitor 4K 28 polegadas', 3200.00, 'Lucas Martins', 'SC', 9500.00),
(175, 'Mesa com Regulagem de Altura', 2000.00, 'Maria Oliveira', 'SP', 7800.00),
(176, 'Fone de Ouvido Esportivo', 250.00, 'Ana Pereira', 'RJ', 5500.00),
(177, 'SSD M.2 500GB', 450.00, 'Jo�o Mendes', 'MG', 6100.00),
(178, 'Ring Light', 180.00, 'Beatriz Lima', 'RS', 7100.00),
(179, 'Leitor de Cart�o de Mem�ria', 70.00, 'Fernanda Costa', 'BA', 4900.00),
(180, 'Fragmentadora de Papel', 400.00, 'Ricardo Alves', 'PR', 6300.00),
(181, 'Processador Core i9', 4500.00, 'Lucas Martins', 'SC', 9500.00),
(182, 'Mouse de Viagem', 80.00, 'Carlos Silva', 'SP', 8200.00),
(183, 'Kit Teclado e Mouse', 280.00, 'Jo�o Mendes', 'MG', 6100.00),
(184, 'Monitor Gamer 144Hz', 2300.00, 'Maria Oliveira', 'SP', 7800.00),
(185, 'Tapete Ergon�mico', 300.00, 'Ana Pereira', 'RJ', 5500.00),
(186, 'Microfone de Lapela', 120.00, 'Fernanda Costa', 'BA', 4900.00),
(187, 'Pen Drive 256GB', 200.00, 'Ricardo Alves', 'PR', 6300.00),
(188, 'L�mpada Inteligente Wi-Fi', 95.00, 'Beatriz Lima', 'RS', 7100.00),
(189, 'Smart TV 55 polegadas 4K', 3800.00, 'Carlos Silva', 'SP', 8200.00),
(190, 'Fire TV Stick', 299.00, 'Maria Oliveira', 'SP', 7800.00),
(191, 'Controle Universal Inteligente', 150.00, 'Ana Pereira', 'RJ', 5500.00),
(192, 'Processador Ryzen 9', 4200.00, 'Lucas Martins', 'SC', 9500.00),
(193, 'Mem�ria RAM 64GB DDR5', 2100.00, 'Lucas Martins', 'SC', 9500.00),
(194, 'Fonte Modular 850W', 780.00, 'Carlos Silva', 'SP', 8200.00),
(195, 'Gabinete Branco com Vidro', 600.00, 'Jo�o Mendes', 'MG', 6100.00),
(196, 'Hub USB-C 7 em 1', 320.00, 'Ricardo Alves', 'PR', 6300.00),
(197, 'Placa de Captura de V�deo', 900.00, 'Lucas Martins', 'SC', 9500.00),
(198, 'HD Externo 8TB', 1500.00, 'Beatriz Lima', 'RS', 7100.00),
(199, 'Sistema de Som 2.1', 550.00, 'Maria Oliveira', 'SP', 7800.00),
(200, 'Carregador sem Fio', 180.00, 'Ana Pereira', 'RJ', 5500.00);

-- Consulta com alias (dar um apelido para uma coluna por quest�es de seguran�a)
SELECT COUNT(*) AS TotalDeRegistros FROM Vendas08OUT;

-- Em MySQL, "TOP 10" vira "LIMIT 10"
SELECT * FROM Vendas08OUT LIMIT 10;

-- Alias pode ter caracteres especiais
SELECT DescricaoProduto AS `Nome do Produto`,
       PrecoProduto AS `Pre�o`
FROM Vendas08OUT;

SELECT DescricaoProduto AS `Nome do Produto`,
       PrecoProduto AS `Pre�o`
FROM Vendas08OUT
WHERE PrecoProduto > 2000;

-- Ordena��es - utilizar ORDER BY (ASC - crescente e DESC - decrescente) - funciona para n�meros e letras
-- Ordena��o dos produtos mais baratos para os mais caros
SELECT DescricaoProduto, PrecoProduto FROM Vendas08OUT
ORDER BY PrecoProduto ASC;

SELECT DescricaoProduto, PrecoProduto FROM Vendas08OUT
ORDER BY PrecoProduto DESC;

SELECT * FROM Vendas08OUT ORDER BY NomeVendedor;
-- ORDER BY em mais de uma coluna
SELECT NomeVendedor, DescricaoProduto, EstadoVendedor, PrecoProduto
FROM Vendas08OUT
ORDER BY NomeVendedor ASC, PrecoProduto DESC;

SELECT NomeVendedor, DescricaoProduto, EstadoVendedor, PrecoProduto
FROM Vendas08OUT
ORDER BY PrecoProduto DESC, NomeVendedor ASC;

-- Filtros com IN
-- lista das vendas que ocorreram nos estados RJ E BA
SELECT * FROM Vendas08OUT
WHERE EstadoVendedor IN ('RJ', 'BA');

-- Combina��es com AND / OR
SELECT DescricaoProduto, PrecoProduto, NomeVendedor, EstadoVendedor
FROM Vendas08OUT
WHERE PrecoProduto > 1000 AND EstadoVendedor = 'SP';

SELECT DescricaoProduto, PrecoProduto, NomeVendedor, EstadoVendedor
FROM Vendas08OUT
WHERE PrecoProduto > 5000 OR EstadoVendedor = 'SP';

-- LIKE
SELECT DescricaoProduto, PrecoProduto, NomeVendedor
FROM Vendas08OUT
WHERE NomeVendedor = 'Carlos Silva' AND (DescricaoProduto LIKE '%Notebook%' OR PrecoProduto > 4000);

SELECT DescricaoProduto, PrecoProduto, NomeVendedor
FROM Vendas08OUT
WHERE DescricaoProduto LIKE 'N%';

SELECT DescricaoProduto, PrecoProduto, NomeVendedor
FROM Vendas08OUT
WHERE DescricaoProduto LIKE '%N%';

SELECT DescricaoProduto, PrecoProduto, NomeVendedor
FROM Vendas08OUT
WHERE DescricaoProduto LIKE '%N';

SELECT * FROM Vendas08OUT WHERE DescricaoProduto LIKE '%gamer%';

-- NOT
SELECT DescricaoProduto, NomeVendedor
FROM Vendas08OUT
WHERE NOT NomeVendedor = 'Carlos Silva';

SELECT DescricaoProduto, PrecoProduto, EstadoVendedor
FROM Vendas08OUT
WHERE EstadoVendedor NOT IN ('SP', 'RJ');

-- BETWEEN
SELECT DescricaoProduto, PrecoProduto
FROM Vendas08OUT
WHERE PrecoProduto BETWEEN 400 AND 1000;

SELECT NomeVendedor
FROM Vendas08OUT
WHERE NomeVendedor BETWEEN 'A' AND 'D';

-- VIEWS -- cria��o de tabelas virtuais (adicionar uma camada a mais de prote��o nos meus selects)
-- juninho n�o pode manipular a tabela f�sica, s� virtual

CREATE VIEW VW_TOTAL_DE_VENDAS AS
SELECT
	NomeVendedor,
	COUNT(ProdutoId) AS QuantidadeDeVendas, -- COUNT - CONTAGEM
	SUM(PrecoProduto) AS ValorTotalVendido, -- SUM = SOMA
	AVG(PrecoProduto) AS TicketMedio --AVERAGE = MEDIA
FROM
	Vendas08OUT
GROUP BY NomeVendedor

SELECT * FROM VW_TOTAL_DE_VENDAS -- Select tudo da view (j� foi filtrado na cria��o dela)

DROP VIEW VW_TOTAL_DE_VENDAS -- Exclus�o apensa da tabela view (apenas tabela virtual)

/* DESAFIO 
	CRIE UM RELAT�RIO QUE MOSTRE, PARA CADA ESTADO, O NOME DO VENDEDOR,
	A QUANTIDADE DE VENDAS QUE ELE REALIZOU E O VALOR TOTAL VENDIDO POR ELE
	ORDENE RESULTADO PELO ESTADO E DEPOIS PELO TOTAL VENDIDO (MAIOR PARA O MENOR)
*/

CREATE VIEW RELATORIO_VENDAS AS
SELECT 
	NomeVendedor,
	EstadoVendedor,
	COUNT(ProdutoId) AS QuantidadeDeVendas,
	SUM(PrecoProduto) AS ValorTotalVendido
FROM
	Vendas08OUT
GROUP BY NomeVendedor, EstadoVendedor

-- ORDER BY n�o deve ser usado em views
SELECT * FROM RELATORIO_VENDAS
ORDER BY EstadoVendedor ASC, ValorTotalVendido DESC


-- DESAFIO MASTER
/* 
	O departamento de RH e o de an�lise de mercado querem uma vis�o que combine 
	com o perfil financeiro dos vendedores, para entender a rela��o entre renda.
	Eles querem cateorizar a renda mensal dos vendedores.
	Crie uma view chamada analise_mercado_vendedores que inclua colunas:
	estado, nome, id, descricao, preco
	Uma nova coluna chamada NivelRenda que classifique a renda mensal do vendedor:
	Baixo para renda at� R$ 5.000,00
	Medio para renda entre R$ 5.0001,00 e R$ 8.000,00
	Alto para renda acima de R$ 8.000,00
*/

CREATE VIEW ANALISE_MERCADO_VENDEDORES AS
SELECT
	NomeVendedor AS Nome,
	EstadoVendedor AS Estado,
	ProdutoId AS IdProduto,
	DescricaoProduto AS Descri��o,
	PrecoProduto AS Pre�o,
	CASE 
		WHEN RendaMensalVendedor <= 5000 THEN 'Baixo'
		WHEN RendaMensalVendedor > 5000 AND RendaMensalVendedor <= 8000 THEN 'Medio'
		WHEN RendaMensalVendedor > 8000 THEN 'Alto'
	END AS NivelRenda
FROM Vendas08OUT

SELECT * FROM ANALISE_MERCADO_VENDEDORES