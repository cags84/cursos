// Ejercicios aritmetica 3

// Hacer un programa para intercambiar el valor de 2 variables
// Por ejemplo:
// a = 10		a = 5
// b = 5		b = 10

Proceso ejercicio_aritmetica_3
	
	// Definimos las variables
	Definir a, a1, b Como Entero;
	
	// Imprimimos
	Escribir "Digitar el valor de a: ";
	Leer a;
	Escribir "Digita el valor de b: ";
	Leer b;
	
	// Imprimir los valores digitados
	Escribir "";
	Escribir "Valores originales: ";
	Escribir "Valor de a: ", a;
	Escribir "Valor de a: ", b;
	
	// Intercambiamos los valores de las variables
	// Variable aux
	a1 <- a;
	
	a <- b;
	b <- a1;
	
	// Imprimimos los valores nuevos
	Escribir "";
	Escribir "Valores intercambiados: ";
	Escribir "Valor de a: ", a;
	Escribir "valor de b: ", b;
	
	
FinProceso
