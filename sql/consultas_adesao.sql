-- Consultas ilustrativas para SQLite, usando a tabela 'campanhas'.
-- Antes de executá-las, carregue a base tratada com a coluna binária 'adesao'.

-- Visão geral de conversão
SELECT COUNT(*) AS contatos,
       SUM(adesao) AS adesoes,
       ROUND(100.0 * AVG(adesao), 2) AS taxa_adesao_pct
FROM campanhas;

-- Desempenho por profissão
SELECT job AS profissao, COUNT(*) AS contatos,
       SUM(adesao) AS adesoes,
       ROUND(100.0 * AVG(adesao), 2) AS taxa_adesao_pct
FROM campanhas
GROUP BY job
ORDER BY taxa_adesao_pct DESC;

-- Desempenho por canal de contato
SELECT contact AS canal, COUNT(*) AS contatos,
       SUM(adesao) AS adesoes,
       ROUND(100.0 * AVG(adesao), 2) AS taxa_adesao_pct
FROM campanhas
GROUP BY contact
ORDER BY taxa_adesao_pct DESC;
