r=require
_=r 'lodash'

class G
 n:->
  @d=_.range(64)
  @d=_.shuffle(@d)
  @c=_.take(@d,7)
  @d=_.drop(@d,7)
  @p=[]
  @
 m:->
  @p.push(0)
  @p.length-1

module.exports=G
