// Ejercicio 1 - Suma de elementos pares de una matriz

// Hacer un algoritmo que almacene números en una matriz de 3*4, imprimir la suma
// de los números pares almacenados en la matriz.

Proceso suma_elementos_pares_matriz
	
	// Variables
	Definir i, j, suma_pares Como Entero;
	Definir num Como Entero;
	Dimension num[3,4];
	
	// Solicitamos los valores para las posiciones de la matriz
	Escribir "";
	Para i <- 0 Hasta 2 Con Paso 1 Hacer
		Para j <- 0 Hasta 2 Con Paso 1 Hacer
			Escribir Sin Saltar "Digite un número para la posición [", i, "] [", j, "]: ";
			Leer num[i,j];
		FinPara
	FinPara
	
	// Recorremos nuevamente el arreglo
	i <- 0;
	suma_pares <- 0;
	Escribir "";
	Escribir "La matriz creada es: ";
	Mientras i <= 2 Hacer
		j <- 0;
		Mientras j <= 2 Hacer
			
			Escribir Sin Saltar " ", num[i,j], " ";
			
			Si (num[i,j] Mod 2 == 0) Entonces
				suma_pares <- suma_pares + num[i,j];
			FinSi
			j <- j + 1;
		FinMientras
		Escribir "";
		i <- i + 1;
	FinMientras
	
	// Mostramos el resultado
	Escribir "";
	Escribir "La suma de todos los números pares dentro de la matriz es: ", suma_pares;
	Escribir "";
	
FinProceso
