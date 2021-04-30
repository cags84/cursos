// Ejercicio 2

// Hacer un programa para ingresar el radio de un circulo y se reporte su área y la longitud
// de la circunferencia
// area = PI * r^2
// longitud = 2 * PI * r

Proceso ejercicio_2
	
	// Definimos las variables
	Definir radio, long, area, resultado Como Reales;
	
	// Solicitamos los datos
	Escribir "Ingrese el radio: ";
	Leer radio;
	
	// Ejecutamos las operaciones
	area <- PI * radio^2;
	long <- (2 * PI * radio);
	
	// Mostramos el resultado
	Escribir "El area de un circulo de radio ", radio, " es: ", area;
	Escribir "La longitud de un circulo de radio ", radio, " es: ", long;
	
FinProceso
