/* Chico Buarque de Holanda comprou o produto Violão Lava ME 2. Adicione esse registro de compra na tabela compra; */
SELECT id FROM clientes WHERE nome='Chico Buarque de Holanda'; /* 8 */
SELECT id FROM produtos WHERE nome='Violão Lava ME 2'; /* 10 */
INSERT INTO compras (id_cliente, id_produto) VALUES (8, 10);