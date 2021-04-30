/* Condicionales anidadas */
 
let user = 'Pedro'; // Recibimos la variable
let userTemp = user.toLowerCase().trim(); // A minusculas y limpizamos los espacios en blanco

if(userTemp === 'carlos') {
    console.log('Eres ' + user);
} else if(userTemp === 'pepito') {
    console.log('Eres ' + user);
} else if(userTemp === 'yesica') {
    console.log('Eres ' + user);
} else {
    console.log('No estas registrado tu nombre!');
}