const userDb = require('../models/UserModel');

const verifyAuth = async (req, res, next) => {
  if (!req.session.temporarySessionUUID) {
    return res.status(401).json({ msg: 'mohon login terlebih dahulu' });
  }

  const findUser = await userDb.findOne({
    where: { uuid: req.session.temporarySessionUUID },
  });

  if (!findUser) {
    return res.status(404).json({ msg: 'user tidak ditemukan' });
  }

  req.userId = findUser.id;
  req.role = findUser.role;

  next();
};

const verifyAdminSuperuser = async (req, res, next) => {
  const findUser = await userDb.findOne({
    where: { uuid: req.session.temporarySessionUUID },
  });

  if (!findUser) {
    return res.status(404).json({ msg: 'user tidak ditemukan' });
  }

  if (findUser.role !== 'admin' || 'superuser') {
    return res.status(403).json({ msg: 'akses terlarang' });
  }
};

module.exports = { verifyAuth, verifyAdminSuperuser };
