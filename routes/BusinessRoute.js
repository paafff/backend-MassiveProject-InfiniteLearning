const express = require('express');
const { createBusiness } = require('../controllers/Business');

const businessRouter = express.Router();

businessRouter.post('/business', createBusiness);

module.exports = businessRouter;
