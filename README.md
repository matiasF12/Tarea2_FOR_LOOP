# Tarea2_FOR_LOOP

## ANTES QUE NADA DESCARGAR Y EJECUTAR LIBRERIA "TIDYVERSE"

## Pregunta 1: Cargue las bases de datos incoporando en cada una de ellas la variable “tamanio”,
donde indique de que tamaño es la empresa de ese país

Se cargan las bases de datos con el comando "read.csv2" y luego se genera la nueva
variable "tamanio" con mutate (donde se realiza en base a pais) y luego se cambia al 
tamano correspondiente de la empresa.

Luego se cambian los nombres de la variable "participacion_mujeres" dado que en 
algunos casos esta variable estaba escrita de distinta manera y generaba un problema
a la hora de combinar las bases de datos.

## Pregunta 2: Reuna todas las bases en una sola y defina de qué tipología (tipo de datos) son cada
una de las variables que se encuentran en la data.

Se reunen las bases de datos en base al comando "union_all" donde deben ser colocados
todos los nombres de las variables.
   TIPOLOGIA
 FECHA: Era un character, que se  cambia a fecha ( se hace mas adelante para graficar)
 PAIS:  Es un character.
 INGRESOS: Es numeric.
 COSTOS: Es numeric.
 PORCENTAJE_MUJERES:Es numeric.
 EXPORTACIONES: Es numeric.
 IMPORTACIONES: Es numeric.
 ENDEUDAMIENTO: Es numeric.
 MOROSIDAD: Es numeric.
 RESERVAS: Es numeric.
 SPREAD: Es numeric.
 TASA_INTERES: Es numeric.
 TAMANIO: Es un character.

## Pregunta 3: Determine a través del uso de condicionales y/o for cuántas obervaciones tiene Peru
versus Chile.

En base a for e if se determina la cantidad de observaciones de Peru y Chile, resultando
tener un total de 260 observaciones cada pais.	

## Pregunta 4: Determine a través del uso de condicionales y/o for ¿cuál es el país con mayor
ingresos de explotación para los años que considera la muestra.

En base a los condicionales for e if, se obtiene que el pais con mayor cantidad de ingresos
por explotacion es Colombia con 3940.79922 millones de dolares

## Pregunta 5: Genere una variable(columna) , donde si el país es Chile multiplique la tasa de interes
por 0,1, cuando sea Peru le sume 0,3 y, y finalmente si es Colombia divida por 10 .Use 
condicionales y/o for

Se genera una variable "columna" con las condiciones dadas.

## Pregunta 6: Reemplace en la columna exportaciones con 1 cuando es mayor a 2,1, con un 2
cuando es menor 2,1y un 3 cuando es igual a 2,1, redondee al primer decimal la
variable. Use condicionales y/o for.

Se redondea al primer decimal y luego se utiliza condicionales for e if con las
condiciones mencionadas, resultando 520 observaciones con valores 1 (mayor a 2,1) 
y 260 observaciones con valores 2 ( menor que 2,1).

## Pregunta 7:  Gráfique algunas variables seleccionadas, las cuales puedan responder a una
pregunta que se haga con respecto a los datos.

Se generan graficos para determinar la diferencia de ingresos segun el tamano de la
empresa por pais y se construye otro grafico que indica la evolucion de los ingresos por
años de las empresas en cada pais.

