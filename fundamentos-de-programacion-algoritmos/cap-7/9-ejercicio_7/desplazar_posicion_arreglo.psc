// Ejercicio 7 - Desplazar una posici�n en un arreglo

// Crea un programa que lea por teclado un arreglo de 6 n�meros
// y la desplace una posici�n hacia abajo: el primero pasa a ser
// el segundo, el segundo pasa a ser el tercero y as� sucesivamente.
// El �ltimo pasa a ser el primero. (Pseudoc�digo)

// [1][2][3][4][5][6]
//                / 
//     /--------/
//   /
// [6][1][2][3][4][5]

Proceso desplazar_posicion_arreglo
	
	// Variables
	Definir i, j, tamano, ultimo, arregloEntero Como Entero;
	Dimension arregloEntero[6];
	
	// Inicializar variables
	tamano <- 6;
	
	// Solicitamos los datos por teclado
	Para i <- 0 Hasta (tamano - 1) Con Paso 1 Hacer
		Escribir "Definir valor para la posici�n [", i, "]: ";
		Leer arregloEntero[i];
	FinPara
	
	// Guardamos la posici�n del �ltimo arregloEntero
	ultimo <- arregloEntero[5];
	
	Escribir "";
	
	// Mostramos el arreglo original
	Para i <- 0 Hasta (tamano - 1) Con Paso 1 Hacer
		Escribir "Arreglo original, posici�n [", i, "]: ", arregloEntero[i];
	FinPara
	
	Escribir "";
	
	// Desplazamos una posici�n el arreglo
	Para i <- 4 Hasta -1 Con Paso -1 Hacer
		Si i == -1 Entonces
			arregloEntero[0] <- ultimo;
		SiNo
			arregloEntero[i + 1] <- arregloEntero[i];
		FinSi
	FinPara	
	
	Escribir "";
	
	// Mostramos el arreglo
	Para i <- 0 Hasta (tamano - 1) Con Paso 1 Hacer
		Escribir "Arreglo reordenado, posici�n [", i, "] es: ", arregloEntero[i];
	FinPara
	
	Escribir "";
	
FinProceso
