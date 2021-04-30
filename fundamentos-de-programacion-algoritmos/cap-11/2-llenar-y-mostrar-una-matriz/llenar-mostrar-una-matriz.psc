// Tema 1 - LLenar y mostrar una matriz

// Llenar y mostrar una matriz
//

Proceso llenar_mostrar_una_matriz
	
	// Variables
	Definir i, j, num Como Entero;
	// Filas 3, Columnas 3
	Dimension num[3,3]; // Se pueden almacenar 3x3=9
	
	// Inicializar las variables
	i <- 0;
	j <- 0;
	
	// Llenado manual de la matriz
	num[0,1] <- 8;
	num[0,1] <- 2;
	
	// Llenar con cliclos
	// El primer ciclo trabaja las filas
	Para i <- 0 Hasta 2 Con Paso 1 Hacer
		// El segundo cliclo trabaja las columnas
		Para j <- 0 Hasta 2 Con Paso 1 Hacer
			Escribir Sin Saltar "Digite el valor de la posición [", i, "] [", j, "]: "; 
			Leer num[i,j];
		FinPara
	FinPara
	
	// Para imprimir se hacen dos cliclos anidados
	i <- 0;
	
	Escribir "";
	Escribir "Los valores del arreglo son: ";
	
	Mientras i <= 2 Hacer
		j <- 0;
		Mientras j <= 2 Hacer
			Escribir Sin Saltar " ", num[i,j], " ";
			j <- j + 1;
		FinMientras
		
		Escribir "";
		i <- i + 1;
	FinMientras
	
	Escribir "";
	
FinProceso
