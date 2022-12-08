import express from 'express';
import pkg from 'pg';

const { Pool } = pkg;

const connection = new Pool({
  host: 'localhost',
  port: 5432,
  user: 'postgres',
  password: '123456gm',
  database: 'desafio_sql_b672418d'
});

const app = express();
app.use(express.json());

app.get("/produtos", async (req, res) => {
  const produtos = await connection.query("SELECT * FROM produtos LIMIT 5");
  res.send(produtos.rows);
});

app.listen(4000, () => {
  console.log("Server listening on port 4000.");
});