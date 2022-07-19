const database = require('../databases/knex');
const fieldValidator = require('../utils/fieldValidator');
const logger = require('../utils/logg');

exports.findAll = async (request, response) => {
  try{
    const sql = await database.select('*').from('courses');
    return response.status(200).send({courses: sql});

  } catch (error) {
    log(error.message);
    return response.status(500).send({ error: error?.message || e });
  }
}

exports.create = async (request, response) => {
    try {
    const course = request.body;
    const invalidFields = fieldValidator(course, ['title', 'description']);

      if(invalidFields.length){
        return response.status(400).send({ 
          status: 'Invalid Request',
          invalidFields
        });
      }

    await database('courses').insert(request.body);
    return response.status(200).send({status: 'success'});

  } catch (error) {

    log(error.message);
    return response.status(500).send({ error: error?.message || e });
  }
}

exports.getById = async (request, response) => {
 
  try {
    const params = request.params;
    const [previousCourse] = await database.select('*').from('courses').where({ id: params.id }).limit(1);

    if(!previousCourse){
      return response.status(404).send(`O registro com id ${params.id} não foi encontrado!`)
    }

    const nextCourse = request.body;
    console.log('Course ENCONTRADO', previousCourse);
    console.log('Course nextCourse', nextCourse);
    await database.insert({ name: nextCourse.name }).from('courses').where({ id: previousCourse.id });

    return response.status(200).send({ status: 'Registro atualizado com sucesso', data: nextCourse });

  } catch (error) { 
    log(error.message);
    return response.status(500).send({ error: error?.message || e });
  }
}

exports.deleteById = async (request, response) => {
 
  try {
    const params = request.params;
    const [previousCourse] = await database.select('*').from('courses').where({ id: params.id }).limit(1);

    if(!previousCourse){
      return response.status(404).send(`O registro com id ${params.id} não foi encontrado!`)
    }
    console.log('Course ENCONTRADO', previousCourse);

    await database.delete().from('courses').where({ id: previousCourse.id });

    return response.status(200).send({ status: 'Registro deletado com sucesso', data: previousCourse });

  } catch (error) { 
    log(error.message);
    return response.status(500).send({ error: error?.message || e });
  }
}

exports.put = async (request, response) => {
  
  try {
    const params = request.params;
    const [previousCourse] = await database.select('*').from('courses').where({ id: params.id }).limit(1);
 
    if(!previousCourse){
      return response.status(404).send(`O registro com id ${params.id} não foi encontrado!`)
    }
    const nextCourse = request.body;
    console.log('Course ENCONTRADO', previousCourse);
    console.log('Course nextCourse', nextCourse);
    await database.update({ name: nextCourse.name }).from('courses').where({ id: previousCourse.id });

    return response.status(200).send({ status: 'Registro atualizado com sucesso', data: nextCourse });

  } catch (error) {
    log(error.message);
    return response.status(500).send({ error: error?.message || e });
  }
}