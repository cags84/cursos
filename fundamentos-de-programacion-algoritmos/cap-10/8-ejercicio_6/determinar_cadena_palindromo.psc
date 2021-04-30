// Ejercicio 6 - Determinar si una cadena es un palindromo

// Diseñar un algoritmo que tomando como entrada una cadena de texto nos devuelva
// si es o no un palíndromo. Se conoce que se denomina palíndromo a una palabra o frase que,
// ignorando los blancos, se lee igual de izquierda a derecha, que de derecha a izquierda.
//
// Ejemplo:
// "reconocer" <-> "reconocer"
// "oso"
// "anita lava la tina"

// [r] [e] [c] [o] [n] [o] [c] [e] [r]
//  0   1   2   3   4   5   6   7   8

Proceso determinar_cadena_palindromo
	
	// Variables
	Definir i, tamanio, tamanio_string_new Como Entero;
	Definir string, string_aux_1, string_aux_2, string_new, string_new_aux Como Cadena;
	Definir paliendromo, aux_paliendromo Como Logico;
	
	// Solicitamos la cadena de texto
	Escribir Sin Saltar "Ingresar cadena de texto: ";
	Leer string;
	
	// tamaño del string
	tamanio <- Longitud(string);
	tamanio_string_new <- 0;
	paliendromo <- Verdadero;
	aux_paliendromo <- Verdadero;
	string_aux_1 <- "";
	string_aux_2 <- "";
	string_new <- "";
	string_new_aux <- "";
	
	// Eliminamos los espacios en blanco
	Para i <- 0 Hasta (tamanio - 1) Con Paso 1 Hacer
		string_new_aux <- (Subcadena(string, i, i));
		Si (string_new_aux <> " ") Entonces
			string_new <- Concatenar(string_new, string_new_aux);
		FinSi
	FinPara
	
	// Ejecutamos la lógica
	tamanio_string_new <- Longitud(string_new);
	
	Escribir "";
	Para i <- 0 Hasta (tamanio_string_new - 1) Con Paso 1 Hacer
		
		string_aux_1 <- (Subcadena(string_new, i, i));
		string_aux_2 <- Subcadena(string_new, ((tamanio_string_new - i) - 1), ((tamanio_string_new - i) - 1));
		
		Si (string_aux_1 <> string_aux_2) Entonces
			aux_paliendromo <- Falso;
			paliendromo <- Falso;
		SiNo
			aux_paliendromo <- Verdadero;
		FinSi		
		
		Escribir string_aux_1, " == ", string_aux_2, " : ", aux_paliendromo;
		
	FinPara

	// Mostramos los resultados
	Escribir "";
	
	Si (paliendromo == Verdadero) Entonces
		Escribir "La frase es poliendromo :)";
	SiNo
		Escribir "La frase no es poliendromo, :(";		
	FinSi
	
	Escribir "";
	
FinProceso
