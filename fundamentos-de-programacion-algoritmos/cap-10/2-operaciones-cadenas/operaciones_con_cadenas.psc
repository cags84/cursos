// Tema 1 - Operaciones con cadenas

// Operaciones con cadena, en PSEInt:
// longitud.
//

Proceso operaciones_con_cadenas
	
	// Variables
	Definir num Como Entero;
	Definir frase, frase2, frase3, frase4, frase5, frase6 como cadena;
	Definir tamanio Como Entero;
	
	// Inicializamos las variables
	frase <- "Hola mundo";
	frase2 <- Subcadena(frase, 0, 5);
	
	// Longitud de una cadena
	tamanio <- Longitud(frase);
	Escribir "El tamaño de la cadena es: ", tamanio;
	
	// Subcadena
	Escribir "";
	Escribir "El tamaño de la subcadena es: ", frase2;
	
	// Concatenar.
	frase3 <- "Hola";
	frase4 <- " mundo";
	frase5 <- Concatenar(frase3, frase4);
	Escribir "Concatenedar ", frase3, " ", frase4;
	
	// Convertir a número
	frase6 <- "104";
	num <- ConvertirANumero(frase6) + 14;
	Escribir "El valor de la operación es: ", num;
	
	
	
	
	
FinProceso
