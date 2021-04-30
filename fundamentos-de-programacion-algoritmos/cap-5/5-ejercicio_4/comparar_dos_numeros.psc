// Ejercicio 4

// Leer 2 números; si son iguales que los multiplique, si el primero
// es mayor que el segundo los reste y si no que los sume

Proceso comparar_dos_numeros
	
	// Definir las variables
	Definir num1, num2, resultado Como Reales;
	
	// Inicializamos la variable
	resultado <- 0;
	
	// Solicitar los datos
	Escribir "Digite el número 1: ";
	Leer num1;
	Escribir "Digite el número 2: ";
	Leer num2;
	
	// Ejecutamos los calculos
	Si (num1 == num2) Entonces
		resultado <- num1 * num2;
	SiNo
		Si (num1 > num2) Entonces
			resultado <- num1 - num2;
		SiNo
			resultado <- num1 + num2;
		FinSi 
	FinSi
	
	
	// Mostramos en pantalla
	Escribir "El resultado es: ", resultado;
	
FinProceso
