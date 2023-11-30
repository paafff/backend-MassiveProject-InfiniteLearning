const { DataTypes } = require('sequelize');
const dbConfig = require('../config/Database.js');
const businessDb = require('./BusinessModel.js');

const scheduleDb = dbConfig.define(
  'services',
  {
    monday: {
      type: DataTypes.STRING,
      get() {
        return JSON.parse(this.getDataValue('schedule'));
      },
      set(value) {
        this.setDataValue('schedule', JSON.stringify(value));
      },
    },
    tuesday: {
      type: DataTypes.STRING,
      get() {
        return JSON.parse(this.getDataValue('schedule'));
      },
      set(value) {
        this.setDataValue('schedule', JSON.stringify(value));
      },
    },
    wednesday: {
      type: DataTypes.STRING,
      get() {
        return JSON.parse(this.getDataValue('schedule'));
      },
      set(value) {
        this.setDataValue('schedule', JSON.stringify(value));
      },
    },
    thursday: {
      type: DataTypes.STRING,
      get() {
        return JSON.parse(this.getDataValue('schedule'));
      },
      set(value) {
        this.setDataValue('schedule', JSON.stringify(value));
      },
    },
    friday: {
      type: DataTypes.STRING,
      get() {
        return JSON.parse(this.getDataValue('schedule'));
      },
      set(value) {
        this.setDataValue('schedule', JSON.stringify(value));
      },
    },
    saturday: {
      type: DataTypes.STRING,
      get() {
        return JSON.parse(this.getDataValue('schedule'));
      },
      set(value) {
        this.setDataValue('schedule', JSON.stringify(value));
      },
    },
    sunday: {
      type: DataTypes.STRING,
      get() {
        return JSON.parse(this.getDataValue('schedule'));
      },
      set(value) {
        this.setDataValue('schedule', JSON.stringify(value));
      },
    },

    businessId: {
      type: DataTypes.INTEGER,
    },
  },
  { freezeTableName: true }
);

businessDb.hasOne(scheduleDb);
scheduleDb.belongsTo(businessDb, {
  foreignKey: 'businessId',
  as: 'businessData',
});

module.exports = scheduleDb;
