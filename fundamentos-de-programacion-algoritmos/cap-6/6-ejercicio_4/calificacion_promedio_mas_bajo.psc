// Ejercicio 4 - Calificación promedio y más bajo (Ciclo para)

// Suponga que se tiene un conjunto de calificaciones de un grupo de 10
// alumnos. Realizar un algoritmo para calcular la calificación promedio
// y la calificación más baja de todo el grupo. (Pseudocódico).

Proceso calificacion_promedio_mas_bajo
	
	// Variables
	Definir i Como Entero;;
	Definir cali_promedio, aux_promedio, cali_mas_baja, calificacion Como Reales;
	
	// Inicializamos las variables
	cali_mas_baja <- 5;
	aux_promedio <- 0;
	
	// Solicitamos los datos
	Para i <- 1 Hasta 10 Con Paso 1 Hacer
		
		Escribir "Digite la calificación del estudiante # ", i;
		Leer calificacion;
		
		Si (cali_mas_baja > calificacion) Entonces
			cali_mas_baja <- calificacion;
		FinSi
		
		aux_promedio <- aux_promedio + calificacion;
		
	FinPara
	
	// Ejecutamos la lógica
	cali_promedio <- (aux_promedio / 10);
	
	// Mostramos en pantalla
	Escribir "La calificación promedio es: ", cali_promedio;
	Escribir "La calificación más baja es: ", cali_mas_baja;
	
FinProceso
