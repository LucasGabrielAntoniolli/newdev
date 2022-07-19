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
    table.integer('teacherId')
    .unsigned()
    .notNullable()
    .references('id')
    .inTable('teachers')
    .onDelete('CASCADE');
    table.integer('courseId')
      .unsigned()
      .notNullable()
      .references('id')
      .inTable('courses')
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
