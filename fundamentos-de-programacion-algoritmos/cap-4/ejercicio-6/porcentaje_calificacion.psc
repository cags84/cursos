// Ejercicio 6

// Un alumno desea saber cúal será su calificación final en la materia de algoritmos.
// Dicha calificación se compone de los siguientes porcentajes:
//  55% del promedio de sus tres calificaciones parciales
//  30% de la calificación del examen final
//  15% de la calificación de un trabajo final

Proceso porcentaje_calificacion
	
	// Definimos variables
	Definir notaParcial_1, notaParcial_2, notaParcial_3 Como Real;
	Definir notaExamenFinal, notaTrabajoFinal, notaFinal Como Real;
	Definir porcentajeParciales Como Real;
	Definir porcentajeExamenFinal Como Real;
	Definir porcentajeTrabajoFinal Como Real;
	
	// Solicitamos los datos
	Escribir "Ingrese nota del parcial 1: ";
	Leer notaParcial_1;
	Escribir "Ingrese nota del parcial 2: ";
	Leer notaParcial_2;
	Escribir "Ingrese nota del parcial 3: ";
	Leer notaParcial_3;
	Escribir "Ingrese nota del examen final: ";
	Leer notaExamenFinal;
	Escribir "Ingrese nota del trabajo final: ";
	Leer notaTrabajoFinal;
	
	// Ejecutamos los calculos
	porcentajeParciales <- ((notaParcial_1 + notaParcial_2 + notaParcial_3) / 3) * 0.55;
	porcentajeExamenFinal <- notaExamenFinal * 0.3;
	porcentajeTrabajoFinal <- notaTrabajoFinal * 0.15;
	notaFinal <- porcentajeParciales + porcentajeExamenFinal + porcentajeTrabajoFinal;
	
	// Mostramos resultados
	Escribir "Su nota final: ", notaFinal;
	
FinProceso
