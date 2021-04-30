// Ejercicio 3

// En un almacén se hace un 20% de descuento a los clientes, cuya compra
// supere los $100, ¿Cuál sera la cantidad que pagará una persona por su compra?

Proceso cantidad_a_pagar
	
	// Variables
	Definir valorCompra, descuento, totalCompra Como Real;
	
	// Solictamos datos
	Escribir "Digite el valor de la compra: ";
	Leer valorCompra;
	
	// Ejecutamos los calculos
	Si (valorCompra > 100) Entonces
		descuento <- valorCompra * 0.20;
	SiNo
		descuento <- 0;
	FinSi
	
	// Mostramos los resultados
	totalCompra <- valorCompra - descuento;
	Escribir "El valor a pagar es: ", totalCompra;
	
FinProceso
