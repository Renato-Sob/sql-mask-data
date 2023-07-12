--------------------------------------------------------
--  INICIO ANONIMIZAÇÃO DOS DADOS - CPF/CNPJ ETC...
--  FEITO POR: RENATO
--------------------------------------------------------

-- Criação da criptografia (Camuflagem do CPF)
-- Vamos crirar uma função em PL/SQL
CREATE OR REPLACE FUNCTION camuflar_cpf(cpf IN VARCHAR2) RETURN VARCHAR2 IS
 	v_cpf_camuflado VARCHAR2(11);
BEGIN
 	v_cpf_camuflado := RPAD('***', 9, '*') || SUBSTR(cpf, -2);
	RETURN v_cpf_camuflado;
END;
/

-- Atualizar os valores de codificação do CPF
UPDATE MC_CLI_FISICA -- Estou utilizando uma tabela fictícia para execução
SET NR_CPF = camuflar_cpf(NR_CPF);


-- Por fim, podemos executar o comando SELECT para validar as alterações
SELECT nr_cliente, nr_cpf FROM MC_CLI_FISICA;
