class kindFactoryFromJSON
  
  # class @Kind
  #   constructor: (@_id, @name, @root, @parent, @children, rest...) ->
  ktr = []

  constructor: ({@data, @collection}) ->

  # TODO make tail recursive 
  parse: ->
    console.log "----kindFactoryFromJSON PARSING PARTY----"
    console.log @data
    for d, i in @data
      # add root nodes
      if d.root is 'self'
        ktr[i] = @collection.insert(new Kind(d)) #make sure not to explicitly set d._id in db
        # console.log ktr[i]
        @collection.update {_id: ktr[i]},{$set: { id:ktr[i], root: ktr[i], parent: ktr[i]}}

      if d.children?
        for c, j in d.children
          tempkid = new Kind(c)
          tempkid.root = ktr[i]
          tempkid.parent = ktr[i]
          ktr[i][j] = @collection.insert(tempkid)


class methodFactoryFromJSON
  
  inputs: []
  outputs: []

  constructor: ({@data, @idCollection, @intoCollection}) ->
  # goal is to replace string Kinds in inputs and outputs
  # with appropriate _id from KindCollection
  parse: ->
    for method in @data

      @inputs = []
      @outputs = []

      # @inputs.ids = []
      # @inputs.names = method.inputs
      # @outputs.ids = []
      # @outputs.names = method.outputs

      # TODO make reactive? ejson?
      for input in method.inputs
        # console.log @inputs.ids.push(@findIDByName input)
        @inputs.push(@findIDByName input)

      for output in method.outputs
        @outputs.push(@findIDByName output)

      console.log "-------- create new method object -------------"
      m = new Method 
        inputs: @inputs
        outputs: @outputs
        inames: method.inputs
        onames: method.outputs
        operator: method.operator or 'error'
        description: method.description
      
      console.log m
      # m._id = @intoCollection.insert m
      @intoCollection.insert m

  findIDByName: (n) ->  
    # console.log "findIDbyName name: #{n}"
    @idCollection.findOne({name: n})._id


Meteor.methods
  # ontology.coffee
  resetdb: ->
    KindCollection.remove({})
    MethodCollection.remove({})
    
    kindInserter = new kindFactoryFromJSON 
      data: kindData
      collection: KindCollection

    methodInserter = new methodFactoryFromJSON 
      data: methodData
      idCollection: KindCollection
      intoCollection: MethodCollection      

    # TODO currently only traverses one layer deep
    kindInserter.parse()
    methodInserter.parse()

