// Ejercicio 2
// Determinar la solución lógica de la siguiente operación:

Proceso ejercicio_aritmetica_2
	// Declaramos variables
	Definir a, b Como Reales;
	Definir resultado Como Logico;
	
	// Soolicitamos los valores 
	Escribir "Digite el valor de a: ";
	Leer a;
	Escribir "Digite el valor de b: ";
	Leer b;
	
	// Realizamos la operación
	resultado <- (((3+5*8)<3) y ((-6/3*4)+2<2)) o (a>b);
	
	// Devolvemos la respuesta
	Escribir "El resultado de la operación es: ", resultado;
FinProceso
