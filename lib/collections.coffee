@Ontology = (doc) ->
  _.extend this, doc

Ontology.prototype = 
  constructor: Ontology

  root2: ->
    this._name

  transformed: true

# need @ to hoist coffeescript vars to global scope
@MethodCollection = new Mongo.Collection 'methods',
  transform: (doc) -> new Ontology doc

@TypeCollection = new Mongo.Collection 'types',
  transform: (doc) ->
    new Ontology doc