// Tema 2 - Repetir Hasta Que - do while

// Imprimir en pantalaa los n�meros del 1 al 10

Proceso repetir_hasta
	
	// Definir variables
	Definir i Como Entero;
	Definir condicion Como Logico;
	
	// Inicializamos las variables
	i <- 1;
	
	// Ejecutamos la l�gica
	Repetir
		Escribir i;
		i <- i + 1;
	Hasta Que (i > 10);
	
	Escribir "";
	Escribir "Salimos del bucle";
	
FinProceso
