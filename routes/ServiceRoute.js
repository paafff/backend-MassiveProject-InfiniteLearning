const express = require('express');
const {
  createService,
  updateService,
  getServices,
  getServiceById,
} = require('../controllers/Service');

const serviceRouter = express.Router();

serviceRouter.post('/service', createService);
serviceRouter.delete('/service', updateService);
serviceRouter.get('/services', getServices);
serviceRouter.get('/service/:businessId', getServiceById);

module.exports = serviceRouter;
