/* ### Questão 2:

Utilizando 1 query, obtenha a quantidade de graduações (`educations`) por usuário, incluindo o seu id.

A resposta deve vir no formato:

```
|---id---|---educations---|
   110	         2
	 178	         1
   62	           1
   128	         1
   ...          ...          
```

**OBS:** a coluna `id` se refere ao id do usuário */

SELECT "userId" AS id, COUNT("userId") AS educations FROM educations GROUP BY "userId";