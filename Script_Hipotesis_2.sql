SELECT 
CASE 
  WHEN meses_suscripcion < 6 THEN '0–6 meses'
  WHEN meses_suscripcion < 12 THEN '6–12 meses'
  WHEN meses_suscripcion < 24 THEN '12–24 meses'
  ELSE '+ de 24 meses'
END AS antiguedad,
COUNT(*) AS total,
SUM(Fuga) AS total_fugas,
ROUND(100.0 * SUM(Fuga)/COUNT(*), 2) AS tase_de_fuga
FROM churn_clientes
GROUP BY antiguedad
ORDER BY tase_de_fuga DESC


