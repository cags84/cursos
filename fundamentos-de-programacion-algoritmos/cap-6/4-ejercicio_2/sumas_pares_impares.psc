// Ejercicio 2 - Suma de pares e impares entre 1 - 50

// Se desea calcular independientemente la suma de los números
// pares e impares comprendidos entre 1 y 50. (Diagrama de flujo)

Proceso sumas_pares_impares
	
	// Variables
	Definir i, suma_par, sumar_impar Como Entero;
	
	// Inicializamos las variables
	suma_par <- 0;
	sumar_impar <- 0;
	
	// Logica
	Para i <- 1 Hasta 50 Con Paso 1 Hacer
		Si (((i != 1) O (i != 50)) Y (i Mod 2 == 0)) Entonces
			suma_par <- suma_par + i;
		SiNo
			sumar_impar <- sumar_impar + i;
		FinSi
	FinPara
	
	// Mostramos los resultado
	Escribir "El valor de la suma par es: ", suma_par;
	Escribir "El valor de la suma impar es: ", sumar_impar;
	
FinProceso
