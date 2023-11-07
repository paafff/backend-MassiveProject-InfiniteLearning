const { DataTypes } = require('sequelize');
const dbConfig = require('../config/Database');

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
      type: DataTypes.ARRAY(DataTypes.TIME),
      validate: {
        // Validasi panjang array (minimal 2 waktu)
        len: [2, 2],
      },
    },

    address: {
      type: DataTypes.ARRAY(DataTypes.STRING),
    },

    image: {
      type: DataTypes.ARRAY(DataTypes.STRING),
    },
    subscription: {
      type: DataTypes.STRING,
    },
  },
  { freezeTableName: true }
);
