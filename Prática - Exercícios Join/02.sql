/* ### Questão 2:

Utilizando uma query, obtenha todos os depoimentos (`testimonials`) cadastrados, incluindo o nome do remetente e do destinatário.

A resposta deve vir no formato:

```
|---id---|---writer---|---recipient---|--------------message------------------|
    1        João           Maria         Foi ótimo trabalhar com a Maria...
    2        Maria          João           Adorei trabalhar com o João...
   ...        ...            ...                     ...
```

**OBS:** a coluna `id` se refere ao id do depoimento

**Dica:** para fazer múltiplos joins com uma mesma tabela, use apelidos para cada join (ex: `JOIN tabela t1`) */


SELECT testimonials.id,testimonials.message, users1.name  AS "writer",users2.name As "recipient" 
FROM testimonials
JOIN users users1 ON testimonials."writerId"=users1.id JOIN users users2 ON testimonials."recipientId"=users2.id ;


