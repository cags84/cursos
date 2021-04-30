// Ejercicio 1 - Mostrar una cadena entre asteriscos

// Diseñas un Algoritmo que pida un nombre al usuario y que despliegue en pantalla el nombre entre asterisco.
// La cantidad de asteriscos debe ser la misma que caracteres en el nombre incluido espacios.


SubProceso pedirNombre(nombre Por Referencia)
	Escribir Sin Saltar "Digite un nombre: ";
	Leer nombre;
FinSubProceso

SubProceso mostrarNombre(nombre)
	Definir cantidad, i, j Como Entero;
	cantidad <- Longitud(nombre);
	
	Escribir "";
	
	Para i <- 0 Hasta (cantidad - 1) Con Paso 1 Hacer
		Escribir Sin Saltar "*";
	FinPara
	
	Escribir "";
	Escribir Sin Saltar nombre;
	Escribir "";
	
	Para i <- 0 Hasta (cantidad - 1) Con Paso 1 Hacer
		Escribir Sin Saltar "*";
	FinPara
	
	Escribir "";
	Escribir "";
	
FinSubProceso

Proceso principal
	
	// Variables
	Definir nombre Como Cadena;
	
	// Solicitamos ingresar un nombre
	pedirNombre(nombre);
	
	// Mostramos el resultado
	mostrarNombre(nombre);
	
FinProceso
