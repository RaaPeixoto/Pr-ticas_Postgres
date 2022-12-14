/* ### Questão 4:

Utilizando uma query, obtenha as empresas (`companies`) 
para as quais o usuário com id **50** trabalha atualmente.
 Para filtrar quem trabalha atualmente, utilize o campo `endDate` da tabela `experiences`
 . Se ele estiver null (`IS NULL`), significa que a pessoa ainda não encerrou a experiência dela na empresa, ou seja, está trabalhando lá.

A resposta deve vir no formato:

```
|---id---|---name---|--------role--------|----company----|---startDate---|
    1        João      Software Engineer        OLX          2020-06-01
    2        João         Consultant            IBM          2022-02-01
   ...        ...            ...                ...              ...
```

**OBS:** a coluna `id` se refere ao id do usuário */

SELECT users.id, users.name AS "name", roles.name AS "role", companies.name AS "company", experiences."startDate"
FROM experiences
JOIN users ON experiences."userId" = users.id
JOIN roles ON experiences."roleId"=roles.id
JOIN companies ON experiences."companyId"=companies.id
WHERE users.id=50
AND experiences."endDate" IS NULL;

