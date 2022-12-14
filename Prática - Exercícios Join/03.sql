/* ### Questão 3:

Utilizando uma query, obtenha todos os cursos (`courses`) 
que o usuário com id **30** já finalizou, incluindo o nome da escola. 
O que indica que um usuário terminou um curso é o campo `status` da tabela `educations`, que deve estar como "**finished**".

A resposta deve vir no formato:

```
|---id---|---name---|---course---|----school----|---endDate---|
    1        João      HTML/CSS       Driven       2021-12-01
    2        João      JavaScript     Driven       2022-01-20
   ...        ...         ...           ...          ...
```

**OBS:** a coluna `id` se refere ao id do usuário */

SELECT users.id,users.name AS "name", courses.name AS course , schools.name AS school,educations."endDate" 
FROM  educations
JOIN users ON educations."userId" = users.id
JOIN courses ON educations."courseId" = courses.id
JOIN schools ON educations."schoolId" = schools.id
WHERE users.id=30;
