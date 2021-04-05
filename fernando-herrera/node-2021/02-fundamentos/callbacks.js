/* setTimeout(function() {
  console.log("Hola mundo");
}, 1000); */

/* setTimeout(() => {
  console.log("Hola mundo");
}, 1000); */

const getUserById = (id, callback) => {
  
  const user = {
    id,
    nombre: 'Carlos'
  };

  setTimeout( () => {
    callback(user);
  }, 1000);

};

getUserById(1, (usuario) => {
  console.log(`id: ${usuario.id} nombre: ${usuario.nombre.toUpperCase()}`);
});