const { DataTypes, TIME } = require('sequelize');
const dbConfig = require('../config/Database.js');
const userDb = require('./UserModel.js');

const defaultImageURL = [
  'http://localhost:5000/business/unsetImageBusiness.png',
  'http://localhost:5000/business/unsetImageBusiness.png',
  'http://localhost:5000/business/unsetImageBusiness.png',
  'http://localhost:5000/business/unsetImageBusiness.png',
  'http://localhost:5000/business/unsetImageBusiness.png',
];

const defaultImageName = [
  'unsetImageBusiness.png',
  'unsetImageBusiness.png',
  'unsetImageBusiness.png',
  'unsetImageBusiness.png',
  'unsetImageBusiness.png',
];

const tempArray = [
  'undefined',
  'undefined',
  'undefined',
  'undefined',
  'undefined',
];
const tempArraySchedule = ['undefined', 'undefined'];

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
    },

    name: {
      type: DataTypes.STRING,
      validate: { len: [3 - 100] },
    },

    email: {
      type: DataTypes.STRING,
      // allowNull: true,
      // unique: true,
      validate: {
        isEmail: true,
      },
    },

    phone: {
      type: DataTypes.STRING,
    },

    description: { type: DataTypes.TEXT },

    schedule: {
      type: DataTypes.TEXT,
      defaultValue: JSON.stringify(tempArraySchedule),
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
      defaultValue: JSON.stringify(tempArray),
      get() {
        return JSON.parse(this.getDataValue('address'));
      },
      set(value) {
        this.setDataValue('address', JSON.stringify(value));
      },
    },

    addressId: {
      type: DataTypes.TEXT,
      defaultValue: JSON.stringify(tempArray),
      get() {
        return JSON.parse(this.getDataValue('addressId'));
      },
      set(value) {
        this.setDataValue('addressId', JSON.stringify(value));
      },
    },

    imageURL: {
      type: DataTypes.TEXT,

      defaultValue: JSON.stringify(defaultImageURL),
      get() {
        return JSON.parse(this.getDataValue('imageURL'));
      },
      set(value) {
        this.setDataValue('imageURL', JSON.stringify(value));
      },
    },

    imageName: {
      type: DataTypes.TEXT,

      defaultValue: JSON.stringify(defaultImageName),
      get() {
        return JSON.parse(this.getDataValue('imageName'));
      },
      set(value) {
        this.setDataValue('imageName', JSON.stringify(value));
      },
    },

    socialMedia: {
      type: DataTypes.TEXT,

      defaultValue: JSON.stringify(tempArray),

      get() {
        return JSON.parse(this.getDataValue('socialMedia'));
      },
      set(value) {
        this.setDataValue('socialMedia', JSON.stringify(value));
      },
    },
    subscription: {
      type: DataTypes.STRING,
    },
    subscriptionAt: {
      type: DataTypes.DATE,
    },
  },
  { freezeTableName: true }
);

userDb.hasMany(businessDb);
businessDb.belongsTo(userDb, { foreignKey: 'userId', as: 'userData' });

module.exports = businessDb;
