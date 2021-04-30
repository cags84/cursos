const express = require('express');

const app = express();
const port = 3000;

app.get('/', (req, res, next) => {
  // req -> es la petición, los datos de lo que nos estan haciendo.
  // res -> es la respuesta, lo que nosotros devolvemos al cliente.
  res.status(200).send(`Hello world`);
});

// Endpoint /team
app.post('/team/pokemons', (req, res, next) => {
  res.status(200).send(`Hello world`);
});
app.get('/team', (req, res, next) => {
  res.status(200).send(`Hello world`);
});
app.delete('/team/pokemons/:id', (req, res, next) => {
  res.status(200).send(`Hello world`);
});
app.put('/team', (req, res, next) => {
  res.status(200).send(`Hello world`);
});

app.listen(port, () => {
  console.log(`Server running at port ${port}`);
});

exports.app = app;
