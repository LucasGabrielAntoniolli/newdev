/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.up = function(knex) {
  return knex.schema.createTable('classrooms', function(table){
    table.increments();
    table.string('title');
    table.string('description');
    table.string('link')
    table.integer('instructorId')
    .unsigned()
    .notNullable()
    .references('id')
    .inTable('instructor')
    .onDelete('CASCADE');
  });
};

/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.down = function(knex) {
  return knex.schema.dropTable('classrooms');
};
