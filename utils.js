import { createRequire } from 'module';
const require =  createRequire(import.meta.url);

export const { Sequelize, DataTypes, Op } = require('sequelize');


export const sequelize = new Sequelize(
      "node-js_db",
      "filip",
      "12345",
    {
      host: "localhost",
      dialect: 'mysql'
    }
  )

try {
  await sequelize.authenticate();
  console.log('Connection has been established successfully.');
} catch (error) {
  console.error('Unable to connect to the database:', error);

}
