const express = require('express');
const {
  createFeedback,
  deleteFeedback,
  getFeedbackByBusinessId,
} = require('../controllers/Feedback.js');
const { verifyAuth } = require('../middleware/Verify.js');

const feedbackRouter = express.Router();

feedbackRouter.post('/feedback', verifyAuth, createFeedback);
feedbackRouter.delete('/feedback', deleteFeedback);
feedbackRouter.get('/feedback/:businessId', getFeedbackByBusinessId);

module.exports = feedbackRouter;
