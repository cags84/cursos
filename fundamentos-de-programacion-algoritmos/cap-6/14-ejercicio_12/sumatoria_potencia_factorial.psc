// Ejercicio 12 - Sumatoria con potencia y factorial (Ciclo, Repetir - Hasta que, # do while)
// Calcular la sumatoria:
// s = 1 + x/1! + x^2/2! + x^3/3! + .... + x^n/n!
Proceso sumatoria_potencia_factorial
	
	// Variables
	Definir n, i Como Entero;
	Definir x Como Real;
	Definir factorial Como Entero;
	Definir suma, potencia Como Real;
	
	// Inicializamos variables
	suma <- 1;
	i <- 1;
	factorial <- 1;
	
	// Solicitamos los números
	Repetir
		Escribir 'Digite el valor de N: ';
		Leer n;
	Hasta Que n>0
	
	
	Escribir 'Digite el valor de X: ';
	Leer x;
	
	// Ejecutamos la lógica
	Repetir
		factorial <- factorial * i;
		potencia <- (x^i);
		suma <- suma + (potencia/factorial);
		i <- i + 1;
	Hasta Que i > n
	
	// Mostramos los resultados
	Escribir "El valor de la sumatoria es: ", suma;
FinProceso
