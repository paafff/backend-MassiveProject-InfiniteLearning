const express = require('express');
const {
  createBusiness,
  getBusiness,
  getBusinessById,
} = require('../controllers/Business');

const businessRouter = express.Router();

businessRouter.post('/business', createBusiness);
businessRouter.get('/business', getBusiness);
businessRouter.get('/business/:uuid', getBusinessById);

module.exports = businessRouter;
