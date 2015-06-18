class jsonTreeInsert
  
  root: {}
  parent: {}
  children_ids: []
  collection: {}

  constructor: ({@data, @collection}) ->
    console.log "constructor: #{@data}"

  parse: ->
    console.log "parse: #{@data}"
    for d in @data
      # add root nodes
      @root = @collection.insert 
        name: d.name
        color: d.color or {}
        parent: d.parent
        root: d.root or 'self'
      @parent = @root 
      @children_ids = d.children

      # if children array, add elements to collection & save mongo _id
      # then update parent with children _ids
      if d.children?
        for kid in d.children
          @children_ids.push @collection.insert
            name: kid.name
            parent: @parent
            root: @root

        for id in @children_ids
          @collection.update(
            {_id: @parent}
            {$push: {children: id}}
          )

        @children_ids = {}



Meteor.methods
  resetdb: ->
    KindCollection.remove({})
    MethodCollection.remove({})
    
    # ontology.coffee
    MethodCollection.insert(m) for m in methodData
    # {@data, @collection}
    kindInserter = new jsonTreeInsert 
      data: kindData
      collection: KindCollection
    kindInserter.parse()





# parseKindJSON = (data, parent_id, root) ->
#   typeIsArray = Array.isArray || ( value ) -> return {}.toString.call( value ) is 
#   parent = parent_id ? null
#   # console.log "data: #{JSON.stringify data}"

#   parseSubtree = (k) ->
#     console.log "----@children: #{JSON.stringify k}"    
#     parent_id = KindCollection.insert 
#       name: k.name
#       color: k.color
#       root: root
#       parent: parent

#     if k.children
#       for child in k.children

#         parseKindJSON child, , root
#         KindCollection.update( 
#           {_id: parent}
#           {$push: {children: child_id}}
#         )
#         console.log "updated KindCollection: _id, child_id: #{_id}, #{_id}"
#     else
#       null

#     root = _id if root is 'self'
#     console.log "inserted: #{_id}"

#   if typeIsArray data
#     parseSubtree ki for ki in data
#   else
#     parseSubtree data


    # for child in k.children
    #   console.log "found a child, id param is: #{_id}"
    #   console.log "child: #{child.name}"

    #   parseKindJSON child, _id, root, (child_id) => 
    #     KindCollection.update( {_id: parent}, {$push: {children: child_id}})
    #     console.log "updated KindCollection: _id, child_id: #{_id}, #{child_id}"

