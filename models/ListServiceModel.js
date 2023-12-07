const { DataTypes } = require('sequelize');
const dbConfig = require('./../config/Database.js');

// const listServiceDb = dbCon;
const listServiceDb = dbConfig.define(
  'listServices',
  {
    name: { type: DataTypes.STRING, unique: true },
  },
  { freezeTableName: true }
);

module.exports = listServiceDb;
