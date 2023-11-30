const express = require('express');
const {
  createWorker,
  deleteWorker,
  getWorkers,
} = require('../controllers/Worker.js');

const workerRouter = express.Router();

workerRouter.post('/worker', createWorker);
workerRouter.delete('/worker', deleteWorker);
workerRouter.get('/workers', getWorkers);

module.exports = workerRouter;
