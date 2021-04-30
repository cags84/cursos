// Ejercicio 8 - Reemplazar espacios por asteristicos

// Sustituir todos los espacios en blanco de una frase por un asterisco (*).

// Ejemplo:
// "hola que tal?" -> "hola*que*tal?"

Proceso reemplazar_espacios_por_asteriscos
	
	// Variables
	Definir i, tamanio Como Entero;
	Definir string, string_aux Como Cadena;
	
	// Solicitamos el string
	Escribir Sin Saltar "Ingrese un string: ";
	Leer string;
	
	// Mostramos el resultado
	Escribir "";
	Escribir "Cadena original: ", string;
	
	// Inicializamos las variables
	tamanio <- Longitud(string);
	i <- 0;
	string_aux <- "";
	
	// Ejecutamos la lógica
	Para i <- 0 Hasta (tamanio - 1) Con Paso 1 Hacer
		
		Si (Subcadena(string, i, i) == " ") Entonces
			string_aux <- Concatenar(string_aux, "*");
		SiNo
			string_aux <- Concatenar(string_aux, Subcadena(string, i, i));
		FinSi
		
	FinPara
	
	// Mostramos el resultado
	Escribir "Cadena modificada: ", string_aux;
	Escribir "";
	
FinProceso
