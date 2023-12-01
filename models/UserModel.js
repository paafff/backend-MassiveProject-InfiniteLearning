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
    cardId: {
      type: DataTypes.STRING,
    },
    address: {
      type: DataTypes.TEXT,
      get() {
        return JSON.parse(this.getDataValue('address'));
      },
      set(value) {
        this.setDataValue('address', JSON.stringify(value));
      },
    },

    phone: {
      type: DataTypes.STRING,
    },
    gender: {
      type: DataTypes.STRING,
    },
    profileName: {
      type: DataTypes.STRING,
      defaultValue: 'unsetProfile.png',
    },
    profileURL: {
      type: DataTypes.STRING,
      defaultValue: `${process.env.APP_DOMAIN}/profiles/unsetProfile.png`,
    },
  },
  { freezeTableName: true }
);

module.exports = userDb;
