/* 
Objetivo:
Inspecionar todos os dados disponíveis na tabela de clientes.
*/
SELECT * FROM TabelaClientes;


/* 
Objetivo:
Listar os colaboradores juntamente com seus respectivos cargos.
*/
SELECT nomecolaborador, cargo
FROM TabelaColaboradores;


/* 
Objetivo:
Identificar empréstimos atualmente ativos no sistema.

*/
SELECT *
FROM TabelaEmprestimo
WHERE status = TRUE;


/* 
Objetivo:
Selecionar clientes residentes no estado de São Paulo (SP).

*/
SELECT nome, estado
FROM TabelaClientes
WHERE estado = 'SP';


/* 
Objetivo:
Identificar colaboradores com salário acima de um determinado
limite financeiro.

*/
SELECT nomecolaborador, salario
FROM TabelaColaboradores
WHERE salario > 5000;


/* 
Objetivo:
Organizar os colaboradores em ordem alfabética pelo nome.
*/
SELECT nomecolaborador, cargo
FROM TabelaColaboradores
ORDER BY nomecolaborador ASC;


/* 
Objetivo:
Obter uma amostra inicial dos colaboradores cadastrados.

*/
SELECT *
FROM TabelaColaboradores
ORDER BY id_colaborador ASC
LIMIT 5;


/* 
Objetivo:
Exibir os empréstimos ordenados pelo valor financeiro.

*/
SELECT *
FROM TabelaEmprestimo
ORDER BY valor DESC;


/* 
Objetivo:
Selecionar os colaboradores com os maiores salários acima
de um valor mínimo definido.

*/
SELECT *
FROM TabelaColaboradores
WHERE salario > 5000
ORDER BY id_colaborador DESC
LIMIT 2;
