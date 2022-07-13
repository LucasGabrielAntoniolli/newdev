const express = require('express');
const routes = express.Router();

const indexController = require('./controllers/indexControllers');

const AuthorController = require('./controllers/AuthorController');
const BooksControllers = require('./controllers/BooksControles')

//routes index
routes.get('/', indexController.index);

//AUTHORS

//routes authors
routes.get('/authors', AuthorController.findAll);
routes.post('/authors', AuthorController.create);

//routes authors ID
routes.get('/authors/:id', AuthorController.getById);
routes.delete('/authors/:id', AuthorController.deleteById);
routes.put('/authors/:id', AuthorController.put);


//BOOKS

//routes books
routes.get('/books', BooksControllers.findAll);
routes.post('/books', BooksControllers.create);

//routes books ID
routes.get('/books/:id', BooksControllers.getById);
routes.delete('/books/:id', BooksControllers.deleteById);
routes.put('/books/:id', BooksControllers.put);


module.exports = routes;