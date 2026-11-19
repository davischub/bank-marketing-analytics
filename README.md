# Bank Marketing Analytics — Análise de Campanhas Bancárias

Análise exploratória no Google Colab para investigar a adesão a depósitos a prazo em campanhas de marketing bancário.

## Origem dos dados

O estudo usa o dataset público UCI Bank Marketing, na versão `bank-additional-full.csv`. A base reúne registros de campanhas telefônicas de uma instituição bancária portuguesa, sem vínculo com o Itaú. A variável `y` indica se houve adesão ao depósito a prazo. [UCI Machine Learning Repository](https://archive.ics.uci.edu/dataset/222/bank+marketing)

## Análise exploratória

- Importação do CSV, verificação de valores ausentes, identificação e remoção de registros duplicados.
- Contagem de valores `unknown` nas colunas categóricas e cálculo de percentuais em campos selecionados.
- Estatísticas descritivas e frequências das variáveis categóricas.
- Contagens e taxas de adesão no total e por profissão e faixa etária.
- Histograma de idades, boxplot de idade por resultado da campanha e gráficos de barras com as taxas de adesão por profissão e faixa etária.

## Executar no Google Colab

1. Abra o [notebook no Google Colab](https://colab.research.google.com/github/davischub/bank-marketing-analytics/blob/main/notebooks/01_analise_exploratoria.ipynb).
2. Baixe e extraia `bank-additional-full.csv` do arquivo `bank-additional.zip` disponível na página da UCI. Envie o CSV para a sessão do Colab, em `/content/bank-additional-full.csv`.
3. Execute as células em ordem. As dependências Python estão em `requirements.txt`.

## Extensão: SQL, Machine Learning e Power BI

O notebook [`02_sql_ml_powerbi.ipynb`](notebooks/02_sql_ml_powerbi.ipynb) contém um **roteiro executável**, ainda pendente de validação de resultados no Colab, com consultas SQL em SQLite, uma Regressão Logística inicial para classificação de adesão e exportação de três CSVs para Power BI.

As consultas também estão documentadas em [`sql/consultas_adesao.sql`](sql/consultas_adesao.sql). As instruções para montar um dashboard estão em [`powerbi/INSTRUCOES.md`](powerbi/INSTRUCOES.md). **Ainda não existe painel `.pbix` neste repositório.**

### Execução da extensão

1. Abra o [notebook de extensão no Colab](https://colab.research.google.com/github/davischub/bank-marketing-analytics/blob/main/notebooks/02_sql_ml_powerbi.ipynb).
2. Envie `bank-additional-full.csv` para `/content/`.
3. Execute as células em ordem e avalie as métricas geradas antes de mencionar resultados.

