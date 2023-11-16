const fs = require('fs');
const feedbackDb = require('../models/FeedbackModel');
const businessDb = require('../models/BusinessModel');
const userDb = require('../models/UserModel');

const createFeedback = async (req, res) => {
  const { description, rating, userId, businessId } = req.body;

  try {
    await feedbackDb.create({
      description: description,
      rating: rating,
      userId: userId,
      businessId: businessId,
    });

    res.status(200).json({ msg: 'berhasil menambahkan feedback' });
  } catch (error) {
    res.status(400).json({ msg: error.message });
  }
};

const deleteFeedback = async (req, res) => {
  try {
    const findFeedback = await feedbackDb.findOne({
      where: { uuid: req.params.uuid },
    });

    if (!findFeedback) {
      return res.status(404).json({ msg: 'feedback tidak ditemukan' });
    }

    await feedbackDb.destroy({
      where: { uuid: req.params.uuid },
    });
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

const getFeedbackByBusinessId = async (req, res) => {
  try {
    const findFeedback = await feedbackDb.findAll({
      where: { businessId: req.params.businessId },
      include: [
        {
          model: businessDb,
          as: 'feedbackBusiness',
        },
        {
          model: userDb,
          as: 'feedbackUser',
          attributes: ['profileUrl', 'username', 'email'],
        },
      ],
    });
    res.status(200).json(findFeedback);
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

module.exports = { getFeedbackByBusinessId, createFeedback, deleteFeedback };
