const express = require('express');
const {
  createFeedback,
  deleteFeedback,
  getFeedbackByBusinessId,
} = require('../controllers/Feedback');

const feedbackRouter = express.Router();

feedbackRouter.post('/feedback', createFeedback);
feedbackRouter.delete('/feedback', deleteFeedback);
feedbackRouter.get('/feedback/:businessId', getFeedbackByBusinessId);

module.exports = feedbackRouter;
