// Ejercicio 1 - Suma de los n primeros n�meros

// Calcular la suma de los "n" primeros n�meros. (Pseudoc�digo)
// s = 1 + 2 + 3 + ... + N

Proceso suma_n_primeros_numeros
	
	// Variables
	Definir num1, resultado, i Como Entero;
	
	// Inicializamos las variables
	resultado <- 0;
	
	// Solicitamos los datos
	Escribir "Ingrese un n�mero: ";
	Leer num1;
	
	// L�gica
	Para i <- 1 Hasta num1 Con Paso 1 Hacer
		resultado <- resultado + i;
	FinPara
	
	// Mostramos el resultado
	Escribir "El valor de la suma es: ", resultado;
	
FinProceso
