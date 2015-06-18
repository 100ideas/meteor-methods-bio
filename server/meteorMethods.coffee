Meteor.methods
  resetdb: ->
    TypeCollection.remove({})
    MethodCollection.remove({})
    
    # ontology.coffee
    TypeCollection.insert(t) for t in typeData
    MethodCollection.insert(m) for m in methodData