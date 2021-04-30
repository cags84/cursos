// Tema 1 - Busqueda secuencial codigo

// Definir un arreglo de 5 elementos, pedir al usuario los campos para rellenar 
// los elementos, ahora pedir al usuario el valor a buscar, buscarlo en el arreglo
// si lo encontramos, informar al usuario la posición en la que esta en el arreglo.

Proceso busqueda_secuencial_codigo
	
	// Variables
	Definir i, num_buscar, posicion, tamano Como Entero;
	// Arreglo
	Definir num Como Entero;
	Dimension num[5];
	// Logico
	Definir encontrado Como Logico;
	
	// Inicializamos las variables
	i <- 0;
	tamano <- 5;
	encontrado <- falso;
	posicion <- 0;
	
	// Solicitamos lo valores del arreglo
	Para i <- 0 Hasta (tamano - 1) Con Paso 1 Hacer
		Escribir "Ingrese un valor para la posición [", i, "]: ";
		Leer num[i];
	FinPara
	
	// Pedimos al usuario el valor a buscar
	Escribir "";
	Escribir "Digitar el numero a buscar, debe ser entero";
	Leer num_buscar;
	
	// Inicializamos el contador
	i <- 0;
	
	// Buscamos el valor en el arreglo
	Mientras (i<5 Y encontrado == falso) Hacer
		Si num[i] == num_buscar Entonces
			posicion <- i;
			encontrado <- Verdadero;
		FinSi
		i <- i + 1;
	FinMientras
	
	// Mostramos los resultados
	Escribir "";
	Escribir "Arreglo: ", num[0], " ", num[1], " ", num[2], " ", num[3], " ", num[4], " ";
	
	Si encontrado == Verdadero Entonces
		Escribir "";
		Escribir "El valor ", num_buscar, " se encuentra en la posición: num[", posicion, "], del arreglo";
		Escribir "";
	SiNo
		Escribir "";
		Escribir "El valor ", num_buscar, " no existe en el arreglo: ";
		Escribir "";
	FinSi
	
FinProceso
