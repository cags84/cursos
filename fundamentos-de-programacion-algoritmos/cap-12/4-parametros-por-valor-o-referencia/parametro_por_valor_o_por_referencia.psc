// Tema 4 - Párametros por valor o por referencia

// Parametros por valor: En este tipo de parametros aunque el durante el procedimiento su valor cambie
// el valor no sera asignado a la variable del programa principal.

// Parametro por referencia: En este tipo de parametros, cualquier cmabio que sufra la variable en el
// subprograma, la variable del programa principal también lo sufrirá, de esta manera podemos enviar
// información modificarla y enviar resultados al programa principal.

// Parametros por valor
Funcion aumento <- aumentar(num Por Valor)
	Definir aumento Como Entero;
	aumento <- num + 10;
FinFuncion

// Parametros por referencia
SubProceso pedirDatos(num Por Referencia)
	Escribir Sin Saltar "Digite un número: ";
	Leer num;
FinSubProceso

Proceso principal
	
	Definir num Como Entero;
	
	// No importa que la inicialice, cambiara en el subproceso
	num <- 15;
	
	Escribir "Valor inicializada de la variable: ", num;
	pedirDatos(num);
	
	Escribir "Valor de num: ", num;
	Escribir "El aumento es: ", aumentar(num);
	Escribir "Podemos ver que la variable num no cambia: ", num;
	
	
FinProceso
