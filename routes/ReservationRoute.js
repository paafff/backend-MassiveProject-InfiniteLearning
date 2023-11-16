const express = require('express');
const {
  createReservation,
  updateReservation,
} = require('../controllers/Reservation');

const reservationRouter = express.Router();

reservationRouter.post('/reservation', createReservation);
reservationRouter.patch('/reservation/:uuid', updateReservation);


module.exports = reservationRouter
