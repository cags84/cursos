// Ejercicio 8 - Calcular salarío y sumatoria (Ciclo, Mientras-Hacer # while)

// Dadas las horas trabajadas de 5 personas y la tarifa de pago,
// calcular el salario, y la sumatoria de todos los salarios.
// (Diagrama de flujo)

Proceso calcular_salario_sumatoria
	
	// Variables
	Definir i Como Entero;
	Definir horas_trabajadas, valor_hora, salario, sumatoria_salarios Como Reales;
	
	// Inicializamos las variables
	i <- 1;
	horas_trabajadas <- 0;
	valor_hora <- 0;
	sumatoria_salarios <- 0;
	
	// Solicitamos los datos
	Mientras (i <= 5) Hacer
		
		Escribir "";
		Escribir "Defina el valor x hora, en $";
		Leer valor_hora;
		
		Escribir "Cantidad de horas trabajadas (horas): ";
		Leer horas_trabajadas;
		Escribir "";
		
		salario <- valor_hora * horas_trabajadas;
		
		Escribir "";
		Escribir "El salario ", i, " es: $", salario;
		Escribir "";
		
		sumatoria_salarios <- sumatoria_salarios + salario;
		
		i <- i + 1;
		
	FinMientras
	
	// Mostramos los resultados
	Escribir "";
	Escribir "El valor de la sumatoria de salarios es: ", sumatoria_salarios;
	
FinProceso
