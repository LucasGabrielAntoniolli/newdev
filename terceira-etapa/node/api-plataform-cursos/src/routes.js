const routes = require('express').Router();
const {
  IndexControllers,
  ClassroomControllers,
  CourseControllers,
  TeacherControllers

} = require('/controllers')

//const express = require('express');
//const routes = express.Router();

const indexController = require('IndexControllers');

const courseController = require('./controllers/courseController');
const classroomController = require('./controllers/classroomController');
const teacherControllers = require('./controllers/teacherControllers');


//rota index
routes.get('/', indexController.index);

//Curso

//rota Curso
routes.get('/courses', courseController.findAll);
routes.post('/courses', courseController.create);

//rota Curso ID
routes.get('/courses/:id', courseController.getById);
routes.delete('/courses/:id', courseController.deleteById);
routes.put('/courses/:id', courseController.put);


//Aula

//rota Aula
routes.get('/classrooms', classroomController.findAll);
routes.post('/classrooms', classroomController.create);

//rota Aula ID
routes.get('/classrooms/:id', classroomController.getById);
routes.delete('/classrooms/:id', classroomController.deleteById);
routes.put('/classrooms/:id', classroomController.put);


//Prof

//rota Prof
routes.get('/teachers', teacherControllers.findAll);
routes.post('/teachers', teacherControllers.create);

//rota Prof ID
routes.get('/teachers/:id', teacherControllers.getById);
routes.delete('/teachers/:id', teacherControllers.deleteById);
routes.put('/teachers/:id', teacherControllers.put);


module.exports = routes;