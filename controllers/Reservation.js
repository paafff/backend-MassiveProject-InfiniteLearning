const businessDb = require('../models/BusinessModel.js');
const reservationDb = require('../models/ReservationModel.js');

const createReservation = async (req, res) => {
  const { name, workerSelected, description, time, day, businessId, phone } =
    req.body;

  try {
    await reservationDb.create({
      name: name,
      workerSelected: workerSelected,
      description: description,
      time: time,
      day: day,
      businessId: businessId,
      phone: phone,
      userId: req.userId,
    });

    res.status(200).json({ msg: 'berhasil menambahkan reservasi' });
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

const updateReservation = async (req, res) => {
  try {
    await reservationDb.update(
      { responseBusiness: responseBusiness.req.body },
      { where: { uuid: req.params.uuid } }
    );

    res.status(200).json({ msg: 'berhasil update data reservasi' });
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

const getReservationByBusinessId = async (req, res) => {
  try {
    const findReservation = await reservationDb.findAll({
      where: { businessId: req.params.id },
    });

    res.status(200).json(findReservation);
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

module.exports = {
  createReservation,
  updateReservation,
  getReservationByBusinessId,
};
