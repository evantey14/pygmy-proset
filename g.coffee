r=require
_=r 'lodash'
z=_.drop
class G
 n:->
  @d=_.range 1,64
  @d=_.shuffle @d
  @c=_.take @d,7
  @d=z @d,7
  @p=[]
  @
 m:->
  @p.push 0
  @p.length-1
 v:(s)->
  s.length > 0 and _.reduce(s,((t,i)->t^@c[i]), 0, @)==0
 r:(m)->
  @p[m.p]+=1
  for x in m.m
   @c[x]=@d[0]
   @d=z @d,1
module.exports=G
