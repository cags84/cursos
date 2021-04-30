// Ejercicio 6 - Suma iterativas de cuadrados (Ciclo, Mientras - Hacer # while)

// Calcular la siguiente sumatoria de los "N" elementos: (Diagrama N-S)
// s = 1 + 4 + 9 + .... + N

Proceso suma_iterativas_de_cuadrados
	
	// Variables
	Definir i Como Entero;
	Definir suma, num Como Reales;
	
	// Inicializamos variables
	i <- 1;
	suma <- 0;
	
	// Solicitamos los datos
	Escribir "Digite el numéro de elementos a sumar: ";
	Leer num;
	
	// Ejecutamos la lógica
	Mientras (i <= num) Hacer
		suma <- suma + (i^2);
		i <- i + 1;
	FinMientras
	
	// Mostramos los resultados
	Escribir "El resultado de la suma iterativas de cuadrados para ", num, " es: ", suma;
	
FinProceso
