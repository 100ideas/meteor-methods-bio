Meteor.methods
  resetdb: ->
    TypeCollection.remove({})
    MethodCollection.remove({})
    
    # ontology.coffee
    TypeCollection.insert(typeData)
    MethodCollection.insert(methodData)