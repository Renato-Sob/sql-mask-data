# ANONIMIZAÇÃO DE DADOS UTILIZANDO ORACLE PL/SQL

## RECOMENDAÇÃO DE PROTEÇÃO DE DADOS - ANONIMIZAÇÃO DE DADOS PESSOAIS SENSÍVEIS

A princípio a ideia é criar uma anonimização que pode ser realizada por meio de técnicas de pseudonimização. É fundamental limitar o acesso aos dados pessoais apenas para os colaboradores que necessitam deles para desempenhar suas funções. 

 * É importante implementar a anonimização de dados pessoais sensíveis, como CPF, CNPJ, sempre que possível. Isso reduz o risco de violação de privacidade e torna mais difícil a identificação dos clientes em caso de uma eventual falha de segurança. A anonimização pode ser realizada por meio de técnicas de pseudonimização.

Foi utilizado uma função em PL/SQL para criar uma forma de ocultar esses dados pessoais.

**Atenção** > Importante lembrar que esse metódo foi criada apenas para estudos sobre LGPD (Lei geral de Proteção de Dados). Para utilização de métodos de anonimização de dados em empresas é interessante se aprofundar em melhores práticas e conceitos. Para garantir a segurança dos dados pessoais, é importante utilizar criptografia para proteger informações sensíveis, como senhas e dados de cartão de crédito. Para isso, pode-se utilizar algoritmos de criptografia robustos, como AES-256, e armazenar as chaves de criptografia em um local seguro.

