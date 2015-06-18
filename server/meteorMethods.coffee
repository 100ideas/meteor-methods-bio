class jsonTreeParser
  
  root: {}
  parent: {}
  children: []
  collection: {}


  constructor: ({@data, @collection}) ->

  

  parse: ->
    for d in data
      @root = @collection.insert 
        name: d.name
        color: d.color or {}
        parent: d.parent
        root: d.root 'self'
        parent: null
      @parent: parent 
      @children_ids: d.children

      for c, i in d.children if @d.children
        c._id = {_id: @parent}
          $push: 
            children: child_id
            

      for c in @children_ids if @children_ids
        collection.update( 
          {_id: @parent}
          $push: 
            children: child_id
        

        )



parseKindJSON = (data, parent_id, root) ->
  typeIsArray = Array.isArray || ( value ) -> return {}.toString.call( value ) is 
  parent = parent_id ? null
  # console.log "data: #{JSON.stringify data}"

  parseSubtree = (k) ->
    console.log "----@children: #{JSON.stringify k}"    
    parent_id = KindCollection.insert 
      name: k.name
      color: k.color
      root: root
      parent: parent

    if k.children
      for child in k.children

        parseKindJSON child, , root
        KindCollection.update( 
          {_id: parent}
          {$push: {children: child_id}}
        )
        console.log "updated KindCollection: _id, child_id: #{_id}, #{_id}"
    else
      null

    root = _id if root is 'self'
    console.log "inserted: #{_id}"

  if typeIsArray data
    parseSubtree ki for ki in data
  else
    parseSubtree data


    # for child in k.children
    #   console.log "found a child, id param is: #{_id}"
    #   console.log "child: #{child.name}"

    #   parseKindJSON child, _id, root, (child_id) => 
    #     KindCollection.update( {_id: parent}, {$push: {children: child_id}})
    #     console.log "updated KindCollection: _id, child_id: #{_id}, #{child_id}"

Meteor.methods
  resetdb: ->
    KindCollection.remove({})
    MethodCollection.remove({})
    
    # ontology.coffee
    MethodCollection.insert(m) for m in methodData
    # KindCollection.insert(k) for k in kindData
    parseKindJSON kindData, null, 'self' 

