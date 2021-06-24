## **Fiap Challenge Cyrela** - Instruções de execução

### Ambiente para fonte de dados

> A fonte de dados para o dashboard do Power Bi (OLAP), foi gerada a partir dos DDLs e arquivos de dados (*.csv) enviados pela Cyrela. 
Foi utilizado um banco de dados SQL Server e uma planilha Excel, que foi importado para o banco para executar o ETL nos dados.

> Para gerar esse ambiente no SQL Server basta executar os scripts na raiz da pasta T-SQL Scripts ou executar os DDLs da Cyrela e após executar os scripts
da pasta T-SQL Scripts\INSERT_DADOS\.

### Carga e Tranformação dos dados - ETL

> Para executar o ETL dos dados foram utilizados os scripts da pasta "T-SQL Scripts" que contém as subpastas iniciadas com o nome "ETL_TABLE_[NOME_DIMENSAO]" (que corespondem as tabelas dimnsionais e fato).

> Foram criados 3 tabelas "Dimensionais": Cliente, Marca e Regiao. 
> A tabelas possuem estágios de ETL cada um em script separado (DDL e DML), incluindo estágio de Data Quality.

> Foram criados também 2 tabelas "Fatos" com seus scripts de DDL e DML: FATO_FINANCEIRO e FATO_SITE.

### Power Bi (OLAP)

> Para a construção do dashboard utilizamos a ferramenta de OLAP Power Bi onde foi feita a conexão direta com o SQL Server para a importação dos dados e montarmos os relatórios finais.
