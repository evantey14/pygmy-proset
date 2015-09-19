e = require 'express'
a = e()
    
a.get '/', (q, s) -> 
    s.send 'hello'

a.listen 8080, ->

