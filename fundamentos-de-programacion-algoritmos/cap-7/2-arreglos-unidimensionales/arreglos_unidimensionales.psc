// Tema 3 - Arreglos unidimensionales

// Arreglo unidimensionales: Es un arreglo de 'n' elementos organizados
// en una dimensión, donde 'n' es el número de elementos.

Proceso arreglos_unidimensionales
	
	Definir i Como Entero;
	
	// Ejemplo
	Definir arregloNum Como Entero;
	Dimension arregloNum[5]; // Arreglo de una sola Dimension 
	// Llenamos manualmente el arreglo
	arregloNum[0] <- 2;
	
	Para i <- 0 Hasta 4 Con Paso 1 Hacer
		arregloNum[i] <- i + 1;
	FinPara
	
	Escribir arregloNum[4];
	
	
	// De tipo real
	Definir arregloReal Como Real;
	Dimension arregloReal[3]; // de tres posiciones, unidimensional
	arregloReal[0] <- 1.23;
	arregloReal[1] <- 0.56;
	arregloReal[2] <- 4.5;
	
	// De tipo caracter
	Definir arregloCaracter Como Caracter;
	Dimension arregloCaracter[2];
	arregloCaracter[0] <- 'c';
	arregloCaracter[1] <- 'a';
	
	// De tipo cadena
	Definir arregloCadena Como Cadena;
	Dimension arregloCadena[2];
	arregloCadena[0] <- "Carlos";
	arregloCadena[1] <- "Muy bien";
	
	
	
	
	
FinProceso
