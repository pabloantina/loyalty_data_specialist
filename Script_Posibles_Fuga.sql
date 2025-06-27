SELECT
ID,
fuga,
var_logins,
var_uso_servicio,
var_dias_ult_conexion
FROM churn_clientes
WHERE fuga = 1
AND (var_logins < 20
OR var_uso_servicio < 0
OR var_dias_ult_conexion > 2)