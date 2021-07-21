SELECT vendedor.Nome, SUM(vendas.Total) as total_vendido
FROM Relacional.Vendedores as vendedor LEFT JOIN Relacional.Vendas as vendas on (vendedor.IDVendedor = vendas.IDVendedor)
GROUP BY vendedor.Nome
ORDER BY total_vendido DESC