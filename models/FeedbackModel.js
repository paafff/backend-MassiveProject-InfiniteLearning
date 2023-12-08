const { DataTypes } = require('sequelize');
const dbConfig = require('./../config/Database.js');
const userDb = require('./UserModel.js');
const businessDb = require('./BusinessModel.js');

const feedbackDb = dbConfig.define(
  'feedback',
  {
    uuid: {
      type: DataTypes.STRING,
      defaultValue: DataTypes.UUIDV4,
      unique: true,
      allowNull: false,
    },
    description: {
      type: DataTypes.TEXT,
    },

    rating: {
      type: DataTypes.INTEGER,
    },
    imageName: { type: DataTypes.STRING },
    imageURL: { type: DataTypes.STRING },

    userId: {
      type: DataTypes.INTEGER,
    },
    businessId: {
      type: DataTypes.INTEGER,
    },
  },
  { freezeTableName: true }
);

userDb.hasMany(feedbackDb);
businessDb.hasMany(feedbackDb);

feedbackDb.belongsTo(userDb, { foreignKey: 'userId', as: 'userData' });
feedbackDb.belongsTo(businessDb, {
  foreignKey: 'businessId',
  as: 'feedbacks',
});

module.exports = feedbackDb;
