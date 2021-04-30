// Ejercicio 6 - Matriz identidad

// Hacer un algoritmo que llene una matriz de 5x5 y que almacene en la diagonal
// principal unos y en las demás posiciones ceros.

Proceso matriz_identidad
	
	// Variables
	Definir i, j Como Entero;
	Definir matriz Como Entero;
	Dimension matriz[5,5];
	
	// Inicializamos las variables
	i <- 0;
	j <- 0;
	
	// Rellenamos la matriz
	Escribir "";
	Para i <- 0 Hasta 4 Con Paso 1 Hacer
		Para j <- 0 Hasta 4 Con Paso 1 Hacer
			Si (i==j) Entonces
				matriz[i,j] <- 1;
			SiNo
				matriz[i,j] <- 0;
			FinSi
		FinPara
	FinPara
	Escribir "";
	
	// Mostramos la matriz
	Escribir "";
	Escribir "La matriz resultande es: ";
	Escribir "";
	Para i <- 0 Hasta 4 Con Paso 1 Hacer
		Para j <- 0 Hasta 4 Con Paso 1 Hacer
			Escribir Sin Saltar " [", matriz[i, j], "] ";
		FinPara
		Escribir "";
	FinPara
	Escribir "";
	
	// Ejecutamos las lógica
	
	// Mostrar resultados	
	
	
FinProceso
