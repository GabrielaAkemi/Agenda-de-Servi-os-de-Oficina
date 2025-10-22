
INSERT INTO clientes (
    nome,
    cpf,
    telefone
) VALUES (
    "Gabriela Akemi",
    "46891325845",
    "1499806062"
);
INSERT INTO clientes (
    nome,
    cpf,
    telefone
) VALUES (
    "Victor Hugo",
    "54428616856",
    "14997725544"
);
INSERT INTO clientes (
    nome,
    cpf,
    telefone
) VALUES (
    "Ana Julia",
    "25334706806",
    "14981120002"
);

INSERT INTO veiculos (
    id_cliente_ref,
    placa,
    modelo,
    ano,
    marca
) VALUES (
    1,
    'EII9B12',
    'Creta',
    '2021-06-07',
    'Hyundai'
);

INSERT INTO veiculos (
    id_cliente_ref,
    placa,
    modelo,
    ano,
    marca
) VALUES (
    2,
    'JID9J13',
    'Ford Ka',
    '2014-09-12',
    'Ford'
);

INSERT INTO veiculos (
    id_cliente_ref,
    placa,
    modelo,
    ano,
    marca
) VALUES (
    3,
    'EJB02I9',
    'Hb20',
    '2025-05-22',
    'Hyundai'
);

INSERT INTO servicos (
    descricao,
    preco
) VALUE(
    'Troca de Óleo',
    150.00
);

INSERT INTO servicos (
    descricao,
    preco
) VALUE(
    'Porta',
    500.00
);

INSERT INTO servicos (
    descricao,
    preco
) VALUE(
    'Correia dentada',
    250.00
);

INSERT INTO agendamentos (
    id_cliente_ref,
    id_veiculo_ref,
    id_servico_ref,
    data_hora,
    status
) VALUE(
    1,
    1,
    1,
    '2025-10-21 14:00:00', 
    'Em andamento'
);

INSERT INTO agendamentos (
    id_cliente_ref,
    id_veiculo_ref,
    id_servico_ref,
    data_hora,
    status
) VALUE(
    2,
    2,
    2,
    '2025-10-22 15:00:00', 
    'Agendado'
);

INSERT INTO agendamentos (
    id_cliente_ref,
    id_veiculo_ref,
    id_servico_ref,
    data_hora,
    status
) VALUE(
    3,
    3,
    3,
    '2025-10-23 17:00:00', 
    'Agendado'
);

SELECT * FROM agendamentos WHERE id_cliente_ref = 1;
SELECT * FROM agendamentos WHERE id_cliente_ref = 2;
SELECT * FROM agendamentos WHERE id_cliente_ref = 3;


SELECT * FROM servicos WHERE descricao like "%Óleo%";
SELECT * FROM servicos WHERE descricao like "%Porta%";
SELECT * FROM servicos WHERE descricao like "%Correia%";


SELECT * FROM veiculos WHERE id_cliente_ref = 1;
SELECT * FROM veiculos WHERE id_cliente_ref = 2;
SELECT * FROM veiculos WHERE id_cliente_ref = 3;


UPDATE agendamentos SET status = 'concluído' WHERE id_agendamentos = 1;
UPDATE agendamentos SET status = 'Em andamento' WHERE id_agendamentos = 2;
UPDATE agendamentos SET status = 'Em andamento' WHERE id_agendamentos = 3;

UPDATE servicos SET preco = 150.00 WHERE id_servico = 1;
UPDATE servicos SET preco = 500.00 WHERE id_servico = 2;
UPDATE servicos SET preco = 250.00 WHERE id_servico = 3;

UPDATE clientes SET telefone = '1499806062' WHERE id_cliente = 1;
UPDATE clientes SET telefone = '14997725544' WHERE id_cliente = 2;
UPDATE clientes SET telefone = '14981120002' WHERE id_cliente = 3;


DELETE FROM agendamentos WHERE id_agendamentos = 1;
DELETE FROM agendamentos WHERE id_agendamentos = 2;
DELETE FROM agendamentos WHERE id_agendamentos = 3;

DELETE FROM servicos WHERE id_servico = 1;
DELETE FROM servicos WHERE id_servico = 2;
DELETE FROM servicos WHERE id_servico = 3;

DELETE FROM clientes WHERE id_cliente = 1;


