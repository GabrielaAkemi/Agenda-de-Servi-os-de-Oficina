CREATE TABLE clientes(
nome VARCHAR(100) NOT NULL,
id_cliente INT PRIMARY KEY AUTO_INCREMENT,
telefone varchar(11) NOT NULL,
cpf VARCHAR(11) UNIQUE
);

CREATE TABLE veiculos(
id_veiculo INT PRIMARY KEY AUTO_INCREMENT,
id_cliente_ref INT NOT NULL,
placa VARCHAR(7) NOT NULL,
modelo VARCHAR(50) NOT NULL,
marca VARCHAR(50) NOT NULL,
ano DATE NOT NULL,
FOREIGN KEY (id_cliente_ref) REFERENCES Clientes(id_cliente)
);

CREATE TABLE servicos(
id_servico INT PRIMARY KEY AUTO_INCREMENT,
descricao varchar(255) NOT NULL UNIQUE,
preco decimal(10,2) NOT NULL,
CHECK (preco > 0)
);

CREATE TABLE agendamentos(
id_agendamentos INT PRIMARY KEY AUTO_INCREMENT,
id_cliente_ref INT NOT NULL,
id_veiculo_ref INT NOT NULL,
id_servico_ref INT NOT NULL,
data_hora DATETIME NOT NULL,
status enum('Agendado','Em andamento','Concluído','Cancelado') NOT NULL,
FOREIGN KEY (id_cliente_ref) REFERENCES Clientes(id_cliente),
FOREIGN KEY (id_veiculo_ref) REFERENCES Veiculos(id_veiculo),
FOREIGN KEY (id_servico_ref) REFERENCES Servicos(id_servico)
);
