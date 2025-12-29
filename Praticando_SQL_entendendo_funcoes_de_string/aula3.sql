-- ex 1  : 
SELECT UPPER(Nome) AS NomeMaiusculo
FROM TabelaClientes;

-- ex2 : 
SELECT LOWER(NomeColaborador) AS NomeMinusculo
FROM TabelaColaboradores;

-- ex3 : 

SELECT CONCAT(SUBSTR(Nome, 1, 3), SUBSTRING(CPF, 1, 3)) AS Identificador
FROM TabelaClientes;

-- ex4 :
SELECT CONCAT(SUBSTR(Nome, 1, 3), SUBSTRING(CPF, 1, 3)) AS Identificador
FROM TabelaClientes;

-- ex5 concat sem função :

SELECT NomeColaborador || ' - ' || Cargo AS Nome_Completo_Cargo
FROM TabelaColaboradores;

-- ex6 : 

SELECT REPLACE(NomeDepartamento, 'Recursos Humanos', 'RH') AS Nome_Atualizado
FROM TabelaDepartamento;

-- ex7 : 

SELECT TRIM(Tipo) || ' - ' || Status || ' - $' || Valor AS DescricaoEmprestimo
FROM TabelaEmprestimo;

-- ex8 : 

SELECT id_pagamento,
SUBSTRING(Status FROM 1 FOR 3) || id_pagamento AS IdentificadorPagamento
FROM TabelaPagamentos;

-- ex9: 

SELECT 
    id_score,
    fonte,
    UPPER(
        REPLACE(
            REPLACE(fonte, 'Serasa', 'SER'),
            'Boa Vista',
            'BOA'
        )
    ) AS fonte_padronizada
FROM tabelascorecredito;

-- ex10 : 

SELECT
id_emprestimo,
TRIM(Tipo) AS Tipo
FROM TabelaEmprestimo;
