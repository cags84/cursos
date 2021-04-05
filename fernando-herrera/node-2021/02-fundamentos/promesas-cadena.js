const empleados = [
  {
    id: 1,
    nombre: "Carlos",
  },
  {
    id: 2,
    nombre: "Yesica",
  },
  {
    id: 3,
    nombre: "Pacho",
  },
  {
    id: 4,
    nombre: "Emilia",
  },
];

const salarios = [
  {
    id: 1,
    salario: 1000,
  },
  {
    id: 2,
    salario: 1800,
  },
];

const getEmpleado = (id) => {
  return new Promise((resolve, reject) => {
    const empleado = empleados.find((e) => e.id === id)?.nombre;
    empleado ? resolve(empleado) : reject(`No existe empleado con id: ${id}`);
  });
};

const getSalario = (id) => {
  return new Promise((resolve, reject) => {
    const salario = salarios.find((e) => e.id === id)?.salario;
    salario ? resolve(salario) : reject(`No existe salario para el id: ${id}`);
  });
};

const id = 3;

/* getEmpleado(id)
  .then((empleado) => console.log(empleado))
  .catch((err) => console.error(err));

getSalario(id)
  .then((salario) => console.log(salario))
  .catch((err) => console.error(err)); */

/* getEmpleado(id)
  .then((empleado) => {
    getSalario(id)
      .then((salario) => console.log(`Nombre: ${empleado} Salario: ${salario}`))
      .catch((err) => console.log(`Error: ${err}`));
  })
  .catch((err) => console.error(`Error: ${err}`));
 */

let nombre = "";

getEmpleado(id)
  .then(empleado => {
    nombre = empleado;
    return getSalario(id);
  })
  .then(salario => console.log(`Nombre: ${nombre}, Salario: ${salario}`))
  .catch(err => console.error(`Error: ${err}`));
