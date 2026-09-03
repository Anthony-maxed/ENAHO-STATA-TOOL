*Unir base de datos
*Utilizaremos 2 comandos dependiendo del caso ("merge" y "append")
///////////////////////////////////////////////////////////////////////////////
*Empezamos con "merge", antes de hacer un merge vemos nuestra data si encontramos
*una llave o una columna que es igual en ambas bases (ejemplo id , nombre,etc),
*entonces el merge funcionará para unir ambas bases 1:1
* Fruta Precio              Fruta Costo
* Manzana 5                Manzana  2
* Platano 4                Platano  1
*Nos arrojará:
* Fruta   Precio  Costo
* Manzana   5       2
* Platano   4       1

*Nuestros archivos deben estar en .dta
*Subimos la primera base 

use f_precio, clear 

merge using f_costo 

*Se crearan variables "_merge" que podemos borrarlas con el siguiente comando que también sirve para borrar otras variables:

drop "la variable"

drop _merge

*Merge era de manera horizontal y teniendo en cuenta una llave y ahora usando "append" es de manera vertical los pone debajo

use f_precio, clear

append using f_precio2
///////////////////////////////////////////////////////////////////////////////
*Para poder cambiar de nombre las variables de la base de datos es 

rename "la variable" "el nombre cambiado de la variable"

rename País Country