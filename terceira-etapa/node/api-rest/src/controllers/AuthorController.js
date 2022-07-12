const database = require('../databases/knex');

exports.findAll = async (request, response) => {
 
  try{
    const sql = await database.select('*').from('authors');
  
    return response.status(200).send({authors: sql});

  } catch (error) {
    return response.status(500).send({ error: error?.message || e });
  }

}

exports.create = async (request, response) => {
  try {
    await database('authors').insert(request.body);
    return response.status(200).send({status: 'success'});
  } catch (error) {
    return response.status(500).send({ error: error?.message || e });
  }
}

exports.getById = (request, response) => {
  const params = request.params;
  console.log('query string authors', params);
  console.log('API is available');
  return response.status(200).send(`Acessando recurso / authors METHOD: GET BY ID ${params.id}`);
}

exports.deleteById = (request, response) => {
  const params = request.params;
  console.log('query string authors', params);
  console.log('API is available');
  return response.status(200).send(`Acessando recurso / authors METHOD: DELETE BY ID ${params.id}`);
}

exports.put = (request, response) => {
  const params = request.params;
  console.log('query string authors', params);
  console.log('API is available');
  return response.status(200).send(`Acessando recurso / authors METHOD: PUT BY ID ${params.id}`);
}

exports.patch = (request, response) => {
  const params = request.params;
  console.log('query string authors', params);
  console.log('API is available');
  return response.status(200).send(`Acessando recurso / authors METHOD: PATCH BY ID ${params.id}`);
}