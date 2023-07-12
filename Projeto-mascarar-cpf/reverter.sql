-- Para reverter a camuflagem do CPF e restaurar os valores originais na tabela



-- Exemplo de reversão utilizando uma função:
CREATE OR REPLACE FUNCTION reverter_cpf(cpf_camuflado IN VARCHAR2) RETURN VARCHAR2 IS
  v_cpf_reverso VARCHAR2(11);
BEGIN
  v_cpf_reverso := REPLACE(REPLACE(REPLACE(cpf_camuflado, 'X', SUBSTR(cpf_camuflado, -2, 1)), 'Y', SUBSTR(cpf_camuflado, -3, 1)), 'Z', SUBSTR(cpf_camuflado, -4, 1));
  RETURN v_cpf_reverso;
END;
/

-- Agora, se você precisar reverter a camuflagem do CPF em algum momento, você pode executar uma instrução SQL UPDATE para restaurar os valores originais na tabela MC_CLI_FISICA. Aqui está um exemplo:
--Essa instrução SQL irá atualizar todos os registros da tabela MC_CLI_FISICA, substituindo o valor camuflado do atributo NR_CPF pelo valor original do CPF usando a função reverter_cpf.
UPDATE MC_CLI_FISICA
SET NR_CPF = reverter_cpf(NR_CPF);

