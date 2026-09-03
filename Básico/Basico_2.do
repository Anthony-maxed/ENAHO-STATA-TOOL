*Importar archivos
*Recodar poner el directorio de trabajo
///////////////////////////////////////////////////////////////////////////////
*Excel

*Se usa el comando "import" especificamos que vamos a subir en este caso "excel"
*Después "using" y ponemos el nombre del archivo. Le agregamos el ",first" para que la primera fila de mi archivo excel la utilize como las variables de cada columna en stata.
import excel using "nombre del archivo"

import excel using "1000-Registros-de-ventas.xlsx",first

*Con estos extras podemos especificar si queremos que se suba otra hoja que haya en el excel y el rango de celdas

import excel using "nombre del archivo", sheet("el nombre de la hoja") cellrange("en excel vemos las columnas y números de las esquinas del rango") first

import excel using "1000-Registros-de-ventas.xlsx", sheet(incompleto) cellrange(D1:E20) first

*Para guardar la base de datos usada y con lso cambios hechos utilizamos el siguiente comando y esto lo va guardar como tipo .dta, nosotros solo ponemos el nombre del archivos:

save "nombre que le quieres dar al archivo"

save precio_costo

///////////////////////////////////////////////////////////////////////////////
*Formato plano(texto y csv)

import delimited "nombre del archivo"

import delimited "precios.txt"

import delimited "preciosnuevos.csv"

///////////////////////////////////////////////////////////////////////////////