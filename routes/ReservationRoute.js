const express = require('express');
const {
  createReservation,
  updateReservation,
} = require('../controllers/Reservation');
const { verifyAuth } = require('../middleware/Verify');

const reservationRouter = express.Router();

reservationRouter.post('/reservation', verifyAuth, createReservation);
reservationRouter.patch('/reservation/:uuid', updateReservation);

module.exports = reservationRouter;
