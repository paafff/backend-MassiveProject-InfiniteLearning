const { DataTypes } = require('sequilize');
const dbConfig = require('./../config/Database.js');

// const listServiceDb = dbCon;
const listServiceDb = dbConfig.define(
  'listService',
  {
    name: { type: DataTypes.STRING, unique: true },
  },
  { freezeTableName: true }
);

module.exports = listServiceDb;
