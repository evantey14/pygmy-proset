r=require
e=require 'express'
a=e()
a.use e.static '.'
s=require('http').createServer a
i=r('socket.io')(s)
g=r './g'
c=null
i.on 'connection',(s)->
 s.on 'init',->
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
   if c.e()
    c=null
    i.emit 'd'
s.listen 8
