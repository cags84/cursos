// Ejercicio 5

// Una tienda ofrece un descuento de 15% sobre el total de la compra y un cliente
// desea saber cuánto debera pagar finalmente por su compra.

Proceso descuento_compra
	
	// Variables
	Definir valorCompra, totalCompra, descuento Como real;
	
	// Pedimos todal de compra
	Escribir "¿Cuanto es el valor de la compra: $?";
	Leer valorCompra;
	
	// Ejecutamos los calculos
	descuento <- valorCompra * 0.15;
	totalCompra <- valorCompra - descuento;
	
	// Mostramos los resultados
	Escribir "El valor total de la compra es: ", totalCompra;
	
FinProceso
