const chai = require('chai');
const chaiHttp = require('chai-http');

chai.use(chaiHttp); // Le decimo a chai que incluya el plugin chai-http

// Importamos el objeto app
const app = require('../app').app;

// Test de integración.
describe('Suite de prueba e2e para el curso', () => {
  it('should return hello world', (done) => {
    chai
      .request(app)
      .get('/')
      .end((err, res) => {
        chai.assert.equal(res.status, '200');
        chai.assert.equal(res.text, 'Hello world');
        done();
      });
  });
});
