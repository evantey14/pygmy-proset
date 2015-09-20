r=require
_=r 'lodash'
z=_.drop
class G
 n:->
  @d=_.range(64)
  @d=_.shuffle(@d)
  @c=_.take(@d,7)
  @d=z(@d,7)
  @p=[]
  @
 m:->
  @p.push(0)
  @p.length-1
 v:(s)->
  console.log(@c)
  _.reduce(s,((t,i)->t^@c[i]), 0, @)==0
 r:(m)->
  for x in m
   @c[x]=@d[0]
   @d=z(@d,1)
module.exports=G
