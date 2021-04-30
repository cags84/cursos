// Ejercicio 10 - Calcular mayor y menor n�mero (Ciclo, Repetir-Hasta que # do while)

// Ingresar "n" n�meros, calcular el m�ximo y m�nimo de ellos. (Pseudoc�digo)

Proceso calcular_mayor_menor
	
	// Variables
	Definir i, num, cantidad Como Entero;
	Definir max, min Como Reales;
	
	// Inicializar variables
	i <- 1;
	cantidad <- -1;
	
	// Solictamos los datos
	Mientras (cantidad < 0) Hacer
		Escribir "Ingrese la cantidad de repeticiones: ";
		Leer cantidad;
	FinMientras	
	
	// Ejecutamos la l�gica
	Repetir
		
		Escribir "Digite el ", i, " n�mero: ";
		Leer num;
		
		Si (i == 1) Entonces
			max <- num;
			min <- num;
		SiNo
			Si (num > max) Entonces
				max <- num;
			SiNo
				Si (num < min) Entonces
					min <- num;
				FinSi
			FinSi
		FinSi
		
		i <- i + 1;
		
	Hasta Que (i > cantidad);
	
	// Mostramos los valores
	Escribir "El n�mero mayor es: ", max;
	Escribir "El n�mero menor es: ", min;
	
FinProceso
