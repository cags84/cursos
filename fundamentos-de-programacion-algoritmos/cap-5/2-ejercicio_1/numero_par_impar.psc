// Ejercicio 1

// Ingrese un n�mero entero y reportar si es par o impar (pseudoc�digo)

Proceso numero_impar_par
	
	// Variables
	Definir num Como Entero;
	Definir resultado Como Logico;
	
	// Solicitamos los datos
	Escribir "Ingrese un n�mero: ";
	Leer num;

	// Ejecutamos los calculos
	Si (num mod 2 == 0) Entonces
		Escribir "El n�mero ", num, " es par";
	SiNo
		Escribir "El n�mero ", num, " es impar";
	FinSi
	
	
	// Mostramos resultados
	
FinProceso
