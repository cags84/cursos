// Datos primitivos
/*
    DATOS PRIMITIVOS
    ----------------
    Boolean
    Null
    undefined
    Number
    String

    OBJECT
*/

// Variable sin alcance o contexto, se crea practicamente como una vabeable global

//var x = 12;
{
    var x = 12; 
}
console.log(x); // Deberia dar problemas, pero no, dado que se crea con un alcane gloabl

// Variable con alcance let, depende del alcance donde se cree
{
    let y = 14;
}
//console.log(y);

// Consntantes, una vez inicializado el script no puede cambiar el valor.
const URL = 'https//localhost';
console.log(URL);

// DATOS PRIMITIVOS
let a = true; // Puede ser true o false, se usa para operaciones logicas
let b = null; // Existe la variable pero el valor es nulo.
let c = undefined; // existe la variable pero no ha sido declarado ni el tipo, ni el valor
let d = 12.3; // se tratan todos como el number {int, float, double}
let e = 'Esto es un string'; // Puede ser con comillas simpes '', o dobles "";

// Objectos
// los objetos se tratan como un diccionario por ejemplo en python, donde es key: value
let objeto = {
    valora: "Este es un valor",
    valorb: 12.2,
    valorc: {
        "valoraa": "que tal!"
    }
}

console.log();
console.log("La variable a es de tipo: " + a);
console.log("La variable b es de tipo:" + b);
console.log("La variable c es de tipo: " + c);
console.log("La variable d es de tipo: " + d);
console.log("La variable e es de tipo: " + e);
console.log("La variable objeto es de tipo: " + objeto);