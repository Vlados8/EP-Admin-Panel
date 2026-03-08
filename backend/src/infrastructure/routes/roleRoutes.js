const express = require('express');
const roleController = require('../controllers/RoleController');

const router = express.Router();

router.get('/', roleController.getAllRoles);

module.exports = router;
