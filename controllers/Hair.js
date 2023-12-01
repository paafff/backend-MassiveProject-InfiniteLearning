const { error } = require('console');
const fs = require('fs');
const multer = require('multer');
const hairDb = require('../models/HairModel.js');

const storageSettings = multer.diskStorage({
  destination: (req, file, cb) => {
    // Menentukan folder penyimpanan
    cb(null, 'assets/hairModels');
  },
  filename: (req, file, cb) => {
    // Menentukan nama file dengan menambahkan timestamp ke nama asli
    const timestamp = Date.now();
    const newFilename = `${timestamp}.png`; // Ubah ekstensi menjadi .png jika diperlukan
    cb(null, newFilename);
  },
});

const uploadFile = multer({ storage: storageSettings }).fields([
  { name: 'hairModel', maxCount: 1 },
]);

const createHair = async (req, res) => {
  uploadFile(req, res, async (error) => {
    if (error) {
      return res
        .status(500)
        .json({ msg: 'terjadi kesalahan dalam unggahan file' });
    }

    try {
      const hairModelName = req.files['hairModel'][0].filename;

      const hairModelURL = `${process.env.APP_DOMAIN}/profileModels/${hairModelName}`;

      await hairDb.create({
        name: req.body.name,
        imageName: hairModelName,
        imageURL: hairModelURL,
      });

      res.status(200).json({ mag: 'sukses menambah model rambut' });
    } catch (error) {
      res.status(500).json({ msg: error.message });
    }
  });
};

const deleteHair = async (req, res) => {
  try {
    const findHair = hairDb.findOne({
      where: { id: req.params.hairId },
    });

    if (!findHair) {
      return res.status(404).json({ mag: 'model rambut tidak ditemukan' });
    }

    fs.unlinkSync(`./assets/hairModels/${findHair.imageName}`);

    await hairDb.destroy({ where: { id: req.params.hairId } });

    res.status(200).json('data pekerja berhasil dihapus');
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

const getHairs = async (req, res) => {
  try {
    const response = await hairDb.findAll();

    res.status(200).json(response);
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

module.exports = { getHairs, deleteHair, createHair };
