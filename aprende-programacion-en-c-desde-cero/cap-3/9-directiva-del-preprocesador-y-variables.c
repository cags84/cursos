// Directivas del preprocesador y variables
// 
// Las directivas del preprocesador contienen lo que son las librerias y las macros
// 
// Una libreria es una set de instrucciones que nos ponen a disposición ya se parte
// del set del compilador, o hecho por terceros
// 
// Para definir una libreria se hace con #include <nombre_de_la_libreia>
// 
// --------------------------------------------------------------------------------
// Una macro se usa para definir una variable que vamos a utilizar a lo largo del 
// programa y nunca va a cambiar, por ejemplo:
// 
// Para definir una macro se hace con #define nombre_macro
// #define PI = 3.1415
// 

#include <stdio.h>

#define PI 3.1416

int y = 5; // Variable con alcance global, scope global

int main() {

	// Variables, es una posición en memoria.
	// Es un dato que varia en el tiempo de ejecucuón
	int x = 10; // Variable con alcance local, scope local, solo en main

	float suma = 0;

	suma = PI + x; // Ahora suma es 3.1414 + 10;

	// Imprimimosç
	printf("La suma es: %.3f \n", suma);

	return 0;
}