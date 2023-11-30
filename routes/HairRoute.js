const express = require('express');
const { createHair, deleteHair, getHairs } = require('../controllers/Hair.js');

const hairRouter = express.Router();

hairRouter.post('/hair', createHair);
hairRouter.delete('/hair', deleteHair);
hairRouter.get('/hairs', getHairs);

module.exports = hairRouter;
