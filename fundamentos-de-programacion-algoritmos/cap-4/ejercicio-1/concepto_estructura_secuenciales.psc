// Ejercicio 1

// Calcular la cantidad de segundos que est�n incluidos en el
// n�mero de horas, minutos y segundos ingresados por el usuario

Proceso concepto_estruturas_secuenciales
	
	// Variables
	Definir h, m, s, resultado Como Entero;
	
	// Pedimos los datos a los usuarios
	Escribir "Defina las horas: ";
	Leer h;
	Escribir "Defina los minutos: ";
	Leer m;
	Escribir "Defina los segundos: ";
	Leer s;
	
	// Realizamos la operaci�n
	resultado <- ((h*60*60) + (m*60) + s);
	
	// Mostramos el resultado
	Escribir "El n�mero de segundos, seg�n par�metros ingresados son: ", resultado;
	
FinProceso
