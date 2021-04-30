// Ejercicio 10 - Fusionar 2 arreglos ordenados

// Leer dos arreglos de 5 números enteros cada uno, que estarán ordenados
// crecientemente. Copiar (fusionar) los dos arreglos en un tercero, de forma
// que los números sigan ordenados. (Pseudocódigo)

Proceso fusionar_dos_arreglos_ordenados
	
	// Variables
	Definir i, num, k, j, l, posicion, mayor, menor, tamano Como Entero;
	// Definiros arreglos
	Definir arreglo1, arreglo2, arreglo3 Como Entero;
	Dimension arreglo1[5], arreglo2[5], arreglo3[10];
	
	Definir ordenado, mantener Como Logico;
	
	// Inicializamos las variables
	num <- 0;
	tamano <- 5;
	i <- 0;
	mantener <- Falso;
	posicion <- 0;
	mayor <- 0;
	menor <- 0;
	
	// LLenamos de datos los arreglo 1	
	Escribir "";
	Escribir "---- Arreglo 1: ----";
	Escribir "";
	
	Para i <- 0 Hasta 4 Con Paso 1 Hacer
		
		ordenado <- falso;
		
		Repetir
			Escribir "Arreglo 1, valor para la posición [", i, "]: ";
			Leer num;
			
			Si i == 0 Entonces
				arreglo1[0] <- num;
				ordenado <- Verdadero;
			SiNo
				Si num > arreglo1[i - 1] Entonces
					arreglo1[i] <- num;
					ordenado <- Verdadero;
				SiNo
					ordenado <- Falso;
					Escribir "";
					Escribir "---------------------------------------------------------------------------";
					Escribir "|   Error, en valor ingreso es menor que el inmediatamente anterior :(     |";
					Escribir "---------------------------------------------------------------------------";
					Escribir " >> Vuelva a intentarlo :) ";
					Escribir "";
				FinSi
			FinSi
			
		Hasta Que (ordenado == Verdadero);
		
	FinPara
	
	// LLenamos de datos los arreglo 2
	Escribir "";
	Escribir "---- Arreglo 2: ----";
	Escribir "";

	Para i <- 0 Hasta 4 Con Paso 1 Hacer
		
		ordenado <- falso;
		
		Repetir
			Escribir "Arreglo 2, valor para la posición [", i, "]: ";
			Leer num;
			
			Si i == 0 Entonces
				arreglo2[0] <- num;
				ordenado <- Verdadero;
			SiNo
				Si num > arreglo2[i - 1] Entonces
					arreglo2[i] <- num;
					ordenado <- Verdadero;
				SiNo
					ordenado <- Falso;
					Escribir "";
					Escribir "---------------------------------------------------------------------------";
					Escribir "|   Error, en valor ingreso es menor que el inmediatamente anterior :(     |";
					Escribir "---------------------------------------------------------------------------";
					Escribir " >> Vuelva a intentarlo :) ";
					Escribir "";
				FinSi
			FinSi
			
		Hasta Que (ordenado == Verdadero);
		
	FinPara
	
	// Imprimimos el arreglo ordenado
	Escribir "";
	Escribir "Arreglo 1: ", arreglo1[0], " ", arreglo1[1], " ", arreglo1[2], " ", arreglo1[3], " ", arreglo1[4];
	Escribir "Arreglo 2: ", arreglo2[0], " ", arreglo2[1], " ", arreglo2[2], " ", arreglo2[3], " ", arreglo2[4];
	Escribir "";
	
	// 15  16  27  38  59
	// 4  7  8  10  11
	
	// 4 15 
	
	// Creamos un arreglo con los valores del los arreglo1 y arreglo2 de forma decreciente
	j <- 0; // Arreglo 1
	k <- 0; // Arreglo 2
	l <- 0; // Arreglo 3
	Escribir "";
	Mientras (j < 5 Y k < 5) Hacer
		Si arreglo1[j] < arreglo2[k] Entonces
			arreglo3[l] <- arreglo1[j];
			j <- j + 1;
		SiNo
			arreglo3[l] <- arreglo2[k];
			k <- k + 1;
		FinSi
		l <- l + 1;
	FinMientras
	
	// Cuando termine el ciclo mientras, significa que ya copiamos un arreglo completo
	// pero falta un arrreglo
	Si j == 5 Entonces
		// Hemos terminado de copear el arrelo 1
		Mientras k < 5 Hacer
			arreglo3[l] <- arreglo2[k];
			k <- k + 1;
			l <- l + 1;
		FinMientras
	SiNo
		Si j == 5 Entonces
			Mientras j < 5 Hacer
				arreglo3[l] <- arreglo1[j];
				j <- j + 1;
				l <- l + 1;
			FinMientras
		FinSi
	FinSi
	
	
	// Mostramos el resultado
	Escribir "";
	Escribir "Arreglo 3: ", arreglo3[0], " ", arreglo3[1], " ", arreglo3[2], " ", arreglo3[3], " ", arreglo3[4], " ", arreglo3[5], " ", arreglo3[6], " ", arreglo3[7], " ", arreglo3[8], " ", arreglo3[9];
	Escribir "";
	
FinProceso
