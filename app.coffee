e = require 'express'
a = e()
s = require('http').createServer a
i = require('socket.io') s
a.use e.static 'p'
s.listen 8080, ->
