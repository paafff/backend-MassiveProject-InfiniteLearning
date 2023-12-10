const { DataTypes } = require('sequelize');
const dbConfig = require('../config/Database.js');
const userDb = require('./UserModel.js');
const businessDb = require('./BusinessModel.js');

//catatan nang, bisa dipake buat notif

const reservationDb = dbConfig.define('reservations', {
  uuid: {
    type: DataTypes.STRING,
    defaultValue: DataTypes.UUIDV4,
    allowNull: false,
    unique: true,
  },
  name: { type: DataTypes.STRING },
  workerSelected: { type: DataTypes.STRING },
  description: { type: DataTypes.TEXT },
  time: { type: DataTypes.STRING },
  day: { type: DataTypes.STRING },
  phone: { type: DataTypes.STRING },
  userId: { type: DataTypes.INTEGER },
  businessId: { type: DataTypes.INTEGER },
  responseBusiness: { type: DataTypes.STRING },
});

userDb.hasMany(reservationDb);
businessDb.hasMany(reservationDb);

reservationDb.belongsTo(userDb, { foreignKey: 'userId', as: 'userData' });
reservationDb.belongsTo(businessDb, {
  foreignKey: 'businessId',
  as: 'businessData',
});

module.exports = reservationDb;
