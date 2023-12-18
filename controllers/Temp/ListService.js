const { where } = require('sequelize');
const listServiceDb = require('../models/ListServiceModel.js');

const createListService = async (req, res) => {
  try {
    await listServiceDb.create({
      name: req.body.name,
    });

    res.status(200).json({ msg: 'berhasil menambah data layanan' });
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

const updateListService = async (req, res) => {
  try {
    await listServiceDb.update(
      { name: req.body.name },
      { where: { id: req.params.id } }
    );

    res.status(200).json({ msg: 'berhasil update data layanan' });
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

const deleteListService = async (req, res) => {
  try {
    await listServiceDb.destroy({ where: { id: req.params.id } });

    res.status(200).json({ msg: 'berhasil menghapus data layanan' });
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

const getListService = async (req, res) => {
  try {
    const findListService = await listServiceDb.findAll();

    res.status(200).json(findListService);
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

module.exports = {
  deleteListService,
  createListService,
  updateListService,
  getListService,
};
