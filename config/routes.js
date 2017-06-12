'use strict';

module.exports = require('lib/wiring/routes')

// Default `GET / route`
.root('root#root')

// standard RESTful routes
.resources('examples')
.resources('themes')

// users of the app have special requirements
.post('/sign-up', 'users#signup')
.post('/sign-in', 'users#signin')
.delete('/sign-out/:id', 'users#signout')
.patch('/change-password/:id', 'users#changepw')

.resources('users', { only: ['index', 'show'] })
