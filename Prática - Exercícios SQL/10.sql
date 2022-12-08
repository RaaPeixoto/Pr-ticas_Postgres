/* Olga Cascais Fortunato comprou dois Celular Topo de Linha. Adicione os registros de compra na tabela compras: */
SELECT id FROM clientes WHERE nome='Olga Cascais Fortunato'; /* 4 */
SELECT id FROM produtos WHERE nome='Celular Topo de Linha'; /* 8 */
INSERT INTO compras (id_cliente, id_produto) VALUES (4, 8);
INSERT INTO compras (id_cliente, id_produto) VALUES (4, 8);