const database = require('../databases/knex');

exports.findAll = async (request, response) => {
 
  try{
    const sql = await database.select('*').from('books');
  
    return response.status(200).send({authors: sql});

  } catch (error) {
    log(error.message);
    return response.status(500).send({ error: error?.message || e });
  }

}

exports.create = async (request, response) => {
  try {
    
    await database('books').insert(request.body);
    return response.status(200).send({status: 'success'});

  } catch (error) {
    log(error.message);
    return response.status(500).send({ error: error?.message || e });
  }
}

exports.getById = async (request, response) => {
 
  try {
    const params = request.params;
    const [previousBooks] = await database.select('*').from('books').where({ id: params.id }).limit(1);
 

    if(!previousBooks){
      return response.status(404).send(`O registro com id ${params.id} não foi encontrado!`)
    }
    
    const nextBooks = request.body;
    console.log('books ENCONTRADO', previousAuthor);
    console.log('books nextBooks', nextBooks);
    await database.insert({ name: nextBooks.name }).from('books').where({ id: previousBooks.id });


    return response.status(200).send({ status: 'Registro atualizado com sucesso', data: nextBooks });

  } catch (error) { // tratamento de exeção, trata os erros
    log(error.message);
    return response.status(500).send({ error: error?.message || e });
  }
}

exports.deleteById = async (request, response) => {
  
 
  try {
    const params = request.params;
    const [previousBooks] = await database.select('*').from('books').where({ id: params.id }).limit(1);
 

    if(!previousBooks){
      return response.status(404).send(`O registro com id ${params.id} não foi encontrado!`)
    }
    
    console.log('books ENCONTRADO', previousBooks);

    await database.delete({ name: previousBooks.name }).from('books').where({ id: previousBooks.id });


    return response.status(200).send({ status: 'Registro deletado com sucesso', data: previousBooks });

  } catch (error) { 
    log(error.message);
    return response.status(500).send({ error: error?.message || e });
  }
}

exports.put = async (request, response) => {
  
  try {
    const params = request.params;
    // precisamos buscar no banco de dados o possível registro.
    const [previousBooks] = await database.select('*').from('books').where({ id: params.id }).limit(1);
    //.where('id', params.id);
 
    // se não existir preciso informar o client de que não existe (não encontrado)

    if(!previousBooks){
      return response.status(404).send(`O registro com id ${params.id} não foi encontrado!`)
    }
    // capturar o valor do body o qual o client quer atualizar e atualizar a informação no banco de dados
    const nextBooks = request.body;
    console.log('books ENCONTRADO', previousBooks);
    console.log('books nextBooks', nextBooks);
    await database.update({ name: nextBooks.name }).from('books').where({ id: previousBooks.id });

    //avisar o client  que atualizamos o registro e retornar o registro atualizado

    return response.status(200).send({ status: 'Registro atualizado com sucesso', data: nextBooks });

  } catch (error) { // tratamento de exeção, trata os erros
    log(error.message);
    return response.status(500).send({ error: error?.message || e });
  }
}