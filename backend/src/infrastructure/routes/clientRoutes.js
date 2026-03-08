const express = require('express');
const clientController = require('../controllers/ClientController');
// const { protect, restrictTo } = require('../middlewares/auth');

const router = express.Router();

// TODO: Add protect, restrictTo middlewares in production

router
    .route('/')
    .get(clientController.getAllClients)
    .post(clientController.createClient);

router
    .route('/check-email')
    .get(clientController.checkClientByEmail);

router
    .route('/:id')
    .patch(clientController.updateClient)
    .delete(clientController.deleteClient);

module.exports = router;
