const http      = require('http')
const express = require('express');

const sequelize = require('./app/util/database');
const User = require('./app/models/users');

const app = express();
const server = http.createServer(app);
server.listen(3000);

app.use(express.json());
app.use(express.urlencoded({ extended: true}));

app.use((req, res, next) => {
  res.setHeader('Access-Control-Allow-Origin','*');
  res.setHeader('Access-Control-Allow-Methods', 'GET','POST');
  next();
})

app.use('/dev', require('./app/routes/dev'));
app.use('/users', require('./app/routes/users'));

app.get('/get', async function(request, response){
  return console.log("HELLLLOOOOO")
})
