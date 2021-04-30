// Ejercicio 1

// Ingrese un número entero y reportar si es par o impar (pseudocódigo)

Proceso numero_impar_par
	
	// Variables
	Definir num Como Entero;
	Definir resultado Como Logico;
	
	// Solicitamos los datos
	Escribir "Ingrese un número: ";
	Leer num;

	// Ejecutamos los calculos
	Si (num mod 2 == 0) Entonces
		Escribir "El número ", num, " es par";
	SiNo
		Escribir "El número ", num, " es impar";
	FinSi
	
	
	// Mostramos resultados
	
FinProceso
