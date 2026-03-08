const express = require('express');
const supportController = require('../controllers/SupportController');

const router = express.Router();

router.get('/', supportController.getTickets);
router.post('/', supportController.createTicket);
router.get('/:id', supportController.getTicketDetails);
router.patch('/:id/status', supportController.updateTicketStatus);
router.post('/:id/responses', supportController.addResponse);

module.exports = router;
