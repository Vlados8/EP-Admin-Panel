const express = require('express');
const subcontractorController = require('../controllers/SubcontractorController');
// const { protect, restrictTo } = require('../middlewares/auth');

const router = express.Router();

// TODO: Add protect, restrictTo middlewares in production

router
    .route('/')
    .get(subcontractorController.getAllSubcontractors)
    .post(subcontractorController.createSubcontractor);

router
    .route('/:id')
    .patch(subcontractorController.updateSubcontractor)
    .delete(subcontractorController.deleteSubcontractor);

module.exports = router;
