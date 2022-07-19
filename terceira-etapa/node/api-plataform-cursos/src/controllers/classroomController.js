const database = require('../databases/knex');
const logger = require('../utils/logg');

exports.findAll = async (request, response) => {
  
  try{
    const sql = await database.select('*').from('classrooms');
    return response.status(200).send({classrooms: sql});

  } catch (error) {
    log(error.message);
    return response.status(500).send({ error: error?.message || e });
  } 
}

exports.create = async (request, response) => {
  try {
    const classroom = request.body;
    const invalidFields = fieldValidator(classroom, ['title', 'description']);

      if(invalidFields.length){
        return response.status(400).send({ 
          status: 'Invalid Request',
          invalidFields
        });
      }

    await database('classrooms').insert(request.body);
    return response.status(200).send({status: 'success'});

  } catch (error) {

    log(error.message);
    return response.status(500).send({ error: error?.message || e });
  }
}

exports.getById = async (request, response) => {
 
  try {
    const params = request.params;
    const [previousClassroom] = await database.select('*').from('classrooms').where({ id: params.id }).limit(1);
 

    if(!previousClassroom){
      return response.status(404).send(`O registro com id ${params.id} não foi encontrado!`)
    }
    
    const nextClassroom = request.body;
    console.log('Classroom ENCONTRADO', previousClassroom);
    console.log('Classroom nextClassroom', nextClassroom);
    await database.insert({ name: nextClassroom.name }).from('classrooms').where({ id: previousClassroom.id });


    return response.status(200).send({ status: 'Registro atualizado com sucesso', data: nextClassroom });

  } catch (error) { 
    log(error.message);
    return response.status(500).send({ error: error?.message || e });
  }
}

exports.deleteById = async (request, response) => {
  
 
  try {
    const params = request.params;
    const [previousClassroom] = await database.select('*').from('classrooms').where({ id: params.id }).limit(1);
 

    if(!previousClassroom){
      return response.status(404).send(`O registro com id ${params.id} não foi encontrado!`)
    }
    
    console.log('Classroom ENCONTRADO', previousClassroom);

    await database.delete().from('classrooms').where({ id: previousClassroom.id });


    return response.status(200).send({ status: 'Registro deletado com sucesso', data: previousClassroom });

  } catch (error) { 
    log(error.message);
    return response.status(500).send({ error: error?.message || e });
  }
}

exports.put = async (request, response) => {
  
  try {
    const params = request.params;
    const [previousClassroom] = await database.select('*').from('classrooms').where({ id: params.id }).limit(1);
 

    if(!previousClassroom){
      return response.status(404).send(`O registro com id ${params.id} não foi encontrado!`)
    }
    const nextClassroom = request.body;
    console.log('Classroom ENCONTRADO', previousClassroom);
    console.log('Classroom nextClassroom', nextClassroom);
    await database.update({ name: nextClassroom.name }).from('classrooms').where({ id: previousClassroom.id });


    return response.status(200).send({ status: 'Registro atualizado com sucesso', data: nextClassroom });

  } catch (error) {
    log(error.message);
    return response.status(500).send({ error: error?.message || e });
  }
}