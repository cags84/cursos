// Ejercicio 6

// Una fruter�a ofrece las manzanas con descuento seg�n la siguiente tabla;
//  N�mero de kilos comprados   \     % Descuento
//          0  -  2                     0%
//          2.01 - 5                    10%
//          5.01 - 10                   15%
//          10.01 en adelante           20%
// 
//  Determinar cu�nto pagar� una persona que compre manzanas en esa fruter�a (Diagraman NS)

Proceso descuentos_kilos_manzanas
	
	// Variables
	Definir kilosComprados, valorFruta, descuento, totalAPagar Como Reales;
	 
	// Pedir los n�meros
	Escribir "Ingrese precio de la manzana x Kg: $";
	Leer valorFruta;
	Escribir "Ingrese cantidad de kilos a comprar (kg): ";
	Leer kilosComprados;
	
	// Ejecutar los calculos
	Si (kilosComprados >= 0 Y kilosComprados <=2) Entonces
		descuento <- 0;
	SiNo
		Si (kilosComprados > 2 Y kilosComprados <= 5) Entonces
			descuento <- (valorFruta * kilosComprados) * 0.1;
		SiNo
			Si (kilosComprados > 5 Y kilosComprados <= 10) Entonces
				descuento <- (valorFruta * kilosComprados) * 0.15;
			SiNo
				Si (kilosComprados > 10 ) Entonces
					descuento <- (valorFruta * kilosComprados) * 0.20;
				FinSi
			FinSi
		FinSi
	FinSi
	
	totalAPagar <- (valorFruta * kilosComprados) - descuento;
	
	// Mostrar los resultados
	Escribir "El valor a pagar es: $", totalAPagar;
	
FinProceso
