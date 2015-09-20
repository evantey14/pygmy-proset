# require function
r=require
e=require 'express'
a=e()
a.use e.static '.'
s=require('http').createServer a
i=r('socket.io')(s)
# game 
g=r('./g')
# c = current game
c=null
i.on 'connection', (s) ->
 s.on 'init', () ->
  if !c?
   c=new g()
   c.n()
  s.emit('p',{p:c.m(),c:c.c})
 s.on 'submit', (m) ->

s.listen 8, ->
