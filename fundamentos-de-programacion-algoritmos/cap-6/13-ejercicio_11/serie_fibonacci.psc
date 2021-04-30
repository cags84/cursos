// Ejercicio 11 - (Ciclo, Repetir-Hasta que # do while)

// Imprimir la seria de los "n" términos de la serie de fibonacci. (Diagrama de Flujo)
// 0 1 1 2 3 5 8 13 21 .......

Proceso serie_fibonacci
	
	// Variables
	Definir i, num Como Entero;	
	Definir a, b, c Como Entero;
	
	// Inicializamos los valores
	i <- 2;
	num <- -1;
	
	a <- 0;
	b <- 1;
	c <- 1;
	
	// Solicitamos los valores
	Mientras (num <= 1) Hacer
		Escribir "Definir el número para la serie fibonacci, debe ser mayor que 1: ";
		Leer num;
	FinMientras
	
	// Ejecutamos las operaciones
	Escribir "0";
	Escribir "1";
	
	Repetir
		
		c <- a + b;
		
		Escribir c;
		
		a <- b;
		b <- c;
		
		i <- i + 1;
	Hasta Que (i > num);
	
	// Mostramos los resultados
	
FinProceso
