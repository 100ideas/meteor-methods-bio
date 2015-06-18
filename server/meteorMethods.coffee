class jsonKindTreeInsert
  
  root: {}
  parent: {}
  children_ids: []
  collection: {}

  constructor: ({@data, @collection}) ->
    console.log "constructor: #{@data}"

  parse: ->
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

class insertKindIDs
  
  inputs: []
  outputs: []

  constructor: ({@data, @idCollection, @intoCollection}) ->
    console.log "constructor: #{@data}"

  # goal is to replace string Kinds in inputs and outputs
  # with appropriate _id from KindCollection
  parse: ->
    console.log "insertKindIDs on: #{@data}"

    for method in @data

      for input in method.inputs
        @inputs.push(@findIDByName input)

      for output in method.outputs
        @outputs.push(@findIDByName input)

      @intoCollection.insert
        inputs: @inputs
        outputs: @outputs
        operator: method.operator or 'error'
        description: method.description

      @inputs = []
      @outputs = []


  findIDByName: (name) ->  
    @idCollection.findOne({name: name})._id



Meteor.methods
  resetdb: ->
    KindCollection.remove({})
    MethodCollection.remove({})
    
    # ontology.coffee
    # MethodCollection.insert(m) for m in methodData

    kindInserter = new jsonKindTreeInsert 
      data: kindData
      collection: KindCollection

    methodInserter = new insertKindIDs 
      data: methodData
      idCollection: KindCollection
      intoCollection: MethodCollection      

    # TODO currently only traverses one layer deep
    kindInserter.parse()
    methodInserter.parse()

