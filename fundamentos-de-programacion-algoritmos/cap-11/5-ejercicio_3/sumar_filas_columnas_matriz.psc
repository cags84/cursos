// Ejercicio 3 - Sumar las filas y columnas de una matriz

// Hacer un algoritmo que llene una matriz de 4x4. Calcular la suma de cada fila
// y almacenarla en un arreglo, la suma de cada columna y almacenarla en otro arreglo.

Proceso sumar_filas_columnas_matriz
	
	// Variables
	Definir i, j, suma_filas, sumas_columnas Como Entero;
	
	// Inicializamos las variables
	suma_filas <- 0;
	sumas_columnas <- 0;
	
	// Definir matriz
	Definir matriz Como Entero;
	Dimension matriz[4,4];
	
	// Definir arreglos
	Definir filas, columnas Como Entero;
	Dimension filas[4];
	Dimension columnas[4];
	
	// Solicitamos los datos para llenar matriz
	Escribir "";
	Para i <- 0 Hasta 3 Con Paso 1 Hacer
		Para j <- 0 Hasta 3 Con Paso 1 Hacer
			Escribir Sin Saltar "Ingrese un valor para la posición: [", i, "][", j, "]: ";
			Leer matriz[i,j];
		FinPara
	FinPara
	Escribir "";
	
	// Mostramos la matriz
	Escribir "Mostramos la matriz[4,4]: ";
	i <- 0;
	Mientras i <= 3 Hacer
		j <- 0;
		Mientras j <= 3 Hacer
			Escribir Sin Saltar " ", matriz[i,j], " ";
			j <- j + 1;
		FinMientras
		i <- i + 1;
		Escribir "";
	FinMientras
	Escribir "";
	
	// Sumamos la filas y columnas
	Para i <- 0 Hasta 3 Con Paso 1 Hacer
		Para j <- 0 Hasta 3 Con Paso 1 Hacer
			suma_filas <- suma_filas + matriz[i,j];
			sumas_columnas <- sumas_columnas + matriz[j,i];
		FinPara
		filas[i] <- suma_filas;
		suma_filas <- 0;
		columnas[i] <- sumas_columnas;
		sumas_columnas <- 0;
	FinPara
	
	// Mostramos las matrices
	Escribir "";
	Escribir "Arreglo fila: ";
	Para i <- 0 Hasta 3 Con Paso 1 Hacer
		Escribir Sin Saltar " [", filas[i], "] ";
	FinPara
	Escribir "";
	Escribir "Arreglo Columna: ";
	Para i <- 0 Hasta 3 Con Paso 1 Hacer
		Escribir Sin Saltar " [", columnas[i], "] ";
	FinPara
	Escribir "";
	
FinProceso
