// Tema 2 - Ordenamiento por insercci�n codigo

// Cree un arreglo de tipo entero de un tama�o de 5, pida los elementos
// al usuario y ordenelo por el metodo de insercci�n. 

Proceso ordenamiento_por_inserccion_codigo
	
	// Variables
	Definir i, aux, pos, tamano Como Entero;
	// Arreglos
	Definir num Como Entero;
	Dimension num[5];
	
	// Inicialiamos variables
	aux <- 0;
	tamano <- 5;
	
	// Solicitamos los valores del arreglo
	Para i <- 0 Hasta (tamano - 1) Con Paso 1 Hacer
		Escribir "Ingrese un n�mero para la posici�n [", i, "]: ";
		Leer num[i];
	FinPara
	
	Escribir "";
	Escribir "Arreglo Original: ", num[0], " ", num[1], " ", num[2], " ", num[3], " ", num[4], " ";
	
	Para i <- 1 Hasta (tamano - 1) Con Paso 1 Hacer
		
		pos <- i;
		aux <- num[i];
		
		Mientras (pos > 0 Y (num[pos-1] > aux)) Hacer
			num[pos] <- num[pos-1];
			pos <- pos - 1;
		FinMientras
		
		num[pos] <- aux;
		
	FinPara
	
	// Mostramos el arreglo ordenado
	Escribir "Arreglo Ordenado: ", num[0], " ", num[1], " ", num[2], " ", num[3], " ", num[4], " ";
	Escribir "";
	
FinProceso
