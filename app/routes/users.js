const controller = require('../controllers/users');
const router = require('express').Router();

//CRUD
router
  .get('/', controller.getAll)
  .get('/:id', controller.getOne)
  .post('/', controller.createOne)

module.exports = router;
