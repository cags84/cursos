// Ejercicio 5 - Mostrar un arreglo mediante los extremos

// Leer 8 n�meros enteros dentro de un arreglo. Debemos mostrarlos
// en el siguiente orden: el primero, el �ltimo, el segundo, el pen�ltimo,
// el tercero, etc. (Diagrama de flujo).

Proceso mostrar_arreglo_mediante_extremos
	
	// Variables
	Definir i, tamano Como Entero;
	Definir arregloEntero Como Entero;
	Dimension arregloEntero[8];
	
	// Inicializamos
	tamano <- 7;
	
	// Solicitamos llenar el arrego
	Para i <- 0 Hasta 7 Con Paso 1 Hacer
		Escribir "Definir la posici�n [", i, "]: ";
		Leer arregloEntero[i];
	FinPara
	
	// Mostramos el arreglo
	// [0][1][2][3][4][5][6][7]
	// [0][8-1] [1][8-2]
	
	Escribir "";
	
	Para i <- 0 Hasta 4 Con Paso 1 Hacer
		
		Escribir "Posicion [", i, "]: ", arregloEntero[i], " ", "Posicion [", (tamano - i), "]: ", arregloEntero[tamano - i];
		Escribir "";
		
	FinPara
	
FinProceso
