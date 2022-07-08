exports.findAll = (request, response) => {
  const query = request.query;
  console.log('query string authors', query);
  console.log('API is available');
  return response.status(200).send('Acessando recurso / authors METHOD: GET');
}

exports.create = (request, response) => {
  console.log('Recebendo dados', request.body);
  return response.status(200).send('Acessando recurso / authors METHOD: POST');
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