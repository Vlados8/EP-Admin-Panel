const express = require('express');
const noteController = require('../controllers/NoteController');

const router = express.Router();

// Notes routes
router
    .route('/')
    .get(noteController.getNotes)
    .post(noteController.createNote);

router
    .route('/:id')
    .patch(noteController.updateNote)
    .delete(noteController.deleteNote);

module.exports = router;
