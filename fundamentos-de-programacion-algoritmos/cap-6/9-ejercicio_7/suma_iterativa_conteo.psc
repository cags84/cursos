// Ejercicio 7 - Suma iterativa y conteos (Ciclo, Mientras-Hacer # while)

// Ingresar "N" enteros, visualizar la suma de los números pares de la lista, cuántos números pares
// existen y cuál es el promedio de los números impares. (Pseudocódigo).

Proceso suma_iterativa_conteo
	
	// Variables
	Definir i Como Entero;
	Definir cantidad, suma_pares, cantidad_pares, cantidad_impares, num, promedio_impares, aux_promedio_impares Como Reales;
	
	// Inicializamos las variables
	i <- 1;
	cantidad_pares <- 0;
	suma_pares <- 0;
	cantidad_impares <- 0;
	aux_promedio_impares <- 0;
	
	// Solicitamos los datos
	Escribir "Ingrese cantidad de elementos a trabajar: ";
	Leer cantidad;
	
	// Ejecutamos la lógica
	Mientras (i <= cantidad) Hacer
		
		Escribir "Ingrese número ", i, ": ";
		Leer num;
		
		Si (num Mod 2 == 0) Entonces
			suma_pares <- suma_pares + num;
			cantidad_pares <- cantidad_pares + 1;
		SiNo
			aux_promedio_impares <- aux_promedio_impares + num;
			cantidad_impares <- cantidad_impares + 1;
		FinSi
		
		i <- i + 1;
		
	FinMientras
	
	// calculamos el promedio de los impares
	promedio_impares <- (aux_promedio_impares / cantidad_impares);
	
	// Mostramos los resultados
	
	Si (cantidad_pares == 0) Entonces
		Escribir "";
		Escribir "No se han digitado numeros pares!";
	SiNo
		Escribir "";
		Escribir "La suma de los números pares es: ", suma_pares;
		Escribir "La cantidad de números pares son: ", cantidad_pares;
	FinSi
	
	Si (cantidad_impares == 0) Entonces
		Escribir "";
		Escribir "No se han digitado numeros impares!";
	SiNo
		Escribir "";
		Escribir "El promedio de los números impares es: ", promedio_impares;
	FinSi
	
	
FinProceso
