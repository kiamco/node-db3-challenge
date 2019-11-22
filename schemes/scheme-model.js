const knex = require('knex');
const config = require('../knexfile.js');
const db = knex(config.development);


const find = () => {
    return db('schemes')
    .select('*');
}

const findById = (id) => {
    return db('schemes')
    .select('*')
    .where('id',`${id}`);
}

const findSteps = (id) => {
    return db('steps')
        .select('*')
        .join('schemes', {'steps.scheme_id':'schemes.id'})
        .where('steps.scheme_id', `${id}`);
}

const add = (scheme) => {
    return db('schemes')
        .insert(scheme)
}

const update = (changes, id) => {
    return db('schemes')
        .where('id', `${id}`)
        .update(changes)
}

const remove = (id) => {
    return db('schemes')
        .where({ id: id})
        .del()
}



module.exports = {
    find,
    findById,
    findSteps,
    add,
    update,
    remove
}