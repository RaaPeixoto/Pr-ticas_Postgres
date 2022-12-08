/* Martinha Lima Zambujal devolveu o produto Fone Topo de Linha. Remova este registro da tabela compra; */
SELECT id FROM clientes WHERE nome='Martinha Lima Zambujal'; /* 5 */
SELECT id FROM produtos WHERE nome='Fone Topo de Linha'; /* 14 */
DELETE FROM compras WHERE id_cliente=5 AND id_produto=14;