/* 03 - Operadores de comparación y ternarios */

// (==), comparacion
let a1 = (1 == 1);
console.log(a1);

// (===), comparación pero compara el valor y el tipo de dato
let a2 = (1 === '1');
console.log(a2);

// (!=), si son diferentes
let a3 = (1 != 1);
console.log(a3);

// (!==), verifica valor y tipo
let a4 = (1 !== 1);
console.log(a4);

// (>), mayor que
let a5 = (1 > 1);
console.log(a5);

// (<), menor que
let a6 = (1 < 1)
console.log(a6);

// (>=), mayor o igual que
let a7 = (1 >= 1);
console.log(a7);

// (<=), menor o igual que
let a8 = (1 <= 1);
console.log(a8);

// Valores ternario
let edad = 20;
console.log(
    (edad > 18) ? 'Es mayor a 18 años' : 'Eres menor de edad'
);