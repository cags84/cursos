/* 05 - Operador cortocircuito */

let xx; // Si definimos la variable y no le damos valor quedo como undefined
/*
Evalua, si la variable es false, que es el caso por se undefined, entonces toma el valor de la derecha
y se lo asigna en el caso de ||, en el caso de && si tiene valor le asinga el valor
*/
xx = xx || 'hola';
console.log(xx);

// Ahora lo probamos desde el navegador
let nombre = prompt('¿Cual es tu nombre?');
nombre = nombre || 'No tienes nombre!';
console.log(nombre);