// Ejercicio 5 - Factorial de un n�mero - (Ciclo Mientras - Hacer # while)

// Calcular el factorial de un n�mero mayor o igual a 0. (Diagrama de flujo)

Proceso factorial_de_un_numero
	
	// Variables
	Definir i Como Entero;
	Definir num, factorial Como Reales;
	
	// Inicializamos las variables
	i <- 1;
	factorial <- 1;
	num <- -1;
	
	// Solicitamos los datos
	Mientras (num < 0) Hacer
		Escribir "Digite el n�mero para calcular el factorial: ";
		Leer num;
	FinMientras
	
	// Ejecutamos los calculos
	Si (num == 0 O num == 1) Entonces
		factorial <- 1;
	SiNo
		Mientras (i <= num) Hacer
			factorial <- factorial * i;
			i <- i + 1;
		FinMientras
	FinSi
	
	// Mostramos los resultados
	Escribir "El factorial de ", num, "! es: ", factorial;
	
FinProceso
