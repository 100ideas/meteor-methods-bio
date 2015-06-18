# use @ClassName pattern to hoist classes to global namespace
class @Kind
  constructor: ({@name, @root, @parent}) ->

  isKindOf: (sup) ->
    # is sup anwhere between here and the root?
    # implicit true/false return
    @_id is sup._id or @parent?.isKindOf(sup)

  getKindByID: (_id) ->
    KindCollection.findOne({id: _id})


class @Method
  instances = []

  constructor: ({@id, @inputs, @outputs, @operator, @description}) ->
    instances.push @
    

  canInput: (tx) ->
    input.iskindOf(output) for input in @inputs for output in tx.outputs

  inputNames: ->
    KindCollection.findOne(input) for input in @inputs

  outputNames: ->
    KindCollection.findOne(output) for output in @outputs

# TODO
class @MChain
  constructor: () ->
