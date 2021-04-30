// Ejercicio 5

// Leer tres números diferentes e imprimir el número mayor de 
// los tres. (Diagrama de flujo)

Proceso mayor_tres_numeros
	
	// Variables
	Definir num1, num2, num3, resultado Como Reales;
	
	// Solicitamos los datos
	Escribir "Digite primer número: ";
	Leer num1;
	Escribir "Digite segundo número: ";
	Leer num2;
	Escribir "Digite tercer número: ";
	Leer num3;
	
	// Ejecutamos los calclulos
	Si (num1 > num2) Entonces
		Si (num1 > num3) Entonces
			resultado <- num1;
		FinSi
	SiNo
		Si(num2 > num3) Entonces
			resultado <- num2;
		SiNo
			resultado <- num3;
		FinSi
	FinSi
	
	// Mostramos en pantalla
	Escribir "El número mayor es: ", resultado;

FinProceso
