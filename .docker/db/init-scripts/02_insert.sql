-- #################################################################################
-- # Etapa 1: Inserir dados nas Tabelas de Referencia (Sem Chaves Estrangeiras)
-- #################################################################################

-- 1. UF (Unidades Federativas)
INSERT INTO UF (descUF) VALUES
('ES - Espirito Santo'),
('MG - Minas Gerais'),
('RJ - Rio de Janeiro'),
('SP - Sao Paulo'),
('BA - Bahia');

-- 2. Cargo
INSERT INTO Cargo (descCargo) VALUES
('Gerente de Filial'),
('Atendente de Locacao'),
('Mecanico Junior'),
('Lider de Patio'),
('Assistente Administrativo');

-- 3. EstadoCivil
INSERT INTO EstadoCivil (descEstadoCivil) VALUES
('Solteiro(a)'),
('Casado(a)'),
('Divorciado(a)'),
('Viuvo(a)'),
('Uniao Estavel');

-- 4. Fabricante
INSERT INTO Fabricante (descFabricante) VALUES
('Chevrolet'),
('Fiat'),
('Volkswagen'),
('Ford'),
('Renault');

-- 5. ModeloVeiculo
INSERT INTO ModeloVeiculo (descModelo) VALUES
('Onix Plus'),
('Argo'),
('Virtus'),
('Ka Sedan'),
('Kwid');

-- 6. SituacaoVeiculo
INSERT INTO SituacaoVeiculo (cdSituacao, descSituacao) VALUES
(1, 'Disponivel'),
(2, 'Alugado'),
(3, 'Manutencao'),
(4, 'Reservado'),
(5, 'Indisponivel');

-- 7. TipoCombustivel
INSERT INTO TipoCombustivel (descCombustivel) VALUES
('Gasolina'),
('Etanol'),
('Flex'),
('Diesel'),
('Eletrico');

-- 8. TipoVeiculo
INSERT INTO TipoVeiculo (descTipoVeiculo) VALUES
('Popular'),
('Utilitario'),
('SUV'),
('Picape'),
('Sedan Medio');

-- 9. ItemOpcional
INSERT INTO ItemOpcional (descItemOpcional, vlrAtualDiaria) VALUES
('GPS Integrado', 15.00),
('Cadeira de Bebe', 20.00),
('Assento de Elevacao', 10.00),
('Wi-Fi Portatil', 25.00),
('Protecao de Pneus', 12.50);

-- 10. Servico
INSERT INTO Servico (descServico) VALUES
('Troca de Oleo'),
('Revisao de Freios'),
('Balanceamento e Alinhamento'),
('Troca de Pneus'),
('Higienizacao Completa');


-- #################################################################################
-- # Etapa 2: Inserir dados em Tabelas Dependentes
-- #################################################################################

-- 11. Funcionario (Depende de Cargo e UF)
INSERT INTO Funcionario (matricula, nmFunc, celular, cpf, telResidencial, endereco, RG, Cargo_cdCargo, UF_cdUf) VALUES
('M001', 'Ana Costa Silva', '27999991111', '11122233301', '2733331111', 'Rua A, 100', '1234567', 1, 1), -- ES, Gerente
('M002', 'Bruno Souza Lima', '31988882222', '22233344402', '3132222222', 'Av B, 200', '2345678', 2, 2), -- MG, Atendente
('M003', 'Carla Mendes Pereira', '21977773333', '33344455503', '2125553333', 'Travessa C, 300', '3456789', 3, 3), -- RJ, Mecanico
('M004', 'Daniel Ribeiro Gomes', '11966664444', '44455566604', '1140004444', 'Estrada D, 400', '4567890', 4, 4), -- SP, Lider
('M005', 'Elisa Martins Santos', '71955555555', '55566677705', '7135555555', 'Praca E, 500', '5678901', 5, 5); -- BA, Assistente

-- 12. Cliente (Depende de EstadoCivil e UF)
INSERT INTO Cliente (nmCliente, email, celular, RG, habilitacao, cpf, dtNascimento, telefonefixo, endereco, EstadoCivil_cdEstadoCivil, UF_cdUf) VALUES
('Joao Vitor', 'joao@email.com', '27911112222', '7654321', 'A12345', '12345678901', '1985-05-15', '2730001000', 'Rua do Cliente 1, 10', 2, 1),
('Maria Helena', 'maria@email.com', '31922223333', '8765432', 'B23456', '23456789012', '1980-11-20', '3130002000', 'Avenida do Cliente 2, 20', 1, 2),
('Pedro Henrique', 'pedro@email.com', '21933334444', '9876543', 'C34567', '34567890123', '1995-01-01', NULL, 'Alameda do Cliente 3, 30', 3, 3),
('Ana Beatriz', 'ana@email.com', '11944445555', '1098765', 'D45678', '45678901234', '1970-08-25', '1140003000', 'Rua do Cliente 4, 40', 4, 4),
('Ricardo Souza', 'ricardo@email.com', '71955556666', '1209876', 'E56789', '56789012345', '1990-03-10', NULL, 'Praca do Cliente 5, 50', 5, 5);

-- 13. Veiculo (Depende de Fabricante, TipoCombustivel, ModeloVeiculo, SituacaoVeiculo, TipoVeiculo)
INSERT INTO Veiculo (placa, anoFabricacao, chassi, VlrDiariaBase, Fabricante_cdFabricante, TipoCombustivel_cdCombustivel, ModeloVeiculo_cdModelo, SituacaoVeiculo_cdSituacao, TipoVeiculo_cdTipoVeiculo) VALUES
('ABC-1234', 2017, 'CHASSI123456ABC', 150.00, 1, 3, 1, 1, 1), -- Chevrolet Onix Plus, Flex, Disponivel, Popular
('DEF-5678', 2016, 'CHASSI234567DEF', 120.00, 2, 3, 2, 1, 1), -- Fiat Argo, Flex, Disponivel, Popular
('GHI-9012', 2018, 'CHASSI345678GHI', 180.00, 3, 1, 3, 4, 5), -- VW Virtus, Gasolina, Reservado, Sedan Medio
('JKL-3456', 2015, 'CHASSI456789JKL', 90.00, 4, 2, 4, 1, 1), -- Ford Ka, Etanol, AGORA DISPONIVEL (manutencao encerrada)
('MNO-7890', 2017, 'CHASSI567890MNO', 110.00, 5, 3, 5, 2, 1); -- Renault Kwid, Flex, Alugado, Popular

-- 14. Locacao (Depende de Veiculo, Funcionario e Cliente)
INSERT INTO Locacao (dtInicio, dtFim, vlrDiaria, kmInicial, kmFinal, Veiculo_cdVeiculo, Funcionario_codFunc, Cliente_cdCliente) VALUES
('2018-01-01', '2018-01-05', 150.00, 10000, 10500, 1, 2, 1), -- Carro 1, Atendente 2, Cliente 1
('2018-01-10', '2018-01-15', 120.00, 20000, 21000, 2, 2, 2), -- Carro 2, Atendente 2, Cliente 2
('2018-02-01', '2018-02-05', 110.00, 5000, 5600, 5, 1, 3), -- Carro 5, Gerente 1, Cliente 3 (Locacao concluida)
('2018-02-15', '2018-02-18', 180.00, 15000, 15300, 3, 4, 4), -- Carro 3, Lider 4, Cliente 4
('2018-03-01', '2018-03-05', 90.00, 30000, 30600, 4, 2, 5); -- Carro 4, Atendente 2, Cliente 5

-- 15. ManutencaoVeiculo (Depende de Veiculo) -- Todas CONCLUIDAS (dtRetorno preenchido)
INSERT INTO ManutencaoVeiculo (dtSaida, dtRetorno, Veiculo_cdVeiculo) VALUES
('2017-12-20', '2017-12-30', 1), -- Carro 1
('2018-01-05', '2018-01-07', 2), -- Carro 2
('2018-01-10', '2018-01-20', 4), -- Carro 4 (CONCLUIDA)
('2018-03-05', '2018-03-10', 5), -- Carro 5
('2018-03-15', '2018-03-16', 3); -- Carro 3

-- 16. LocacaoItemOpcional (Depende de Locacao e ItemOpcional)
INSERT INTO LocacaoItemOpcional (Locacao_cdLocacao, ItemOpcional_cdItemOpcional, vlrDiariaCobrado) VALUES
(1, 1, 15.00), -- Locacao 1 com GPS
(1, 2, 20.00), -- Locacao 1 com Cadeira de Bebe
(2, 4, 25.00), -- Locacao 2 com Wi-Fi
(3, 1, 15.00), -- Locacao 3 com GPS
(5, 5, 12.50); -- Locacao 5 com Protecao de Pneus

-- 17. ServicoManutencao (Depende de ManutencaoVeiculo e Servico) -- Todos CONCLUIDOS (dtConclusao preenchido)
INSERT INTO ServicoManutencao (ManutencaoVeiculo_cdManutencao, ServicoManutencao_cdServico, dtConclusao, observacoes, custo) VALUES
(1, 1, '2017-12-28', 'Troca de oleo padrao.', 150.00),
(1, 2, '2017-12-29', 'Revisao e limpeza de pastilhas.', 80.00),
(2, 3, '2018-01-06', 'Alinhamento completo.', 120.00),
(3, 4, '2018-01-19', 'Aguardando chegada de pneus.', 350.00), -- Servico CONCLUIDO
(4, 5, '2018-03-08', 'Lavagem e higienizacao interna.', 95.00);

-- #################################################################################
-- # FIM DO SCRIPT DE POPULACAO
-- #################################################################################