const fs = require('fs');
const multer = require('multer');
const feedbackDb = require('../models/FeedbackModel.js');
const businessDb = require('../models/BusinessModel.js');
const userDb = require('../models/UserModel.js');

const storageSettings = multer.diskStorage({
  destination: (req, file, cb) => {
    // Menentukan folder penyimpanan
    cb(null, 'assets/feedbackPhotos');
  },
  filename: (req, file, cb) => {
    // Menentukan nama file dengan menambahkan timestamp ke nama asli
    const timestamp = Date.now();
    const newFilename = `${timestamp}.png`; // Ubah ekstensi menjadi .png jika diperlukan
    cb(null, newFilename);
  },
});

const uploadFile = multer({ storage: storageSettings }).fields([
  { name: 'feedbackPhoto', maxCount: 1 },
]);

const createFeedback = async (req, res) => {
  uploadFile(req, res, async (error) => {
    if (error) {
      return res
        .status(500)
        .json({ msg: 'terjadi kesalahan dalam unggahan file' });
    }

    const { description, rating, businessId } = req.body;

    try {
      const feedbackPhotoName = req.files['feedbackPhoto'][0].filename;

      const feedbackPhotoURL = `${process.env.APP_DOMAIN}/feedbackPhotos/${feedbackPhotoName}`;

      await feedbackDb.create({
        description: description,
        rating: rating,
        imageName: feedbackPhotoName,
        imageURL: feedbackPhotoURL,
        userId: req.userId,
        businessId: businessId,
      });

      res.status(200).json({ msg: 'berhasil menambahkan feedback' });
    } catch (error) {
      res.status(400).json({ msg: error.message });
    }
  });
};

const deleteFeedback = async (req, res) => {
  try {
    const findFeedback = await feedbackDb.findOne({
      where: { uuid: req.params.uuid },
    });

    if (!findFeedback) {
      return res.status(404).json({ msg: 'feedback tidak ditemukan' });
    }

    fs.unlinkSync(`./assets/feedbackPhotos/${findFeedback.imageName}`);

    await feedbackDb.destroy({
      where: { uuid: req.params.uuid },
    });

    res.status(200).json('data feedback berhasil dihapus');
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
          as: 'feedbacks',
        },
        {
          model: userDb,
          as: 'userData',
        },
      ],
    });
    res.status(200).json(findFeedback);
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

module.exports = { getFeedbackByBusinessId, createFeedback, deleteFeedback };
