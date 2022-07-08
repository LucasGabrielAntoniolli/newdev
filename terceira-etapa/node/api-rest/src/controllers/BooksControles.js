exports.findAll = (request, response) => {
  const query = request.query;
  console.log('query string books', query);
  console.log('API is available');
  return response.status(200).send('Acessando recurso / books METHOD: GET');
}

exports.create= (request, response) => {
  console.log('Recebendo dados', request.body);
  return response.status(200).send('Acessando recurso / books METHOD: POST');
}

exports.getById= (request, response) => {
  const params = request.params;
  console.log('query string books', params);
  console.log('API is available');
  return response.status(200).send(`Acessando recurso / books METHOD: GET BY ID ${params.id}`);
}

exports.deleteById= (request, response) => {
  const params = request.params;
  console.log('query string books', params);
  console.log('API is available');
  return response.status(200).send(`Acessando recurso / books METHOD: DELETE BY ID ${params.id}`);
}

exports.put= (request, response) => {
  const params = request.params;
  console.log('query string books', params);
  console.log('API is available');
  return response.status(200).send(`Acessando recurso / books METHOD: PUT BY ID ${params.id}`);
}

exports.patch= (request, response) => {
  const params = request.params;
  console.log('query string books', params);
  console.log('API is available');
  return response.status(200).send(`Acessando recursos / authors METHOD: PATCH BY ID ${params.id}`);
}