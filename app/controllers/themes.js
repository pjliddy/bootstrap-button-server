'use strict'

// define controller and models
const controller = require('lib/wiring/controller')
const models = require('app/models')

// get mongoose schema from models directory
const Theme = models.theme
const setModel = require('./concerns/set-mongoose-model')

// authenticate user
const authenticate = require('./concerns/authenticate')
const setUser = require('./concerns/set-current-user')

// index(): GET all themes
const index = (req, res, next) => {
  console.log('index')

  Theme.find()
  .then( themes => res.json({
    themes: themes.map(function (e) {
      return e.toJSON({ virtuals: true, user: req.user })
    })
  }))
  .catch(next);
}

// show(): GET a single theme
const show = (req, res) => {
  res.json({
    theme: req.theme.toJSON({ virtuals: true, user: req.user })
  })
}

// create(): POST a new theme with full var array in req.body.theme
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

// update(): PATCH an existing theme with full var array in req.body.theme
const update = (req, res, next) => {
  delete req.body._owner  // disallow owner reassignment.
  req.theme.update(req.body.theme)
    .then(() => res.sendStatus(204))
    .catch(next)
}

// destroy(): DELETE an existing theme
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
  { method: authenticate },
  { method: setModel(Theme), only: ['show'] },
  { method: setModel(Theme, { forUser: true }), only: ['update', 'destroy'] }
]})
