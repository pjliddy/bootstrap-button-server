'use strict'
const http = require('http')
const debug = require('debug')('http')
const name = 'bootstrap-button'

const controller = require('lib/wiring/controller')
const models = require('app/models')
// mongoose schema in models directory
const Theme = models.theme


const authenticate = require('./concerns/authenticate')
const setUser = require('./concerns/set-current-user')
const setModel = require('./concerns/set-mongoose-model')

// req = request; res = response; next = next function in chain
const index = (req, res, next) => {
  Theme.find()
  .then( themes => res.json({
    themes: themes.map(function (e) {
      // console.log(e._owner)
      // const email = users.find( u => u.id === e._owner)
      return e.toJSON({ virtuals: true, user: req.user })
    })
  }))
  .catch(next);
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
  { method: authenticate },
  { method: setModel(Theme), only: ['show'] },
  { method: setModel(Theme, { forUser: true }), only: ['update', 'destroy'] }
]})
