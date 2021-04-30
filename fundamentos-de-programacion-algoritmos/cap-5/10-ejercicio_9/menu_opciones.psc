// Ejercicio 9

// Hacer un programa que tenga un menú con las siguientes opciones:

Proceso menu_opciones
	
	// Variables
	Definir opcion Como Entero;
	Definir num, num_aux, resultado Como Reales;
	
	// Mostramos el menu, Solicitamos una opción
	Escribir "Escribir una opción: ";
	Escribir "1. Elevar un número a una potencia X: ";
	Escribir "2. Sacar la raiz cuadrada de un número: ";
	Escribir "3. Salir";
	Leer opcion;
	
	// Espacios
	Escribir "";
	
	// Ejecutamos los calculos
	Segun opcion Hacer
		1:
			Escribir "Digite un número: ";
			Leer num;
			Escribir "Digite la potencia a elevar: ";
			Leer num_aux;
			resultado <- (num^num_aux);
			Escribir "El valor de la potecia es: ", resultado;
			Escribir "";
		2:
			Escribir "Digite el número: ";
			Leer num;
			resultado <- rc(num);
			Escribir "La raiz cuadrada de ", num, " es: ", resultado;
			Escribir "";
		3:
			Escribir "Saliendo .... bye";
			Escribir "";
		De Otro Modo:
			Escribir "Error: no elegiste una opcion correcta!";
			Escribir "";
	FinSegun
	
FinProceso
