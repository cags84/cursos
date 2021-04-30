const chai = require('chai');
const chaiHttp = require('chai-http');

chai.use(chaiHttp);

const app = require('../app').app;

describe('Seuite de pruebas auth', () => {
  it('should return 403', (done) => {});
});
