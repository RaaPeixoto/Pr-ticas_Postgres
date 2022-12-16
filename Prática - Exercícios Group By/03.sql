/* ### Questão 3:

Utilizando 1 query, obtenha a quantidade de **depoimentos** (`testimonials`) que o usuário com id **435** efetuou, incluindo o seu nome. 

A resposta deve vir no formato:

```
|---writer---|---testimonialCount---|
    Jesus               3
     ...               ...    
```

**OBS:** a coluna `id` se refere ao id do usuário */

SELECT users.name AS writer,
COUNT (testimonials."recipientId") AS "testimonialCount" FROM testimonials
JOIN users ON user.id=testimonials."writerId"
WHERE user.id = 435
GROUP BY user.id;