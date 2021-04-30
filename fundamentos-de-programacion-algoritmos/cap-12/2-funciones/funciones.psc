// Tema 2 - Funciones

// Una funcion en programación, es un subprograma o subalgoritmo que toma uno o más valores (argumentos)
// y devuelve un resultado (valor de la función para argumentos dados).

// Sintaxis de una función en PSEInt

// Funcion suma <- sumar(num1, num2)
//     Definir suma Como Entero;
//     suma <- mum1 + num2;
// FinFuncion

// suma -> nombre de la variable que devuelve
// sumar -> nombre de la funcíón
// (num1, num2) -> parametros
// Definir suma Como Entero -> Tipo de retorno

// Declaramos a la funcion sumar
Funcion suma <- sumar(num1, num2)
	Definir suma Como Entero;
	suma <- num1 + num2;
FinFuncion

Proceso principal
	
	// Variables
	Definir num1, num2, resultado Como Entero;
	
	// Solicitamos los valores;
	Escribir Sin Saltar "Ingrese el primer número: ";
	Leer num1;
	Escribir Sin Saltar "Ingrese el segundo número: ";
	Leer num2;
	
	// Llamamos a la funcion
	resultado <- sumar(num1, num2);
	
	// Mostramos el resultado
	Escribir "";
	Escribir "La suma de (", num1, " + ", num2, ") es : ", resultado;
	Escribir "";
	
	
FinProceso
