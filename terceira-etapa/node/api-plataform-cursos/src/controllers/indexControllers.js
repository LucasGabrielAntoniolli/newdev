const knex = require('../databases/knex');


exports.index = async (request, response) => {
 try {
  console.log('API is available');
  await knex.select('*').from('index');
  return response.status(200).send('API is available');
 } catch (error) {
  return response.status(500).send(error.message);
 }
};