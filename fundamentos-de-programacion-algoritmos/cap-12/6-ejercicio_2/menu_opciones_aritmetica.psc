// Ejercicio 2 - Men� de opciones aristmeticas

// Dise�e un algoritmo que muestre un men� al usuario con las siguientes opciones, que cada opci�n la realice
// una funci�n o procedimiento.
//
// - Potenciaci�n
// - Raiz cuadrada
// - Terminar 

Funcion pot <- potencia(num, pote)
	Definir pot Como Real;
	pot <- (num^pote);
FinFuncion

Funcion r <- raizCuadrada(num Por Valor)
	Definir r Como Real;
	r <- rc(num);
FinFuncion

SubProceso menu(op Por Referencia)
	Mientras ((op <= 0) O (op > 3)) Hacer
		Escribir "Men� de opciones: ";
		Escribir "1. Potencia: ";
		Escribir "2. Raiz Cuadrada";
		Escribir "3. Salir";
		Leer op;
	FinMientras
FinSubProceso

Proceso principal
	
	// Variables
	Definir num, pote, op Como Real;
	
	// Inicializamos las variables
	op <- 0;
	
	// Mostramos el menu
	Escribir "";
	menu(op);
	Escribir "";
	
	Segun op Hacer
		1:
			Escribir "Modulo de potencia: ";
			Escribir Sin Saltar "Ingrese un n�mero: ";
			Leer num;
			Escribir Sin Saltar "Ingrese la potencia: ";
			Leer pote;
			Escribir "";
			Escribir "La potencia es: ", potencia(num, pote);
			Escribir "";
		2:
			Escribir "Modulo de raiz cuadrada: ";
			Escribir Sin Saltar "Ingrese un n�mero: ";
			Leer num;
			Escribir "";
			Escribir "La raiz cuadrada es: ", raizCuadrada(num);
			Escribir "";
		3:
			Escribir "";
			Escribir "Adios :)";
			Escribir "";
	FinSegun
	
	Escribir "";
	
FinProceso
