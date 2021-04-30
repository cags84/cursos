// Ejercicio 3 - Conteo de positivos, negativos y neutros

// Leer 10 números e imprimor cuantos son positivos, cuantos son negativos
// y cuantos son neutros. (Diagrama N-S)

Proceso conteo_positivo_negativo_neutro
	
	// Variables
	Definir num, num_positivos, num_negativos, num_neutros, i Como Entero;
	
	// Inicializmaos las variables
	num_positivos <- 0;
	num_negativos <- 0;
	num_neutros <- 0;
	
	// Solicitamos los datos al usuario
	Para i <- 1 Hasta 10 Con Paso 1 Hacer
		Escribir "Digite un número entero, puede ser positivo, negativo o neutro: ";
		Leer num;
		Si (num == 0) Entonces
			num_neutros <- num_neutros + 1;
		SiNo
			Si (num > 0) Entonces
				num_positivos <- num_positivos + 1;
			SiNo
				num_negativos <- num_negativos + 1;
			FinSi
		FinSi
	FinPara
	// Ejecutamos la lógica
	
	// Mostramos los datos
	Escribir "La cantidad de numeros neutros es: ", num_neutros;
	Escribir "La cantidad de numeros positivos es: ", num_positivos;
	Escribir "La cantidad de numeros negativos es: ", num_negativos;
	
FinProceso
