--- Item 6) a

SELECT cpf,Nome FROM trabalhadores WHERE salario > 2500.00;

---Item 6) b

SELECT t.nome, TO_CHAR(t.salario, 'FM999G999G999D90') AS "salário" FROM trabalhadores t JOIN obras o
    ON t.FK_Codigo_obras_trab = o.codigo 
    JOIN construtora co
        ON co.codigo = o.FK_Codigo_construtora
    WHERE co.nome LIKE '%Alfa%'
    ORDER BY t.nome ASC;

---Item 6) d

SELECT o.nome, TO_CHAR(SUM(t.salario), 'FM999G999G999D90') AS valor_total_salarios FROM trabalhadores t JOIN obras o
    ON t.FK_Codigo_obras_trab = o.codigo
GROUP BY o.nome;


---Item 6) e

SELECT DISTINCT nome FROM equipamentos WHERE codigo NOT IN (SELECT DISTINCT FK_Codigo_equipamentos FROM Periodo_de_uso);
