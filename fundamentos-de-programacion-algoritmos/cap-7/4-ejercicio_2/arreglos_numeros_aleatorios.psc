// Ejercicio 3 - Llenar un arreglo con n�meros aleatorios

// Crear un arreglo unidimensional donde el usuario �ndique el tama�o
// por teclado, luego llenar el arreglo con n�meros aleatorios entre
// 1 - 100 y por �ltimo mostrar los elementos del arreglo. (Diagrama de flujo)

Proceso arreglo_numeros_aleatorios
	
	// Variables
	Definir i, tamano Como Entero;
	Definir arregloNum Como Reales;
	Dimension arregloNum[100];
	
	// Solicitamos los valores
	Repetir
		Escribir "Digite el tama�o del arreglo: ";
		Leer tamano;
	Hasta Que tamano > 0;
	
	Para i <- 0 Hasta (tamano - 1) Con Paso 1 Hacer
		arregloNum[i] <- azar(100) + 1;
	FinPara
	
	// Mostrar los resultados
	Para i <- 0 Hasta (tamano - 1) Con Paso 1 Hacer
		Escribir "Valor de la posici�n [", i, "] es: ", arregloNum[i];
	FinPara
	
FinProceso
