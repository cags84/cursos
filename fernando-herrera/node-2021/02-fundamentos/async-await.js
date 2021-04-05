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

const id = 1;

// await, espera hasta que tengas la respuesta de la promesa, debe estar dentro de una funcion o metodo asyncrono

// De esta forma transformaos esa funcion de flecha en una promesa
const getInfoUsuario = async (id) => {
  try {
    // Dentro de una funcion/metodo async, podemos usar la palbara await, no se puede por fuera de este.
    const empleado = await getEmpleado(id);
    const salario = await getSalario(id);
    return { empleado, salario };
  } catch (error) {
    throw error;
  }
};

getInfoUsuario(id)
  .then(({ empleado, salario }) => console.log(`El nombre: ${empleado}, el salario ${salario}`))
  .catch((err) => console.log(err));
