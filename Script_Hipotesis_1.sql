SELECT 
Fuga,
ROUND(AVG(indice_satisfaccion), 1) AS Promedio_IS,
ROUND(AVG(var_indice_satisfaccion), 1) AS Promedio_Var_IS,
COUNT(*) AS Cantidad_Clientes
FROM churn_clientes
GROUP BY Fuga;
