-- Demandas de aluguéis para diferentes períodos de tempo (dia de semana, fim de semana, feriados, férias, ..).

SELECT * 
FROM fatoLocacao fL
INNER JOIN dimData dDi 
    ON fL.dimData_inicioLocacao = dDi.codData
INNER JOIN dimData dDf
    OR fL.dimData_fimLocacao = dDf.codData 
WHERE 
    dDi.dataCompleta > ? AND
    dDf.dataCompleta < ?

-- Quantidade de dias de locação por tipo/modelo veículo.

-- Tipo
SELECT *, SUM(DATEDIFF(dDi.dataCompleta, dDf.dataCompleta)) as qtdDias
FROM fatoLocacao fL
INNER JOIN dimData dDi 
    ON fL.dimData_inicioLocacao = dDi.codData
INNER JOIN dimData dDf
    OR fL.dimData_fimLocacao = dDf.codData 
JOIN dimVeiculo dV
    ON fL.dimVeiculo_codVeiculo = dV.codVeiculo
-- WHERE dv.descTipoVeiculo = ?
GROUP BY dv.descTipoVeiculo

-- Modelo
SELECT *, SUM(DATEDIFF(dDi.dataCompleta, dDf.dataCompleta)) as qtdDias
FROM fatoLocacao fL
JOIN dimVeiculo dV
    ON fL.dimVeiculo_codVeiculo = dV.codVeiculo
-- WHERE dv.descModelo = ?
GROUP BY dv.descModelo

-- Receita mensal por tipo de veículo.
SELECT *, SUM() as qtdDias
FROM fatoLocacao fL
INNER JOIN dimData dDi 
    ON fL.dimData_inicioLocacao = dDi.codData
INNER JOIN dimData dDf
    OR fL.dimData_fimLocacao = dDf.codData 
JOIN dimVeiculo dV
    ON fL.dimVeiculo_codVeiculo = dV.codVeiculo
-- WHERE dv.descTipoVeiculo = ?
GROUP BY 

-- Quantidade de locação de cada item opcional para um determinado período de tempo.
-- Percentual de locação com itens opcionais.
-- Identificação dos itens opcionais mais requisitados por tipo de veículos alugados
-- Quantia vendida por funcionário (considerando aluguel de opcionais e veículo) para um período informado.
-- Custo total de manutenção por um período de tempo.
-- Custo médio de manutenção por veículo.
-- Custos de manutenção por tipo de serviço.
-- Custo de manutenção por marca, modelo e ano do veículo
-- Quais marcas/modelos têm os menores custos de manutenção?
-- Quantos dias por ano cada veículo fica indisponível para manutenção?