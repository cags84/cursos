// 01 - toString
let x = 12;
console.log(
    typeof(x.toString())
);

// Otra forma sin declarar la variable, tenemos que encerrarla entre ()
console.log(
    typeof((45).toString())
);

// 02 - toFixed
console.log(
    (12).toFixed(4) // Definimos precicion en float en 4 decimales, despues del punto
);

// 03 - parseInt, cuando queremos convertir una cadena en un entero
console.log(
    typeof(parseInt('0004'))
);

// 04 - parseFloat, convierte un string en un float
console.log(
    parseFloat('00000010')
); 

// 05 - Si no se puede convertir a número entonces recibimos un NaN
console.log(
    parseFloat('aa22333')
);