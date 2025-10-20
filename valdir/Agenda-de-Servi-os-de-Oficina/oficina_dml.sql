INSERT INTO nomeDaTalea (
    lista dos campos
) VALUES (
    lista dos valores dos campos
)

INSERT INTO clientes (
    nome,
    cpf,
    telefone
) VALUES (
    "Gabriela Akemi",
    46891325845,
    1499806062
)
INSERT INTO clientes (
    nome,
    cpf,
    telefone
) VALUES (
    "Victor Hugo",
    54428616856,
    14997725544
)
INSERT INTO clientes (
    nome,
    cpf,
    telefone
) VALUES (
    "Ana Julia",
    25334706806,
    14981120002
)

INSERT INTO veiculos (
    id_cliente_ref,
    placa,
    modelo,
    marca,
    ano
) VALUES (
    1,
    'Creta',
    'Hyundai',
    '2021'
    'EII9B12'
)

INSERT INTO veiculos (
    id_cliente_ref,
    placa,
    modelo,
    marca,
    ano
) VALUES (
    2,
    'Ford Ka',
    'Ford',
    '2014'
    'JID9J13'
)

INSERT INTO veiculos (
    id_cliente_ref,
    placa,
    modelo,
    marca,
    ano
) VALUES (
    3,
    'Hb20',
    'Hyundai',
    '2025'
    'EJB02I9'
)

INSERT INTO servios (
    id_cliente_ref,
    id_veiculo_ref,
    descricao,
    preco
) VALUE(
    1,
    1,
    'Troca de Óleo',
    150.00
)

INSERT INTO servios (
    id_cliente_ref,
    id_veiculo_ref,
    descricao,
    preco
) VALUE(
    2,
    2,
    'Porta',
    500.00
)

INSERT INTO servios (
    id_cliente_ref,
    id_veiculo_ref,
    descricao,
    preco
) VALUE(
    3,
    3,
    'Correia dentada',
    250.00
)

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
)

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
)

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
)

SELECT * FROM agendamentos WHERE id_cliente_ref = 1;

SELECT * FROM servicos;

SELECT * FROM veiculos WHERE id_cliente_ref = 1;


UPDATE agendamentos SET status = 'concluído' WHERE id_agendamento = 1;

UPDATE servicos SET preco = 180.00 WHERE id_servico = 1;

UPDATE clientes SET telefone = '(11) 99876-5432' WHERE id_cliente = 1;


DELETE FROM Agendamentos WHERE id_agendamento = 1;

DELETE FROM Servicos WHERE id_servico = 1;

DELETE FROM Clientes WHERE id_cliente = 1;
