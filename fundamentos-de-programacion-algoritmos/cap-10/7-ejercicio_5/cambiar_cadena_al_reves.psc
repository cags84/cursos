// Ejercicio 5 - Cambiar una cadena al reves

// Cambiar una cadena de carácteres, al reves
// Ejemplos:
// "hola" -> "aloh"

Proceso cambiar_cadena_al_reves
	
	// Variables
	Definir i, j, tamanio Como Entero;
	Definir string, string_new, aux Como Cadena;
	
	// Inicializamos las variables
	i <- 0;
	j <- 0;
	aux <- "";
	string <- "";
	string_new <- "";
	
	// Solicitamos la cadena
	Escribir "";
	Escribir Sin Saltar "Ingresar la cadena: ";
	Leer string;
	
	Escribir "";
	Escribir "Cadena original: ", string;
	
	// Ejecutamos la lógica
	tamanio <- Longitud(string);
	
	Para i <- (tamanio - 1) Hasta 0 Con Paso -1 Hacer
		aux <- Subcadena(string, i, i);
		string_new <- Concatenar(string_new, aux);
	FinPara
	
	// Mostrar los resultados
	// Mostramos los resultados
	Escribir "Cadena modificada: ", string_new;
	Escribir "";
	
	
FinProceso
