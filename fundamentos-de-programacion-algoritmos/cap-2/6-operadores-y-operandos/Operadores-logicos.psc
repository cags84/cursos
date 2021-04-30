// Operadores lógicos
Proceso operadores_logicos
	
	// Variables
	Definir resultado Como Logico;
	Definir a Como Entero;
	Definir b Como Entero;
	Definir c Como Entero;
	Definir d Como Entero;
	
	// Asignamos valores a las variables
	a <- 10;
	b <- 12;
	c <- 13;
	d <- 10;
	
	resultado <- ((a>b) o (a<c) y ((a=c) o (a>=b)));
	// 1. Evalua (a>b) = F   
	// 2. Evalua (a<c) = V  Esta con la anterior da: V
	
	// 3. Evalula (a=c) = F
	// 4. Evalua (a>=b) = F Esta da F, con la anterior
	
	// Resultado es = V And F = F
	
	// Imprimimos la salida
	Escribir "El valor de la expresión es: ", resultado;
	
FinProceso
