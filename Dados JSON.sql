WITH obrasconstrutora AS (
    SELECT
        o.FK_Codigo_construtora,
        JSON_ARRAYAGG(
            JSON_OBJECT(
                'nome obra' VALUE o.nome,
                'endereço' VALUE JSON_OBJECT(
                    'logradura' VALUE o.logradura,
                    'numero' VALUE o.numero,
                    'complemento' VALUE o.complemento
                )
            )
        ) AS obras_json
    FROM
        obras o
    GROUP BY
        o.FK_Codigo_construtora
),
telefonesconstrutora AS (
    SELECT
        tel.FK_construtora_tel,
        JSON_ARRAYAGG(
            JSON_OBJECT(
                'numero' VALUE tel.numero
            )
        ) AS telefones_json
    FROM
        telefones tel
    GROUP BY
        tel.FK_construtora_tel
),
trabalhadoresconstrutora AS (
    SELECT
        o.FK_Codigo_construtora,
        JSON_ARRAYAGG(
            JSON_OBJECT(
                'nome' VALUE trab.nome,
                'CPF' VALUE trab.cpf,
                'salario' VALUE trab.salario
            )
        ) AS trabalhadores_json
    FROM
        trabalhadores trab JOIN obras o ON trab.FK_Codigo_obras_trab = o.codigo
    GROUP BY
        o.FK_Codigo_construtora
)

SELECT JSON_ARRAYAGG(
    JSON_OBJECT(
        'codigo' VALUE cons.codigo,
        'nome construtora' VALUE cons.nome,
        'nome fantasia' VALUE cons.nome_fantasia,
        'CNPJ' VALUE cons.CNPJ,
        'tabela obras' VALUE tabela.obras_json,
        'tabela telefones' VALUE tabela2.telefones_json,
        'tabela trabalhadores' VALUE tabela3.trabalhadores_json
    )
) AS JSON_DOCUMENT
FROM construtora cons
LEFT JOIN obrasconstrutora tabela ON tabela.FK_Codigo_construtora = cons.codigo
LEFT JOIN telefonesconstrutora tabela2 ON tabela2.FK_construtora_tel = cons.codigo
LEFT JOIN trabalhadoresconstrutora tabela3 ON tabela3.FK_Codigo_construtora = cons.codigo
WHERE cons.nome LIKE '%Alfa%';

