/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.up = function(knex) {
  return knex.schema.alterTable('books', function(table){
    table
    .integer('authorId') //tipo e nome do campo
    .unsigned()          //ele precisa ser número inteiro 
    .notNullable()       //não pode ser null 
    .references('id')    //referencia do campo da tabela pai
    .inTable('authors')  //nome da tabela pai 
    .onDelete('CASCADE') //executa um comando quando o registro pai for deletado 
  })
};

/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.down = function(knex) {
  return knex.schema.alterTable('authors', function(table){
    table.dropForeign('authorId');
    table.dropColumn('authorId');
  })
};
