const Sequelize = require('sequelize');

const sequelize = new Sequelize(
    "node-js_db",
    "filip",
    "12345",
  {
    host: "localhost",
    dialect: 'mysql'
  }
)


module.exports = sequelize;
