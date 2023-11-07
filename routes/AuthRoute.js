const express = require('express');
const { Register, Login, getMe, Logout } = require('../controllers/Auth.js');

const authRouter = express.Router();

authRouter.post('/register', Register);
authRouter.post('/login', Login);
authRouter.get('/getme', getMe);
authRouter.delete('/logout', Logout);

module.exports = authRouter;
