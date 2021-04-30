// Ejercicio 2 - Comparando longitud de cadenas

// Calcular la longitud de 2 cadenas de caracteres, y mostrar la cadena con mayor longitud

Proceso comparando_longitud_cadenas
	
	// Variables
	Definir i, tamanio_cadena1, tamanio_cadena2 Como Entero;
	Definir cadena1, cadena2, mayor Como Cadena;
	
	// Solicitamos las cadenas
	Escribir "";
	Escribir Sin Saltar "Digite la cadena 1: ";
	Leer cadena1;
	Escribir Sin Saltar "Digite la cadena 2: ";
	Leer cadena2;
	Escribir "";
	
	// Ejecutamos la lógica
	tamanio_cadena1 <- Longitud(cadena1);
	tamanio_cadena2 <- Longitud(cadena2);
	
	Si (tamanio_cadena1 > tamanio_cadena2) Entonces
		mayor <- "Cadena 1";
	SiNo
		Si (tamanio_cadena1 > tamanio_cadena2) Entonces
			mayor <- "Cadena 2";
		SiNo
			mayor <- "Iguales";
		FinSi
	FinSi
	
	// Mostrar los resultados
	Si (mayor == "Iguales") Entonces
		Escribir "Las cadenas son iguales!";
	SiNo
		Escribir "La cadena mayor es: ", mayor;
	FinSi
	
	Escribir "";
	
FinProceso
