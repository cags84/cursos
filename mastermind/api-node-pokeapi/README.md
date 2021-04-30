# API NODE POKÉMON

## Librerias de node necesarias

- [express](https://www.npmjs.com/package/express)
- Testing
  - [mochajs](https://mochajs.org/)
  - [chaijs](https://www.chaijs.com/)
    - Plugins
      - [chai-http](https://www.chaijs.com/plugins/chai-http/)

## Pasos necesarios para construir el API

Antes de empezar.

- Instalamos las siguientes dependencias de desarrollo
  - npm install -D nodemon
  - npm install -D eslint
  - npm install -D eslint-config-prettier

Despues

- Parte #1

  - Crear un archivo app.js.
  - Ejecutar `npm init -y`.
  - Instalar express. `npm install express`.
  - Creamos el .gitignore y agregamos la carpeta `node_modules` para evitar que git haga seguimiento.
  - Modificamos el archivo app.js para que el servidor se cree y comencemos a crear el API.
  - Ejecutamos `npm install`
  - Ejecutamos `npm app.js` y con ello tenemos la primera parte del API trabajando.
  - Vamos a un navegador con http://localhost:3000 y deberiamos ver.

- Parte #2

Objetivo: Definir una API para gestionar nuestro equipo POKÉMON.

- Acciones
  - Identificarnos.
  - Consultar información de nuestro equipo.
  - Añadir pokémon a nuestro equipo.
  - Eliminar pokémon a nuestro equipo.
  - Intercambiar el orden de nuestros pokémon.

Definir las url's (rutas), tenemos que definir que queremos que haga nuestra API.

- Rest API Design:
  - Añadir pokémon: - POST /team/pokemons
  - Consultar: - GET /team
  - Eliminar pokémon: - DELETE /team/pokemons/:id
  - Intercambiar el orden de nuestro pokémon: - PUT /team
  - Sistema de credenciales.

* Parte #3

Implementar testing, es un parte fundamental a la hora de desarrollar con la arquitectura TDD o similar.

Vamos a utilizar mochajs y chaijs, mocha se utiliza para desarrollar los tests, es la suite de test, nos permite desarrollar test sincronos como asincronos, chais, nos permite las pruebas en si misma, por ej: que una variable de este rsultado o esta función devuelva lo que debería devolver.

- ejecutamos `npm install -D mocha`
- ejecutamos `npm install -D chai`

Ahora creamos una carpeta en la raíz de nuestro proyecto con el nombre de `test`, donde almacenaremos los test's que vamos a tener en nuestra aplicación.

Hay dos tipos:

- Test unitario: Testea funcionalidades, funciones concretas.
- Test de inicio a fin: Simular una persona externa que esta encendiendo funcionalidades.

Se recomienda tener muchos test unitarios y uno que otro test end to end.

Modificamos dentro del fichero `package.json`, el script `test` con `./node_modules/.bin/mocha`, para que ejecute las pruebas unitarias.

Creamos dentro de la carpeta test, las diferentes pruebas unitarias, debe terminar con .test.js, y las ejecutamos con el comando `npm run test`;

tambien lo podemos ejecutar con el comando `./node_modules/.bin/mocha` dentro de nuestra carpeta.

Ahora vamos a ejecutar un test end-to-end (endpoint).

Para ello instalamos la libreria chai-http que es un plugin de chai con el siguiente comando `npm install chai-http`.

Crearemos un archivo dentro de test, con el nombre por ejemplo de e2e-test.test.js, donde incluiremos las librerias chai y chai-http.

la libreria chai-http es un plugin que le da liberta a chai para poder levantar servidor y manejar el tema de las peticiones http.

- Parte #4

- Parte #5
