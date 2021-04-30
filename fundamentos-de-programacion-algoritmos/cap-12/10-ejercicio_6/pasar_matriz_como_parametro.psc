// Ejercicio 6 - Pasar una matriz como parametro

// Diseñe un algoritmo que contenga el siguiente menú:
// 1. Llenar una matriz de 4x4.
// 2. Mostrar la matriz
// 3. Sumar todos los elementos de la matriz
// 4. Salir

SubProceso mostrarMenu(opt Por Referencia)
	Mientras (opt <= 0 O opt > 4) Hacer
		Escribir "Menú de opciones: ";
		Escribir "1. LLenar una matriz [4,4]";
		Escribir "2. Mostrar la matriz";
		Escribir "3. Sumar todos los elementos de la matriz";
		Escribir "4. Salir";
		Leer opt;
	FinMientras
FinSubProceso

SubProceso llenarMatriz(matriz Por Referencia)
	Definir i, j Como Entero;
	
	Escribir "LLenar la matriz";
	Para i <- 0 Hasta 3 Con Paso 1 Hacer
		Para j <- 0 Hasta 3 Con Paso 1 Hacer
			Escribir Sin Saltar "Digite valor para la posición [", i, "][", j, "]";
			Leer matriz[i,j];
		FinPara
	FinPara
	Escribir "";
	
FinSubProceso

SubProceso mostrarMatriz(matriz)
	Definir i, j Como Entero;
	i <- 0;
	j <- 0;

	Para i <- 0 Hasta 3 Con Paso 1 Hacer
		Para j <- 0 Hasta 3 Con Paso 1 Hacer
			Escribir Sin Saltar "[", matriz[i,j], "] ";
		FinPara
		Escribir "";
	FinPara
	Escribir "";
	
FinSubProceso


Funcion suma <- sumarElementosMatriz(matriz)
	Definir i, j Como Entero;
	Definir suma Como Real;
	suma <- 0;
	
	Para i <- 0 Hasta 3 Con Paso 1 Hacer
		Para j <- 0 Hasta 3 Con Paso 1 Hacer
			suma <- suma + matriz[i,j];
		FinPara
	FinPara
	
FinFuncion


Proceso principal
	
	// Variables
	Definir opt Como Entero;
	Definir sumaElementos Como Real;
	
	// matriz
	Definir matriz Como Entero;
	Dimension matriz[4,4];
	
	// Inicialiamos las variables
	opt <- 0;
	
	// Mostramos el menu
	Mientras opt <> 4 Hacer
		mostrarMenu(opt);
		// Switch
		Segun opt Hacer
			1:
				Escribir "";
				llenarMatriz(matriz);
				Escribir "";
				opt <- 0;
			2:
				Escribir "";
				mostrarMatriz(matriz);
				Escribir "";
				opt <- 0;
			3:
				Escribir "";
				sumaElementos <- sumarElementosMatriz(matriz);
				Escribir "La suma de todos los elementos de la matriz es: ", sumaElementos;
				Escribir "";
				opt <- 0;
			4:
				Escribir "";
				Escribir "Adios :)";
				Escribir "";
		FinSegun
	FinMientras
	
FinProceso
