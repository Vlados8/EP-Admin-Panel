const express = require('express');
const userController = require('../controllers/UserController');

// TODO: Add requireAuth middleware 

const router = express.Router();

router.get('/', userController.getAllUsers);
router.post('/', userController.createUser);
router.patch('/:id', userController.updateUser);
router.delete('/:id', userController.deleteUser);

module.exports = router;
