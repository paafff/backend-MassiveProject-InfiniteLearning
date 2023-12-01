const { Sequelize } = require('sequelize');

const dbConfig = new Sequelize(
  process.env.DB_NAME,
  process.env.DB_USER,
  process.env.DB_PASSWORD,
  {
    host: process.env.DB_HOST,
    dialect: 'mysql',
  }
);

module.exports = dbConfig;

// const { Sequelize } = require('sequelize');

// const dbConfig = new Sequelize(
//   process.env.DB_NAME,
//   process.env.DB_USER,
//   process.env.DB_PASSWORD,
//   {
//     host: process.env.DB_HOST,
//     dialect: 'mysql',
//   }
// );

// module.exports = dbConfig;

// const { Sequelize } = require('sequelize');

// const dbConfig = new Sequelize('dbhairhub', 'root', 'toor', {
//   host: 'localhost',
//   dialect: 'mysql',
// });

// module.exports = dbConfig;
