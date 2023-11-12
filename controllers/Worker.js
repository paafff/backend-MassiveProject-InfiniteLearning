const fs = require('fs');
const multer = require('multer');
const workerDb = require('../models/WorkerModel');

const storageSettings = multer.diskStorage({
  destination: (req, file, cb) => {
    // Menentukan folder penyimpanan
    cb(null, 'assets/profileWorkers');
  },
  filename: (req, file, cb) => {
    // Menentukan nama file dengan menambahkan timestamp ke nama asli
    const timestamp = Date.now();
    const newFilename = `${timestamp}.png`; // Ubah ekstensi menjadi .png jika diperlukan
    cb(null, newFilename);
  },
});

const uploadFile = multer({ storage: storageSettings }).fields([
  { name: 'photoWorker', maxCount: 1 },
]);

const createWorker = async (req, res) => {
  uploadFile(req, res, async (error) => {
    if (error) {
      return res
        .status(500)
        .json({ msg: 'terjadi kesalahan dalam unggahan file' });
    }

    try {
      const photoWorkerName = req.files['photoWorker'][0].filename;

      const photoWorkerURL = `http://localhost:5000/profileWorkers/${photoWorkerName}`;

      const { name, skill, description, businessId } = req.body;

      await workerDb.create({
        name: name,
        skill: skill,
        description: description,
        businessId: businessId,
        imageName: photoWorkerName,
        imageURL: photoWorkerURL,
      });

      res.status(200).json({ mag: 'sukses membuat data pekerja' });
    } catch (error) {
      res.status(500).json({ msg: error.message });
    }
  });
};

const deleteWorker = async (req, res) => {
  try {
    const findWorker = workerDb.findOne({
      where: { uuid: req.params.uuid },
    });

    fs.unlinkSync(`./assets/workerProfiles/${findWorker.imageName}`);

    await workerDb.findOne({ where: { uuid: req.params.uuid } });

    res.status(200).json('data pekerja berhasil dihapus');
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

module.exports = { deleteWorker, createWorker };
