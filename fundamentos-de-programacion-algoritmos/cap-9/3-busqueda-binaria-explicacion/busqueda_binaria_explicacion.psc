// Tema 2 - Busqueda binaria explicaci�n

// Para que se pueda aplicar la b�squeda binaria a un arreglo, �ste debe estar previamente ordenado ascendentemente.

// Se trata de dividir el espacio de busqueda en sucesivas mitades hasta encontrar el elemento buscado o hasta que ya no pueda
// hacer m�s mitades

// Primero hallamos el �ndice de la mitad del arreglo y miramos si el elemento coincide con �l, sino coincide averiguamos donde 
// deber�a estar el elemento buscado, si en la parte derecha o izquierda, y dentro de esa mitad hago lo mismo sucesivamente.

// Ejemplo:
// [3] [4] [5] [6] [7]

// Elemento a buscar 6

// encontrado <- falso;
// inf <- 0; // inferior
// sup <- 0; // superior, numero de elemento del arreglos
// i <- 0; // contador

// mitad <- (inf+sup) / 2 -> posici�n 2 del arreglo, para este ejemplo


Proceso busqueda_binaria_explicacion
	
FinProceso
