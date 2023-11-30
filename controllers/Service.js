const { response } = require('express');
const businessDb = require('../models/BusinessModel.js');
const serviceDb = require('../models/ServiceModel.js');

const createService = async (req, res) => {
  try {
    const { name, price, businessId } = req.body;

    const findService = await serviceDb.findOne({
      where: { businessId: businessId },
    });

    if (findService) {
      await findService.destroy({ where: { businessId: businessId } });
    }

    // Pengecekan apakah price adalah string atau bukan
    const priceArray = typeof price === 'string' ? price.split(',') : price;

    console.log(priceArray);

    await serviceDb.create({
      name: name,
      price: priceArray,
      businessId: businessId,
    });

    res.status(200).json({ msg: 'berhasil menambahkan layanan' });
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

// const businessDb = require('../models/BusinessModel');
// const serviceDb = require('../models/ServiceModel');

// const createService = async (req, res) => {
//   const { name, price, businessId } = req.body;

//   try {
//     if (!price) {
//       throw new Error('Field "price" is required.');
//     }

//     const priceArray = price.split(',');
//     console.log(priceArray);

//     await serviceDb.create({
//       name: name,
//       price: priceArray,
//       businessId: 1,
//     });

//     res.status(200).json({ msg: 'berhasil menambahkan layanan' });
//   } catch (error) {
//     res.status(500).json({ msg: error.message });
//   }
// };

//update => delete trus create
const updateService = async (req, res) => {
  const { name, price, businessId } = req.body;

  try {
    // const findService = await serviceDb.findOne({
    //   where: { businessId: businessId },
    // });

    await serviceDb.destroy({ where: { businessId: businessId } });

    await serviceDb.create({
      name: name,
      price: price,
      businessId: businessId,
    });

    res.status(200).json({ msg: 'berhasil menambahkan layanan terbaru' });
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

const getServices = async (req, res) => {
  try {
    //temporary
    const tempBusinessId = 1;
    const response = await serviceDb.findAll({
      where: { businessId: tempBusinessId },
    });

    res.status(200).json(response);
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

const getServiceById = async (req, res) => {
  try {
    const businessId = req.params.businessId;

    const response = await serviceDb.findOne({
      where: { businessId: businessId },
    });

    res.status(200).json(response);
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

module.exports = { createService, updateService, getServices, getServiceById };


