// Ejercicio 8

// Elaborar un programa que me muestre el significado de aniversario
// de cada d�cada hasta los 60. (Diagrama de flujo)

Proceso significado_aniversario
	
	// Variables
	Definir anos Como Entero;
	
	// Pedimos los datos
	Escribir "Digite los a�os de boda {10, 20, 30, 40, 50, 60}: ";
	Leer anos;
	
	// Ejecutamos los calculos
	Segun anos Hacer
		10: Escribir "�Bodas de Hojalata!";
		20: Escribir "�Bodas de Porcelana!";
		30: Escribir "�Bodas de Perlas!";
		40: Escribir "�Bodas de Rub�!";
		50: Escribir "�Bodas de Oro!";
		60: Escribir "�Bodas de Diamante!";
		De Otro Modo:
			Escribir "Digita un a�o correcto!";
	FinSegun
	
FinProceso
