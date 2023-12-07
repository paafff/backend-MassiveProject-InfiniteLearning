const express = require('express');
const {
  createListService,
  deleteListService,
  updateListService,
  getListService,
} = require('../controllers/ListService');

const listServiceRouter = express.Router();

listServiceRouter.post('/list-service', createListService);
listServiceRouter.delete('/list-service/:id', deleteListService);
listServiceRouter.patch('/list-service/:id', updateListService);
listServiceRouter.get('/list-service', getListService);

module.exports = listServiceRouter;
