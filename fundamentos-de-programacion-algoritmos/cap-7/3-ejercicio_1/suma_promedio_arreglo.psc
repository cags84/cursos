// Ejercicio 1 - Suma y promedio de un arreglo

// Crea un arreglo unidimensional con un tamaño de 5 (número reales),
// pregúntale al usuario los valores, y calcula la suma y promedio
// de todos ellos. (Pseudocódigo).

Proceso  suma_promedio_arreglo
	
	// Variables
	Definir i Como Entero;
	Definir arregloNum, arregloSuma, arregloPromedio Como Real;
	Dimension arregloNum[5];
	
	// Inicializamos las variables
	arregloSuma <- 0;
	
	// Mostramos los resultados
	Para i <- 0 Hasta 4 Con Paso 1 Hacer
		Escribir "Digite el valor de la posición ", i, ": ";
		Leer arregloNum[i];
		arregloSuma <- arregloSuma + arregloNum[i];
	FinPara
	
	// Promedio
	arregloPromedio <- (arregloSuma / 5);
	
	// Mostramos los resultados
	Escribir "La suma de todos los valores del arreglo es: ", arregloSuma;
	Escribir "El promedio de todos los valores del arreglo es: ", arregloPromedio;
	
FinProceso
