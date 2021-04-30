// Tema 1 - Metodo de burbuja - pseudocòdigo

// Definir un arreglo de 5 elementos, recorrerlo con el metodo burbuja
// ordenarlo y mostrar el arreglo ordenado.

Proceso metodo_burbuja_pseudocodigo
	
	// Variables
	Definir i, j, tamano, aux Como Entero;
	// Definir el arreglo
	Definir num Como Entero;
	Dimension num[5];
	// lógico
	Definir ordenado Como Logico;
	
	
	// Inicializamos las variable
	tamano <- 5;
	aux <- 0;
	
	// Solicitamos los datos al usuario
	Escribir "";
	Para i <- 0 Hasta (tamano - 1) Con Paso 1 Hacer
		Escribir "Ingresar número para arreglo, en la posición [", i, "]: ";
		Leer num[i];
	FinPara
	
	Escribir "";
	Escribir "Arreglo original: ", num[0], " ", num[1], " ", num[2], " ", num[3], " ", num[4], " ";
	
	ordenado <- falso;
	i <- 0;
	
	// Aplicamos el metodo de burbuja
	Mientras (ordenado=falso Y i <= (tamano-2)) Hacer
		ordenado <- Verdadero;
			Para j <- 0 Hasta (tamano - 2) Hacer
				Si (num[j] > num[j + 1]) Entonces
					aux <- num[j];
					num[j] <- num[j + 1];
					num[j + 1] <- aux;
					ordenado <- falso;
				FinSi
			FinPara
			i <- i + 1;
	FinMientras
	
	// Mostramos el arreglo ordenado
	Escribir "";
	Escribir "Arreglo ordenado: ", num[0], " ", num[1], " ", num[2], " ", num[3], " ", num[4], " ";
	
FinProceso
