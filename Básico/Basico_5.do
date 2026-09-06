*Conversión de la variable
///////////////////////////////////////////////////////////////////////////////
*Tenemos una variable str que contiene números por ejemplo: año : 2015 2015 pero
*stata los lee como str entonces nosotros usamos este código para que se genere 
*una variable nueva pero ahora cambiado las observaciones a int:

destring "la variable", gen("nombre de la nueva variable a la cual se va crear")

destring año, gen(año2)

// lo comprobamos con un:

describe año año2

codebook año año2

// lo opuesto al comando anterior "destring" es el comando "tostring"
// de int a str:

tostring año2 , gen(año_n)

*Pasamos al otro comando, el cual hace que lo str se conviertan en una categórica
*les asigna un número sucesivamente a cada observación distinta y si se repite 
*le pone el número ya establecido previamente;

encode países, gen(países_n)

// lo opuesto sería :

decode dominio, gen(dominio_2)

*Cambiamos el número de la categoría y sus label:
// Podemos ver priemro la variable con un "codebook" para ver que número tienen
// y que label tienen

recode "variable" ("numero antiguo" "se le puede agregar mas" = "numero nuevo"), gen("nombre de la nueva variable")

recode foreign (0=1 "nacional") (1=2 "exranjero"), gen(Nacionalidad)

recode foreign (0 3 4 5 =1 "nacional") (1=2 "exranjero"), gen(Nacionalidad)