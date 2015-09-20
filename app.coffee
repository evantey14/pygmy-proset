# require function
r=require
e=require 'express'
a=e()
a.use e.static '.'
s=require('http').createServer a
i=r('socket.io')(s)
# game
g=r './g'
# c = current game
c=null
i.on 'connection',(s)->
 s.on 'init',()->
  if !c?
   c=new g()
   c.n()
  s.emit 'u',{p:c.m(),c:c.c,s:c.p}
  i.emit 'u',{c:c.c,s:c.p}
 s.on 's',(m)->
  console.log m
  if c.v m.m
   c.r m
   i.emit 'u',{c:c.c,s:c.p}
s.listen 8
