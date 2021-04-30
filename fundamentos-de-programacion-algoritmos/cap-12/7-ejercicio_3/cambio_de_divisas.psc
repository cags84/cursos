// Ejercicio 3 - Cambio de divisas

// Desarrollar un programa que pueda calcular el valor del tipo de cambio de moneda
// (de tu modena - hacia el dolar y viceversa).

SubProceso menuDivisas(op Por Referencia)
	Escribir "";
	Mientras (op <= 0 O op > 3) Hacer
		Escribir "Menú de opciones: ";
		Escribir "1. Pesos Colombianos -> Dolar USD";
		Escribir "2. Dolar USD -> Pesos Colombianos";
		Escribir "3. Salir";
		Leer op;
	FinMientras
	Escribir "";
FinSubProceso

Funcion cambio <- convertirModena(val, opcion)
	Definir cambio Como Real;
	Si opcion == "COP" Entonces
		cambio <- val * 0.00027;
	SiNo
		cambio <- val * 3723;
	FinSi
FinFuncion


Proceso principal
	
	// Variables
	Definir op Como Entero;
	Definir val, val_cambio, tasa_cambio Como Real;
	
	// Inicializamos las variables
	op <- 0;
	val <- 0;
	val_cambio <- 0;
	
	// Mostramos el menú
	menuDivisas(op);
	
	// Realizamos la lógica
	Segun op Hacer
		1:
			Escribir "";
			Escribir Sin Saltar "Ingresar cantidad de pesos Colombianos a convertir: ";
			Leer val;
			val_cambio <- convertirModena(val, 'COP');
			Escribir "";
			Escribir "COP $", val, " = USD $", val_cambio;
		2:
			Escribir "";
			Escribir Sin Saltar "Ingresar cantida de dolares a convertir: ";
			Leer val;
			val_cambio <- convertirModena(val, 'USD');
			Escribir "";
			Escribir "USD $", val, " = COP $", val_cambio;
		3:
			Escribir "";
			Escribir "Adios :)";
			Escribir "";
	FinSegun
	
FinProceso
