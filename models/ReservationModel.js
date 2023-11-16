const { DataTypes } = require('sequelize');
const dbConfig = require('../config/Database');
const userDb = require('./UserModel');
const businessDb = require('./BusinessModel');

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
  Description: { type: DataTypes.TEXT },
  time: { type: DataTypes.STRING },
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
