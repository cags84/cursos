// Ejercicio 5 - Ordenando alfabeticamente 5 apellidos

// Diseñar un Algoritmo que pida 5 apellidos, los almacene en un arreglo
// y posteriormente muestre los apellidos ordenados alfabeticamente. 



SubProceso ordenarAlfabeticamente(apellidos Por Referencia)
	// Metodo burbuja
	Definir i, j, tamanio Como Entero;
	Definir aux Como Cadena;
	
	tamanio <- 5;
	
	Para i <- 0 Hasta (tamanio - 2) Con Paso 1 Hacer
		Para j <- 0 Hasta (tamanio - 2) Con Paso 1 Hacer
			Si (apellidos[j] > apellidos[j+1]) Entonces
				aux <- apellidos[j];
				apellidos[j] <- apellidos[j+1];
				apellidos[j+1] <- aux;
			FinSi
		FinPara
	FinPara
FinSubProceso

// Pedimos los apellidos
SubProceso pedirApellidos(apellidos Por Referencia)
	Definir i, tamanio Como Entero;
	tamanio <- 5;
	
	Escribir "";
	Para i <- 0 Hasta (tamanio - 1) Con Paso 1 Hacer
		Escribir Sin Saltar "Digite el ", (i+1), " apellido: ";
		Leer apellidos[i];
	FinPara
FinSubProceso

SubProceso mostrarArreglo(apellidos)
	Definir i, j, tamanio Como Entero;
	tamanio <- 5;
	
	Para i <- 0 Hasta (tamanio - 1) Con Paso 1 Hacer
		Escribir "";
		Escribir Sin Saltar "Posición [", i, "]:   ", apellidos[i], " ";
	FinPara
	
	Escribir "";
FinSubProceso

Proceso principal
	
	// Variables
	Definir i, j Como Entero;
	// Arreglo
	Definir apellidos Como Cadena;
	Dimension apellidos[5];
	
	// Pedimos apellidos
	pedirApellidos(apellidos);
	
	// Mostrar arreglo
	mostrarArreglo(apellidos);
	
	// Ordenar alfabeticamente
	ordenarAlfabeticamente(apellidos);
	
	// Mostrar el arreglo ordenado
	mostrarArreglo(apellidos);
	
	// Generamos un espacio a lo último
	Escribir "";
	
	
FinProceso
