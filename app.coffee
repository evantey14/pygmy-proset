r=require
e=r 'express'
f=r 'fs'
p=r 'path'
a=e()
#a.use e.static '.'
a.get '/',(e,s)->
 s.writeHead 200,{'Content-Encoding':'gzip','Content-Type':'text/html; charset=utf-8'}
 f.createReadStream('index.html.gz').pipe(s);
s=require('http').createServer a
i=r('socket.io')(s)
g=r './g'
c=null
u=(i,c)->
 i.emit 'u',{c:c.c,s:c.p}
i.on 'connection',(s)->
 n=null
 s.on 'init',->
  if !c?
   c=new g()
   c.n()
  n=c.m()
  s.emit 'u',{p:n,c:c.c,s:c.p}
  u(i,c)
 s.on 'disconnect',->
  c.o n
  u(i,c)
 s.on 's',(m)->
  if c.v m.m
   c.r m
   u(i,c)
   if c.e()
    c=null
    i.emit 'd'
<<<<<<< HEAD

port = process.env.PORT || 8080
s.listen port
=======
p=process.env.PORT||8080
s.listen p
>>>>>>> 0c77d3c63f9d25c37382ae37a23c7bace6d78608
