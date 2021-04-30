// Ejercicio 4 - Cantidad de billetes de cambio

// Escriba una funcion nombrada cambio qué tenga un parametro en número entero
// y seis parametros de referencia en número entero nombrados cien, cincuenta,
// veinte, diez, cinco y uno respectivamente. La funcion tiene que considerar el
// valor entero transmitido como una cantidad en dolares y convertir el valor en el
// número menor de billetes equivalentes.

SubProceso cambio(dolares Por Valor, cien Por Referencia, cincuenta Por Referencia, veinte Por Referencia, diez Por Referencia, cinco Por Referencia, uno Por Referencia)
	Definir aux Como Real;
	aux <- 0;
	Si (dolares > 100) Entonces
		aux <- trunc(dolares/100);
		cien <- aux;
		dolares <- (dolares - (100*aux));
	FinSi
	Si (dolares >= 50 Y dolares < 100) Entonces
		aux <- trunc(dolares/50);
		cincuenta <- aux;
		dolares <- (dolares - (50*aux));
	FinSi
	Si (dolares >= 20 Y dolares < 50) Entonces
		aux <- trunc(dolares/20);
		veinte <- aux;
		dolares <- (dolares - (20*aux));
	FinSi
	Si (dolares >= 10 Y dolares < 20) Entonces
		aux <- trunc(dolares/10);
		diez <- aux;
		dolares <- (dolares - (10*aux));
	FinSi
	Si (dolares >= 5 Y dolares < 10) Entonces
		aux <- trunc(dolares/5);
		cinco <- aux;
		dolares <- (dolares - (5*aux));
	FinSi
	Si (dolares >= 1 Y dolares < 5) Entonces
		aux <- trunc(dolares/1);
		uno <- aux;
		dolares <- (dolares - (1*aux));
	FinSi
FinSubProceso


SubProceso pedirDolares(dolares Por Referencia)
	Escribir "";
	Escribir Sin Saltar "Digite la cantidad en dolares (USD): ";
	Leer dolares;
FinSubProceso

Proceso principal
	
	// Variables
	Definir dolares Como Real;
	Definir cien, cincuenta, veinte, diez, cinco, uno Como Entero;
	
	// Inicializamos las variables
	cien <- 0;
	cincuenta <- 0;
	veinte <- 0;
	diez <- 0;
	cinco <- 0;
	uno <- 0;
	
	// Pedimos el valor
	pedirDolares(dolares);
	
	// Ejecutamos la lógica
	cambio(dolares, cien, cincuenta, veinte, diez, cinco, uno);
	
	// Mostrar resultados
	Escribir "";
	Escribir "Para cambiar ", dolares, " USD en billetes se debe hacer lo siguiente: ";
	Escribir "- Cantidad de billetes de 100 USD: ", cien;
	Escribir "- Cantidad de billetes de 50 USD:  ", cincuenta;
	Escribir "- Cantidad de billetes de 20 USD:  ", veinte;
	Escribir "- Cantidad de billetes de 10 USD:  ", diez;
	Escribir "- Cantidad de billetes de 5 USD:   ", cinco;
	Escribir "- Cantidad de billetes de 1 USD:   ", uno;
	Escribir "";
	
FinProceso
