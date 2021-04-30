// Ejercicio 2

// Determinar si el alumno reprueba un curso sabiendo que aprobará si su promedio de tres
// calificaciones es mayor o igual a 70; reprueba caso contrario (Diagrama de flujo)

Proceso determinar_aprueba_reprueba
	
	// Variables
	Definir nota1, nota2, nota3, resultado Como Real;
	
	// Solitar datos
	Escribir "Digita nota 1: ";
	Leer nota1;
	Escribir "Digita nota 2: ";
	Leer nota2;
	Escribir "Digita nota 3: ";
	Leer nota3;
	
	// Ejecutar los calculos
	resultado <- (nota1 + nota2 + nota3) / 3;
	Si (resultado >= 70) Entonces
		Escribir "Haz aprobado el curso :)";
	SiNo
		Escribir "Reprobaste :(";
	FinSi
	
FinProceso
