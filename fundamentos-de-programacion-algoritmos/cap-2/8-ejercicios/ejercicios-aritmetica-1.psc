// Ejercicio Aritmetica
// Escribir la siguiente expresi�n en forma de expresi�n algor�tmica
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
	
	// Ejecutamos la operaci�n
	resultado <- (-b + rc(b^2 - 4*a*c))/(2*a);
	
	// Imprimimos en pantalaa
	Escribir "El valor de la expresi�n es: ", resultado;
	
FinProceso
