const { DataTypes, UUIDV4 } = require('sequelize');
const dbConfig = require('../config/Database.js');
const businessDb = require('./BusinessModel.js');

const workerDb = dbConfig.define(
  'workers',
  {
    uuid: {
      type: DataTypes.STRING,
      defaultValue: UUIDV4,
      allowNull: false,
      unique: true,
    },

    name: {
      type: DataTypes.STRING,
    },
    description: {
      type: DataTypes.TEXT,
    },
    skill: {
      type: DataTypes.STRING,
    },
    imageName: { type: DataTypes.STRING },
    imageURL: { type: DataTypes.STRING },
    businessId: { type: DataTypes.INTEGER },
  },
  { freezeTableName: true }
);

businessDb.hasMany(workerDb);
workerDb.belongsTo(businessDb, {
  foreignKey: 'businessId',
  as: 'workers',
});

module.exports = workerDb;
