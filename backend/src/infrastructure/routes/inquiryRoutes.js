const express = require('express');
const inquiryController = require('../controllers/InquiryController');

const router = express.Router();

router
    .route('/')
    .get(inquiryController.getAllInquiries)
    .post(inquiryController.createInquiry);

router
    .route('/:id')
    .get(inquiryController.getInquiry)
    .put(inquiryController.updateInquiry) // Full update (contact info, address, answers)
    .patch(inquiryController.updateInquiryStatus) // Simple patch for status (Kanban move)
    .delete(inquiryController.deleteInquiry);

module.exports = router;
