// Tema 1 - Concepto de matrices

// Arreglos bidimensionales o Matrices
// �Qu� son las matrices?
// Es un arreglo de M*N elemetnso organizados en dos dimensiones donde "M" es el n�mero de filas
// y "N" es el n�mero de columnas.
//
// Para representar una matriz se neceista un nonbre de matriz acompa�ado de 2 �ndices.

// Creaci�n de matrices:
// Definir num Como Enteros;
// Dimension num[3,3];

Proceso concepto_de_matrices
	
	// Definici�n de matrices o arreglos bidimensionales
	Definir num Como Entero;
	Dimension num[3, 3];
	// num[filas, columnas]
	
	// Llenado el manual de esta matriz
	num[0,0] <- 2; // Fila 0, columna 0
	num[1,2] <- 12; // Fila 1, Columna 2
	
	// Para imprimir esta matriz, lo hacemos con
	Escribir num[0,0];
	Escribir num[1,2];
	
FinProceso
