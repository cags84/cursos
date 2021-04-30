// Ejercicio 9 - (Ciclo, Repetir - Hasta que # do while)

// Calcular la suma de los "n" términos de la siguiente serie
// s = 1 - 1/2 + 1/3 - 1/4 + 1/5 - 1/6 + ... 1/n

Proceso sumatoria_cambio_signo
	
	// Valores
	Definir i, num, signo Como Entero;
	Definir sumatoria Como Reales;
	
	// Inicializamos las variables
	i <- 1;
	sumatoria <- 0;
	num <- -1;
	signo <- 1;
	
	// Solicitamos los datos
	Mientras (num <= 0) Hacer
		Escribir "Digite un número, positivo mayor a cero: ";
		Leer num;
	FinMientras
	
	// Ejecutamos lógica
	Repetir
		sumatoria <- sumatoria + signo/i;
		signo <- signo * (-1);
		i <- i + 1;
	Hasta Que (i > num); 
	
	// Mostrar los resultados
	Escribir "El valor de la sumatoria es: ", sumatoria;
	
FinProceso
