// Tema 1 - Concepto de matrices

// Arreglos bidimensionales o Matrices
// ¿Qué son las matrices?
// Es un arreglo de M*N elemetnso organizados en dos dimensiones donde "M" es el número de filas
// y "N" es el número de columnas.
//
// Para representar una matriz se neceista un nonbre de matriz acompañado de 2 índices.

// Creación de matrices:
// Definir num Como Enteros;
// Dimension num[3,3];

Proceso concepto_de_matrices
	
	// Definición de matrices o arreglos bidimensionales
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
