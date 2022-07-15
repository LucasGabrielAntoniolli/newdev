const routes = require('express').Router();

//const express = require('express');
//const routes = express.Router();

const indexController = require('./controllers/indexControllers');

const courseController = require('./controllers/courseController');
const classroomController = require('./controllers/classroomController');
const teacherControllers = require('./controllers/teacherControllers');


//route index
routes.get('/', indexController.index);

//Curso

//routes Curso
routes.get('/courses', courseController.findAll);
routes.post('/courses', courseController.create);

//routes Curso ID
routes.get('/courses/:id', courseController.getById);
routes.delete('/courses/:id', courseController.deleteById);
routes.put('/courses/:id', courseController.put);


//Aula

//routes Aula
routes.get('/classroom', classroomController.findAll);
routes.post('/classroom', classroomController.create);

//routes Aula ID
routes.get('/classroom/:id', classroomController.getById);
routes.delete('/classroom/:id', classroomController.deleteById);
routes.put('/classroom/:id', classroomController.put);


//Prof

//routes Prof
routes.get('/teachers', teacherControllers.findAll);
routes.post('/teachers', teacherControllers.create);

//routes Prof ID
routes.get('/teachers/:id', teacherControllers.getById);
routes.delete('/teachers/:id', teacherControllers.deleteById);
routes.put('/teachers/:id', teacherControllers.put);


module.exports = routes;