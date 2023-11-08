const fs = require('fs');
const multer = require('multer');
const userDb = require('../models/UserModel');
const argon2 = require('argon2');

const storageSettings = multer.diskStorage({
  destination: (req, file, cb) => {
    // Menentukan folder penyimpanan
    cb(null, 'assets/profiles');
  },
  filename: (req, file, cb) => {
    // Menentukan nama file dengan menambahkan timestamp ke nama asli
    const timestamp = Date.now();
    const newFilename = `${timestamp}.png`; // Ubah ekstensi menjadi .png jika diperlukan
    cb(null, newFilename);
  },
});

const uploadFile = multer({ storage: storageSettings }).fields([
  { name: 'photoProfile', maxCount: 1 },
]);

const getUsers = async (req, res) => {
  try {
    const response = await userDb.findAll({
      attributes: [
        'uuid',
        'username',
        'email',
        'phone',
        'card',
        'address',
        'gender',
        'role',
        'profileName',
        'profileUrl',
      ],
    });
    res.status(200).json(response);
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

const getUser = async (req, res) => {
  try {
    const response = await userDb.findOne({
      where: { uuid: req.params.uuid },
      attributes: [
        'uuid',
        'username',
        'email',
        'phone',
        'card',
        'address',
        'gender',
        'role',
        'profileName',
        'profileUrl',
      ],
    });

    res.status(200).json(response);
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

const updateUser = async (req, res) => {
  uploadFile(req, res, async (error) => {
    if (error) {
      return res
        .status(500)
        .json({ msg: 'terjadi kesalahan dalam unggahan file' });
    }
    const findUser = await userDb.findOne({
      where: { uuid: req.params.uuid },
    });

    if (!findUser) {
      return res.status(404).json({ msg: 'user tidak ditemukan' });
    }

    try {
      if (req.files['photoProfile'] && findUser.profileName != null) {
        fs.unlinkSync(`./assets/profiles/${findUser.profileName}`);
      }

      const photoProfileName = req.files[`photoProfile`]
        ? req.files['photoProfile'][0].filename
        : findUser.profile;

      const photoProfileUrl = `http://localhost:5000/profiles/${photoProfileName}`;

      const { username, email, phone, card, address, gender, role } = req.body;

      // AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
      // note bikin logic ubah role ketika udah ngisi phone & card
      // if role guest, if phone !null, if card !null

      const updateData = {
        username: username || findUser.username,
        email: email || findUser.email,
        card: card || findUser.card,
        address: address || findUser.address,
        phone: phone || findUser.phone,
        gender: gender || findUser.gender,
        role: role || findUser.role,
        profileName: photoProfileName,
        profileUrl: photoProfileUrl,
      };

      await userDb.update(updateData, { where: { uuid: req.params.uuid } });
      res.status(200).json({ msg: 'Data berhasil di update' });
    } catch (error) {
      res.status(400).json({ msg: error.message });
    }
  });
};

const updateUserPassword = async (req, res) => {
  //
  const findUser = await userDb.findOne({ where: { uuid: req.params.uuid } });

  const { password, confPassword } = req.body;

  let hashPassword;

  if (password === '' || password === null) {
    hashPassword = findUser.password;
  } else {
    hashPassword = await argon2.hash(password);
  }

  if (password !== confPassword) {
    return res
      .status(400)
      .json({ msg: 'password yang anda masukan tidak sama' });
  }

  try {
    await userDb.update(
      {
        password: hashPassword,
      },
      {
        where: { uuid: req.params.uuid },
      }
    );
    res.status(400).json({ msg: 'password berhasil diubah' });
  } catch (error) {
    res.status(400).json({ msg: error.message });
  }
};

const deleteUser = async (req, res) => {
  try {
    const findUser = await userDb.findOne({
      where: { uuid: req.params.uuid },
    });

    if (findUser.profileName !== null) {
      fs.unlinkSync(`./assets/profiles/${findUser.profileName}`);
    }
    await userDb.destroy({
      where: { uuid: req.params.uuid },
    });

    res.status(200).json({ msg: 'user sukses dihapus' });
  } catch (error) {
    res.status(400).json({ msg: error.message });
  }
};

module.exports = {
  getUser,
  getUsers,
  updateUser,
  deleteUser,
  updateUserPassword,
};
