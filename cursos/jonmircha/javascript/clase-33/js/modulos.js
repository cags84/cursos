import saludar, { PI, usuario } from './constantes.js';
import { aritmetica as calculos } from './aritmeticas.js';

console.log(`El valor de PI es ${PI}, esta constantes es traida desde el archivo de constantes.`);
console.log(`${usuario}`);

console.log(calculos.sumar(3,4));
console.log(calculos.restar(3,4));

// export default
saludar();

// forma de trabajar con react.
//import React, {Component} from 'react':