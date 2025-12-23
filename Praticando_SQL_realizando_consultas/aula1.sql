/* 
Objetivo:
Listar colaboradores do departamento de TI (D03) com salário acima de R$ 4.500.
*/
SELECT nomecolaborador, salario, id_departamento
FROM TabelaColaboradores 
WHERE id_departamento = 'D03'
  AND salario > 4500;


/* 
Objetivo:
Listar clientes nascidos antes de 1990 ou residentes no estado de São Paulo.
*/
SELECT nome, datanascimento, estado
FROM TabelaClientes 
WHERE DataNascimento < '1990-01-01'
   OR estado = 'SP';


/* 
Objetivo:
Listar empréstimos concedidos no primeiro trimestre de 2023.
*/
SELECT id_emprestimo, datainicio, tipo, valor
FROM TabelaEmprestimo
WHERE datainicio BETWEEN '2023-01-01' AND '2023-03-31';


/* 
Objetivo:
Listar clientes com idade igual ou superior a 18 anos.
*/
SELECT Nome, DataNascimento, CPF
FROM TabelaClientes
WHERE EXTRACT(YEAR FROM CURRENT_DATE)
    - EXTRACT(YEAR FROM DataNascimento) >= 18;


/* 
Objetivo:
Listar empréstimos das categorias Pessoal e Imobiliário.
*/
SELECT id_emprestimo, tipo, valor
FROM tabelaemprestimo
WHERE tipo = 'Pessoal'
   OR tipo = 'Imobiliário';


/* 
Objetivo:
Listar empréstimos das categorias Consignado ou Automóvel com valores
entre R$ 10.000 e R$ 50.000.
*/
SELECT id_emprestimo, tipo, valor
FROM tabelaemprestimo
WHERE (tipo = 'Consignado' OR tipo = 'Automóvel')
  AND valor BETWEEN 10000 AND 50000;


/* 
Objetivo:
Listar os estados distintos onde há clientes cadastrados.
*/
SELECT DISTINCT estado
FROM tabelaclientes;


/* 
Objetivo:
Listar clientes que moram no Rio de Janeiro ou Salvador e cujo CPF
inicia com o dígito 6.
*/
SELECT nome, cpf, cidade, estado
FROM tabelaclientes
WHERE (cidade = 'Rio de Janeiro' OR cidade = 'Salvador')
  AND cpf LIKE '6%';
