const deadpool = {
  nombre: 'Wade',
  apellido: 'Wistrong',
  poder: 'Regeneración',
  getNombre() {
    return `${this.nombre} ${this.apellido} ${this.poder}`;
  }
};

console.log(deadpool.getNombre());

const { nombre, apellido, poder } = deadpool;

console.log(nombre);
console.log(apellido);
console.log(poder);