// Ejercicio 3 - Imprimor orden inverso un arreglo 

// Crea un arreglo unidimensional con 'n' caracteres,
// lee los elementos por teclado, guardalos en el arreglo
// y muéstralos en el orden inverso al introducido. (Diagrama N-S)

Proceso imprimir_orden_inverso
	
	// Variables
	Definir i, cantidad Como Entero;
	Definir arregloCaracter, valorPosicion Como Caracter;
	Dimension arregloCaracter[100];
	
	// Pedir los valores
	Repetir
		Escribir "Digite el tamaño del arreglo: ";
		Leer cantidad;
	Hasta Que cantidad > 0;
	
	Para i <- 0 Hasta (cantidad - 1) Con Paso 1 Hacer
		Escribir "Digite el valor de la posición [", i, "]: ";
		Leer valorPosicion;
		arregloCaracter[i] <- valorPosicion;
	FinPara
	
	Escribir "";
	
	Para i <- (cantidad - 1) Hasta 0 Con Paso -1 Hacer
		Escribir "El valor de la posición [", i, "] es: ", arregloCaracter[i];
	FinPara
	
FinProceso
