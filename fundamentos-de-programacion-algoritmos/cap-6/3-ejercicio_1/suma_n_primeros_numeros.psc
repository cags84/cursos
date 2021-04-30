// Ejercicio 1 - Suma de los n primeros números

// Calcular la suma de los "n" primeros números. (Pseudocódigo)
// s = 1 + 2 + 3 + ... + N

Proceso suma_n_primeros_numeros
	
	// Variables
	Definir num1, resultado, i Como Entero;
	
	// Inicializamos las variables
	resultado <- 0;
	
	// Solicitamos los datos
	Escribir "Ingrese un número: ";
	Leer num1;
	
	// Lógica
	Para i <- 1 Hasta num1 Con Paso 1 Hacer
		resultado <- resultado + i;
	FinPara
	
	// Mostramos el resultado
	Escribir "El valor de la suma es: ", resultado;
	
FinProceso
