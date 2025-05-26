CREATE DATABASE db_caixa_supermercado
USE db_caixa_supermercado

CREATE TABLE tbProduto
(
Id_Produto SMALLINT IDENTITY(1, 1) PRIMARY KEY,
cod_barras CHAR(8) not null,
descricao VARCHAR(80) not null,
saldo_estoque SMALLINT not null,
valor_compra DECIMAL(8, 2) not null,
valor_venda DECIMAL(8, 2) not null
)

CREATE TABLE tbFornecedor
(
Id_Fornecedor SMALLINT IDENTITY(1, 1) PRIMARY KEY,
cnpj CHAR(14) not null,
nome VARCHAR(50) not null
)

CREATE TABLE tbProdutoFornecedor
(
Id_Produto SMALLINT,
Id_Fornecedor SMALLINT,
FOREIGN KEY (Id_Produto) REFERENCES tbProduto(Id_Produto),
FOREIGN KEY (Id_Fornecedor) REFERENCES tbFornecedor(Id_Fornecedor)
)

CREATE TABLE tbVenda
(
Id_Venda SMALLINT IDENTITY(1, 1) PRIMARY KEY,
data_venda DATE not null,
num_venda SMALLINT not null,
valor_total DECIMAL(8, 2) not null
)

CREATE TABLE tbProdutoVenda
(
Id_Produto SMALLINT,
Id_Venda SMALLINT,
qtde_item SMALLINT not null,
valor_item SMALLINT not null,
FOREIGN KEY (Id_Produto) REFERENCES tbProduto(Id_Produto),
FOREIGN KEY (Id_Venda) REFERENCES tbVenda(Id_Venda)
)