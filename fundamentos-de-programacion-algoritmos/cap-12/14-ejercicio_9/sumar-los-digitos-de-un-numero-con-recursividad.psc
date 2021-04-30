// Ejercicio 9 - Sumas los digitos de un n�mero con recursividad

// Implementar un subprograma recursivo que permita sumar los digitos de un n�mero.
// Ejemplo:

// Entrada = 123
// Salida = 6

// Case Base
// Si num == 0 Entonces
//     retorno <- num;

// Caso recursivo
// SiNo
//     retorno <- funcion((trunc(num/10))) + (num mod 10);

SubProceso pedirDatos(num Por Referencia)
	Escribir Sin Saltar "Digite un n�mero: ";
	Leer num;
FinSubProceso

Funcion retorno <- sumarDigitos(num)
	Definir retorno Como Entero;
	Si num == 0 Entonces
		retorno <- num;
	SiNo
		retorno <- sumarDigitos(trunc(num/10)) + (num mod 10); 
	FinSi
FinFuncion

Proceso principal
	
	// Variables
	Definir num, resultado Como Entero;
	
	// Pedimos el dato
	pedirDatos(num);
	
	// Sumamos los digitos del n�mero
	resultado <- sumarDigitos(num);
	
	// Mostramos el resultado
	Escribir "";
	Escribir "La suma de los digitos ", num, " es: ", resultado;
	Escribir "";
	
FinProceso
