// Ejercicio 2 - Posición del número mayor de la matriz

// Hacer un algortimo que llene una matriz de 4*4 y determine la posición [fila, columna] del 
// número mayor almacenado en la matriz.

Proceso posicion_numero_mayor_de_la_matriz
	
	// Variables
	Definir i, j, mayor, pos_x, pos_y Como Entero;
	Definir num Como Entero;
	Dimension num[4,4];
	
	// Inicializamos las variables
	i <- 0;
	j <- 0;
	mayor <- 0;
	pos_x <- 0;
	pos_y <- 0;
	
	// Solicitamos los datos para la matriz
	Escribir "";
	Para i <- 0 Hasta 3 Con Paso 1 Hacer
		Para j <- 0 Hasta 3 Con Paso 1 Hacer
			Escribir Sin Saltar "Ingrese un valor para la posición: [", i, "] [", j, "]: ";
			Leer num[i,j];
		FinPara
	FinPara
	Escribir "";
	
	// Mostrar la matriz
	i <- 0;
	Mientras i < 4 Hacer
		j <- 0;
		Mientras j < 4 Hacer
			Si (num[i,j] > 0 Y num[i,j] < 10) Entonces
				Escribir Sin Saltar "  ", num[i,j], "  ";
			SiNo
				Escribir Sin Saltar " ", num[i,j], "  ";
			FinSi
			j <- j + 1;
		FinMientras
		Escribir "";
		i <- i + 1;
	FinMientras
	Escribir "";
	
	// Buscamos la posición del número mayor
	Para i <- 0 Hasta 3 Con Paso 1 Hacer
		Para j <- 0 Hasta 3 Con Paso 1 Hacer
			Si (i==0 Y j==0)  Entonces
				pos_x <- i;
				pos_y <- j;
				mayor <- num[0,0];
			SiNo
				Si num[i,j] > mayor Entonces
					pos_x <- i;
					pos_y <- j;
					mayor <- num[i,j];
				FinSi
			FinSi
		FinPara
	FinPara
	
	// Imprimimos el resultado
	Escribir "";
	Escribir "El número mayor de la matriz es: ", mayor, " y la posición es: [", pos_x, "][", pos_y, "]";
	Escribir "";
	
FinProceso
