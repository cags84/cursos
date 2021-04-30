// Ejercicio 4 - Calcular la suma mayor de columnas

// Hacer un algoritmo que llene una matriz de 3x4. Sumar las columnas e imprimir 
// que columna tuvo la máxima suma y la suma de esa columna.

Proceso suma_mayor_columnas
	
	// Variables
	Definir i, j, suma_columnas, mayor, columna Como Entero;
	// Matriz
	Definir matriz Como Entero;
	Dimension matriz[3,4];
	
	// Inicializamos las variables
	mayor <- 0;
	columna <- 0;
	
	// Solicitamos los datos para la matriz
	Escribir "";
	Para i <- 0 Hasta 2 Con Paso 1 Hacer
		Para j <- 0 Hasta 3 Con Paso 1 Hacer
			Escribir Sin Saltar "Ingrese un dato para la posición [", i, "][", j, "]: ";
			Leer matriz[i,j];
		FinPara
	FinPara
	Escribir "";
	
	// Imprimimos la matriz
	Escribir "La matriz formada es: ";
	i <- 0;
	Mientras i <= 2 Hacer
		j <- 0;
		Mientras j <= 3 Hacer
			Escribir Sin Saltar " ", matriz[i,j], " ";
			j <- j + 1;
		FinMientras
		Escribir "";
		i <- i + 1;
	FinMientras
	Escribir "";
	
	// Ejecutamos la lógica
	Para i <- 0 Hasta 3 Con Paso 1 Hacer
		suma_columnas <- 0;
		Para j <- 0 Hasta 2 Con Paso 1 Hacer
			suma_columnas <- suma_columnas + matriz[j, i];
		FinPara
		Si i == 0 Entonces
			mayor <- suma_columnas;
		SiNo
			Si suma_columnas > mayor Entonces
				columna <- i;
				mayor <- suma_columnas;
			FinSi
		FinSi
	FinPara
	
	// Mostrar resultados
	columna <- columna + 1;
	Escribir "";
	Escribir "La columna donde la suma fue mayor es la ", columna, " con un valor de: ", mayor;
	Escribir "";
	
	
FinProceso
