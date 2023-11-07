const { DataTypes } = require('sequelize');
const dbConfig = require('./../config/Database.js');

const userDb = dbConfig.define(
  'users',
  {
    role: {
      type: DataTypes.STRING,
      defaultValue: 'guest',
    },
    uuid: {
      type: DataTypes.STRING,
      defaultValue: DataTypes.UUIDV4,
      allowNull: false,
      unique: true,
    },
    email: {
      type: DataTypes.STRING,
      allowNull: false,
      unique: true,
      validate: {
        isEmail: true,
      },
    },
    password: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    username: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        len: [3, 25],
      },
    },
    card: {
      type: DataTypes.STRING,
    },
    address: {
      type: DataTypes.STRING,
    },
    phone: {
      type: DataTypes.STRING,
    },
    gender: {
      type: DataTypes.STRING,
    },
    profile: {
      type: DataTypes.STRING,
    },
  },
  { freezeTableName: true }
);

module.exports = userDb;
