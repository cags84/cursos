// Ejercicio 9 - Eleminar un elemento de un arreglo

// Leer por teclado un arreglo de 5 elementos númericos y una
// posición (entre 0 y 4). Eleminar el elemento situado en la posición 
// dada sin dejar huecos. (Diagrama N-S)

Proceso eliminar_posicion_de_un_arreglo
	
	// Variables
	Definir i, posicion, tamano Como Entero;
	// Definimos el arreglo
	Definir arregloNum Como Entero;
	Dimension arregloNum[5];
	
	// Inicializamos las variables
	tamano <- 4;
	posicion <- 0;
	
	// Solicitamos los valores
	Para i <- 0 Hasta tamano Con Paso 1 Hacer
		Escribir "Digite el número para la posición [", i, "]: ";
		Leer arregloNum[i];
	FinPara
	
	Escribir "";
	Escribir arregloNum[0], " ", arregloNum[1], " ", arregloNum[2], " ", arregloNum[3], " ", arregloNum[4];
	Escribir "";
	
	Repetir
		Escribir "Digite un número entre 0 y 4, del arreglo: ";
		Leer posicion;
	Hasta Que (posicion > 0);
	
	Para i <- posicion Hasta (tamano - 1) Con Paso 1 Hacer
		arregloNum[i] <- arregloNum[i + 1];
	FinPara
	
	// Mostramos el nuevo arrego
	Escribir "";
	Escribir arregloNum[0], " ", arregloNum[1], " ", arregloNum[2], " ", arregloNum[3];
	Escribir "";
	
FinProceso
