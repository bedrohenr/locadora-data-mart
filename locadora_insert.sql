-- #################################################################################
-- # Etapa 1: Inserir dados nas Tabelas de Referência (Sem Chaves Estrangeiras)
-- #################################################################################

-- 1. UF (Unidades Federativas)
INSERT INTO UF (descUF) VALUES
('ES - Espírito Santo'),
('MG - Minas Gerais'),
('RJ - Rio de Janeiro'),
('SP - São Paulo'),
('BA - Bahia');

-- 2. Cargo
INSERT INTO Cargo (descCargo) VALUES
('Gerente de Filial'),
('Atendente de Locação'),
('Mecânico Júnior'),
('Líder de Pátio'),
('Assistente Administrativo');

-- 3. EstadoCivil
INSERT INTO EstadoCivil (descEstadoCivil) VALUES
('Solteiro(a)'),
('Casado(a)'),
('Divorciado(a)'),
('Viúvo(a)'),
('União Estável');

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
(1, 'Disponível'),
(2, 'Alugado'),
(3, 'Manutenção'),
(4, 'Reservado'),
(5, 'Indisponível');

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
('Utilitário'),
('SUV'),
('Picape'),
('Sedan Médio');

-- 9. ItemOpcional
INSERT INTO ItemOpcional (descItemOpcional, vlrAtualDiaria) VALUES
('GPS Integrado', 15.00),
('Cadeira de Bebê', 20.00),
('Assento de Elevação', 10.00),
('Wi-Fi Portátil', 25.00),
('Proteção de Pneus', 12.50);

-- 10. Servico
INSERT INTO Servico (descServico) VALUES
('Troca de Óleo'),
('Revisão de Freios'),
('Balanceamento e Alinhamento'),
('Troca de Pneus'),
('Higienização Completa');


-- #################################################################################
-- # Etapa 2: Inserir dados em Tabelas Dependentes
-- #################################################################################

-- 11. Funcionario (Depende de Cargo e UF)
INSERT INTO Funcionario (matricula, nmFunc, celular, cpf, telResidencial, endereco, RG, Cargo_cdCargo, UF_cdUf) VALUES
('M001', 'Ana Costa Silva', '27999991111', '11122233301', '2733331111', 'Rua A, 100', '1234567', 1, 1), -- ES, Gerente
('M002', 'Bruno Souza Lima', '31988882222', '22233344402', '3132222222', 'Av B, 200', '2345678', 2, 2), -- MG, Atendente
('M003', 'Carla Mendes Pereira', '21977773333', '33344455503', '2125553333', 'Travessa C, 300', '3456789', 3, 3), -- RJ, Mecânico
('M004', 'Daniel Ribeiro Gomes', '11966664444', '44455566604', '1140004444', 'Estrada D, 400', '4567890', 4, 4), -- SP, Líder
('M005', 'Elisa Martins Santos', '71955555555', '55566677705', '7135555555', 'Praça E, 500', '5678901', 5, 5); -- BA, Assistente

-- 12. Cliente (Depende de EstadoCivil e UF)
INSERT INTO Cliente (nmCliente, email, celular, RG, habilitacao, cpf, dtNascimento, telefonefixo, endereco, EstadoCivil_cdEstadoCivil, UF_cdUf) VALUES
('João Vítor', 'joao@email.com', '27911112222', '7654321', 'A12345', '12345678901', '1990-05-15', '2730001000', 'Rua do Cliente 1, 10', 2, 1),
('Maria Helena', 'maria@email.com', '31922223333', '8765432', 'B23456', '23456789012', '1985-11-20', '3130002000', 'Avenida do Cliente 2, 20', 1, 2),
('Pedro Henrique', 'pedro@email.com', '21933334444', '9876543', 'C34567', '34567890123', '2000-01-01', NULL, 'Alameda do Cliente 3, 30', 3, 3),
('Ana Beatriz', 'ana@email.com', '11944445555', '1098765', 'D45678', '45678901234', '1975-08-25', '1140003000', 'Rua do Cliente 4, 40', 4, 4),
('Ricardo Souza', 'ricardo@email.com', '71955556666', '1209876', 'E56789', '56789012345', '1995-03-10', NULL, 'Praça do Cliente 5, 50', 5, 5);

-- 13. Veiculo (Depende de Fabricante, TipoCombustivel, ModeloVeiculo, SituacaoVeiculo, TipoVeiculo)
INSERT INTO Veiculo (placa, anoFabricacao, chassi, VlrDiariaBase, Fabricante_cdFabricante, TipoCombustivel_cdCombustivel, ModeloVeiculo_cdModelo, SituacaoVeiculo_cdSituacao, TipoVeiculo_cdTipoVeiculo) VALUES
('ABC-1234', 2023, 'CHASSI123456ABC', 150.00, 1, 3, 1, 1, 1), -- Chevrolet Onix Plus, Flex, Disponível, Popular
('DEF-5678', 2022, 'CHASSI234567DEF', 120.00, 2, 3, 2, 1, 1), -- Fiat Argo, Flex, Disponível, Popular
('GHI-9012', 2024, 'CHASSI345678GHI', 180.00, 3, 1, 3, 4, 5), -- VW Virtus, Gasolina, Reservado, Sedan Médio
('JKL-3456', 2021, 'CHASSI456789JKL', 90.00, 4, 2, 4, 3, 1), -- Ford Ka, Etanol, Manutenção, Popular
('MNO-7890', 2023, 'CHASSI567890MNO', 110.00, 5, 3, 5, 2, 1); -- Renault Kwid, Flex, Alugado, Popular

-- 14. Locacao (Depende de Veiculo, Funcionario e Cliente)
INSERT INTO Locacao (dtInicio, dtFim, vlrDiaria, kmInicial, kmFinal, Veiculo_cdVeiculo, Funcionario_codFunc, Cliente_cdCliente) VALUES
('2025-01-01', '2025-01-05', 150.00, 10000, 10500, 1, 2, 1), -- Carro 1, Atendente 2, Cliente 1
('2025-01-10', '2025-01-15', 120.00, 20000, 21000, 2, 2, 2), -- Carro 2, Atendente 2, Cliente 2
('2025-02-01', NULL, 110.00, 5000, NULL, 5, 1, 3), -- Carro 5, Gerente 1, Cliente 3 (Locação ativa)
('2025-02-15', '2025-02-18', 180.00, 15000, 15300, 3, 4, 4), -- Carro 3, Líder 4, Cliente 4
('2025-03-01', '2025-03-05', 90.00, 30000, 30600, 4, 2, 5); -- Carro 4, Atendente 2, Cliente 5

-- 15. ManutencaoVeiculo (Depende de Veiculo)
INSERT INTO ManutencaoVeiculo (dtSaida, dtRetorno, Veiculo_cdVeiculo) VALUES
('2024-12-20', '2024-12-30', 1), -- Carro 1
('2025-01-05', '2025-01-07', 2), -- Carro 2
('2025-01-10', NULL, 4), -- Carro 4 (Manutenção em andamento)
('2025-03-05', '2025-03-10', 5), -- Carro 5
('2025-03-15', '2025-03-16', 3); -- Carro 3

-- 16. LocacaoItemOpcional (Depende de Locacao e ItemOpcional)
INSERT INTO LocacaoItemOpcional (Locacao_cdLocacao, ItemOpcional_cdItemOpcional, vlrDiariaCobrado) VALUES
(1, 1, 15.00), -- Locação 1 com GPS
(1, 2, 20.00), -- Locação 1 com Cadeira de Bebê
(2, 4, 25.00), -- Locação 2 com Wi-Fi
(3, 1, 15.00), -- Locação 3 com GPS
(5, 5, 12.50); -- Locação 5 com Proteção de Pneus

-- 17. ServicoManutencao (Depende de ManutencaoVeiculo e Servico)
INSERT INTO ServicoManutencao (ManutencaoVeiculo_cdManutencao, ServicoManutencao_cdServico, dtConclusao, observacoes, custo) VALUES
(1, 1, '2024-12-28', 'Troca de óleo padrão.', 150.00),
(1, 2, '2024-12-29', 'Revisão e limpeza de pastilhas.', 80.00),
(2, 3, '2025-01-06', 'Alinhamento completo.', 120.00),
(3, 4, NULL, 'Aguardando chegada de pneus.', NULL), -- Serviço em andamento
(4, 5, '2025-03-08', 'Lavagem e higienização interna.', 95.00);

-- #################################################################################
-- # FIM DO SCRIPT DE POPULAÇÃO
-- #################################################################################