'use strict'
/*
  This is the controller
*/

const controller = require('lib/wiring/controller')
const models = require('app/models')
// mongoose schema in models directory
const Theme = models.theme

// what is a concern?
const authenticate = require('./concerns/authenticate')
const setUser = require('./concerns/set-current-user')
const setModel = require('./concerns/set-mongoose-model')

// req = request; res = response; next = next function in chain
const index = (req, res, next) => {
  Theme.find()
    // get response & output at json

    // .then(themes => res.json({
      //   JSON_GOES_HERE
      // }))

    // .then(themes => res.json({
    //   themes: EXAMPLE_VALUES
    // }))

    // EXAMPLE_VALUES = themes.map((e) => e.toJSON( OPTIONS ))

    // OPTIONS = { virtuals: true, user: req.user }

    .then(themes => res.json({
      themes: themes.map((e) =>
        e.toJSON({ virtuals: true, user: req.user }))
    }))
    // next event in chain is error handler
    .catch(next)
}

const show = (req, res) => {
  res.json({
    theme: req.theme.toJSON({ virtuals: true, user: req.user })
  })
}

const create = (req, res, next) => {
  const theme = Object.assign(req.body.theme, {
    _owner: req.user._id
  })
  Theme.create(theme)
    .then(theme =>
      res.status(201)
        .json({
          theme: theme.toJSON({ virtuals: true, user: req.user })
        }))
    .catch(next)
}

const update = (req, res, next) => {
  delete req.body._owner  // disallow owner reassignment.
  req.theme.update(req.body.theme)
    .then(() => res.sendStatus(204))
    .catch(next)
}

const destroy = (req, res, next) => {
  req.theme.remove()
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
  { method: setModel(Theme), only: ['show'] },
  { method: setModel(Theme, { forUser: true }), only: ['update', 'destroy'] }
] })
