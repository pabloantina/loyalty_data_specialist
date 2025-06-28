# Análisis de Fuga de Clientes – ECOMM

Este repositorio contiene un análisis exploratorio y descriptivo sobre los factores que inciden en la fuga de clientes de la empresa ECOMM, una plataforma de servicios por suscripción.

## Objetivo

El objetivo principal es identificar patrones o comportamientos en los clientes que permitan anticipar una potencial desafiliación, permitiendo a la empresa actuar de forma preventiva para mejorar su retención.

## Estructura del Repositorio

## Scripts SQL y Validación de Hipótesis

A continuación se listan las hipótesis planteadas y el script asociado para su validación:

### 1. Satisfacción y fuga
**Hipótesis:**  
> Clientes con menor Índice de Satisfacción (IS) o clientes con caída reciente en IS, podemos suponer que tienen una mayor probabilidad de fuga.

**Código:** [Código hipótesis 1](Script_Hipotesis_1.sql)  
**Resultado:** [Resultados hipótesis 1](Results_Hipotesis_1.csv)

**Observación:**  
A partir del procesamiento de los datos encontramos que los clientes que se desafilian muestran un índice de satisfacción promedio significativamente más bajo (119 vs. 176) 
y además, experimentan una caída reciente en su satisfacción (–5.7 puntos en promedio), mientras que los clientes activos muestran un aumento promedio de +10 puntos. 
Por lo que podemos concluir que una caída reciente en el IS podría ser un indicador anticipado de abandono.


### 2. Antigüedad del cliente y fuga
**Hipótesis:**  
> Clientes con menor antigüedad en la plataforma tienen mayor probabilidad de desafiliarse.

**Código:** [Código hipótesis 2](Script_Hipotesis_2.sql)  
**Resultado:** [Resultados hipótesis 2](Results_Hipotesis_2.csv)

**Observación:**  
A partir de los datos se puede concluir que esto es falso dado que la tasa de fuga se incrementa con la antigüedad, alcanzando un 7% entre los usuarios con más
de dos años de suscripción, mientras que la tasa de fuga para usuarios con antigüedad menor a un año es de 2,1%. Esto podría estar reflejando necesidades insatisfechas en el largo plazo.


### 3. Actividad reciente y fuga
**Hipótesis:**  
> Clientes con una menor actividad reciente, pueden indicar un posible abandono y desinterés.

**Código:** [Código hipótesis 1](Script_Hipotesis_3.sql)  
**Resultado:** [Resultados hipótesis 1](Results_Hipotesis_3.csv)

**Observación:**  
Los datos muestran que los clientes que permanecen activos en ECOMM presentan una mayor frecuencia de logins y una tendencia al uso creciente. En contraste, los clientes que se 
desafiliaron redujeron su uso y extendieron el tiempo desde su última conexión. Esto confirma que una baja en la actividad puede anticipar comportamientos de fuga. A su vez se genero un código con el
objetivo de identificar clientes potenciales a la fuga bajo el criterio que la variación de logins sea menor a 20, o que la variación de uso del servicio sea negativa (menor a cero) o que la variación de
los días de ultima conexión sea mayor a dos.

**Código:** [Código posibles ID fuga](Script_Posibles_Fuga.sql)  
**Resultado:** [Resultados IDs con posible fuga](Resultas_ID_Posibles_Fuga.csv)


### 4. Soporte técnico y fuga
**Hipótesis:**  
> Una mayor interacción con el equipo de soporte y una mayor gravedad de los reclamos, pueden reflejar problemas no resueltos y en consecuencia un mayor riesgo de churn.

**Código:** [Código hipótesis 1](Script_Hipotesis_4.sql)  
**Resultado:** [Resultados hipótesis 1](Results_Hipotesis_4.csv)

**Observación:**  
Se pudo apreciar que los clientes activos contactan al soporte más frecuentemente (1.37) que los fugados (1.12) y la gravedad promedio es más alta en clientes activos (0.83 vs 0.55).
Si se valido que la variación en la prioridad del soporte aumentó más en clientes fugados (de 0.04 a 0.18). Lo cual es consistente con quejas que se agravaron justo antes de la fuga.

## Código de Python

Se realizo un breve código en Google Colab para poder obtener información general acerca de la base de datos, tales como medias, medianas, desvios y cuartiles. Asi como también, dos histogramas de intéres y un boxplot para identificar outliers.

**Código:** [Código de Python](Churn_Clientes.ipynb)  
**Código en Google Colab:** [Notebook](https://colab.research.google.com/drive/1Ts7AmgmSTS2V_zmhVL9pm9KzSk5r2GY4?usp=sharing)

## Herramientas utilizadas

- **SQL:** para el procesamiento de datos y validación de hipótesis.
- **Python / Google Colab:** para análisis descriptivos y exploración complementaria.
- **Looker Studio:** dashboard interactivo para la visualización de los datos.
- **Canva:** para la presentación ejecutiva del análisis.

## Recursos adicionales

- [Dashboard interactivo en Looker](URL)
- [Presentación ejecutiva (Canva)](https://www.canva.com/design/DAGrjVGS-yg/hfd_jqg5bhwy1vr0GLNgCg/edit?utm_content=DAGrjVGS-yg&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton)


## Contacto

Pablo Antinarelli – Business Intelligence & Data Analyst  
Email: pablo.antinarelli@gmail.com  
Celular: +1165182651
