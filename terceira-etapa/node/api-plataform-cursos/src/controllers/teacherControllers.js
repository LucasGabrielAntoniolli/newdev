const database = require('../databases/knex');
const logger = require('../utils/logg');

exports.findAll = async (request, response) => {
  
  try{
    const sql = await database.select('*').from('teachers');
    return response.status(200).send({teachers: sql});

  } catch (error) {
    log(error.message);
    return response.status(500).send({ error: error?.message || e });
  }

}

exports.create = async (request, response) => {
  try {
    const teacher = request.body;
    const invalidFields = fieldValidator(teacher, ['title', 'description']);

      if(invalidFields.length){
        return response.status(400).send({ 
          status: 'Invalid Request',
          invalidFields
        });
      }

    await database('teachers').insert(request.body);
    return response.status(200).send({status: 'success'});

  } catch (error) {

    log(error.message);
    return response.status(500).send({ error: error?.message || e });
  }
}

exports.getById = async (request, response) => {
 
  try {
    const params = request.params;
    const [previousTeacher] = await database.select('*').from('teachers').where({ id: params.id }).limit(1);
 

    if(!previousTeacher){
      return response.status(404).send(`O registro com id ${params.id} não foi encontrado!`)
    }
    
    const nextTeacher = request.body;
    console.log('Teacher ENCONTRADO', previousTeacher);
    console.log('Teacher nextTeacher', nextTeacher);
    await database.insert({ name: nextTeacher.name }).from('teachers').where({ id: previousTeacher.id });


    return response.status(200).send({ status: 'Registro atualizado com sucesso', data: nextTeacher });

  } catch (error) { 
    log(error.message);
    return response.status(500).send({ error: error?.message || e });
  }
}

exports.deleteById = async (request, response) => {
  
 
  try {
    const params = request.params;
    const [previousTeacher] = await database.select('*').from('teachers').where({ id: params.id }).limit(1);
 

    if(!previousTeacher){
      return response.status(404).send(`O registro com id ${params.id} não foi encontrado!`)
    }
    
    console.log('Teacher ENCONTRADO', previousTeacher);

    await database.delete().from('teachers').where({ id: previousTeacher.id });


    return response.status(200).send({ status: 'Registro deletado com sucesso', data: previousTeacher });

  } catch (error) { 
    log(error.message);
    return response.status(500).send({ error: error?.message || e });
  }
}

exports.put = async (request, response) => {
  
  try {
    const params = request.params;
    const [previousTeacher] = await database.select('*').from('teachers').where({ id: params.id }).limit(1);
 

    if(!previousTeacher){
      return response.status(404).send(`O registro com id ${params.id} não foi encontrado!`)
    }
    const nextTeacher = request.body;
    console.log('Teacher ENCONTRADO', previousTeacher);
    console.log('Teacher nextTeacher', nextTeacher);
    await database.update({ name: nextTeacher.name }).from('teachers').where({ id: previousTeacher.id });


    return response.status(200).send({ status: 'Registro atualizado com sucesso', data: nextTeacher });

  } catch (error) {
    log(error.message);
    return response.status(500).send({ error: error?.message || e });
  }
}