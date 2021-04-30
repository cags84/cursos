// Ejercicio 5 - Diagonal principal de una matriz

// Hacer un algoritmo que llene una matriz de 4x4 y que almacene la diagonal principal
// en un vector, imprimir el vector resultante.

Proceso diagonal_principal_de_una_matriz
	
	// Variables
	Definir i, j, valor_arreglo Como Entero;
	Definir matriz, arreglo Como Entero;
	Dimension matriz[4,4];
	Dimension arreglo[4];
	
	// Inicializamos las variables
	valor_arreglo <- 0;
	
	// Rellenamos la matriz
	Escribir "";
	Para i <- 0 Hasta 3 Con Paso 1 Hacer
		Para j <- 0 Hasta 3 Con Paso 1 Hacer
			Escribir Sin Saltar "Ingrese un valor para la posición: [", i, "][", j, "]: ";
			Leer matriz[i,j];
		FinPara
	FinPara
	Escribir "";
	
	// Imprimimos la matriz
	Escribir "";
	Escribir "La matriz resultante es: ";
	Para i <- 0 Hasta 3 Con Paso 1 Hacer
		Para j <- 0 Hasta 3 Con Paso 1 Hacer
			Escribir Sin Saltar " ", matriz[i,j], " ";
		FinPara
		Escribir "";
	FinPara
	Escribir "";
	
	// Ejecutamos la lógica
	i <- 0;
	Mientras i <= 3 Hacer
		j <- 0;
		Mientras j <= 3 Hacer
			Si (i == j) Entonces
				valor_arreglo <- matriz[i,j];
			FinSi
			j <- j + 1;
		FinMientras
		arreglo[i] <- valor_arreglo;
		i <- i + 1;
	FinMientras
	
	// Mostrar los resultados
	Escribir "";
	
	Escribir "El valor del arreglo resultante es: ";
	Para i <- 0 Hasta 3 Hacer
		Escribir Sin Saltar " ", arreglo[i], " ";
	FinPara
	Escribir "";
	
FinProceso
