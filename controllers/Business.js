const multer = require('multer');
const fs = require('fs');
const { error } = require('console');
const businessDb = require('../models/BusinessModel');

const storageSettings = multer.diskStorage({
  destination: (req, file, cb) => {
    // Menentukan folder penyimpanan
    cb(null, 'assets/business');
  },
  filename: (req, file, cb) => {
    // Menentukan nama file dengan menambahkan timestamp ke nama asli
    const timestamp = Date.now();
    const newFilename = `${timestamp}.png`; // Ubah ekstensi menjadi .png jika diperlukan
    cb(null, newFilename);
  },
});

// const uploadFile = multer({ storage: storageSettings }).fields([
//   { name: 'imagesBusiness', maxCount: 3 },
// ]);
const uploadFile = multer({ storage: storageSettings }).fields([
  { name: 'img1', maxCount: 1 },
  { name: 'img2', maxCount: 1 },
  { name: 'img3', maxCount: 1 },
]);

//isi

const createBusiness = (req, res) => {
  uploadFile(req, res, async (error) => {
    if (error) {
      return res
        .status(500)
        .json({ msg: 'Terjadi kesalahan dalam unggahan file' });
    }

    const {
      typeBusiness,
      name,
      openingHour,
      closingHour,
      kabupaten,
      kecamatan,
      kelurahan,
      facebook,
      instagram,
      twitter,
      youtube,
      // socialMedia,
    } = req.body;

    try {
      //name
      const img1Name = req.files['img1'][0].filename;
      const img2Name = req.files['img2'][0].filename;
      const img3Name = req.files['img3'][0].filename;

      //url
      const img1URL = `http://localhost:5000/business/${img1Name}`;
      const img2URL = `http://localhost:5000/business/${img2Name}`;
      const img3URL = `http://localhost:5000/business/${img3Name}`;

      //set array
      const address = [kabupaten, kecamatan, kelurahan];
      const schedule = [openingHour, closingHour];
      const imageName = [img1Name, img2Name, img3Name];
      const imageURL = [img1URL, img2URL, img3URL];
      const socialMedia = [facebook, instagram, twitter, youtube];
      // const socialMediaArray = [
      //   socialMedia[0],
      //   socialMedia[1],
      //   socialMedia[2],
      //   socialMedia[3],
      // ];

      await businessDb.create({
        name: name,
        typeBusiness: typeBusiness,
        address: address,
        schedule: schedule,
        imageName: imageName,
        imageURL: imageURL,
        socialMedia: socialMedia,

        //note fixxxxxxx middleware ntar
        userId: 1,
      });

      res.status(200).json({ msg: 'usaha sukses ditambahkan' });

      // opsi pengecekan
      // const check = req.files['imageOne'][0];
      // res.status(200).json({ msg: { imageURL } });
    } catch (error) {
      res.status(500).json({ msg: error.message });
    }
  });
};

const getBusiness = async (req, res) => {
  try {
    const findAllBusiness = await businessDb.findAll();

    res.status(200).json(findAllBusiness);
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

const getBusinessById = async (req, res) => {
  try {
    const findBuseiness = await businessDb.findOne({
      where: { uuid: req.params.uuid },
    });

    res.status(200).json(findBuseiness);
  } catch (error) {
    res.status(500).json({
      msg: error.message,
    });
  }
};

module.exports = { createBusiness, getBusiness, getBusinessById };
