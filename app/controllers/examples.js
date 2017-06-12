'use strict'
/*
  This is the controller
*/

const controller = require('lib/wiring/controller')
const models = require('app/models')
// mongoose schema in models directory
const Example = models.example

// what is a concern?
const authenticate = require('./concerns/authenticate')
const setUser = require('./concerns/set-current-user')
const setModel = require('./concerns/set-mongoose-model')

// req = request; res = response; next = next function in chain
const index = (req, res, next) => {
  Example.find()
    // get response & output at json

    // .then(examples => res.json({
      //   JSON_GOES_HERE
      // }))

    // .then(examples => res.json({
    //   examples: EXAMPLE_VALUES
    // }))

    // EXAMPLE_VALUES = examples.map((e) => e.toJSON( OPTIONS ))

    // OPTIONS = { virtuals: true, user: req.user }

    .then(examples => res.json({
      examples: examples.map((e) =>
        e.toJSON({ virtuals: true, user: req.user }))
    }))
    // next event in chain is error handler
    .catch(next)
}

const show = (req, res) => {
  res.json({
    example: req.example.toJSON({ virtuals: true, user: req.user })
  })
}

const create = (req, res, next) => {
  const example = Object.assign(req.body.example, {
    _owner: req.user._id
  })

  Example.create(example)
    .then(example =>
      res.status(201)
        .json({
          example: example.toJSON({ virtuals: true, user: req.user })
        }))
    .catch(next)
}

const update = (req, res, next) => {
  delete req.body._owner  // disallow owner reassignment.
  req.example.update(req.body.example)
    .then(() => res.sendStatus(204))
    .catch(next)
}

const destroy = (req, res, next) => {
  req.example.remove()
    .then(() => res.sendStatus(204))
    .catch(next)
}

module.exports = controller({
  index,
  show,
  create,
  update,
  destroy
}, { before: [
  { method: setUser, only: ['index', 'show'] },
  { method: authenticate, except: ['index', 'show'] },
  { method: setModel(Example), only: ['show'] },
  { method: setModel(Example, { forUser: true }), only: ['update', 'destroy'] }
] })
