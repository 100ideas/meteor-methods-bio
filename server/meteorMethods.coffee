buildTree = (data, collection) ->
  for m in data
    console.log "adding #{collection._name}:"
    console.log m
    do (m) -> 
      parentId = null
      m.parent = "root" if parentId is null
      collection.insert m


Meteor.methods
  resetdb: ->
    TypeCollection.remove({})
    MethodCollection.remove({})
    
    # ontology.coffee
    buildTree typeData, TypeCollection
    buildTree methodData, MethodCollection    