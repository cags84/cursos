// Ejercicio 7

// Elaborar un programa que me muestre los d�as de las semanas cuanto
// ingrese los siete primeros n�meros. (Pseudoc�digo)

Proceso dia_de_la_semana
	
	// Variables
	Definir opcion Como Entero;
	Definir dia Como Caracter;
	
	// Inicializamos datos
	dia <- "";
	
	// Pedir Datos
	Escribir "Digita un numero de 1 al 7: ";
	Leer opcion;
	
	// Ejercutarcalculos
	Segun opcion Hacer
		1: dia <- "Lunes"; 
		2: dia <- "Martes"; 
		3: dia <- "Miercoles"; 
		4: dia <- "Jueves"; 
		5: dia <- "Viernes"; 
		6: dia <- "Sabado"; 
		7: dia <- "Domingo"; 
		De Otro Modo: Escribir "Haz digitado una opci�n incorrecta";
	FinSegun
	
	// Mostramos el resultado
	Si dia <> "" Entonces
		Escribir "El d�a de la semana que corresponde con el n�mero ", opcion, " es: ", dia;
	FinSi
	
FinProceso
