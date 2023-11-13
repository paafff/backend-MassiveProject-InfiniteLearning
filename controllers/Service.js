const businessDb = require('../models/BusinessModel');
const serviceDb = require('../models/ServiceModel');

const createService = async (req, res) => {
  const { name, price, businessId } = req.body;

  try {
    await serviceDb.create({
      name: name,
      price: price,
      businessId: businessId,
    });

    res.status(200).json({ msg: 'berhasil menambahkan layanan' });
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

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

businessDb.hasOne(serviceDb);
serviceDb.belongsTo(businessDb, {
  foreignKey: 'businessId',
  as: 'businessData',
});

module.exports = { createService, updateService };
