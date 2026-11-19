# Painel comercial no Power BI — proposta de montagem

Os arquivos são gerados no notebook `notebooks/02_sql_ml_powerbi.ipynb`, usando o dataset UCI Bank Marketing (campanhas de depósito a prazo de um banco português).

## Passos
1. Execute o notebook e baixe `campanhas_tratadas.csv`.
2. No Power BI Desktop, use **Obter Dados > Texto/CSV** e carregue o arquivo com o nome de tabela `campanhas_tratadas`.
3. Crie cartões para contatos, adesões e taxa de adesão, além de gráficos de barras para taxas por `job` e `faixa_etaria`.

## Medidas DAX sugeridas

```dax
Total Contatos = COUNTROWS(campanhas_tratadas)

Total Adesoes = SUM(campanhas_tratadas[adesao])

Taxa Adesao = DIVIDE([Total Adesoes], [Total Contatos])
```

Formate `Taxa Adesao` como porcentagem. Se quiser o desempenho por canal, utilize a coluna `contact`.

## Situação
Esta pasta contém **instruções**, não um painel `.pbix` finalizado. Resultados de modelos e gráficos devem ser interpretados à luz das limitações da amostra histórica.
