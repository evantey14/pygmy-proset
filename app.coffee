e = require 'express'
a = e()
    
a.configure(() -> 
    a.use e.bodyParser()
)

a.get '/', (q, s) -> 
    s.sendfile 'v/i'

a.listen 8080, ->

