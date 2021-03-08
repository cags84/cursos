// Constantes JS
export const PI = Math.PI;

export let usuario = "Carlos";
export let password = "password";


const hello = () => console.log("Hola"); // Funcion expresada, problemas con el hoisting

// solo puedes tener un solo export defaults, esta es una función declarada.
export default function saludar() {
    console.log("Hola modulos +ES6, con export default");
}


