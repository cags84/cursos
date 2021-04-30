// Tema 2 - Busqueda binaria código

//
//

Proceso busqueda_binaria_codigo
	
	// Variables
	Definir i, tamano, dato, posicion Como Entero;
	Definir inf, sup, mitad Como Entero;
	Definir encontrado Como Logico;
	// Arreglos
	Definir num Como Entero;
	Dimension num[5];
	
	// Inicializamos las variables
	i <- 0;
	tamano <- 5;
	dato <- 0;
	inf <- 0;
	sup <- tamano;
	encontrado <- Falso;
	
	// Pedimos los elementos del arreglo
	Escribir "Escriba los elementos del arreglo: ";
	Para i <- 0 Hasta (tamano - 1) Con Paso 1 Hacer
		Escribir Sin Saltar "Digite un valor para la posición [", i, "]: ";
		Leer num[i];
	FinPara
	
	// Digitar el elemento a buscar
	Escribir "";
	Escribir Sin Saltar "Digite elemento a buscar: ";
	Leer dato;
	
	// Algoritmo  de la busqueda binaria
	i <- 0;
	mitad <- trunc((inf + sup) / 2); // Solo recibimos enteros
	
	Mientras (inf<=sup Y i<5 Y encontrado == Falso) Hacer
		Si (num[mitad] == dato) Entonces
			encontrado <- Verdadero;
			posicion <- mitad;
		SiNo
			Si num[mitad] > dato Entonces
				sup <- mitad;
				mitad <- trunc((inf+sup)/2);
			SiNo
				inf <- mitad;
				mitad <- trunc((inf+sup)/2);
			FinSi
		FinSi
		i <- i + 1;
	FinMientras
	
	// Condicional
	Si encontrado == Verdadero Entonces
		Escribir "";
		Escribir "El elemento ha sido encontrado, en la posición [", posicion, "]";
	SiNo
		Escribir "";
		Escribir "El elemento no pudo ser encontrado, :(";
	FinSi
	
	Escribir "";

	
FinProceso
