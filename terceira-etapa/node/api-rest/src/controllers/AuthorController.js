const database = require('../databases/knex');
const logger = require('../utils/logger');

exports.findAll = async (request, response) => {
  
  try{
    const sql = await database.select('*').from('authors');
    console.log(banana);
    return response.status(200).send({authors: sql});

  } catch (error) {
    log(error.message);
    return response.status(500).send({ error: error?.message || e });
  }

}

exports.create = async (request, response) => {
  try {
    
    await database('authors').insert(request.body);
    return response.status(200).send({status: 'success'});

  } catch (error) {// tratamento de exeção, trata os erros
    log(error.message);
    return response.status(500).send({ error: error?.message || e });
  }
}

exports.getById = async (request, response) => {
 
  try {
    const params = request.params;
    const [previousAuthor] = await database.select('*').from('authors').where({ id: params.id }).limit(1);
 

    if(!previousAuthor){
      return response.status(404).send(`O registro com id ${params.id} não foi encontrado!`)
    }
    
    const nextAuthor = request.body;
    console.log('author ENCONTRADO', previousAuthor);
    console.log('author nextAuthor', nextAuthor);
    await database.insert({ name: nextAuthor.name }).from('authors').where({ id: previousAuthor.id });


    return response.status(200).send({ status: 'Registro atualizado com sucesso', data: nextAuthor });

  } catch (error) { // tratamento de exeção, trata os erros
    log(error.message);
    return response.status(500).send({ error: error?.message || e });
  }
}

exports.deleteById = async (request, response) => {
  
 
  try {
    const params = request.params;
    const [previousAuthor] = await database.select('*').from('authors').where({ id: params.id }).limit(1);
 

    if(!previousAuthor){
      return response.status(404).send(`O registro com id ${params.id} não foi encontrado!`)
    }
    
    console.log('author ENCONTRADO', previousAuthor);

    await database.delete({ name: previousAuthor.name }).from('authors').where({ id: previousAuthor.id });


    return response.status(200).send({ status: 'Registro deletado com sucesso', data: previousAuthor });

  } catch (error) { 
    log(error.message);
    return response.status(500).send({ error: error?.message || e });
  }
}

exports.put = async (request, response) => {
  
  try {
    const params = request.params;
    // precisamos buscar no banco de dados o possível registro.
    const [previousAuthor] = await database.select('*').from('authors').where({ id: params.id }).limit(1);
    //.where('id', params.id);
 
    // se não existir preciso informar o client de que não existe (não encontrado)

    if(!previousAuthor){
      return response.status(404).send(`O registro com id ${params.id} não foi encontrado!`)
    }
    // capturar o valor do body o qual o client quer atualizar e atualizar a informação no banco de dados
    const nextAuthor = request.body;
    console.log('author ENCONTRADO', previousAuthor);
    console.log('author nextAuthor', nextAuthor);
    await database.update({ name: nextAuthor.name }).from('authors').where({ id: previousAuthor.id });

    //avisar o client  que atualizamos o registro e retornar o registro atualizado

    return response.status(200).send({ status: 'Registro atualizado com sucesso', data: nextAuthor });

  } catch (error) { // tratamento de exeção, trata os erros
    log(error.message);
    return response.status(500).send({ error: error?.message || e });
  }
}