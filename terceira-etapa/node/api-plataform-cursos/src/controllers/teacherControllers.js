const database = require('../databases/knex');

exports.findAll = async (request, response) => {
  try {
    const sql = await database.select('*').from('teachers');
    return response.status(200).send();

  } catch (error) {
    
  }
};

exports.create = async (request, response) => {
  try {
    const sql = await database.select('*').from('');
    return response.status(200).send();
  } catch (error) {
    
  }
};

exports.getById = async (request, response) => {
  try {
    const sql = await database.select('*').from('');
    return response.status(200).send();
  } catch (error) {
    
  }
};

exports.deleteById = async (request, response) => {
  try {
    const sql = await database.select('*').from('');
    return response.status(200).send();
  } catch (error) {
    
  }
};

exports.put = async (request, response) => {
  try {
    const sql = await database.select('*').from('');
    return response.status(200).send();
  } catch (error) {
    
  }
};

