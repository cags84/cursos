// Ejercicio 7 - Potencia con recursividad

// Escribir una funcion recursiva para elevar un número a una potencia.

Funcion pot <- elevarPotencia(base, potencia)
	Definir pot Como Real;
	
	Si potencia == 0 Entonces
		// Caso base
		pot <- 1;
	SiNo
		// Caso recursivo
		pot <- base * elevarPotencia(base, (potencia - 1));
	FinSi
	
FinFuncion

Proceso principal
	
	// Variables
	Definir base, potencia, resultado Como Real;
	
	// Solicitamos al usuario los valores
	Escribir "";
	Escribir Sin Saltar "Ingrese el número: ";
	Leer base;
	Escribir Sin Saltar "Defina la potencia: ";
	Leer potencia;
	Escribir "";
	
	// Calculamos la potencia
	resultado <- elevarPotencia(base, potencia);
	
	// Mostramos los resultados
	Escribir "El resultado de (", base, "^", potencia, ") es: ", resultado;
	
FinProceso
