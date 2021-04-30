// Tema 3 - Procedimientos

// Un procedimiento es un subprograma que ejecuta una determinada tarea, pero que tras ejecutar
// esa tarea no tiene ningún valor asociado al nombre del procedimiento, como en el caso de las 
// funciones.

// Sintaxis:

// mitad -> nombre del procedimiento
// (num) -> parametros

// Subproceso mitad(num)
//     Definir m Como Real;
//     m <- num/2;
//     Escribir "La mitad es: ", m;
// FinSubProceso

SubProceso mitad(num)
	Definir m Como Real;
	m <- num/2;
	Escribir "La mitad es: ", m;
FinSubProceso


Proceso principal
	
	// Variables
	Definir num Como Real;
	
	// Solicitamos los datos
	Escribir Sin Saltar "Ingrese un número: ";
	Leer num;
	
	// Llamamos al procedimiento
	Escribir "";
	mitad(num);
	Escribir "";
	
FinProceso
