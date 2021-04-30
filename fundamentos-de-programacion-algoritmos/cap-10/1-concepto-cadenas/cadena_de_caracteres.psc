// Tema 1 - Cadena de caracteres

// Cadena de caracteres:
// Juego de caracteres, en un principo se programaga todo con 0 y 1, pero como costaba mucho,
// aparecio la necesidad de crear un lenguaje que entindieramos más facilmente y con la que
// se pudieran dar instrucciones a la computadora, y para ello aparecieron los juegos de caracteres.

// El Juego de caracteres es una especie de alfabeto que usa la maquina, estan includos las letras, numeros, caracteres.

// Hay 2 juegos de caracteres:
// - ASCII: El que más se usa.
// - EBCDIC: Creado por IBM., para sus mainframes
//

// - ASCII: Hya dos tipos de este, el básico y el extendido
// En el ASCII básico, cada carácter se codifica con 7 bits, por lo que existen 2↑7 = 128 caracteres.
// El el ASCII extendido, cada carácter ocupa 8 bits, o lo que es lo mismo 1 byte, 2↑8 = 256 caracteres.

// - EBCDIC, cada carácter ocupa tambiéń 8 bits.

// En cualquiera de los 2, existen 4 tipos de carácteres:
// -> Alfabéticos: Letras mayúsculas y minñusculas.
// -> Númericos: Números
// -> Especiales: Todos los que no son letras y números, que viene en el teclado.
// -> Control: Que no son imprimibles y tienen asignados caracteres especiales, sirven para determinar el fn de linea, fin de texto.

// Cadena de carácteres: 
// Es un conjunto de 0 o más carácteres. Entre estos carácteres puede estar incluido el blanco.
// Las cadenas de carácteres se almacenan en posiciones contiguas de memoria.
// La longitud de una cadena es el número de carácteres de la misma.

// Ejemplos:
// "El Perú es mas grande y hermoso" -> longitud = 27, es un sola cadena
// "Hola mundo" -> longitud = 10.

// Una subcadena es una cadena extraída de otra.

// "Perú", es una subcadena de "El Perú es grande y hermoso".

Proceso cadena_de_caracteres
	
FinProceso
