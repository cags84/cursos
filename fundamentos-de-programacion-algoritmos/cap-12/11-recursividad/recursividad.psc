// Tema 5 - Recursividad 

// Recursividad: Es una tecnica de programaci�n que se utiliza para realizar
// una llamada a una funcion desde ella misma.

// Todo programa recursivo tiene que tener alguna condici�n, que ponga fin a
// la recursividad, es decir, que el programa deje de llamarse a si mismo cuando
// se cumpla la condici�n, sino se formaria un bucle infinito.

// Ejemplo:
// Hallar el factorial de un n�mero con recursividad.

// Necesitamos dos cosas (Caso Base, Caso Recursivo)
// 
// Si num == 0 Entonces
//     retorno <- 1;
// SiNo
//     retorno <- num * factorial(n-1);

Funcion fac <- factorial(num)
	
	// Definimos las variables
	Definir fac Como Entero;
	fac <- 0;
	
	// Metodo recursivo
	Si num == 0 Entonces
		fac <- 1;
	SiNo
		fac <- num * (factorial(num-1));
	FinSi
	
FinFuncion

Proceso principal
	
	// Variables
	Definir num, resultado Como Entero;
	
	// Inicializamos las variables
	num <- 0;
	resultado <- 0;
	
	// Solictamos el valos
	Escribir "";
	Escribir "Ingrese el n�mero a calcular el factorial: ", num;
	Leer num;
	Escribir "";
	
	// Calculamos el factorial
	resultado <- factorial(num);
	
	// Imprimimos el resultado
	Escribir "";
	Escribir "El factorial de ", num, "! es: ", resultado;
	Escribir "";
	
FinProceso
