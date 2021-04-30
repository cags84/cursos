// Ejercicio 4

// Un profesor prepara tres cuestionarios para una evaluacion final
// A, B y C. Se sabe que se tarda 5 minutos en revisar el cuestionario A,
// 8 en revisar el cuestionario B y 6 en revisar el cuestinario C. La cantidad
// de examenes de cada tipo se entran por teclado. ¿Cuantas horas y cuantos minutos
// se tardará en revisar todas las evalucaciones?

Proceso revisar_evaluaciones
	
	// Definir Variables
	Definir can_a, can_b, can_c Como Entero;
	Definir total_a, total_b, total_c, total, horas, minutos Como Real;
	
	// Solicitamos los datos al usuario
	Escribir "Cantidad de examenes tipo A: ";
	Leer can_a;
	Escribir "Cantidad de examenes tipo B: ";
	Leer can_b;
	Escribir "Cantidad de examenes tipo C: ";
	Leer can_c;
	
	// Ejecutamos los calculos
	total_a <- can_a * 5;
	total_b <- can_b * 8;
	total_c <- can_c * 6;
	
	total <- total_a + total_b + total_c;
	horas <- trunc(total / 60);
	minutos <- total mod 60;
	
	// Mostrar los resultados
	Escribir "Ud tardará ", horas, " horas con ", minutos, " minutos en revisar todas las evaluaciones";
	
FinProceso
