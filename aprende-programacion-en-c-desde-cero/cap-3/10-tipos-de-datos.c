// Tipos de datos en C
// 
// caracter -> char
// tamaño 1byte rango 0...255
// 
// short 
// tamaño 2 bytes rango -128 ... 127
//
// int
// tamaño 2 bytes rango -32768 .... 32769
// 
// unsigned int
// tamaño 2 bytes rango 0 ... 65535
//
// long
// tamaño 4 bytes
//
//
// float
// tamaño 4bytes
// 
// double
// tamaño 8 bytes
// 

#include <stdio.h>

int main() {

	char a = 'e';
	short b = -15;
	int c = 1024;
	unsigned int d = 128;
	long e = 1223333;

	float f = 12.33;
	double g = 28289399493;
	//long double h = 123234234.234234;

	printf("El elemento es %c \n", a);
	printf("El elemento es %i \n", b);
	printf("El elemento es %i \n", c);
	printf("El elemento es %i \n", d);
	printf("El elemento es %li \n", e);
	printf("El elemento es %.2f \n", f);
	printf("El elemento es %.2lf \n", g);
	//printf("El elemento es %ld \n", h);


	return 0;

}