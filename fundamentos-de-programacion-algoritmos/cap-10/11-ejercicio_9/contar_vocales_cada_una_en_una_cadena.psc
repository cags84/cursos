// Ejercicio 9 - Contar vocales (cada una) en una cadena

// Leer una frase y contar el número de vocales (de cada una) que aparecen.

// Ejemplo:
// "muercielago en su cueva"

// Vocales 'a': 2
// Vocales 'e': 3
// Vocales 'i': 1
// Vocales 'o': 1
// Vocales 'u': 3


Proceso contar_vocales_cada_una_en_una_cadena
	
	// Variables
	Definir i, num_a, num_e, num_i, num_o, num_u, tamano Como Entero;
	Definir frase, frase_aux Como Cadena;
	
	// Solicitamos la cadena
	Escribir "";
	Escribir Sin Saltar "Ingrese cadena (No importa si en mayusculas o minusculas): ";
	Leer frase;
	Escribir "";
	
	// Inicializamos el tamaño
	tamano <- Longitud(frase);
	num_a <- 0;
	num_e <- 0;
	num_i <- 0;
	num_o <- 0;
	num_u <- 0;
	
	Para i <- 0 Hasta (tamano - 1) Con Paso 1 Hacer
		
		frase_aux <- Subcadena(frase, i, i);
		
		Si (frase_aux == "a" O frase_aux == "A") Entonces
			num_a <- num_a + 1;
		FinSi
		
		Si (frase_aux == "e" O frase_aux == "E") Entonces
			num_e <- num_e + 1;
		FinSi
		
		Si (frase_aux == "i" O frase_aux == "I") Entonces
			num_i <- num_i + 1;
		FinSi
		
		Si (frase_aux == "o" O frase_aux == "O") Entonces
			num_o <- num_o + 1;
		FinSi
		
		Si (frase_aux == "u" O frase_aux == "U") Entonces
			num_u <- num_u + 1;
		FinSi
		
	FinPara
	
	// Mostramos el resultado
	Escribir "Se entontraron los siguientes resultados: ";
	Escribir "Vocal a: ", num_a;
	Escribir "Vocal e: ", num_e;
	Escribir "Vocal i: ", num_i;
	Escribir "Vocal o: ", num_o;
	Escribir "Vocal u: ", num_u;
	Escribir "";
	
FinProceso
