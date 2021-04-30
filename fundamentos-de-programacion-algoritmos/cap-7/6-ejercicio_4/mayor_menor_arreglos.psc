// Ejercicio 4 - Hallar el númeor mayor y menor de un arreglo

// Crea un arreglo unidimensional con 'n' números, lee los elementos
// por teclado, guardalos en el arreglo, calcula, cuál de los números es el mayor 
// de todos y además cuál es el menor de todos.

Proceso mayor_menor_arreglos
	
	// Variables
	Definir i, tamano Como Entero;
	Definir arregloNum, numMayor, numMenor Como Reales;
	Dimension arregloNum[100];
	
	// Solicitamos el numero de elementos al usuario
	Repetir
		Escribir "Escribir el número de elementos del arreglo: ";
		Leer tamano;
	Hasta Que (tamano > 0);
	
	Para i <- 0 Hasta (tamano - 1) Con Paso 1 Hacer
		
		Escribir "Digite el valor de la posición [", i, "]: ";
		Leer arregloNum[i];
		
		Si (i == 0) Entonces
			// Inicializamos las variables
			numMayor <- arregloNum[0];
			numMenor <- arregloNum[0];
		FinSi
		
	FinPara
	
	Para i <- 0 Hasta (tamano - 1) Con Paso 1 Hacer
		
		Si (arregloNum[i] > numMayor) Entonces
			numMayor <- arregloNum[i];
		SiNo
			Si (arregloNum[i] < numMenor) Entonces
				numMenor <- arregloNum[i];
			FinSi
		FinSi
		
	FinPara
	
	// Mostramos los resultados
	Escribir "";
	Escribir "El número mayor del arreglo es: ", numMayor;
	Escribir "El número menor del arreglo es: ", numMenor;
	
FinProceso
