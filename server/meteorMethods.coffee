class kindFactoryFromJSON
  
# class @Kind
#   constructor: (@_id, @name, @root, @parent, @children, rest...) ->
  root_kinds = []

  constructor: ({@data, @collection}) ->

  # TODO make tail recursive 
  parse: ->
    console.log "----kindFactoryFromJSON PARSING PARTY----"
    console.log @data
    for d, index in @data
      # add root nodes
      if d.root is 'self'
        root_kinds[index] = new Kind(d)
        root_kinds[index]._id = @collection.insert(root_kinds[index])
        console.log "d.root: #{d.root} is self? #{d.root is 'self'}"
        console.log root_kinds[index]
        console.log "d.children: "
        console.log d.children?
      if d.children?
        for c, jindex in d.children
          tempkid = new Kind(c)
          tempkid.root = root_kinds[index]._id
          root_kinds[index][jindex] = @collection.insert(tempkid)


class methodFactoryFromJSON
  
  inputs: []
  outputs: []

  constructor: ({@data, @idCollection, @intoCollection}) ->
    console.log "constructor: #{@data}"

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
        # @outputs.names.push output

      console.log m
      m = new Method 
        inputs: @inputs
        outputs: @outputs
        inames: method.inputs
        onames: method.outputs
        operator: method.operator or 'error'
        description: method.description

      # m._id = @intoCollection.insert m
      @intoCollection.insert m

  findIDByName: (n) ->  
    console.log "findIDbyName name: #{n}"
    @idCollection.findOne({name: n})?._id


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

