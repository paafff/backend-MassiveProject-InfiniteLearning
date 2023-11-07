const { Sequelize } = require('sequelize');

const dbConfig = new Sequelize('dbhairhub', 'root', 'toor', {
  host: 'localhost',
  dialect: 'mysql',
});

module.exports = dbConfig;
