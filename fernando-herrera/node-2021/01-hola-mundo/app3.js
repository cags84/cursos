console.clear();
console.log("Inicio del programa");

setTimeout(() => {
  console.log("Primer timeout");
}, 3000);

setTimeout(() => {
  console.log("Segundo timeout");
}, 2000);

setTimeout(() => {
  console.log("Tercer timeout");
}, 1000);

console.log("Fin del programa");
