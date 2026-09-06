*Manejo de base de datos
///////////////////////////////////////////////////////////////////////////////
*Teniendo ya una base de datos podemos hacer un tipo "group by" de sql pero aquí
*en stata usaremos el comando "collapse" donde le especificaremos que estadístico
*queremos: (mean),(sum), (count), (median),(sd),(min/max),(p20). Podemos hacer
*uso de preserve y restore para vover a la data inicial(recordar que solo es una vez después al volver tienes que hacer otro preserve y restore...) y también hacer un save para guardar lo que buscabas.

import excel using "1000-Registros-de-ventas.xlsx", first
preserve

collapse (mean) Importeventatotal, by(Zona)

save venta_media_zona

collapse (sum) Importeventatotal, by(País)

collapse (count) Unidades, by(Zona)

collapse (max) Unidades , by(Zona)

collapse (min) Unidades , by(Zona)

*Describe el formato,tipos de datos y etiquetas, de la base de datos:

describe

*Poder conocer algunas descripciones descriptivas va depende dle tipo de variable
*cualitatativa o cuantitativa:

codebook  make 

codebook price

codebook foreign 

*Para clonar una variable con todo se utiliza:

clonevar "el nombre de la varaible nueva clonada" "=" "la variable de nuestra base de datos"

clonevar foreign2 = foreign

*para saber que usar dentro del collapse usamos, no solo en este comando help nos ayudará en todo tipo de comando:

help collapse

///////////////////////////////////////////////////////////////////////////////
*Podemos limpiar la base de datos activa en el stata usando:

clear

*Borramos todas las ejecuciones desarrolladas en stata:

clear all

*Borrar la ventana de resultados:

cls
///////////////////////////////////////////////////////////////////////////////
*Reestructurar la base de datos