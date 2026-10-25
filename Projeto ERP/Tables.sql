CREATE TABLE Produto(
	id_Produto SERIAL PRIMARY KEY,
	lote VARCHAR(50) NOT NULL,
	validade DATE NOT NULL,
	Cod_Barra VARCHAR(50) NOT NULL
);

CREATE TABLE Cliente (
	id_Cliente SERIAL PRIMARY KEY,
	Nome_Cliente VARCHAR(50) NOT NULL,
	CPF_Cliente VARCHAR(11),
	Cidade_Cliente VARCHAR(50),
	Estado_Cliente VARCHAR(50)
);

CREATE TABLE Funcionario(
	id_Funcionario SERIAL PRIMARY KEY,
	CPF_Funcionario VARCHAR(11) NOT NULL,
	Nome_Funcionario VARCHAR(50) NOT NULL,
	Funcao VARCHAR(30) NOT NULL,
	Salario NUMERIC(10,2) NOT NULL
);

CREATE TABLE Fornecedor(
	id_Fornecedor SERIAL PRIMARY KEY,
	CNPJ_Fornecedor VARCHAR(14) NOT NULL,
	Nome_Fornecedor VARCHAR(50) NOT NULL
);

CREATE TABLE Caixa(
	id_Caixa SERIAL PRIMARY KEY,
	Vendas_Totais NUMERIC(10,2) NOT NULL,
	Ultima_Atualizacao DATE NOT NULL
);


CREATE TABLE Nota_Compra(
	id_Compra SERIAL PRIMARY KEY,
	Data_Compra DATE NOT NULL,
	fk_id_Fornecedor INTEGER NOT NULL, 
	fk_id_Produto INTEGER NOT NULL,
	Valor_Compra NUMERIC(10,2) NOT NULL,
	Qntd_Compra INTEGER NOT NULL,

	FOREIGN KEY (fk_id_Fornecedor) REFERENCES Fornecedor(id_Fornecedor)
		ON DELETE RESTRICT,
	FOREIGN KEY (fk_id_Produto) REFERENCES Produto(id_Produto)
		ON DELETE RESTRICT
);

CREATE TABLE Venda_Caixa(
	id_Venda SERIAL PRIMARY KEY,
	fk_id_Caixa INTEGER NOT NULL,
	fk_id_Funcionario INTEGER NOT NULL,
	fk_id_Cliente INTEGER NOT NULL,
	

	FOREIGN KEY (fk_id_Caixa) REFERENCES Caixa(id_Caixa)
		ON DELETE RESTRICT,
	FOREIGN KEY (fk_id_Funcionario) REFERENCES Funcionario(id_Funcionario)
		ON DELETE RESTRICT,
	FOREIGN KEY (fk_id_Cliente) REFERENCES Cliente(id_Cliente)
		ON DELETE RESTRICT
);

CREATE TABLE Item_Venda(
	fk_id_Venda INTEGER NOT NULL,
	fk_id_Produto INTEGER NOT NULL,
	Qntd_Produto INTEGER NOT NULL,
	Preco_Venda NUMERIC(10,2) NOT NULL,
	
	FOREIGN KEY (fk_id_venda)	REFERENCES Venda_Caixa(id_venda)
		ON DELETE RESTRICT,
	FOREIGN KEY (fk_id_Produto) REFERENCES Produto(id_Produto)
		ON DELETE RESTRICT,
	PRIMARY KEY(fk_id_Venda,fk_id_Produto)
);

