const express = require('express');
const {
  createReservation,
  updateReservation,
  getReservationByBusinessId,
} = require('../controllers/Reservation.js');
const { verifyAuth } = require('../middleware/Verify.js');

const reservationRouter = express.Router();

reservationRouter.post('/reservation', verifyAuth, createReservation);
reservationRouter.patch('/reservation/:uuid', updateReservation);
reservationRouter.get('/reservation/:id', getReservationByBusinessId);

module.exports = reservationRouter;
