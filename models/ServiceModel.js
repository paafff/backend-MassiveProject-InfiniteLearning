const { DataTypes, INTEGER } = require('sequelize');
const dbConfig = require('../config/Database');
const businessDb = require('./BusinessModel');

const serviceDb = dbConfig.define('services', {
  name: { type: DataTypes.STRING },
  price: { type: DataTypes.INTEGER },
  businessId: { type: INTEGER },
});

businessDb.hasMany(serviceDb);
serviceDb.belongsTo(businessDb, {
  foreignKey: 'businessId',
  as: 'businessData',
});

module.exports = serviceDb;
