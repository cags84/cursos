// Ejercicio 3 - Repetir una cadena N veces

// Dise�e un algoritmo cuya entrada sea una cadena, y un n�mero entero N,
// cuya funci�n sea generar la cadena dad aN veces.

Proceso repetir_cadena_n_veces
	
	// Variables
	Definir i, cantidad Como Entero;
	Definir string Como Cadena;
	
	// Pedimos que ingrese la cadena
	Escribir "";
	Escribir Sin Saltar "Ingrese una cadena: ";
	Leer string;

	Escribir Sin Saltar "Ingrese las veces a repetir la cadena: ";
	Leer cantidad;
	Escribir "";
	
	Escribir Sin Saltar "Resultado: ";
	// Ejecutamos la l�gica
	Para i <- 1 Hasta (cantidad) Con Paso 1 Hacer
		Escribir Sin Saltar string, " ";
	FinPara
	
	Escribir "";
	
FinProceso
