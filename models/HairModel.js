const { DataTypes } = require('sequelize');
const dbConfig = require('../config/Database.js');

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
