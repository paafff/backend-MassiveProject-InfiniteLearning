const express = require('express');
const {
  createReservation,
  updateReservation,
} = require('../controllers/Reservation.js');
const { verifyAuth } = require('../middleware/Verify.js');

const reservationRouter = express.Router();

reservationRouter.post('/reservation', verifyAuth, createReservation);
reservationRouter.patch('/reservation/:uuid', updateReservation);

module.exports = reservationRouter;
