// Funciones matematicas

Proceso funciones_matematicas_1
	// Definimos variables
	Definir num, resultado Como Real;
	
	// Pedimos el n�mero al usuario
	Escribir "Digite un n�mero: ";
	Leer num;
	
	// Calculamos el resultado
	resultado <- rc(num);
	
	// Imprimimos en pantalla
	Escribir "El resultado de raiz cuadrada de ", num, " es: ", resultado;
FinProceso
