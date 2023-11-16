const express = require('express');
const {
  createService,
  updateService,
  getServices,
} = require('../controllers/Service');

const serviceRouter = express.Router();

serviceRouter.post('/service', createService);
serviceRouter.delete('/service', updateService);
serviceRouter.get('/services', getServices);

module.exports = serviceRouter;
