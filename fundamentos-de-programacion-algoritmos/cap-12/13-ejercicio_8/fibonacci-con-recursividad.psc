// Ejericio 8 - fibonacci con recursividad

// Implementar un subprograma recursivo que realice la serie Fibonacci

Funcion fib <- fibonacci(num)
	
	Definir fib Como Real;
	
	Si (num == 1 O num == 2) Entonces
		fib <- 1;
	SiNo
		fib <- fibonacci(num - 1) + fibonacci(num - 2);
	FinSi
	
FinFuncion

Proceso principal
	
	// Variables
	Definir num, resultado Como Entero;
	num <- 0;
	
	// Pedimos el número al usuario
	Repetir
		Limpiar Pantalla;
		Escribir "Digite un número: ";
		Leer num;
	Hasta Que (num > 0); 
	
	// Calculamos el fibonacci
	resultado <- fibonacci(num);
	
	// Mostramos el resultado
	Escribir "";
	Escribir "El fibonacci de ", num, " es: ", resultado;
	Escribir "";
	
FinProceso
