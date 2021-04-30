// Ejercicio 3

// Un maestro desea saber que porcentaje de hombres y que porcentajes de mujeres
// hay en un grupo de estudiantes

Proceso porcentaje_hombres_mujeres
	
	// Definir variables
	Definir cant_hombres, cant_mujeres Como Entero; 
	Definir por_hombres, por_mujeres, total Como Reales;
	
	// Solicitamos los datos
	Escribir "Digite la cantidad de hombres: ";
	Leer cant_hombres;
	Escribir "Digite la cantidad de mujeres: ";
	Leer cant_mujeres;
	
	// Ejecutamos las operaciones
	total <- cant_hombres + cant_mujeres;
	por_hombres <- (cant_hombres * 100) / total;
	por_mujeres <- (cant_mujeres * 100) / total;
	
	// Mostramos los resultados
	Escribir "El porcentaje de mujeres del total es: ", por_mujeres; 
	Escribir "El porcentaje de hombres del total es: ", por_hombres; 
	
FinProceso
