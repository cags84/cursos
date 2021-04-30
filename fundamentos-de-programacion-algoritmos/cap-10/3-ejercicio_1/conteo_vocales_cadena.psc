// Ejercicio 1 - Conteo de vocales con una cadena

// Diseñe un programa que permita ingresar una cadena de caracteres,
// y detecte cuántas vocales tiene.

Proceso conteo_vocales_cadena
	
	// Variables
	Definir i, j, contador, tamanio_frase, tamanio_vocales Como Entero;
	Definir frase, aux_frase, vocales, aux_vocales Como Cadena;
	
	// Solicitamos la cadena al usuario
	Escribir Sin Saltar "Escriba la cadena: ";
	Leer frase;
	
	// Convertimos a minúsculas
	contador <- 0;
	
	// Convertimos a minusculas y calculamos el tamaño
	frase <- Minusculas(frase);
	tamanio_frase <- Longitud(frase);
	
	// Calculamos el tamaño de la cadena vocales
	vocales <- "aeiuo";
	tamanio_vocales <- Longitud(vocales);
	
	Para i <- 0 Hasta (tamanio_frase - 1) Con Paso 1 Hacer
		aux_frase <- Subcadena(frase, i, i);
		Para j <- 0 Hasta (tamanio_vocales - 1) Con Paso 1 Hacer
			aux_vocales <- Subcadena(vocales, j, j);
			Si (aux_frase == aux_vocales) Entonces
				contador <- contador + 1;
			FinSi
		FinPara
	FinPara
	
	// Mostramos los resultados
	Escribir "";
	Escribir "La cantidad de vocales encontradas en la cadena es: ", contador;
	Escribir "";
FinProceso
