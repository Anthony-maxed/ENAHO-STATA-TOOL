*Antes de subir un archivo tenemos que fijarnos el directorio, lo podemos hacer manualmente dandole click en "Archivo" o escribiendo el siguiente código:

cd "aquí va el directorio copiarlo completo"

cd "C:Downloads"

///////////////////////////////////////////////////////////////////////////////
*Una vez hallamos especificado el directorio, es decir la carpeta de trabajo, podemos usar el siguiente comando para ver todos archivos que tenemos en esa carpeta:

ls

*Para que solo te muestre algunos tipos de archivos que tu deseas como dta,xlsx,csv,etc:

ls*.dta

///////////////////////////////////////////////////////////////////////////////
*Nos permitira copiar el nombre de la carpeta con su extensión(aquí también es recomendable que muestre la extensión del archivo para saber que tipo es). Entonces utilizamos el siguiente comando para subir el archivo tipo .dta: 

use "aquí copiamos el nombre del archivo"

use "enaho01a-2025-500.dta"

*Usamos otro comando para limpiar la base de datos subida si es que hubiese:

clear

*Se puede combinar:

use "enaho01a-2025-500.dta",clear

*Para borrar la ventana de resultados:

cls

///////////////////////////////////////////////////////////////////////////////
*Un vistazo de nuestras variables con el comando:

br

*Si queremos modificar utilizamos:

ed

*Podemos hacerlo más especificado si solo queremos ciertas variables,tanto con br y ed:

br "variables"

br aÑo mes conglome

ed aÑo mes conglome

///////////////////////////////////////////////////////////////////////////////
*Después de subir la base de datos para preservala y tenerla intacta se usa:

preserve

*Para mostrar la base de datos preservada se usa:

restore

///////////////////////////////////////////////////////////////////////////////
