SELECT 
fuga,
ROUND(AVG(var_logins), 2) AS Promedio_de_Logins,
ROUND(AVG(var_uso_servicio), 2) AS Promedio_de_Uso,
ROUND(AVG(var_dias_ult_conexion), 2) AS Promedio_Dias_de_Ultima_Conexion,
COUNT(*) AS Clientes
FROM churn_clientes
GROUP BY fuga;
      
      
