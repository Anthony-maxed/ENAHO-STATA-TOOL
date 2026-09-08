*Generación de variables
////////////////////////////////////////////////////////////////////////////
*Utilizamos el comando "generate" o "gen"

gen "el nombre de la variable"

gen price_2 = price^2

gen lnprice = ln(price)

gen w = price/2 + weight*2

*creamos una variable categórica:

sysuse auto

gen calidad = 1 if price < 6165.26

replace calidad = 2 if price >= 6165.26
// otra forma de lo mismo
replace calidad = 2 if calidad ==.

////////////////////////////////////////////////////////////////////////////
*Poner etiquetas a las nuevas variables

label var "la variable" "la etiqueta de la variable simple"

label var calidad "calidad de carros"	

*Poner etiquetas a los valores

label define lbl_calidad 1 "barato" 2 "caro"

label values calidad lbl_calidad

*Podemos usar codebook para ver las etiquetas

codebook calidad