// String template

let user = 'Carlos';
let isWorking = true;

/*
Antes de ECMAScript 6
console.log(
    '¿Hola ' + user + ' estas trabajando? ' + (isWorking ? '- Si, gracias a DIOS.' : '- No, lastimosamente no tengo trabajo.')
);
*/

// Despues de ECMAScript 6
console.log(
    `${user}, ${isWorking ? 'esta trabajando' : 'no esta trabajando'}`
);