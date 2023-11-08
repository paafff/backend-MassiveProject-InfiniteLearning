const { DataTypes } = require('sequelize');
const dbConfig = require('../config/Database');
const userDb = require('./UserModel');

const businessDb = dbConfig.define(
  'business',
  {
    uuid: {
      type: DataTypes.STRING,
      defaultValue: DataTypes.UUIDV4,
      allowNull: false,
      unique: true,
    },
    userId: {
      type: DataTypes.INTEGER,
    },

    typeBusiness: {
      type: DataTypes.STRING,
      allowNull: false,
    },

    name: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: { len: [3 - 100] },
    },

    schedule: {
      type: DataTypes.TEXT,
      // validate: { len: [2, 2] },
      get() {
        return JSON.parse(this.getDataValue('schedule'));
      },
      set(value) {
        this.setDataValue('schedule', JSON.stringify(value));
      },
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

    imageURL: {
      type: DataTypes.TEXT,
      get() {
        return JSON.parse(this.getDataValue('imageURL'));
      },
      set(value) {
        this.setDataValue('imageURL', JSON.stringify(value));
      },
    },
    imageName: {
      type: DataTypes.TEXT,
      get() {
        return JSON.parse(this.getDataValue('imageName'));
      },
      set(value) {
        this.setDataValue('imageName', JSON.stringify(value));
      },
    },
    subscription: {
      type: DataTypes.STRING,
    },
  },
  { freezeTableName: true }
);

userDb.hasMany(businessDb);
businessDb.belongsTo(userDb, { foreignKey: 'userId', as: 'userData' });

module.exports = businessDb;
