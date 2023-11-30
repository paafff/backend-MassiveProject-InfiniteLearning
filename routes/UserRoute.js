const express = require('express');
const {
  getUsers,
  getUser,
  updateUser,
  updateUserPassword,
  deleteUser,
} = require('../controllers/User.js');

const userRouter = express.Router();

userRouter.get('/users', getUsers);
userRouter.get('/user/:uuid', getUser);
userRouter.patch('/user/:uuid', updateUser);
userRouter.patch('/user/password/:uuid', updateUserPassword);
userRouter.delete('/user/:uuid', deleteUser);

module.exports = userRouter;
