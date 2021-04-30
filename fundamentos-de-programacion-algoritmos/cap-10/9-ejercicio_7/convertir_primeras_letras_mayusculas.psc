// Ejercicio 7 - Convertir las primeras letras a mayúsculas

// Ingresar una frase y modificarla convirtiendo el primer carácter de cada palabara si esta
// fuera una letra, de minúsculas a mayúsculas.

// Ejemplo:
// "hola que tal" -> "Hola Que Tal"

Proceso convertir_primeras_letras_mayusculas
	
	// Variables
	Definir i, tamanio Como Entero;
	Definir string, string_aux, palabra_mayuscula Como Cadena;
	Definir  firts_word Como Logico;
	
	// Inicializamos las variables
	i <- 0;
	string <- "";
	firts_word <- Falso;
	
	// Solicitamos los datos
	Escribir Sin Saltar "Ingrese una cadena: ";
	Leer string;
	
	// Cadena Original
	Escribir "";
	Escribir "Cadena original: ", string;
	
	// Ejecutamos la logica.
	tamanio <- Longitud(string);
	string_aux <- "";
	palabra_mayuscula <- "";
	
	Para i <- 0 Hasta (tamanio - 1) Con Paso 1 Hacer
		
		Si (i == 0 Y  Subcadena(string, i, i) <> " ") Entonces
			firts_word <- Verdadero;
		FinSi
		
		Si firts_word == Verdadero Entonces
			palabra_mayuscula <- Mayusculas(Subcadena(string, i, i));
			string_aux <- Concatenar(string_aux, palabra_mayuscula);
		SiNo
			string_aux <- Concatenar(string_aux, Subcadena(string, i, i));
		FinSi
		
		Si (Subcadena(string, i, i) == " ") Entonces
			firts_word <- Verdadero;
		SiNo
			firts_word <- Falso;
		FinSi
	
	FinPara
	
	// Salida del programa	
	Escribir "Cadena modificada: ", string_aux;
	Escribir "";
	
FinProceso
