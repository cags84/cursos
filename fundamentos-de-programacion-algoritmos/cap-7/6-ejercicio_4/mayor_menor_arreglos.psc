// Ejercicio 4 - Hallar el n�meor mayor y menor de un arreglo

// Crea un arreglo unidimensional con 'n' n�meros, lee los elementos
// por teclado, guardalos en el arreglo, calcula, cu�l de los n�meros es el mayor 
// de todos y adem�s cu�l es el menor de todos.

Proceso mayor_menor_arreglos
	
	// Variables
	Definir i, tamano Como Entero;
	Definir arregloNum, numMayor, numMenor Como Reales;
	Dimension arregloNum[100];
	
	// Solicitamos el numero de elementos al usuario
	Repetir
		Escribir "Escribir el n�mero de elementos del arreglo: ";
		Leer tamano;
	Hasta Que (tamano > 0);
	
	Para i <- 0 Hasta (tamano - 1) Con Paso 1 Hacer
		
		Escribir "Digite el valor de la posici�n [", i, "]: ";
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
	Escribir "El n�mero mayor del arreglo es: ", numMayor;
	Escribir "El n�mero menor del arreglo es: ", numMenor;
	
FinProceso
