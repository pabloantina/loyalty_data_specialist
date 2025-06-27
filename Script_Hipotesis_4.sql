SELECT 
fuga,
ROUND(AVG(casos_soporte), 2) AS prom_casos_soporte,
ROUND(AVG(prioridad_soporte), 2) AS prom_gravedad,
ROUND(AVG(var_casos_soporte), 2) AS prom_var_casos_de_soporte,
ROUND(AVG(var_prioridad_soporte), 2) AS prom_prioridad_soporte,
COUNT(*) AS Clientes
FROM churn_clientes
GROUP BY Fuga;
