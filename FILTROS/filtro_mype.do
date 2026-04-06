* ==============================================================================
* Proyecto: Herramientas para la ENAHO - Identificación de MYPES
* Archivo: filtro_mype.do
* Autor: Anthony Huaynate
* Objetivo: Filtrar el módulo 500 (Empleo) para aislar la base y analizar 
* únicamente a las Micro y Pequeñas Empresas.
* ==============================================================================

*PARTE FUNDAMENTAL=============================================================

*Mire la PARTE FUNDAMENTAL Y PARTE FINAL// usted tiene que cambiar las fechas.

*Descargue el ENAHO módulo 500 anual (Empleo e Ingresos) 

*IMPORTANTE: Reemplaza la siguiente ruta por la ubicación de tu carpeta, lo que estan dentro de las comillas "...."
cd "C:\ENAHO\"

//Antes de cargar el módulo 500 (Empleo e Ingresos) // verifica el X
// use "enaho01a-202X-500.dta", clear //// lo que está con X es para que cambies al número del año del archivo descargado.

use "enaho01a-2024-500.dta", clear

*==============================================================================
*==============================================================================
*==============================================================================
*La parte INTERMEDIA corre normal

//Cuando descargas el archivo de la ENAHO, también encuentras el diccionario y el formato de la encuesta,los cuales nos sirven para saber qué variable usar.

//En nuestro caso la variable de nuestro interés es p512a. Para conocer la variable,el valor numérico que representa cada etiqueta de las observaciones y unas cuantas observaciones.

de p512a ocu500
label list p512a ocu500
list p512a ocu500 in 1/10

*==============================================================================

//En el ENAHO sacaremos las MYPE solo con el número de trabajadores: Micro(De uno (1) hasta diez (10) trabajadores inclusive.) y PEQUEÑA (De uno (1) hasta cien (100) trabajadores inclusive.) 
//Solo contamos con la gente ocupada

keep if ocu500 == 1
gen MYPE = 1 if inlist(p512a,1,2,3)

//Los valores 4 y 5 no sirven para la definición de MYPE además que tal vez haya observaciones vacías. Para saber el número de observaciones que no cumplen con la definición MYPE y las que sí.

count if MYPE == 1

count if MYPE == .

//Borramos las filas que no cumplen con ser MYPE

drop if MYPE == .

//Le asignamos una etiqueta al valor numérico 1 de la variable MYPE.

label define es_mype 1 "MYPE"
label values MYPE es_mype
list MYPE in 1/5

* =============================================================================
* =============================================================================
* =============================================================================

*PARTE FINAL:
//Para guardar en un nuevo archivo // "enaho_202X_solo_mypes.dta" // recuerda cambiar el X

save "enaho_2024_anual_solo_mypes.dta", replace

* =============================================================================

//Como resultado final, tenemos en nuestro documento de ENAHO la variable de interés MYPE, la cual ha filtrado la base y nos permite analizar únicamente a las micro y pequeñas empresas dentro de la encuesta en el nuevo archivo llamado "enaho_202X_anual_solo_mypes.dta".

