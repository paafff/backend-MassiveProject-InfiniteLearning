const { DataTypes } = require('sequelize');
const dbConfig = require('../config/Database');

const hairDb = dbConfig.define(
  'hairs',
  {
    name: { type: DataTypes.STRING },
    description: { type: DataTypes.TEXT },
    gender: { type: DataTypes.STRING },
    imageName: { type: DataTypes.STRING },
    imageURL: { type: DataTypes.STRING },
  },
  { freezeTableName: true }
);

module.exports = hairDb;
