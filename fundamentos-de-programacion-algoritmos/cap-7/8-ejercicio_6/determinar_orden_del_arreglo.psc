// Ejercicio 6 - Determinar el orden de un arreglo

// Leer por teclado una serie de 5 numeros reales. El programa
// debe indicarnos si los números están ordenados de forma creciente
// decreciente, o si estan desordenados.

Proceso determinar_orden_arreglo
	
	// Definir variables
	Definir i, tamano, mayor, menor, contador_mayor, contador_menor Como Entero;
	Definir arregloReal Como Reales;
	Dimension arregloReal[5];
	
	// Inicializamos variables
	contador_mayor <- 0;
	contador_menor <- 0;
	mayor <- 0;
	menor <- 1000;
	tamano <- 4;
	
	// Solicitamos los valores del arregloReal
	Para i <- 0 Hasta tamano Con Paso 1 Hacer
		Escribir "Digite un número para la posicion [", i, "]: ";
		Leer arregloReal[i];
		
		Si i == 0 Entonces
			mayor <- arregloReal[i];
			menor <- arregloReal[i];
		FinSi
		
	FinPara
	
	Para i <- 0 Hasta tamano Con Paso 1 Hacer
		Si (arregloReal[i] > mayor) Entonces
			contador_mayor <- contador_mayor + 1;
		SiNo
			Si (arregloReal[i] < menor) Entonces
				contador_menor <- contador_menor + 1;
			FinSi
		FinSi
	FinPara
	
	
	Si (contador_mayor == tamano) Entonces
		Escribir "El arreglo esta ordenado de forma creciente";
	SiNo
		Si (contador_menor == tamano) Entonces
			Escribir "El arreglo esta ordenado de forma decreciente";
		SiNo
			// Caso contrario
			Escribir "El arreglo esta en forma desordenada!";
		FinSi
	FinSi
	
FinProceso
