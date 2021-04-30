// Ejercicio 4 - Eliminar espacios en blanco de una cadena

// Diseñe un algoritmo que elimine los espacios en blanco de un texto.
// Ejemplo:
// "Hola que tal?"
// El resultado debe ser: "Holaquetal?"
//

Proceso eliminar_espacio_en_blanco_de_cadena
	
	// Variables
	Definir i, tamanio Como Entero;
	Definir string, aux_string, string_nuevo Como Cadena;
	
	// Solicitamos la cadena
	Escribir "";
	Escribir Sin Saltar "Digite la cadena";
	Leer string;
	Escribir "";
	
	// Ejecutamos la lógica
	tamanio <- Longitud(string);
	string_nuevo <- "";
	
	Para i <- 0 Hasta tamanio Con Paso 1 Hacer
		
		aux_string <- Subcadena(string, i, i);
		
		Si (aux_string <> " ") Entonces
			string_nuevo <- Concatenar(string_nuevo, aux_string);
		FinSi
		
	FinPara
	
	// Mostrar los resultados
	Escribir "Cadena Original: ", string;
	Escribir "Cadena Sin Espacios: ", string_nuevo;
	Escribir "";
	
FinProceso
