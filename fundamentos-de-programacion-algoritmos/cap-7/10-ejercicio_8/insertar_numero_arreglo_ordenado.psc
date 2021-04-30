// Ejercicio 8 - Insertar un número en un arreglo ordenado

// Leer 5 elementos númericos que se introducirán ordenados de forma creciente.
// Éstos los guardaremos en un arreglo de tamaño 6. Leer un número N, e insertarlo
// en el lugar adecuado para que el arreglo continue ordenado. (Diagrama de flujo).

// [1][2][5][7][8][]
// [1][2][3][5][7][8]

Proceso insertar_numero_arreglo_ordenado
	
	// Variables
	Definir i, j, num, tamano, posicion Como Enteros;
	Definir ordenado Como Logico;
	// Declaramos el arreglo
	Definir arregloNum Como Enteros;
	Dimension arregloNum[6];
	
	// Inicializamos las variables
	i <- 0;
	posicion <- 0;
	tamano <- 6;
	ordenado <- falso;
	
	// Leer los datos
	Para i <- 0 Hasta 4 Con Paso 1 Hacer
		Escribir "Ingrese un valor para el arreglo, posicion [", i, "] :";
		Leer arregloNum[i];
	FinPara
	
	Escribir "";
	
	Escribir "Digite un valor adicional: ";
	Leer num;
	
	Para i <- 0 Hasta 5 Con Paso 1 Hacer
		Si ((num < arregloNum[i]) Y (ordenado == falso)) Entonces
			posicion <- i;
			Para j <- 4 Hasta posicion Con Paso -1 Hacer
				arregloNum[j + 1] <- arregloNum[j];
			FinPara
			arregloNum[posicion] <- num;
			ordenado <- Verdadero;
		FinSi
	FinPara
	
	// Mostramos el arreglo ordenado
	Para i <- 0 Hasta 5 Con Paso 1 Hacer
		Escribir "El valor de la posición [", i, "] es: ", arregloNum[i];
	FinPara
	
	
FinProceso
