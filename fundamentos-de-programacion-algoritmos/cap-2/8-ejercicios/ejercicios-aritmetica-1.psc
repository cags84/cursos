// Ejercicio Aritmetica
// Escribir la siguiente expresión en forma de expresión algorítmica
// (-b + RaizCuadrada((b2)-4*a*c)) 

Proceso ejercicio_aritmetica
	
	// 	Definimos las variables
	Definir resultado, a, b, c Como Real;
	
	// Pedimos los valores de las variables
	Escribir "Digite el valor de a: ";
	Leer a;
	Escribir "Digite el valor de b: ";
	Leer b;
	Escribir "Digite el valor de c: ";
	Leer c;
	
	// Ejecutamos la operación
	resultado <- (-b + rc(b^2 - 4*a*c))/(2*a);
	
	// Imprimimos en pantalaa
	Escribir "El valor de la expresión es: ", resultado;
	
FinProceso
