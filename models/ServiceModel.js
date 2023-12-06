const { DataTypes } = require('sequelize');
const dbConfig = require('../config/Database.js');
const businessDb = require('./BusinessModel.js');

const serviceDb = dbConfig.define(
  'services',
  {
    name: {
      type: DataTypes.TEXT,
      get() {
        return JSON.parse(this.getDataValue('name'));
      },
      set(value) {
        this.setDataValue('name', JSON.stringify(value));
      },
    },
    price: {
      type: DataTypes.TEXT,
      get() {
        return JSON.parse(this.getDataValue('price'));
      },
      set(value) {
        this.setDataValue('price', JSON.stringify(value));
      },
    },
    businessId: { type: DataTypes.INTEGER },
  },
  { freezeTableName: true }
);

businessDb.hasMany(serviceDb);
serviceDb.belongsTo(businessDb, {
  foreignKey: 'businessId',
  as: 'services',
});

module.exports = serviceDb;
