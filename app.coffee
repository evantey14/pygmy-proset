r = require
e = r 'express'
a = e()
s = r('http').createServer a
i = r('socket.io') s
a.use e.static 'p'
s.listen 8080, ->
