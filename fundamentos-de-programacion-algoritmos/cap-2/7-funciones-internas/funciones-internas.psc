// Funciones matematicas

Proceso funciones_matematicas_1
	// Definimos variables
	Definir num, resultado Como Real;
	
	// Pedimos el número al usuario
	Escribir "Digite un número: ";
	Leer num;
	
	// Calculamos el resultado
	resultado <- rc(num);
	
	// Imprimimos en pantalla
	Escribir "El resultado de raiz cuadrada de ", num, " es: ", resultado;
FinProceso
