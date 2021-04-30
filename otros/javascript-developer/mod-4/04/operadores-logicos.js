/* 04 - Operadores lógicos */

// AND (&&), ambas comprobaciones deben ser true para que devuelva un true
console.log(
    (true && true) // Devolvera true
);
console.log(
    (false && true) // Devolvera false
);
console.log(
    (false && false) // Devolvera false
);

// OR (||), con que uno de los valores sean true, devolvera true, de lo contrario todo lo otro sera false
console.log(
    (true || true) // Devolvera true
);
console.log(
    (false || true) // Devolvera frue
);
console.log(
    (false && false) // Devolvera false
);

// NOT (!(...)), niega la comprobación
console.log(
    !(true && true) // Debería devolver true, pero se niega y sale false
);
console.log(
    !(false && false) // Debería devolver false, pero con la negación debe ser true
);