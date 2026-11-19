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

## Possibilidades futuras

SQL, Machine Learning e Power BI são possibilidades de evolução. Essas etapas ainda não foram implementadas neste estudo.
