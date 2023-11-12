const multer = require('multer');
const fs = require('fs');
// const { error } = require('console');
const businessDb = require('../models/BusinessModel');
// const { where } = require('sequelize');
const Sequelize = require('sequelize');

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
      provinsi,
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
      const address = [provinsi, kabupaten, kecamatan, kelurahan];
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

const updateBusiness = async (req, res) => {
  uploadFile(req, res, async (error) => {
    if (error) {
      return res
        .status(500)
        .json({ msg: 'terjadi kesalahan dalam unggahan file' });
    }

    const findBusiness = await businessDb.findOne({
      where: { uuid: req.params.uuid },
    });

    if (!findBusiness) {
      return res.status(404).json({ msg: 'usaha tidak ditemukan' });
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
      subscription,
    } = req.body;

    try {
      if (req.files['img1']) {
        fs.unlinkSync(`./assets/business/${findBusiness.imageName[0]}`);
      }
      if (req.files['img2']) {
        fs.unlinkSync(`./assets/business/${findBusiness.imageName[1]}`);
      }
      if (req.files['img3']) {
        fs.unlinkSync(`./assets/business/${findBusiness.imageName[2]}`);
      }

      //name
      const img1Name = req.files['img1']
        ? req.files['img1'][0].filename
        : findBusiness.imageName[0];
      const img2Name = req.files['img2']
        ? req.files['img2'][0].filename
        : findBusiness.imageName[1];
      const img3Name = req.files['img3']
        ? req.files['img3'][0].filename
        : findBusiness.imageName[2];

      //url
      const img1URL = `http://localhost:5000/business/${img1Name}`;
      const img2URL = `http://localhost:5000/business/${img2Name}`;
      const img3URL = `http://localhost:5000/business/${img3Name}`;

      //set array
      const address = [
        kabupaten || findBusiness.address[0],
        kecamatan || findBusiness.address[1],
        kelurahan || findBusiness.address[2],
      ];
      const schedule = [
        openingHour || findBusiness.schedule[0],
        closingHour || findBusiness.schedule[1],
      ];
      const imageName = [img1Name, img2Name, img3Name];
      const imageURL = [img1URL, img2URL, img3URL];
      const socialMedia = [
        facebook || findBusiness.socialMedia[0],
        instagram || findBusiness.socialMedia[1],
        twitter || findBusiness.socialMedia[2],
        youtube || findBusiness.socialMedia[3],
      ];

      const updateData = {
        name: name,
        typeBusiness: typeBusiness,
        address: address,
        schedule: schedule,
        imageName: imageName,
        imageURL: imageURL,
        socialMedia: socialMedia,
      };

      await businessDb.update(updateData, { where: { uuid: req.params.uuid } });
      res.status(200).json({ msg: 'sukses update' });
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

const getSubscriptionBusiness = async (req, res) => {
  try {
    const findSubscriptionBusiness = await businessDb.findAll({
      where: { subscription: 'yes' },
      limit: 2,
      order: Sequelize.literal('RAND()'),
    });

    res.status(200).json(findSubscriptionBusiness);
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

const getBarbeshopBusiness = async (req, res) => {
  try {
    const findBarbershopBusiness = await businessDb.findAll({
      where: { typeBusiness: 'Barbershop' },
    });

    if (!findBarbershopBusiness) {
      console.log('Data Barbershop not found');
      res.status(404).json({ msg: 'Data not found' });
    } else {
      console.log('Barbershop Data:', findBarbershopBusiness);
      res.status(200).json(findBarbershopBusiness);
    }
  } catch (error) {
    console.error('Error in getBarbeshopBusiness:', error);
    res.status(500).json({ msg: error.message });
  }
};
const getSalonBusiness = async (req, res) => {
  try {
    const findSalonBusiness = await businessDb.findAll({
      where: { typeBusiness: 'Salon' },
    });

    res.status(200).json(findSalonBusiness);
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

const getBusinessById = async (req, res) => {
  try {
    const findBusiness = await businessDb.findOne({
      where: { uuid: req.params.uuid },
    });

    res.status(200).json(findBusiness);
  } catch (error) {
    res.status(500).json({
      msg: error.message,
    });
  }
};

const deleteBusiness = async (req, res) => {
  try {
    const findBusiness = await businessDb.findOne({
      where: { uuid: req.params.uuid },
    });

    fs.unlinkSync(`./assets/business/${findBusiness.imageName[0]}`);
    fs.unlinkSync(`./assets/business/${findBusiness.imageName[1]}`);
    fs.unlinkSync(`./assets/business/${findBusiness.imageName[2]}`);

    await businessDb.destroy({ where: { uuid: req.params.uuid } });

    res.status(200).json({ msg: 'usaha berhasil dihapus' });
  } catch (error) {
    res.status(500).json({
      msg: error.message,
    });
  }
};

module.exports = {
  createBusiness,
  getBusiness,
  getBusinessById,
  updateBusiness,
  deleteBusiness,
  getSalonBusiness,
  getBarbeshopBusiness,
  getSubscriptionBusiness,
};
