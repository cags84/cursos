// Ejercicio 10 - Contabilizar cuanto se repite una palabra

// Realizar un programa que permita contabilizar cuantas veces una subcadena
// se repite dentro de una frase.

// Ejemplo:
// "Si puedes imaginarlo, puedes programarlo";
// subcadena "puedes" aparece 2 veces.

Proceso contabilizar_cuanto_se_repite_una_palabra
	
	// Variables
	Definir i, tamanio, cantidad_repeticiones Como Entero;
	Definir frase, frase_aux, palabra_nueva, palabra_buscar Como Cadena;
	
	// Inicializamos las variables
	i <- 0;
	cantidad_repeticiones <- 0;
	frase <- "";
	frase_aux <- "";
	palabra_buscar <- "";
	
	// Solicitamos la cadena
	Escribir "";
	Escribir Sin Saltar "Digite la cadena: ";
	Leer frase;
	
	Escribir Sin Saltar "Palabra a palabra a buscar: ";
	Leer palabra_buscar;
	Escribir "";
	
	// Ejecutamos la lógica
	tamanio <- Longitud(frase);
	frase <- Minusculas(frase);
	palabra_buscar <- Minusculas(palabra_buscar);
	
	Para i <- 0 Hasta (tamanio - 1) Con Paso 1 Hacer
		
		palabra_nueva <- "";
		
		Mientras ((Subcadena(frase, i, i) <> " ") Y (i < tamanio)) Hacer
			palabra_nueva <- Concatenar(palabra_nueva, Subcadena(frase, i, i));
			i <- i + 1;
		FinMientras

		Si (palabra_nueva == palabra_buscar) Entonces
			cantidad_repeticiones <- cantidad_repeticiones + 1;
		FinSi
	
	FinPara
	
	// Mostramos los resultados
	Escribir "";
	Escribir "La cantidad de repeticiones de la palabra -> ", palabra_nueva, " <- son: ", cantidad_repeticiones;
	Escribir "";
	
FinProceso
