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

const getEmpleado = (id, callback) => {
  const empleado = empleados.find((e) => e.id === id)?.nombre;

  if (empleado) {
    callback(null, empleado);
  } else {
    callback(`El empleado con id: ${id} no existe!`);
  }
};

const getSalario = (id, callback) => {
  const salario = salarios.find((e) => e.id === id)?.salario;

  if (salario) {
    callback(null, salario);
  } else {
    callback(`No existe salario para el id: ${id}`);
  }
};

const id = 3;

getEmpleado(id, (err, empleado) => {
  if (err) {
    return console.error(err);
  }

  getSalario(id, (err, salario) => {
    if (err) {
      return console.error(err);
    }

    console.log(`El empleado: ${empleado}, tiene un salario de: ${salario}.`);
  });
});
