// Tema 3 - Ordenamiento por selección explicación

// Crear un arreglo de 5 posiciones, perdir los valores y rellenarlo
// aplicar el ordenamiento por selección y mostrar el resultado.

Proceso ordenamiento_por_seleccion_codigo
	
	// variables
	Definir i, j, tamano Como Entero;
	Definir min, aux Como Entero;
	// Arreglos
	Definir num Como Entero;
	Dimension num[5];
	
	// Inicializamos las variables
	tamano <- 5;
	min <- 0;
	
	// Solicitamos los valores al usuario
	Para i <- 0 Hasta (tamano - 1) Con Paso 1 Hacer
		Escribir "Inrese un valor para la posición [", i, "]: ";
		Leer num[i];
	FinPara
	
	// Arreglo original
	Escribir "";
	Escribir "Arreglo original: ", num[0], " ", num[1], " ", num[2], " ", num[3], " ", num[4], " ";
	
	// Aplicamos el metodo por selección
	Para i <- 0 Hasta (tamano - 2) Con Paso 1 Hacer
		min <- i;
		Para j <- i + 1 Hasta (tamano - 1) Con Paso 1 Hacer
			Si num[j] < num[min] Entonces
				min <- j;
			FinSi
		FinPara
		
		// Intercambiamos las pociciones
		aux <- num[i];
		num[i] <- num[min];
		num[min] <- aux;
		
	FinPara
	
	// Mostramos los valores
	Escribir "Arreglo ordenado: ", num[0], " ", num[1], " ", num[2], " ", num[3], " ", num[4], " ";
	Escribir "";
	
FinProceso
