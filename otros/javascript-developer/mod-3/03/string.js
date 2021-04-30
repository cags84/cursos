// 01. toLowerCase
let a = 'ESTO ES UN STRING';
console.log(a);
console.log(
    'ESTO ES UN STRING'.toLowerCase()
);

console.log();

// toUpperCase
let b = 'Hola mundo';
console.log(
    b.toUpperCase()
);

// Lenght, cuenta cuantos caracteres hay en un string
let c = 'Esto es una cadena de prueba';
console.log(c.length);

// Accediendo a un indice en particulas [indice]
let d = 'Esto es una cadena de prueba';
console.log(d[10]); // Imprime a

// replace, se utiliza para reemplazar un cadena con otro string dado
let e = 'Hola Mundo';
console.log(
    e.replace('Mundo', 'Carlos')
);

// indexOf -> Busca el indice dado un valor, si no existe devuelve -1
let f = 'Este es otro indice';
console.log(
    f.indexOf('in')
);

// Includes, es similar al indexOf, pero devuelve true o false como respuesta
let g = 'Este es otro indice';
console.log(
    g.includes('di')
);

// Concat, se usa para concatenas
let h = 'Hola';
console.log(
    h.concat(' Carlos')
);

// Split, divide el string en un array dependiendo del paramatro definido
let i = 'uno, dos, tres, cuatro';
console.log(
    i.split(', ')
);

// trim, elimina los espacios a la derecha e izquierda de un string dado.
let j = ' Este es un string de prueba ';
console.log(
    j.trim()
);

// substr -> subdivide un string segun paramatros pasados
let k = 'Este es un ejemplo';
console.log(
    k.substr(0, 3)
);

console.log(
    k.substr(-4)
);

// slice, es muy parecido al anterior, solo que los dos parametros son indices
let l = 'Este es otro inidice';
console.log(
    l.slice(6, 9)
);